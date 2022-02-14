#!/usr/bin/env python
# coding: utf-8

# # Lexicon Acquisition
# ## Andrew McIsaac

# In[1]:


import re
from collections import Counter
from collections import defaultdict

with open("de-tagged.txt", "r") as f:
    # make a list of [word, tags], ignoring empty lines
    de = [line.split("\t") for line in f.read().splitlines() if line.strip()]
len(de)


# In[2]:


# create tuples of (word, tag)
de = [(line[0].lower(), line[1]) for line in de] # lower-case the words, but not the tags


# In[3]:


# filter out punctuation, symbols, unknowns, and digits
de_filtered = list(filter(lambda l: ('PUNCT' not in l[1]) and ('SYM' not in l[1]) and (not re.search(r'^X\|', l[1])) and (not re.search(r'(\d+|[^\w\s]+)', l[0])), de))

len(de_filtered)


# In[4]:


# remove duplicates and sort by count
de_counter = Counter(de_filtered)
de_sorted = de_counter.most_common()

len(de_sorted)


# #### Closed-Class Words

# In[5]:


lexicon = []
#  add conjunctions to lexicon 
lexicon += {(word, tag.split("|")[0]) for (word, tag), _ in list(filter(lambda c: re.match(r'CONJ', c[0][1]), de_sorted))}

# remove coordinating conjunctions from vocab list
de_sorted = list(filter(lambda c: not re.match(r'CONJ', c[0][1]), de_sorted))

# add subordinating conjunctions to lexicon
# lose some information (e.g. 'ums' is a contraction from 'um das', not picked up here)
lexicon += {(word, "SCNJ") for (word, tag), _ in list(filter(lambda c: re.match(r'SCONJ', c[0][1]), de_sorted))}

# remove subordinating conjunctions from vocab list
de_sorted = list(filter(lambda c: not re.match(r'SCONJ', c[0][1]), de_sorted))


# In[6]:


# separable verb prefixes - save list for later verbs
# not words on their own (or are tagged appropriately when used with a different meaning)
# so don't add to lexicon
sep_verb_prefixes = {word for (word, tag), _ in list(filter(lambda c: re.search(r'PartType=Vbp', c[0][1]), de_sorted))}

# remove separable verb prefixes form vocab list
de_sorted = list(filter(lambda c: not re.search(r'PartType=Vbp', c[0][1]), de_sorted))

lexicon += {("zu", "PINF")}
de_sorted = list(filter(lambda c: not re.search(r'PartType=Inf', c[0][1]), de_sorted))

lexicon += {(word, "PRES") for (word, tag), _ in list(filter(lambda c: re.search(r'PartType=Res', c[0][1]), de_sorted))}
de_sorted = list(filter(lambda c: not re.search(r'PartType=Res', c[0][1]), de_sorted))


# In[7]:


# add remaining particles to the lexicon
lexicon += {(word, "PART") for (word, tag), _ in list(filter(lambda c: re.match(r'PART', c[0][1]), de_sorted))}


# In[8]:


# remove particles from vocab list 
de_sorted = list(filter(lambda c: not re.match(r'PART', c[0][1]), de_sorted))


# In[9]:


def map_gender_number(tag):
    '''returns 'P' if plural, gender ('M', 'F', 'N') otherwise'''
    if "Number=Plur" in tag:
        return "P"
    elif "Gender=" in tag:
        return tag.split("Gender=")[1][0]
    # number and gender not specified
    return "S"


# In[10]:


# add determiners to the lexicon
# articles
# from UD website: determiners inflect for gender and plurality
# four cases - nominative, accusative, dative, genitive - nominative case for three genders and plural
dets = list(filter(lambda c: re.search(r'DET.*Case=Nom\|Gender=.*PronType=.*', c[0][1]), de_sorted))
lexicon += {(word, "DETR|"+map_gender_number(tag)+"|"+tag.split("PronType=")[1][:3]) for (word, tag), _ in dets}


# In[11]:


de_sorted = list(filter(lambda c: not re.search(r'^DET', c[0][1]), de_sorted))


# In[12]:


len(de_sorted)


# In[13]:


def map_gender_number_person(word,tag):
    '''returns number/gender, person, and plurality'''
    string = ""
    string += tag.split("Person=")[1][0]
    if "Number=Plur" in tag:
        string += "P"
    else:
        string += tag.split("Gender=")[1][0] if "Gender" in tag and string[0] == "3" else "S"
    return string


# In[14]:


# add pronouns to the lexicon
# inflect for cases - nom, acc, dat, gen
# singular (1, 2, 3 (plus genders)), plural (1, 2, 3)
# reflexive - only takes accusative or dative
reflexive = list(filter(lambda c: re.search(r'PRON\|Case=Acc.*Person.*Reflex=Yes', c[0][1]), de_sorted))
lexicon += {(word, "PRON|"+map_gender_number_person(word, tag)+"|Ref") for (word, tag), _ in reflexive}


# In[15]:


de_sorted = list(filter(lambda c: not re.search(r'^PRON.*Reflex=Yes', c[0][1]), de_sorted))


# In[16]:


# personal
prons = list(filter(lambda c: re.search(r'PRON\|Case=Nom.*Person.*PronType=Prs', c[0][1]), de_sorted))
lexicon += {(word, "PRON|"+map_gender_number_person(word, tag)+"|"+tag.split("PronType=")[1][:3]) for (word, tag), _ in prons}


# In[17]:


de_sorted = list(filter(lambda c: not re.search(r'^PRON.*PronType=Prs', c[0][1]), de_sorted))


# In[18]:


# relative
rels = list(filter(lambda c: re.search(r'PRON\|Case=Nom.*PronType=Rel', c[0][1]), de_sorted))
lexicon += {(word, "PRON|"+map_gender_number(tag)+"|Rel") for (word, tag), _ in rels}


# In[19]:


# interrogative
interrogatives = list(filter(lambda c: re.search(r'PRON\|Case=Nom.*PronType=Int(?!.*Person)', c[0][1]), de_sorted))
lexicon += {(word, "PRON|"+map_gender_number(tag)+"|"+tag.split("PronType=")[1][:3]) for (word, tag), _ in interrogatives}


# In[20]:


rest = list(filter(lambda c: re.search(r'PRON\|Case=Nom', c[0][1]), de_sorted))
lexicon += {(word, "PRON|"+map_gender_number(tag)+"|"+tag.split("PronType=")[1][:3]) for (word, tag), _ in rest}


# In[21]:


de_sorted = list(filter(lambda c: not re.search(r'^PRON', c[0][1]), de_sorted))


# In[22]:


# add adpositions to the lexicon
# some prepositions are contractions of preposition + article
# filter out by ignoring items where case or prontype is specified
adps = list(filter(lambda c: re.search(r'ADP.*AdpType=(?!.*Case|.*PronType)', c[0][1]), de_sorted))
lexicon += {(word, tag.split("AdpType=")[1][:4].upper()) for (word, tag), _ in adps}


# In[23]:


de_sorted = list(filter(lambda c: not re.search(r'^ADP', c[0][1]), de_sorted))


# In[24]:


# pronominal adverbs
adverbs = list(filter(lambda c: re.search(r'ADV.*PronType', c[0][1]), de_sorted))
lexicon += {(word, "ADVB|"+tag.split("PronType=")[1][:3]) for (word, tag), _ in adverbs}


# In[25]:


de_sorted = list(filter(lambda c: not re.search(r'^ADV.*PronType', c[0][1]), de_sorted))


# In[26]:


# only cardinal numbers tagged as NUM
lexicon += {(word, "NUMB") for (word, tag), _ in list(filter(lambda c: re.search(r'NUM', c[0][1]), de_sorted))}


# In[27]:


de_sorted = list(filter(lambda c: not re.search(r'^NUM', c[0][1]), de_sorted))


# In[28]:


# auxiliary verbs
# keep infinitives - types are the three infinitives
# since conjugations are very irregular
auxs = list(filter(lambda c: re.search(r'AUX.*VerbForm=Inf', c[0][1]), de_sorted))
lexicon += {(word, "VAUX|"+word.upper()) for (word, tag), count in auxs if count > 5} # ignore misclassifieds


# In[29]:


de_sorted = list(filter(lambda c: not re.search(r'^AUX', c[0][1]), de_sorted))


# In[30]:


# modal verbs - types are infinitives since conjugations are irregular and different
# look through first person plurals too since the conjugation is the same as the infinitive
modals = list(filter(lambda c: re.search(r'VerbForm=Inf\|VerbType=Mod', c[0][1]), de_sorted))
modals += list(filter(lambda c: re.search(r'VERB\|Mood=Ind\|Number=Plur\|Person=1\|Tense=Pres.*VerbType=Mod', c[0][1]), de_sorted))
lexicon += {(word, "VMOD|"+word.upper()) for (word, tag), count in modals if count > 1}


# In[31]:


de_sorted = list(filter(lambda c: not re.search(r'VerbType=Mod', c[0][1]), de_sorted))


# #### Open-Class Words

# In[32]:


len(de_sorted)


# In[33]:


{tag.split("|")[0] for (_, tag), _ in de_sorted}


# In[34]:


# interjections
lexicon += {(word, tag.split("|")[0]) for (word, tag), _ in de_sorted if tag.split("|")[0] == "INTJ"}


# In[35]:


de_sorted = list(filter(lambda c: not re.search(r'^INTJ', c[0][1]), de_sorted))


# In[36]:


# verbs - split into mixed, strong and weak verbs
# in the format ((verb, {prefixes}), tag), so that a verb is listed with its known separable verb prefixes
# e.g. (('denken', {'aus', 'hinterher', 'mit', 'nach', 'zurück', 'über'}), 'VMIX')

# enumerate mixed verbs - form past tense with vowel shift and hard consonant sound
re_infinitive = re.compile(r'^VERB.*VerbForm=Inf')
# 1st/3rd person plural takes same form as infinitive, so make sure to include these
re_plurals = re.compile(r'^VERB\|Mood=Ind\|Number=Plur\|Person=(1|3)\|Tense=Pres.*VerbForm=Fin')

mixed = ["brennen", "bringen", "denken", "kennen", "nennen", "rennen", "senden", "wenden", "wissen"]
mixed_inf = {word for (word, tag), _ in list(filter(lambda c: re.search(re_infinitive, c[0][1]), de_sorted))}
mixed_inf = mixed_inf.union({word for (word, tag), _ in list(filter(lambda c: re.search(re_plurals, c[0][1]), de_sorted))}).intersection(set(mixed))


# In[37]:


def sep_verbs(prefixes, verbs, re_search):
    # returns list of tuples of verbs and their set of seen separable prefixes
    separable_verbs = []
    de_filtered = list(filter(lambda c: re.search(re_search, c[0][1]), de_sorted))
    for verb in verbs:
        valid_prefixes = []
        for prefix in prefixes:
            if prefix+verb in [word for (word, _), _ in de_filtered]:
                valid_prefixes.append(prefix)
        separable_verbs.append({verb: valid_prefixes})
    return separable_verbs


# In[38]:


def get_verb_prefixes(verbs):
    '''
    verbs is a list of verbs in their infinitive form
    returns a list of verbs and their separable prefixes
    '''
    # check for separable verb prefixes in both infinitive form and plural form of the verbs
    sep_infs = sep_verbs(sep_verb_prefixes, verbs, re_infinitive)
    sep_plurals = sep_verbs(sep_verb_prefixes, verbs, re_plurals)
    
    sep = sep_plurals + sep_infs
    
    # merge where the infinitive of the verb has been picked up twice
    d = defaultdict(set)
    for myd in sep:
        for k, v in myd.items():
            d[k].update(v)
    
    return d.items()


# In[39]:


lexicon += [((verb, prefixes), "VMIX") for verb, prefixes in get_verb_prefixes(mixed_inf)]


# In[40]:


de_sorted = list(filter(lambda c: not (re.search(r'^VERB.*VerbForm=Inf', c[0][1]) and c[0][0] in mixed), de_sorted))


# In[41]:


# enumerate strong verbs from list of strong verbs
# 7 classes, as in https://en.wikipedia.org/wiki/Germanic_strong_verb#German
# based on first vowel cluster
# Class 1: ablaut vowel followed by -y- in PIE, "ei, ie, ie" or "ei, i, i" (present, preterite, participle)
# Class 2: ablaut vowel followed by -w- in PIE, "ie, o, o"
# Class 3a: ablaut vowel followed by consonant cluster in PIE, "i, a, u"
# Class 3b: ablaut vowel followed by consonant cluster in PIE, "e, a, o"
# Class 4: ablaut vowel followed by sonorant (m,n,l,r) in PIE, "e, a, o" - identical to 3b in modern German (so classify all as 4 for simplicity)
# Class 5: ablaut vowel followed by non-sonorant consonant in PIE, "e, a, e"
# Class 6: "a, u, a"
# Class 7: preterite formed with "ie", participle is ge+infinitive
with open("strong.txt", "r") as f:
    strong = f.read().splitlines()

strong_inf = {word for (word, tag), _ in list(filter(lambda c: re.search(r'^VERB.*VerbForm=Inf', c[0][1]), de_sorted))}.intersection(set(strong))
#strong_infs = {(word, tag) for (word, tag), _ in de_sorted if word in strong_inf}
#classes = {"1": "ei", "2": "ie", "3a": "i", "4": "e", "5": "e", 
#           "6": "a", "7b": "au", "7c": "a", "7d": "a", "7e": "o"}
classes = {"ei": ["1"], "ie": ["2"], "i": ["3"], "e": ["4", "5"],
          "a": ["6", "7"], "au": ["7"], "o": ["7"], "ü": ["2"], "u": ["7"]}


# In[42]:


# class 1
insep_prefixes = ["be", "emp", "ent", "er", "fern", "miss", "unter", "ver", "voll", "zer"]
vowels = re.compile(r'aeiouäöü')
# we want the ablaut vowels, which means removing inseparable prefixes from infinitives so that first vowel cluster is the ablaut vowel cluster
# "ge" is a special case - can either be insep prefix or part of the stem - filter out separable
insep_infins = set(filter(lambda word: list(filter(word.startswith, insep_prefixes)), strong_inf))
ge_infins = set(filter(lambda word: word.startswith("ge"), strong_inf))
separable_ges = {'gefallen', 'gelingen', 'genießen', 'geraten', 'geschehen', 'gewinnen'}
strong_inf = strong_inf - insep_infins - separable_ges - {"heißen"} 


# In[43]:


def remove_prefix(text, prefixes):
    # split based on specific prefix
    pref = list(filter(text.startswith, prefixes))[0]
    return pref, text[len(pref):]

insep_stems = [remove_prefix(word, insep_prefixes) for word in insep_infins]


# In[44]:


# find first vowel cluster
vowel_clusters = [(word, re.findall(r"\b\w*?([aeiouäöü]{1,2})", word)[0]) for word in strong_inf]
vowel_clusters += [(word[0]+word[1], re.findall(r"\b\w*?([aeiouäöü]{1,2})", word[1])[0]) for word in insep_stems]


# In[45]:


verb_classes = [(word[0], classes[word[1]] if word[1] in classes.keys() else []) for word in vowel_clusters]


# In[46]:


# heißen is a special case for 7, so add it separately
sep_verbs(sep_verb_prefixes, ['heißen'], re_infinitive)


# In[47]:


lexicon += [(("heißen", set()), "VSTR|7")]


# In[48]:


verb_classes_verbs = [word for (word, classes) in verb_classes]

# add strong verbs with only one possible class to their classes 
# a few anomalies missed - e.g. kommen misclassified to be in 7 when should be in 4
lexicon += [((verb, prefixes), "VSTR|"+classes[0]) for (verb, prefixes), (word, classes) in 
     zip(get_verb_prefixes(verb_classes_verbs), verb_classes) if len(classes) ==1]


# In[49]:


verb_classes = [(word, classes) for (word, classes) in verb_classes if len(classes) != 1]


# In[50]:


four_five = [(word, classes) for (word, classes) in verb_classes if classes == ['4','5']]
six_seven = [(word, classes) for (word, classes) in verb_classes if classes == ['6','7']]


# In[51]:


# distinguish between four and five
# have to look for past participle vowel changes 
# four: e-a-o
# five: e-a-e

consonants = [word[0].split("e") for word in four_five]

regex_consonants = []
for word in consonants:
    regex = "^ge"
    for part in word[:-1]:
        regex += part
        regex += ".*"
    regex += "en"
    regex_consonants.append(regex)
regex_consonants

past_parts = list(filter(lambda c: re.search(r'^VERB.*VerbForm=Part', c[0][1]), de_sorted))

past_part_verbs = [word for (word, tag), _ in past_parts]
past_part_verbs

for pattern in regex_consonants:
    patt = re.compile(pattern)
    l = list(filter(lambda c: re.search(patt, c), past_part_verbs))
    if l:
        print(pattern, l)


# In[52]:


# manual addition to lexicon
four = {'treffen', 'werben', 'nehmen', 'helfen', 'heben', 'brechen', 'sterben', 'stehlen', 'werfen', 'sprechen', 'unterbrechen', 'verbergen', 'unternehmen', 'bewegen', 'empfehlen', 'gelten'}
five = {verb[0] for verb in four_five} - four

lexicon += [((verb, prefixes), "VSTR|4") for verb, prefixes in get_verb_prefixes(four)]
lexicon += [((verb, prefixes), "VSTR|5") for verb, prefixes in get_verb_prefixes(five)]


# In[53]:


class_seven_preterites = list(filter(lambda c: re.search(r'^VERB.*Mood=Ind\|Number=Sing.*Tense=Past.*VerbForm=Fin', c[0][1]) and "ie" in c[0][0], de_sorted))


# In[54]:


# distinguish between classes six and seven
# can determine manually depending on preterites
# i.e. if preterite form of infinitive appears in candidates from regex pattern,
# it is class seven, else class six
consonants = [word[0].split("a") for word in six_seven]

regex_consonants = []
for word in consonants:
    regex = "^"
    for part in word[:-1]:
        regex += part
        regex += ".*"
    regex_consonants.append(regex)

class_seven_preterites = list(filter(lambda c: re.search(r'^VERB.*Mood=Ind\|Number=Sing.*Tense=Past.*VerbForm=Fin', c[0][1]) and "ie" in c[0][0], de_sorted))

class_seven_verbs = [word for (word, tag), _ in class_seven_preterites]

for i, pattern in enumerate(regex_consonants):
    patt = re.compile(pattern)
    l = list(filter(lambda c: re.search(patt, c), class_seven_verbs))
    if l:
        print(six_seven[i][0], l)


# In[55]:


# manual addition to lexicon
seven = {'blasen', 'halten', 'lassen', 'raten', 'fallen', 'verlassen'}
six = {verb[0] for verb in six_seven} - seven

lexicon += [((verb, prefixes), "VSTR|6") for verb, prefixes in get_verb_prefixes(six)]
lexicon += [((verb, prefixes), "VSTR|7") for verb, prefixes in get_verb_prefixes(seven)]


# In[56]:


# remove strong verb infinitives from corpus
de_sorted = list(filter(lambda c: not (c[0][0] in strong_inf and re.search('VERB\|VerbForm=Inf', c[0][1])), de_sorted))


# In[57]:


# weak verbs
weak_verb_infs = [word for (word, tag), _ in list(filter(lambda c: re.search(r'^VERB.*VerbForm=Inf', c[0][1]), de_sorted))]


# In[58]:


weak_verb_plurals = [word for (word, tag), _ in list(filter(lambda c: re.search(re_plurals, c[0][1]), de_sorted))]


# In[59]:


weak_verbs = weak_verb_infs + weak_verb_plurals


# In[60]:


lexicon += [((verb, prefixes), "VWEK") for verb, prefixes in get_verb_prefixes(weak_verbs)]


# In[61]:


de_sorted = list(filter(lambda c: not re.search(r'^VERB', c[0][1]), de_sorted))


# In[62]:


# adverbs
# some adverbs inflect for degree - positive and comparative
advs_degree = list(filter(lambda c: re.search(r'^ADV\|Degree=', c[0][1]), de_sorted))
lexicon += {(word, "ADVB|"+tag.split("Degree=")[1].upper()) for (word, tag), _ in advs_degree}


# In[63]:


de_sorted = list(filter(lambda c: not re.search(r'^ADV\|Degree=', c[0][1]), de_sorted))


# In[64]:


# most adverbs do not have any inflection, so just enumerate the rest
adverbs = list(filter(lambda c: re.search(r'^ADV', c[0][1]), de_sorted))
lexicon += {(word, "ADVB") for (word, tag), _ in adverbs}


# In[65]:


de_sorted = list(filter(lambda c: not re.search(r'^ADV', c[0][1]), de_sorted))


# In[66]:


# adjectives
# adjectives are either predicative (short) or attributive (long)
# inflection occurs when attributive - when they appear before a noun
# e.g. "Der Hund ist groß und braun" vs "Der große und braune Hund"
# inflection cases depend on whether there is a definite article, indefinite article, or no article before the noun
# requires syntactic rules to determine, so base form (short) is listed and inflections can be determined based on syntax

# degree is either positive (base), comparative or superlative
# comparative adds -er and sometimes adds an umlaut to the base form and further inflects as above
# superlative is am (base)-sten with a few exceptions as the base form, but is -st before the noun
# sometimes slightly different (e.g. hoch -> hoher), but these are rare cases


adjs = list(filter(lambda c: re.search(r'^ADJ.*Degree=Pos.*Variant=Short', c[0][1]), de_sorted))
lexicon += {(word, "ADJE") for (word, tag), _ in adjs}


# In[67]:


list(filter(lambda c: re.search(r'^ADJ.*Degree=[^(Pos|Sup)]', c[0][1]), de_sorted))


# In[68]:


de_sorted = list(filter(lambda c: not re.search(r'^ADJ', c[0][1]), de_sorted))


# In[69]:


# nouns
# feminine version of nouns for occupations etc. add -in to the base form 
# gbnsz don't quite follow the rule (medizin, prinzessin) - keep in feminine form
female_nouns = list(filter(lambda c: re.search(r'^NOUN.*Case=Nom.*Gender=Fem.*Number=Sing', c[0][1]) and re.search(r'.*[^gbnsz]in$', c[0][0]), de_sorted))
for word in female_nouns:
    de_sorted.remove(word)
# add base feminine nouns
de_sorted += {((word[:-2], tag.replace("Gender=Fem", "Gender=Masc")), count) for (word, tag), count in female_nouns}


# In[70]:


# weak nouns (the N-declension) take an "n" ending in all cases except nominative
weak_masc_nouns = list(filter(lambda c: re.search(r'^NOUN.*Case=Nom.*Gender=Masc.*Number=Sing', c[0][1]) and re.search(r'.*(e|ant|ent|ist|at|aut|ad)$', c[0][0]), de_sorted))

# Herz is the only non-masculine weak noun
weak_neut_nouns = list(filter(lambda c: re.search(r'^NOUN.*Case=Nom.*Gender=Neut.*Number=Sing', c[0][1]) and re.search('^herz$', c[0][0]), de_sorted))


# In[71]:


# all nouns are capitalised in German - keep this in lexicon
lexicon += {(word.capitalize(), "NOUN|"+tag.split("Gender=")[1][0]+"|Weak") for (word, tag), _ in weak_masc_nouns + weak_neut_nouns}


# In[72]:


de_sorted = list(filter(lambda c: not c in weak_masc_nouns+weak_neut_nouns, de_sorted))


# In[73]:


# plural nouns - remove the stems and remove umlaut shifts where possible to get base form
plural_nouns = {word for (word, tag), _ in list(filter(lambda c: re.search(r'^NOUN.*Case=Nom.*Number=Plur', c[0][1]), de_sorted))}


# In[74]:


split_plurals = [re.split(r'(e|e?n|er|s)$', word) for word in plural_nouns]


# In[75]:


split_plurals


# In[76]:


singular_nouns = {word for (word, tag), _ in list(filter(lambda c: re.search(r'^NOUN.*Number=Sing', c[0][1]), de_sorted))}


# In[77]:


singular_nouns


# In[78]:


# try reversing umlaut shifts - a bit crude and erroneously removes some umlauts
# but works reasonably well
def remove_umlaut(match_obj):
    umlaut_switch = {"ä": "a", "ö": "o", "ü": "u"}
    if match_obj.group() in umlaut_switch:
        return umlaut_switch[match_obj.group()]
 


# In[79]:


# add plural nouns that only appear in the plural to lexicon
# cannot know the gender of these nouns since they do not appear in their singular form
unknown_plurals = {(re.sub(r'(ä|ö|ü)', remove_umlaut, word[0].capitalize()), ("NOUN|S|"+word[1] if len(word) > 1 else "")) for word in split_plurals if word[0] not in singular_nouns}
lexicon += unknown_plurals


# In[80]:


# genitive noun endings generally add es or s in masculine and neuter nouns
# remove endings and then process them along with rest of singular nouns
genitive_nouns = [((re.split(r'(e?s)$', word)[0], tag), count) for (word, tag), count in 
                  list(filter(lambda c: re.search(r'^NOUN.*Case=Gen.*Gender=(Masc|Neut).*Number=Sing', c[0][1]), de_sorted))]


# In[81]:


genitive_nouns


# In[82]:


# plural suffixes for nouns taken from https://deutsch.lingolia.com/en/grammar/nouns-and-articles/plural
sing_nouns = list(filter(lambda c: re.search(r'^NOUN.*Case=(Nom|Acc|Dat).*Number=Sing', c[0][1]), de_sorted))
# add genitive nouns in their base form to the list of singular nouns
sing_nouns += genitive_nouns
# form plural with en
en_sing_nouns = list(filter(lambda c: 
            re.search(r'Gender=Fem', c[0][1]) and 
                re.search(r'(e|in|ion|ik|heit|keit|schaft|tät|ung)$', c[0][0]), sing_nouns))
lexicon += {(word.capitalize(), "NOUN|F|en") for (word, tag), _ in en_sing_nouns}


# In[83]:


# form plural with e
e_sing_nouns = list(filter(lambda c: re.search(r'Gender=Masc', c[0][1]) and re.search(r'(eur|ich|ier|ig|ling|ör)$', c[0][0]), sing_nouns))
lexicon += {(word.capitalize(), "NOUN|M|e") for (word, tag), _ in e_sing_nouns}


# In[84]:


# form plural with s
s_sing_nouns = list(filter(lambda c: re.search(r'[^aeiouy][aiouy]$', c[0][0]), sing_nouns))
lexicon += {(word.capitalize(), "NOUN|"+tag.split("Gender=")[1][0]+"|s" if "Gender" in tag else "NOUN|S|s") for (word, tag), _ in s_sing_nouns}


# In[85]:


sing_nouns = set(sing_nouns) - set(en_sing_nouns) - set(e_sing_nouns) - set(s_sing_nouns)


# In[86]:


# nouns that take no ending in the plural
no_m_sing_nouns = list(filter(lambda c: re.search(r'Gender=Masc', c[0][1]) and re.search(r'(el|en|er)$', c[0][0]), sing_nouns))
lexicon += {(word.capitalize(), "NOUN|M|no") for (word, tag), _ in no_m_sing_nouns}
no_n_sing_nouns = list(filter(lambda c: re.search(r'Gender=Neut', c[0][1]) and re.search(r'(chen|lein)$', c[0][0]), sing_nouns))
lexicon += {(word.capitalize(), "NOUN|N|no") for (word, tag), _ in no_n_sing_nouns}


# In[87]:


sing_nouns = set(sing_nouns) - set(no_m_sing_nouns) - set(no_n_sing_nouns)


# In[88]:


# plural form is not determined by the general rules for pluralisation for these nouns
sing_nouns


# In[89]:


lexicon += {(word.capitalize(), "NOUN|"+tag.split("Gender=")[1][0] if "Gender" in tag else "NOUN|S") for (word, tag), _ in sing_nouns}


# In[90]:


de_sorted = list(filter(lambda c: not re.match(r'^NOUN', c[0][1]), de_sorted))


# In[91]:


# enumerate proper nouns - only one inflection class with simple contextual differences
# plurals - keeps correct form of 'beatles' and 'bahamas', but 'schneiders' should be singular
plurals = list(filter(lambda c: re.match(r'^PROPN.*Case=(Nom|Acc|Dat).*Number=Plur', c[0][1]), de_sorted))
lexicon += {(word.capitalize(), "PRPN|P") for (word, tag), _ in plurals}


# In[92]:


singular = list(filter(lambda c: re.match(r'^PROPN.*Case=(Nom|Acc|Dat).*Number=Sing', c[0][1]), de_sorted))
lexicon += {(word.capitalize(), "PRPN|"+tag.split("Gender=")[1][0] if "Gender" in tag else "PRPN|S") for (word, tag), _ in singular}


# In[93]:


de_sorted = list(filter(lambda c: not re.match(r'^PROPN', c[0][1]), de_sorted))


# In[94]:


# write lexicon to file
with open("lexicon.txt", "w") as f:
    for (word, tag) in lexicon:
        f.write(str(word)+'\t'+str(tag)+'\n')


# ## Tags
# 
# **ADJE**: Adjective \
# **ADVB**: Adverb - can be types Cmp (Comparative), Dem (Demonstrative), Int (Interrogative), Pos (Possessive) \
# **CIRC**: Circumposition \
# **CONJ**: Coordinating Conjunction \
# **DETR**: Determiner - has a gender (M,F,N,P) - and type (Art: Article, Dem: Demonstrative, Ind: Indefinite, Int: Interrogative, Prs: Personal, Rel: Relative) \
# **INTJ**: Interjection \
# **NOUN**: Noun - has a gender (M,F,N,P,S (for singular unknown)) - and optional type based on the forms the noun takes in the plural (Weak is for N-declension nouns) \
# **NUMB**: Number \
# **PART**: Particle \
# **PINF**: Particle Infinitive ('zu') \
# **POST**: Postposition \
# **PREP**: Preposition \
# **PRES**: Particle Response (e.g. 'ja', 'nein') \
# **PRON**: Pronoun - has a (optional) person (1,2,3) and gender (M,F,N,P,S) - and optional type (Prs: Personal, Ref: Reflexive, plus as determiners)  \
# **PRPN**: Proper Noun - has a gender (M,F,N,P,S) \
# **SCNJ**: Subordinating Conjunction \
# **VAUX**: Auxiliary Verb - type is any of the three auxiliary verbs (haben, sein, werden) \
# **VMIX**: Mixed Verb \
# **VMOD**: Modal Verb - type is any of the six modal verbs \
# **VSTR**: Strong Verb - has a type based on class (1-7) - see strong verbs section for more \
# **VWEK**: Weak Verb
