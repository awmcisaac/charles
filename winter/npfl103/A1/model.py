import re
import numpy as np
import pickle
import spacy_udpipe
import spacy
import pandas as pd
from nltk.stem.porter import PorterStemmer
from nltk.tokenize import RegexpTokenizer
from tqdm import tqdm
from bs4 import BeautifulSoup
from collections import Counter

class VectorSpaceModel():
    '''
    Vector space information retrieval system
    Baseline has:
    - terms: word forms
    - case normalization: no
    - removing stopwords: no
    - query construction: all word forms from "title"
    - term weighting: natural
    - document frequency weighting: none
    - vector normalization: cosine
    - similarity measurement: cosine
    - relevance feedback: none
    - query expansion: none

    Options include:
    stopwords, lemmas, stemming, lower-case,
    pivoted document length, tf/df weighting
    '''

    def __init__(self, args, index):
        self.run = args.run
        self.output = args.output
        self.stopwords = args.stopwords
        self.lemmas = args.lemmas
        self.stemming = args.stemming
        self.lowercase = args.lowercase
        self.pivoted = args.pivoted
        self.tf_weighting = args.tf_weighting
        self.df_weighting = args.df_weighting
        self.index = index
        self.lang = args.documents.split(".")[0][-2:]

        self.query_terms = self.get_topic_terms(args.queries)
        self.docs = self.get_docs(args.documents)

        self.save_results()

    def get_topic_terms(self, queries):
        ''' return dictionary of topic_num: [term for term in title] '''
        with open(queries, 'r') as f:
            topics = f.read()
        soup = BeautifulSoup(topics, 'html.parser')
        head = soup.contents[2]
        topics = [item for item in head.children][1::2]
        nums = [doc.num.contents[0] for doc in topics]

        if self.lang == "en":
            nlp = spacy.load("en_core_web_sm", exclude=['parser', 'ner'])
        else:
            nlp = spacy_udpipe.load("cs")
        stopword_list = nlp.Defaults.stop_words
        tokenizer = RegexpTokenizer(r'\w+')

        if self.lemmas:
            titles = [nlp(str(doc.title.contents[0])) for doc in topics]
        else:
            titles = [tokenizer.tokenize(doc.title.contents[0]) for doc in topics]

        if self.lemmas:
            titles = [[k.lemma_.lower() for k in doc] for doc in titles]
        elif self.lowercase:
            titles = [[k.lower() for k in doc] for doc in titles]
        else:
            titles = [[k for k in doc] for doc in titles]
        if self.stopwords:
            titles = [[k for k in doc if not k in stopword_list and k.isalpha()]
                    for doc in titles]
        # only for English - Czech is pre-stemmed
        if self.stemming:
            stemmer = PorterStemmer()
            titles = [[stemmer.stem(str(k)) for k in doc] for doc in titles]

        query_terms = {num: title for num, title in zip(nums, titles)}

        return query_terms

    def get_tf_weight(self, tf, d, weighting='natural'):
        '''
        weighting options are as below
        natural (default): tf_{t,d}
        logarithm: 1 + log(tf_{t,d})
        augmented: 0.5 + (0.5*tf_{t,d})/max_t(tf_{t,d})
        '''
        if self.tf_weighting:
            weighting = self.tf_weighting
        if weighting == 'natural': tf_weight = tf
        elif weighting == 'logarithm': tf_weight = 1 + np.log2(tf)
        elif weighting == 'augmented':
            tf_weight = 0.5 + ((0.5 * tf)/ max(Counter(d).values()))
        return tf_weight

    def get_df_weight(self, df, tf, weighting='no'):
        '''
        weighting options are as below
        no (default): 1
        idf: log(N/df_{t})
        prob_idf: max(0, log((N-df)/df))
        '''
        if self.df_weighting:
            weighting = self.df_weighting
        if weighting == 'no': df_weight = 1
        elif weighting == 'idf': df_weight = np.log2(len(self.docs)/df)
        elif weighting == 'prob_idf': 
            df_weight = max(0, np.log2((len(self.docs) - df)/df))
        return df_weight

    def get_docs(self, docs_file):
        ''' returns list of tuples of (doc_id, [terms]) '''
        docs_folder = docs_file.split(".")[0]+self.run+"/"
        with open(docs_file, "r") as f:
            filenames = [line.split(".")[0] for line in f.readlines()]
        docs = []
        for fn in filenames:
            with open(docs_folder+fn+"_docs.bin", 'rb') as f:
                collection = pickle.load(f)
            for doc in collection:
                docs.append((doc[0], doc[1]))
        return docs

    def similarity(self, query, length, k=1000):
        ''' 
        fast cosine score (IIR fig 7.1)
        returns top k docs for query
        '''
        docs = self.docs
        doc_dict = {doc[0]: doc[1] for doc in docs}

        scores = pd.DataFrame(np.zeros((1,len(docs))), columns=[doc[0] for doc in docs])
        for t in query:
            try:
                postings_list = self.index[t]
                for d, tf in postings_list.items():
                    # just storing natural term frequency
                    scores[d] += self.get_tf_weight(tf, doc_dict[d]) \
                            * self.get_df_weight(len(postings_list), tf)
            except KeyError:
                pass

        query_length = np.linalg.norm(list(Counter(query).values()))

        scores = scores/(query_length*length)
        scores = scores.to_numpy().reshape((len(docs),))

        inds = np.argpartition(scores, -k)[-k:]

        sorted_inds = inds[np.argsort(scores[inds])]
        doc_nos = [docs[docid][0] for docid in sorted_inds]

        return scores[sorted_inds][::-1], doc_nos[::-1]

    def save_results(self):
        '''
        save results in TREC format, as described in section 5.3
        (qid, iter, docno, rank, sim, run_id)
        '''
        iteration = "0"
        run_id = self.run
        
        print("Processing queries")
        doc_dict = {doc[0]: list(Counter(doc[1]).values()) for doc in self.docs}
        # cosine normalization
        length = np.array([np.linalg.norm(counts) for counts in doc_dict.values()])
        if self.pivoted: # value of a
            if self.lang == "cs":
                # values are computed as described in report
                piv = 24.6788
            else:
                piv = 40.7795
            length = self.pivoted*length + (1-self.pivoted)*piv
        for (qid, query) in tqdm(self.query_terms.items()):
            sim_scores, doc_nos = self.similarity(query, length)
            results = [qid+"\t"+iteration+"\t"+doc_no+"\t"+str(i)+"\t"+str(sim)
                    +"\t"+run_id+"\n"
                    for i, (doc_no, sim) in enumerate(zip(doc_nos, sim_scores))]

            with open(self.output, "a+") as f:
                f.writelines(results)
