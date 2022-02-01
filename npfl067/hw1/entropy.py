import numpy as np
import random
from collections import Counter

class Entropy():
    def __init__(self, text, lang):
        # include start and end tags 
        self.text = ['<s>'] + text + ['<s>']
        self.lang = lang

    def joint_probability(self, text):
        ''' calculate joint probability P(i,j) '''
        counts = Counter()
        # get counts of pairs of words
        for i, j in zip(text, text[1:]):
            counts[i, j] += 1
    
        total = sum(counts.values())
        # work out probability based on counts
        joint_probs = {k: v/total for k, v in counts.items()}
        return joint_probs
    
    def conditional_probability(self, text):
        ''' compute all conditional bigram probabilities P(j|i) '''
        counter_2 = Counter()
        for i, j in zip(text, text[1:]):
            counter_2[i, j] += 1
        c_1 = Counter()
        # c_1(i) = sum_w(c_2(i,j))
        for i, j in counter_2:
            c_1[i] += counter_2[i, j]
    
        # P(j|i) = c_2(i,j) / c_1(i)
        cond_probs = {(j, i): counter_2[i, j]/c_1[i] for i, j in counter_2}
        return cond_probs
    
    def get_entropy(self, text):
        ''' 
        compute conditional entropy of text
        H(J|I) = -sum(P(i,j) * log2(P(j|i))
        '''
        # calculate joint and conditional probabilities of text
        joint_probs = self.joint_probability(text)
        cond_probs = self.conditional_probability(text)
    
        # calculate entropy from formula, using all i, j from joint_probs
        # all other joint probabilities of words are 0, so not needed
        entropy = 0
        for (i, j), prob in joint_probs.items():
            joint = prob
            log_cond = np.log2(cond_probs[j, i])
            entropy -= joint * log_cond
        return entropy
    
    def mess_up_chars(self, text, likelihood):
        '''
        go through words in the text and characters in words,
        altering characters with a given likelihood
        return the text with individual characters messed up
        '''
        # set of characters that appear in the text
        char_set = {char for word in text for char in word}
        messed_up = []
        for word in text:
            new_word = ''
            for char in word:
                if random.random() <= likelihood:
                    new_char = random.choice(list(char_set))
                else:
                    new_char = char
                new_word += new_char
            messed_up.append(new_word)
        return messed_up
    
    def mess_up_words(self, text, likelihood):
        '''
        map a word to a random word from the text with the given likelihood,
        otherwise keep the current word for all words in the text
        return the text with individual words messed up
        '''
        word_set = set(text)
        messed_up = list(map(lambda x: random.choice(list(word_set)) if 
            random.random() <= likelihood else x, text))
        return messed_up

    def write_to_file(self, label, entropy, perplexity):
        with open('entropy_results'+self.lang+'.txt', 'a') as f:
            f.write(label+'\t'+str(entropy)+'\t'+str(perplexity)+'\n')
    
    def run(self):
        # get entropy of original text
        entropy = self.get_entropy(self.text)
        perplexity = 2**entropy
        self.write_to_file('original', entropy, perplexity)
        
        likelihoods = [0.1, 0.05, 0.01, 0.001, 0.0001, 0.00001]

        for likelihood in likelihoods:
            for i in range(10):
                messed_up = self.mess_up_chars(self.text, likelihood)
                entropy = self.get_entropy(messed_up)
                perplexity = 2**entropy
                self.write_to_file('char_'+str(likelihood), entropy, perplexity)

        for likelihood in likelihoods:
            for i in range(10):
                messed_up = self.mess_up_words(self.text, likelihood)
                entropy = self.get_entropy(messed_up)
                perplexity = 2**entropy
                self.write_to_file('word_'+str(likelihood), entropy, perplexity)
        
if __name__ == '__main__':
    for lang in ['EN', 'CZ']:
        with open('TEXT'+lang+'1.txt', 'r', encoding='iso-8859-2') as f:
            text = [word.strip() for word in f.readlines()]

        entropy = Entropy(text, lang)

        # prepare results file
        with open('entropy_results'+lang+'.txt', 'w') as f:
            f.write('TEXT\tENTROPY\tPERPLEXITY\n')

        # run experiments
        entropy.run()
