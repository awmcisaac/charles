# NPFL094 Homework 2 - Two-Level Morphology

I attempted to cover adjectives and nouns for German.

## Adjectives

I cover all adjectives, including comparative (+Comp) and superlative (Sup+).
Superlative can be in the predicative (+Pred) form, e.g. "am kleinsten", or in
attributive (+Att), e.g. "kleinste". Predicative always adds "am" as an extra
word - I have indicated spaces by an underscore, and does not inflect further
than the "-sten" indicated. Attributive does not have the "am" prefix, but I
could not determine how to remove this while keeping the superlative flag
indicator. Predicative and comparative further inflect based on case, number,
and gender. The inflections also change depending on whether an article is
present or not (e.g. "der kleine Hund" vs "ein kleiner Hund" - the small dog vs
a small dog).

One of the hardest parts of German morphological analysis is umlautung. Some,
mainly monosyllabic comparatives and superlatives add an umlaut to the stem
vowel in these forms. I have modelled monosyllabism as a vowel being followed by
maximally one extra vowel before a flag indicating comparative or superlative.
This seems to correctly identify and change the appropriate vowel most of the
time in practice.

Some adjectives have irregular comparative forms, which I have ignored in this
instance. The predicative superlative further requires an "e" before its ending
after some consonants, which is relatively easily modelled by the
"AdjEInsertion" rule.

### Lexical String Format

The lexical string format for adjectives is shown in the order below.
Superlative, predicative, atrributive, comparative and article are optional.

Superlative is indicated by "Sup+".
Predicative/Attributive requires "Sup+" and is indicated by "+Pred" and "+Att"
respectively.
The base form is indicated.
Article taken is indicated by "+Def", "+Indef", or omitted.
Adjective is indicated by "+A".
Case is indicated by "+Nom", "+Acc", "+Dat", or "+Gen".
Gender or plural is indicated by "+M", "+F", "+N", or "+Pl".

## Nouns

I have covered all nouns of all genders and all forms. Nouns are tagged in the
original lexicon by their gender and the plural form ending, so most inflection
classes are simple and follow the inflection rules. Again, the main difficulty
is with the umlaut. There are no exact rules for which nouns take the umlaut in
the plural. Other approaches to two-level morphology for German take whether
the noun is umlaut-possible as a feature of the noun. In most plural endings,
there is a general rule for whether the stem vowel has an umlaut (for example,
feminine nouns that take an "s" in the plural never take an umlaut), but with
many exceptions. I have modelled the general rule for each vowel ending. Without
manually indicating the exceptions, I do not think it is possible to correctly
determine whether a noun has an umlaut in all cases.

For weak masculine nouns, I sometimes overgenerate "e"s, which is dealt with by
the "NDeclEDeletion" rule. The genitive plural adds an extra "n", which is
removed by the "NDeletion" rule.

### Lexical String Format

The lexical string format for nouns is indicated below.

The base form of the noun is indicated.
+N determines that the form is a noun.
Number is indicated by "+Sg" or "+Pl".
Case is indicated by "+Nom", "+Acc", "+Dat", or "+Gen".

## Running the Code

An example is provided - simply run `./german.sh input.txt`. This will analyse
the words in "input.txt". Update the input file with your own words, one word
per line - the base form must be in the lexicon in "german-lexicon.lexc".
