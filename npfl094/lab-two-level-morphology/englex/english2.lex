;english2.lex
;main lexicon file for Englex
;last modified 28-Nov-95

;Use this lexicon file (english2.lex) in conjunction with the grammar
;file english2.grm. This file is exactly the same as english.lex except
;for the gloss field.

;Englex 2.0b5
;Copyright (C) 1991-1995, Summer Institute of Linguistics, Inc.

;Evan Antworth                    |  e-mail: evan.antworth@sil.org
;Academic Computing Department    |  phone:  214-709-3346, -2418
;Summer Institute of LInguistics  |  fax:    214-709-3363
;7500 W. Camp Wisdom Road
;Dallas, TX 75236

ALTERNATION Particle    AUX AUX-V PP CJ PP-CJ DT PR DT-PR IJ   ;no affixes
ALTERNATION Prefix      PREFIX
ALTERNATION Root        N AJ V AV N-V N-AJ AJ-V AJ-AV CD OD
ALTERNATION Suffix      SUFFIX
ALTERNATION Infl        INFL           ;inflection
ALTERNATION PN_Suffix   PN_SUFF        ;proper nouns
ALTERNATION Y_Suffix    Y_SUFF         ;-y suffix
ALTERNATION IC_Suffix   IC_SUFF        ;-ic suffix
ALTERNATION PT_Suffix   PT_SUFF        ;participles
ALTERNATION Clitic      GEN CNTR End   ;genitive and contractions
ALTERNATION Contraction CNTR End       ;contractions
ALTERNATION CD          CD OD ORDR     ;cardinals and ordinals
ALTERNATION Compound    INITIAL        ;compounds
ALTERNATION End         End

FEATURES n\n v\v aj\aj v\aj v\n v\aj-n n-v-aj\x v-aj\x 
        aj/aj aj/av aj/n aj/v n/aj n/n n/v n/av v/av v/aj v/n v/v 
        n/n-aj n-aj/n v/aj/n v/aj/av
        denom deverb deadj denom+deajr deverb+deajr
        1 2 3 sg pl sg-pl ed en ing s comp super reg irreg proper
        acc gen ind nom-acc acc-gen gen-ind rflx wh -3sg modal neg
        infmark compound ss boundstem
        rev ajr8 ajr13
        ajr14 ajr17 ajr20 nr10 nr12 nr15 nr19 nr22 nr23 nr26 nr31 deg2
        ~ajr14 ~ajr17 ~ajr20 ~nr10 ~nr12 ~nr15 ~nr19 ~nr22 ~nr23 ~nr26 ~nr31 ~deg2

FIELDCODE lf   U     ;lexical item
FIELDCODE lx   L     ;sublexicon
FIELDCODE alt  A     ;alternation
FIELDCODE fea  F     ;features
FIELDCODE gl2  G     ;gloss (stem)

INCLUDE affix.lex       ;file of affixes
INCLUDE noun.lex        ;file of nouns
INCLUDE verb.lex        ;file of verbs
INCLUDE adjectiv.lex    ;file of adjectives
INCLUDE adverb.lex      ;file of adverbs
INCLUDE minor.lex       ;file of minor word classes
;;;The following files may be optionally loaded.
INCLUDE proper.lex      ;file of proper nouns
INCLUDE abbrev.lex      ;file of acronyms and abbreviations
INCLUDE technica.lex    ;file of technical terms
INCLUDE natural.lex     ;file of names of flora, fauna, etc.
INCLUDE foreign.lex     ;file of foreign words and phrases

END
