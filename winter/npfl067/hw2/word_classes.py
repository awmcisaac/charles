import numpy as np
from collections import Counter
from best_friends import PMI
from tqdm import tqdm

class WordClasses():
    def __init__(self, text, lang):
        self.text = text[:8000]
        self.lang =lang

        self.hist = {} # history of merges dictionary

        # 1 init bigram counts c(l,r)
        self.c = Counter()
        for l, r in zip(self.text, self.text[1:]):
            self.c[l, r] += 1
        # N is the total number of bigrams in the data
        self.N = sum(self.c.values()) 

        # 2 init unigram counts cl(l), cr(r)
        self.cl, self.cr = Counter(), Counter()
        for (l, r), v in self.c.items():
            self.cl[l] += v
            self.cr[r] += v

        # only use words that occur 10 times or more
        self.classes = {}
        for word, count in self.cr.items():
            if count >= 10:
                self.classes[word] = word
        self.words = list(self.classes.keys())
        self.k = len(self.words)

        while True:
            # 3 init q_k(l,r)
            # q_k(l,r) = c(l,r)/N * log(N * c(l,r)/(cl(l)*cr(r)))
            self.q_k = {}
            for (l, r), v in self.c.items():
                self.q_k[l, r] = self.compute_mi(v, self.cl[l], self.cr[r])
            print("MI:", sum(self.q_k.values()))
        
            # 4 init s_k(a)
            self.s_k = Counter()
            for a in self.words:
                left = sum(self.q_k.get((l, a), 0) for l in self.cl.keys())
                right = sum(self.q_k.get((a, r), 0) for r in self.cr.keys())
                intersection_adjustment = self.q_k.get((a,a), 0)
                self.s_k[a] = left + right - intersection_adjustment
        
            # 5 init L_k(a,b) = sub_k(a,b) - add_k(a,b)
            self.L_k = Counter()
            self.sub_k = Counter()
            self.add_k = Counter()
            self.min_loss = 100
            for i, b in enumerate(tqdm(self.words)):
                for a in self.words[i+1:]:
                    self.L_k[a, b] = self.compute_sub(a, b) - self.compute_add(a, b)
                    # 10 during the L_k(i,j) update, keep track of the minimal
                    # loss of MI, and the two classes which caused it.
                    if self.L_k[a, b] <= self.min_loss:
                        self.min_loss = self.L_k[a, b]
                        self.candidate = (a, b)
                    
            # 6 select the best pair (a,b) to merge into a
            (a,b) = self.candidate
            print("Minimal loss:", str(self.min_loss), "for", self.classes[a] + "+" + self.classes[b])
            # 11 remember such best merge in Hist(k).
            self.hist[self.k] = (self.classes[a], self.classes[b])
            self.classes[a] = self.classes[a] + "+" + self.classes[b]
            del self.classes[b]
            self.words.remove(b)
            
            # 9 Update the loss table, L_k(i,j), to L_k-1(i,j), computing the
            # needed q_k(i,j) and q_k-1(i,j) values dynamically from the counts:
            # c_k(i+j,b) = c_k(i,b) + c_k(j,b); c_k-1(a,i) = c_k(a+b,i)
            # update bigram counts
            c_copy = self.c.copy()
            for (l, r), v in c_copy.items():
                if l==b and r==b: 
                    self.c[a, a] += v
                    del self.c[b, b]
                elif l==b: 
                    self.c[a, r] += v
                    del self.c[b, r]
                elif r==b: 
                    self.c[l, a] += v
                    del self.c[l, b]

            # update unigram counts
            self.cl[a] += self.cl[b]
            self.cr[a] += self.cr[b]
            del self.cl[b], self.cr[b]
            print(self.hist)
    
            # 13 set k = k - 1; stop if k == 1
            self.k -= 1
            if self.k == 15:
                print(self.classes)
            if self.k == 1:
                break

    def compute_mi(self, c, cl, cr):
        prob = c/self.N
        log_prob = np.log2((self.N*c) / (cl * cr)) if c > 0 else 0
        return prob * log_prob
    
    def compute_sub(self, a, b):
        return self.s_k[a] + self.s_k[b] \
            - self.q_k.get((a,b), 0) - self.q_k.get((b,a), 0)

    def compute_add(self, a, b):
        # sum_{l=1..k,l!=a,b} q_k(l,a+b)
        add_k = sum(self.compute_mi(
            self.c.get((l,a),0) + self.c.get((l,b),0),
            self.cl[l],
            self.cl[a] + self.cl[b])
            for l in self.cl.keys() if l!=a and l!=b)

        # sum_{r=1..k,r!=a,b} q_k(a+b,r)
        add_k += sum(self.compute_mi(
            self.c.get((a,r),0) + self.c.get((b,r),0),
            self.cl[r],
            self.cl[a] + self.cl[b])
            for r in self.cr.keys() if r!=a and r!=b)

        # q_k(a+b,a+b)
        joint_bigram = self.c.get((a,a),0) + self.c.get((a,b),0) \
            + self.c.get((b,a),0) + self.c.get((b,b),0)
        left_unigram = self.cl.get(a) + self.cl.get(b)
        right_unigram = self.cr.get(a) + self.cr.get(b)
        add_k += self.compute_mi(joint_bigram, left_unigram, right_unigram)
        return add_k


if __name__ == '__main__':
    for lang in ['EN']:
        with open('TEXT'+lang+'1.ptg', 'r', encoding='iso-8859-2') as f:
            # split based on first slash
            text = [line.strip().split('/', 1) for line in f.readlines()]
        words = [line[0] for line in text]
        tags = [line[1] for line in text]

        word_classes = WordClasses(words, lang)
