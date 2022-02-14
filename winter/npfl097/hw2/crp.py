import numpy as np
import random
from collections import Counter
from tqdm import tqdm

def chinese_restaurant_process(
        text, alpha, p_c, p_cont, temperature, iterations, annealing=False, d=0
        ):
    n = len(text)
    # forall i in {1..n-1} : initialize s_i randomly
    s = np.random.randint(0, 2, n-1)

    chars = set(text)
    num_chars = len(chars)
    
    def base_prob(word):
        word_length = len(word)
        prob = 1
        for i in range(word_length):
            prob *= (1/num_chars)
            if i == word_length-1:
                prob *= (1-p_c)
            else:
                prob *= p_c
        return prob

    new_word = ''
    segmentation = []
    for i, word in enumerate(text):
        new_word += word
        try:
            if s[i] == 1: # separator 
                segmentation.append(new_word)
                new_word = ''
        except IndexError:
            segmentation.append(new_word)

    # compute initial counts of words count[word] and total word-count t
    count = Counter()
    for word in segmentation:
        count[word] += 1 # Counter object creates new word if it doesn't exist
    t = len(segmentation)

    def get_prev(index):
        prev = text[index]
        for i in range(index-1, -1, -1):
            if s[i] == 1:
                break
            prev = text[i] + prev
        return prev

    def get_next(index):
        nxt = ''
        try:
            for i in range(index+1, len(text)):
                nxt += text[i]
                if s[i] == 1:
                    break
        except IndexError:
            return nxt
        return nxt

    # main algorithm    
    for iteration in tqdm(range(iterations)):
        if annealing and temperature > 0.3:
            temperature *= 0.95
        for i in np.random.permutation([i for i in range(n-1)]):
            prev = get_prev(i)
            nxt = get_next(i)
            joined = prev + nxt
            if s[i] == 0:
                count[joined] -= 1
                if count[joined] == 0: del count[joined]
                t -= 1
            else:
                count[prev] -= 1
                if count[prev] == 0: del count[prev]
                count[nxt] -= 1
                if count[nxt] == 0: del count[nxt]
                t -= 2

            p = np.zeros(2)
            K = len(count)

            if d > 0: # if using pitman-yor process
                p[0] = ((count[joined] - d) if count[joined] > 0 else
                        (alpha + d*K) * base_prob(joined)) \
                    / (alpha + t)
                p[1] = ((count[prev] - d) if count[prev] > 0 else
                        (alpha + d*K) * base_prob(prev)) \
                    / (alpha + t) \
                    * ((count[nxt] - d) if count[nxt] > 0 else
                        (alpha + d*K) * base_prob(nxt)) \
                    / (alpha + t + 1) \
                    * p_cont
            else: # standard crp
                p[0] = ((alpha * base_prob(joined)) + count[joined]) / (alpha + t)
                p[1] = (((alpha * base_prob(prev)) + count[prev]) / (alpha + t)) \
                    * (((alpha * base_prob(nxt)) + count[nxt]) / (alpha + t + 1)) \
                        * p_cont
            p = p**(1/temperature)
            p = p/np.sum(p)
            s[i] = np.random.choice((0,1),p=p)
            if s[i] == 0:
                count[joined] += 1
                t += 1
            else:
                count[prev] += 1
                count[nxt] += 1
                t += 2

    new_word = ''
    segmentation = []
    for i, word in enumerate(text):
        new_word += word
        try:
            if s[i] == 1: # separator 
                segmentation.append(new_word)
                new_word = ''
        except IndexError:
            segmentation.append(new_word)
    return segmentation
            
with open('data_small.txt', 'r') as f:
    unsegmented = f.read()

with open('data_small_segmented_1.txt', 'w') as f:
    segmentation = chinese_restaurant_process(text=unsegmented,
            alpha=200, p_c=0.7, p_cont=0.99, temperature=3, iterations=100,
            annealing=True, d=0.5)
    f.write(' '.join(segmentation))
