import numpy as np
import pandas as pd
from collections import Counter, defaultdict

#with open("TEXTEN1_test.txt", "w") as f:
#    f.writelines([word+'\n' for word in test])
#with open("TEXTEN1_heldout.txt", "w") as f:
#    f.writelines([word+'\n' for word in holdout])
#with open("TEXTEN1_train.txt", "w") as f:
#    f.write lines([word+'\n' for word in train])

def get_uniform_probs(text):
    vocab_size = len(set(text))
    p_0 = 1/vocab_size
    return p_0

def get_unigram_probs(text):
    text_size = len(text)
    counter_1 = Counter(text)
    probs_1 = [count/text_size for count in counter_1.values()]
    p_1 = {k: v for k, v in zip(counter_1.keys(), probs_1)}
    return p_1

def get_bigram_probs(text):
    ''' c_1(y) = sum_z(c_2(y,z)) '''
    counter_2 = Counter()
    for i in range(len(text)-1):
        counter_2[text[i], text[i+1]] += 1
    counter_1 = Counter()
    for y, z in counter_2:
        counter_1[y] += counter_2[y,z]

    # p_2(w_i | w_i-1) = c_2(w_i-1, w_i) / c_1(w_i-1)
    p_2 = {(z,y): counter_2[y,z]/counter_1[y] for y, z in counter_2}
    return p_2, counter_1

def get_trigram_probs(text):
    ''' c_2(y,z) = sum_w(c_3(y,z,w)) '''
    counter_3 = Counter()
    for i in range(len(text)-2):
        counter_3[text[i], text[i+1], text[i+2]] += 1
    counter_2 = Counter()
    for y, z, w in counter_3:
        counter_2[y,z] += counter_3[y,z,w]

    # p_3(w_i | w_i-2, w_i-1) = c_3(w_i-2, w_i-1, w_i) / c_2(w_i-2, w_i-1)
    p_3 = {(w,y,z): counter_3[y,z,w]/counter_2[y,z] for y, z, w in counter_3}
    return p_3, counter_2

def compute_smoothing(p, heldout, epsilon=0.01):
    # randomly initialise l and normalise
    l = np.random.rand(4)
    l = l/np.sum(l)

    # prepend start 'words' to avoid issues at beginning of data
    heldout = ['<s>', '<s>'] + heldout

    def em(l):
        p_smooth = defaultdict(int)
        # start at 2, since 0, 1 are start words
        for i in range(2, len(heldout)):
            p_smooth[heldout[i], heldout[i-2], heldout[i-1]] \
                    += l[3]*p[3].get((heldout[i], heldout[i-2], heldout[i-1]),
                        0 if counter_2[heldout[i-2], heldout[i-1]] > 0 else p[0]) \
                    + l[2]*p[2].get((heldout[i], heldout[i-1]),
                        0 if counter_1[heldout[i-1]] > 0 else p[0]) \
                    + l[1]*p[1].get((heldout[i]), 0) \
                    + l[0]*p[0]
    
        counts = np.zeros(4)
        for i in range(2, len(heldout)):
            counts[0] += (l[0]*p[0])/p_smooth[heldout[i], heldout[i-2], heldout[i-1]]
    
        for i in range(2, len(heldout)):
            counts[1] += (l[1]*p[1].get((heldout[i]), 0)) \
                    /p_smooth[heldout[i], heldout[i-2], heldout[i-1]]
    
        for i in range(2, len(heldout)):
            counts[2] += (l[2]*p[2].get((heldout[i], heldout[i-1]), 0)) \
                    /p_smooth[heldout[i], heldout[i-2], heldout[i-1]]
    
        for i in range(2, len(heldout)):
            counts[3] += (l[3]*p[3].get((heldout[i], heldout[i-2], heldout[i-1]), 0)) \
                    /p_smooth[heldout[i], heldout[i-2], heldout[i-1]]
    
        # next l
        next_l = counts/np.sum(counts)
    
        if (np.abs(l - next_l) < epsilon).all():
            return p_smooth, next_l
        else:
            return em(next_l)

    return em(l)

def tweaked_smoothing(p, heldout, l):
    # prepend start 'words' to avoid issues at beginning of data
    heldout = ['<s>', '<s>'] + heldout
    p_smooth = defaultdict(int)
    # start at 2, since 0, 1 are start words
    for i in range(2, len(heldout)):
        p_smooth[heldout[i], heldout[i-2], heldout[i-1]] \
                += l[3]*p[3].get((heldout[i], heldout[i-2], heldout[i-1]),
                    0 if counter_2[heldout[i-2], heldout[i-1]] > 0 else p[0]) \
                + l[2]*p[2].get((heldout[i], heldout[i-1]),
                    0 if counter_1[heldout[i-1]] > 0 else p[0]) \
                + l[1]*p[1].get((heldout[i]), 0) \
                + l[0]*p[0]
    return p_smooth


def get_cross_entropy(p_smooth, test):
    ''' 
    compute cross entropy of test data
    -1/|T'| sum(log2(P(yi|xi)))
    '''
    test = ['<s>', '<s>'] + test

    cross_entropy = 0
    for i in range(2, len(test)):
        cross_entropy += np.log2(p_smooth.get((test[i], test[i-2], test[i-1]),
            1/vocab_size))

    return -1/len(test) * cross_entropy


def run(lang):
    # compute smoothing parameters and smoothed language model
    p_smooth, l = compute_smoothing(p, heldout, epsilon=1e-12)
    # compute cross entropy of smoothed language model on test data
    cross_entropy = get_cross_entropy(p_smooth, test)

    with open("lm_results"+lang+".txt", "a") as f:
        f.write("TEXT\tLAMBDAS\tCROSS ENTROPY\n")
        f.write("original\t"+str(l)+"\t"+str(cross_entropy)+"\n")

    tweaked_l = np.zeros(4)
    
    percentage_tweaks = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 0.95, 0.99]
    for tweak in percentage_tweaks:
        trigram_diff = 1 - l[3]
        tweaked_l[3] = l[3] + trigram_diff * tweak
        tweaked_l[0:3] = l[0:3] - (l[0:3]/np.sum(l[0:3])) * trigram_diff * tweak
        tweaked_p_smooth = tweaked_smoothing(p, heldout, tweaked_l)
        cross_entropy = get_cross_entropy(tweaked_p_smooth, test)
        with open("lm_results"+lang+".txt", "a") as f:
            f.write("add_"+str(tweak)+"\t"+str(tweaked_l)+"\t"
                    +str(cross_entropy)+"\n")

    discount_tweaks = [0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2, 0.1, 0]
    for tweak in discount_tweaks:
        tweaked_l[3] = l[3] * tweak
        trigram_diff = l[3] - tweaked_l[3]
        tweaked_l[0:3] = l[0:3] + (l[0:3]/np.sum(l[0:3])) * trigram_diff
        tweaked_p_smooth = tweaked_smoothing(p, heldout, tweaked_l)
        cross_entropy = get_cross_entropy(tweaked_p_smooth, test)
        with open("lm_results"+lang+".txt", "a") as f:
            f.write("discount_"+str(tweak)+"\t"+str(tweaked_l)+"\t"
                    +str(cross_entropy)+"\n")

if __name__ == '__main__':
    for lang in ["EN", "CZ"]:
        with open("TEXT"+lang+"1.txt", "r", encoding="iso-8859-2") as f:
            text = [word.strip() for word in f.readlines()]
        train = text[:-60000]
        heldout = text[-60000:-20000]
        test = text[-20000:]
    
        vocab = set(train)
        vocab_size = len(vocab)
        text_size = len(train)
    
        # calculate probabilities from training data
        p_0 = get_uniform_probs(train)
        p_1 = get_unigram_probs(train)
        p_2, counter_1 = get_bigram_probs(train)
        p_3, counter_2 = get_trigram_probs(train)
        p = [p_0, p_1, p_2, p_3]

        run(lang)
