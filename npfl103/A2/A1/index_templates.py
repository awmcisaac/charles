BASELINE = {
    "settings": {
        "number_of_shards": 1,
        "number_of_replicas": 0,
        "similarity": {
            "scripted_tfidf": {
                "type": "scripted",
                "script": {
                    "source": "double tf = Math.sqrt(doc.freq); double idf = Math.log((field.docCount+1.0)/(term.docFreq+1.0)) + 1.0; double norm = 1/Math.sqrt(doc.length); return query.boost * tf * idf * norm;"
                },
            },
        },
        "mappings": {
            "properties": {
                key: {
                    "type": "text",
                    "term_vector": "with_positions_offsets_payloads",
                    "store" : "true",
                    "analyzer": "whitespace",
                    }
                for key in tags
            },
            "field": {
                "type": "text",
                "similarity": "scripted_tfidf"
            },
        },
    },
}

STEMMED_SIMPLE = {
    "settings": {
        "number_of_shards": 1,
        "number_of_replicas": 0,
        "mappings": {
            "properties": {
                key: {
                    "type": "text",
                    "analyzer": "english" if lang=="en" else "czech",
                    }
                for key in tags
            },
        },
    },
}
