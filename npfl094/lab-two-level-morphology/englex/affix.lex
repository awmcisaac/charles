;affix.lex
;INCLUDE file for english.lex
;last modified 28-Nov-95

;Englex 2.0b5
;Copyright (C) 1991-1995, Summer Institute of Linguistics, Inc.

;Evan Antworth                    |  e-mail: evan.antworth@sil.org
;Academic Computing Department    |  phone:  214-709-3346, -2418
;Summer Institute of LInguistics  |  fax:    214-709-3363
;7500 W. Camp Wisdom Road
;Dallas, TX 75236

;File Contents
;LEXICON INITIAL
;LEXICON PREFIX
;  non-category-changing
;    degree
;    orientation
;    time and order
;    combining forms:
;    negative
;    reversive
;    pejorative
;    number
;    neo-classical
;  category-changing
;LEXICON SUFFIX
;  NOUN SUFFIXES
;    DENOMINAL NOUNS
;    DEVERBAL NOUNS
;    DE-ADJECTIVAL NOUNS
;  ADJECTIVE/ADVERB SUFFIXES
;    DENOMINAL ADJECTIVES/ADVERBS
;    DEVERBAL ADJECTIVES
;    DE-ADJECTIVAL ADJECTIVES/ADVERBS
;  VERB SUFFIXES
;    DENOMINAL VERBS
;    DE-ADJECTIVAL VERBS
;LEXICON PN_SUFF
;LEXICON Y_SUFF
;LEXICON IC_SUFF
;LEXICON ORDR
;LEXICON INFL
;LEXICON PT_SUFF
;LEXICON CNTR
;LEXICON End


;LEXICON INITIAL

\lf 0
\lx INITIAL
\alt Particle
\gl1
\gl2

\lf 0
\lx INITIAL
\alt Prefix
\gl1
\gl2

;LEXICON PREFIX

;the following prefixes do not change the category of the stem

\lf 0
\lx PREFIX
\alt Root
\gl1
\gl2

;degree

\lf arch+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 DEG1+
\gl2 DEG1+

\lf co+
\lx PREFIX
\alt Prefix
\fea deg2
\gl1 DEG2+
\gl2 DEG2+

\lf hyper+
\lx PREFIX
\alt Prefix
\gl1 DEG3+
\gl2 DEG3+

\lf mini+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 DEG4+
\gl2 DEG4+

\lf maxi+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 DEG5+
\gl2 DEG5+

\lf out+
\lx PREFIX
\alt Prefix
\fea v\v
\gl1 DEG6+
\gl2 DEG6+

\lf over+
\lx PREFIX
\alt Prefix
\fea v-aj\x
\gl1 DEG7+
\gl2 DEG7+

\lf sub+
\lx PREFIX
\alt Prefix
\gl1 DEG8/LOC1+
\gl2 DEG8/LOC1+

\lf super+
\lx PREFIX
\alt Prefix
\gl1 DEG9/LOC2+
\gl2 DEG9/LOC2+

;\lf sur+
;\lx PREFIX
;\alt Prefix
;\fea n\n
;\gl1 DEG10+
;\gl2 DEG10+

\lf ultra+
\lx PREFIX
\alt Prefix
\gl1 DEG11+
\gl2 DEG11+

\lf under+
\lx PREFIX
\alt Prefix
\gl1 DEG12+
\gl2 DEG12+

\lf micro+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 DEG13/NUM22+
\gl2 DEG13/NUM22+

\lf macro+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 DEG14+
\gl2 DEG14+

\lf para+
\lx PREFIX
\alt Prefix
\gl1 DEG15+
\gl2 DEG15+

\lf quasi+
\lx PREFIX
\alt Prefix
\fea aj\aj
\gl1 DEG16+
\gl2 DEG16+

\lf supra+
\lx PREFIX
\alt Prefix
\fea aj\aj
\gl1 DEG17+
\gl2 DEG17+

\lf meta+
\lx PREFIX
\alt Prefix
\gl1 DEG18+
\gl2 DEG18+

\lf omni+
\lx PREFIX
\alt Prefix
\fea aj\aj
\gl1 DEG19+
\gl2 DEG19+

;orientation

\lf anti+
\lx PREFIX
\alt Prefix
\gl1 ORI1+
\gl2 ORI1+

\lf contra+
\lx PREFIX
\alt Prefix
;\fea n\n
\gl1 ORI2+
\gl2 ORI2+

\lf counter+
\lx PREFIX
\alt Prefix
\gl1 ORI3+
\gl2 ORI3+

\lf pro+
\lx PREFIX
\alt Prefix
\gl1 ORI4+
\gl2 ORI4+

;location

\lf fore+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 LOC3/ORD2+
\gl2 LOC3/ORD2+

\lf inter+
\lx PREFIX
\alt Prefix
\gl1 LOC4+
\gl2 LOC4+

;\lf trans+
;\lx PREFIX
;\alt Prefix
;\fea aj\aj
;\gl1 LOC5+
;\gl2 LOC5+

\lf extra+
\lx PREFIX
\alt Prefix
\fea aj\aj
\gl1 LOC6+
\gl2 LOC6+

\lf intra+
\lx PREFIX
\alt Prefix
\fea aj\aj
\gl1 LOC7+
\gl2 LOC7+

;rare
;\lf cis+
;\lx PREFIX
;\alt Prefix
;\fea aj\aj
;\gl1 LOC8+
;\gl2 LOC8+

\lf mid+
\lx PREFIX
\alt Prefix
\gl1 LOC9+
\gl2 LOC9+

\lf circum+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 LOC10+
\gl2 LOC10+

\lf retro+
\lx PREFIX
\alt Prefix
\gl1 LOC11+
\gl2 LOC11+

\lf poly+
\lx PREFIX
\alt Prefix
\gl1 NUM3+
\gl2 NUM3+

\lf multi+
\lx PREFIX
\alt Prefix
\gl1 NUM4+
\gl2 NUM4+

\lf ante+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 ORD6+
\gl2 ORD6+

\lf step+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 ORD7+
\gl2 ORD7+

;time and order

\lf ex+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 ORD1+
\gl2 ORD1+

;see LOC3
;\lf fore+
;\lx PREFIX
;\alt Prefix
;\fea n\n
;\gl1 ORD2+
;\gl2 ORD2+

\lf post+
\lx PREFIX
\alt Prefix
\gl1 ORD3+
\gl2 ORD3+

\lf pre+
\lx PREFIX
\alt Prefix
\gl1 ORD4+
\gl2 ORD4+

\lf re+
\lx PREFIX
\alt Prefix
\fea v\v
\gl1 ORD5+
\gl2 ORD5+


;combining forms:
;self
;equi
;electro
;neuro
;photo
;psycho
;thermo
;vaso

;negative

;\lf a+
;\lx PREFIX
;\alt Prefix
;\fea aj\aj
;\gl1 NEG1+
;\gl2 NEG1+

\lf in+
\lx PREFIX
\alt Prefix
\fea aj\aj
\gl1 NEG2a+
\gl2 NEG2a+

\lf im+
\lx PREFIX
\alt Prefix
\fea aj\aj
\gl1 NEG2b+
\gl2 NEG2b+

\lf il+
\lx PREFIX
\alt Prefix
\fea aj\aj
\gl1 NEG2c+
\gl2 NEG2c+

\lf ir+
\lx PREFIX
\alt Prefix
\fea aj\aj
\gl1 NEG2d+
\gl2 NEG2d+

\lf non+
\lx PREFIX
\alt Prefix
\gl1 NEG3+
\gl2 NEG3+

\lf un+
\lx PREFIX
\alt Prefix
\fea aj\aj
\gl1 NEG4+
\gl2 NEG4+

;\lf ab+
;\lx PREFIX
;\alt Prefix
;\fea aj\aj
;\gl1 NEG5+
;\gl2 NEG5+

;reversive

\lf un+
\lx PREFIX
\alt Prefix
\fea v\v rev
\gl1 REV1+
\gl2 REV1+

\lf de+
\lx PREFIX
\alt Prefix
\fea v\v
\gl1 REV2+
\gl2 REV2+

\lf dis+
\lx PREFIX
\alt Prefix
\fea v-aj\x
\gl1 REV3+
\gl2 REV3+

;pejorative

\lf mal+
\lx PREFIX
\alt Prefix
\fea v\v
\gl1 PEJ1+
\gl2 PEJ1+

\lf mis+
\lx PREFIX
\alt Prefix
\fea v\v
\gl1 PEJ2+
\gl2 PEJ2+

\lf pseudo+
\lx PREFIX
\alt Prefix
\gl1 PEJ3+
\gl2 PEJ3+

;\lf dys+
;\lx PREFIX
;\alt Prefix
;\fea v\v
;\gl1 PEJ4+
;\gl2 PEJ4+

;number

\lf bi+
\lx PREFIX
\alt Prefix
\fea aj\aj
\gl1 NUM1+
\gl2 NUM1+

\lf di+
\lx PREFIX
\alt Prefix
\gl1 NUM2+
\gl2 NUM2+

\lf semi+
\lx PREFIX
\alt Prefix
\gl1 NUM5+
\gl2 NUM5+

\lf demi+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 NUM6+
\gl2 NUM6+

\lf hemi+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 NUM7+
\gl2 NUM7+

\lf tri+
\lx PREFIX
\alt Prefix
\fea aj\aj
\gl1 NUM8+
\gl2 NUM8+

\lf uni+
\lx PREFIX
\alt Prefix
\fea aj\aj
\gl1 NUM9+
\gl2 NUM9+

\lf mono+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 NUM10+
\gl2 NUM10+

\lf deka+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 NUM11+
\gl2 NUM11+

\lf hecto+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 NUM12+
\gl2 NUM12+

\lf kilo+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 NUM13+
\gl2 NUM13+

\lf mega+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 NUM14+
\gl2 NUM14+

\lf giga+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 NUM15+
\gl2 NUM15+

\lf tera+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 NUM16+
\gl2 NUM16+

\lf peta+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 NUM17+
\gl2 NUM17+

\lf exa+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 NUM18+
\gl2 NUM18+

\lf deci+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 NUM19+
\gl2 NUM19+

\lf centi+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 NUM20+
\gl2 NUM20+

\lf milli+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 NUM21+
\gl2 NUM21+

;see DEG13
;\lf micro+
;\lx PREFIX
;\alt Prefix
;\fea n\n
;\gl1 NUM22+
;\gl2 NUM22+

\lf nano+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 NUM23+
\gl2 NUM23+

\lf pico+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 NUM24+
\gl2 NUM24+

\lf femto+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 NUM25+
\gl2 NUM25+

\lf atto+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 NUM26+
\gl2 NUM26+

;neo-classical

\lf auto+
\lx PREFIX
\alt Prefix
\gl1 NEO1+
\gl2 NEO1+

\lf neo+
\lx PREFIX
\alt Prefix
\gl1 NEO2+
\gl2 NEO2+

\lf paleo+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 NEO3+
\gl2 NEO3+

\lf pan+
\lx PREFIX
\alt Prefix
\gl1 NEO4+
\gl2 NEO4+

\lf proto+
\lx PREFIX
\alt Prefix
\gl1 NEO5+
\gl2 NEO5+

;\lf tele+
;\lx PREFIX
;\alt Prefix
;\fea n\n
;\gl1 NEO6+
;\gl2 NEO6+

\lf vice+
\lx PREFIX
\alt Prefix
\fea n\n
\gl1 NEO7+
\gl2 NEO7+

;\lf exo+
;\lx PREFIX
;\alt Prefix
;\fea n\n
;\gl1 NEO8+
;\gl2 NEO8+

;\lf epi+
;\lx PREFIX
;\alt Prefix
;\fea n\n
;\gl1 NEO9+
;\gl2 NEO9+

;\lf ana+
;\lx PREFIX
;\alt Prefix
;\fea n\n
;\gl1 NEO10+
;\gl2 NEO10+

;\lf for+
;\lx PREFIX
;\alt Prefix
;\gl1 ??+
;\gl2 ??+


;the following prefixes change the category of the stem

;unproductive
;\lf a+
;\lx PREFIX
;\alt Prefix
;\fea aj\n-v
;\gl1 AJR1+
;\gl2 AJR1+

\lf en+ 
\lx PREFIX
\alt Prefix
\fea v\aj-n
\gl1 VR1a+
\gl2 VR1a+

\lf em+ 
\lx PREFIX
\alt Prefix
\fea v\aj-n
\gl1 VR1b+
\gl2 VR1b+

;\lf in+
;\lx PREFIX
;\alt Prefix
;\fea v\n
;\gl1 VR1c+
;\gl2 VR1c+

;\lf im+
;\lx PREFIX
;\alt Prefix
;\fea v\n
;\gl1 VR1d+
;\gl2 VR1d+

;unproductive
;\lf be+
;\lx PREFIX
;\alt Prefix
;\fea v\v ;also v\n, v\aj
;\gl1 VR2+
;\gl2 VR2+


;LEXICON SUFFIX

\lf 0
\lx SUFFIX
\alt Infl
\gl1
\gl2

;NOUN SUFFIXES

;DENOMINAL NOUNS

;e.g. mileage
;gives bad parses: cabbage, garbage, etc.
;\lf +age
;\lx SUFFIX
;\alt Suffix
;\fea n/n
;\gl1 +NR1
;\gl2 +NR1

\lf +dom
\lx SUFFIX
\alt Suffix
\fea n/n
\gl1 +NR2
\gl2 +NR2

;e.g. shrubbery
;\lf +ery
;\lx SUFFIX
;\alt Suffix
;\fea n/n
;\gl1 +NR3
;\gl2 +NR3

;\lf +ry
;\lx SUFFIX
;\alt Suffix
;\fea n/n
;\gl1 +NR3
;\gl2 +NR3

;e.g. spoonful
;\lf +ful
;\lx SUFFIX
;\alt Suffix
;\fea n/n
;\gl1 +NR5
;\gl2 +NR5

;e.g. tubing
;\lf +ing
;\lx SUFFIX
;\alt Suffix
;\fea n/n
;\gl1 +NR7
;\gl2 +NR7

\lf +hood
\lx SUFFIX
\alt Suffix
\fea n/n
\gl1 +NR6
\gl2 +NR6

\lf +ism
\lx SUFFIX
\alt Suffix
\fea n/n
\gl1 +NR8
\gl2 +NR8

\lf +ship
\lx SUFFIX
\alt Suffix
\fea n/n
\gl1 +NR9
\gl2 +NR9

\lf +eer
\lx SUFFIX
\alt Suffix
\fea n/n nr10
\gl1 +NR10
\gl2 +NR10

;not agentive +er, e.g. five-pounder
;\lf +er
;\lx SUFFIX
;\alt Suffix
;\fea n/n
;\gl1 +NR11
;\gl2 +NR11

\lf +ess
\lx SUFFIX
\alt Suffix
\fea n/n nr12
\gl1 +NR12
\gl2 +NR12

\lf +ette
\lx SUFFIX
\alt Suffix
\fea n/n
\gl1 +NR13
\gl2 +NR13

\lf +let
\lx SUFFIX
\alt Suffix
\fea n/n
\gl1 +NR14
\gl2 +NR14

\lf +ling
\lx SUFFIX
\alt Suffix
\fea n/n nr15
\gl1 +NR15
\gl2 +NR15

\lf +ster
\lx SUFFIX
\alt Suffix
\fea n/n
\gl1 +NR16
\gl2 +NR16

\lf +an
\lx SUFFIX
\alt Suffix
\fea n/n
\gl1 +NR29a
\gl2 +NR29a

\lf +ian
\lx SUFFIX
\alt Suffix
\fea n/n
\gl1 +NR29b
\gl2 +NR29b

\lf +arian
\lx SUFFIX
\alt Suffix
\fea n/n
\gl1 +NR29c
\gl2 +NR29c

;\lf +ese
;\lx SUFFIX
;\alt Suffix
;\gl1 +NR28
;\gl2 +NR28

\lf +ist
\lx SUFFIX
\alt Suffix
\fea n/n nr31
\gl1 +NR31
\gl2 +NR31

\lf +ite
\lx SUFFIX
\alt Suffix
\fea n/n
\gl1 +NR32
\gl2 +NR32

;minerals
;\lf +ite
;\lx SUFFIX
;\alt Suffix
;\fea n/n
;\gl1 +NR60
;\gl2 +NR60

;diminutive, e.g. beastie
;\lf +ie
;\lx SUFFIX
;\alt Suffix
;\fea n/n
;\gl1 +NR33
;\gl2 +NR33

;diminutive, e.g. mousey
;\lf +y
;\lx SUFFIX
;\alt Suffix
;\fea n/n
;\gl1 +NR33
;\gl2 +NR33

\lf +iana
\lx SUFFIX
\alt Suffix
\fea n/n
\gl1 +NR36
\gl2 +NR36

\lf +scape
\lx SUFFIX
\alt Suffix
\fea n/n
\gl1 +NR37
\gl2 +NR37

\lf +nik
\lx SUFFIX
\alt Suffix
\fea n/n
\gl1 +NR44
\gl2 +NR44

;unproductive, irregular, e.g. chaplaincy
;\lf +cy
;\lx SUFFIX
;\alt Suffix
;\fea n/n
;\gl1 +NR40
;\gl2 +NR40

\lf +itis
\lx SUFFIX
\alt Suffix
\fea n/n
\gl1 +NR50
\gl2 +NR50

\lf +ectom
\lx SUFFIX
\alt Y_Suffix
\fea n/n
\gl1 +NR51
\gl2 +NR51

;e.g. lemonade
;\lf +ade
;\lx SUFFIX
;\alt Suffix
;\fea n/n
;\gl1 +NR52
;\gl2 +NR52

;e.g. factoid
;also forms adjectives
;\lf +oid
;\lx SUFFIX
;\alt Suffix
;\fea n/n
;\gl1 +NR53
;\gl2 +NR53

\lf +icide
\lx SUFFIX
\alt Suffix
\fea n/n
\gl1 +NR54
\gl2 +NR54

;e.g. suburbia
;\lf +ia
;\lx SUFFIX
;\alt Suffix
;\fea n/n
;\gl1 +NR61
;\gl2 +NR61

\lf +man
\lx SUFFIX
\alt Suffix
\fea n/n
\gl1 +NR55a
\gl2 +NR55a

\lf +men
\lx SUFFIX
\alt Clitic
\fea n/n pl
\gl1 +NR55b
\gl2 +NR55b

\lf +woman
\lx SUFFIX
\alt Suffix
\fea n/n
\gl1 +NR56a
\gl2 +NR56a

\lf +women
\lx SUFFIX
\alt Clitic
\fea n/n pl
\gl1 +NR56b
\gl2 +NR56b

\lf +person
\lx SUFFIX
\alt Suffix
\fea n/n
\gl1 +NR57
\gl2 +NR57

;DEVERBAL NOUNS

\lf +age
\lx SUFFIX
\alt Suffix
\fea v/n
\gl1 +NR1
\gl2 +NR1

;e.g. brewery
;\lf +ery
;\lx SUFFIX
;\alt Suffix
;\fea v/n
;\gl1 +NR3
;\gl2 +NR3

;\lf +ry
;\lx SUFFIX
;\alt Suffix
;\fea v/n
;\gl1 +NR3
;\gl2 +NR3

\lf +ant
\lx SUFFIX
\alt Suffix
\fea v/n
\gl1 +NR17
\gl2 +NR17

;unproductive, e.g. correspondent
;\lf +ent
;\lx SUFFIX
;\alt Suffix
;\fea v/n
;\gl1 +NR17
;\gl2 +NR17

\lf +ee
\lx SUFFIX
\alt Suffix
\fea v/n
\gl1 +NR18
\gl2 +NR18

\lf +er
\lx SUFFIX
\alt Suffix
\fea v/n nr19
\gl1 +NR19
\gl2 +NR19

\lf +or
\lx SUFFIX
\alt Suffix
\fea v/n
\gl1 +NR20
\gl2 +NR20

;female, e.g. aviatrix
;\lf +trix
;\lx SUFFIX
;\alt Suffix
;\fea v/n
;\gl1 +NR59
;\gl2 +NR59

;unproductive, e.g. declarator
;\lf +ator
;\lx SUFFIX
;\alt Suffix
;\fea v/n
;\gl1 +NR20
;\gl2 +NR20

\lf +al
\lx SUFFIX
\alt Suffix
\fea v/n nr22
\gl1 +NR22
\gl2 +NR22

\lf +ation
\lx SUFFIX
\alt Suffix
\fea v/n nr23
\gl1 +NR23a
\gl2 +NR23a

;+ification
\lf +cation
\lx SUFFIX
\alt Suffix
\fea v/n nr23
\gl1 +NR23b
\gl2 +NR23b

\lf +ition
\lx SUFFIX
\alt Suffix
\fea v/n nr23
\gl1 +NR23c
\gl2 +NR23c

\lf +tion
\lx SUFFIX
\alt Suffix
\fea v/n nr23
\gl1 +NR23d
\gl2 +NR23d

\lf +ion
\lx SUFFIX
\alt Suffix
\fea v/n nr23
\gl1 +NR23e
\gl2 +NR23e

;e.g. painting, building, opening
;handled as gerunds
;\lf +ing
;\lx SUFFIX
;\alt Suffix
;\fea v/n
;\gl1 +NR24
;\gl2 +NR24

\lf +ment
\lx SUFFIX
\alt Suffix
\fea v/n
\gl1 +NR25
\gl2 +NR25

\lf +ance
\lx SUFFIX
\alt Suffix
\fea v/n nr26
\gl1 +NR26a
\gl2 +NR26a

\lf +ence
\lx SUFFIX
\alt Suffix
\fea v/aj/n nr26
\gl1 +NR26b
\gl2 +NR26b

\lf +ency
\lx SUFFIX
\alt Suffix
\fea v/aj/n
\gl1 +AJR27a+NR40
\gl2 +AJR27a+NR40

;\lf +ist
;\lx SUFFIX
;\alt Suffix
;\fea v/n nr31
;\gl1 +NR31
;\gl2 +NR31

;unproductive
;\lf +ory
;\lx SUFFIX
;\alt Suffix
;\fea v/n
;\gl1 +NR34
;\gl2 +NR34

;unproductive
;\lf +atory
;\lx SUFFIX
;\alt Suffix
;\fea v/n
;\gl1 +NR34
;\gl2 +NR34

;unproductive
;\lf +y
;\lx SUFFIX
;\alt Suffix
;\fea v/n
;\gl1 +NR35
;\gl2 +NR35

;unproductive
;\lf +ure
;\lx SUFFIX
;\alt Suffix
;\fea v/n
;\gl1 +NR38
;\gl2 +NR38

;unproductive
;\lf +ary
;\lx SUFFIX
;\alt Suffix
;\fea v/n
;\gl1 +NR39
;\gl2 +NR39

;\lf +ate
;\lx SUFFIX
;\alt Suffix
;\fea v/n
;\gl1 +NR46
;\gl2 +NR46


\lf +ability
\lx SUFFIX
\alt Suffix
\fea v/aj/n
\gl1 +AJR25a+NR21
\gl2 +AJR25a+NR21

\lf +ibility
\lx SUFFIX
\alt Suffix
\fea v/aj/n 
\gl1 +AJR25b+NR21
\gl2 +AJR25b+NR21

;DE-ADJECTIVAL NOUNS

\lf +ish
\lx SUFFIX
\alt Suffix
\fea aj/n
\gl1 +AJR10
\gl2 +AJR10

\lf +ism
\lx SUFFIX
\alt Suffix
\fea aj/n
\gl1 +NR8
\gl2 +NR8

\lf +ster
\lx SUFFIX
\alt Suffix
\fea aj/n
\gl1 +NR16
\gl2 +NR16

\lf +ee
\lx SUFFIX
\alt Suffix
\fea aj/n
\gl1 +NR18
\gl2 +NR18

\lf +ity
\lx SUFFIX
\alt Suffix
\fea aj/n
\gl1 +NR21
\gl2 +NR21

;\lf +ty
;\lx SUFFIX
;\alt Suffix
;\fea aj/n
;\gl1 +NR21b
;\gl2 +NR21b

;\lf +ation
;\lx SUFFIX
;\alt Suffix
;\fea aj/n
;\gl1 +NR23a
;\gl2 +NR23a

;\lf +ition
;\lx SUFFIX
;\alt Suffix
;\fea aj/n
;\gl1 +NR23c
;\gl2 +NR23c

;\lf +tion
;\lx SUFFIX
;\alt Suffix
;\fea aj/n
;\gl1 +NR23d
;\gl2 +NR23d

;\lf +ion
;\lx SUFFIX
;\alt Suffix
;\fea aj/n
;\gl1 +NR23e
;\gl2 +NR23e

\lf +ness
\lx SUFFIX
\alt Suffix
\fea aj/n
\gl1 +NR27
\gl2 +NR27

\lf +ese
\lx SUFFIX
\alt Suffix
\fea aj/n
\gl1 +NR28
\gl2 +NR28

;\lf +an
;\lx SUFFIX
;\alt Suffix
;\fea aj/n
;\gl1 +NR29a
;\gl2 +NR29a

;\lf +ian
;\lx SUFFIX
;\alt Suffix
;\fea aj/n
;\gl1 +NR29b
;\gl2 +NR29b

\lf +ist
\lx SUFFIX
\alt Suffix
\fea aj/n nr31
\gl1 +NR31
\gl2 +NR31

;unproductive
;\lf +ite
;\lx SUFFIX
;\alt Suffix
;\fea aj/n
;\gl1 +NR32
;\gl2 +NR32

;diminutive
;\lf +ie
;\lx SUFFIX
;\alt Suffix
;\fea aj/n
;\gl1 +NR33
;\gl2 +NR33

;diminutive
;\lf +y
;\lx SUFFIX
;\alt Suffix
;\fea aj/n
;\gl1 +NR33
;\gl2 +NR33

;unproductive, irregular, e.g. normalcy
;\lf +cy
;\lx SUFFIX
;\alt Suffix
;\fea aj/n
;\gl1 +NR40
;\gl2 +NR40

;\lf +ce
;\lx SUFFIX
;\alt Suffix
;\fea aj/n
;\gl1 +NR41
;\gl2 +NR41

;unproductive
;\lf +th
;\lx SUFFIX
;\alt Suffix
;\fea aj/n
;\gl1 +NR42
;\gl2 +NR42

;\lf +ery
;\lx SUFFIX
;\alt Suffix
;\fea aj/n
;\gl1 +NR3
;\gl2 +NR3

;\lf +ry
;\lx SUFFIX
;\alt Suffix
;\fea aj/n
;\gl1 +NR3
;\gl2 +NR3

;unproductive
;\lf +itude
;\lx SUFFIX
;\alt Suffix
;\fea aj/n
;\gl1 +NR62
;\gl2 +NR62


;ADJECTIVE/ADVERB SUFFIXES

;DENOMINAL ADJECTIVES/ADVERBS

\lf +an
\lx SUFFIX
\alt Suffix
\fea n/aj
\gl1 +AJR4a
\gl2 +AJR4a

\lf +ian
\lx SUFFIX
\alt Suffix
\fea n/aj
\gl1 +AJR4b
\gl2 +AJR4b

;\lf +ean
;\lx SUFFIX
;\alt Suffix
;\fea n/aj
;\gl1 +AJR4c
;\gl2 +AJR4c

\lf +arian
\lx SUFFIX
\alt Suffix
\fea n/aj
\gl1 +AJR4d
\gl2 +AJR4d

;not a participle, e.g. bearded
\lf +ed
\lx SUFFIX
\alt Suffix
\fea n/aj ajr8
\gl1 +AJR8
\gl2 +AJR8

;unproductive, e.g. waxen
;\lf +en
;\lx SUFFIX
;\alt Suffix
;\fea n/aj
;\gl1 +AJR18
;\gl2 +AJR18

\lf +ful
\lx SUFFIX
\alt Suffix
\fea n/aj
\gl1 +AJR9
\gl2 +AJR9

\lf +ish
\lx SUFFIX
\alt Suffix
\fea n/aj
\gl1 +AJR10
\gl2 +AJR10

\lf +less
\lx SUFFIX
\alt Suffix
\fea n/aj
\gl1 +AJR11
\gl2 +AJR11

\lf +like
\lx SUFFIX
\alt Suffix
\fea n/aj
\gl1 +AJR12
\gl2 +AJR12

;manly, weekly
;doesn't handle "weekly" as an adverb
\lf +ly
\lx SUFFIX
\alt Suffix
\fea n/aj ajr13
\gl1 +AJR13
\gl2 +AJR13

;muddy
\lf +y
\lx SUFFIX
\alt Suffix
\fea n/aj ajr14
\gl1 +AJR14
\gl2 +AJR14

;unproductive
;\lf +some
;\lx SUFFIX
;\alt Suffix
;\fea n/aj
;\gl1 +AJR15
;\gl2 +AJR15

\lf +worthy
\lx SUFFIX
\alt Suffix
\fea n/aj
\gl1 +AJR16
\gl2 +AJR16

\lf +ward
\lx SUFFIX
\alt Suffix
\fea n/av
\gl1 +AVR2a
\gl2 +AVR2a

\lf +ward
\lx SUFFIX
\alt Suffix
\fea n/aj
\gl1 +AVR2a
\gl2 +AVR2a

\lf +wards
\lx SUFFIX
\alt Suffix
\fea n/av
\gl1 +AVR2b
\gl2 +AVR2b

;\lf +way
;\lx SUFFIX
;\alt Suffix
;\fea n/av
;\gl1 +AVR3
;\gl2 +AVR3

;\lf +ways
;\lx SUFFIX
;\alt Suffix
;\fea n/av
;\gl1 +AVR3
;\gl2 +AVR3

\lf +wise
\lx SUFFIX
\alt Suffix
\fea n/av
\gl1 +AVR4
\gl2 +AVR4

\lf +wise
\lx SUFFIX
\alt Suffix
\fea n/aj
\gl1 +AVR4
\gl2 +AVR4

;or compound
\lf +wide
\lx SUFFIX
\alt Suffix
\fea n/av
\gl1 +AVR5
\gl2 +AVR5

\lf +wide
\lx SUFFIX
\alt Suffix
\fea n/aj
\gl1 +AVR5
\gl2 +AVR5

;or compound
\lf +fashion
\lx SUFFIX
\alt Suffix
\fea n/av
\gl1 +AVR6
\gl2 +AVR6

;or compound
\lf +style
\lx SUFFIX
\alt Suffix
\fea n/av
\gl1 +AVR7
\gl2 +AVR7

;foreign
\lf +al
\lx SUFFIX
\alt Suffix
\fea n/aj ajr17
\gl1 +AJR17a
\gl2 +AJR17a

\lf +ial
\lx SUFFIX
\alt Suffix
\fea n/aj ajr17
\gl1 +AJR17b
\gl2 +AJR17b

\lf +ual
\lx SUFFIX
\alt Suffix
\fea n/aj ajr17
\gl1 +AJR17c
\gl2 +AJR17c

;e.g. attitudinal
;\lf +inal
;\lx SUFFIX
;\alt Suffix
;\fea n/aj ajr17
;\gl1 +AJR17d
;\gl2 +AJR17d

\lf +esque
\lx SUFFIX
\alt Suffix
\fea n/aj
\gl1 +AJR19
\gl2 +AJR19

\lf +ic
\lx SUFFIX
\alt IC_Suffix
\fea n/aj ajr20
\gl1 +AJR20a
\gl2 +AJR20a

\lf +etic
\lx SUFFIX
\alt IC_Suffix
\fea n/aj ajr20
\gl1 +AJR20b
\gl2 +AJR20b

;\lf +atic
;\lx SUFFIX
;\alt IC_Suffix
;\fea n/aj ajr20
;\gl1 +AJR20c
;\gl2 +AJR20c

\lf +ous
\lx SUFFIX
\alt Suffix
\fea n/aj
\gl1 +AJR21a
\gl2 +AJR21a

;\lf +ious
;\lx SUFFIX
;\alt Suffix
;\fea n/aj
;\gl1 +AJR21b
;\gl2 +AJR21b

;\lf +eous
;\lx SUFFIX
;\alt Suffix
;\fea n/aj
;\gl1 +AJR21c
;\gl2 +AJR21c

;\lf +inous
;\lx SUFFIX
;\alt Suffix
;\fea n/aj
;\gl1 +AJR21d
;\gl2 +AJR21d

;\lf +uous
;\lx SUFFIX
;\alt Suffix
;\fea n/aj
;\gl1 +AJR21e
;\gl2 +AJR21e

;\lf +ary
;\lx SUFFIX
;\alt Suffix
;\fea n/aj
;\gl1 +AJR22
;\gl2 +AJR22

;unproductive
;\lf +ory
;\lx SUFFIX
;\alt Suffix
;\fea n/aj
;\gl1 +AJR23
;\gl2 +AJR23

;unproductive, e.g. passionate
;\lf +ate
;\lx SUFFIX
;\alt Suffix
;\fea n/aj
;\gl1 +AJR24
;\gl2 +AJR24

;unproductive, e.g. modular
;\lf +ar
;\lx SUFFIX
;\alt Suffix
;\fea n/aj
;\gl1 +AJR31
;\gl2 +AJR31

;unproductive, e.g. glandular
;\lf +ular
;\lx SUFFIX
;\alt Suffix
;\fea n/aj
;\gl1 +AJR31
;\gl2 +AJR31

;unproductive, e.g. serpentine, riverine
;\lf +ine
;\lx SUFFIX
;\alt Suffix
;\fea n/aj
;\gl1 +AJR38
;\gl2 +AJR38

;unproductive, e.g. infantile
;\lf +ile
;\lx SUFFIX
;\alt Suffix
;\fea n/aj
;\gl1 +AJR39
;\gl2 +AJR39


;DEVERBAL ADJECTIVES

;unproductive
;\lf +ate
;\lx SUFFIX
;\alt Suffix
;\fea v/aj
;\gl1 +AJR24
;\gl2 +AJR24

\lf +able
\lx SUFFIX
\alt Suffix
\fea v/aj
\gl1 +AJR25a
\gl2 +AJR25a

\lf +ible
\lx SUFFIX
\alt Suffix
\fea v/aj
\gl1 +AJR25b
\gl2 +AJR25b

;+ab+ly
;\lf +ab
;\lx SUFFIX
;\alt Suffix
;\fea v/aj
;\gl1 +AJR25
;\gl2 +AJR25

;+ib+ly
;\lf +ib
;\lx SUFFIX
;\alt Suffix
;\fea v/aj
;\gl1 +AJR25
;\gl2 +AJR25

;+abil+ity
;\lf +abil
;\lx SUFFIX
;\alt Suffix
;\fea v/aj
;\gl1 +AJR25
;\gl2 +AJR25

;+ibil+ity
;\lf +ibil
;\lx SUFFIX
;\alt Suffix
;\fea v/aj
;\gl1 +AJR25
;\gl2 +AJR25

\lf +ably
\lx SUFFIX
\alt Suffix
\fea v/aj/av 
\gl1 +AJR25+AVR1
\gl2 +AJR25+AVR1

\lf +ibly
\lx SUFFIX
\alt Suffix
\fea v/aj/av
\gl1 +AJR25+AVR1
\gl2 +AJR25+AVR1

\lf +ive
\lx SUFFIX
\alt Suffix
\fea v/aj
\gl1 +AJR26
\gl2 +AJR26

;\lf +ative
;\lx SUFFIX
;\alt Suffix
;\fea v/aj
;\gl1 +AJR26
;\gl2 +AJR26

;\lf +itive
;\lx SUFFIX
;\alt Suffix
;\fea v/aj
;\gl1 +AJR26
;\gl2 +AJR26

;unproductive or irregular, e.g. buoyant, deviant
;\lf +ant
;\lx SUFFIX
;\alt Suffix
;\fea v/aj
;\gl1 +AJR27b
;\gl2 +AJR27b

\lf +ent
\lx SUFFIX
\alt Suffix
\fea v/aj
\gl1 +AJR27a
\gl2 +AJR27a

\lf +ory
\lx SUFFIX
\alt Suffix
\fea v/aj
\gl1 +AJR28
\gl2 +AJR28

;\lf +atory
;\lx SUFFIX
;\alt Suffix
;\fea v/aj
;\gl1 +AJR28
;\gl2 +AJR28

;\lf +al
;\lx SUFFIX
;\alt Suffix
;\fea v/aj ajr17
;\gl1 +AJR17a
;\gl2 +AJR17a

;\lf +ous
;\lx SUFFIX
;\alt Suffix
;\fea v/aj
;\gl1 +AJR21a
;\gl2 +AJR21a

;\lf +ious
;\lx SUFFIX
;\alt Suffix
;\fea v/aj
;\gl1 +AJR21b
;\gl2 +AJR21b

;unproductive
;\lf +ile
;\lx SUFFIX
;\alt Suffix
;\fea v/aj
;\gl1 +AJR39
;\gl2 +AJR39

;commented out to avoid multiple parses
;\lf +y
;\lx SUFFIX
;\alt Suffix
;\fea v/aj ajr14
;\gl1 +AJR14
;\gl2 +AJR14

;unproductive, e.g. sunken, shrunken
;\lf +en
;\lx SUFFIX
;\alt Suffix
;\fea v/aj
;\gl1 +AJR30
;\gl2 +AJR30

;unproductive
;\lf +some
;\lx SUFFIX
;\alt Suffix
;\fea v/aj
;\gl1 +AJR15
;\gl2 +AJR15


;DE-ADJECTIVAL ADJECTIVES/ADVERBS

\lf +ly
\lx SUFFIX
\alt Suffix
\fea aj/av
\gl1 +AVR1
\gl2 +AVR1

\lf +most
\lx SUFFIX
\alt Suffix
\fea aj/aj
\gl1 +AJR33
\gl2 +AJR33

;VERB SUFFIXES

;DENOMINAL VERBS

;\lf +ate
;\lx SUFFIX
;\alt Suffix
;\fea n/v
;\gl1 +VR3
;\gl2 +VR3

\lf +ify
\lx SUFFIX
\alt Suffix
\fea n/v
\gl1 +VR5
\gl2 +VR5

;\lf +fy
;\lx SUFFIX
;\alt Suffix
;\fea n/v
;\gl1 +VR5b
;\gl2 +VR5b

;\lf +ification
;\lx SUFFIX
;\alt Suffix
;\fea n/n
;\gl1 +VR5+NR23
;\gl2 +VR5+NR23

\lf +ize
\lx SUFFIX
\alt Suffix
\fea n/v
\gl1 +VR6a
\gl2 +VR6a

;British
\lf +ise
\lx SUFFIX
\alt Suffix
\fea n/v
\gl1 +VR6b
\gl2 +VR6b

;DE-ADJECTIVAL VERBS

;\lf +ate
;\lx SUFFIX
;\alt Suffix
;\fea aj/v
;\gl1 +VR3
;\gl2 +VR3

\lf +en
\lx SUFFIX
\alt Suffix
\fea aj/v
\gl1 +VR4
\gl2 +VR4

;also +fy
\lf +ify
\lx SUFFIX
\alt Suffix
\fea aj/v
\gl1 +VR5
\gl2 +VR5

;\lf +ification
;\lx SUFFIX
;\alt Suffix
;\fea aj/n
;\gl1 +VR5+NR23
;\gl2 +VR5+NR23

\lf +ize
\lx SUFFIX
\alt Suffix
\fea aj/v
\gl1 +VR6a
\gl2 +VR6a

;British
\lf +ise
\lx SUFFIX
\alt Suffix
\fea aj/v
\gl1 +VR6b
\gl2 +VR6b


;LEXICON PN_SUFF
;suffixes for proper nouns

\lf 0
\lx PN_SUFF
\alt Infl
\gl1
\gl2

\lf +er
\lx PN_SUFF
\alt Clitic
\fea n/n
\gl1 +NR11
\gl2 +NR11

\lf +ese
\lx PN_SUFF
\alt Suffix
\fea n/n-aj
\gl1 +AJR3
\gl2 +AJR3

\lf +i
\lx PN_SUFF
\alt Infl
\fea n/n-aj
\gl1 +AJR40
\gl2 +AJR40

\lf +an
\lx PN_SUFF
\alt Suffix
\fea n/n-aj
\gl1 +AJR4a
\gl2 +AJR4a

\lf +ian
\lx PN_SUFF
\alt Suffix
\fea n/n-aj
\gl1 +AJR4b
\gl2 +AJR4b

\lf +arian
\lx PN_SUFF
\alt Suffix
\fea n/n-aj
\gl1 +AJR4d
\gl2 +AJR4d

\lf +al
\lx PN_SUFF
\alt Suffix
\fea n/aj ajr17
\gl1 +AJR17a
\gl2 +AJR17a

\lf +ial
\lx PN_SUFF
\alt Suffix
\fea n/aj ajr17
\gl1 +AJR17b
\gl2 +AJR17b

\lf +ual
\lx PN_SUFF
\alt Suffix
\fea n/aj ajr17
\gl1 +AJR17c
\gl2 +AJR17c

\lf +ic
\lx PN_SUFF
\alt IC_Suffix
\fea n/n-aj ajr20
\gl1 +AJR20a
\gl2 +AJR20a

\lf +ish
\lx PN_SUFF
\alt Suffix
\fea n/n-aj
\gl1 +AJR10
\gl2 +AJR10

\lf +ism
\lx PN_SUFF
\alt Suffix
\fea n/n
\gl1 +NR8
\gl2 +NR8

\lf +ist
\lx PN_SUFF
\alt Suffix
\fea n/n-aj nr31
\gl1 +NR31
\gl2 +NR31

\lf +ite
\lx PN_SUFF
\alt Suffix
\fea n/n-aj
\gl1 +NR32
\gl2 +NR32

\lf +iana
\lx PN_SUFF
\alt Suffix
\fea n/n
\gl1 +NR36
\gl2 +NR36

\lf +man
\lx PN_SUFF
\alt Suffix
\fea n/n
\gl1 +NR55a
\gl2 +NR55a

\lf +men
\lx PN_SUFF
\alt Clitic
\fea n/n pl
\gl1 +NR55b
\gl2 +NR55b

\lf +woman
\lx PN_SUFF
\alt Suffix
\fea n/n
\gl1 +NR56a
\gl2 +NR56a

\lf +women
\lx PN_SUFF
\alt Clitic
\fea n/n pl
\gl1 +NR56b
\gl2 +NR56b

;LEXICON Y_SUFF
;for words such as biolog-, astronom-, etc.

\lf +y
\lx Y_SUFF
\alt Suffix
\fea n/n
\gl1 +NR48
\gl2 +NR48

\lf +ous
\lx Y_SUFF
\alt Suffix
\fea n/aj
\gl1 +AJR21a
\gl2 +AJR21a

\lf +ic
\lx Y_SUFF
\alt IC_Suffix
\fea n/aj ajr20
\gl1 +AJR20a
\gl2 +AJR20a

\lf +er
\lx Y_SUFF
\alt Suffix
\fea n/n
\gl1 +NR11
\gl2 +NR11

\lf +ess
\lx Y_SUFF
\alt Suffix
\fea n/n nr12
\gl1 +NR12
\gl2 +NR12

\lf +ist
\lx Y_SUFF
\alt Suffix
\fea n/n nr31
\gl1 +NR31
\gl2 +NR31

\lf +ize
\lx Y_SUFF
\alt Suffix
\fea n/v
\gl1 +VR6a
\gl2 +VR6a

;British
\lf +ise
\lx Y_SUFF
\alt Suffix
\fea n/v
\gl1 +VR6b
\gl2 +VR6b

\lf +ify
\lx Y_SUFF
\alt Suffix
\fea n/v
\gl1 +VR5
\gl2 +VR5

\lf +an
\lx Y_SUFF
\alt Suffix
\fea n/aj
\gl1 +AJR4a
\gl2 +AJR4a

\lf +ian
\lx Y_SUFF
\alt Suffix
\fea n/aj
\gl1 +AJR4b
\gl2 +AJR4b

\lf +ism
\lx Y_SUFF
\alt Suffix
\fea n/n
\gl1 +NR8
\gl2 +NR8


;LEXICON IC_SUFF
;for adjectives ending in -ic, e.g. acoustic, aerobic, linguistic

\lf 0
\lx IC_SUFF
\alt Clitic
\gl1
\gl2

\lf +al
\lx IC_SUFF
\alt Suffix
\fea aj/aj
\gl1 +AJR17a
\gl2 +AJR17a

\lf +ity
\lx IC_SUFF
\alt Suffix
\fea aj/n
\gl1 +NR21
\gl2 +NR21

\lf +ism
\lx IC_SUFF
\alt Suffix
\fea aj/n
\gl1 +NR8
\gl2 +NR8

\lf +ist
\lx IC_SUFF
\alt Suffix
\fea aj/n nr31
\gl1 +NR31
\gl2 +NR31

\lf +ian
\lx IC_SUFF
\alt Suffix
\fea aj/n
\gl1 +NR29b
\gl2 +NR29b

\lf +ize
\lx IC_SUFF
\alt Suffix
\fea aj/v
\gl1 +VR6a
\gl2 +VR6a

British
\lf +ise
\lx IC_SUFF
\alt Suffix
\fea aj/v
\gl1 +VR6b
\gl2 +VR6b

\lf +s
\lx IC_SUFF
\alt Clitic
\fea n-aj/n reg
\gl1 +PL
\gl2 +PL


;LEXICON ORDR
;ordinalizers

\lf 0
\lx ORDR
\alt Infl
\gl1
\gl2

\lf +st
\lx ORDR
\alt Suffix
\fea n/n-aj
\gl1 +ORDR1
\gl2 +ORDR1

\lf +nd
\lx ORDR
\alt Suffix
\fea n/n-aj
\gl1 +ORDR2
\gl2 +ORDR2

\lf +d
\lx ORDR
\alt Suffix
\fea n/n-aj
\gl1 +ORDR2/3
\gl2 +ORDR2/3

\lf +rd
\lx ORDR
\alt Suffix
\fea n/n-aj
\gl1 +ORDR3
\gl2 +ORDR3

\lf +th
\lx ORDR
\alt Suffix
\fea n/n-aj
\gl1 +ORDR4a
\gl2 +ORDR4a

\lf +eth
\lx ORDR
\alt Suffix
\fea n/n-aj
\gl1 +ORDR4b
\gl2 +ORDR4b

\lf +fold
\lx ORDR
\alt Clitic
\fea n/aj
\gl1 +AJR32
\gl2 +AJR32

\lf +score
\lx ORDR
\alt Clitic
\fea n/aj
\gl1 +AJR41
\gl2 +AJR41

\lf +some
\lx ORDR
\alt Clitic
\fea n/n
\gl1 +NR58
\gl2 +NR58


;LEXICON INFL
;inflectional suffixes

\lf 0
\lx INFL
\alt Clitic
\gl1
\gl2

;noun plural
\lf +s
\lx INFL
\alt Clitic
\fea n/n pl reg
\gl1 +PL
\gl2 +PL

;adjective comparative
\lf +er
\lx INFL
\alt Clitic
\fea aj/aj comp reg
\gl1 +CMP
\gl2 +CMP

;adjective superlative
\lf +est
\lx INFL
\alt Clitic
\fea aj/aj super reg
\gl1 +SPR
\gl2 +SPR

;verb 3rd singular
\lf +s
\lx INFL
\alt End
\fea v/v s
\gl1 +3SG
\gl2 +3SG

;verb past tense
\lf +ed
\lx INFL
\alt End
\fea v/v ed reg
\gl1 +ED
\gl2 +ED

;verb past participle
\lf +ed
\lx INFL
\alt PT_Suffix
\fea v/v en reg
\gl1 +EN
\gl2 +EN

;verb past participle
;\lf +en
;\lx INFL
;\alt PT_Suffix
;\fea v/v en
;\gl1 +EN
;\gl2 +EN

\lf +ing
\lx INFL
\alt PT_Suffix
\fea v/v ing
\gl1 +ING
\gl2 +ING

;substandard for +ing
\lf +in'
\lx INFL
\alt PT_Suffix
\fea v/v ing
\gl1 +ING
\gl2 +IN'

;archaic
;\lf +edst
;\lx INFL
;\alt End
;\fea v/v en 2sg
;\gl1 +EN+2SG
;\gl2 +EN+2SG

;archaic
;\lf +est
;\lx INFL
;\alt End
;\fea v/v 2sg
;\gl1 +2SG
;\gl2 +2SG

;archaic
;\lf +eth
;\lx INFL
;\alt End
;\fea v/v s
;\gl1 +3SG
;\gl2 +3SG

;LEXICON PT_SUFF
;participle suffixes

\lf 0
\lx PT_SUFF
\alt Clitic
\gl1
\gl2

\lf +ly
\lx PT_SUFF
\alt Suffix
\fea aj/av
\gl1 +AVR1
\gl2 +AVR1

\lf +ness
\lx PT_SUFF
\alt Suffix
\fea aj/n
\gl1 +NR27
\gl2 +NR27

\lf +s
\lx PT_SUFF
\alt Clitic
\fea n/n pl reg
\gl1 +PL
\gl2 +PL

;LEXICON GEN

\lf +'s
\lx GEN
\alt End
\gl1 +GEN
\gl2 +GEN

;\lf +'
;\lx GEN
;\alt End
;\gl1 +GEN2
;\gl2 +GEN2

;LEXICON CNTR
;contractions/clitics

\lf +'s
\lx CNTR
\alt End
\fea s
\gl1 +have
\gl2 +have

\lf +'s
\lx CNTR
\alt End
\fea s
\gl1 +be
\gl2 +be

\lf +'m
\lx CNTR
\alt End
\fea -3sg
\gl1 +be
\gl2 +be

\lf +'re
\lx CNTR
\alt End
\fea -3sg
\gl1 +be
\gl2 +be

\lf +'d
\lx CNTR
\alt End
\fea ed
\gl1 +have
\gl2 +have

\lf +'d
\lx CNTR
\alt End
\fea modal
\gl1 +would
\gl2 +would

\lf +'d've 
\lx CNTR
\alt End
\fea modal -3sg
\gl1 +would+have
\gl2 +would+have

\lf +'ll
\lx CNTR
\alt End
\fea modal ;will
\gl1 +will
\gl2 +will

\lf +'ll've
\lx CNTR
\alt End
\fea modal -3sg
\gl1 +will+have
\gl2 +will+have

\lf +'ve
\lx CNTR
\alt End
\fea -3sg
\gl1 +have
\gl2 +have


;LEXICON End
;to disable compound parsing, comment out the next entry
;to enable compound parsing, uncomment the next entry

\lf -
\lx End
\alt Compound
\fea compound
\gl1 -
\gl2

\lf 0
\lx End
\alt #
\gl1
\gl2

;END OF FILE
