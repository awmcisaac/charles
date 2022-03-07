import numpy as np
from tqdm import tqdm
from collections import Counter
import pandas as pd

class PMI():
    def __init__(self, text, lang):
        self.text = text
        self.lang = lang

        self.p_1, self.c_1 = self.get_unigram_probs()
        self.bigram = self.get_joint_probs()
        self.distant = self.get_distant_probs()

    def get_unigram_probs(self):
        ''' compute all unigram probabilities '''
        text_size = len(self.text)
        counter_1 = Counter(self.text)
        # p_1(w_i) = c_1(w_i)/T
        p_1 = {word: count/text_size for word, count in counter_1.items()}
        return p_1, counter_1

    def get_joint_probs(self):
        '''
        calculate joint probability p(a,b)
        for all neighbouring words in text
        '''
        counts = Counter()
        # get counts of pairs of words
        for i, j in zip(self.text, self.text[1:]):
            counts[i, j] += 1
        total = sum(counts.values())
        # probability based on counts
        joint_probs = {k: v/total for k, v in counts.items()}
        return joint_probs

    def get_distant_probs(self):
        ''' 
        calculate joint probability p(a,b) for all words
        with distance at most 50 in either direction
        '''
        counts = Counter()
        for (i,a) in tqdm(enumerate(self.text)):
            if i < 50: ran, start = self.text[:i+50], 0
            elif i > len(self.text) - 50: ran, start = self.text[i-50:], i-50
            else: ran, start = self.text[i-50:i+50], i-50
#            ran, start = self.text[:i+50], i
            for (j,b) in enumerate(ran, start):
                if i != j:
                    counts[a, b] += 1
        total = sum(counts.values())
        # probability based on counts
        joint_probs = {k: v/total for k, v in counts.items()}
        return joint_probs

    def pmi(self, a, b, probs):
        '''
        I'(a,b) = log_2(p(a,b)/p(a)p(b)) = log_2(p(a|b)/p(a))
        '''
        joint_prob = probs[a, b]
        p_a = self.p_1[a]
        p_b = self.p_1[b]
        return np.log2(joint_prob/(p_a * p_b))

    def write_to_file(self, label, results):
        ''' save results '''
        with open('pmi_results'+self.lang+'.txt', 'a') as f:
            for (a, b), pmi in reversed(results):
                f.write('%s\t%s\t%s\t%1.4f\n' % (label, a, b, pmi))

    def run(self):
        results = {}
        for (i,a),(j,b) in zip(enumerate(self.text),enumerate(self.text[1:],1)):
            # disregard pairs in which one or both words 
            # appear less than 10 times in the corpus
            if self.c_1[a] >= 10 and self.c_1[b] >= 10:
                results[a, b] = self.pmi(a, b, self.bigram)
        sorted_results = sorted(results.items(), key=lambda x:x[1])
        self.write_to_file('bigram', sorted_results)

        results = {}
        for (i,a) in enumerate(self.text):
            if i < 50: ran, start = self.text[:i+50], 0
            elif i > len(self.text) - 50: ran, start = self.text[i-50:], i-50
            else: ran, start = self.text[i-50:i+50], i-50
            for (j,b) in enumerate(ran, start):
                if i != j:
                    if self.c_1[a] >= 10 and self.c_1[b] >= 10:
                        results[a, b] = self.pmi(a, b, self.distant)
        sorted_results = sorted(results.items(), key=lambda x:x[1])
        self.write_to_file('distant', sorted_results)
        print(list(reversed(sorted_results[-50:])))

if __name__ == '__main__':
    for lang in ['EN', 'CZ']:
        with open('TEXT'+lang+'1.txt', 'r', encoding='iso-8859-2') as f:
            text = [word.strip() for word in f.readlines()]

        pmi = PMI(text, lang)

        # prepare results file
        with open('pmi_results'+lang+'.txt', 'w') as f:
            f.write('WORD1\tWORD2\tPMI\n')

        # run experiments
        results = pmi.run()
