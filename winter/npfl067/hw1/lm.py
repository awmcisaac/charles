import numpy as np
from collections import Counter

class LM():
    def __init__(self, text, lang):
        # split text into train, heldout, and test sets
        # prepend start 'words' to avoid issues at beginning of data
        self.train = ['<s>', '<s>'] + text[:-60000]
        self.heldout = ['<s>', '<s>'] + text[-60000:-20000]
        self.test = ['<s>', '<s>'] + text[-20000:]

        self.lang = lang

        # initialise dictionaries for ngram probabilities and counts
        self.p_0 = self.get_uniform_probs()
        self.p_1 = self.get_unigram_probs()
        self.p_2, self.c_1 = self.get_bigram_probs()
        self.p_3, self.c_2 = self.get_trigram_probs()

    def get_uniform_probs(self):
        ''' compute uniform probability '''
        # p_0(w_i) = 1/V
        return 1/len(set(self.train))
    
    def get_unigram_probs(self):
        ''' compute all unigram probabilities '''
        text_size = len(self.train)
        counter_1 = Counter(self.train)
        # p_1(w_i) = c_1(w_1)/T
        p_1 = {word: count/text_size for word, count in counter_1.items()}
        return p_1
    
    def get_bigram_probs(self):
        ''' 
        compute all conditional bigram probabilities
        return bigram probabilities and count of all words in the history
        '''
        counter_2 = Counter()
        # for each bigram
        for z, w in zip(self.train, self.train[1:]):
            counter_2[z, w] += 1
        c_1 = Counter()
        # c_1(z) = sum_w(c_2(z,w))
        for z, w in counter_2:
            c_1[z] += counter_2[z, w]
    
        # p_2(w_i | w_i-1) = c_2(w_i-1, w_i) / c_1(w_i-1)
        p_2 = {(w, z): counter_2[z, w]/c_1[z] for z, w in counter_2}
        return p_2, c_1
    
    def get_trigram_probs(self):
        '''
        compute all conditional trigram probabilities
        return trigram probabilities and count of all words in the history
        '''
        counter_3 = Counter()
        # for each trigram
        for y,z,w in zip(self.train, self.train[1:], self.train[2:]):
            counter_3[y, z, w] += 1
        c_2 = Counter()
        # c_2(y,z) = sum_w(c_3(y,z,w))
        for y,z,w in counter_3:
            c_2[y, z] += counter_3[y, z, w]
    
        # p_3(w_i | w_i-2, w_i-1) = c_3(w_i-2, w_i-1, w_i) / c_2(w_i-2, w_i-1)
        p_3 = {(w, y, z): counter_3[y, z, w]/c_2[y, z] for y, z, w in counter_3}
        return p_3, c_2

    def compute_smoothing(self, epsilon):
        '''
        run EM algorithm on heldout data with stopping condition
        |l_j - l_j,next| < epsilon for each j
        '''
        # randomly initialise l and normalise
        l = np.random.rand(4)
        l /= np.sum(l)
    
        def em(l):
            exp_counts = np.zeros(4)
            for y,z,w in zip(self.heldout, self.heldout[1:], self.heldout[2:]):
                curr_counts = np.zeros(4)
                # compute expected counts of each lambda
                curr_counts[0] += l[0]*self.p_0
                curr_counts[1] += l[1]*self.p_1.get((w), 0)
                # controlling counts as described on slide 93
                curr_counts[2] += l[2]*self.p_2.get((w, z),
                        0 if self.c_1[z] > 0 else self.p_0)
                curr_counts[3] += l[3]*self.p_3.get((w, y, z),
                        0 if self.c_2[y,z] > 0 else self.p_0)
                
                # divide by smoothed probability
                curr_counts /= np.sum(curr_counts)
                # add to total expected counts
                exp_counts += curr_counts
        
            # next l (normalise)
            next_l = exp_counts/np.sum(exp_counts)
        
            # check stopping condition, else repeat with next l
            if (np.abs(l - next_l) < epsilon).all():
                return next_l
            else:
                return em(next_l)
    
        return em(l)
    
    def get_smoothed_prob(self, l, w, y, z):
        '''
        compute smoothed probability ps(w|y,z) as
        defined in the assignment brief
        return ps(w|y,z)
        '''
        ps_0 = l[0] * self.p_0
        ps_1 = l[1] * self.p_1.get((w), 0)
        ps_2 = l[2] * self.p_2.get((w,z),
                0 if self.c_1[z] > 0 else self.p_0)
        ps_3 = l[3] * self.p_3.get((w, y, z), 
                0 if self.c_2[y,z] > 0 else self.p_0)
        p_smooth = ps_0 + ps_1 + ps_2 + ps_3
        return p_smooth
    
    def get_cross_entropy(self, l):
        ''' 
        compute cross entropy of all test data T'
        return -1/|T'| sum(log2(ps(w|y,z)))
        '''
        cross_entropy = 0
        for y,z,w in zip(self.test, self.test[1:], self.test[2:]):
            cross_entropy += np.log2(self.get_smoothed_prob(l, w, y, z))
    
        return -1/len(self.test) * cross_entropy

    def write_to_file(self, label, l, cross_entropy):
        ''' save results '''
        with open('lm_results'+self.lang+'.txt', 'a') as f:
            f.write(label+'\t'+str(l)+'\t'+str(cross_entropy)+'\n')

    def run(self):
        # compute smoothing parameters
        l = self.compute_smoothing(epsilon=1e-5)
        # compute cross entropy of smoothed language model on test data
        cross_entropy = self.get_cross_entropy(l)
        self.write_to_file('original', l, cross_entropy)
    
        tweaked_l = np.zeros(4)
        percentage_tweaks = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 0.95, 0.99]

        for tweak in percentage_tweaks:
            trigram_diff = 1 - l[3]
            # add x% of the difference between l[3] and 1 to tweaked_l[3]
            tweaked_l[3] = l[3] + trigram_diff * tweak
            # discount remaining parameters proportionally to sum to 1
            tweaked_l[0:3] = l[0:3] - (l[0:3]/np.sum(l[0:3])) \
                    * trigram_diff * tweak
            cross_entropy = self.get_cross_entropy(tweaked_l)
            self.write_to_file('add_'+str(tweak), tweaked_l, cross_entropy)
    
        discount_tweaks = [0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2, 0.1, 0]

        for tweak in discount_tweaks:
            tweaked_l[3] = l[3] * tweak
            # discount x% of l[3]
            trigram_diff = l[3] - tweaked_l[3]
            # boost remaining parameters proportionally to sum to 1
            tweaked_l[0:3] = l[0:3] + (l[0:3]/np.sum(l[0:3])) * trigram_diff
            cross_entropy = self.get_cross_entropy(tweaked_l)
            self.write_to_file('discount_'+str(tweak), tweaked_l, cross_entropy)

if __name__ == '__main__':
    for lang in ['EN', 'CZ']:
        with open('TEXT'+lang+'1.txt', 'r', encoding='iso-8859-2') as f:
            text = [word.strip() for word in f.readlines()]
        
        lm = LM(text, lang)

        # prepare results file
        with open('lm_results'+lang+'.txt', 'w') as f:
            f.write('TEXT\tLAMBDAS\tCROSS ENTROPY\n')

        # run experiments
        lm.run()
