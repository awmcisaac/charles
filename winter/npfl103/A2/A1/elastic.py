import json
import jinja2
import ast
import pytrec_eval
import os
from tqdm import tqdm
from elasticsearch import Elasticsearch
from elasticsearch.helpers import streaming_bulk
from os.path import abspath, join, dirname, exists
from bs4 import BeautifulSoup

LANG = "en"
DATASET_PATH = join(dirname(abspath(__file__)), "documents_%s.lst" % LANG)
with open(DATASET_PATH, "r") as f:
    files = [line.strip() for line in f.readlines()]
# get tags to use as properties for index
DOCUMENT_PATH = join(dirname(abspath(__file__)), "documents_%s/%s"
        % (LANG, files[0]))
with open(DOCUMENT_PATH, "r") as doc_file:
    collection = doc_file.read()
collection = BeautifulSoup(collection, "html.parser")
docs = collection.contents[4].contents[1::2]
tags = {tag.name for tag in collection.find_all()}

index = "run-1-%s" % LANG
print(index)

def create_index(client, temp, tags):
    """Creates an index in Elasticsearch if one isn't already there."""

    TEMPLATE_PATH = join(dirname(abspath(__file__)),
            "templates/index_%s.json.j2" % temp)
    with open(TEMPLATE_PATH) as f:
        template = jinja2.Template(f.read())

    client.indices.create(
            index=index,
            body=ast.literal_eval(template.render(
                tags=tags, language="english" if LANG=="en" else "czech")),
            ignore=400,
            )

def reindex(client, source, target):
    client.reindex(
            body={
                "source": {
                    "index": source
                },
                "dest": {
                    "index": target,
                    "version_type": "external"
                }
            }
        )

def generate_actions():
    """Reads files and yields documents. This function is passed into
    the bulk() helper to create many documents in sequence."""
    for f in files:
        DOCUMENT_PATH = join(dirname(abspath(__file__)), "documents_%s/%s"
                % (LANG, f))
        with open(DOCUMENT_PATH, "r") as doc_file:
            collection = doc_file.read()
        collection = BeautifulSoup(collection, "html.parser")
        docs = collection.contents[4].contents[1::2]
        for row in docs:
            doc = {key: [[str(content) for content in item.contents] for item in row.find_all(key)]
                    for key in tags}
            doc["_id"] = doc["docid"][0][0]

            yield doc

def search(client):
    QUERIES_PATH = join(dirname(abspath(__file__)),
            "topics-%s_%s.xml" % (QUERIES, LANG))
    with open(QUERIES_PATH, "r") as f:
        topics = f.read()
    collection = BeautifulSoup(topics, 'html.parser')
    head = collection.contents[2]
    topics = [item for item in head.children][1::2]
    nums = [doc.num.contents[0] for doc in topics]

    titles = [doc.title.contents[0] for doc in topics]

    for num, title in zip(nums, titles):
        response = client.search(
            index=index,
            body={
                "query": {
                    "bool": {
                        "should": [
                            {"multi_match": {
                                "query": title,
                                "fields": ["te", "dc", "dh", "ld", "cp", "dl", "hd"]
                                    if LANG=="en" else ["text"]
                            }}
#                            {"multi_match": {
#                                "query": title,
#                                "type": "phrase",
#                                "boost": 0.5,
#                                "fields": ["te", "dc", "dh", "ld", "cp", "dl", "hd"]
#                                    if LANG=="en" else ["text"]
#                            }}
                        ]
                    },
                },
                "size": "1000",
            }
        )
        fn = "run-0-results-%s.res" % LANG
        with open(fn, "a+") as f:
            for i, hit in enumerate(response["hits"]["hits"]):
                f.write(num+"\t0\t"+str(hit["_id"])+"\t"+str(i)+"\t"+
                        str(hit['_score'])+"\t"+"run-0"+"\n")

def grid_search(client):
    
#    params = {"b": [0.3, 0.4, 0.5, 0.6, 0.65, 0.7, 0.75, 0.8, 0.85, 0.9, 0.95],
#              "k1": [0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2]}
    params = {"b": [0.3], "k1": [0.6]}
#    params = {"DFR", "DFI", "IB", "LMDirichlet", "LMJelinekMercer"}
    with open("qrels-train_%s.txt" % LANG) as f_qrel:
        qrel = pytrec_eval.parse_qrel(f_qrel)

    best_map = 0
    result_dict = {}
    for b in params['b']:
        result_dict[b] = {}
        for k1 in params['k1']:
#    for similarity in params:
#    similarity = "DFR"
#    print(similarity)
            os.remove("run-0-results-%s.res" % LANG)
        
            client.indices.close(index=index)
            client.indices.put_settings(body=
                    {"similarity": {"default": {
                        "type": "BM25",
                        "b": b,
                        "k1": k1
                        }}
                    },
                    index=index)
#            client.indices.put_settings(body=
#                    {"similarity": {"default": {
#                        "type": similarity,
#                        }}
#                    },
#                    index=index)
            client.indices.open(index=index)
         
            search(client)
         
            with open("run-0-results-%s.res" % LANG) as f_run:
                run = pytrec_eval.parse_run(f_run)
         
            evaluator = pytrec_eval.RelevanceEvaluator(qrel, {'map'})
            results = evaluator.evaluate(run)
            aggregate = pytrec_eval.compute_aggregated_measure(
                        'map',
                        [query_measures['map']
                         for query_measures in results.values()])
        
            if aggregate > best_map:
                best_map = aggregate
                best_params = [b, k1]
        #        best_params = similarity
                print("new best map is: %f" % aggregate)
        #        print("found with similarity: %s" % similarity)
                print("found with b: %s, k1: %s" % (str(b), str(k1)))
        #    result_dict[similarity] = aggregate
            result_dict[b][k1] = aggregate
    print(result_dict)
    return best_map, best_params

def query_expansion(client):
    QUERIES_PATH = join(dirname(abspath(__file__)),
            "topics-train_%s.xml" % LANG)
    with open(QUERIES_PATH, "r") as f:
        topics = f.read()
    collection = BeautifulSoup(topics, 'html.parser')
    head = collection.contents[2]
    topics = [item for item in head.children][1::2]
    nums = [doc.num.contents[0] for doc in topics]

    titles = [doc.title.contents[0] for doc in topics]
    new_titles = []
    for num, title in zip(nums, titles):
        response = client.search(
            index=index,
            body={
                "query": {
                    "bool": {
                        "should": [
                            {"multi_match": {
                                "query": title,
                                "fields": ["te", "dc", "dh", "ld", "cp", "dl", "hd"]
                                    if LANG=="en" else ["text"]
                            }},
                            {"multi_match": {
                                "query": title,
                                "type": "phrase",
                                "boost": 0.5 if LANG=="cs" else 0,
                                "fields": ["te", "dc", "dh", "ld", "cp", "dl", "hd"]
                                    if LANG=="en" else ["text"]
                            }}
                        ]
                    },
                },
                "aggregations": {
                    "my_sample": {
                        "sampler": {
                            "shard_size": 100
                        },
                        "aggregations": {
                            "keywords": {
                                "significant_text": { 
                                    "field": "te" if LANG=="en" else "text" 
                                }
                            }
                        }
                    }
                },
                "size": "1000",
            }
        )

        # keep significant terms from the text and add to the query
        for i, bucket in enumerate(
                response["aggregations"]["my_sample"]["keywords"]["buckets"]):
            if i >= 5:
                break
            title += " " + bucket["key"]
        print(title)
        new_titles.append(title)
        
    print(new_titles)        
    for num, title in zip(nums, new_titles):
        response = client.search(
            index=index,
            body={
                "query": {
                    "bool": {
                        "should": [
                            {"multi_match": {
                                "query": title,
                                "fields": ["te", "dc", "dh", "ld", "cp", "dl", "hd"]
                                    if LANG=="en" else ["text"]
                            }},
                            {"multi_match": {
                                "query": title,
                                "type": "phrase",
                                "boost": 0.5 if LANG=="cs" else 0,
                                "fields": ["te", "dc", "dh", "ld", "cp", "dl", "hd"]
                                    if LANG=="en" else ["text"]
                            }}
                        ]
                    },
                },
                "size": "1000",
            }
        )


        fn = "run-0-results-%s.res" % LANG
        with open(fn, "a+") as f:
            for i, hit in enumerate(response["hits"]["hits"]):
                f.write(num+"\t0\t"+str(hit["_id"])+"\t"+str(i)+"\t"+
                        str(hit['_score'])+"\t"+"run-0"+"\n")

def main():
    client = Elasticsearch()

    print("Creating an index...")
    create_index(client, "basic_%s" % LANG, tags)

#    print("Reindexing documents...")
#    reindex(client, "run-0-%s" % LANG, index)

    print("Indexing documents...")
    progress = tqdm(unit="docs")
    successes = 0
    for ok, action in streaming_bulk(
        client=client, index=index, actions=generate_actions(),
    ):
        progress.update(1)
        successes += ok
    print("Indexed %d documents" % (successes))

#    search(client)
#    best_map, best_params = grid_search(client)
    query_expansion(client)

if __name__ == "__main__":
    main()
