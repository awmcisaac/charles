import os
import argparse
import pickle
import json
from model import VectorSpaceModel
from indexer import InvertedIndex

def main():
    '''
    Expected usage:
    ./run -q topics.xml -d documents.lst -r run -o sample.res ...
    '''
    parser = argparse.ArgumentParser()
    parser.add_argument("-q", "--queries", help="a file including topics \
                        in the TREC format")
    parser.add_argument("-d", "--documents", help="a file including \
                        document filenames")
    parser.add_argument("-r", "--run", help="a label identifying the experiment\
                        (inserted in the result file as 'run_id'")
    parser.add_argument("-o", "--output", help="an output file")
    parser.add_argument("-k", "--components", help="number of docs k to return\
                        for a given query", default=1000)

    parser.add_argument("--stopwords", action="store_true")
    parser.add_argument("--lemmas", action="store_true")
    parser.add_argument("--stemming", action="store_true")
    parser.add_argument("--lowercase", action="store_true")

    parser.add_argument("--tf-weighting", help="term frequency weighting")
    parser.add_argument("--df-weighting", help="document frequency weighting")

    parser.add_argument("--pivoted", help="value of 'a' for pivoted document\
                        length normalization. Cosine normalization used if\
                        value not specified", type=float, default=None)
                        
    args = parser.parse_args()

    # load inverted index if precomputed, else create it
    saved_index_path = args.run+'_index.bin'
    if os.path.exists(saved_index_path):
        with open(saved_index_path, "r") as f:
            print("Importing inverted index")
            inverted_index = json.load(f)
    else:
        with open(saved_index_path, "w") as f:
            print("Creating inverted index")
            index = InvertedIndex(args)
            inverted_index = index.inverted_index
            json.dump(inverted_index, f)

    # run system
    retrieval_system = VectorSpaceModel(args, inverted_index)

if __name__ == '__main__':
    main()
