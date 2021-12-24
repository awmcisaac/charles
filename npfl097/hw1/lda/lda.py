#!/usr/bin/env python
# coding: utf-8

# # NPFL097 Assignment 1 - Latent Dirichlet Allocation
# ## Andrew McIsaac

# In[1]:


#!/usr/bin/env python3

from sklearn.datasets import fetch_20newsgroups
from sklearn.feature_extraction.text import TfidfVectorizer
import gensim
from gensim.utils import simple_preprocess
from gensim.parsing.preprocessing import STOPWORDS
from nltk.stem import WordNetLemmatizer, SnowballStemmer
from nltk.stem.porter import *
import numpy as np
import random
import pickle 
from tqdm import tqdm, trange
import matplotlib.pyplot as plt

# Load documents

newsgroups_train = fetch_20newsgroups(subset='train')
print(len(newsgroups_train.data), " documents loaded.")

print("Example document:")
print(newsgroups_train.data[0])


# Preprocess documents - lemmatization and stemming

def lemmatize_stemming(text):
    stemmer = SnowballStemmer("english")
    return stemmer.stem(WordNetLemmatizer().lemmatize(text, pos='v'))

def preprocess(text):
    result = []
    for token in gensim.utils.simple_preprocess(text):
        if token not in gensim.parsing.preprocessing.STOPWORDS and len(token) > 3:
            result.append(lemmatize_stemming(token))
    return result

processed_docs = list(map(preprocess, newsgroups_train.data))

print("Example document - lemmatized and stemmed:")
print(processed_docs[0])


# Construct dictionary

dictionary = gensim.corpora.Dictionary(processed_docs)
dictionary.filter_extremes(no_below=15, no_above=0.5, keep_n=100000)

print("Dictionary size: ", len(dictionary))

# Filter words in documents

docs = list()
maxdoclen = 0 
for doc in processed_docs:
    docs.append(list(filter(lambda x: x != -1, dictionary.doc2idx(doc))))
    maxdoclen = max(maxdoclen, len(docs[-1]))

print("Example document - filtered:")
print(docs[0])

print("Maximum document length:", maxdoclen)

doc_cnt = len(docs)
wrd_cnt = len(dictionary)


# #### 1. Implement the Latent Dirichlet allocation topic model, as described in the previous lectures. Set the hyperparameters $\alpha = 0.1$, $\gamma = 0.1$ and set number of topics $K = 20$. (4 pts)

# In[2]:


def _init_lda(docs, doc_cnt, wrd_cnt, topics):
    # initialise z matrix
    z = [[0 for _ in range(len(d))] for d in docs]
    
    cd = np.zeros((doc_cnt, topics))
    cw = np.zeros((wrd_cnt, topics))
    c = np.zeros((topics))
    
    # initialise z_{nd} randomly for d in num_docs, for n in num words in doc d
    # compute initial counts cd, cw, c
    for d, doc in enumerate(docs):
        for n, word in enumerate(doc):
            z[d][n] = random.randint(0, topics-1)
            k = z[d][n]
            cd[d, k] += 1
            cw[word, k] += 1
            c[k] += 1
    return z, cd, cw, c


# In[3]:


def lda(docs, topics, doc_cnt, wrd_cnt, iterations=50, alpha=0.1, gamma=0.1):
    
    
    prob = np.zeros((topics))

    z, cd, cw, c = _init_lda(docs, doc_cnt, wrd_cnt, topics)
    
    # quasi-dictionaries for saving values after every iteration
    cd_dict = np.zeros((iterations+1, doc_cnt, topics))
    cw_dict = np.zeros((iterations+1, wrd_cnt, topics))
    c_dict = np.zeros((iterations+1, topics))
    cd_dict[0], cw_dict[0], c_dict[0] = cd, cw, c
    for i in trange(iterations):
        for d, doc in enumerate(docs):
            for n, word in enumerate(doc):
                k_t = z[d][n]
                cd[d, k_t] -= 1
                cw[word, k_t] -= 1
                c[k_t] -= 1
                #calculate updated probabilities
                for k in range(topics):
                    prob[k] = ((alpha + cd[d, k]) / ((topics * alpha) + len(docs[d])-1))                             * ((gamma + cw[word, k]) / ((wrd_cnt * gamma) + c[k]))
                # normalise to get proper probability distribution
                prob = prob/np.sum(prob)
                # sample topic k from probability distribution prob
                k = np.random.choice(topics, p=prob)
                # increment counters
                z[d][n] = k
                cd[d, k] += 1
                cw[word, k] += 1
                c[k] += 1
        cd_dict[i+1] = cd
        cw_dict[i+1] = cw
        c_dict[i+1] = c
    return cd_dict, cw_dict, c_dict


# In[4]:


# set the hyperparameters
iterations=50
alpha=0.1
gamma=0.1
topics=20


# In[ ]:


# run algorithm
cd_dict, cw_dict, c_dict = lda(docs, topics, doc_cnt, wrd_cnt, iterations, alpha, gamma)


# In[ ]:


# store/load saved values
with open("cd_dict.pkl", "wb") as f:
    pickle.dump(cd_dict, f)
with open("cw_dict.pkl", "wb") as f:
    pickle.dump(cw_dict, f)
with open("c_dict.pkl", "wb") as f:
    pickle.dump(c_dict, f)


# In[5]:


with open("cd_dict.pkl", "rb") as f:
    cd_dict = pickle.load(f)
with open("cw_dict.pkl", "rb") as f:
    cw_dict = pickle.load(f)
with open("c_dict.pkl", "rb") as f:
    c_dict = pickle.load(f)


# #### 2. Plot the distribution over topics for one chosen document after initialization and after 1st, 2nd, 5th, 10th, 20th, and 50th iteration. Comment on these. (1 pt)

# In[6]:


# restore beta, theta from saved counts for all iterations
beta = np.zeros((iterations+1, wrd_cnt, topics))
theta = np.zeros((iterations+1, doc_cnt, topics))

for i in range(iterations+1):
    for m in range(wrd_cnt):
        beta[i,m] = (gamma + cw_dict[i,m]) / (wrd_cnt*gamma + cw_dict[i,m].sum())
    
    for d in range(doc_cnt):
        theta[i,d] = (alpha + cd_dict[i,d]) / (topics*alpha + cd_dict[i,d].sum())


# In[7]:


def plot_doc_topic_distributions(doc, theta):
    X = [i for i in range(1, topics+1)]
    
    fig, ax = plt.subplots(3, 3, sharey=True, figsize=(8,8))
    fig.tight_layout(h_pad=2)
    ax[0, 0].bar(X, theta[0,doc])
    ax[0, 0].title.set_text('After Initialisation')
    ax[0, 1].bar(X, theta[1,doc])
    ax[0, 1].title.set_text('Iteration 1')
    ax[0, 2].bar(X, theta[2,doc])
    ax[0, 2].title.set_text('Iteration 2')
    ax[1, 0].bar(X, theta[5,doc])
    ax[1, 0].title.set_text('Iteration 5')
    ax[1, 1].bar(X, theta[10,doc])
    ax[1, 1].title.set_text('Iteration 10')
    ax[2, 0].bar(X, theta[20,doc])
    ax[2, 0].title.set_text('Iteration 20')
    ax[2, 1].bar(X, theta[50,doc])
    ax[2, 1].title.set_text('Iteration 50')
    
    plt.setp(ax[-1, :], xlabel='Topic k')
    plt.setp(ax[:, 0], ylabel='p')
    plt.tight_layout()


# In[8]:


plot_doc_topic_distributions(99, theta)


# The distribution over topics shows clearly how, with a concentration parameter of 0.1, a reasonably uniform initial distribution, with every topic having a probability between 0 and 0.1, steadily determines just a few topics that are assigned high probability. The rest of the topics then have near zero probabilities. These high probabilities tend to continue to grow over iterations, concentrating the probability density into just a few topics.
# 
# For example, after iteration 1, a few topics have increased their probability density, while for around half the probability has already gone to near zero. By iteration 10 this is further exemplified, with topic 16 having a probability around 0.6 and just a few other topics having any visible probability.
# 
# By the final iteration the same topic has by far the largest probability (around 0.7), while most of the rest of the probability mass is distributed across just three or four topics.

# #### 3. Compute the word entropy for each of the topics as a function of the number of Gibbs iterations. (1 pt)

# In[9]:


def entropy(cw_dict, docs, topics, iterations, gamma):
    H = np.zeros((iterations+1, topics))
    N_train = sum(len(docs[i]) for i in range(len(docs)))
    # sum_m=1^M c_w[m][k]
    cw_topic_array = np.sum(cw_dict, axis=1)
    
    for k in range(topics):
        for i in range(iterations+1):
            entropy = 0
            for w in range(wrd_cnt):
                pwk = (gamma + cw_dict[i, w, k])                     / ((wrd_cnt * gamma) + cw_topic_array[i, k])
                logpwk = np.log2(pwk)
                entropy += pwk * logpwk
            H[i,k] = -entropy
    return H


# In[10]:


H = entropy(cw_dict, docs, topics, iterations, gamma)


# In[11]:


plt.plot(H)
plt.title('Word Entropy for Topics across Iterations')
plt.xlabel('Iterations')
plt.ylabel('Entropy')
plt.tight_layout()


# #### 4. Show histograms of the most frequent 20 words of three chosen topics after 50 Gibbs iterations. (1 pt)
# 
# Histograms of the 5th, 11th, and 20th topics are shown

# In[12]:


ks = [4, 10, 19]
#dictionary.get(np.argmax(cw[:, k]))

fig, ax = plt.subplots(3, 1, sharey=True, figsize=(10,12))
fig.tight_layout(h_pad=7)


for i, k in enumerate(ks):
    inds = np.argpartition(cw_dict[-1, :, k], -20)[-20:]
    sorted_inds = inds[np.argsort(cw_dict[-1, :, k][inds])][::-1]
    words = [dictionary.get(i) for i in sorted_inds]
    totals = cw_dict[-1, :, k][sorted_inds]
    
    ax[i].bar(range(len(words)), totals, align='center')
    ax[i].title.set_text('Topic %s' % (k+1))
    plt.sca(ax[i])
    plt.xticks(range(len(words)), words, rotation=45)
    plt.setp(ax[i], xlabel='words', ylabel='frequency')


# #### 5. Preprocess the test data in the same way as the training data. For filtration, use the dictionary from the training data. 

# In[13]:



# Load documents

newsgroups_test = fetch_20newsgroups(subset='test')
print(len(newsgroups_test.data), " documents loaded.")

print("Example document:")
print(newsgroups_test.data[0])


# Preprocess documents - lemmatization and stemming

def lemmatize_stemming(text):
    stemmer = SnowballStemmer("english")
    return stemmer.stem(WordNetLemmatizer().lemmatize(text, pos='v'))

def preprocess(text):
    result = []
    for token in gensim.utils.simple_preprocess(text):
        if token not in gensim.parsing.preprocessing.STOPWORDS and len(token) > 3:
            result.append(lemmatize_stemming(token))
    return result

processed_docs_test = list(map(preprocess, newsgroups_test.data))

print("Example document - lemmatized and stemmed:")
print(processed_docs_test[0])


# Construct dictionary - use dictionary from training data

dictionary = gensim.corpora.Dictionary(processed_docs)
dictionary.filter_extremes(no_below=15, no_above=0.5, keep_n=100000)

print("Dictionary size: ", len(dictionary))

# Filter words in documents

docs_test = list()
maxdoclen_test = 0 
for doc in processed_docs_test:
    docs_test.append(list(filter(lambda x: x != -1, dictionary.doc2idx(doc))))
    maxdoclen_test = max(maxdoclen_test, len(docs_test[-1]))

print("Example document - filtered:")
print(docs_test[0])

print("Maximum document length:", maxdoclen_test)


# Set the hyperparameters

iterations = 50 
topics = 20 
alpha = 0.1 
gamma = 0.1

doc_cnt_test = len(docs_test)
wrd_cnt_test = len(dictionary)


# #### Compute the per-word perplexity of the test data for the state after 50 Gibbs iterations. 

# In[14]:


def _init_lda_test(docs, doc_cnt, topics):
    # initialise z matrix
    z = [[0 for _ in range(len(d))] for d in docs]
    
    cd = np.zeros((doc_cnt, topics))
    
    # initialise z_{nd} randomly for d in num_docs, for n in num words in doc d
    # compute initial counts cd, cw, c
    for d, doc in enumerate(docs):
        for n, word in enumerate(doc):
            z[d][n] = random.randint(0, topics-1)
            k = z[d][n]
            cd[d, k] += 1
    return z, cd


# In[15]:


def lda_test(cw_dict, c_dict, docs, topics, doc_cnt, wrd_cnt, iterations, alpha, gamma):
    
    prob = np.zeros((topics))
    
    cw = cw_dict[-1]
    c = c_dict[-1]

    z, cd = _init_lda_test(docs, doc_cnt, topics)
    
    # dictionaries for saving values after every iteration
    cd_dict = np.zeros((iterations+1, doc_cnt, topics))
    cd_dict[0] = cd
    for i in trange(iterations):
        for d, doc in enumerate(docs):
            for n, word in enumerate(doc):
                k_t = z[d][n]
                cd[d, k_t] -= 1
                #calculate updated probabilities
                for k in range(topics):
                    prob[k] = ((alpha + cd[d, k]) / ((topics*alpha) + len(docs[d])-1))                             * ((gamma + cw[word, k]) / ((wrd_cnt * gamma) + c[k]))
                # normalise to get proper probability distribution
                prob = prob/np.sum(prob)
                # sample topic k from probability distribution prob
                k = np.random.choice(topics, p=prob)
                z[d][n] = k
                cd[d, k] += 1
        cd_dict[i+1] = cd
    return cd_dict


# In[ ]:


cd_dict_test = lda_test(cw_dict, c_dict, docs_test, topics, doc_cnt_test, wrd_cnt_test, iterations, alpha, gamma)


# In[ ]:


with open("cd_dict_test.pkl", "wb") as f:
    pickle.dump(cd_dict_test, f)


# In[16]:


with open("cd_dict_test.pkl", "rb") as f:
    cd_dict_test = pickle.load(f)


# In[17]:


def entropy_test(cw_dict, cd_dict, docs, topics, wrd_cnt, alpha, gamma):
    H = 0
    N = sum(len(docs[i]) for i in range(len(docs)))
    # sum_{m=1}^{M} c_w[m][k]
    cw_topic_array = np.sum(cw_dict, axis=1)
    
    log_p_w = 0
    for d, doc in enumerate(docs):
        for n, word in enumerate(doc):
            pwd = 0
            for k in range(topics):
                first_part = (gamma + cw_dict[-1, word, k])                             / ((wrd_cnt) * gamma + cw_topic_array[-1, k])
                second_part = (alpha + cd_dict[-1, d, k])                             / ((topics * alpha) + len(docs[d]))
                pwd += first_part * second_part
            log_p_w += np.log2(pwd)
    H = (-1/N) * log_p_w
    return H


# In[18]:


H = entropy_test(cw_dict, cd_dict_test, docs_test, topics, wrd_cnt_test, alpha, gamma)
PP = 2**H


# In[19]:


PP


# #### Per-word perplexity of the test data for the state after 50 Gibbs iterations is $\text{PP} = 1476.95$

# #### Compare it to a simple bayesian model not using any hidden variables and using only one distribution over words $\beta$ for all documents with symmetric Dirichlet prior with and concentration parameter $γ = 0.1$. (2 pts)

# In[20]:


# compute counts from training data
cw_simple = np.zeros((wrd_cnt))
for d, doc in enumerate(docs):
    for n, word in enumerate(doc):
        cw_simple[word] += 1


# In[21]:


def bayesian_entropy_test(cw, docs, wrd_cnt, iterations, gamma):
    H = 0
    # N_test is the total number of words in the test data
    N = sum(len(docs[i]) for i in range(len(docs)))
    # sum_m=1^M c_w[m][k]
    cw_sum = np.sum(cw)
    
    log_p_w = 0
    for d, doc in enumerate(docs):
        for n, word in enumerate(doc):
            pwd = (gamma + cw[word]) / ((wrd_cnt * gamma) + cw_sum)
            log_p_w += np.log2(pwd)
    H = (-1/N) * log_p_w
    return H


# In[22]:


H_simple = bayesian_entropy_test(cw_simple, docs_test, wrd_cnt, iterations, gamma)
PP_simple = 2**H_simple


# In[23]:


PP_simple


# The perplexity of the test data for the LDA algorithm is much lower than the simple bayesian model (1477 vs 2627), with the LDA perplexity 43% lower than the simple model.

# #### 6. Try to change the number of topics $K$, the hyperparameters $\alpha$ and $\beta$ and the number of Gibbs iterations. How the performance changes? (1 pt)

# In[ ]:


def tune_lda(iterations, alpha, gamma, topics):
    cw_tune, cd_tune, c_tune = lda(docs, topics, doc_cnt, wrd_cnt, iterations, alpha, gamma)
    cd_tune_test = lda_test(
        cw_tune, c_tune, docs_test, topics, doc_cnt_test, wrd_cnt_test, iterations, alpha, gamma)
    
    return cw_tune, cd_tune, c_tune, cd_tune_test


# In[ ]:


# decrease topics to 10
cw_tune1, cd_tune1, c_tune1, cd_tune_test_1 =     tune_lda(iterations=20, alpha=0.1, gamma=0.1, topics=10)

H_tune1 = entropy_test(cw_tune1, cd_tune_test1, docs_test, topics, wrd_cnt_test, alpha, gamma)
PP_tune1 = 2**H_tune1


# In[ ]:




