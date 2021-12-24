import numpy as np
import random
from collections import Counter
from functools import reduce
from tqdm import tqdm

def joint_probability(text):
    ''' calculate joint probability P(i,j) '''
    counts = Counter()
    # get counts of pairs of words
    for i in range(len(text)-1):
        counts[text[i],text[i+1]] += 1

    total = sum(counts.values())
    # work out probability based on counts (MLE)
    probs = [val/total for val in counts.values()]

    joint_probs = {k: v for k, v in zip(counts.keys(), probs)}
    
    return joint_probs

def conditional_probability(text):
    ''' calculate conditional probability P(j|i) '''
    # all words in the text have a dictionary for counts of following words
    # e.g. {i: {j: n}}, where i is followed by j, and n is the number of times
    # i is followed by j in the text
    words = {word: Counter() for word in text}
    for i in range(len(text)-1):
        words[text[i]] += Counter([text[i+1]])

    for word in words:
        total = sum(words[word].values())
        probs = [val/total for val in words[word].values()]
        conditional_probs = {k: v for k, v in zip(words[word].keys(), probs)}
        words[word] = conditional_probs

    return words

def get_entropy(text):
    ''' H(J|I) = -sum(P(i,j) * log2(P(j|i)) '''
    # calculate joint and conditional probabilities of text
    joint_probs = joint_probability(text)
    cond_probs = conditional_probability(text)

    # calculate entropy from formula, using all i, j from joint_probs
    # all other joint probabilities of words are 0, so not needed
    entropy = 0
    for (i, j), prob in joint_probs.items():
        joint = prob
        log_cond = np.log2(cond_probs[i][j])
        entropy -= joint * log_cond

    return entropy

def mess_up_chars(text, likelihood):
    # set of characters that appear in the text
    charset = {char for word in text for char in word}

    # go through characters in words and words in texts, altering
    # characters with a given likelihood
    messed_up = []
    for word in text:
        new_word = ''
        for char in word:
            if random.random() <= likelihood:
                new_char = random.choice(list(charset))
            else:
                new_char = char
            new_word += new_char
        messed_up.append(new_word)
    return messed_up

def mess_up_words(text, likelihood):
    # set of words that appear in the text
    wordset = set(text)

    # map a word to a random word from the text with the given likelihood,
    # otherwise keep the current word for all words in the text
    messed_up = list(map(lambda x: random.choice(list(wordset)) if 
        random.random() <= likelihood else x, text))
    return messed_up

def run(lang):
    with open("TEXT"+lang+"1.txt", "r", encoding="iso-8859-2") as f:
        text = [word.strip() for word in f.readlines()]
    
    # get entropy of original text
    entropy = get_entropy(text)
    perplexity = 2**entropy
    with open("results"+lang+".txt", "a") as f:
        f.write("TEXT\tENTROPY\tPERPLEXITY\n")
        f.write("original\t"+str(entropy)+"\t"+str(perplexity)+"\n")
    
#    likelihoods = [0.1, 0.05, 0.01, 0.001, 0.0001, 0.00001]
#    for likelihood in likelihoods:
#        for i in range(10):
#            messed_up = mess_up_chars(text, likelihood)
#            entropy = get_entropy(messed_up)
#            perplexity = 2**entropy
#            with open("results"+lang+".txt", "a") as f:
#                f.write("char_"+str(likelihood)+"\t"+str(entropy)+"\t"+str(perplexity)+"\n")
#    for likelihood in likelihoods:
#        for i in range(10):
#            messed_up = mess_up_words(text, likelihood)
#            entropy = get_entropy(messed_up)
#            perplexity = 2**entropy
#            with open("results"+lang+".txt", "a") as f:
#                f.write("word_"+str(likelihood)+"\t"+str(entropy)+"\t"+str(perplexity)+"\n")
        
#run("EN")
#run("CZ")
#run("COMBINED")

with open("TEXTCOMBINED.txt", "r", encoding="iso-8859-2") as f:
    text = [word.strip() for word in f.readlines()]
print(text[:7])
print(text[7:])

run("COMBINED")
