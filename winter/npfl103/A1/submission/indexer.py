from bs4 import BeautifulSoup
from tqdm import tqdm
from nltk.tokenize import RegexpTokenizer
from nltk.stem.porter import PorterStemmer
from collections import Counter
from heapq import merge
import string
import os
import random
import numpy as np
import re
import pickle
import json
import itertools
import spacy_udpipe
import spacy

class InvertedIndex():
    ''' Basic Inverted Index '''

    def __init__(self, args):
        self.run = args.run
        self.stopwords = args.stopwords
        self.lemmas = args.lemmas
        self.stemming = args.stemming
        self.lowercase = args.lowercase
        self.lang = args.documents.split(".")[0][-2:]
        
        # create intermediate postings lists files for documents of every file
        self.set_doc_terms(args.documents)
        self.save_to_file()

        # create inverted index from merging postings files
        self.sorted_term_files = []
        self.dictionary_files = []
        for line in tqdm(self.filenames):
            with open(self.inverted_index_folder+"/"+line.split(".")[0]+"_sorted_terms.bin",
                    "rb",buffering=200000) as f:
                self.sorted_term_files.append(pickle.load(f))
            with open(self.inverted_index_folder+"/"+line.split(".")[0]+"_dictionary.bin",
                    "rb",buffering=200000) as f:
                self.dictionary_files.append(pickle.load(f))

        self.inverted_index = self.merge_blocks(self.sorted_term_files, self.dictionary_files)

    def set_doc_terms(self, docs):
        '''
        takes as input a list of filenames, and for every file it adds
        every document and its terms to the list 
        czech/english is parsed differently, so needs to be determined
        by the tag in the file
        sets a dictionary of {docid: [terms]}
        '''
        with open(docs, "r") as f:
            self.filenames = [line.strip() for line in f.readlines()]
        self.folder_name = docs.split(".")[0]
        self.processed_folder = self.folder_name+self.run
        if not os.path.exists(self.processed_folder):
            os.mkdir(self.processed_folder)
        self.doc_count = 0
        if self.lang == "en":
            nlp = spacy.load("en_core_web_sm", exclude=['parser', 'ner'])
        else:
            nlp = spacy_udpipe.load("cs")
        tokenizer = nlp.tokenizer
        for line in tqdm(self.filenames):
            with open(self.folder_name+"/"+line, "r") as f:
                collection = f.read()
            soup = BeautifulSoup(collection, 'html.parser')

            if "CZE" in str(soup.contents[2]):
                #keep geography, title, heading, text in terms for czech
                tagset = ['geography', 'title', 'heading', 'text']
            else:
                #keep PH*, KH*, HD*, DH*, SE*, DL, LD, TE, CP, DC*, CR*, DP, SM*
                # in terms for english
                tagset = ['ph', 'kh', 'hd', 'dh', 'se', 'dl', 'ld',
                        'te', 'cp', 'dc', 'cr', 'dp', 'sm']

            index, docs = self.get_index(soup, tagset, nlp, self.stopwords,
                    self.lemmas, self.stemming, self.lowercase)

            with open(self.processed_folder+"/"+line.split(".")[0]+"_index.bin",
                    "wb") as f:
                pickle.dump(index, f)
            with open(self.processed_folder+"/"+line.split(".")[0]+"_docs.bin",
                    "wb") as f:
                pickle.dump(docs, f)

    def get_index(self, collection, tagset, nlp, stopwords=False, lemmas=False, stemming=False, lowercase=False):
        '''
        for every file with a list of documents, store:
        self.index is a list of (term, docID) tuples for all documents
        self.docs is a list of (docID, [terms]) tuples for all documents
        '''
        docs = collection.contents[4].contents[1::2] # ignore newlines
        tokenizer = RegexpTokenizer(r'\w+')
        stemmer = PorterStemmer()
        stopword_list = nlp.Defaults.stop_words
        self.index = []
        for doc in docs:
            doc_id = doc.docid.contents[0]
            doc_terms = []
            for tag in tagset:
                if doc.find(tag):
                    if lemmas:
                        doc_terms.append([nlp(str(d.contents[0])) \
                            for d in doc.find_all(tag) if len(d.contents) != 0])
                    else:
                        doc_terms.append([tokenizer.tokenize(d.contents[0]) \
                            for d in doc.find_all(tag) if len(d.contents) != 0])

            # flatten list, process with options and add to index
            if lemmas:
                flattened = [k.lemma_.lower() for l in doc_terms for j in l for k in j]
            elif lowercase:
                flattened = [k.lower() for l in doc_terms for j in l for k in j]
            else:
                flattened = [k for l in doc_terms for j in l for k in j]

            if stopwords:
                flattened = [k for k in flattened
                        if not k in stopword_list and k.isalpha()]
            if stemming:
                flattened = [stemmer.stem(str(k)) for k in flattened]

            self.index += [(k, str(doc_id)) for k in flattened]
            self.doc_count += 1
        self.docs = [(doc_id, [term[0] for term in terms]) for doc_id, terms in \
                itertools.groupby(self.index, lambda x: x[1])]
        return self.index, self.docs

    def save_to_file(self):
        ''' create postings lists files for the documents of every file '''
        for line in tqdm(self.filenames):
            index_file = self.processed_folder+"/"+line.split(".")[0]+"_index.bin"
            with open(index_file, "rb") as f:
                token_stream = pickle.load(f)
            sorted_terms, dictionary = self.spimi_invert(token_stream)
            self.inverted_index_folder = self.folder_name+self.run+"_inverted"
            if not os.path.exists(self.inverted_index_folder):
                os.mkdir(self.inverted_index_folder)
            with open(self.inverted_index_folder+"/"+line.split(".")[0]+"_sorted_terms.bin",
                    "wb") as f:
                pickle.dump(sorted_terms, f)
            with open(self.inverted_index_folder+"/"+line.split(".")[0]+"_dictionary.bin",
                    "wb") as f:
                pickle.dump(dictionary, f)

    def spimi_invert(self, token_stream):
        ''' 
        spimi invert algorithm
        '''
        def add_to_dictionary(dictionary, term):
#            dictionary[term] = []
            dictionary[term] = Counter()
            return dictionary[term]

        def get_postings_list(dictionary, term):
            return dictionary[term]

        def add_to_postings_list(postings_list, doc_id):
            #postings_list.append(doc_id)
            postings_list.update({doc_id})

        self.dictionary = {}
        for term, doc_id in token_stream:
            if term not in self.dictionary:
                postings_list = add_to_dictionary(self.dictionary, term)
            else:
                postings_list = get_postings_list(self.dictionary, term)
            add_to_postings_list(postings_list, doc_id)
        self.sorted_terms = sorted(self.dictionary, key = lambda token: token[0])

        return self.sorted_terms, self.dictionary

    def merge_blocks(self, sorted_terms, dictionary):
        '''
        takes a list of files and adds it to the merged dictionary
        sorted_terms is a list of files, where every file is a sorted
        list of terms for that file
        dictionary is a list of files, where every file is a dictionary
        with term: [doc_ids] mappings for that file
        '''
        merged_dict = {}
        for term in tqdm(set(merge(*sorted_terms))):
            for postings_list in dictionary:
                try:
                    if term in merged_dict:
                        merged_dict[term].update(postings_list[term])
                    else:
                        merged_dict[term] = postings_list[term]
                except KeyError:
                    pass
        return merged_dict
