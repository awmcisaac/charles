;verb.lex
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
;LEXICON AUX
;  auxiliaries
;    BE, HAVE, DO
;    modal auxiliaries
;  archaic forms
;LEXICON V
;  DO
;  irregular verbs
;  regular verbs

;LEXICON AUX
;auxiliaries (do not take prefixes)
;also full verbs
;BE, HAVE, DO

\lf be
\lx AUX-V
\alt End
\gl1
\gl2

\lf `being
\lx AUX-V
\alt PT_Suffix
\fea ing
\gl1 be
\gl2

\lf been
\lx AUX-V
\alt End
\fea en irreg
\gl1 be
\gl2

\lf am
\lx AUX-V
\alt End
\fea -3sg
\gl1 be
\gl2

\lf 'm
\lx AUX-V
\alt End
\fea -3sg
\gl1 be
\gl2

\lf are
\lx AUX-V
\alt End
\fea -3sg
\gl1 be
\gl2

\lf 're
\lx AUX-V
\alt End
\fea -3sg
\gl1 be
\gl2

\lf aren't
\lx AUX-V
\alt End
\fea neg -3sg
\gl1 be
\gl2

\lf is
\lx AUX-V
\alt End
\fea s
\gl1 be
\gl2

\lf 's
\lx AUX-V
\alt End
\fea s
\gl1 be
\gl2

\lf isn't
\lx AUX-V
\alt End
\fea s neg
\gl1 be
\gl2

\lf ain't
\lx AUX-V
\alt End
\fea neg
\gl1 ain't
\gl2

\lf aint
\lx AUX-V
\alt End
\fea neg
\gl1 ain't
\gl2

\lf was
\lx AUX-V
\alt End
\fea ed irreg
\gl1 be
\gl2

\lf wasn't
\lx AUX-V
\alt End
\fea ed irreg neg
\gl1 be
\gl2

\lf were
\lx AUX-V
\alt End
\fea ed -3sg irreg
\gl1 be
\gl2

\lf weren't
\lx AUX-V
\alt End
\fea ed -3sg irreg neg
\gl1 be
\gl2

\lf have
\lx AUX-V
\alt End
\fea -3sg
\gl1
\gl2

\lf 've
\lx AUX-V
\alt End
\fea -3sg
\gl1 have
\gl2

\lf haven't
\lx AUX-V
\alt End
\fea neg -3sg
\gl1 have
\gl2

\lf `having
\lx AUX-V
\alt End
\fea ing
\gl1 have
\gl2

\lf had
\lx AUX-V
\alt End
\fea ed irreg
\gl1 have
\gl2

\lf 'd
\lx AUX-V
\alt End
\fea ed irreg
\gl1 have
\gl2

\lf hadn't
\lx AUX-V
\alt End
\fea ed irreg neg
\gl1 have
\gl2

\lf has
\lx AUX-V
\alt End
\fea s
\gl1 have
\gl2

\lf 's
\lx AUX-V
\alt End
\fea s
\gl1 have
\gl2

\lf hasn't
\lx AUX-V
\alt End
\fea s neg
\gl1 have
\gl2

\lf do
\lx AUX
\alt End
\gl1
\gl2

\lf does
\lx AUX
\alt End
\fea s
\gl1 do
\gl2

\lf `doing
\lx AUX
\alt End
\fea ing
\gl1 do
\gl2

\lf did
\lx AUX
\alt End
\fea ed irreg
\gl1 do
\gl2

\lf done
\lx AUX
\alt End
\fea en irreg
\gl1 do
\gl2

\lf didn't
\lx AUX
\alt End
\fea ed irreg neg
\gl1 do
\gl2

\lf doesn't
\lx AUX
\alt End
\fea neg
\gl1 do
\gl2

\lf don't
\lx AUX
\alt End
\fea neg
\gl1 do
\gl2


;modal auxiliaries

\lf can
\lx AUX
\alt End
\fea modal
\gl1
\gl2

\lf can`not
\lx AUX
\alt End
\fea modal neg
\gl1 can
\gl2

\lf can't
\lx AUX
\alt Contraction
\fea modal neg
\gl1 can
\gl2

\lf could
\lx AUX
\alt End
\fea modal
\gl1
\gl2

\lf `couldn't
\lx AUX
\alt Contraction
\fea modal neg
\gl1 could
\gl2

\lf may
\lx AUX
\alt End
\fea modal
\gl1
\gl2

\lf mayn't
\lx AUX
\alt Contraction
\fea modal neg
\gl1 may
\gl2

\lf might
\lx AUX
\alt End
\fea modal
\gl1
\gl2

\lf mightn't
\lx AUX
\alt Contraction
\fea modal neg
\gl1 might
\gl2

\lf ought
\lx AUX
\alt End
\fea modal
\gl1
\gl2

\lf oughtn't
\lx AUX
\alt Contraction
\fea modal neg
\gl1 ought
\gl2

\lf shall
\lx AUX
\alt End
\fea modal
\gl1
\gl2

\lf shan't
\lx AUX
\alt Contraction
\fea modal neg
\gl1 shall
\gl2

\lf should
\lx AUX
\alt End
\fea modal
\gl1
\gl2

\lf shouldn't
\lx AUX
\alt Contraction
\fea modal neg
\gl1 should
\gl2

\lf will
\lx AUX
\alt End
\fea modal
\gl1
\gl2

\lf 'll
\lx AUX
\alt End
\fea modal
\gl1 will
\gl2

\lf won't
\lx AUX
\alt Contraction
\fea modal neg
\gl1 will
\gl2

\lf would
\lx AUX
\alt End
\fea modal
\gl1
\gl2

\lf 'd
\lx AUX
\alt End
\fea modal
\gl1 would
\gl2

\lf wouldn't
\lx AUX
\alt Contraction
\fea neg
\gl1 would
\gl2

\lf must
\lx AUX
\alt End
\fea modal
\gl1
\gl2

\lf mustn't
\lx AUX
\alt Contraction
\fea neg
\gl1 must
\gl2

\lf needn't
\lx AUX
\alt End
\fea neg
\gl1 need
\gl2

\lf used
\lx AUX
\alt End
\gl1
\gl2

\lf usedn't
\lx AUX
\alt Contraction
\fea neg
\gl1 used
\gl2


;archaic forms

\lf canst
\lx AUX
\alt End
\gl1 can
\gl2

\lf couldest
\lx AUX
\alt End
\gl1 could
\gl2

\lf didst
\lx AUX
\alt End
\fea ed irreg
\gl1 do
\gl2

\lf doest
\lx AUX
\alt End
\gl1 do
\gl2

\lf dost
\lx AUX
\alt End
\gl1 do
\gl2

\lf doeth
\lx AUX
\alt End
\fea s
\gl1 do
\gl2

\lf doth
\lx AUX
\alt End
\fea s
\gl1 do
\gl2

\lf hadst
\lx AUX
\alt End
\fea ed irreg
\gl1 have
\gl2

\lf hast
\lx AUX
\alt End
\gl1 have
\gl2

\lf hath
\lx AUX
\alt End
\fea s
\gl1 have
\gl2

\lf mayest
\lx AUX
\alt End
\gl1 may
\gl2

\lf mightest
\lx AUX
\alt End
\gl1 might
\gl2

\lf oughtest
\lx AUX
\alt End
\gl1 ought
\gl2

\lf shalt
\lx AUX
\alt End
\gl1 shall
\gl2

\lf shouldest
\lx AUX
\alt End
\gl1 should
\gl2

\lf wast
\lx AUX
\alt End
\fea ed irreg
\gl1 be
\gl2

\lf wert
\lx AUX
\alt End
\fea ed irreg
\gl1 be
\gl2

\lf wilt
\lx AUX
\alt End
\gl1 will
\gl2

\lf wouldst
\lx AUX
\alt End
\gl1 would
\gl2

\lf wouldest
\lx AUX
\alt End
\gl1 would
\gl2

\lf would'st
\lx AUX
\alt End
\gl1 would
\gl2


;irregular verbs

\lf a`bide
\lx V
\alt Suffix
\gl1
\gl2

\lf a`bode
\lx V
\alt End
\fea ed irreg
\gl1 a`bide
\gl2

\lf a`bode
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 a`bide
\gl2

\lf a`rise
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf a`rose
\lx V
\alt End
\fea ed irreg
\gl1 a`rise
\gl2

\lf a`risen
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 a`rise
\gl2

\lf a`wake
\lx V
\alt Suffix
\gl1
\gl2

\lf a`woke
\lx V
\alt End
\fea ed irreg
\gl1 a`wake
\gl2

\lf a`woken
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 a`wake
\gl2

\lf `babysit
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `babysat
\lx V
\alt End
\fea ed irreg
\gl1 `babysit
\gl2

\lf `babysat
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `babysit
\gl2

\lf `bear
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `bore
\lx V
\alt End
\fea ed irreg
\gl1 `bear
\gl2

\lf `borne
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `bear
\gl2

\lf `beat
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `beat
\lx V
\alt End
\fea ed irreg
\gl1 `beat
\gl2

\lf `beat
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `beat
\gl2

\lf `beaten
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `beat
\gl2

\lf be`come
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf be`came
\lx V
\alt End
\fea ed irreg
\gl1 be`come
\gl2

\lf be`come
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 be`come
\gl2

\lf be`fall
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf be`fell
\lx V
\alt End
\fea ed irreg
\gl1 `fall
\gl2

\lf be`fallen
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `fall
\gl2

\lf be`get
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf be`got
\lx V
\alt End
\fea ed irreg
\gl1 be`get
\gl2

\lf be`gat
\lx V
\alt End
\fea ed irreg
\gl1 be`get
\gl2

\lf be`gotten
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 be`get
\gl2

\lf be`gin
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf be`gan
\lx V
\alt End
\fea ed irreg
\gl1 be`gin
\gl2

\lf be`gun
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 be`gin
\gl2

\lf be`gird
\lx V
\alt Suffix
\gl1
\gl2

;does this ever occur in ed irreg tense?
\lf be`girt
\lx V
\alt End
\fea ed irreg
\gl1 be`gird
\gl2

\lf be`girt
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 be`gird
\gl2

\lf be`hold
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf be`held
\lx V
\alt End
\fea ed irreg
\gl1 be`hold
\gl2

\lf be`held
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 be`hold
\gl2

\lf `bend
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `bent
\lx V
\alt End
\fea ed irreg rev
\gl1 `bend
\gl2

\lf `bent
\lx V
\alt PT_Suffix
\fea en irreg rev
\gl1 `bend
\gl2

\lf be`reave
\lx V
\alt Suffix
\gl1
\gl2

\lf be`reft
\lx V
\alt End
\fea ed irreg
\gl1 be`reave
\gl2

\lf be`reft
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 be`reave
\gl2

\lf be`seech
\lx V
\alt Suffix
\gl1
\gl2

\lf be`sought
\lx V
\alt End
\fea ed irreg
\gl1 be`seech
\gl2

\lf be`sought
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 be`seech
\gl2

\lf be`set
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf be`set
\lx V
\alt End
\fea ed irreg
\gl1 be`set
\gl2

\lf be`set
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 be`set
\gl2

\lf be`speak
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf be`spoke
\lx V
\alt End
\fea ed irreg
\gl1 `stride
\gl2

\lf be`spoken
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `stride
\gl2

\lf be`stride
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf be`strode
\lx V
\alt End
\fea ed irreg
\gl1 `stride
\gl2

\lf be`strode
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `stride
\gl2

\lf be`stridden
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `stride
\gl2

\lf be`strid
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `stride
\gl2

;see noun bet
\lf `bet
\lx V
\alt End
\fea ed irreg
\gl1 `bet
\gl2

\lf `bet
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `bet
\gl2

\lf be`take
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf be`took
\lx V
\alt End
\fea ed irreg
\gl1 `take
\gl2

\lf be`taken
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `take
\gl2

\lf be`think
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf be`thought
\lx V
\alt End
\fea ed irreg
\gl1 `think
\gl2

\lf be`thought
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `think
\gl2

\lf `bid
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `bid
\lx V
\alt End
\fea ed irreg
\gl1 `bid
\gl2

\lf `bid
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `bid
\gl2

\lf `bade
\lx V
\alt PT_Suffix
\fea ed irreg
\gl1 `bid
\gl2

\lf `bad
\lx V
\alt End
\fea ed irreg
\gl1 `bid
\gl2

\lf `bade
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `bid
\gl2

\lf `bidden
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `bid
\gl2

\lf `bind
\lx V
\alt Suffix
\fea irreg rev
\gl1
\gl2

\lf `bound
\lx V
\alt End
\fea ed irreg rev
\gl1 `bind
\gl2

\lf `bound
\lx V
\alt PT_Suffix
\fea en irreg rev
\gl1 `bind
\gl2

\lf `bite
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `bit
\lx V
\alt End
\fea ed irreg
\gl1 `bite
\gl2

\lf `bit
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `bite
\gl2

\lf `bitten
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `bite
\gl2

\lf `bleed
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `bled
\lx V
\alt End
\fea ed irreg
\gl1 `bleed
\gl2

\lf `bled
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `bleed
\gl2

\lf `blow
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `blew
\lx V
\alt End
\fea ed irreg
\gl1 `blow
\gl2

\lf `blown
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `blow
\gl2

\lf `break
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `broke
\lx V
\alt End
\fea ed irreg
\gl1 `break
\gl2

\lf `broken
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `break
\gl2

\lf `breed
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `bred
\lx V
\alt End
\fea ed irreg
\gl1 `breed
\gl2

\lf `bred
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `breed
\gl2

\lf `bring
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `brought
\lx V
\alt End
\fea ed irreg
\gl1 `bring
\gl2

\lf `brought
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `bring
\gl2

\lf `broadcast
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `broadcast
\lx V
\alt End
\fea ed irreg
\gl1 `broadcast
\gl2

\lf `broadcast
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `broadcast
\gl2

\lf `browbeat
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `browbeat
\lx V
\alt End
\fea ed irreg
\gl1 `browbeat
\gl2

\lf `browbeat
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `browbeat
\gl2

\lf `browbeaten
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `browbeat
\gl2

\lf `build
\lx V
\alt Suffix
\fea irreg rev
\gl1
\gl2

\lf `built
\lx V
\alt End
\fea ed irreg rev
\gl1 `build
\gl2

\lf `built
\lx V
\alt PT_Suffix
\fea en irreg rev
\gl1 `build
\gl2

\lf `burn
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `burnt
\lx V
\alt End
\fea ed irreg
\gl1 `burn
\gl2

\lf `burnt
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `burn
\gl2

\lf `burst
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `burst
\lx V
\alt End
\fea ed irreg
\gl1 `burst
\gl2

\lf `burst
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `burst
\gl2

\lf `bust
\lx V
\alt Suffix
\gl1
\gl2

\lf `bust
\lx V
\alt End
\fea ed irreg
\gl1 `bust
\gl2

\lf `bust
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `bust
\gl2

\lf `buy
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `bought
\lx V
\alt End
\fea ed irreg
\gl1 `buy
\gl2

\lf `bought
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `buy
\gl2

\lf `cast
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `cast
\lx V
\alt End
\fea ed irreg
\gl1 `cast
\gl2

\lf `cast
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `cast
\gl2

\lf `catch
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `caught
\lx V
\alt End
\fea ed irreg
\gl1 `catch
\gl2

\lf `caught
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `catch
\gl2

\lf `chide
\lx V
\alt Suffix
\gl1
\gl2

\lf `chid
\lx V
\alt End
\fea ed irreg
\gl1 `chide
\gl2

\lf `chid
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `chide
\gl2

\lf `chidden
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `chide
\gl2

\lf `choose
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `chose
\lx V
\alt End
\fea ed irreg
\gl1 `choose
\gl2

\lf `chosen
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `choose
\gl2

\lf `cleave
\lx V
\alt Suffix
\gl1
\gl2

\lf `cleft
\lx V
\alt End
\fea ed irreg
\gl1 `cleave
\gl2

\lf `cleft
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `cleave
\gl2

\lf `clove
\lx V
\alt End
\fea ed irreg
\gl1 `cleave
\gl2

\lf `cloven
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `cleave
\gl2

\lf `cling
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `clung
\lx V
\alt End
\fea ed irreg
\gl1 `cling
\gl2

\lf `clung
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `cling
\gl2

\lf `come
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `came
\lx V
\alt End
\fea ed irreg
\gl1 `come
\gl2

\lf `camest
\lx V
\alt End
\fea ed irreg
\gl1 `come
\gl2

\lf `come
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `come
\gl2

;see noun `cost
\lf `cost
\lx V
\alt End
\fea ed irreg
\gl1 `cost
\gl2

\lf `cost
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `cost
\gl2

\lf `creep
\lx V
\alt Suffix
\gl1
\gl2

\lf `crept
\lx V
\alt End
\fea ed irreg
\gl1 `creep
\gl2

\lf `crept
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `creep
\gl2

\lf `cut
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `cut
\lx V
\alt End
\fea ed irreg
\gl1 `cut
\gl2

\lf `cut
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `cut
\gl2

\lf `dare
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `durst
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `dare
\gl2

\lf `deal
\lx N-V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `dealt
\lx V
\alt End
\fea ed irreg
\gl1 `deal
\gl2

\lf `dealt
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `deal
\gl2

\lf deep`freeze
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf deep`froze
\lx V
\alt End
\fea ed irreg
\gl1 deep`freeze
\gl2

\lf deep`frozen
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 deep`freeze
\gl2

\lf `dig
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `dug
\lx V
\alt End
\fea ed irreg
\gl1 `dig
\gl2

\lf `dug
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `dig
\gl2

\lf `dive
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `dove
\lx V
\alt End
\fea ed irreg
\gl1 `dive
\gl2

;DO as a full verb can take prefixes
\lf do
\lx V
\alt End
\fea rev
\gl1
\gl2

\lf does
\lx V
\alt End
\fea s rev
\gl1 do
\gl2

\lf `doing
\lx V
\alt PT_Suffix
\fea ing rev
\gl1 do
\gl2

\lf did
\lx V
\alt End
\fea ed irreg rev
\gl1 do
\gl2

\lf done
\lx V
\alt PT_Suffix
\fea en irreg rev
\gl1 do
\gl2

\lf `draw
\lx V
\alt Suffix
\fea irreg rev
\gl1
\gl2

\lf `drew
\lx V
\alt End
\fea ed irreg rev
\gl1 `draw
\gl2

\lf `drawn
\lx V
\alt PT_Suffix
\fea en irreg rev
\gl1 `draw
\gl2

\lf `dream
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `dreamt
\lx V
\alt End
\fea ed irreg
\gl1 `dream
\gl2

\lf `dreamt
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `dream
\gl2

\lf `drink
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `drank
\lx V
\alt End
\fea ed irreg
\gl1 `drink
\gl2

\lf `drunk
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `drink
\gl2

\lf `drive
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `drove
\lx V
\alt End
\fea ed irreg
\gl1 `drive
\gl2

\lf `driven
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `drive
\gl2

\lf `dwell
\lx V
\alt Suffix
\gl1
\gl2

\lf `dwelt
\lx V
\alt End
\fea ed irreg
\gl1 `dwell
\gl2

\lf `dwelt
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `dwell
\gl2

\lf `eat
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `ate
\lx V
\alt End
\fea ed irreg
\gl1 `eat
\gl2

\lf `eaten
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `eat
\gl2

\lf `fall
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `fell
\lx V
\alt End
\fea ed irreg
\gl1 `fall
\gl2

\lf `fallen
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `fall
\gl2

\lf `feed
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `fed
\lx V
\alt End
\fea ed irreg
\gl1 `feed
\gl2

\lf `fed
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `feed
\gl2

\lf `feel
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `felt
\lx V
\alt End
\fea ed irreg
\gl1 `feel
\gl2

\lf `felt
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `feel
\gl2

\lf `fight
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `fought
\lx V
\alt End
\fea ed irreg
\gl1 `fight
\gl2

\lf `fought
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `fight
\gl2

\lf `find
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `found
\lx V
\alt End
\fea ed irreg
\gl1 `find
\gl2

\lf `found
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `find
\gl2

\lf `fit
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `fit
\lx V
\alt End
\fea ed irreg
\gl1 `fit
\gl2

\lf `fit
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `fit
\gl2

\lf `flee
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `fled
\lx V
\alt End
\fea ed irreg
\gl1 `flee
\gl2

\lf `fled
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `flee
\gl2

\lf `fling
\lx V
\alt Suffix
\gl1
\gl2

\lf `flung
\lx V
\alt End
\fea ed irreg
\gl1 `fling
\gl2

\lf `flung
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `fling
\gl2

\lf `fly
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `flew
\lx V
\alt End
\fea ed irreg
\gl1 `fly
\gl2

\lf `flown
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `fly
\gl2

\lf for`bear
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf for`bore
\lx V
\alt End
\fea ed irreg
\gl1 for`bear
\gl2

\lf for`borne
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 for`bear
\gl2

\lf for`bid
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf for`bade
\lx V
\alt End
\fea ed irreg
\gl1 for`bid
\gl2

\lf for`bad
\lx V
\alt End
\fea ed irreg
\gl1 for`bid
\gl2

\lf for`bidden
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 for`bid
\gl2

\lf for`bid
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 for`bid
\gl2

\lf `forecast
\lx V
\alt Suffix
\gl1
\gl2

\lf `forecast
\lx V
\alt End
\fea ed irreg
\gl1 `forecast
\gl2

\lf `forecast
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `forecast
\gl2

\lf fore`see
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf fore`saw
\lx V
\alt End
\fea ed irreg
\gl1 fore`see
\gl2

\lf fore`seen
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 fore`see
\gl2

\lf fore`tell
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf fore`told
\lx V
\alt End
\fea ed irreg
\gl1 fore`tell
\gl2

\lf fore`told
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 fore`tell
\gl2

\lf for`get
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf for`got
\lx V
\alt End
\fea ed irreg
\gl1 for`get
\gl2

\lf for`got
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 for`get
\gl2

\lf for`gotten
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 for`get
\gl2

\lf for`give
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf for`gave
\lx V
\alt End
\fea ed irreg
\gl1 for`give
\gl2

\lf for`given
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 for`give
\gl2

\lf for`go
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf for`went
\lx V
\alt End
\fea ed irreg
\gl1 for`go
\gl2

\lf for`gone
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 for`go
\gl2

\lf for`sake
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf for`sook
\lx V
\alt End
\fea ed irreg
\gl1 for`sake
\gl2

\lf for`saken
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 for`sake
\gl2

\lf for`swear
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf for`swore
\lx V
\alt End
\fea ed irreg
\gl1 for`swear
\gl2

\lf for`sworn
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 for`swear
\gl2

\lf `freeze
\lx V
\alt Suffix
\fea irreg rev
\gl1
\gl2

\lf `froze
\lx V
\alt End
\fea ed irreg rev
\gl1 `freeze
\gl2

\lf `frozen
\lx V
\alt PT_Suffix
\fea en irreg rev
\gl1 `freeze
\gl2

\lf `frostbite
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `frostbit
\lx V
\alt End
\fea ed irreg
\gl1 `frostbite
\gl2

\lf `frostbitten
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `frostbite
\gl2

\lf `gainsay
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `gainsaid
\lx V
\alt End
\fea ed irreg
\gl1 `gainsay
\gl2

\lf `gainsaid
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `gainsay
\gl2

\lf `get
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `got
\lx V
\alt End
\fea ed irreg
\gl1 `get
\gl2

\lf `got
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `get
\gl2

\lf `gotten
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `get
\gl2

\lf `ghostwrite
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `ghostwrote
\lx V
\alt End
\fea ed irreg
\gl1 `ghostwrite
\gl2

\lf `ghostwritten
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `ghostwrite
\gl2

\lf `gird
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `girt
\lx V
\alt End
\fea ed irreg rev
\gl1 `gird
\gl2

\lf `girt
\lx V
\alt PT_Suffix
\fea en irreg rev
\gl1 `gird
\gl2

\lf `give
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `gave
\lx V
\alt End
\fea ed irreg
\gl1 `give
\gl2

\lf `gavest
\lx V
\alt End
\fea ed irreg
\gl1 `give
\gl2

\lf `given
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `give
\gl2

\lf `go
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `went
\lx V
\alt PT_Suffix
\fea ed irreg
\gl1 `go
\gl2

\lf `gone
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `go
\gl2

\lf `grind
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `ground
\lx V
\alt End
\fea ed irreg
\gl1 `grind
\gl2

\lf `ground
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `grind
\gl2

\lf `grow
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `grew
\lx V
\alt PT_Suffix
\fea ed irreg
\gl1 `grow
\gl2

\lf `grown
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `grow
\gl2

\lf `hamstring
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `hamstrung
\lx V
\alt End
\fea ed irreg
\gl1 `hamstring
\gl2

\lf `hamstrung
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `hamstring
\gl2

\lf `handwrite
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `handwrote
\lx V
\alt End
\fea ed irreg
\gl1 `handwrite
\gl2

\lf `handwritten
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `handwrite
\gl2

\lf `hang
\lx V
\alt Suffix
\gl1
\gl2

\lf `hung
\lx V
\alt End
\fea ed irreg
\gl1 `hang
\gl2

\lf `hung
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `hang
\gl2

\lf `hear
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `heard
\lx V
\alt End
\fea ed irreg
\gl1 `hear
\gl2

\lf `heard
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `hear
\gl2

\lf `heave
\lx V
\alt Suffix
\gl1
\gl2

\lf `hove
\lx V
\alt End
\fea ed irreg
\gl1 `heave
\gl2

\lf `hove
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `heave
\gl2

\lf `hew
\lx V
\alt Suffix
\gl1
\gl2

\lf `hewn
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `hew
\gl2

\lf `hide
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `hid
\lx V
\alt End
\fea ed irreg
\gl1 `hide
\gl2

\lf `hid
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `hide
\gl2

\lf `hidden
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `hide
\gl2

\lf `hit
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `hit
\lx V
\alt End
\fea ed irreg
\gl1 `hit
\gl2

\lf `hit
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `hit
\gl2

\lf `hold
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `held
\lx V
\alt End
\fea ed irreg
\gl1 `hold
\gl2

\lf `held
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `hold
\gl2

\lf `housebreak
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `housebroke
\lx V
\alt End
\fea ed irreg
\gl1 `housebreak
\gl2

\lf `housebroken
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `housebreak
\gl2

\lf `hurt
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `hurt
\lx V
\alt End
\fea ed irreg
\gl1 `hurt
\gl2

\lf `hurt
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `hurt
\gl2

\lf `inbreed
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `inbred
\lx V
\alt End
\fea ed irreg
\gl1 `inbreed
\gl2

\lf `inbred
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `inbreed
\gl2

\lf `inset
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `inset
\lx V
\alt End
\fea ed irreg
\gl1 `inset
\gl2

\lf `inset
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `inset
\gl2

\lf `keep
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `kept
\lx V
\alt End
\fea ed irreg
\gl1 `keep
\gl2

\lf `kept
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `keep
\gl2

\lf `kneel
\lx V
\alt Suffix
\gl1
\gl2

\lf `knelt
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `kneel
\gl2

\lf `knelt
\lx V
\alt End
\fea ed irreg
\gl1 `kneel
\gl2

\lf `knit
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `knit
\lx V
\alt End
\fea ed irreg rev
\gl1 `knit
\gl2

\lf `knit
\lx V
\alt PT_Suffix
\fea en irreg rev
\gl1 `knit
\gl2

\lf `know
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `knew
\lx V
\alt End
\fea ed irreg
\gl1 `know
\gl2

\lf `known
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `know
\gl2

\lf `lay
\lx V
\alt Suffix
\gl1
\gl2

\lf `laid
\lx V
\alt End
\fea ed irreg
\gl1 `lay
\gl2

\lf `laid
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `lay
\gl2

\lf `lead
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `led
\lx V
\alt End
\fea ed irreg
\gl1 `lead
\gl2

\lf `led
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `lead
\gl2

\lf `lean
\lx V
\alt Suffix
\gl1
\gl2

\lf `leant
\lx V
\alt End
\fea ed irreg
\gl1 `lean
\gl2

\lf `leant
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `lean
\gl2

\lf `leap
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `leapt
\lx V
\alt End
\fea ed irreg
\gl1 `leap
\gl2

\lf `leapt
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `leap
\gl2

\lf `learn
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `learnt
\lx V
\alt End
\fea ed irreg rev
\gl1 `learn
\gl2

\lf `learnt
\lx V
\alt PT_Suffix
\fea en irreg rev
\gl1 `learn
\gl2

\lf `leave
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `left
\lx V
\alt End
\fea ed irreg
\gl1 `leave
\gl2

\lf `left
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `leave
\gl2

\lf `lend
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `lent
\lx V
\alt End
\fea ed irreg
\gl1 `lend
\gl2

\lf `lent
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `lend
\gl2

\lf `let
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `let
\lx V
\alt End
\fea ed irreg
\gl1 `let
\gl2

\lf `let
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `let
\gl2

\lf `let's
\lx V
\alt End
\gl1 let+us
\gl2

\lf `lie
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

;\lf `lying
;\lx V
;\alt PT_Suffix
;\fea ing
;\gl1 `lie
;\gl2

\lf `lay
\lx V
\alt End
\fea ed irreg
\gl1 `lie
\gl2

\lf `lain
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `lie
\gl2

;see noun `light
\lf `lit
\lx V
\alt End
\fea ed irreg
\gl1 `light
\gl2

\lf `lit
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `light
\gl2

\lf `lipread
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `lipread
\lx V
\alt End
\fea ed irreg
\gl1 `lipread
\gl2

\lf `lipread
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `lipread
\gl2

\lf `lose
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `lost
\lx V
\alt PT_Suffix
\fea ed irreg
\gl1 `lose
\gl2

\lf `lost
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `lose
\gl2

\lf `make
\lx V
\alt Suffix
\fea irreg rev
\gl1
\gl2

\lf `made
\lx V
\alt End
\fea ed irreg rev
\gl1 `make
\gl2

\lf `made
\lx V
\alt PT_Suffix rev
\fea en irreg
\gl1 `make
\gl2

\lf `madest
\lx V
\alt End
\fea ed irreg
\gl1 `make
\gl2

\lf `madest
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `make
\gl2

\lf `mean
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `meant
\lx V
\alt End
\fea ed irreg
\gl1 `mean
\gl2

\lf `meant
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `mean
\gl2

\lf `meet
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `met
\lx V
\alt End
\fea ed irreg
\gl1 `meet
\gl2

\lf `met
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `meet
\gl2

\lf me`think
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf me`thought
\lx V
\alt End
\fea ed irreg
\gl1 me`think
\gl2

\lf `mow
\lx V
\alt Suffix
\gl1
\gl2

\lf `mown
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `mow
\gl2

\lf off`set
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf off`set
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 off`set
\gl2

\lf off`set
\lx V
\alt End
\fea ed irreg
\gl1 off`set
\gl2

\lf par`take
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf par`took
\lx V
\alt End
\fea ed irreg
\gl1 par`take
\gl2

\lf par`taken
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 par`take
\gl2

\lf `pay
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `paid
\lx V
\alt End
\fea ed irreg
\gl1 `pay
\gl2

\lf `paid
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `pay
\gl2

\lf `plead
\lx V
\alt Suffix
\gl1
\gl2

\lf `pled
\lx V
\alt End
\fea ed irreg
\gl1 `plead
\gl2

\lf `pled
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `plead
\gl2

\lf `proofread
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `proofread
\lx V
\alt End
\fea ed irreg
\gl1 `proofread
\gl2

\lf `proofread
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `proofread
\gl2

\lf `prove
\lx V
\alt Suffix
\gl1
\gl2

\lf `proven
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `prove
\gl2

\lf `put
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `put
\lx V
\alt End
\fea ed irreg
\gl1 `put
\gl2

\lf `put
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `put
\gl2

\lf `quit
\lx V
\alt Suffix
\gl1
\gl2

\lf `quit
\lx V
\alt End
\fea ed irreg
\gl1 `quit
\gl2

\lf `quit
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `quit
\gl2

\lf `quoth
\lx V
\alt End
\fea ed irreg
\gl1
\gl2

\lf `quoth
\lx V
\alt PT_Suffix
\fea en irreg
\gl1
\gl2

\lf `read
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `read
\lx V
\alt End
\fea ed irreg
\gl1 `read
\gl2

\lf `read
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `read
\gl2

\lf `rid
\lx V
\alt Suffix
\gl1
\gl2

\lf `rid
\lx V
\alt End
\fea ed irreg
\gl1 `rid
\gl2

\lf `rid
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `rid
\gl2

\lf `ride
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `rode
\lx V
\alt End
\fea ed irreg
\gl1 `ride
\gl2

\lf `ridden
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `ride
\gl2

\lf `ring
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `rang
\lx V
\alt End
\fea ed irreg
\gl1 `ring
\gl2

\lf `rung
\lx V
\alt End
\fea ed irreg
\gl1 `ring
\gl2

\lf `rung
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `ring
\gl2

\lf `rise
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `rose
\lx V
\alt End
\fea ed irreg
\gl1 `rise
\gl2

\lf `risen
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `rise
\gl2

\lf `rive
\lx V
\alt Suffix
\gl1
\gl2

\lf `riven
\lx V
\alt Suffix
\fea en irreg
\gl1 `rive
\gl2

\lf `run
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `ran
\lx V
\alt End
\fea ed irreg
\gl1 `run
\gl2

\lf `run
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `run
\gl2

;see noun `saw
\lf `sawn
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `saw
\gl2

\lf `say
\lx V
\alt Suffix
\fea irreg rev
\gl1
\gl2

\lf `said
\lx V
\alt End
\fea ed irreg rev
\gl1 `say
\gl2

\lf `said
\lx V
\alt PT_Suffix rev
\fea en irreg
\gl1 `say
\gl2

\lf `saith
\lx V
\alt End
\gl1 `say
\gl2

\lf `see
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `saw
\lx V
\alt End
\fea ed irreg
\gl1 `see
\gl2

\lf `seen
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `see
\gl2

\lf `seek
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `sought
\lx V
\alt End
\fea ed irreg
\gl1 `seek
\gl2

\lf `sought
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `seek
\gl2

\lf `sell
\lx V
\alt Suffix
\fea irreg rev
\gl1
\gl2

\lf `sold
\lx V
\alt End
\fea ed irreg rev
\gl1 `sell
\gl2

\lf `sold
\lx V
\alt PT_Suffix rev
\fea en irreg
\gl1 `sell
\gl2

\lf `send
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `sent
\lx V
\alt End
\fea ed irreg
\gl1 `send
\gl2

\lf `sent
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `send
\gl2

\lf `set
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `set
\lx V
\alt End
\fea ed irreg
\gl1 `set
\gl2

\lf `set
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `set
\gl2

\lf `sew
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `sewn
\lx V
\alt PT_Suffix
\fea en irreg rev
\gl1 `sew
\gl2

\lf `shake
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `shook
\lx V
\alt End
\fea ed irreg
\gl1 `shake
\gl2

\lf `shaken
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `shake
\gl2

\lf `shave
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `shaven
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `shave
\gl2

\lf `shear
\lx V
\alt Suffix
\gl1
\gl2

\lf `shorn
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `shear
\gl2

\lf `shed
\lx V
\alt Suffix
\gl1
\gl2

\lf `shed
\lx V
\alt End
\fea ed irreg
\gl1 `shed
\gl2

\lf `shed
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `shed
\gl2

\lf `shine
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `shone
\lx V
\alt End
\fea ed irreg
\gl1 `shine
\gl2

\lf `shone
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `shine
\gl2

;see noun `shoe
\lf `shod
\lx V
\alt End
\fea ed irreg
\gl1 `shoe
\gl2

\lf `shod
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `shoe
\gl2

\lf `shoot
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `shot
\lx V
\alt End
\fea ed irreg
\gl1 `shoot
\gl2

\lf `shot
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `shoot
\gl2

\lf `show
\lx V
\alt Suffix
\gl1
\gl2

\lf `shown
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `show
\gl2

\lf `shew
\lx V
\alt Suffix
\gl1
\gl2

\lf `shewn
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `shew
\gl2

\lf `shred
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `shred
\lx V
\alt End
\fea ed irreg
\gl1 `shred
\gl2

\lf `shred
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `shred
\gl2

\lf `shrink
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `shrank
\lx V
\alt End
\fea ed irreg
\gl1 `shrink
\gl2

\lf `shrunk
\lx V
\alt End
\fea ed irreg
\gl1 `shrink
\gl2

\lf `shrunk
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `shrink
\gl2

\lf `shrive
\lx V
\alt Suffix
\gl1
\gl2

\lf `shrove
\lx V
\alt End
\fea ed irreg
\gl1 `shrive
\gl2

\lf `shriven
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `shrive
\gl2

\lf `shut
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `shut
\lx V
\alt End
\fea ed irreg
\gl1 `shut
\gl2

\lf `shut
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `shut
\gl2

\lf `sing
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `sang
\lx V
\alt End
\fea ed irreg
\gl1 `sing
\gl2

\lf `sung
\lx V
\alt End
\fea ed irreg
\gl1 `sing
\gl2

\lf `sung
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `sing
\gl2

\lf `sink
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `sank
\lx V
\alt End
\fea ed irreg
\gl1 `sink
\gl2

\lf `sunk
\lx V
\alt End
\fea ed irreg
\gl1 `sink
\gl2

\lf `sunk
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `sink
\gl2

\lf `sit
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `sat
\lx V
\alt End
\fea ed irreg
\gl1 `sit
\gl2

\lf `sat
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `sit
\gl2

\lf `slay
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `slew
\lx V
\alt End
\fea ed irreg
\gl1 `slay
\gl2

\lf `slain
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `slay
\gl2

\lf `sleep
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `slept
\lx V
\alt End
\fea ed irreg
\gl1 `sleep
\gl2

\lf `slept
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `sleep
\gl2

\lf `slide
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `slid
\lx V
\alt End
\fea ed irreg
\gl1 `slide
\gl2

\lf `slid
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `slide
\gl2

\lf `sling
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `slung
\lx V
\alt End
\fea ed irreg rev
\gl1 `sling
\gl2

\lf `slung
\lx V
\alt PT_Suffix
\fea en irreg rev
\gl1 `sling
\gl2

\lf `slink
\lx V
\alt Suffix
\gl1
\gl2

\lf `slunk
\lx V
\alt End
\fea ed irreg
\gl1 `slink
\gl2

\lf `slunk
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `slink
\gl2

\lf `slit
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `slit
\lx V
\alt End
\fea ed irreg
\gl1 `slit
\gl2

\lf `slit
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `slit
\gl2

\lf `smell
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `smelt
\lx V
\alt End
\fea ed irreg
\gl1 `smell
\gl2

\lf `smelt
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `smell
\gl2

\lf `smite
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `smote
\lx V
\alt End
\fea ed irreg
\gl1 `smite
\gl2

\lf `smitten
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `smite
\gl2

\lf `sow
\lx V
\alt Suffix
\gl1
\gl2

\lf `sown
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `sow
\gl2

\lf `speak
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `spoke
\lx V
\alt End
\fea ed irreg
\gl1 `speak
\gl2

\lf `spoken
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `speak
\gl2

\lf `spake
\lx V
\alt End
\fea ed irreg
\gl1 `speak
\gl2

;see noun `speed
\lf `sped
\lx V
\alt End
\fea ed irreg
\gl1 `speed
\gl2

\lf `sped
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `speed
\gl2

\lf `spell
\lx V
\alt Suffix
\gl1
\gl2

\lf `spelt
\lx V
\alt End
\fea ed irreg
\gl1 `spell
\gl2

\lf `spelt
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `spell
\gl2

\lf `spend
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `spent
\lx V
\alt End
\fea ed irreg
\gl1 `spend
\gl2

\lf `spent
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `spend
\gl2

\lf `spill
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `spilt
\lx V
\alt End
\fea ed irreg
\gl1 `spill
\gl2

\lf `spilt
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `spill
\gl2

\lf `spin
\lx N-V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `span
\lx V
\alt End
\fea ed irreg
\gl1 `spin
\gl2

\lf `spun
\lx V
\alt End
\fea ed irreg
\gl1 `spin
\gl2

\lf `spun
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `spin
\gl2

\lf `spit
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `spit
\lx V
\alt End
\fea ed irreg
\gl1 `spit
\gl2

\lf `spit
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `spit
\gl2

\lf `spat
\lx V
\alt End
\fea ed irreg
\gl1 `spit
\gl2

\lf `spat
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `spit
\gl2

\lf `split
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `split
\lx V
\alt End
\fea ed irreg
\gl1 `split
\gl2

\lf `split
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `split
\gl2

\lf `spoil
\lx V
\alt Suffix
\gl1
\gl2

\lf `spoilt
\lx V
\alt End
\fea ed irreg
\gl1 `spoil
\gl2

\lf `spoilt
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `spoil
\gl2

\lf `spread
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `spread
\lx V
\alt End
\fea ed irreg
\gl1 `spread
\gl2

\lf `spread
\lx V
\alt End
\fea ed irreg
\gl1 `spread
\gl2

\lf `spread
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `spread
\gl2

\lf `spring
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `sprang
\lx V
\alt End
\fea ed irreg
\gl1 `spring
\gl2

\lf `sprung
\lx V
\alt End
\fea ed irreg
\gl1 `spring
\gl2

\lf `sprung
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `spring
\gl2

\lf `stand
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `stood
\lx V
\alt End
\fea ed irreg
\gl1 `stand
\gl2

\lf `stood
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `stand
\gl2

\lf `steal
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `stole
\lx V
\alt End
\fea ed irreg
\gl1 `steal
\gl2

\lf `stolen
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `steal
\gl2

\lf `stick
\lx V
\alt Suffix
\fea irreg rev
\gl1
\gl2

\lf `stuck
\lx V
\alt End
\fea ed irreg rev
\gl1 `stick
\gl2

\lf `stuck
\lx V
\alt PT_Suffix
\fea en irreg rev
\gl1 `stick
\gl2

\lf `sting
\lx N-V
\alt Suffix
\fea irreg ~deg2
\gl1
\gl2

\lf `stung
\lx V
\alt End
\fea ed irreg
\gl1 `sting
\gl2

\lf `stung
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `sting
\gl2

\lf `stink
\lx N-V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `stank
\lx V
\alt End
\fea ed irreg
\gl1 `stink
\gl2

\lf `stunk
\lx V
\alt End
\fea ed irreg
\gl1 `stink
\gl2

\lf `stunk
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `stink
\gl2

\lf `strew
\lx V
\alt Suffix
\gl1
\gl2

\lf `strewn
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `strew
\gl2

\lf `stride
\lx V
\alt Suffix
\gl1
\gl2

\lf `strode
\lx V
\alt End
\fea ed irreg
\gl1 `stride
\gl2

\lf `strode
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `stride
\gl2

\lf `stridden
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `stride
\gl2

\lf `strid
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `stride
\gl2

\lf `strike
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `struck
\lx V
\alt End
\fea ed irreg
\gl1 `strike
\gl2

\lf `struck
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `strike
\gl2

\lf `stricken
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `strike
\gl2

\lf `string
\lx V
\alt Suffix
\fea irreg rev
\gl1
\gl2

\lf `strung
\lx V
\alt End
\fea ed irreg rev
\gl1 `string
\gl2

\lf `strung
\lx V
\alt PT_Suffix
\fea en irreg rev
\gl1 `string
\gl2

\lf `strive
\lx V
\alt Suffix
\gl1
\gl2

\lf `strove
\lx V
\alt End
\fea ed irreg
\gl1 `strive
\gl2

\lf `striven
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `strive
\gl2

\lf `swear
\lx V
\alt Suffix
\fea irreg rev
\gl1
\gl2

\lf `swore
\lx V
\alt End
\fea ed irreg rev
\gl1 `swear
\gl2

\lf `sworn
\lx V
\alt PT_Suffix
\fea en irreg rev
\gl1 `swear
\gl2

\lf `sware
\lx V
\alt End
\fea ed irreg
\gl1 `swear
\gl2

\lf `sweat
\lx V
\alt Suffix
\gl1
\gl2

\lf `sweat
\lx V
\alt End
\fea ed irreg
\gl1 `sweat
\gl2

\lf `sweat
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `sweat
\gl2

\lf `sweep
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `swept
\lx V
\alt End
\fea ed irreg
\gl1 `sweep
\gl2

\lf `swept
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `sweep
\gl2

\lf `swell
\lx V
\alt Suffix
\gl1
\gl2

\lf `swollen
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `swell
\gl2

\lf `swim
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `swam
\lx V
\alt End
\fea ed irreg
\gl1 `swim
\gl2

\lf `swum
\lx V
\alt End
\fea ed irreg
\gl1 `swim
\gl2

\lf `swum
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `swim
\gl2

\lf `swing
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `swung
\lx V
\alt End
\fea ed irreg
\gl1 `swing
\gl2

\lf `swung
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `swing
\gl2

\lf `take
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `took
\lx V
\alt End
\fea ed irreg
\gl1 `take
\gl2

\lf `taken
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `take
\gl2

\lf `teach
\lx V
\alt Suffix
\fea irreg rev
\gl1
\gl2

\lf `taught
\lx V
\alt End
\fea ed irreg rev
\gl1 `teach
\gl2

\lf `taught
\lx V
\alt PT_Suffix
\fea en irreg rev
\gl1 `teach
\gl2

\lf `tear
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `tore
\lx V
\alt End
\fea ed irreg
\gl1 `tear
\gl2

\lf `torn
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `tear
\gl2

\lf `telecast
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `telecast
\lx V
\alt End
\fea ed irreg
\gl1 `telecast
\gl2

\lf `telecast
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `telecast
\gl2

\lf `tell
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `told
\lx V
\alt End
\fea ed irreg
\gl1 `tell
\gl2

\lf `told
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `tell
\gl2

\lf `think
\lx V
\alt Suffix
\fea irreg rev
\gl1
\gl2

\lf `thought
\lx V
\alt End
\fea ed irreg rev
\gl1 `think
\gl2

\lf `thought
\lx V
\alt PT_Suffix
\fea en irreg rev
\gl1 `think
\gl2

\lf `thrive
\lx V
\alt Suffix
\gl1
\gl2

\lf `throve
\lx V
\alt End
\fea ed irreg
\gl1 `thrive
\gl2

\lf `thriven
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `thrive
\gl2

\lf `throw
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `threw
\lx V
\alt End
\fea ed irreg
\gl1 `throw
\gl2

\lf `thrown
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `throw
\gl2

\lf `thrust
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `thrust
\lx V
\alt End
\fea ed irreg
\gl1 `thrust
\gl2

\lf `thrust
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `thrust
\gl2

\lf `tread
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `trod
\lx V
\alt End
\fea ed irreg
\gl1 `tread
\gl2

\lf `trod
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `tread
\gl2

\lf `trodden
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `tread
\gl2

\lf `typeset
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `typeset
\lx V
\alt End
\fea ed irreg
\gl1 `typeset
\gl2

\lf `typeset
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `typeset
\gl2

\lf `typewrite
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `typewrote
\lx V
\alt End
\fea ed irreg
\gl1 `typewrite
\gl2

\lf `typewritten
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `typewrite
\gl2

\lf under`stand
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf under`stood
\lx V
\alt End
\fea ed irreg
\gl1 under`stand
\gl2

\lf under`stood
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 under`stand
\gl2

\lf up`hold
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf up`held
\lx V
\alt End
\fea ed irreg
\gl1 up`hold
\gl2

\lf up`held
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 up`hold
\gl2

\lf up`rise
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf up`rose
\lx V
\alt End
\fea ed irreg
\gl1 up`rise
\gl2

\lf up`risen
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 up`rise
\gl2

\lf up`set
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf up`set
\lx V
\alt End
\fea ed irreg
\gl1 up`set
\gl2

\lf up`set
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 up`set
\gl2

\lf `wake
\lx V
\alt Suffix
\gl1
\gl2

\lf `woke
\lx V
\alt End
\fea ed irreg
\gl1 `wake
\gl2

\lf `woken
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `wake
\gl2

\lf `waylay
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `waylaid
\lx V
\alt End
\fea ed irreg
\gl1 `waylay
\gl2

\lf `waylaid
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `waylay
\gl2

\lf `wear
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `wore
\lx V
\alt End
\fea ed irreg
\gl1 `wear
\gl2

\lf `worn
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `wear
\gl2

\lf `weave
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `wove
\lx V
\alt End
\fea ed irreg rev
\gl1 `weave
\gl2

\lf `woven
\lx V
\alt PT_Suffix
\fea en irreg rev
\gl1 `weave
\gl2

\lf `wed
\lx V
\alt Suffix
\gl1
\gl2

\lf `wed
\lx V
\alt End
\fea ed irreg
\gl1 `wed
\gl2

\lf `wed
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `wed
\gl2

\lf `weep
\lx V
\alt Suffix
\gl1
\gl2

\lf `wept
\lx V
\alt End
\fea ed irreg
\gl1 `weep
\gl2

\lf `wept
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `weep
\gl2

\lf `wet
\lx V
\alt Suffix
\gl1
\gl2

\lf `wet
\lx V
\alt End
\fea ed irreg
\gl1 `wet
\gl2

\lf `wet
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `wet
\gl2

\lf `win
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `won
\lx V
\alt End
\fea ed irreg
\gl1 `win
\gl2

\lf `won
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `win
\gl2

\lf `wind
\lx V
\alt Suffix
\fea irreg rev
\gl1
\gl2

\lf `wound
\lx V
\alt End
\fea ed irreg rev
\gl1 `wind
\gl2

\lf `wound
\lx V
\alt PT_Suffix
\fea en irreg rev
\gl1 `wind
\gl2

\lf `wit
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `wot
\lx V
\alt End
;\fea s
\gl1 `wit
\gl2

\lf `wist
\lx V
\alt End
\fea ed irreg
\gl1 `wit
\gl2

\lf `wist
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `wit
\gl2

\lf with`draw
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf with`drew
\lx V
\alt End
\fea ed irreg
\gl1 with`draw
\gl2

\lf with`drawn
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 with`draw
\gl2

\lf with`hold
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf with`held
\lx V
\alt End
\fea ed irreg
\gl1 with`hold
\gl2

\lf with`held
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 with`hold
\gl2

\lf with`stand
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf with`stood
\lx V
\alt End
\fea ed irreg
\gl1 with`stand
\gl2

\lf with`stood
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 with`stand
\gl2

\lf `wring
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `wrung
\lx V
\alt End
\fea ed irreg
\gl1 `wring
\gl2

\lf `wrung
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `wring
\gl2

\lf `write
\lx V
\alt Suffix
\fea irreg
\gl1
\gl2

\lf `wrote
\lx V
\alt End
\fea ed irreg
\gl1 `write
\gl2

\lf `written
\lx V
\alt PT_Suffix
\fea en irreg
\gl1 `write
\gl2


;regular verbs

\lf a`bandon
\lx V
\alt Suffix
\gl1
\gl2

\lf a`base
\lx V
\alt Suffix
\gl1
\gl2

\lf a`bash
\lx V
\alt Suffix
\gl1
\gl2

\lf a`bate
\lx V
\alt Suffix
\gl1
\gl2

\lf ab`breviate
\lx V
\alt Suffix
\gl1
\gl2

\lf `abdicate
\lx V
\alt Suffix
\gl1
\gl2

\lf ab`duct
\lx V
\alt Suffix
\gl1
\gl2

\lf `aberrate
\lx V
\alt Suffix
\gl1
\gl2

\lf a`bet
\lx V
\alt Suffix
\gl1
\gl2

\lf ab`hor
\lx V
\alt Suffix
\gl1
\gl2

\lf ab`jure
\lx V
\alt Suffix
\gl1
\gl2

\lf ab`late
\lx V
\alt Suffix
\gl1
\gl2

\lf a`bolish
\lx V
\alt Suffix
\gl1
\gl2

\lf a`bominate
\lx V
\alt Suffix
\gl1
\gl2

\lf a`bort
\lx V
\alt Suffix
\gl1
\gl2

\lf a`bound
\lx V
\alt Suffix
\gl1
\gl2

\lf a`brade
\lx V
\alt Suffix
\gl1
\gl2

\lf abre`act
\lx V
\alt Suffix
\gl1
\gl2

\lf a`bridge
\lx V
\alt Suffix
\gl1
\gl2

\lf `abrogate
\lx V
\alt Suffix
\gl1
\gl2

\lf ab`scond
\lx V
\alt Suffix
\gl1
\gl2

\lf ab`solve
\lx V
\alt Suffix
\gl1
\gl2

\lf ab`sorb
\lx V
\alt Suffix
\gl1
\gl2

\lf ab`stain
\lx V
\alt Suffix
\gl1
\gl2

\lf ab`stract
\lx V
\alt Suffix
\gl1
\gl2

\lf a`buse
\lx V
\alt Suffix
\gl1
\gl2

\lf a`but
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`cede
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`celerate
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`cent
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`centuate
\lx V
\alt Suffix
\fea denom
\gl1 `accent
\gl2

\lf ac`cept
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`claim
\lx V
\alt Suffix
\gl1
\gl2

\lf `acclimate
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`climatise
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`climatize
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`commodate
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`company
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`complish
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`cord
\lx N-V
\alt Suffix
\gl1
\gl2

\lf ac`cost
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`count
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`credit
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`crete
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`crue
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`culturate
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`cumulate
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`cuse
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`custom
\lx V
\alt Suffix
\gl1
\gl2

\lf `ache
\lx N-V
\alt Suffix
\gl1
\gl2

\lf a`chieve
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`knowledge
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`quaint
\lx V
\alt Suffix
\gl1
\gl2

\lf acqui`esce
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`quire
\lx V
\alt Suffix
\gl1
\gl2

\lf ac`quit
\lx V
\alt Suffix
\gl1
\gl2

\lf `act
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `activate
\lx V
\alt Suffix
\fea deverb
\gl1 `active
\gl2

\lf `actuate
\lx V
\alt Suffix
\gl1
\gl2

\lf a`dapt
\lx V
\alt Suffix
\gl1
\gl2

\lf `add
\lx V
\alt Suffix
\gl1
\gl2

\lf ad`dict
\lx V
\alt Suffix
\gl1
\gl2

\lf `addle
\lx V
\alt Suffix
\gl1
\gl2

\lf ad`dress
\lx V
\alt Suffix
\gl1
\gl2

\lf ad`duce
\lx V
\alt Suffix
\gl1
\gl2

\lf ad`here
\lx V
\alt Suffix
\gl1
\gl2

\lf ad`join
\lx V
\alt Suffix
\gl1
\gl2

\lf ad`journ
\lx V
\alt Suffix
\gl1
\gl2

\lf ad`judicate
\lx V
\alt Suffix
\gl1
\gl2

\lf ad`judge
\lx V
\alt Suffix
\gl1
\gl2

\lf ad`jure
\lx V
\alt Suffix
\gl1
\gl2

\lf ad`just
\lx V
\alt Suffix
\gl1
\gl2

\lf ad`minister
\lx V
\alt Suffix
\gl1
\gl2

\lf ad`ministrate
\lx V
\alt Suffix
\gl1 ad`minister
\gl2

\lf ad`mire
\lx V
\alt Suffix
\gl1
\gl2

\lf ad`mit
\lx V
\alt Suffix
\gl1
\gl2

\lf ad`mix
\lx V
\alt Suffix
\gl1
\gl2

\lf ad`monish
\lx V
\alt Suffix
\gl1
\gl2

\lf a`dopt
\lx V
\alt Suffix
\gl1
\gl2

\lf a`dore
\lx V
\alt Suffix
\gl1
\gl2

\lf a`dorn
\lx V
\alt Suffix
\gl1
\gl2

\lf ad`sorb
\lx V
\alt Suffix
\gl1
\gl2

\lf `adulate
\lx V
\alt Suffix
\gl1
\gl2

\lf a`dulterate
\lx V
\alt Suffix
\gl1
\gl2

\lf a`dumbrate
\lx V
\alt Suffix
\gl1
\gl2

\lf ad`vance
\lx V
\alt Suffix
\gl1
\gl2

\lf ad`vert
\lx V
\alt Suffix
\gl1
\gl2

\lf `advertise
\lx V
\alt Suffix
\gl1
\gl2

\lf ad`vise
\lx V
\alt Suffix
\gl1
\gl2

\lf `advocate
\lx V
\alt Suffix
\gl1
\gl2

\lf `aerate
\lx V
\alt Suffix
\gl1
\gl2

\lf af`fect
\lx V
\alt Suffix
\gl1
\gl2

\lf af`fiance
\lx V
\alt Suffix
\gl1
\gl2

\lf af`filiate
\lx N-V
\alt Suffix
\gl1
\gl2

\lf af`firm
\lx V
\alt Suffix
\gl1
\gl2

\lf af`fix
\lx V
\alt Suffix
\gl1
\gl2

\lf af`flict
\lx V
\alt Suffix
\gl1
\gl2

\lf af`ford
\lx V
\alt Suffix
\gl1
\gl2

\lf af`forest
\lx V
\alt Suffix
\gl1
\gl2

\lf af`fright
\lx N-V
\alt Suffix
\gl1
\gl2

\lf af`front
\lx N-V
\alt Suffix
\gl1
\gl2

\lf ag`glomerate
\lx V
\alt Suffix
\gl1
\gl2

\lf ag`glutinate
\lx V
\alt Suffix
\gl1
\gl2

\lf ag`grandise
\lx V
\alt Suffix
\gl1
\gl2

\lf ag`grandize
\lx V
\alt Suffix
\gl1
\gl2

\lf `aggravate
\lx V
\alt Suffix
\gl1
\gl2

\lf `aggregate
\lx V
\alt Suffix
\gl1
\gl2

\lf ag`grieve
\lx V
\alt Suffix
\gl1
\gl2

\lf `agitate
\lx V
\alt Suffix
\gl1
\gl2

\lf a`gree
\lx V
\alt Suffix
\gl1
\gl2

\lf `aid
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `ail
\lx V
\alt Suffix
\gl1
\gl2

\lf `aim
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `airdrop
\lx V
\alt Suffix
\gl1
\gl2

\lf `airlift
\lx V
\alt Suffix
\gl1
\gl2

\lf `airmail
\lx V
\alt Suffix
\gl1
\gl2

\lf a`larm
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `alienate
\lx V
\alt Suffix
\fea denom
\gl1 `alien
\gl2

\lf a`light
\lx V
\alt Suffix
\gl1
\gl2

\lf a`lign
\lx V
\alt Suffix
\gl1
\gl2

\lf al`lay
\lx V
\alt Suffix
\gl1
\gl2

\lf al`lege
\lx V
\alt Suffix
\gl1
\gl2

\lf al`leviate
\lx V
\alt Suffix
\gl1
\gl2

\lf al`literate
\lx V
\alt Suffix
\gl1
\gl2

\lf `allocate
\lx V
\alt Suffix
\gl1
\gl2

\lf al`lot
\lx V
\alt Suffix
\gl1
\gl2

\lf al`low
\lx V
\alt Suffix
\gl1
\gl2

\lf al`lude
\lx V
\alt Suffix
\gl1
\gl2

\lf al`lure
\lx V
\alt Suffix
\gl1
\gl2

\lf al`ly
\lx V
\alt Suffix
\gl1
\gl2

\lf `alter
\lx V
\alt Suffix
\gl1
\gl2

\lf `altercate
\lx V
\alt Suffix
\gl1
\gl2

\lf `alternate
\lx N-V
\alt Suffix
\gl1
\gl2

\lf a`malgamate
\lx V
\alt Suffix
\fea denom
\gl1 a`malgam
\gl2

\lf a`mass
\lx V
\alt Suffix
\gl1
\gl2

\lf a`maze
\lx V
\alt Suffix
\gl1
\gl2

\lf `amble
\lx V
\alt Suffix
\gl1
\gl2

\lf `ambulate
\lx V
\alt Suffix
\gl1
\gl2

\lf `ambush
\lx N-V
\alt Suffix
\gl1
\gl2

\lf a`meliorate
\lx V
\alt Suffix
\gl1
\gl2

\lf a`mend
\lx V
\alt Suffix
\gl1
\gl2

\lf `amortize
\lx V
\alt Suffix
\gl1
\gl2

\lf `amputate
\lx V
\alt Suffix
\gl1
\gl2

\lf a`muse
\lx V
\alt Suffix
\gl1
\gl2

\lf `analyse
\lx V
\alt Suffix
\gl1
\gl2

\lf `analyze
\lx V
\alt Suffix
\gl1
\gl2

\lf a`nesthetize
\lx V
\alt Suffix
\gl1
\gl2

\lf `anglicise
\lx V
\alt Suffix
\gl1
\gl2

\lf `anglicize
\lx V
\alt Suffix
\gl1
\gl2

\lf `angle
\lx V
\alt Suffix
\gl1
\gl2

\lf animad`vert
\lx V
\alt Suffix
\gl1
\gl2

\lf `animate
\lx V
\alt Suffix
\gl1
\gl2

\lf an`neal
\lx V
\alt Suffix
\gl1
\gl2

\lf an`nex
\lx V
\alt Suffix
\gl1
\gl2

\lf an`nihilate
\lx V
\alt Suffix
\gl1
\gl2

\lf `annotate
\lx V
\alt Suffix
\gl1
\gl2

\lf an`nounce
\lx V
\alt Suffix
\gl1
\gl2

\lf an`noy
\lx V
\alt Suffix
\gl1
\gl2

\lf an`nul
\lx V
\alt Suffix
\gl1
\gl2

\lf an`nunciate
\lx V
\alt Suffix
\gl1
\gl2

\lf a`noint
\lx V
\alt Suffix
\gl1
\gl2

\lf `answer
\lx N-V
\alt Suffix
\gl1
\gl2

\lf an`tagonize
\lx V
\alt Suffix
\gl1
\gl2

\lf an`ticipate
\lx V
\alt Suffix
\gl1
\gl2

\lf `antiquate
\lx V
\alt Suffix
\gl1
\gl2

\lf a`pologise
\lx V
\alt Suffix
\fea denom
\gl1 a`pology
\gl2

\lf a`pologize
\lx V
\alt Suffix
\fea denom
\gl1 a`pology
\gl2

\lf ap`pall
\lx V
\alt Suffix
\gl1
\gl2

\lf ap`peal
\lx V
\alt Suffix
\gl1
\gl2

\lf ap`pear
\lx V
\alt Suffix
\gl1
\gl2

\lf ap`pease
\lx V
\alt Suffix
\gl1
\gl2

\lf ap`pend
\lx V
\alt Suffix
\gl1
\gl2

\lf apper`tain
\lx V
\alt Suffix
\gl1
\gl2

\lf ap`plaud
\lx V
\alt Suffix
\gl1
\gl2

\lf ap`ply
\lx V
\alt Suffix
\gl1
\gl2

\lf ap`point
\lx V
\alt Suffix
\gl1
\gl2

\lf ap`portion
\lx V
\alt Suffix
\gl1
\gl2

\lf ap`praise
\lx V
\alt Suffix
\gl1
\gl2

\lf ap`preciate
\lx V
\alt Suffix
\gl1
\gl2

\lf appre`hend
\lx V
\alt Suffix
\gl1
\gl2

\lf ap`prise
\lx V
\alt Suffix
\gl1
\gl2

\lf ap`proach
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `approbate
\lx V
\alt Suffix
\gl1
\gl2

\lf ap`propriate
\lx V
\alt Suffix
\gl1
\gl2

\lf ap`prove
\lx V
\alt Suffix
\gl1
\gl2

\lf `arbitrate
\lx V
\alt Suffix
\gl1
\gl2

\lf `argue
\lx V
\alt Suffix
\gl1
\gl2

\lf a`rouse
\lx V
\alt Suffix
\gl1
\gl2

\lf a`rraign
\lx V
\alt Suffix
\gl1
\gl2

\lf ar`range
\lx V
\alt Suffix
\gl1
\gl2

\lf ar`ray
\lx N-V
\alt Suffix
\gl1
\gl2

\lf ar`rest
\lx N-V
\alt Suffix
\gl1
\gl2

\lf ar`rive
\lx V
\alt Suffix
\gl1
\gl2

\lf `arrogate
\lx V
\alt Suffix
\gl1
\gl2

\lf as`cend
\lx V
\alt Suffix
\gl1
\gl2

\lf ascer`tain
\lx V
\alt Suffix
\gl1
\gl2

\lf as`cribe
\lx V
\alt Suffix
\gl1
\gl2

\lf `ask
\lx V
\alt Suffix
\gl1
\gl2

\lf as`phyxiate
\lx V
\alt Suffix
\gl1
\gl2

\lf `aspirate
\lx V
\alt Suffix
\gl1
\gl2

\lf as`pire
\lx V
\alt Suffix
\gl1
\gl2

\lf as`sail
\lx V
\alt Suffix
\gl1
\gl2

\lf as`sassinate
\lx V
\alt Suffix
\fea denom
\gl1 as`sassin
\gl2

\lf as`sault
\lx N-V
\alt Suffix
\gl1
\gl2

\lf as`say
\lx V
\alt Suffix
\gl1
\gl2

\lf as`semble
\lx V
\alt Suffix
\gl1
\gl2

\lf as`sent
\lx N-V
\alt Suffix
\gl1
\gl2

\lf as`sert
\lx V
\alt Suffix
\gl1
\gl2

\lf as`sess
\lx V
\alt Suffix
\gl1
\gl2

\lf as`sign
\lx V
\alt Suffix
\gl1
\gl2

\lf as`similate
\lx V
\alt Suffix
\gl1
\gl2

\lf as`sist
\lx V
\alt Suffix
\gl1
\gl2

\lf as`sociate
\lx V
\alt Suffix
\gl1
\gl2

\lf as`sort
\lx V
\alt Suffix
\gl1
\gl2

\lf as`suage
\lx V
\alt Suffix
\gl1
\gl2

\lf as`sume
\lx V
\alt Suffix
\gl1
\gl2

\lf as`sure
\lx V
\alt Suffix
\gl1
\gl2

\lf as`tonish
\lx V
\alt Suffix
\gl1
\gl2

\lf as`tound
\lx V
\alt Suffix
\gl1
\gl2

\lf a`tone
\lx V
\alt Suffix
\gl1
\gl2

\lf `atrophy
\lx V
\alt Suffix
\gl1
\gl2

\lf at`tach
\lx V
\alt Suffix
\gl1
\gl2

\lf at`tack
\lx N-V
\alt Suffix
\gl1
\gl2

\lf at`tain
\lx V
\alt Suffix
\gl1
\gl2

\lf at`tempt
\lx N-V
\alt Suffix
\gl1
\gl2

\lf at`tend
\lx V
\alt Suffix
\gl1
\gl2

\lf at`tenuate
\lx V
\alt Suffix
\gl1
\gl2

\lf at`test
\lx V
\alt Suffix
\gl1
\gl2

\lf at`tract
\lx V
\alt Suffix
\gl1
\gl2

\lf at`tribute
\lx V
\alt Suffix
\gl1
\gl2

\lf at`tune
\lx V
\alt Suffix
\gl1
\gl2

\lf `audit
\lx N-V
\alt Suffix
\gl1
\gl2

\lf aug`ment
\lx V
\alt Suffix
\gl1
\gl2

\lf `augur
\lx V
\alt Suffix
\gl1
\gl2

\lf au`thenticate
\lx V
\alt Suffix
\fea deadj
\gl1 au`thentic
\gl2

\lf `authorise
\lx V
\alt Suffix
\gl1
\gl2

\lf `authorize
\lx V
\alt Suffix
\gl1
\gl2

\lf `automate
\lx V
\alt Suffix
\gl1
\gl2

\lf a`vail
\lx V
\alt Suffix
\gl1
\gl2

\lf a`vast
\lx V
\alt Clitic
\gl1
\gl2

\lf a`venge
\lx V
\alt Suffix
\gl1
\gl2

\lf a`ver
\lx V
\alt Suffix
\gl1
\gl2

\lf a`vert
\lx V
\alt Suffix
\gl1
\gl2

\lf `aviate
\lx V
\alt Suffix
\gl1
\gl2

\lf a`void
\lx V
\alt Suffix
\gl1
\gl2

\lf a`vow
\lx V
\alt Suffix
\gl1
\gl2

\lf a`wait
\lx V
\alt Suffix
\gl1
\gl2

\lf a`waken
\lx V
\alt Suffix
\gl1
\gl2

\lf a`ward
\lx N-V
\alt Suffix
\gl1
\gl2


\lf `babble
\lx V
\alt Suffix
\gl1
\gl2

\lf `backbite
\lx V
\alt Suffix
\gl1
\gl2

\lf `backfill
\lx V
\alt Suffix
\gl1
\gl2

\lf `backorder
\lx V
\alt Suffix
\gl1
\gl2

\lf `backscatter
\lx V
\alt Suffix
\gl1
\gl2

\lf `backstitch
\lx V
\alt Suffix
\gl1
\gl2

\lf `backtrack
\lx V
\alt Suffix
\gl1
\gl2

\lf `backup
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `baffle
\lx V
\alt Suffix
\gl1
\gl2

\lf `bail
\lx V
\alt Suffix
\gl1
\gl2

\lf `bake
\lx V
\alt Suffix
\gl1
\gl2

\lf `balance
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `balk
\lx N-V
\alt Suffix
\gl1
\gl2

\lf bam`boozle
\lx V
\alt Suffix
\gl1
\gl2

\lf `ban
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `bandy
\lx V
\alt Suffix
\gl1
\gl2

\lf `bang
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `banish
\lx V
\alt Suffix
\gl1
\gl2

\lf `banter
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `baptize
\lx V
\alt Suffix
\gl1
\gl2

\lf `barbecue
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `bare
\lx V
\alt Suffix
\gl1
\gl2

\lf `barge
\lx V
\alt Suffix
\gl1
\gl2

\lf `bark
\lx V
\alt Suffix
\gl1
\gl2

\lf `barkeep
\lx V
\alt Suffix
\gl1
\gl2

\lf `bartend
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `barnstorm
\lx V
\alt Suffix
\gl1
\gl2

\lf `barter
\lx V
\alt Suffix
\gl1
\gl2

\lf `bash
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `bask
\lx V
\alt Suffix
\gl1
\gl2

\lf `baste
\lx V
\alt Suffix
\gl1
\gl2

\lf `bathe
\lx V
\alt Suffix
\gl1
\gl2

\lf `batten
\lx V
\alt Suffix
\gl1
\gl2

\lf `batter
\lx V
\alt Suffix
\gl1
\gl2

\lf `bawl
\lx V
\alt Suffix
\gl1
\gl2

\lf `bay
\lx V
\alt Suffix
\gl1
\gl2

\lf `beachcomb
\lx V
\alt Suffix
\gl1
\gl2

\lf be`atify
\lx V
\alt Suffix
\gl1
\gl2

\lf `beautify
\lx V
\alt Suffix
\fea denom
\gl1 `beauty
\gl2

\lf be`calm
\lx V
\alt Suffix
\fea deadj
\gl1 `calm
\gl2

\lf `beckon
\lx V
\alt Suffix
\gl1
\gl2

\lf be`cloud
\lx V
\alt Suffix
\fea denom
\gl1 `cloud
\gl2

\lf be`dazzle
\lx V
\alt Suffix
\gl1 `dazzle
\gl2

\lf be`daub
\lx V
\alt Suffix
\gl1 `daub
\gl2

\lf be`deck
\lx V
\alt Suffix
\gl1 `deck
\gl2

\lf be`devil
\lx V
\alt Suffix
\fea denom
\gl1 `devil
\gl2

\lf be`dim
\lx V
\alt Suffix
\fea deadj
\gl1 `dim
\gl2

\lf be`draggle
\lx V
\alt Suffix
\gl1
\gl2

\lf `beep
\lx N-V
\alt Suffix
\gl1
\gl2

\lf be`fit
\lx V
\alt Suffix
\gl1
\gl2

\lf be`fog
\lx V
\alt Suffix
\fea denom
\gl1 `fog
\gl2

\lf be`fool
\lx V
\alt Suffix
\fea denom
\gl1 `fool
\gl2

\lf be`foul
\lx V
\alt Suffix
\fea deadj
\gl1 `foul
\gl2

\lf be`friend
\lx V
\alt Suffix
\fea denom
\gl1 `friend
\gl2

\lf be`fuddle
\lx V
\alt Suffix
\gl1 `fuddle
\gl2

\lf `beg
\lx V
\alt Suffix
\gl1
\gl2

\lf be`gone
\lx V
\alt Clitic
\gl1
\gl2

\lf be`grime
\lx V
\alt Suffix
\fea denom
\gl1 `grime
\gl2

\lf be`grudge
\lx V
\alt Suffix
\fea denom
\gl1 `grudge
\gl2

\lf be`guile
\lx V
\alt Suffix
\gl1
\gl2

\lf be`have
\lx V
\alt Suffix
\gl1
\gl2

\lf be`head
\lx V
\alt Suffix
\fea denom
\gl1 `head
\gl2

\lf be`hoove
\lx V
\alt Suffix
\gl1
\gl2

\lf be`hove
\lx V
\alt Suffix
\gl1
\gl2

\lf be`labor
\lx V
\alt Suffix
\gl1 `labor
\gl2

\lf be`labour
\lx V
\alt Suffix
\gl1 `labour
\gl2

\lf be`lay
\lx V
\alt Suffix
\gl1
\gl2

\lf `belch
\lx N-V
\alt Suffix
\gl1
\gl2

\lf be`leaguer
\lx V
\alt Suffix
\gl1
\gl2

\lf be`lie
\lx V
\alt Suffix
\gl1
\gl2

;\lf be`lying
;\lx V
;\alt PT_Suffix
;\fea ing
;\gl1 be`lie
;\gl2

\lf be`lieve
\lx V
\alt Suffix
\gl1
\gl2

\lf be`little
\lx V
\alt Suffix
\fea deadj
\gl1 `little
\gl2

\lf `bellow
\lx N-V
\alt Suffix
\gl1
\gl2

\lf be`long
\lx V
\alt Suffix
\gl1
\gl2

\lf be`madden
\lx V
\alt Suffix
\fea deadj
\gl1 `mad
\gl2

\lf be`moan
\lx V
\alt Suffix
\gl1 `moan
\gl2

\lf be`muse
\lx V
\alt Suffix
\gl1
\gl2

\lf be`night
\lx V
\alt Suffix
\fea denom
\gl1 `night
\gl2

\lf be`plaster
\lx V
\alt Suffix
\fea denom
\gl1 `plaster
\gl2

\lf be`queath
\lx V
\alt Suffix
\gl1
\gl2

\lf be`rate
\lx V
\alt Suffix
\gl1
\gl2

\lf be`ribbon
\lx V
\alt Suffix
\fea denom
\gl1 `ribbon
\gl2

\lf be`siege
\lx V
\alt Suffix
\fea denom
\gl1 `siege
\gl2

\lf be`smirch
\lx V
\alt Suffix
\gl1
\gl2

\lf be`sot
\lx V
\alt Suffix
\gl1
\gl2

\lf be`smear
\lx V
\alt Suffix
\gl1 `smear
\gl2

\lf be`spatter
\lx V
\alt Suffix
\gl1 `spatter
\gl2

\lf be`streak
\lx V
\alt Suffix
\fea denom
\gl1 `streak
\gl2

\lf be`stir
\lx V
\alt Suffix
\gl1 `stir
\gl2

\lf be`stow
\lx V
\alt Suffix
\gl1
\gl2

\lf be`tide
\lx V
\alt Suffix
\gl1
\gl2

\lf be`token
\lx V
\alt Suffix
\gl1
\gl2

\lf be`tray
\lx V
\alt Suffix
\gl1
\gl2

\lf be`troth
\lx V
\alt Suffix
\gl1
\gl2

\lf `better
\lx V
\alt Suffix
\gl1
\gl2

\lf be`wail
\lx V
\alt Suffix
\gl1 `wail
\gl2

\lf be`ware
\lx V
\alt Clitic
\gl1
\gl2

\lf be`whisker
\lx V
\alt Suffix
\fea denom
\gl1 `whisker
\gl2

\lf be`wilder
\lx V
\alt Suffix
\gl1
\gl2

\lf be`witch
\lx V
\alt Suffix
\fea denom
\gl1 `witch
\gl2

\lf `bicker
\lx V
\alt Suffix
\gl1
\gl2

\lf `bide
\lx V
\alt Suffix
\gl1
\gl2

\lf `bifurcate
\lx V
\alt Suffix
\gl1
\gl2

\lf `bilk
\lx V
\alt Suffix
\gl1
\gl2

\lf `birdwatch
\lx V
\alt Suffix
\gl1
\gl2

\lf `bisect
\lx V
\alt Suffix
\gl1
\gl2

\lf bi`variate
\lx V
\alt Suffix
\gl1
\gl2

\lf `blab
\lx V
\alt Suffix
\gl1
\gl2

\lf `blackball
\lx V
\alt Suffix
\gl1
\gl2

\lf `blackmail
\lx V
\alt Suffix
\gl1
\gl2

\lf `blame
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `blanch
\lx V
\alt Suffix
\gl1
\gl2

\lf `blandish
\lx V
\alt Suffix
\gl1
\gl2

\lf `blare
\lx V
\alt Suffix
\gl1
\gl2

\lf `blaspheme
\lx V
\alt Suffix
\gl1
\gl2

\lf `blat
\lx V
\alt Suffix
\gl1
\gl2

\lf `bleach
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `bleat
\lx V
\alt Suffix
\gl1
\gl2

\lf `blend
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `bless
\lx V
\alt Suffix
\gl1
\gl2

\lf `blink
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `bloat
\lx V
\alt Suffix
\gl1
\gl2

\lf block`ade
\lx V
\alt Suffix
\gl1
\gl2

\lf `bloody
\lx V
\alt Suffix
\fea denom
\gl1 `blood
\gl2

\lf `bloom
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `blubber
\lx V
\alt Suffix
\gl1
\gl2

\lf `bludgeon
\lx V
\alt Suffix
\gl1
\gl2

\lf `bluff
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `blunder
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `blur
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `blurt
\lx V
\alt Suffix
\gl1
\gl2

\lf `blush
\lx V
\alt Suffix
\gl1
\gl2

\lf `bluster
\lx V
\alt Suffix
\gl1
\gl2

\lf `board
\lx V
\alt Suffix
\gl1
\gl2

\lf `boast
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `bob
\lx V
\alt Suffix
\gl1
\gl2

\lf `bobble
\lx V
\alt Suffix
\gl1
\gl2

\lf `bode
\lx V
\alt Suffix
\gl1
\gl2

\lf `bodybuild
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `boggle
\lx V
\alt Suffix
\gl1
\gl2

\lf `boil
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `bolster
\lx V
\alt Suffix
\gl1
\gl2

\lf `bolt
\lx V
\alt Suffix
\gl1
\gl2

\lf bom`bard
\lx V
\alt Suffix
\gl1
\gl2

\lf `bookbind
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `bookkeep
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `booksell
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `boom
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `boost
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `bootleg
\lx V
\alt Suffix
\gl1
\gl2

\lf `bore
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `borrow
\lx V
\alt Suffix
\gl1
\gl2

\lf `botch
\lx V
\alt Suffix
\gl1
\gl2

\lf `bother
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `bounce
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `bound
\lx V
\alt Suffix
\gl1
\gl2

\lf `bow
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `bowdlerize
\lx V
\alt Suffix
\gl1
\gl2

\lf `bowl
\lx V
\alt Suffix
\gl1
\gl2

\lf `boycott
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `brag
\lx V
\alt Suffix
\gl1
\gl2

\lf `braid
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `brainwash
\lx V
\alt Suffix
\gl1
\gl2

\lf `brandish
\lx V
\alt Suffix
\gl1
\gl2

\lf `brawl
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `bray
\lx V
\alt Suffix
\gl1
\gl2

\lf `breadwin
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `breathe
\lx V
\alt Suffix
\gl1
\gl2

\lf `brew
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `bricklay
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `brief
\lx V
\alt Suffix
\gl1
\gl2

\lf `brim
\lx V
\alt Suffix
\gl1
\gl2

\lf `broach
\lx V
\alt Suffix
\gl1
\gl2

\lf `broil
\lx V
\alt Suffix
\gl1
\gl2

\lf `browbeat
\lx V
\alt Suffix
\gl1
\gl2

\lf `brown
\lx V
\alt Suffix
\gl1
\gl2

\lf `browse
\lx V
\alt Suffix
\gl1
\gl2

\lf `bruise
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `buck
\lx V
\alt Suffix
\gl1
\gl2

\lf `budge
\lx V
\alt Suffix
\gl1
\gl2

\lf `buffet
\lx V
\alt Suffix
\gl1
\gl2

\lf `bug
\lx V
\alt Suffix
\gl1
\gl2

\lf `bulge
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `bulldoze
\lx V
\alt Suffix
\gl1
\gl2

\lf `bumble
\lx V
\alt Suffix
\gl1
\gl2

\lf `bunt
\lx V
\alt Suffix
\gl1
\gl2

\lf `bungle
\lx V
\alt Suffix
\gl1
\gl2

\lf `burble
\lx V
\alt Suffix
\gl1
\gl2

\lf `burgeon
\lx V
\alt Suffix
\gl1
\gl2

\lf `burnish
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `burp
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `bury
\lx V
\alt Suffix
\gl1
\gl2

\lf `buss
\lx V
\alt Suffix
\gl1
\gl2

\lf `bushwhack
\lx V
\alt Suffix
\gl1
\gl2

\lf `bustle
\lx V
\alt Suffix
\gl1
\gl2

\lf `butcher
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `butt
\lx V
\alt Suffix
\gl1
\gl2

\lf `buzz
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `bypass
\lx N-V
\alt Suffix
\gl1
\gl2


\lf `cabdrive
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `cabinetmake
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `cackle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf ca`jole
\lx V
\alt Suffix
\gl1
\gl2

\lf `calcify
\lx V
\alt Suffix
\gl1
\gl2

\lf `calculate
\lx V
\alt Suffix
\gl1
\gl2

\lf `calibrate
\lx V
\alt Suffix
\fea denom
\gl1 `caliber
\gl2

\lf `call
\lx N-V
\alt Suffix
\gl1
\gl2

\lf ca`lumniate
\lx V
\alt Suffix
\fea denom
\gl1 `calumny
\gl2

\lf `calve
\lx V
\alt Suffix
\fea denom
\gl1 `calf
\gl2

\lf `cancel
\lx V
\alt Suffix
\gl1
\gl2

\lf `canvass
\lx V
\alt Suffix
\gl1
\gl2

\lf `caper
\lx N-V
\alt Suffix
\gl1
\gl2

\lf ca`pitulate
\lx V
\alt Suffix
\gl1
\gl2

\lf `capsize
\lx V
\alt Suffix
\gl1
\gl2

\lf `captivate
\lx V
\alt Suffix
\gl1
\gl2

\lf `capture
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `carbonate
\lx V
\alt Suffix
\fea denom
\gl1 `carbon
\gl2

\lf `care
\lx N-V
\alt Suffix
\fea ~nr10
\gl1
\gl2

\lf ca`reen
\lx V
\alt Suffix
\gl1
\gl2

\lf ca`ress
\lx N-V
\alt Suffix
\gl1
\gl2

\lf ca`rouse
\lx V
\alt Suffix
\gl1
\gl2

\lf `carp
\lx V
\alt Suffix
\gl1
\gl2

\lf `carry
\lx V
\alt Suffix
\gl1
\gl2

\lf `carve
\lx V
\alt Suffix
\gl1
\gl2

\lf `castigate
\lx V
\alt Suffix
\gl1
\gl2

\lf `castrate
\lx V
\alt Suffix
\gl1
\gl2

\lf `catechize
\lx V
\alt Suffix
\gl1
\gl2

\lf `categorize
\lx V
\alt Suffix
\fea denom
\gl1 `category
\gl2

\lf `catenate
\lx V
\alt Suffix
\gl1
\gl2

\lf `cater
\lx V
\alt Suffix
\gl1
\gl2

\lf `cause
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `cavil
\lx V
\alt Suffix
\gl1
\gl2

\lf `cavitate
\lx V
\alt Suffix
\gl1
\gl2

\lf ca`vort
\lx V
\alt Suffix
\gl1
\gl2

\lf `caw
\lx V
\alt Suffix
\gl1
\gl2

\lf `cease
\lx V
\alt Suffix
\gl1
\gl2

\lf `cede
\lx V
\alt Suffix
\gl1
\gl2

\lf `celebrate
\lx V
\alt Suffix
\gl1
\gl2

\lf `cense
\lx V
\alt Suffix
\gl1
\gl2

\lf `censure
\lx V
\alt Suffix
\gl1
\gl2

\lf `cerebrate
\lx V
\alt Suffix
\gl1
\gl2

\lf `certify
\lx V
\alt Suffix
\gl1
\gl2

\lf `chafe
\lx V
\alt Suffix
\gl1
\gl2

\lf `challenge
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `chamfer
\lx V
\alt Suffix
\gl1
\gl2

\lf `champ
\lx V
\alt Suffix
\fea ~nr23
\gl1
\gl2

\lf `change
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `chant
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `chap
\lx V
\alt Suffix
\gl1
\gl2

\lf `char
\lx V
\alt Suffix
\gl1
\gl2

\lf `charge
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `chase
\lx N-V
\alt Suffix
\gl1
\gl2

\lf chas`tise
\lx V
\alt Suffix
\gl1
\gl2

\lf `chat
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `chatter
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `cheat
\lx V
\alt Suffix
\gl1
\gl2

\lf `check
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `checker
\lx V
\alt Suffix
\gl1
\gl2

\lf `checkmate
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `cheerlead
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `cherish
\lx V
\alt Suffix
\gl1
\gl2

\lf `chew
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `chime
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `chirp
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `chlorinate
\lx V
\alt Suffix
\fea denom
\gl1 chlor`ine
\gl2

\lf `choke
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `chomp
\lx V
\alt Suffix
\gl1
\gl2

\lf `chop
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `choreograph
\lx V
\alt Suffix
\gl1
\gl2

\lf `chortle
\lx V
\alt Suffix
\gl1
\gl2

\lf `christen
\lx V
\alt Suffix
\gl1
\gl2

\lf `chuck
\lx V
\alt Suffix
\gl1
\gl2

\lf `chuckle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `chuff
\lx V
\alt Suffix
\gl1
\gl2

\lf `chug
\lx V
\alt Suffix
\gl1
\gl2

\lf `churchgo
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `churn
\lx V
\alt Suffix
\gl1
\gl2

\lf `circulate
\lx V
\alt Suffix
\gl1
\gl2

\lf `circumcise
\lx V
\alt Suffix
\gl1
\gl2

\lf `circumscribe
\lx V
\alt Suffix
\gl1
\gl2

\lf `circumvent
\lx V
\alt Suffix
\gl1
\gl2

\lf `cite
\lx V
\alt Suffix
\gl1
\gl2

\lf `citify
\lx V
\alt Suffix
\fea denom
\gl1 `city
\gl2

\lf `claim
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `clamber
\lx V
\alt Suffix
\gl1
\gl2

\lf `clamor
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `clamour
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `clang
\lx V
\alt Suffix
\gl1
\gl2

\lf `clank
\lx V
\alt Suffix
\gl1
\gl2

\lf `clap
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `clarify
\lx V
\alt Suffix
\gl1
\gl2

\lf `clash
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `clatter
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `cleanse
\lx V
\alt Suffix
\gl1
\gl2

\lf `clear
\lx V
\alt Suffix
\gl1
\gl2

\lf `clench
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `click
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `climb
\lx V
\alt Suffix
\gl1
\gl2

\lf `clinch
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `clink
\lx V
\alt Suffix
\gl1
\gl2

\lf `clip
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `clobber
\lx V
\alt Suffix
\gl1
\gl2

\lf `clockwatch
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `clomp
\lx V
\alt Suffix
\gl1
\gl2

\lf `close
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `clothe
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `cloy
\lx V
\alt Suffix
\gl1
\gl2

\lf `cluck
\lx V
\alt Suffix
\gl1
\gl2

\lf `clutch
\lx V
\alt Suffix
\gl1
\gl2

\lf `coach
\lx N-V
\alt Suffix
\gl1
\gl2

\lf co`agulate
\lx V
\alt Suffix
\gl1
\gl2

\lf coa`lesce
\lx V
\alt Suffix
\gl1
\gl2

\lf `coast
\lx V
\alt Suffix
\gl1
\gl2

\lf `coax
\lx V
\alt Suffix
\gl1
\gl2

\lf `cobble
\lx V
\alt Suffix
\gl1
\gl2

\lf `cock
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `coddle
\lx V
\alt Suffix
\gl1
\gl2

\lf co`erce
\lx V
\alt Suffix
\gl1
\gl2

\lf `cogitate
\lx V
\alt Suffix
\gl1
\gl2

\lf co`here
\lx V
\alt Suffix
\gl1
\gl2

\lf coin`cide
\lx V
\alt Suffix
\gl1
\gl2

\lf col`laborate
\lx V
\alt Suffix
\gl1
\gl2

\lf col`lapse
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `collate
\lx V
\alt Suffix
\gl1
\gl2

\lf col`lect
\lx V
\alt Suffix
\gl1
\gl2

\lf col`lide
\lx V
\alt Suffix
\gl1
\gl2

\lf `collocate
\lx V
\alt Suffix
\gl1
\gl2

\lf col`lude
\lx V
\alt Suffix
\gl1
\gl2

\lf `colorate
\lx V
\alt Suffix
\fea denom
\gl1 `color
\gl2

\lf `comb
\lx N-V
\alt Suffix
\gl1
\gl2

\lf com`bat
\lx V
\alt Suffix
\gl1
\gl2

\lf com`bine
\lx V
\alt Suffix
\gl1
\gl2

\lf com`bust
\lx V
\alt Suffix
\gl1
\gl2

\lf com`mand
\lx N-V
\alt Suffix
\gl1
\gl2

\lf comman`deer
\lx V
\alt Suffix
\gl1
\gl2

\lf com`memorate
\lx V
\alt Suffix
\gl1
\gl2

\lf com`mence
\lx V
\alt Suffix
\gl1
\gl2

\lf com`mend
\lx V
\alt Suffix
\gl1
\gl2

;archaic
\lf com`merce
\lx V
\alt Suffix
\gl1
\gl2

\lf com`mingle
\lx V
\alt Suffix
\gl1
\gl2

\lf com`miserate
\lx V
\alt Suffix
\gl1
\gl2

\lf com`mit
\lx V
\alt Suffix
\gl1
\gl2

\lf com`mune
\lx V
\alt Suffix
\gl1
\gl2

\lf com`municate
\lx V
\alt Suffix
\gl1
\gl2

\lf `commutate
\lx V
\alt Suffix
\gl1
\gl2

\lf com`mute
\lx V
\alt Suffix
\gl1
\gl2

\lf com`pact
\lx V
\alt Suffix
\gl1
\gl2

\lf com`pare
\lx V
\alt Suffix
\gl1
\gl2

\lf `compass
\lx V
\alt Suffix
\gl1
\gl2

\lf com`pel
\lx V
\alt Suffix
\gl1
\gl2

\lf `compensate
\lx V
\alt Suffix
\gl1
\gl2

\lf com`pete
\lx V
\alt Suffix
\gl1
\gl2

\lf com`pile
\lx V
\alt Suffix
\gl1
\gl2

\lf com`plain
\lx V
\alt Suffix
\gl1
\gl2

\lf `complicate
\lx V
\alt Suffix
\gl1
\gl2

\lf com`ply
\lx V
\alt Suffix
\gl1
\gl2

\lf com`port
\lx V
\alt Suffix
\gl1
\gl2

\lf com`pose
\lx V
\alt Suffix
\gl1
\gl2

\lf com`pound
\lx V
\alt Suffix
\gl1
\gl2

\lf compre`hend
\lx V
\alt Suffix
\gl1
\gl2

\lf com`press
\lx V
\alt Suffix
\gl1
\gl2

\lf com`prise
\lx V
\alt Suffix
\gl1
\gl2

\lf `compromise
\lx V
\alt Suffix
\gl1
\gl2

\lf com`pute
\lx V
\alt Suffix
\gl1
\gl2

\lf con`catenate
\lx V
\alt Suffix
\gl1
\gl2

\lf con`ceal
\lx V
\alt Suffix
\gl1
\gl2

\lf con`cede
\lx V
\alt Suffix
\gl1
\gl2

\lf con`ceive
\lx V
\alt Suffix
\gl1
\gl2

\lf `concentrate
\lx V
\alt Suffix
\gl1
\gl2

\lf con`cert
\lx V
\alt Suffix
\gl1
\gl2

\lf con`ciliate
\lx V
\alt Suffix
\gl1
\gl2

\lf con`clude
\lx V
\alt Suffix
\gl1
\gl2

\lf con`coct
\lx V
\alt Suffix
\gl1
\gl2

\lf con`cord
\lx V
\alt Suffix
\gl1
\gl2

\lf con`cur
\lx V
\alt Suffix
\gl1
\gl2

\lf con`cuss
\lx V
\alt Suffix
\gl1
\gl2

\lf con`demn
\lx V
\alt Suffix
\gl1
\gl2

\lf `condensate
\lx V
\alt Suffix
\gl1
\gl2

\lf con`dense
\lx V
\alt Suffix
\gl1
\gl2

\lf condes`cend
\lx V
\alt Suffix
\gl1
\gl2

\lf con`dole
\lx V
\alt Suffix
\gl1
\gl2

\lf con`done
\lx V
\alt Suffix
\gl1
\gl2

\lf con`duce
\lx V
\alt Suffix
\gl1
\gl2

\lf con`duct
\lx V
\alt Suffix
\gl1
\gl2

\lf con`fabulate
\lx V
\alt Suffix
\gl1
\gl2

\lf con`fect
\lx V
\alt Suffix
\gl1
\gl2

\lf con`fer
\lx V
\alt Suffix
\gl1
\gl2

\lf con`fess
\lx V
\alt Suffix
\gl1
\gl2

\lf con`fide
\lx V
\alt Suffix
\gl1
\gl2

\lf con`figure
\lx V
\alt Suffix
\gl1
\gl2

\lf con`fine
\lx V
\alt Suffix
\gl1
\gl2

\lf con`firm
\lx V
\alt Suffix
\gl1
\gl2

\lf `confiscate
\lx V
\alt Suffix
\gl1
\gl2

\lf con`flict
\lx V
\alt Suffix
\gl1
\gl2

\lf con`form
\lx V
\alt Suffix
\gl1
\gl2

\lf con`found
\lx V
\alt Suffix
\gl1
\gl2

\lf con`front
\lx V
\alt Suffix
\gl1
\gl2

\lf con`fuse
\lx V
\alt Suffix
\gl1
\gl2

\lf con`fute
\lx V
\alt Suffix
\gl1
\gl2

\lf con`geal
\lx V
\alt Suffix
\gl1
\gl2

\lf con`gest
\lx V
\alt Suffix
\gl1
\gl2

\lf con`gratulate
\lx V
\alt Suffix
\gl1
\gl2

\lf `congregate
\lx V
\alt Suffix
\gl1
\gl2

\lf con`join
\lx V
\alt Suffix
\gl1
\gl2

\lf `conjugate
\lx V
\alt Suffix
\gl1
\gl2

\lf con`jure
\lx V
\alt Suffix
\gl1
\gl2

\lf con`nect
\lx V
\alt Suffix
\gl1
\gl2

\lf con`nive
\lx V
\alt Suffix
\gl1
\gl2

\lf con`note
\lx V
\alt Suffix
\gl1
\gl2

\lf `conquer
\lx V
\alt Suffix
\gl1
\gl2

\lf con`script
\lx V
\alt Suffix
\gl1
\gl2

\lf `consecrate
\lx V
\alt Suffix
\gl1
\gl2

\lf con`sent
\lx N-V
\alt Suffix
\gl1
\gl2

\lf con`serve
\lx V
\alt Suffix
\gl1
\gl2

\lf con`sider
\lx V
\alt Suffix
\gl1
\gl2

\lf con`sign
\lx V
\alt Suffix
\gl1
\gl2

\lf con`sist
\lx V
\alt Suffix
\gl1
\gl2

\lf con`sole
\lx V
\alt Suffix
\gl1
\gl2

\lf con`solidate
\lx V
\alt Suffix
\gl1
\gl2

\lf con`sort
\lx V
\alt Suffix
\gl1
\gl2

\lf con`spire
\lx V
\alt Suffix
\gl1
\gl2

\lf `constellate
\lx V
\alt Suffix
\gl1
\gl2

\lf `consternate
\lx V
\alt Suffix
\gl1
\gl2

\lf `constipate
\lx V
\alt Suffix
\gl1
\gl2

\lf `constitute
\lx V
\alt Suffix
\gl1
\gl2

\lf con`strain
\lx V
\alt Suffix
\gl1
\gl2

\lf con`strict
\lx V
\alt Suffix
\gl1
\gl2

\lf con`struct
\lx V
\alt Suffix
\gl1
\gl2

\lf con`strue
\lx V
\alt Suffix
\gl1
\gl2

\lf con`sult
\lx V
\alt Suffix
\gl1
\gl2

\lf con`sume
\lx V
\alt Suffix
\gl1
\gl2

\lf con`tain
\lx V
\alt Suffix
\gl1
\gl2

\lf con`taminate
\lx V
\alt Suffix
\gl1
\gl2

\lf `contemplate
\lx V
\alt Suffix
\gl1
\gl2

\lf con`tend
\lx V
\alt Suffix
\gl1
\gl2

\lf con`tent
\lx V
\alt Suffix
\gl1
\gl2

\lf con`test
\lx V
\alt Suffix
\gl1
\gl2

\lf con`tinue
\lx V
\alt Suffix
\gl1
\gl2

\lf con`tort
\lx V
\alt Suffix
\gl1
\gl2

\lf con`tract
\lx V
\alt Suffix
\gl1
\gl2

\lf contra`dict
\lx V
\alt Suffix
\gl1
\gl2

\lf con`trast
\lx V
\alt Suffix
\gl1
\gl2

\lf contra`vene
\lx V
\alt Suffix
\gl1
\gl2

\lf con`tribute
\lx V
\alt Suffix
\gl1
\gl2

\lf con`trive
\lx V
\alt Suffix
\gl1
\gl2

\lf con`trol
\lx V
\alt Suffix
\gl1
\gl2

\lf `controvert
\lx V
\alt Suffix
\gl1
\gl2

\lf con`tuse
\lx V
\alt Suffix
\gl1
\gl2

\lf conva`lesce
\lx V
\alt Suffix
\gl1
\gl2

\lf con`vect
\lx V
\alt Suffix
\gl1
\gl2

\lf con`vene
\lx V
\alt Suffix
\gl1
\gl2

\lf con`verge
\lx V
\alt Suffix
\gl1
\gl2

\lf con`verse
\lx V
\alt Suffix
\gl1
\gl2

\lf con`vert
\lx V
\alt Suffix
\gl1
\gl2

\lf con`vey
\lx V
\alt Suffix
\gl1
\gl2

\lf con`vict
\lx V
\alt Suffix
\gl1
\gl2

\lf con`vince
\lx V
\alt Suffix
\gl1
\gl2

\lf con`voke
\lx V
\alt Suffix
\gl1
\gl2

\lf `convolute
\lx V
\alt Suffix
\gl1
\gl2

\lf con`volve
\lx V
\alt Suffix
\gl1
\gl2

\lf con`vulse
\lx V
\alt Suffix
\gl1
\gl2

\lf `coo
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `cook
\lx V
\alt Suffix
\gl1
\gl2

\lf co`operate
\lx V
\alt Suffix
\gl1
\gl2

\lf `cope
\lx V
\alt Suffix
\gl1
\gl2

\lf `copulate
\lx V
\alt Suffix
\gl1
\gl2

\lf `copy
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `correlate
\lx V
\alt Suffix
\gl1
\gl2

\lf corres`pond
\lx V
\alt Suffix
\gl1
\gl2

\lf cor`roborate
\lx V
\alt Suffix
\gl1
\gl2

\lf cor`rode
\lx V
\alt Suffix
\gl1
\gl2

\lf `corrugate
\lx V
\alt Suffix
\gl1
\gl2

\lf co`ruscate
\lx V
\alt Suffix
\gl1
\gl2

\lf `couch
\lx V
\alt Suffix
\gl1
\gl2

\lf `cough
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `count
\lx N-V
\alt Suffix
\fea ~ajr14
\gl1
\gl2

\lf `counter
\lx V
\alt Suffix
\gl1
\gl2

\lf `countermand
\lx N-V
\alt Suffix
\gl1
\gl2

\lf counter`vail
\lx V
\alt Suffix
\gl1
\gl2

\lf `countrify
\lx V
\alt Suffix
\fea denom
\gl1 `country
\gl2

\lf `couple
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `course
\lx V
\alt Suffix
\gl1
\gl2

\lf `court
\lx V
\alt Suffix
\gl1
\gl2

\lf `covet
\lx V
\alt Suffix
\gl1
\gl2

\lf `cover
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `cower
\lx V
\alt Suffix
\gl1
\gl2

\lf `cozen
\lx V
\alt Suffix
\gl1
\gl2

\lf `crack
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `crackle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `craft
\lx V
\alt Suffix
\gl1
\gl2

\lf `cram
\lx V
\alt Suffix
\gl1
\gl2

\lf `cramp
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `crash
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `crave
\lx V
\alt Suffix
\gl1
\gl2

\lf `crawl
\lx V
\alt Suffix
\gl1
\gl2

\lf `craze
\lx V
\alt Suffix
\gl1
\gl2

\lf `creak
\lx N-V
\alt Suffix
\gl1
\gl2

\lf cre`ate
\lx V
\alt Suffix
\gl1
\gl2

\lf `cremate
\lx V
\alt Suffix
\gl1
\gl2

\lf `crimp
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `crimson
\lx V
\alt Suffix
\gl1
\gl2

\lf `cringe
\lx V
\alt Suffix
\gl1
\gl2

\lf `crinkle
\lx V
\alt Suffix
\gl1
\gl2

\lf `crisscross
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `criss-cross
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `croak
\lx N-V
\alt Suffix
\gl1
\gl2

\lf cro`chet
\lx V
\alt Suffix
\gl1
\gl2

\lf `croon
\lx V
\alt Suffix
\gl1
\gl2

\lf `crop
\lx V
\alt Suffix
\gl1
\gl2

\lf `cross
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf cross-ex`amine
\lx V
\alt Suffix
\gl1
\gl2

\lf `crosshatch
\lx V
\alt Suffix
\gl1
\gl2

\lf `crouch
\lx V
\alt Suffix
\gl1
\gl2

\lf `crow
\lx V
\alt Suffix
\gl1
\gl2

\lf `crucify
\lx V
\alt Suffix
\gl1
\gl2

\lf `cruise
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `crumble
\lx V
\alt Suffix
\gl1
\gl2

\lf `crump
\lx V
\alt Suffix
\gl1
\gl2

\lf `crumple
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `crunch
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `crush
\lx V
\alt Suffix
\gl1
\gl2

\lf `cry
\lx N-V
\alt Suffix
\gl1
\gl2

\lf crypt`analyze
\lx V
\alt Suffix
\gl1
\gl2

\lf `cuddle
\lx V
\alt Suffix
\gl1
\gl2

\lf `cuff
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `cull
\lx V
\alt Suffix
\gl1
\gl2

\lf `culminate
\lx V
\alt Suffix
\gl1
\gl2

\lf `cultivate
\lx V
\alt Suffix
\gl1
\gl2

\lf `culture
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `cumulate
\lx V
\alt Suffix
\gl1
\gl2

\lf `curb
\lx V
\alt Suffix
\gl1
\gl2

\lf `curdle
\lx V
\alt Suffix
\gl1
\gl2

\lf `curl
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `curry
\lx V
\alt Suffix
\gl1
\gl2

\lf `curse
\lx N-V
\alt Suffix
\gl1
\gl2

\lf cur`tail
\lx V
\alt Suffix
\gl1
\gl2

\lf `cuss
\lx V
\alt Suffix
\gl1
\gl2

\lf `cycled
\lx V
\alt Clitic
\fea ed
\gl1 `cycle
\gl2

\lf `cycled
\lx V
\alt Clitic
\fea en
\gl1 `cycle
\gl2

\lf `cycling
\lx V
\alt PT_Suffix
\fea ing
\gl1 `cycle
\gl2


\lf `dabble
\lx V
\alt Suffix
\gl1
\gl2

\lf `dally
\lx V
\alt Suffix
\gl1
\gl2

\lf `damage
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `damn
\lx V
\alt Suffix
\gl1
\gl2

\lf `dance
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `dangle
\lx V
\alt Suffix
\gl1
\gl2

\lf `dapple
\lx V
\alt Suffix
\gl1
\gl2

\lf dare`say
\lx V
\alt Suffix
\gl1
\gl2

\lf `darkle
\lx V
\alt Suffix
\gl1
\gl2

\lf `darn
\lx V
\alt Suffix
\gl1
\gl2

\lf `dash
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `daub
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `daunt
\lx V
\alt Suffix
\gl1
\gl2

\lf `daze
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `dazzle
\lx V
\alt Suffix
\gl1
\gl2

\lf de`base
\lx V
\alt Suffix
\gl1
\gl2

\lf de`bate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`bauch
\lx V
\alt Suffix
\gl1
\gl2

\lf de`bilitate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`bunk
\lx V
\alt Suffix
\fea denom
\gl1 `bunk
\gl2

\lf de`buted
\lx V
\alt Clitic
\fea ed
\gl1 de`but
\gl2

\lf de`buted
\lx V
\alt PT_Suffix
\fea en
\gl1 de`but
\gl2

\lf de`buting
\lx V
\alt PT_Suffix
\fea ing
\gl1 de`but
\gl2

\lf de`caffeinate
\lx V
\alt Suffix
\fea denom
\gl1 caf`feine
\gl2

\lf de`cant
\lx V
\alt Suffix
\gl1
\gl2

\lf de`capitate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`cay
\lx N-V
\alt Suffix
\gl1
\gl2

\lf de`cease
\lx V
\alt Suffix
\gl1
\gl2

\lf de`ceive
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf de`celerate
\lx V
\alt Suffix
\gl1 ac`celerate
\gl2

\lf de`cide
\lx V
\alt Suffix
\gl1
\gl2

\lf `decimate
\lx V
\alt Suffix
\gl1
\gl2

\lf `deck
\lx V
\alt Suffix
\gl1
\gl2

\lf de`claim
\lx V
\alt Suffix
\gl1
\gl2

\lf de`clare
\lx V
\alt Suffix
\gl1
\gl2

\lf de`cline
\lx N-V
\alt Suffix
\gl1
\gl2

\lf de`coct
\lx V
\alt Suffix
\gl1
\gl2

\lf `decorate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`corticate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`crease
\lx V
\alt Suffix
\gl1
\gl2

\lf `decrement
\lx V
\alt Suffix
\gl1
\gl2

\lf de`cry
\lx V
\alt Suffix
\gl1
\gl2

\lf de`crypt
\lx V
\alt Suffix
\gl1
\gl2

\lf `dedicate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`duce
\lx V
\alt Suffix
\gl1
\gl2

\lf de`duct
\lx V
\alt Suffix
\gl1
\gl2

\lf `deem
\lx V
\alt Suffix
\gl1
\gl2

\lf de`face
\lx V
\alt Suffix
\gl1
\gl2

\lf de`fame
\lx V
\alt Suffix
\gl1
\gl2

\lf de`fang
\lx V
\alt Suffix
\fea denom
\gl1 `fang
\gl2

\lf de`fat
\lx V
\alt Suffix
\fea denom
\gl1 `fat
\gl2

\lf de`feat
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `defecate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`fect
\lx V
\alt Suffix
\gl1
\gl2

\lf de`fend
\lx V
\alt Suffix
\gl1
\gl2

\lf de`fer
\lx V
\alt Suffix
\gl1
\gl2

\lf de`file
\lx V
\alt Suffix
\gl1
\gl2

\lf de`fine
\lx V
\alt Suffix
\gl1
\gl2

\lf de`flate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`flect
\lx V
\alt Suffix
\gl1
\gl2

\lf de`foliate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`form
\lx V
\alt Suffix
\gl1
\gl2

\lf de`fraud
\lx V
\alt Suffix
\gl1
\gl2

\lf de`fray
\lx V
\alt Suffix
\gl1
\gl2

\lf de`fuse
\lx V
\alt Suffix
\gl1
\gl2

\lf de`fy
\lx V
\alt Suffix
\gl1
\gl2

\lf de`germ
\lx V
\alt Suffix
\fea denom
\gl1 `germ
\gl2

\lf de`grade
\lx V
\alt Suffix
\gl1
\gl2

\lf de`horn
\lx V
\alt Suffix
\fea denom
\gl1 `horn
\gl2

\lf `deify
\lx V
\alt Suffix
\gl1
\gl2

\lf `deign
\lx V
\alt Suffix
\gl1
\gl2

\lf de`ject
\lx V
\alt Suffix
\gl1
\gl2

\lf de`lay
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `delegate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`lete
\lx V
\alt Suffix
\gl1
\gl2

\lf de`light
\lx N-V
\alt Suffix
\gl1
\gl2

\lf de`limit
\lx V
\alt Suffix
\gl1
\gl2

\lf de`lineate
\lx V
\alt Suffix
\gl1
\gl2

\lf deli`quesce
\lx V
\alt Suffix
\gl1
\gl2

\lf de`liver
\lx V
\alt Suffix
\gl1
\gl2

\lf de`louse
\lx V
\alt Suffix
\fea denom
\gl1 `louse
\gl2

\lf de`lude
\lx V
\alt Suffix
\gl1
\gl2

\lf `delve
\lx V
\alt Suffix
\gl1
\gl2

\lf de`mand
\lx N-V
\alt Suffix
\gl1
\gl2

\lf de`marcate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`mark
\lx V
\alt Suffix
\gl1
\gl2

\lf de`mean
\lx V
\alt Suffix
\gl1
\gl2

\lf de`mit
\lx V
\alt Suffix
\gl1
\gl2

\lf de`molish
\lx V
\alt Suffix
\gl1
\gl2

\lf `demonstrate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`mote
\lx V
\alt Suffix
\gl1
\gl2

\lf de`mur
\lx V
\alt Suffix
\gl1
\gl2

\lf de`nature
\lx V
\alt Suffix
\gl1
\gl2

\lf `denigrate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`note
\lx V
\alt Suffix
\gl1
\gl2

\lf de`nounce
\lx V
\alt Suffix
\gl1
\gl2

\lf de`nude
\lx V
\alt Suffix
\fea deadj
\gl1 `nude
\gl2

\lf de`ny
\lx V
\alt Suffix
\gl1
\gl2

\lf de`part
\lx V
\alt Suffix
\gl1
\gl2

\lf de`pend
\lx V
\alt Suffix
\gl1
\gl2

\lf de`pict
\lx V
\alt Suffix
\gl1
\gl2

\lf de`plane
\lx V
\alt Suffix
\fea denom
\gl1 `plane
\gl2

\lf de`plete
\lx V
\alt Suffix
\gl1
\gl2

\lf de`plore
\lx V
\alt Suffix
\gl1
\gl2

\lf de`ploy
\lx V
\alt Suffix
\gl1
\gl2

\lf de`port
\lx V
\alt Suffix
\gl1
\gl2

\lf de`pose
\lx V
\alt Suffix
\gl1
\gl2

\lf de`posit
\lx N-V
\alt Suffix
\gl1
\gl2

\lf de`prave
\lx V
\alt Suffix
\gl1
\gl2

\lf `deprecate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`preciate
\lx V
\alt Suffix
\gl1
\gl2

\lf `depredate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`press
\lx V
\alt Suffix
\gl1
\gl2

\lf de`prive
\lx V
\alt Suffix
\gl1
\gl2

\lf de`pute
\lx V
\alt Suffix
\gl1
\gl2

\lf `deputize
\lx V
\alt Suffix
\fea denom
\gl1 `deputy
\gl2

\lf de`rail
\lx V
\alt Suffix
\gl1
\gl2

\lf de`range
\lx V
\alt Suffix
\gl1
\gl2

\lf de`rate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`ride
\lx V
\alt Suffix
\gl1
\gl2

\lf de`rive
\lx V
\alt Suffix
\gl1
\gl2

\lf `derogate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`salinate
\lx V
\alt Suffix
\fea denom
\gl1 `saline
\gl2

\lf des`cend
\lx V
\alt Suffix
\gl1
\gl2

\lf des`cribe
\lx V
\alt Suffix
\gl1
\gl2

\lf de`scry
\lx V
\alt Suffix
\gl1
\gl2

\lf `desecrate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`sert
\lx V
\alt Suffix
\gl1
\gl2

\lf de`serve
\lx V
\alt Suffix
\gl1
\gl2

\lf `desicate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`sign
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `designate
\lx N-V
\alt Suffix
\gl1
\gl2

\lf de`sire
\lx N-V
\alt Suffix
\gl1
\gl2

\lf de`sist
\lx V
\alt Suffix
\gl1
\gl2

\lf de`spair
\lx N-V
\alt Suffix
\gl1
\gl2

\lf de`spise
\lx V
\alt Suffix
\gl1
\gl2

\lf de`spoil
\lx V
\alt Suffix
\gl1
\gl2

\lf de`spond
\lx V
\alt Suffix
\gl1
\gl2

\lf `destine
\lx V
\alt Suffix
\gl1
\gl2

\lf de`stroy
\lx V
\alt Suffix
\gl1
\gl2

\lf de`struct
\lx V
\alt Suffix
\gl1
\gl2

\lf de`tach
\lx V
\alt Suffix
\gl1
\gl2

\lf de`tail
\lx V
\alt Suffix
\gl1
\gl2

\lf de`tain
\lx V
\alt Suffix
\gl1
\gl2

\lf de`tect
\lx V
\alt Suffix
\gl1
\gl2

\lf de`ter
\lx V
\alt Suffix
\gl1
\gl2

\lf de`teriorate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`termine
\lx V
\alt Suffix
\gl1
\gl2

\lf de`test
\lx V
\alt Suffix
\gl1
\gl2

\lf de`throne
\lx V
\alt Suffix
\fea denom
\gl1 `throne
\gl2

\lf `detonate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`toxify
\lx V
\alt Suffix
\fea denom
\gl1 `toxin
\gl2

\lf de`tract
\lx V
\alt Suffix
\gl1
\gl2

\lf `devastate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`velop
\lx V
\alt Suffix
\gl1
\gl2

\lf de`vein
\lx V
\alt Suffix
\fea denom
\gl1 `vein
\gl2

\lf `deviate
\lx V
\alt Suffix
\gl1
\gl2

\lf de`vise
\lx V
\alt Suffix
\gl1
\gl2

\lf de`volve
\lx V
\alt Suffix
\gl1
\gl2

\lf de`vote
\lx V
\alt Suffix
\gl1
\gl2

\lf de`vour
\lx V
\alt Suffix
\gl1
\gl2

\lf diag`nose
\lx V
\alt Suffix
\gl1
\gl2

\lf `dictate
;lf dic`tate
\lx V
\alt Suffix
\gl1
\gl2

\lf `diddle
\lx V
\alt Suffix
\gl1
\gl2

\lf `die
\lx V
\alt Suffix
\gl1
\gl2

;\lf `dying
;\lx V
;\alt PT_Suffix
;\fea ing
;\gl1 `die
;\gl2

\lf `differ
\lx V
\alt Suffix
\gl1
\gl2

\lf differ`entiate
\lx V
\alt Suffix
\fea deadj
\gl1 `different
\gl2

\lf dif`fract
\lx V
\alt Suffix
\gl1
\gl2

\lf dif`fuse
\lx V
\alt Suffix
\gl1
\gl2

\lf di`gest
\lx V
\alt Suffix
\gl1
\gl2

\lf `dignify
\lx V
\alt Suffix
\gl1
\gl2

\lf di`gress
\lx V
\alt Suffix
\gl1
\gl2

\lf di`lapidate
\lx V
\alt Suffix
\gl1
\gl2

\lf `dilate
\lx V
\alt Suffix
\gl1
\gl2

\lf di`lute
\lx V
\alt Suffix
\gl1
\gl2

\lf di`minish
\lx V
\alt Suffix
\gl1
\gl2

\lf `dine
\lx V
\alt Suffix
\gl1
\gl2

\lf `dip
\lx N-V
\alt Suffix
\gl1
\gl2

\lf di`rect
\lx V
\alt Suffix
\gl1
\gl2

\lf `dirty
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`able
\lx V
\alt Suffix
\fea deadj
\gl1 `able
\gl2

\lf disam`biguate
\lx V
\alt Suffix
\fea deadj
\gl1 am`biguous
\gl2

\lf dis`appoint
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`burse
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`card
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`cern
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`comfit
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`concert
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`count
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`courage
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`cover
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`criminate
\lx AJ-V
\alt Suffix
\gl1
\gl2

\lf dis`cuss
\lx V
\alt Suffix
\gl1
\gl2

\lf disem`bowel
\lx V
\alt Suffix
\fea denom
\gl1 `bowel
\gl2

\lf dis`guise
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`gruntle
\lx V
\alt Suffix
\gl1
\gl2

\lf di`shevel
\lx V
\alt Suffix
\gl1
\gl2

\lf disil`lusion
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`joint
\lx V
\alt Suffix
\fea denom
\gl1 `joint
\gl2

\lf dis`mantle
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`mast
\lx V
\alt Suffix
\fea denom
\gl1 `mast
\gl2

\lf dis`may
\lx N-V
\alt Suffix
\gl1
\gl2

\lf dis`member
\lx V
\alt Suffix
\fea denom
\gl1 `member
\gl2

\lf dis`miss
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`parage
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`pel
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`pense
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`perse
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`pose
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`play
\lx N-V
\alt Suffix
\gl1
\gl2

\lf dis`pute
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`rupt
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`sect
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`sent
\lx N-V
\alt Suffix
\gl1
\gl2

\lf dis`semble
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`seminate
\lx V
\alt Suffix
\gl1
\gl2

\lf `dissipate
\lx V
\alt Suffix
\gl1
\gl2

\lf `dissertate
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`sociate
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`solve
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`suade
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`till
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`tinguish
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`tort
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`tract
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`tribute
\lx V
\alt Suffix
\gl1
\gl2

\lf dis`turb
\lx V
\alt Suffix
\gl1
\gl2

\lf `dither
\lx N-V
\alt Suffix
\gl1
\gl2

\lf di`verge
\lx V
\alt Suffix
\gl1
\gl2

\lf di`vert
\lx V
\alt Suffix
\gl1
\gl2

\lf di`vest
\lx V
\alt Suffix
\gl1
\gl2

\lf di`vide
\lx V
\alt Suffix
\gl1
\gl2

\lf di`vine
\lx V
\alt Suffix
\gl1
\gl2

\lf di`vorce
\lx N-V
\alt Suffix
\gl1
\gl2

\lf di`vulge
\lx V
\alt Suffix
\gl1
\gl2

\lf `dock
\lx V
\alt Suffix
\gl1
\gl2

\lf `dodge
\lx V
\alt Suffix
\gl1
\gl2

\lf `doff
\lx V
\alt Suffix
\gl1
\gl2

\lf `dole
\lx V
\alt Suffix
\gl1
\gl2

\lf do`mesticate
\lx V
\alt Suffix
\fea deadj
\gl1 do`mestic
\gl2

\lf `dominate
\lx V
\alt Suffix
\gl1
\gl2

\lf domi`neer
\lx V
\alt Suffix
\gl1
\gl2

\lf `don
\lx V
\alt Suffix
\gl1
\gl2

\lf `donate
\lx V
\alt Suffix
\gl1
\gl2

\lf `doorkeep
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `dote
\lx V
\alt Suffix
\gl1
\gl2

\lf `doubt
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `douse
\lx V
\alt Suffix
\gl1
\gl2

\lf `down
\lx V
\alt Suffix
\gl1
\gl2

\lf `downgrade
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `download
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `downplay
\lx V
\alt Suffix
\gl1
\gl2

\lf `downsize
\lx V
\alt Suffix
\gl1
\gl2

\lf `doze
\lx V
\alt Suffix
\gl1
\gl2

\lf `draft
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `drag
\lx V
\alt Suffix
\gl1
\gl2

\lf `draggle
\lx V
\alt Suffix
\gl1
\gl2

\lf `drain
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `dramatize
\lx V
\alt Suffix
\fea denom
\gl1 `drama
\gl2

\lf `drawl
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `dread
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `dredge
\lx V
\alt Suffix
\gl1
\gl2

\lf `drench
\lx V
\alt Suffix
\gl1
\gl2

\lf `dress
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `dressmake
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `dribble
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `drift
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `drill
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `drip
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `drone
\lx V
\alt Suffix
\gl1
\gl2

\lf `drool
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `droop
\lx V
\alt Suffix
\gl1
\gl2

\lf `drop
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `drown
\lx V
\alt Suffix
\gl1
\gl2

\lf `drowse
\lx V
\alt Suffix
\gl1
\gl2

\lf `drub
\lx V
\alt Suffix
\gl1
\gl2

\lf `dub
\lx V
\alt Suffix
\gl1
\gl2

\lf `duck
\lx V
\alt Suffix
\gl1
\gl2

\lf `duel
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `dump
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `dun
\lx V
\alt Suffix
\gl1
\gl2

\lf `dunk
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `dupe
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `dwindle
\lx V
\alt Suffix
\gl1
\gl2


\lf `earn
\lx V
\alt Suffix
\gl1
\gl2

\lf `eavesdrop
\lx V
\alt Suffix
\gl1
\gl2

\lf `ebb
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `echo
\lx N-V
\alt Suffix
\gl1
\gl2

\lf ec`lipse
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `edify
\lx V
\alt Suffix
\gl1
\gl2

\lf `edit
\lx V
\alt Suffix
\gl1
\gl2

\lf `educate
\lx V
\alt Suffix
\gl1
\gl2

\lf ef`face
\lx V
\alt Suffix
\gl1
\gl2

\lf ef`fect
\lx N-V
\alt Suffix
\gl1
\gl2

\lf ef`fectuate
\lx V
\alt Suffix
\gl1
\gl2

\lf effer`vesce
\lx V
\alt Suffix
\gl1
\gl2

\lf efflo`resce
\lx V
\alt Suffix
\gl1
\gl2

\lf ef`fuse
\lx V
\alt Suffix
\gl1
\gl2

\lf e`jaculate
\lx V
\alt Suffix
\gl1
\gl2

\lf e`ject
\lx V
\alt Suffix
\gl1
\gl2

\lf `eke
\lx V
\alt Suffix
\gl1
\gl2

\lf e`lapse
\lx V
\alt Suffix
\gl1
\gl2

\lf e`late
\lx V
\alt Suffix
\gl1
\gl2

\lf `elect
\lx V
\alt Suffix
\gl1
\gl2

\lf e`lectrify
\lx V
\alt Suffix
\fea deadj
\gl1 e`lectric
\gl2

\lf e`lectrocute
\lx V
\alt Suffix
\gl1
\gl2

\lf `elevate
\lx V
\alt Suffix
\gl1
\gl2

\lf e`licit
\lx V
\alt Suffix
\gl1
\gl2

\lf e`lide
\lx V
\alt Suffix
\gl1
\gl2

\lf e`liminate
\lx V
\alt Suffix
\gl1
\gl2

\lf e`longate
\lx V
\alt Suffix
\gl1
\gl2

\lf e`lope
\lx V
\alt Suffix
\gl1
\gl2

\lf e`lucidate
\lx V
\alt Suffix
\gl1
\gl2

\lf e`lude
\lx V
\alt Suffix
\gl1
\gl2

\lf e`maciate
\lx V
\alt Suffix
\gl1
\gl2

\lf `emanate
\lx V
\alt Suffix
\gl1
\gl2

\lf e`mancipate
\lx V
\alt Suffix
\gl1
\gl2

\lf e`masculate
\lx V
\alt Suffix
\gl1
\gl2

\lf em`balm
\lx V
\alt Suffix
\gl1
\gl2

\lf em`bark
\lx V
\alt Suffix
\gl1
\gl2

\lf em`barrass
\lx V
\alt Suffix
\gl1
\gl2

\lf em`bed
\lx V
\alt Suffix
\gl1
\gl2

\lf em`bellish
\lx V
\alt Suffix
\gl1
\gl2

\lf em`bezzle
\lx V
\alt Suffix
\gl1
\gl2

\lf em`bolden
\lx V
\alt Suffix
\fea deadj
\gl1 `bold
\gl2

\lf em`boss
\lx V
\alt Suffix
\gl1
\gl2

\lf em`bower
\lx V
\alt Suffix
\gl1
\gl2

\lf em`brace
\lx V
\alt Suffix
\gl1
\gl2

\lf em`broider
\lx V
\alt Suffix
\gl1
\gl2

\lf em`broil
\lx V
\alt Suffix
\gl1
\gl2

\lf e`mend
\lx V
\alt Suffix
\gl1
\gl2

\lf e`merge
\lx V
\alt Suffix
\gl1
\gl2

\lf `emigrate
\lx V
\alt Suffix
\gl1
\gl2

\lf e`mit
\lx V
\alt Suffix
\gl1
\gl2

\lf `emphasize
\lx V
\alt Suffix
\fea
\gl1
\gl2

\lf em`ploy
\lx V
\alt Suffix
\gl1
\gl2

\lf `emulate
\lx V
\alt Suffix
\gl1
\gl2

\lf e`mulsify
\lx V
\alt Suffix
\gl1
\gl2

\lf en`act
\lx V
\alt Suffix
\gl1 `act
\gl2

\lf en`amor
\lx V
\alt Suffix
\gl1
\gl2

\lf en`amour
\lx V
\alt Suffix
\gl1
\gl2

\lf en`capsulate
\lx V
\alt Suffix
\fea denom
\gl1 `capsule
\gl2

\lf en`case
\lx V
\alt Suffix
\fea denom
\gl1 `case
\gl2

\lf en`chant
\lx V
\alt Suffix
\gl1
\gl2

\lf en`close
\lx V
\alt Suffix
\gl1 `close
\gl2

\lf en`compass
\lx V
\alt Suffix
\gl1
\gl2

\lf en`counter
\lx N-V
\alt Suffix
\gl1
\gl2

\lf en`crypt
\lx V
\alt Suffix
\gl1
\gl2

\lf en`croach
\lx V
\alt Suffix
\gl1
\gl2

\lf en`cumber
\lx V
\alt Suffix
\gl1
\gl2

\lf en`deavor
\lx N-V
\alt Suffix
\gl1
\gl2

\lf en`deavour
\lx N-V
\alt Suffix
\gl1
\gl2

\lf en`dorse
\lx V
\alt Suffix
\gl1
\gl2

\lf en`dow
\lx V
\alt Suffix
\gl1
\gl2

\lf en`due
\lx V
\alt Suffix
\gl1
\gl2

\lf en`dure
\lx V
\alt Suffix
\gl1
\gl2

\lf `energize
\lx V
\alt Suffix
\fea denom
\gl1 `energy
\gl2

\lf `enervate
\lx V
\alt Suffix
\gl1
\gl2

\lf en`fold
\lx V
\alt Suffix
\gl1 `fold
\gl2

\lf en`force
\lx V
\alt Suffix
\gl1 `force
\gl2

\lf en`gage
\lx V
\alt Suffix
\gl1
\gl2

\lf en`gender
\lx V
\alt Suffix
\gl1
\gl2

\lf engin`eer
\lx V
\alt Suffix
\fea denom
\gl1 `engine
\gl2

\lf en`graft
\lx V
\alt Suffix
\gl1 `graft
\gl2

\lf en`grave
\lx V
\alt Suffix
\gl1
\gl2

\lf en`gross
\lx V
\alt Suffix
\gl1
\gl2

\lf en`gulf
\lx V
\alt Suffix
\gl1
\gl2

\lf en`hance
\lx V
\alt Suffix
\gl1
\gl2

\lf en`join
\lx V
\alt Suffix
\gl1
\gl2

\lf en`kindle
\lx V
\alt Suffix
\gl1 `kindle
\gl2

\lf en`lighten
\lx V
\alt Suffix
\fea denom
\gl1 `light
\gl2

\lf en`liven
\lx V
\alt Suffix
\fea deadj
\gl1 `live
\gl2

\lf en`list
\lx V
\alt Suffix
\gl1
\gl2

\lf en`quire
\lx V
\alt Suffix
\gl1
\gl2

\lf en`roll
\lx V
\alt Suffix
\gl1
\gl2

\lf en`sanguine
\lx V
\alt Suffix
\gl1
\gl2

\lf en`sconce
\lx V
\alt Suffix
\gl1
\gl2

\lf en`sue
\lx V
\alt Suffix
\gl1
\gl2

\lf `enter
\lx V
\alt Suffix
\gl1
\gl2

\lf enter`tain
\lx V
\alt Suffix
\gl1
\gl2

\lf en`tail
\lx V
\alt Suffix
\gl1
\gl2

\lf en`tangle
\lx V
\alt Suffix
\fea rev
\gl1 `tangle
\gl2

\lf en`thrall
\lx V
\alt Suffix
\gl1
\gl2

\lf en`tice
\lx V
\alt Suffix
\gl1
\gl2

\lf en`treat
\lx V
\alt Suffix
\gl1
\gl2

\lf e`numerate
\lx V
\alt Suffix
\gl1
\gl2

\lf e`nunciate
\lx V
\alt Suffix
\gl1
\gl2

\lf en`velop
\lx V
\alt Suffix
\gl1
\gl2

\lf en`visage
\lx V
\alt Suffix
\gl1
\gl2

\lf `envy
\lx N-V
\alt Suffix
\gl1
\gl2

\lf e`quate
\lx V
\alt Suffix
\gl1
\gl2

\lf e`quilibrate
\lx V
\alt Suffix
\gl1
\gl2

\lf e`quip
\lx V
\alt Suffix
\gl1
\gl2

\lf `equipoise
\lx V
\alt Suffix
\gl1
\gl2

\lf e`quivocate
\lx V
\alt Suffix
\gl1
\gl2

\lf e`radicate
\lx V
\alt Suffix
\gl1
\gl2

\lf e`rase
\lx V
\alt Suffix
\gl1
\gl2

\lf e`rode
\lx V
\alt Suffix
\gl1
\gl2

\lf `err
\lx V
\alt Suffix
\gl1
\gl2

\lf e`rupt
\lx V
\alt Suffix
\gl1
\gl2

\lf `escalate
\lx V
\alt Suffix
\gl1
\gl2

\lf es`cape
\lx N-V
\alt Suffix
\gl1
\gl2

\lf es`chew
\lx V
\alt Suffix
\gl1
\gl2

\lf es`cort
\lx V
\alt Suffix
\gl1
\gl2

\lf es`pouse
\lx V
\alt Suffix
\gl1
\gl2

\lf es`py
\lx V
\alt Suffix
\gl1
\gl2

\lf es`say
\lx V
\alt Suffix
\gl1
\gl2

\lf es`tablish
\lx V
\alt Suffix
\gl1
\gl2

\lf es`teem
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `estimate
\lx N-V
\alt Suffix
\gl1
\gl2

\lf es`top
\lx V
\alt Suffix
\gl1
\gl2

\lf es`trange
\lx V
\alt Suffix
\gl1
\gl2

\lf `etch
\lx V
\alt Suffix
\gl1
\gl2

\lf `etiolate
\lx V
\alt Suffix
\gl1
\gl2

\lf `eulogize
\lx V
\alt Suffix
\fea denom
\gl1 `eulogy
\gl2

\lf e`vacuate
\lx V
\alt Suffix
\gl1
\gl2

\lf e`vade
\lx V
\alt Suffix
\gl1
\gl2

\lf e`valuate
\lx V
\alt Suffix
\gl1
\gl2

\lf evan`esce
\lx V
\alt Suffix
\gl1
\gl2

\lf e`vaporate
\lx V
\alt Suffix
\gl1
\gl2

\lf e`ventuate
\lx V
\alt Suffix
\gl1
\gl2

\lf e`vict
\lx V
\alt Suffix
\gl1
\gl2

\lf e`vince
\lx V
\alt Suffix
\gl1
\gl2

\lf e`voke
\lx V
\alt Suffix
\gl1
\gl2

\lf e`volve
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`acerbate
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`act
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`aggerate
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`alt
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`amine
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`asperate
\lx V
\alt Suffix
\gl1
\gl2

\lf `excavate
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`ceed
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`cel
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`cept
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`change
\lx N-V
\alt Suffix
\gl1
\gl2

\lf ex`cise
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`cite
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`claim
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`clude
\lx V
\alt Suffix
\gl1
\gl2

\lf excom`municate
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`coriate
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`crete
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`cruciate
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`culpate
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`cuse
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `execrate
\lx V
\alt Suffix
\gl1
\gl2

\lf `execute
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`emplify
\lx V
\alt Suffix
\fea denom
\gl1 ex`ample
\gl2

\lf `exercise
\lx N-V
\alt Suffix
\gl1
\gl2

\lf ex`ert
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`hale
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`haust
\lx N-V
\alt Suffix
\gl1
\gl2

\lf ex`hibit
\lx N-V
\alt Suffix
\gl1
\gl2

\lf ex`hilarate
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`hort
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`hume
\lx V
\alt Suffix
\gl1
\gl2

\lf `exile
\lx N-V
\alt Suffix
\gl1
\gl2

\lf ex`ist
\lx V
\alt Suffix
\gl1
\gl2

\lf `exit
\lx N-V
\alt Suffix
\gl1
\gl2

\lf ex`onerate
\lx V
\alt Suffix
\gl1
\gl2

\lf `exorcise
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`pand
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`patiate
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`patriate
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`pect
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`pectorate
\lx V
\alt Suffix
\gl1
\gl2

\lf `expedite
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`pel
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`pend
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`perience
\lx N-V
\alt Suffix
\gl1
\gl2

\lf ex`periment
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `expiate
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`pire
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`plain
\lx V
\alt Suffix
\gl1
\gl2

\lf `explicate
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`plode
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`ploit
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`plore
\lx V
\alt Suffix
\gl1
\gl2

\lf expo`nentiate
\lx V
\alt Suffix
\fea denom
\gl1 ex`ponent
\gl2

\lf ex`port
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`pose
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`posit
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`pound
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`press
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`propriate
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`punge
\lx V
\alt Suffix
\gl1
\gl2

\lf `expurgate
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`sanguinate
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`tend
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`tenuate
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`terminate
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`tinguish
\lx V
\alt Suffix
\gl1
\gl2

\lf `extirpate
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`tol
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`tort
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`tract
\lx V
\alt Suffix
\gl1
\gl2

\lf `extradite
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`trapolate
\lx V
\alt Suffix
\gl1
\gl2

\lf `extricate
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`trude
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`ude
\lx V
\alt Suffix
\gl1
\gl2

\lf ex`ult
\lx V
\alt Suffix
\gl1
\gl2


\lf `fabricate
\lx V
\alt Suffix
\gl1
\gl2

\lf fa`cilitate
\lx V
\alt Suffix
\gl1
\gl2

\lf `fade
\lx V
\alt Suffix
\gl1
\gl2

\lf `fake
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `fag
\lx V
\alt Suffix
\gl1
\gl2

\lf `fail
\lx V
\alt Suffix
\gl1
\gl2

\lf `faint
\lx V
\alt Suffix
\gl1
\gl2

\lf `falter
\lx V
\alt Suffix
\gl1
\gl2

\lf `famish
\lx V
\alt Suffix
\gl1
\gl2

\lf `fan
\lx V
\alt Suffix
\gl1
\gl2

\lf `fancy
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `fantasize
\lx V
\alt Suffix
\fea denom
\gl1 `fantasy
\gl2

\lf `fare
\lx V
\alt Suffix
\gl1
\gl2

\lf `farrow
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `fascinate
\lx V
\alt Suffix
\gl1
\gl2

\lf `fast
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `fathom
\lx V
\alt Suffix
\gl1
\gl2

\lf `favor
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `favour
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `fawn
\lx V
\alt Suffix
\gl1
\gl2

\lf `faze
\lx V
\alt Suffix
\gl1
\gl2

\lf `fear
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `feign
\lx V
\alt Suffix
\gl1
\gl2

\lf `feint
\lx V
\alt Suffix
\gl1
\gl2

\lf `fell
\lx V
\alt Suffix
\gl1
\gl2

\lf `fend
\lx V
\alt Suffix
\gl1
\gl2

\lf fer`ment
\lx V
\alt Suffix
\gl1
\gl2

\lf `fetch
\lx V
\alt Suffix
\gl1
\gl2

\lf `fib
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `fidget
\lx V
\alt Suffix
\gl1
\gl2

\lf `filch
\lx V
\alt Suffix
\gl1
\gl2

\lf `file
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `filibuster
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `fill
\lx V
\alt Suffix
\gl1
\gl2

\lf `fillip
\lx V
\alt Suffix
\gl1
\gl2

\lf `filmmake
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `filter
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `finish
\lx V
\alt Suffix
\gl1
\gl2

\lf `firefight
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `fix
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `fixate
\lx V
\alt Suffix
\gl1
\gl2

\lf `fizz
\lx V
\alt Suffix
\gl1
\gl2

\lf `fizzle
\lx V
\alt Suffix
\gl1
\gl2

\lf `flabbergast
\lx V
\alt Suffix
\gl1
\gl2

\lf `flagellate
\lx V
\alt Suffix
\gl1
\gl2

\lf `flag
\lx V
\alt Suffix
\gl1
\gl2

\lf `flail
\lx V
\alt Suffix
\gl1
\gl2

\lf `flap
\lx V
\alt Suffix
\gl1
\gl2

\lf `flare
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `flash
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `flatter
\lx V
\alt Suffix
\gl1
\gl2

\lf `flaunt
\lx V
\alt Suffix
\gl1
\gl2

\lf `fledge
\lx V
\alt Suffix
\gl1
\gl2

\lf `fletch
\lx V
\alt Suffix
\gl1
\gl2

\lf `flex
\lx V
\alt Suffix
\gl1
\gl2

\lf `flick
\lx V
\alt Suffix
\gl1
\gl2

\lf `flinch
\lx V
\alt Suffix
\gl1
\gl2

\lf `flip
\lx V
\alt Suffix
\gl1
\gl2

\lf `flipflop
\lx V
\alt Suffix
\gl1
\gl2

\lf `flirt
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `flit
\lx V
\alt Suffix
\gl1
\gl2

\lf `float
\lx V
\alt Suffix
\gl1
\gl2

\lf `flog
\lx V
\alt Suffix
\gl1
\gl2

\lf `flop
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `flounce
\lx V
\alt Suffix
\gl1
\gl2

\lf `flounder
\lx V
\alt Suffix
\gl1
\gl2

\lf `flourish
\lx V
\alt Suffix
\gl1
\gl2

\lf `flout
\lx V
\alt Suffix
\gl1
\gl2

\lf `flow
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `flub
\lx V
\alt Suffix
\gl1
\gl2

\lf `fluctuate
\lx V
\alt Suffix
\gl1
\gl2

\lf `flunk
\lx V
\alt Suffix
\gl1
\gl2

\lf fluo`resce
\lx V
\alt Suffix
\gl1
\gl2

\lf `fluoridate
\lx V
\alt Suffix
\fea denom
\gl1 `fluoride
\gl2

\lf `flush
\lx V
\alt Suffix
\gl1
\gl2

\lf `fluster
\lx V
\alt Suffix
\gl1
\gl2

\lf `flutter
\lx V
\alt Suffix
\gl1
\gl2

\lf `foil
\lx V
\alt Suffix
\gl1
\gl2

\lf `foist
\lx V
\alt Suffix
\gl1
\gl2

\lf `fold
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `foliate
\lx V
\alt Suffix
\gl1
\gl2

\lf `follow
\lx V
\alt Suffix
\gl1
\gl2

\lf `foment
\lx V
\alt Suffix
\gl1
\gl2

\lf `fondle
\lx V
\alt Suffix
\gl1
\gl2

\lf `foot
\lx V
\alt Suffix
\gl1
\gl2

\lf `forage
\lx V
\alt Suffix
\gl1
\gl2

\lf `force
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `ford
\lx V
\alt Suffix
\gl1
\gl2

\lf fore`bode
\lx V
\alt Suffix
\gl1
\gl2

\lf `forfend
\lx V
\alt Suffix
\gl1
\gl2

\lf `forge
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `formulate
\lx V
\alt Suffix
\gl1
\gl2

\lf `fornicate
\lx V
\alt Suffix
\gl1
\gl2

\lf `fortify
\lx V
\alt Suffix
\gl1
\gl2

\lf `forward
\lx V
\alt Suffix
\gl1
\gl2

\lf `foster
\lx V
\alt Suffix
\gl1
\gl2

\lf `found
\lx V
\alt Suffix
\gl1
\gl2

\lf `founder
\lx V
\alt Suffix
\gl1
\gl2

\lf `fractionate
\lx V
\alt Suffix
\fea denom
\gl1 `fraction
\gl2

\lf `fraternize
\lx V
\alt Suffix
\gl1
\gl2

\lf `fray
\lx V
\alt Suffix
\gl1
\gl2

\lf `frazzle
\lx V
\alt Suffix
\gl1
\gl2

\lf free`wheel
\lx V
\alt Suffix
\gl1
\gl2

\lf free`think
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `fret
\lx V
\alt Suffix
\gl1
\gl2

\lf `frighten
\lx V
\alt Suffix
\fea denom
\gl1 `fright
\gl2

\lf `frisk
\lx V
\alt Suffix
\gl1
\gl2

\lf `fritter
\lx V
\alt Suffix
\gl1
\gl2

\lf `frizzle
\lx V
\alt Suffix
\gl1
\gl2

\lf `frolic
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `frolicked
\lx V
\alt Clitic
\fea ed
\gl1 `frolic
\gl2

\lf `frolicked
\lx V
\alt PT_Suffix
\fea en
\gl1 `frolic
\gl2

\lf `frolicking
\lx V
\alt PT_Suffix
\fea ing
\gl1 `frolic
\gl2

\lf `frown
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `fructify
\lx V
\alt Suffix
\gl1
\gl2

\lf `frustrate
\lx V
\alt Suffix
\gl1
\gl2

\lf `fry
\lx V
\alt Suffix
\gl1
\gl2

\lf `fuddle
\lx V
\alt Suffix
\gl1
\gl2

\lf ful`fil
\lx V
\alt Suffix
\gl1
\gl2

\lf ful`fill
\lx V
\alt Suffix
\gl1
\gl2

\lf `fulminate
\lx V
\alt Suffix
\gl1
\gl2

\lf `fumble
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `fumigate
\lx V
\alt Suffix
\gl1
\gl2

\lf `furbish
\lx V
\alt Suffix
\gl1
\gl2

\lf `furl
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `furnish
\lx V
\alt Suffix
\gl1
\gl2

\lf `further
\lx V
\alt Suffix
\gl1
\gl2

\lf `fuse
\lx V
\alt Suffix
\gl1
\gl2

\lf `fuss
\lx N-V
\alt Suffix
\gl1
\gl2


\lf `gab
\lx V
\alt Suffix
\gl1
\gl2

\lf `gabble
\lx V
\alt Suffix
\gl1
\gl2

\lf `gad
\lx V
\alt Suffix
\gl1
\gl2

\lf `gag
\lx V
\alt Suffix
\gl1
\gl2

\lf `gain
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `gallivant
\lx V
\alt Suffix
\gl1
\gl2

\lf `gallop
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `galvanize
\lx V
\alt Suffix
\gl1
\gl2

\lf `gamble
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `gambol
\lx V
\alt Suffix
\gl1
\gl2

\lf `gander
\lx V
\alt Suffix
\gl1
\gl2

\lf `gape
\lx V
\alt Suffix
\gl1
\gl2

\lf `garble
\lx V
\alt Suffix
\gl1
\gl2

\lf `gargle
\lx V
\alt Suffix
\gl1
\gl2

\lf `gasify
\lx V
\alt Suffix
\fea denom
\gl1 `gas
\gl2

\lf `gasp
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `gatekeep
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `gather
\lx V
\alt Suffix
\gl1
\gl2

\lf `gawk
\lx V
\alt Suffix
\gl1
\gl2

\lf `gaze
\lx V
\alt Suffix
\gl1
\gl2

\lf `gee
\lx V
\alt Suffix
\gl1
\gl2

\lf `geld
\lx V
\alt Suffix
\gl1
\gl2

\lf `generate
\lx V
\alt Suffix
\gl1
\gl2

\lf `germinate
\lx V
\alt Suffix
\gl1
\gl2

\lf `gestate
\lx V
\alt Suffix
\gl1
\gl2

\lf ges`ticulate
\lx V
\alt Suffix
\gl1
\gl2

\lf `gesture
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `gibe
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `giddap
\lx V
\alt Suffix
\gl1
\gl2

\lf `giggle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `gild
\lx V
\alt Suffix
\gl1
\gl2

\lf `glaciate
\lx V
\alt Suffix
\gl1
\gl2

\lf `glance
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `glare
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `gleam
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `glean
\lx V
\alt Suffix
\gl1
\gl2

\lf `glide
\lx V
\alt Suffix
\gl1
\gl2

\lf `glimmer
\lx V
\alt Suffix
\gl1
\gl2

\lf `glimpse
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `glint
\lx V
\alt Suffix
\gl1
\gl2

\lf glis`sade
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `glisten
\lx V
\alt Suffix
\gl1
\gl2

\lf `glister
\lx V
\alt Suffix
\gl1
\gl2

\lf `glitter
\lx V
\alt Suffix
\gl1
\gl2

\lf `gloat
\lx V
\alt Suffix
\gl1
\gl2

\lf `glom
\lx V
\alt Suffix
\gl1
\gl2

\lf `glorify
\lx V
\alt Suffix
\fea denom
\gl1 `glory
\gl2

\lf `glow
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `glower
\lx V
\alt Suffix
\gl1
\gl2

\lf `glycerinate
\lx V
\alt Suffix
\fea denom
\gl1 `glycerin
\gl2

\lf `gnarl
\lx V
\alt Suffix
\gl1
\gl2

\lf `gnash
\lx V
\alt Suffix
\gl1
\gl2

\lf `gnaw
\lx V
\alt Suffix
\gl1
\gl2

\lf `gobble
\lx V
\alt Suffix
\gl1
\gl2

\lf `goggle
\lx V
\alt Suffix
\gl1
\gl2

\lf `goof
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `gore
\lx V
\alt Suffix
\gl1
\gl2

\lf `gorge
\lx V
\alt Suffix
\gl1
\gl2

\lf `gouge
\lx V
\alt Suffix
\gl1
\gl2

\lf `govern
\lx V
\alt Suffix
\gl1
\gl2

\lf `grab
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `gradate
\lx V
\alt Suffix
\gl1
\gl2

\lf `grade
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `graduate
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `graft
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `grant
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `granulate
\lx V
\alt Suffix
\fea denom
\gl1 `granule
\gl2

\lf `grapple
\lx V
\alt Suffix
\gl1
\gl2

\lf `grasp
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `grate
\lx V
\alt Suffix
\gl1
\gl2

\lf `gratify
\lx V
\alt Suffix
\gl1
\gl2

\lf `gravitate
\lx V
\alt Suffix
\gl1
\gl2

\lf `gray
\lx V
\alt Suffix
\gl1
\gl2

\lf `graze
\lx V
\alt Suffix
\gl1
\gl2

\lf `greet
\lx V
\alt Suffix
\gl1
\gl2

\lf `grey
\lx V
\alt Suffix
\gl1
\gl2

\lf `grieve
\lx V
\alt Suffix
\gl1
\gl2

\lf `grimace
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `grin
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `grip
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `gripe
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `grizzle
\lx V
\alt Suffix
\gl1
\gl2

\lf `groan
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `grope
\lx V
\alt Suffix
\gl1
\gl2

\lf `gross
\lx V
\alt Suffix
\gl1
\gl2

\lf `grovel
\lx V
\alt Suffix
\gl1
\gl2

\lf `growl
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `grumble
\lx V
\alt Suffix
\gl1
\gl2

\lf `grunt
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `guard
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `guess
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `guide
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `gulp
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `gunsling
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `gurgle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `gush
\lx V
\alt Suffix
\gl1
\gl2

\lf `gutter
\lx V
\alt Suffix
\gl1
\gl2

\lf `guzzle
\lx V
\alt Suffix
\gl1
\gl2

\lf `gyp
\lx V
\alt Suffix
\gl1
\gl2

\lf `gyrate
\lx V
\alt Suffix
\gl1
\gl2


\lf ha`bituate
\lx V
\alt Suffix
\fea denom
\gl1 `habit
\gl2

\lf `hack
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `hackney
\lx V
\alt Suffix
\gl1
\gl2

\lf `haggle
\lx V
\alt Suffix
\gl1
\gl2

\lf `hairdress
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `hallow
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf hal`lucinate
\lx V
\alt Suffix
\gl1
\gl2

\lf `halt
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `halve
\lx V
\alt Suffix
\gl1
\gl2

\lf `hamper
\lx V
\alt Suffix
\gl1
\gl2

\lf `hand
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `handle
\lx V
\alt Suffix
\gl1
\gl2

\lf `hanker
\lx V
\alt Suffix
\gl1
\gl2

\lf `happen
\lx V
\alt Suffix
\gl1
\gl2

\lf ha`rangue
\lx N-V
\alt Suffix
\gl1
\gl2

\lf ha`rass
\lx V
\alt Suffix
\gl1
\gl2

\lf `hardboil
\lx V
\alt Suffix
\gl1
\gl2

\lf `hark
\lx V
\alt Suffix
\gl1
\gl2

\lf `harken
\lx V
\alt Suffix
\gl1
\gl2

\lf `harm
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `harmonize
\lx V
\alt Suffix
\fea denom
\gl1 `harmony
\gl2

\lf `harp
\lx V
\alt Suffix
\gl1
\gl2

\lf `harrass
\lx V
\alt Suffix
\gl1
\gl2

\lf `harrow
\lx V
\alt Suffix
\gl1
\gl2

\lf `harry
\lx V
\alt Suffix
\gl1
\gl2

\lf `harvest
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `hassle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `hasten
\lx V
\alt Suffix
\fea denom
\gl1 `haste
\gl2

\lf `hatch
\lx V
\alt Suffix
\gl1
\gl2

\lf `hate
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `haul
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `haunt
\lx V
\alt Suffix
\gl1
\gl2

\lf `hawk
\lx V
\alt Suffix
\gl1
\gl2

\lf `head
\lx V
\alt Suffix
\gl1
\gl2

\lf `headquarter
\lx V
\alt Suffix
\gl1
\gl2

\lf `heal
\lx V
\alt Suffix
\gl1
\gl2

\lf `hearken
\lx V
\alt Suffix
\gl1
\gl2

\lf `heartbreak
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `hearten
\lx V
\alt Suffix
\gl1
\gl2

\lf `heckle
\lx V
\alt Suffix
\gl1
\gl2

\lf `hector
\lx V
\alt Suffix
\gl1
\gl2

\lf `heed
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `heel
\lx V
\alt Suffix
\gl1
\gl2

\lf `heft
\lx V
\alt Suffix
\gl1
\gl2

\lf `heighten
\lx V
\alt Suffix
\fea denom
\gl1 `height
\gl2

\lf `help
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `hemorrhage
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `henpeck
\lx V
\alt Suffix
\gl1
\gl2

\lf `herald
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `hesitate
\lx V
\alt Suffix
\gl1
\gl2

\lf `hex
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `hibernate
\lx V
\alt Suffix
\gl1
\gl2

\lf `hie
\lx V
\alt Suffix
\gl1
\gl2

;\lf `hying
;\lx V
;\alt PT_Suffix
;\fea ing
;\gl1 `hie
;\gl2

\lf `hightail
\lx V
\alt Suffix
\gl1
\gl2

\lf `hijack
\lx V
\alt Suffix
\gl1
\gl2

\lf `hinder
\lx V
\alt Suffix
\gl1
\gl2

\lf `hike
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `hire
\lx V
\alt Suffix
\gl1
\gl2

\lf `hiss
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `hitch
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `hitchhike
\lx V
\alt Suffix
\gl1
\gl2

\lf `hobble
\lx V
\alt Suffix
\gl1
\gl2

\lf `hoe
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `hoist
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `holler
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `homebreak
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `homemake
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `homeown
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf ho`mogenize
\lx V
\alt Suffix
\gl1
\gl2

\lf `hone
\lx V
\alt Suffix
\gl1
\gl2

\lf `honk
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `hoodwink
\lx V
\alt Suffix
\gl1
\gl2

\lf `hoot
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `hop
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `hope
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `horrify
\lx V
\alt Suffix
\gl1
\gl2

\lf `housekeep
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `hove
\lx V
\alt Suffix
\gl1
\gl2

\lf `hover
\lx V
\alt Suffix
\gl1
\gl2

\lf `howl
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `huddle
\lx V
\alt Suffix
\gl1
\gl2

\lf `huff
\lx V
\alt Suffix
\gl1
\gl2

\lf `hug
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `hum
\lx V
\alt Suffix
\gl1
\gl2

\lf hu`miliate
\lx V
\alt Suffix
\gl1
\gl2

\lf `hunch
\lx V
\alt Suffix
\gl1
\gl2

\lf `hunker
\lx V
\alt Suffix
\gl1
\gl2

\lf `hunt
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `hurl
\lx V
\alt Suffix
\gl1
\gl2

\lf `hurry
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `hurtle
\lx V
\alt Suffix
\gl1
\gl2

\lf `hush
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `hustle
\lx V
\alt Suffix
\gl1
\gl2

\lf `hybridize
\lx V
\alt Suffix
\fea denom
\gl1 `hybrid
\gl2

\lf `hydrate
\lx V
\alt Suffix
\gl1
\gl2

\lf `hydrogenate
\lx V
\alt Suffix
\fea denom
\gl1 `hydrogen
\gl2

\lf `hyped
\lx V
\alt Clitic
\fea ed
\gl1 `hype
\gl2

\lf `hyped
\lx V
\alt PT_Suffix
\fea en
\gl1 `hype
\gl2

\lf `hyping
\lx V
\alt PT_Suffix
\fea ing
\gl1 `hype
\gl2

\lf `hyphenate
\lx V
\alt Suffix
\fea denom
\gl1 `hyphen
\gl2

\lf `hypnotize
\lx V
\alt Suffix
\gl1
\gl2

\lf hy`pothesize
\lx V
\alt Suffix
\gl1
\gl2


\lf `ideate
\lx V
\alt Suffix
\fea denom
\gl1 i`dea
\gl2

\lf i`dentify
\lx V
\alt Suffix
\gl1
\gl2

\lf ig`nite
\lx V
\alt Suffix
\gl1
\gl2

\lf ig`nore
\lx V
\alt Suffix
\gl1
\gl2

\lf il`luminate
\lx V
\alt Suffix
\gl1
\gl2

\lf il`lumine
\lx V
\alt Suffix
\gl1
\gl2

\lf `illustrate
\lx V
\alt Suffix
\gl1
\gl2

\lf i`magine
\lx V
\alt Suffix
\gl1
\gl2

\lf im`bed
\lx V
\alt Suffix
\gl1
\gl2

\lf im`bibe
\lx V
\alt Suffix
\gl1
\gl2

\lf im`brue
\lx V
\alt Suffix
\gl1
\gl2

\lf im`bue
\lx V
\alt Suffix
\gl1
\gl2

\lf `imitate
\lx V
\alt Suffix
\gl1
\gl2

\lf im`merse
\lx V
\alt Suffix
\gl1
\gl2

\lf `immigrate
\lx V
\alt Suffix
\gl1
\gl2

\lf `immolate
\lx V
\alt Suffix
\gl1
\gl2

\lf im`pair
\lx V
\alt Suffix
\gl1
\gl2

\lf im`pale
\lx V
\alt Suffix
\gl1
\gl2

\lf im`part
\lx V
\alt Suffix
\gl1
\gl2

\lf im`passion
\lx V
\alt Suffix
\fea denom
\gl1 `passion
\gl2

\lf im`peach
\lx V
\alt Suffix
\gl1
\gl2

\lf im`pede
\lx V
\alt Suffix
\gl1
\gl2

\lf im`pel
\lx V
\alt Suffix
\gl1
\gl2

\lf im`pend
\lx V
\alt Suffix
\gl1
\gl2

\lf im`peril
\lx V
\alt Suffix
\fea denom
\gl1 `peril
\gl2

\lf im`personate
\lx V
\alt Suffix
\fea denom
\gl1 `person
\gl2

\lf im`pinge
\lx V
\alt Suffix
\gl1
\gl2

\lf im`plant
\lx V
\alt Suffix
\fea denom
\gl1 `plant
\gl2

\lf `implement
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `implicate
\lx V
\alt Suffix
\gl1
\gl2

\lf im`plode
\lx V
\alt Suffix
\gl1
\gl2

\lf im`plore
\lx V
\alt Suffix
\gl1
\gl2

\lf im`ply
\lx V
\alt Suffix
\gl1
\gl2

\lf im`port
\lx V
\alt Suffix
\gl1
\gl2

\lf impor`tune
\lx V
\alt Suffix
\gl1
\gl2

\lf im`pose
\lx V
\alt Suffix
\gl1
\gl2

\lf im`pound
\lx V
\alt Suffix
\gl1
\gl2

\lf im`poverish
\lx V
\alt Suffix
\gl1
\gl2

\lf `imprecate
\lx V
\alt Suffix
\gl1
\gl2

\lf im`pregnate
\lx V
\alt Suffix
\gl1
\gl2

\lf im`press
\lx V
\alt Suffix
\gl1
\gl2

\lf im`print
\lx V
\alt Suffix
\gl1
\gl2

\lf im`prison
\lx V
\alt Suffix
\fea denom
\gl1 `prison
\gl2

\lf im`prove
\lx V
\alt Suffix
\gl1
\gl2

\lf `improvise
\lx V
\alt Suffix
\gl1
\gl2

\lf im`pugn
\lx V
\alt Suffix
\gl1
\gl2

\lf im`pute
\lx V
\alt Suffix
\gl1
\gl2

\lf i`naugurate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`cant
\lx V
\alt Suffix
\gl1
\gl2

\lf inca`pacitate
\lx V
\alt Suffix
\fea denom
\gl1 ca`pacity
\gl2

\lf in`carcerate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`cinerate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`cise
\lx V
\alt Suffix
\gl1
\gl2

\lf in`cite
\lx V
\alt Suffix
\gl1
\gl2

\lf in`cline
\lx V
\alt Suffix
\gl1
\gl2

\lf in`close
\lx V
\alt Suffix
\gl1
\gl2

\lf in`clude
\lx V
\alt Suffix
\gl1
\gl2

\lf in`corporate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`crease
\lx V
\alt Suffix
\gl1
\gl2

\lf `increment
\lx N-V
\alt Suffix
\gl1
\gl2

\lf in`criminate
\lx V
\alt Suffix
\gl1
\gl2

\lf `incubate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`culcate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`cur
\lx V
\alt Suffix
\gl1
\gl2

\lf in`demnify
\lx V
\alt Suffix
\gl1
\gl2

\lf in`dent
\lx V
\alt Suffix
\gl1
\gl2

\lf `indicate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`dict
\lx V
\alt Suffix
\gl1
\gl2

\lf indis`pose
\lx V
\alt Suffix
\gl1
\gl2

\lf indi`viduate
\lx V
\alt Suffix
\fea denom
\gl1 indi`vidual
\gl2

\lf in`doctrinate
\lx V
\alt Suffix
\fea denom
\gl1 `doctrine
\gl2

\lf in`duce
\lx V
\alt Suffix
\gl1
\gl2

\lf in`duct
\lx V
\alt Suffix
\gl1
\gl2

\lf in`dulge
\lx V
\alt Suffix
\gl1
\gl2

\lf in`dwell
\lx V
\alt Suffix
\gl1
\gl2

\lf in`ebriate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`farct
\lx V
\alt Suffix
\gl1
\gl2

\lf in`fatuate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`fect
\lx V
\alt Suffix
\gl1
\gl2

\lf in`fer
\lx V
\alt Suffix
\gl1
\gl2

\lf in`fest
\lx V
\alt Suffix
\gl1
\gl2

\lf `infight
\lx V
\alt Suffix
\gl1
\gl2

\lf in`filtrate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`flame
\lx V
\alt Suffix
\gl1
\gl2

\lf in`flate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`flect
\lx V
\alt Suffix
\gl1
\gl2

\lf in`flict
\lx V
\alt Suffix
\gl1
\gl2

\lf in`form
\lx V
\alt Suffix
\gl1
\gl2

\lf in`fract
\lx V
\alt Suffix
\gl1
\gl2

\lf in`fringe
\lx V
\alt Suffix
\gl1
\gl2

\lf in`furiate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`fuse
\lx V
\alt Suffix
\gl1
\gl2

\lf `ingather
\lx V
\alt Suffix
\gl1
\gl2

\lf in`gest
\lx V
\alt Suffix
\gl1
\gl2

\lf in`gratiate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`habit
\lx V
\alt Suffix
\gl1
\gl2

\lf in`hale
\lx V
\alt Suffix
\gl1
\gl2

\lf in`here
\lx V
\alt Suffix
\gl1
\gl2

\lf in`herit
\lx V
\alt Suffix
\gl1
\gl2

\lf in`hibit
\lx V
\alt Suffix
\gl1
\gl2

\lf i`nitiate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`ject
\lx V
\alt Suffix
\gl1
\gl2

\lf `injure
\lx V
\alt Suffix
\gl1
\gl2

\lf `inlay
\lx V
\alt Suffix
\gl1
\gl2

\lf `innovate
\lx V
\alt Suffix
\gl1
\gl2

\lf i`noculate
\lx V
\alt Suffix
\gl1
\gl2

\lf `input
\lx N-V
\alt Suffix
\gl1
\gl2

\lf in`quire
\lx V
\alt Suffix
\gl1
\gl2

\lf in`scribe
\lx V
\alt Suffix
\gl1
\gl2

\lf in`seminate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`sert
\lx V
\alt Suffix
\gl1
\gl2

\lf in`sinuate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`sist
\lx V
\alt Suffix
\gl1
\gl2

\lf in`spect
\lx V
\alt Suffix
\gl1
\gl2

\lf in`spire
\lx V
\alt Suffix
\gl1
\gl2

\lf in`stall
\lx V
\alt Suffix
\gl1
\gl2

\lf in`stantiate
\lx V
\alt Suffix
\fea denom
\gl1 `instance
\gl2

\lf in`state
\lx V
\alt Suffix
\gl1
\gl2

\lf `instigate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`still
\lx V
\alt Suffix
\gl1
\gl2

\lf `institute
\lx N-V
\alt Suffix
\gl1
\gl2

\lf in`struct
\lx V
\alt Suffix
\gl1
\gl2

\lf `insulate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`sult
\lx V
\alt Suffix
\gl1
\gl2

\lf in`sure
\lx V
\alt Suffix
\gl1
\gl2

\lf `integrate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`tend
\lx V
\alt Suffix
\gl1
\gl2

\lf in`ter
\lx V
\alt Suffix
\gl1
\gl2

\lf inter`calate
\lx V
\alt Suffix
\gl1
\gl2

\lf inter`cept
\lx V
\alt Suffix
\gl1
\gl2

\lf inter`dict
\lx V
\alt Suffix
\gl1
\gl2

\lf `interest
\lx N-V
\alt Suffix
\gl1
\gl2

\lf inter`fere
\lx V
\alt Suffix
\gl1
\gl2

\lf inter`ject
\lx V
\alt Suffix
\gl1
\gl2

\lf inter`mit
\lx V
\alt Suffix
\gl1
\gl2

\lf in`tern
\lx V
\alt Suffix
\gl1
\gl2

\lf in`terpolate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`terpret
\lx V
\alt Suffix
\gl1
\gl2

\lf in`terrogate
\lx V
\alt Suffix
\gl1
\gl2

\lf inter`rupt
\lx V
\alt Suffix
\gl1
\gl2

\lf inter`sect
\lx V
\alt Suffix
\gl1
\gl2

\lf inter`sperse
\lx V
\alt Suffix
\gl1
\gl2

\lf in`terstice
\lx V
\alt Suffix
\gl1
\gl2

\lf inter`twine
\lx V
\alt Suffix
\gl1
\gl2

\lf inter`vene
\lx V
\alt Suffix
\gl1
\gl2

\lf `interview
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `intimate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`timidate
\lx V
\alt Suffix
\gl1
\gl2

\lf `intonate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`tone
\lx V
\alt Suffix
\gl1
\gl2

\lf in`toxicate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`trench
\lx V
\alt Suffix
\gl1
\gl2

\lf in`trigue
\lx V
\alt Suffix
\gl1
\gl2

\lf intro`duce
\lx V
\alt Suffix
\gl1
\gl2

\lf intro`ject
\lx V
\alt Suffix
\gl1
\gl2

\lf intro`spect
\lx V
\alt Suffix
\gl1
\gl2

\lf `introvert
\lx N-V
\alt Suffix
\gl1
\gl2

\lf in`trude
\lx V
\alt Suffix
\gl1
\gl2

\lf in`tuit
\lx V
\alt Suffix
\gl1
\gl2

\lf `inundate
\lx V
\alt Suffix
\gl1
\gl2

\lf i`nure
\lx V
\alt Suffix
\gl1
\gl2

\lf in`vade
\lx V
\alt Suffix
\gl1
\gl2

\lf in`validate
\lx V
\alt Suffix
\fea deadj
\gl1 `valid
\gl2

\lf in`veigh
\lx V
\alt Suffix
\gl1
\gl2

\lf in`veigle
\lx V
\alt Suffix
\gl1
\gl2

\lf in`vent
\lx V
\alt Suffix
\gl1
\gl2

\lf in`vert
\lx V
\alt Suffix
\gl1
\gl2

\lf in`vest
\lx V
\alt Suffix
\gl1
\gl2

\lf in`vestigate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`vigorate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`vite
\lx V
\alt Suffix
\gl1
\gl2

\lf `invocate
\lx V
\alt Suffix
\gl1
\gl2

\lf in`voke
\lx V
\alt Suffix
\gl1
\gl2

\lf `involute
\lx V
\alt Suffix
\gl1
\gl2

\lf in`volve
\lx V
\alt Suffix
\gl1
\gl2

\lf `irk
\lx V
\alt Suffix
\gl1
\gl2

\lf ir`radiate
\lx V
\alt Suffix
\gl1
\gl2

\lf `irrigate
\lx V
\alt Suffix
\gl1
\gl2

\lf `irritate
\lx V
\alt Suffix
\gl1
\gl2

\lf ir`rupt
\lx V
\alt Suffix
\gl1
\gl2

\lf `isolate
\lx V
\alt Suffix
\gl1
\gl2

\lf `issue
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `itch
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `iterate
\lx V
\alt Suffix
\gl1
\gl2


\lf `jab
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `jabber
\lx V
\alt Suffix
\gl1
\gl2

\lf `jade
\lx V
\alt Suffix
\gl1
\gl2

\lf `jag
\lx V
\alt Suffix
\gl1
\gl2

\lf `jam
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `jangle
\lx V
\alt Suffix
\gl1
\gl2

\lf `jeer
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `jeopardize
\lx V
\alt Suffix
\fea denom
\gl1 `jeopardy
\gl2

\lf `jerk
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `jest
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `jettison
\lx V
\alt Suffix
\gl1
\gl2

\lf `jibe
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `jiggle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `jilt
\lx V
\alt Suffix
\gl1
\gl2

\lf `jingle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `jive
\lx V
\alt Suffix
\gl1
\gl2

\lf `jog
\lx V
\alt Suffix
\gl1
\gl2

\lf `joggle
\lx V
\alt Suffix
\gl1
\gl2

\lf `join
\lx V
\alt Suffix
\gl1
\gl2

\lf `jolt
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `jostle
\lx V
\alt Suffix
\gl1
\gl2

\lf `jot
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `jounce
\lx V
\alt Suffix
\gl1
\gl2

\lf `joust
\lx V
\alt Suffix
\gl1
\gl2

\lf `jubilate
\lx V
\alt Suffix
\gl1
\gl2

\lf `judge
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `juggle
\lx V
\alt Suffix
\gl1
\gl2

\lf `juke
\lx V
\alt Suffix
\gl1
\gl2

\lf `jumble
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `jump
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `jumpstart
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `jut
\lx V
\alt Suffix
\gl1
\gl2

\lf `juxtapose
\lx V
\alt Suffix
\gl1
\gl2


\lf `kern
\lx V
\alt Suffix
\gl1
\gl2

\lf ki`bitz
\lx V
\alt Suffix
\gl1
\gl2

\lf `kick
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `kid
\lx V
\alt Suffix
\gl1
\gl2

\lf `kidnap
\lx V
\alt Suffix
\gl1
\gl2

\lf `kill
\lx V
\alt Suffix
\gl1
\gl2

\lf `kindle
\lx V
\alt Suffix
\gl1
\gl2

\lf `kiss
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `knead
\lx V
\alt Suffix
\gl1
\gl2

\lf `knock
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `kowtow
\lx V
\alt Suffix
\gl1
\gl2


\lf `labor
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `labour
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `lacerate
\lx V
\alt Suffix
\gl1
\gl2

\lf `lack
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `lactate
\lx V
\alt Suffix
\gl1
\gl2

\lf `lade
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `laden
\lx V
\alt Suffix
\gl1
\gl2

\lf `lag
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `lam
\lx N-V
\alt Suffix
\gl1
\gl2

\lf la`ment
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `laminate
\lx V
\alt Suffix
\gl1
\gl2

\lf lam`poon
\lx V
\alt Suffix
\gl1
\gl2

\lf `lance
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `landhold
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `landown
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `landscape
\lx V
\alt Suffix
\gl1
\gl2

\lf `languish
\lx V
\alt Suffix
\gl1
\gl2

\lf `lap
\lx V
\alt Suffix
\gl1
\gl2

\lf `lapse
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `lash
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `last
\lx V
\alt Suffix
\gl1
\gl2

\lf `lather
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `laud
\lx V
\alt Suffix
\gl1
\gl2

\lf `laugh
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `launch
\lx V
\alt Suffix
\gl1
\gl2

\lf `launder
\lx V
\alt Suffix
\gl1
\gl2

\lf `lave
\lx V
\alt Suffix
\gl1
\gl2

\lf `lawbreak
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `lawgive
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `lawmake
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `lawnmow
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `laze
\lx V
\alt Suffix
\gl1
\gl2

\lf `leach
\lx V
\alt Suffix
\gl1
\gl2

\lf `leak
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `leapfrog
\lx V
\alt Suffix
\gl1
\gl2

\lf `lease
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `leasehold
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `leer
\lx V
\alt Suffix
\gl1
\gl2

\lf le`gate
\lx V
\alt Suffix
\gl1
\gl2

\lf `legislate
\lx V
\alt Suffix
\gl1
\gl2

\lf le`gitimize
\lx V
\alt Suffix
\fea deadj
\gl1 le`gitimate
\gl2

\lf `lengthen
\lx V
\alt Suffix
\fea denom
\gl1 `length
\gl2

\lf `lessen
\lx V
\alt Suffix
\gl1
\gl2

\lf `levitate
\lx V
\alt Suffix
\gl1
\gl2

\lf `levy
\lx V
\alt Suffix
\gl1
\gl2

\lf `liberate
\lx V
\alt Suffix
\gl1
\gl2

\lf `lick
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `lift
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `like
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `liken
\lx V
\alt Suffix
\gl1
\gl2

\lf `lilt
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `limit
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `limp
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `line
\lx V
\alt Suffix
\gl1
\gl2

\lf `linger
\lx V
\alt Suffix
\gl1
\gl2

\lf `link
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `liquefy
\lx V
\alt Suffix
\fea denom
\gl1 `liquid
\gl2

\lf `liquify
\lx V
\alt Suffix
\fea denom
\gl1 `liquid
\gl2

\lf `liquidate
\lx V
\alt Suffix
\fea denom
\gl1 `liquid
\gl2

\lf `lisp
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `list
\lx V
\alt Suffix
\gl1
\gl2

\lf `listen
\lx V
\alt Suffix
\gl1
\gl2

\lf `litigate
\lx V
\alt Suffix
\gl1
\gl2

\lf `live
\lx V
\alt Suffix
\gl1
\gl2

\lf `load
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `loaf
\lx V
\alt Suffix
\gl1
\gl2

\lf `loan
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `loathe
\lx V
\alt Suffix
\gl1
\gl2

\lf `lob
\lx V
\alt Suffix
\gl1
\gl2

\lf `lobby
\lx V
\alt Suffix
\gl1
\gl2

\lf `locate
\lx V
\alt Suffix
\gl1
\gl2

\lf `locomote
\lx V
\alt Suffix
\gl1
\gl2

\lf `lodge
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `loft
\lx V
\alt Suffix
\gl1
\gl2

\lf `loiter
\lx V
\alt Suffix
\gl1
\gl2

\lf `loll
\lx V
\alt Suffix
\gl1
\gl2

\lf `long
\lx V
\alt Suffix
\gl1
\gl2

\lf `look
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `loom
\lx V
\alt Suffix
\gl1
\gl2

\lf `lop
\lx V
\alt Suffix
\gl1
\gl2

\lf `lope
\lx V
\alt Suffix
\gl1
\gl2

\lf `lounge
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `love
\lx N-V
\alt Suffix
\fea ajr13
\gl1
\gl2

\lf `low
\lx V
\alt Suffix
\gl1
\gl2

\lf `lower
\lx V
\alt Suffix
\gl1
\gl2

\lf `lubricate
\lx V
\alt Suffix
\gl1
\gl2

\lf `lug
\lx V
\alt Suffix
\gl1
\gl2

\lf `lull
\lx V
\alt Suffix
\gl1
\gl2

\lf `lumber
\lx V
\alt Suffix
\gl1
\gl2

\lf lumi`nesce
\lx V
\alt Suffix
\gl1
\gl2

\lf `lunge
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `lurch
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `lure
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `lurk
\lx V
\alt Suffix
\gl1
\gl2

\lf lux`uriate
\lx V
\alt Suffix
\fea denom
\gl1 `luxury
\gl2

\lf `lynch
\lx V
\alt Suffix
\gl1
\gl2


\lf `magnify
\lx V
\alt Suffix
\gl1
\gl2

\lf `mail
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `maim
\lx V
\alt Suffix
\gl1
\gl2

\lf main`tain
\lx V
\alt Suffix
\gl1
\gl2

\lf `major
\lx V
\alt Suffix
\gl1
\gl2

\lf male`dict
\lx V
\alt Suffix
\gl1
\gl2

\lf ma`lign
\lx V
\alt Suffix
\gl1
\gl2

\lf ma`linger
\lx V
\alt Suffix
\gl1
\gl2

\lf `man
\lx V
\alt Suffix
\gl1
\gl2

\lf `manage
\lx V
\alt Suffix
\gl1
\gl2

\lf ma`neuver
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `mangle
\lx V
\alt Suffix
\gl1
\gl2

\lf `manhandle
\lx V
\alt Suffix
\gl1
\gl2

\lf ma`nipulate
\lx V
\alt Suffix
\gl1
\gl2

\lf ma`noeuvre
\lx N-V
\alt Suffix
\gl1
\gl2

\lf manu`mit
\lx V
\alt Suffix
\gl1
\gl2

\lf manu`facture
\lx V
\alt Suffix
\gl1
\gl2

\lf `mar
\lx V
\alt Suffix
\gl1
\gl2

\lf ma`raud
\lx V
\alt Suffix
\gl1
\gl2

\lf `marble
\lx V
\alt Suffix
\gl1
\gl2

\lf `march
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `marinate
\lx V
\alt Suffix
\gl1
\gl2

\lf ma`roon
\lx V
\alt Suffix
\gl1
\gl2

\lf `marshal
\lx V
\alt Suffix
\gl1
\gl2

\lf `marry
\lx V
\alt Suffix
\gl1
\gl2

\lf `marvel
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `mash
\lx V
\alt Suffix
\gl1
\gl2

\lf `massacre
\lx N-V
\alt Suffix
\gl1
\gl2

\lf mas`sage
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `master
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `masticate
\lx V
\alt Suffix
\gl1
\gl2

\lf `masturbate
\lx V
\alt Suffix
\gl1
\gl2

\lf `match
\lx V
\alt Suffix
\gl1
\gl2

\lf `matchmake
\lx V
\alt Suffix
\gl1
\gl2

\lf mat`riculate
\lx V
\alt Suffix
\gl1
\gl2

\lf `matter
\lx V
\alt Suffix
\gl1
\gl2

\lf `maturate
\lx V
\alt Suffix
\gl1 deverb
\gl2
\gl1 ma`ture
\gl2

\lf `maul
\lx V
\alt Suffix
\gl1
\gl2

\lf me`ander
\lx V
\alt Suffix
\gl1
\gl2

\lf `measure
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `mechanize
\lx V
\alt Suffix
\gl1
\gl2

\lf `meddle
\lx V
\alt Suffix
\gl1
\gl2

\lf `mediate
\lx V
\alt Suffix
\gl1
\gl2

\lf `medicate
\lx V
\alt Suffix
\gl1
\gl2

\lf `meditate
\lx V
\alt Suffix
\gl1
\gl2

\lf `meld
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `meliorate
\lx V
\alt Suffix
\gl1
\gl2

\lf `melt
\lx V
\alt Suffix
\gl1
\gl2

\lf `memorize
\lx V
\alt Suffix
\fea denom
\gl1 `memory
\gl2

\lf `mend
\lx V
\alt Suffix
\gl1
\gl2

\lf `menstruate
\lx V
\alt Suffix
\gl1
\gl2

\lf `mention
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `merge
\lx V
\alt Suffix
\gl1
\gl2

\lf `merit
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `merrymake
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf me`tabolize
\lx V
\alt Suffix
\gl1
\gl2

\lf meta`morphose
\lx V
\alt Suffix
\gl1
\gl2

\lf me`tathesize
\lx V
\alt Suffix
\gl1
\gl2

\lf `mete
\lx V
\alt Suffix
\gl1
\gl2

\lf `mew
\lx V
\alt Suffix
\gl1
\gl2

\lf `miff
\lx V
\alt Suffix
\gl1
\gl2

\lf `migrate
\lx V
\alt Suffix
\gl1
\gl2

\lf `militarize
\lx V
\alt Suffix
\fea denom
\gl1 `military
\gl2

\lf `militate
\lx V
\alt Suffix
\gl1
\gl2

\lf `mill
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `mimic
\lx V
\alt Suffix
\gl1
\gl2

\lf `mimicked
\lx V
\alt Clitic
\fea ed
\gl1 `mimic
\gl2

\lf `mimicked
\lx V
\alt PT_Suffix
\fea en
\gl1 `mimic
\gl2

\lf `mimicking
\lx V
\alt PT_Suffix
\fea ing
\gl1 `mimic
\gl2

\lf `mince
\lx V
\alt Suffix
\gl1
\gl2

\lf `mind
\lx V
\alt Suffix
\gl1
\gl2

\lf `mingle
\lx V
\alt Suffix
\gl1
\gl2

\lf `minister
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `mint
\lx V
\alt Suffix
\gl1
\gl2

\lf `miss
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `mitigate
\lx V
\alt Suffix
\gl1
\gl2

\lf `mix
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `moan
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `mock
\lx V
\alt Suffix
\gl1
\gl2

\lf `modify
\lx V
\alt Suffix
\gl1
\gl2

\lf `modulate
\lx V
\alt Suffix
\gl1
\gl2

\lf mo`lest
\lx V
\alt Suffix
\gl1
\gl2

\lf `mollify
\lx V
\alt Suffix
\gl1
\gl2

\lf `mollycoddle
\lx V
\alt Suffix
\gl1
\gl2

\lf `molt
\lx V
\alt Suffix
\gl1
\gl2

\lf `monetarize
\lx V
\alt Suffix
\fea denom
\gl1 `monetary
\gl2

\lf `monitor
\lx N-V
\alt Suffix
\gl1
\gl2

\lf mo`nopolize
\lx V
\alt Suffix
\fea denom
\gl1 mo`noply
\gl2

\lf `moo
\lx V
\alt Suffix
\gl1
\gl2

\lf `moor
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `mope
\lx V
\alt Suffix
\gl1
\gl2

\lf `mortify
\lx V
\alt Suffix
\gl1
\gl2

\lf `motivate
\lx V
\alt Suffix
\gl1
\gl2

\lf `mount
\lx V
\alt Suffix
\gl1
\gl2

\lf `mourn
\lx V
\alt Suffix
\gl1
\gl2

\lf `move
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `moviego
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `muddle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `muddy
\lx V
\alt Suffix
\fea denom
\gl1 `mud
\gl2

\lf `muffle
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `mug
\lx V
\alt Suffix
\gl1
\gl2

\lf `mulct
\lx V
\alt Suffix
\gl1
\gl2

\lf `mull
\lx V
\alt Suffix
\gl1
\gl2

\lf `multiplex
\lx V
\alt Suffix
\gl1
\gl2

\lf `multiply
\lx V
\alt Suffix
\gl1
\gl2

\lf `mum
\lx V
\alt Suffix
\gl1
\gl2

\lf `mumble
\lx V
\alt Suffix
\gl1
\gl2

\lf `mummify
\lx V
\alt Suffix
\fea denom
\gl1 `mummy
\gl2

\lf `munch
\lx V
\alt Suffix
\gl1
\gl2

\lf `murder
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `murmur
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `muse
\lx V
\alt Suffix
\gl1
\gl2

\lf `muster
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `mutate
\lx V
\alt Suffix
\gl1
\gl2

\lf `mutilate
\lx V
\alt Suffix
\gl1
\gl2

\lf `mutter
\lx V
\alt Suffix
\gl1
\gl2

\lf `muzzle
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `mystify
\lx V
\alt Suffix
\gl1
\gl2


\lf `nab
\lx V
\alt Suffix
\gl1
\gl2

\lf `nag
\lx V
\alt Suffix
\gl1
\gl2

\lf `nap
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `narrate
\lx V
\alt Suffix
\gl1
\gl2

\lf `nauseate
\lx V
\alt Suffix
\fea denom
\gl1 `nausea
\gl2

\lf `navigate
\lx V
\alt Suffix
\gl1
\gl2

\lf ne`cessitate
\lx V
\alt Suffix
\fea denom
\gl1 ne`cessity
\gl2

\lf `need
\lx N-V
\alt Suffix
\gl1
\gl2

\lf ne`gate
\lx V
\alt Suffix
\gl1
\gl2

\lf ne`glect
\lx N-V
\alt Suffix
\gl1
\gl2

\lf ne`gotiate
\lx V
\alt Suffix
\gl1
\gl2

\lf `nestle
\lx V
\alt Suffix
\gl1
\gl2

\lf `newsmake
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `nibble
\lx V
\alt Suffix
\gl1
\gl2

\lf `niggle
\lx V
\alt Suffix
\gl1
\gl2

\lf `nip
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `nitpick
\lx V
\alt Suffix
\gl1
\gl2

\lf `nix
\lx V
\alt Suffix
\gl1
\gl2

\lf `nod
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `nominate
\lx V
\alt Suffix
\gl1
\gl2

\lf `nonplus
\lx V
\alt Suffix
\gl1
\gl2

\lf `notarize
\lx V
\alt Suffix
\fea denom
\gl1 `notary
\gl2

\lf `notate
\lx V
\alt Suffix
\fea denom
\gl1 `note
\gl2

\lf `note
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `notice
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `nourish
\lx V
\alt Suffix
\gl1
\gl2

\lf `nucleate
\lx V
\alt Suffix
\fea denom
\gl1 `nucleus
\gl2

\lf `nudge
\lx V
\alt Suffix
\gl1
\gl2

\lf `numerate
\lx V
\alt Suffix
\gl1
\gl2

\lf `nurse
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `nurture
\lx V
\alt Suffix
\gl1
\gl2

\lf `nuzzle
\lx V
\alt Suffix
\gl1
\gl2


\lf o`bey
\lx V
\alt Suffix
\gl1
\gl2

\lf ob`fuscate
\lx V
\alt Suffix
\gl1
\gl2

\lf ob`ject
\lx V
\alt Suffix
\gl1
\gl2

\lf `obligate
\lx V
\alt Suffix
\gl1
\gl2

\lf ob`lige
\lx V
\alt Suffix
\gl1
\gl2

\lf ob`literate
\lx V
\alt Suffix
\gl1
\gl2

\lf ob`serve
\lx V
\alt Suffix
\gl1
\gl2

\lf ob`sess
\lx V
\alt Suffix
\gl1
\gl2

\lf ob`struct
\lx V
\alt Suffix
\gl1
\gl2

\lf ob`tain
\lx V
\alt Suffix
\gl1
\gl2

\lf ob`trude
\lx V
\alt Suffix
\gl1
\gl2

\lf `obviate
\lx V
\alt Suffix
\gl1
\gl2

\lf oc`clude
\lx V
\alt Suffix
\gl1
\gl2

\lf `occupy
\lx V
\alt Suffix
\gl1
\gl2

\lf oc`cur
\lx V
\alt Suffix
\gl1
\gl2

\lf of`fend
\lx V
\alt Suffix
\gl1
\gl2

\lf `offer
\lx V
\alt Suffix
\gl1
\gl2

\lf of`ficiate
\lx V
\alt Suffix
\gl1
\gl2

\lf `offload
\lx V
\alt Suffix
\gl1
\gl2

\lf `ogle
\lx V
\alt Suffix
\gl1
\gl2

\lf o`mit
\lx V
\alt Suffix
\gl1
\gl2

\lf `operate
\lx V
\alt Suffix
\gl1
\gl2

\lf o`pine
\lx V
\alt Suffix
\gl1
\gl2

\lf op`pose
\lx V
\alt Suffix
\gl1
\gl2

\lf op`press
\lx V
\alt Suffix
\gl1
\gl2

\lf `opt
\lx V
\alt Suffix
\gl1
\gl2

\lf `optimise
\lx V
\alt Suffix
\fea deadj
\gl1 `optimal
\gl2

\lf `optimize
\lx V
\alt Suffix
\fea deadj
\gl1 `optimal
\gl2

\lf `orate
\lx V
\alt Suffix
\gl1
\gl2

\lf `orchestrate
\lx V
\alt Suffix
\gl1
\gl2

\lf or`dain
\lx V
\alt Suffix
\gl1
\gl2

\lf `order
\lx N-V
\alt Suffix
\fea ajr13
\gl1
\gl2

\lf `organize
\lx V
\alt Suffix
\gl1
\gl2

\lf `orient
\lx V
\alt Suffix
\gl1
\gl2

\lf `orientate
\lx V
\alt Suffix
\gl1
\gl2

\lf o`riginate
\lx V
\alt Suffix
\fea denom
\gl1 `origin
\gl2

\lf `oscillate
\lx V
\alt Suffix
\gl1
\gl2

\lf `ossify
\lx V
\alt Suffix
\gl1
\gl2

\lf `ostracize
\lx V
\alt Suffix
\gl1
\gl2

\lf `oust
\lx V
\alt Suffix
\gl1
\gl2

\lf out`flank
\lx V
\alt Suffix
\fea denom
\gl1 `flank
\gl2

\lf out`fox
\lx V
\alt Suffix
\fea denom
\gl1 `fox
\gl2

\lf out`gun
\lx V
\alt Suffix
\fea denom
\gl1 `gun
\gl2

\lf out`number
\lx V
\alt Suffix
\fea denom
\gl1 `number
\gl2

\lf out`poll
\lx V
\alt Suffix
\fea denom
\gl1 `poll
\gl2

\lf out`strip
\lx V
\alt Suffix
\gl1
\gl2

\lf out`wit
\lx V
\alt Suffix
\fea denom
\gl1 `wit
\gl2

\lf over`awe
\lx V
\alt Suffix
\fea denom
\gl1 `awe
\gl2

\lf over`book
\lx V
\alt Suffix
\gl1 `book
\gl2

\lf over`joy
\lx V
\alt Suffix
\fea denom
\gl1 `joy
\gl2

\lf `ovulate
\lx V
\alt Suffix
\gl1
\gl2

\lf `owe
\lx V
\alt Suffix
\gl1
\gl2

\lf `own
\lx V
\alt Suffix
\gl1
\gl2

\lf `oxygenate
\lx V
\alt Suffix
\fea denom
\gl1 `oxygen
\gl2


\lf `pace
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `pacemake
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `pacify
\lx V
\alt Suffix
\gl1
\gl2

\lf `pack
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `paginate
\lx V
\alt Suffix
\fea denom
\gl1 `page
\gl2

\lf `pall
\lx V
\alt Suffix
\gl1
\gl2

\lf `palliate
\lx V
\alt Suffix
\gl1
\gl2

\lf `palpitate
\lx V
\alt Suffix
\gl1
\gl2

\lf `pamper
\lx V
\alt Suffix
\gl1
\gl2

\lf `pander
\lx V
\alt Suffix
\gl1
\gl2

\lf `panicked
\lx V
\alt Clitic
\fea ed
\gl1 `panic
\gl2

\lf `panicked
\lx V
\alt PT_Suffix
\fea en
\gl1 `panic
\gl2

\lf `panicking
\lx V
\alt PT_Suffix
\fea ing
\gl1 `panic
\gl2

\lf `pant
\lx V
\alt Suffix
\gl1
\gl2

\lf `paralyse
\lx V
\alt Suffix
\gl1
\gl2

\lf `paralyze
\lx V
\alt Suffix
\gl1
\gl2

\lf `paraphrase
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `parboil
\lx V
\alt Suffix
\gl1
\gl2

\lf `parch
\lx V
\alt Suffix
\gl1
\gl2

\lf `pardon
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `pare
\lx V
\alt Suffix
\gl1
\gl2

\lf pa`renthesize
\lx V
\alt Suffix
\fea denom
\gl1 pa`renthesis
\gl2

\lf `parley
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `parry
\lx V
\alt Suffix
\gl1
\gl2

\lf `parse
\lx N-V
\alt Suffix
\gl1
\gl2

\lf par`ticipate
\lx V
\alt Suffix
\gl1
\gl2

\lf `pass
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `pasteurize
\lx V
\alt Suffix
\gl1
\gl2

\lf `pat
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `pathfind
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `patter
\lx N-V
\alt Suffix
\gl1
\gl2

\lf pa`trol
\lx N-V
\alt Suffix
\gl1
\gl2

\lf pa`trolled
\lx V
\alt Clitic
\fea ed
\gl1 pa`trol
\gl2

\lf pa`trolled
\lx V
\alt PT_Suffix
\fea en
\gl1 pa`trol
\gl2

\lf pa`trolling
\lx V
\alt PT_Suffix
\fea ing
\gl1 pa`trol
\gl2

\lf `pause
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `pave
\lx V
\alt Suffix
\gl1
\gl2

\lf `pawn
\lx V
\alt Suffix
\gl1
\gl2

\lf `peacekeep
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `peacemake
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `peal
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `peck
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `peculate
\lx V
\alt Suffix
\gl1
\gl2

\lf `peddle
\lx V
\alt Suffix
\gl1
\gl2

\lf `pee
\lx V
\alt Suffix
\gl1
\gl2

\lf `peek
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `peep
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `peer
\lx V
\alt Suffix
\gl1
\gl2

\lf `pelt
\lx V
\alt Suffix
\gl1
\gl2

\lf `pend
\lx V
\alt Suffix
\gl1
\gl2

\lf `penetrate
\lx V
\alt Suffix
\gl1
\gl2

\lf per`ambulate
\lx V
\alt Suffix
\gl1
\gl2

\lf per`ceive
\lx V
\alt Suffix
\gl1
\gl2

\lf `perch
\lx V
\alt Suffix
\gl1
\gl2

\lf `percolate
\lx V
\alt Suffix
\gl1
\gl2

\lf per`cuss
\lx V
\alt Suffix
\gl1
\gl2

\lf per`fect
\lx V
\alt Suffix
\gl1
\gl2

\lf `perforate
\lx V
\alt Suffix
\gl1
\gl2

\lf per`form
\lx V
\alt Suffix
\gl1
\gl2

\lf per`fuse
\lx V
\alt Suffix
\gl1
\gl2

\lf `perish
\lx V
\alt Suffix
\gl1
\gl2

\lf `perjure
\lx V
\alt Suffix
\gl1
\gl2

\lf `perk
\lx V
\alt Suffix
\gl1
\gl2

\lf `permeate
\lx V
\alt Suffix
\gl1
\gl2

\lf per`mit
\lx V
\alt Suffix
\gl1
\gl2

\lf per`mute
\lx V
\alt Suffix
\gl1
\gl2

\lf `perorate
\lx V
\alt Suffix
\gl1
\gl2

\lf `perpetrate
\lx V
\alt Suffix
\gl1
\gl2

\lf per`petuate
\lx V
\alt Suffix
\gl1
\gl2

\lf per`plex
\lx V
\alt Suffix
\gl1
\gl2

\lf `persecute
\lx V
\alt Suffix
\gl1
\gl2

\lf perse`vere
\lx V
\alt Suffix
\gl1
\gl2

\lf per`sist
\lx V
\alt Suffix
\gl1
\gl2

\lf per`sonify
\lx V
\alt Suffix
\gl1
\gl2

\lf per`spire
\lx V
\alt Suffix
\gl1
\gl2

\lf per`suade
\lx V
\alt Suffix
\gl1
\gl2

\lf per`tain
\lx V
\alt Suffix
\gl1
\gl2

\lf per`turb
\lx V
\alt Suffix
\gl1
\gl2

\lf `perturbate
\lx V
\alt Suffix
\gl1
\gl2

\lf pe`ruse
\lx V
\alt Suffix
\gl1
\gl2

\lf per`vade
\lx V
\alt Suffix
\gl1
\gl2

\lf per`vert
\lx V
\alt Suffix
\gl1
\gl2

\lf `pester
\lx V
\alt Suffix
\gl1
\gl2

\lf `pet
\lx V
\alt Suffix
\gl1
\gl2

\lf `peter
\lx V
\alt Suffix
\gl1
\gl2

\lf `petrify
\lx V
\alt Suffix
\gl1
\gl2

\lf phi`lander
\lx V
\alt Suffix
\gl1
\gl2

\lf `photocopy
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `pick
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `picket
\lx V
\alt Suffix
\gl1
\gl2

\lf `pickle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `picnicked
\lx V
\alt Clitic
\fea ed
\gl1 `picnic
\gl2

\lf `picnicked
\lx V
\alt PT_Suffix
\fea en
\gl1 `picnic
\gl2

\lf `picnicking
\lx V
\alt PT_Suffix
\fea ing
\gl1 `picnic
\gl2

\lf `piddle
\lx V
\alt Suffix
\gl1
\gl2

\lf `pierce
\lx V
\alt Suffix
\gl1
\gl2

\lf `pilfer
\lx V
\alt Suffix
\gl1
\gl2

\lf `pillage
\lx V
\alt Suffix
\gl1
\gl2

\lf `pinch
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `pine
\lx V
\alt Suffix
\gl1
\gl2

\lf `piss
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `pitch
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `pith
\lx V
\alt Suffix
\gl1
\gl2

\lf `placate
\lx V
\alt Suffix
\gl1
\gl2

\lf `plagiarize
\lx V
\alt Suffix
\gl1
\gl2

\lf `plait
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `play
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `please
\lx V
\alt Suffix
\gl1
\gl2

\lf `plod
\lx V
\alt Suffix
\gl1
\gl2

\lf `plop
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `pluck
\lx V
\alt Suffix
\gl1
\gl2

\lf `plumb
\lx V
\alt Suffix
\gl1
\gl2

\lf `plummet
\lx V
\alt Suffix
\gl1
\gl2

\lf `plump
\lx V
\alt Suffix
\gl1
\gl2

\lf `plunder
\lx V
\alt Suffix
\gl1
\gl2

\lf `plunge
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `plunk
\lx V
\alt Suffix
\gl1
\gl2

\lf `ply
\lx V
\alt Suffix
\gl1
\gl2

\lf `poach
\lx V
\alt Suffix
\gl1
\gl2

\lf `poise
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `poke
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `polish
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `politick
\lx V
\alt Suffix
\gl1
\gl2

\lf `pollinate
\lx V
\alt Suffix
\fea denom
\gl1 `pollen
\gl2

\lf pol`lute
\lx V
\alt Suffix
\gl1
\gl2

\lf `ponder
\lx V
\alt Suffix
\gl1
\gl2

\lf pon`tificate
\lx V
\alt Suffix
\gl1
\gl2

\lf `pop
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `populate
\lx V
\alt Suffix
\gl1
\gl2

\lf `pore
\lx V
\alt Suffix
\gl1
\gl2

\lf `port
\lx V
\alt Suffix
\gl1
\gl2

\lf por`tend
\lx V
\alt Suffix
\gl1
\gl2

\lf por`tray
\lx V
\alt Suffix
\gl1
\gl2

\lf `pose
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `posit
\lx V
\alt Suffix
\gl1
\gl2

\lf pos`sess
\lx V
\alt Suffix
\gl1
\gl2

\lf `post
\lx V
\alt Suffix
\gl1
\gl2

\lf post`pone
\lx V
\alt Suffix
\gl1
\gl2

\lf `postulate
\lx V
\alt Suffix
\gl1
\gl2

\lf `pounce
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `pound
\lx V
\alt Suffix
\gl1
\gl2

\lf `pour
\lx V
\alt Suffix
\gl1
\gl2

\lf `pout
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `practice
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `practise
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `praise
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `prance
\lx V
\alt Suffix
\gl1
\gl2

\lf `prate
\lx V
\alt Suffix
\gl1
\gl2

\lf `prattle
\lx V
\alt Suffix
\gl1
\gl2

\lf `pray
\lx V
\alt Suffix
\gl1
\gl2

\lf `preach
\lx V
\alt Suffix
\gl1
\gl2

\lf pre`cede
\lx V
\alt Suffix
\gl1
\gl2

\lf pre`cess
\lx V
\alt Suffix
\gl1
\gl2

\lf pre`cipitate
\lx N-V
\alt Suffix
\gl1
\gl2

\lf pre`clude
\lx V
\alt Suffix
\gl1
\gl2

\lf pre`dict
\lx V
\alt Suffix
\gl1
\gl2

\lf pre`destinate
\lx V
\alt Suffix
\gl1
\gl2

\lf predis`pose
\lx V
\alt Suffix
\gl1
\gl2

\lf pre`dominate
\lx V
\alt Suffix
\gl1
\gl2

\lf pre`empt
\lx V
\alt Suffix
\gl1
\gl2

\lf `preen
\lx V
\alt Suffix
\gl1
\gl2

\lf pre`fer
\lx V
\alt Suffix
\gl1
\gl2

\lf pre`pare
\lx V
\alt Suffix
\gl1
\gl2

\lf pre`ponderate
\lx V
\alt Suffix
\gl1
\gl2

\lf pre`sage
\lx V
\alt Suffix
\gl1
\gl2

\lf pre`scribe
\lx V
\alt Suffix
\gl1
\gl2

\lf pre`sent
\lx V
\alt Suffix
\gl1
\gl2

\lf pre`serve
\lx V
\alt Suffix
\gl1
\gl2

\lf pre`side
\lx V
\alt Suffix
\gl1
\gl2

\lf `press
\lx N-V
\alt Suffix
\gl1
\gl2

\lf presti`digitate
\lx V
\alt Suffix
\gl1
\gl2

\lf pre`sume
\lx V
\alt Suffix
\gl1
\gl2

\lf pre`tend
\lx V
\alt Suffix
\gl1
\gl2

\lf pre`vail
\lx V
\alt Suffix
\gl1
\gl2

\lf pre`varicate
\lx V
\alt Suffix
\gl1
\gl2

\lf pre`vent
\lx V
\alt Suffix
\gl1
\gl2

\lf `prick
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `prime
\lx V
\alt Suffix
\gl1
\gl2

\lf `primp
\lx V
\alt Suffix
\gl1
\gl2

\lf `print
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `printmake
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `probe
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `proceed
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`cess
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`claim
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`crastinate
\lx V
\alt Suffix
\gl1
\gl2

\lf `procreate
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`cure
\lx V
\alt Suffix
\gl1
\gl2

\lf `prod
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`duce
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`fess
\lx V
\alt Suffix
\gl1
\gl2

\lf `proffer
\lx V
\alt Suffix
\gl1
\gl2

\lf prog`nosticate
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`gress
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`hibit
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`ject
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`liferate
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`long
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`longate
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`mote
\lx V
\alt Suffix
\gl1
\gl2

\lf `prompt
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `promulgate
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`nounce
\lx V
\alt Suffix
\gl1
\gl2

\lf `prop
\lx V
\alt Suffix
\gl1
\gl2

\lf propa`gandize
\lx V
\alt Suffix
\fea denom
\gl1 propa`ganda
\gl2

\lf `propagate
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`pel
\lx V
\alt Suffix
\gl1
\gl2

\lf `prophesy
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`pitiate
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`pose
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`pound
\lx V
\alt Suffix
\gl1
\gl2

\lf `prorate
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`rogue
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`scribe
\lx V
\alt Suffix
\gl1
\gl2

\lf `prosecute
\lx V
\alt Suffix
\gl1
\gl2

\lf `prospect
\lx V
\alt Suffix
\gl1
\gl2

\lf `prosper
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`tect
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`test
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`tract
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`trude
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`vide
\lx V
\alt Suffix
\gl1
\gl2

\lf pro`voke
\lx V
\alt Suffix
\gl1
\gl2

\lf `prowl
\lx V
\alt Suffix
\gl1
\gl2

\lf `prune
\lx V
\alt Suffix
\gl1
\gl2

\lf `pry
\lx V
\alt Suffix
\gl1
\gl2

\lf `psych
\lx V
\alt Suffix
\gl1
\gl2

\lf `publish
\lx V
\alt Suffix
\gl1
\gl2

\lf `pucker
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `puff
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `puke
\lx V
\alt Suffix
\gl1
\gl2

\lf `pull
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `pulsate
\lx V
\alt Suffix
\gl1
\gl2

\lf `pulse
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `pulverize
\lx V
\alt Suffix
\gl1
\gl2

\lf `pummel
\lx V
\alt Suffix
\gl1
\gl2

\lf `pump
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `punch
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `punctuate
\lx V
\alt Suffix
\gl1
\gl2

\lf `puncture
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `punish
\lx V
\alt Suffix
\gl1
\gl2

\lf `punt
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `pupate
\lx V
\alt Suffix
\gl1
\gl2

\lf `purchase
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `purge
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `purl
\lx V
\alt Suffix
\gl1
\gl2

\lf pur`loin
\lx V
\alt Suffix
\gl1
\gl2

\lf pur`port
\lx V
\alt Suffix
\gl1
\gl2

\lf `purr
\lx V
\alt Suffix
\gl1
\gl2

\lf `purse
\lx V
\alt Suffix
\gl1
\gl2

\lf pur`sue
\lx V
\alt Suffix
\gl1
\gl2

\lf pur`vey
\lx V
\alt Suffix
\gl1
\gl2

\lf `push
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `putter
\lx V
\alt Suffix
\gl1
\gl2

\lf `putrefy
\lx V
\alt Suffix
\fea deadj
\gl1 `putrid
\gl2


\lf `quack
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `quaff
\lx V
\alt Suffix
\gl1
\gl2

\lf `quail
\lx V
\alt Suffix
\gl1
\gl2

\lf `quake
\lx V
\alt Suffix
\gl1
\gl2

\lf `qualify
\lx V
\alt Suffix
\gl1
\gl2

\lf `quantify
\lx V
\alt Suffix
\gl1
\gl2

\lf `quarrel
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `quash
\lx V
\alt Suffix
\gl1
\gl2

\lf `quaver
\lx V
\alt Suffix
\gl1
\gl2

\lf `quell
\lx V
\alt Suffix
\gl1
\gl2

\lf `quench
\lx V
\alt Suffix
\gl1
\gl2

\lf `queued
\lx V
\alt Clitic
\fea ed
\gl1 `queue
\gl2

\lf `queued
\lx V
\alt PT_Suffix
\fea en
\gl1 `queue
\gl2

\lf `queuing
\lx V
\alt PT_Suffix
\fea ing
\gl1 `queue
\gl2

\lf `quibble
\lx V
\alt Suffix
\gl1
\gl2

\lf `quiver
\lx V
\alt Suffix
\gl1
\gl2

\lf `quizzes
\lx V
\alt Clitic
\gl1 `quiz
\gl2

\lf `quizzed
\lx V
\alt Clitic
\fea ed
\gl1 `quiz
\gl2

\lf `quizzed
\lx V
\alt PT_Suffix
\fea en
\gl1 `quiz
\gl2

\lf `quizzing
\lx V
\alt PT_Suffix
\fea ing
\gl1 `quiz
\gl2

\lf `quote
\lx N-V
\alt Suffix
\gl1
\gl2


\lf `rack
\lx V
\alt Suffix
\gl1
\gl2

\lf racke`teer
\lx V
\alt Suffix
\fea denom
\gl1 `racket
\gl2

\lf `radiate
\lx V
\alt Suffix
\gl1
\gl2

\lf `rag
\lx V
\alt Suffix
\gl1
\gl2

\lf `rail
\lx V
\alt Suffix
\gl1
\gl2

\lf `raise
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `rally
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `ram
\lx V
\alt Suffix
\gl1
\gl2

\lf `ramble
\lx V
\alt Suffix
\gl1
\gl2

\lf `ramify
\lx V
\alt Suffix
\gl1
\gl2

\lf `rank
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `rankle
\lx V
\alt Suffix
\gl1
\gl2

\lf `ransack
\lx V
\alt Suffix
\gl1
\gl2

\lf `rant
\lx V
\alt Suffix
\gl1
\gl2

\lf `rap
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `rape
\lx N-V
\alt Suffix
\gl1
\gl2

\lf rap`pel
\lx V
\alt Suffix
\gl1
\gl2

\lf `rarefy
\lx V
\alt Suffix
\gl1
\gl2

\lf `rasp
\lx V
\alt Suffix
\gl1
\gl2

\lf `rate
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `ratify
\lx V
\alt Suffix
\gl1
\gl2

\lf rati`ocinate
\lx V
\alt Suffix
\gl1
\gl2

\lf `rattle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `ravage
\lx V
\alt Suffix
\gl1
\gl2

\lf `rave
\lx V
\alt Suffix
\gl1
\gl2

\lf `ravel
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `ravish
\lx V
\alt Suffix
\gl1
\gl2

\lf `raze
\lx V
\alt Suffix
\gl1
\gl2

\lf `razz
\lx V
\alt Suffix
\gl1
\gl2

\lf `reach
\lx V
\alt Suffix
\gl1
\gl2

\lf re`act
\lx V
\alt Suffix
\gl1
\gl2

\lf `ream
\lx V
\alt Suffix
\gl1
\gl2

\lf `reap
\lx V
\alt Suffix
\gl1
\gl2

\lf `rear
\lx V
\alt Suffix
\gl1
\gl2

\lf `rebate
\lx N-V
\alt Suffix
\gl1
\gl2

\lf re`bel
\lx V
\alt Suffix
\gl1
\gl2

\lf re`buff
\lx N-V
\alt Suffix
\gl1
\gl2

\lf re`buke
\lx N-V
\alt Suffix
\gl1
\gl2

\lf re`but
\lx V
\alt Suffix
\gl1
\gl2

\lf re`cant
\lx V
\alt Suffix
\gl1
\gl2

\lf re`ceive
\lx V
\alt Suffix
\gl1
\gl2

\lf re`cess
\lx N-V
\alt Suffix
\gl1
\gl2

\lf re`ciprocate
\lx V
\alt Suffix
\gl1
\gl2

\lf `reckon
\lx V
\alt Suffix
\gl1
\gl2

\lf re`cline
\lx V
\alt Suffix
\gl1
\gl2

\lf `recognize
\lx V
\alt Suffix
\gl1
\gl2

\lf `recognise
\lx V
\alt Suffix
\gl1
\gl2

\lf `recompence
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `recompense
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `reconcile
\lx V
\alt Suffix
\gl1
\gl2

\lf recon`noiter
\lx V
\alt Suffix
\gl1
\gl2

\lf recon`noitre
\lx V
\alt Suffix
\gl1
\gl2

\lf re`cord
\lx V
\alt Suffix
\gl1
\gl2

\lf re`coup
\lx V
\alt Suffix
\gl1
\gl2

\lf re`cover
\lx V
\alt Suffix
\gl1
\gl2

\lf re`criminate
\lx V
\alt Suffix
\gl1
\gl2

\lf re`cruit
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `rectify
\lx V
\alt Suffix
\gl1
\gl2

\lf re`cuperate
\lx V
\alt Suffix
\gl1
\gl2

\lf re`cur
\lx V
\alt Suffix
\gl1
\gl2

\lf re`cuse
\lx V
\alt Suffix
\gl1
\gl2

\lf re`curse
\lx V
\alt Suffix
\gl1
\gl2

\lf re`dact
\lx V
\alt Suffix
\gl1
\gl2

\lf re`district
\lx V
\alt Suffix
\fea denom
\gl1 `district
\gl2

\lf re`dound
\lx V
\alt Suffix
\gl1
\gl2

\lf re`duce
\lx V
\alt Suffix
\gl1
\gl2

\lf `reek
\lx V
\alt Suffix
\gl1
\gl2

\lf re`fect
\lx V
\alt Suffix
\gl1
\gl2

\lf re`fer
\lx V
\alt Suffix
\gl1
\gl2

\lf refer`ee
\lx N-V
\alt Suffix
\gl1
\gl2

\lf re`fine
\lx V
\alt Suffix
\gl1
\gl2

\lf re`flect
\lx V
\alt Suffix
\gl1
\gl2

\lf re`fract
\lx V
\alt Suffix
\gl1
\gl2

\lf re`frain
\lx V
\alt Suffix
\gl1
\gl2

\lf re`fresh
\lx V
\alt Suffix
\gl1
\gl2

\lf re`frigerate
\lx V
\alt Suffix
\gl1
\gl2

\lf re`fund
\lx V
\alt Suffix
\gl1
\gl2

\lf re`fuse
\lx V
\alt Suffix
\gl1
\gl2

\lf re`fute
\lx V
\alt Suffix
\gl1
\gl2

\lf re`gale
\lx V
\alt Suffix
\gl1
\gl2

\lf re`gard
\lx N-V
\alt Suffix
\gl1
\gl2

\lf re`gress
\lx V
\alt Suffix
\gl1
\gl2

\lf re`gret
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `regulate
\lx V
\alt Suffix
\gl1
\gl2

\lf re`gurgitate
\lx V
\alt Suffix
\gl1
\gl2

\lf reha`bilitate
\lx V
\alt Suffix
\gl1
\gl2

\lf re`hearse
\lx V
\alt Suffix
\gl1
\gl2

\lf `reign
\lx N-V
\alt Suffix
\gl1
\gl2

\lf reim`burse
\lx V
\alt Suffix
\gl1
\gl2

\lf rein`force
\lx V
\alt Suffix
\gl1
\gl2

\lf re`ject
\lx V
\alt Suffix
\gl1
\gl2

\lf re`joice
\lx V
\alt Suffix
\gl1
\gl2

\lf re`juvenate
\lx V
\alt Suffix
\gl1
\gl2

\lf re`late
\lx V
\alt Suffix
\gl1
\gl2

\lf re`lax
\lx V
\alt Suffix
\gl1
\gl2

\lf re`lay
\lx V
\alt Suffix
\gl1
\gl2

\lf re`lease
\lx N-V
\alt Suffix
\gl1
\gl2

\lf re`lent
\lx V
\alt Suffix
\gl1
\gl2

\lf re`lieve
\lx V
\alt Suffix
\gl1
\gl2

\lf re`linquish
\lx V
\alt Suffix
\gl1
\gl2

\lf `relish
\lx V
\alt Suffix
\gl1
\gl2

\lf re`ly
\lx V
\alt Suffix
\gl1
\gl2

\lf re`main
\lx V
\alt Suffix
\gl1
\gl2

\lf re`mand
\lx V
\alt Suffix
\gl1
\gl2

\lf re`mark
\lx V
\alt Suffix
\gl1
\gl2

\lf re`member
\lx V
\alt Suffix
\gl1
\gl2

\lf re`mind
\lx V
\alt Suffix
\gl1
\gl2

\lf remi`nisce
\lx V
\alt Suffix
\gl1
\gl2

\lf re`mit
\lx V
\alt Suffix
\gl1
\gl2

\lf re`monstrate
\lx V
\alt Suffix
\gl1
\gl2

\lf re`move
\lx V
\alt Suffix
\gl1
\gl2

\lf re`munerate
\lx V
\alt Suffix
\gl1
\gl2

\lf `rend
\lx V
\alt Suffix
\gl1
\gl2

\lf `render
\lx V
\alt Suffix
\gl1
\gl2

\lf `rendezvous
\lx V
\alt Suffix
\gl1
\gl2

\lf `rendezvouses
\lx V
\alt Clitic
\fea s
\gl1 `rendezvous
\gl2

\lf `rendezvoused
\lx V
\alt Clitic
\fea ed
\gl1 `rendezvous
\gl2

\lf `rendezvoused
\lx V
\alt PT_Suffix
\fea en
\gl1 `rendezvous
\gl2

\lf re`nege
\lx V
\alt Suffix
\gl1
\gl2

\lf re`new
\lx V
\alt Suffix
\fea deadj
\gl1 `new
\gl2

\lf re`nounce
\lx V
\alt Suffix
\gl1
\gl2

\lf `renovate
\lx V
\alt Suffix
\gl1
\gl2

\lf `rent
\lx N-V
\alt Suffix
\gl1
\gl2

\lf re`nunciate
\lx V
\alt Suffix
\gl1
\gl2

\lf re`pair
\lx V
\alt Suffix
\gl1
\gl2

\lf re`patriate
\lx V
\alt Suffix
\gl1
\gl2

\lf re`peat
\lx V
\alt Suffix
\gl1
\gl2

\lf re`pel
\lx V
\alt Suffix
\gl1
\gl2

\lf re`pent
\lx V
\alt Suffix
\gl1
\gl2

\lf repre`hend
\lx V
\alt Suffix
\gl1
\gl2

\lf repre`sent
\lx V
\alt Suffix
\gl1
\gl2

\lf re`plenish
\lx V
\alt Suffix
\gl1
\gl2

\lf `replicate
\lx V
\alt Suffix
\gl1
\gl2

\lf re`press
\lx V
\alt Suffix
\gl1
\gl2

\lf re`prieve
\lx V
\alt Suffix
\gl1
\gl2

\lf `reprimand
\lx V
\alt Suffix
\gl1
\gl2

\lf re`prise
\lx V
\alt Suffix
\gl1
\gl2

\lf re`proach
\lx N-V
\alt Suffix
\gl1
\gl2

\lf re`prove
\lx V
\alt Suffix
\gl1
\gl2

\lf re`pudiate
\lx V
\alt Suffix
\gl1
\gl2

\lf re`pulse
\lx V
\alt Suffix
\gl1
\gl2

\lf re`pute
\lx V
\alt Suffix
\gl1
\gl2

\lf re`quest
\lx N-V
\alt Suffix
\gl1
\gl2

\lf re`quire
\lx V
\alt Suffix
\gl1
\gl2

\lf re`quite
\lx V
\alt Suffix
\gl1
\gl2

\lf re`scind
\lx V
\alt Suffix
\gl1
\gl2

\lf `rescue
\lx V
\alt Suffix
\gl1
\gl2

\lf re`semble
\lx V
\alt Suffix
\gl1
\gl2

\lf re`sent
\lx V
\alt Suffix
\gl1
\gl2

\lf re`serve
\lx V
\alt Suffix
\gl1
\gl2

\lf re`sign
\lx V
\alt Suffix
\gl1
\gl2

\lf re`sile
\lx V
\alt Suffix
\gl1
\gl2

\lf re`sist
\lx V
\alt Suffix
\gl1
\gl2

\lf re`solve
\lx V
\alt Suffix
\gl1
\gl2

\lf `resonate
\lx V
\alt Suffix
\gl1
\gl2

\lf re`sort
\lx V
\alt Suffix
\gl1
\gl2

\lf re`sound
\lx V
\alt Suffix
\gl1
\gl2

\lf re`spect
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `respirate
\lx V
\alt Suffix
\gl1
\gl2

\lf re`spire
\lx V
\alt Suffix
\gl1
\gl2

\lf re`spond
\lx V
\alt Suffix
\gl1
\gl2

\lf `rest
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `restitute
\lx V
\alt Suffix
\gl1
\gl2

\lf re`store
\lx V
\alt Suffix
\gl1
\gl2

\lf re`strain
\lx V
\alt Suffix
\gl1
\gl2

\lf re`strict
\lx V
\alt Suffix
\gl1
\gl2

\lf re`sult
\lx N-V
\alt Suffix
\gl1
\gl2

\lf re`sume
\lx V
\alt Suffix
\gl1
\gl2

\lf re`surge
\lx V
\alt Suffix
\gl1
\gl2

\lf resur`rect
\lx V
\alt Suffix
\gl1
\gl2

\lf re`suscitate
\lx V
\alt Suffix
\gl1
\gl2

\lf `retail
\lx N-V
\alt Suffix
\gl1
\gl2

\lf re`tain
\lx V
\alt Suffix
\gl1
\gl2

\lf re`taliate
\lx V
\alt Suffix
\gl1
\gl2

\lf re`tard
\lx V
\alt Suffix
\gl1
\gl2

\lf `retch
\lx V
\alt Suffix
\gl1
\gl2

\lf re`ticulate
\lx V
\alt Suffix
\gl1
\gl2

\lf re`tire
\lx V
\alt Suffix
\gl1
\gl2

\lf re`tort
\lx V
\alt Suffix
\gl1
\gl2

\lf re`tract
\lx V
\alt Suffix
\gl1
\gl2

\lf re`trench
\lx V
\alt Suffix
\gl1
\gl2

\lf re`trieve
\lx V
\alt Suffix
\gl1
\gl2

\lf retro`cede
\lx V
\alt Suffix
\gl1
\gl2

\lf retro`gress
\lx V
\alt Suffix
\gl1
\gl2

\lf `retrospect
\lx V
\alt Suffix
\gl1
\gl2

\lf `rev
\lx V
\alt Suffix
\gl1
\gl2

\lf `revved
\lx V
\alt Clitic
\fea ed
\gl1 `rev
\gl2

\lf `revved
\lx V
\alt PT_Suffix
\fea en
\gl1 `rev
\gl2

\lf `revving
\lx V
\alt PT_Suffix
\fea ing
\gl1 `rev
\gl2

\lf re`veal
\lx V
\alt Suffix
\gl1
\gl2

\lf `revel
\lx V
\alt Suffix
\gl1
\gl2

\lf re`verberate
\lx V
\alt Suffix
\gl1
\gl2

\lf re`vere
\lx V
\alt Suffix
\gl1
\gl2

\lf `reverence
\lx V
\alt Suffix
\gl1 re`vere
\gl2

\lf re`verse
\lx V
\alt Suffix
\gl1
\gl2

\lf re`vert
\lx V
\alt Suffix
\gl1
\gl2

\lf re`vile
\lx V
\alt Suffix
\gl1
\gl2

\lf re`vise
\lx V
\alt Suffix
\gl1
\gl2

\lf re`vive
\lx V
\alt Suffix
\gl1
\gl2

\lf re`voke
\lx V
\alt Suffix
\gl1
\gl2

\lf re`volve
\lx V
\alt Suffix
\gl1
\gl2

\lf re`volt
\lx V
\alt Suffix
\gl1
\gl2

\lf `rhapsodize
\lx V
\alt Suffix
\fea denom
\gl1 `rhapsody
\gl2

\lf `rhyme
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `rhymed
\lx V
\alt Clitic
\fea ed
\gl1 `rhyme
\gl2

\lf `rhymed
\lx V
\alt PT_Suffix
\fea en
\gl1 `rhyme
\gl2

\lf `rhyming
\lx V
\alt PT_Suffix
\fea ing
\gl1 `rhyme
\gl2

\lf `rib
\lx V
\alt Suffix
\gl1
\gl2

\lf `ricochet
\lx V
\alt Suffix
\gl1
\gl2

\lf `riddle
\lx V
\alt Suffix
\gl1
\gl2

\lf `ridicule
\lx V
\alt Suffix
\gl1
\gl2

\lf `riffle
\lx V
\alt Suffix
\gl1
\gl2

\lf `rifle
\lx V
\alt Suffix
\gl1
\gl2

\lf `right
\lx V
\alt Suffix
\gl1
\gl2

\lf `rile
\lx V
\alt Suffix
\gl1
\gl2

\lf `rinse
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `rip
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `ripple
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `roam
\lx V
\alt Suffix
\gl1
\gl2

\lf `roar
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `roast
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `rob
\lx V
\alt Suffix
\gl1
\gl2

\lf `rock
\lx V
\alt Suffix
\gl1
\gl2

\lf `roil
\lx V
\alt Suffix
\gl1
\gl2

\lf `roister
\lx V
\alt Suffix
\gl1
\gl2

\lf `roll
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `rollick
\lx V
\alt Suffix
\gl1
\gl2

\lf `romp
\lx V
\alt Suffix
\gl1
\gl2

\lf `roost
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `rot
\lx V
\alt Suffix
\gl1
\gl2

\lf `rotate
\lx V
\alt Suffix
\gl1
\gl2

\lf `rototill
\lx V
\alt Suffix
\gl1
\gl2

\lf `rouse
\lx V
\alt Suffix
\gl1
\gl2

\lf `roust
\lx V
\alt Suffix
\gl1
\gl2

\lf `rout
\lx V
\alt Suffix
\gl1
\gl2

\lf `rove
\lx V
\alt Suffix
\gl1
\gl2

\lf `row
\lx V
\alt Suffix
\gl1
\gl2

\lf `rub
\lx V
\alt Suffix
\gl1
\gl2

\lf `rue
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `ruffle
\lx V
\alt Suffix
\gl1
\gl2

\lf ruin
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `rule
\lx V
\alt Suffix
\gl1
\gl2

\lf rumble
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `ruminate
\lx V
\alt Suffix
\gl1
\gl2

\lf `rummage
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `rumple
\lx V
\alt Suffix
\gl1
\gl2

\lf `rupture
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `rush
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `rustle
\lx V
\alt Suffix
\gl1
\gl2


\lf `sack
\lx V
\alt Suffix
\gl1
\gl2

\lf `sag
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `sail
\lx V
\alt Suffix
\gl1
\gl2

\lf `salivate
\lx V
\alt Suffix
\fea denom
\gl1 sa`liva
\gl2

\lf sa`lute
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `salvage
\lx V
\alt Suffix
\gl1
\gl2

\lf `sanctify
\lx V
\alt Suffix
\gl1
\gl2

\lf `sand
\lx V
\alt Suffix
\gl1
\gl2

\lf `sanitate
\lx V
\alt Suffix
\gl1
\gl2

\lf `sanitize
\lx V
\alt Suffix
\gl1
\gl2

\lf `sap
\lx V
\alt Suffix
\gl1
\gl2

\lf sa`shay
\lx V
\alt Suffix
\gl1
\gl2

\lf `sate
\lx V
\alt Suffix
\gl1
\gl2

\lf `satiate
\lx V
\alt Suffix
\gl1
\gl2

\lf `satisfy
\lx V
\alt Suffix
\gl1
\gl2

\lf `saturate
\lx V
\alt Suffix
\gl1
\gl2

\lf `savage
\lx V
\alt Suffix
\gl1
\gl2

\lf `saunter
\lx V
\alt Suffix
\gl1
\gl2

\lf sau`te
\lx V
\alt Suffix
\gl1
\gl2

\lf `save
\lx V
\alt Suffix
\gl1
\gl2

\lf `scald
\lx V
\alt Suffix
\gl1
\gl2

\lf `scale
\lx V
\alt Suffix
\gl1
\gl2

\lf `scamper
\lx V
\alt Suffix
\gl1
\gl2

\lf `scan
\lx V
\alt Suffix
\gl1
\gl2

\lf `scare
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `scat
\lx V
\alt Suffix
\gl1
\gl2

\lf `scathe
\lx V
\alt Suffix
\gl1
\gl2

\lf `scatter
\lx V
\alt Suffix
\gl1
\gl2

\lf `scavenge
\lx V
\alt Suffix
\gl1
\gl2

\lf `scintillate
\lx V
\alt Suffix
\gl1
\gl2

\lf `scissor
\lx V
\alt Suffix
\gl1
\gl2

\lf `scoff
\lx V
\alt Suffix
\gl1
\gl2

\lf `scold
\lx V
\alt Suffix
\gl1
\gl2

\lf `scoot
\lx V
\alt Suffix
\gl1
\gl2

\lf `scorch
\lx V
\alt Suffix
\gl1
\gl2

\lf `scour
\lx V
\alt Suffix
\gl1
\gl2

\lf `scout
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `scowl
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `scrabble
\lx V
\alt Suffix
\gl1
\gl2

\lf `scram
\lx V
\alt Suffix
\gl1
\gl2

\lf `scramble
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `scrape
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `scratch
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `scrawl
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `scream
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `screech
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `scribble
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `scrimp
\lx V
\alt Suffix
\gl1
\gl2

\lf `scrounge
\lx V
\alt Suffix
\gl1
\gl2

\lf `scrub
\lx V
\alt Suffix
\gl1
\gl2

\lf `scrutinize
\lx V
\alt Suffix
\fea denom
\gl1 `scrutiny
\gl2

\lf `scud
\lx V
\alt Suffix
\gl1
\gl2

\lf `scuff
\lx V
\alt Suffix
\gl1
\gl2

\lf `scuffle
\lx V
\alt Suffix
\gl1
\gl2

\lf `sculpt
\lx V
\alt Suffix
\gl1
\gl2

\lf `scurry
\lx V
\alt Suffix
\gl1
\gl2

\lf `scuttle
\lx V
\alt Suffix
\gl1
\gl2

\lf `seal
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `sear
\lx V
\alt Suffix
\gl1
\gl2

\lf `search
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `season
\lx V
\alt Suffix
\gl1
\gl2

\lf se`cede
\lx V
\alt Suffix
\gl1
\gl2

\lf se`clude
\lx V
\alt Suffix
\gl1
\gl2

\lf `second
\lx V
\alt Suffix
\gl1
\gl2

\lf se`crete
\lx V
\alt Suffix
\gl1
\gl2

\lf se`duce
\lx V
\alt Suffix
\gl1
\gl2

\lf `seem
\lx V
\alt Suffix
\gl1
\gl2

\lf `seep
\lx V
\alt Suffix
\gl1
\gl2

\lf `seethe
\lx V
\alt Suffix
\gl1
\gl2

\lf `segregate
\lx V
\alt Suffix
\gl1
\gl2

\lf seg`ment
\lx V
\alt Suffix
\gl1
\gl2

\lf `seize
\lx V
\alt Suffix
\gl1
\gl2

\lf se`lect
\lx V
\alt Suffix
\gl1
\gl2

\lf se`quester
\lx V
\alt Suffix
\gl1
\gl2

\lf `serve
\lx V
\alt Suffix
\gl1
\gl2

\lf `settle
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `sever
\lx V
\alt Suffix
\gl1
\gl2

\lf `shag
\lx V
\alt Suffix
\gl1
\gl2

\lf `shamble
\lx V
\alt Suffix
\gl1
\gl2

\lf `shatter
\lx V
\alt Suffix
\gl1
\gl2

\lf `sheathe
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `sheer
\lx V
\alt Suffix
\gl1
\gl2

\lf shel`lacked
\lx V
\alt Clitic
\fea ed
\gl1 shel`lac
\gl2

\lf shel`lacked
\lx V
\alt PT_Suffix
\fea en
\gl1 shel`lac
\gl2

\lf shel`lacking
\lx V
\alt PT_Suffix
\fea ing
\gl1 shel`lac
\gl2

\lf `shelve
\lx V
\alt Suffix
\gl1
\gl2

\lf `shift
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `shimmer
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `shimmy
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `shipbuild
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `shirk
\lx V
\alt Suffix
\gl1
\gl2

\lf `shirr
\lx V
\alt Suffix
\gl1
\gl2

\lf `shiver
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `shoemake
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `shoo
\lx V
\alt Suffix
\gl1
\gl2

\lf `shopkeep
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `shoplift
\lx V
\alt Suffix
\gl1
\gl2

\lf `shore
\lx V
\alt Suffix
\gl1
\gl2

\lf short`change
\lx V
\alt Suffix
\gl1
\gl2

\lf `shout
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `shove
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `shriek
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `shrivel
\lx V
\alt Suffix
\gl1
\gl2

\lf `shrug
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `shuck
\lx V
\alt Suffix
\gl1
\gl2

\lf `shudder
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `shuffle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `shun
\lx V
\alt Suffix
\gl1
\gl2

\lf `shunt
\lx V
\alt Suffix
\gl1
\gl2

\lf `shy
\lx V
\alt Suffix
\gl1
\gl2

\lf `sic
\lx V
\alt Suffix
\gl1
\gl2

\lf `sidestep
\lx V
\alt Suffix
\gl1
\gl2

\lf `sidle
\lx V
\alt Suffix
\gl1
\gl2

\lf `sift
\lx V
\alt Suffix
\gl1
\gl2

\lf `sigh
\lx V
\alt Suffix
\gl1
\gl2

\lf `sightsee
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `simmer
\lx V
\alt Suffix
\gl1
\gl2

\lf `simper
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `simulate
\lx V
\alt Suffix
\gl1
\gl2

\lf `simulcast
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `singe
\lx V
\alt Suffix
\gl1
\gl2

\lf `single
\lx V
\alt Suffix
\gl1
\gl2

\lf `sip
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `situate
\lx V
\alt Suffix
\gl1
\gl2

\lf `sizzle
\lx V
\alt Suffix
\gl1
\gl2

\lf `skew
\lx V
\alt Suffix
\gl1
\gl2

\lf `skid
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `skim
\lx V
\alt Suffix
\gl1
\gl2

\lf `skimp
\lx V
\alt Suffix
\gl1
\gl2

\lf `skip
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `skulk
\lx V
\alt Suffix
\gl1
\gl2

\lf `skurry
\lx V
\alt Suffix
\gl1
\gl2

\lf `skydive
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `skyjack
\lx V
\alt Suffix
\gl1
\gl2

\lf `slake
\lx V
\alt Suffix
\gl1
\gl2

\lf `slam
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `slap
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `slash
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `slate
\lx V
\alt Suffix
\gl1
\gl2

\lf `slaughter
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `slaver
\lx V
\alt Suffix
\gl1
\gl2

\lf `sleepwalk
\lx V
\alt Suffix
\gl1
\gl2

\lf `slew
\lx V
\alt Suffix
\gl1
\gl2

\lf `slice
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `slight
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `slip
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `slither
\lx V
\alt Suffix
\gl1
\gl2

\lf `slobber
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `slog
\lx V
\alt Suffix
\gl1
\gl2

\lf `slop
\lx V
\alt Suffix
\gl1
\gl2

\lf `slosh
\lx V
\alt Suffix
\gl1
\gl2

\lf `slouch
\lx V
\alt Suffix
\gl1
\gl2

\lf `slug
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `slumber
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `slump
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `slur
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `slurp
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `smack
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `smart
\lx V
\alt Suffix
\gl1
\gl2

\lf `smash
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `smatter
\lx V
\alt Suffix
\gl1
\gl2

\lf `smear
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `smelt
\lx V
\alt Suffix
\gl1
\gl2

\lf `smile
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `smirk
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `smolder
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `smooch
\lx V
\alt Suffix
\gl1
\gl2

\lf `smother
\lx V
\alt Suffix
\gl1
\gl2

\lf `smuggle
\lx V
\alt Suffix
\gl1
\gl2

\lf `snap
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `snarl
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `snatch
\lx V
\alt Suffix
\gl1
\gl2

\lf `sneak
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `sneer
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `sneeze
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `snick
\lx V
\alt Suffix
\gl1
\gl2

\lf `snicker
\lx V
\alt Suffix
\gl1
\gl2

\lf `sniff
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `sniffle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `snigger
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `snip
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `snipe
\lx V
\alt Suffix
\gl1
\gl2

\lf `snivel
\lx V
\alt Suffix
\gl1
\gl2

\lf `snoop
\lx V
\alt Suffix
\gl1
\gl2

\lf `snooze
\lx V
\alt Suffix
\gl1
\gl2

\lf `snore
\lx V
\alt Suffix
\gl1
\gl2

\lf `snort
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `snub
\lx V
\alt Suffix
\gl1
\gl2

\lf `snuff
\lx V
\alt Suffix
\gl1
\gl2

\lf `snuffle
\lx V
\alt Suffix
\gl1
\gl2

\lf `snuggle
\lx V
\alt Suffix
\gl1
\gl2

\lf `soak
\lx V
\alt Suffix
\gl1
\gl2

\lf `soar
\lx V
\alt Suffix
\gl1
\gl2

\lf `sob
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `sock
\lx N-V
\alt Suffix
\gl1
\gl2

\lf so`licit
\lx V
\alt Suffix
\gl1
\gl2

\lf so`liloquize
\lx V
\alt Suffix
\fea denom
\gl1 so`liloquy
\gl2

\lf `solve
\lx V
\alt Suffix
\gl1
\gl2

\lf `soothe
\lx V
\alt Suffix
\gl1
\gl2

\lf `soothsay
\lx V
\alt Suffix
\gl1
\gl2

\lf so`phisticate
\lx V
\alt Suffix
\gl1
\gl2

\lf `souse
\lx V
\alt Suffix
\gl1
\gl2

\lf `spank
\lx V
\alt Suffix
\gl1
\gl2

\lf `spar
\lx V
\alt Suffix
\gl1
\gl2

\lf `spare
\lx V
\alt Suffix
\gl1
\gl2

\lf `sparge
\lx V
\alt Suffix
\gl1
\gl2

\lf `sparkle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `spatter
\lx V
\alt Suffix
\gl1
\gl2

\lf `spawn
\lx V
\alt Suffix
\gl1
\gl2

\lf `spay
\lx V
\alt Suffix
\gl1
\gl2

\lf `spearhead
\lx V
\alt Suffix
\gl1
\gl2

\lf `specify
\lx V
\alt Suffix
\gl1
\gl2

\lf `speculate
\lx V
\alt Suffix
\gl1
\gl2

\lf `spew
\lx V
\alt Suffix
\gl1
\gl2

\lf `spike
\lx V
\alt Suffix
\gl1
\gl2

\lf `spiral
\lx V
\alt Suffix
\gl1
\gl2

\lf `splash
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `splatter
\lx V
\alt Suffix
\gl1
\gl2

\lf `splay
\lx V
\alt Suffix
\gl1
\gl2

\lf `splice
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `splutter
\lx V
\alt Suffix
\gl1
\gl2

\lf `spoof
\lx V
\alt Suffix
\gl1
\gl2

\lf `sport
\lx V
\alt Suffix
\gl1
\gl2

\lf `spot
\lx V
\alt Suffix
\gl1
\gl2

\lf `sprawl
\lx V
\alt Suffix
\gl1
\gl2

\lf `sprinkle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `sprint
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `sprout
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `spurn
\lx V
\alt Suffix
\gl1
\gl2

\lf `spurt
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `sputter
\lx V
\alt Suffix
\gl1
\gl2

\lf `spy
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `squall
\lx V
\alt Suffix
\gl1
\gl2

\lf `squander
\lx V
\alt Suffix
\gl1
\gl2

\lf `square
\lx V
\alt Suffix
\gl1
\gl2

\lf `squash
\lx V
\alt Suffix
\gl1
\gl2

\lf `squat
\lx V
\alt Suffix
\gl1
\gl2

\lf `squawk
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `squeak
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `squeal
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `squeeze
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `squelch
\lx V
\alt Suffix
\gl1
\gl2

\lf `squint
\lx V
\alt Suffix
\gl1
\gl2

\lf `squirm
\lx V
\alt Suffix
\gl1
\gl2

\lf `squirt
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `stab
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `stabilize
\lx V
\alt Suffix
\fea deadj
\gl1 `stable
\gl2

\lf `stagger
\lx V
\alt Suffix
\gl1
\gl2

\lf `stagnate
\lx V
\alt Suffix
\gl1
\gl2

\lf `stain
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `stalk
\lx V
\alt Suffix
\gl1
\gl2

\lf `stall
\lx V
\alt Suffix
\gl1
\gl2

\lf `stammer
\lx V
\alt Suffix
\gl1
\gl2

\lf `stamp
\lx V
\alt Suffix
\gl1
\gl2

\lf `stanch
\lx V
\alt Suffix
\gl1
\gl2

\lf `stare
\lx V
\alt Suffix
\gl1
\gl2

\lf `stargaze
\lx V
\alt Suffix
\gl1
\gl2

\lf `start
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `startle
\lx V
\alt Suffix
\gl1
\gl2

\lf `starve
\lx V
\alt Suffix
\gl1
\gl2

\lf `stash
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `state
\lx V
\alt Suffix
\gl1
\gl2

\lf `stave
\lx V
\alt Suffix
\gl1
\gl2

\lf `stay
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `steep
\lx V
\alt Suffix
\gl1
\gl2

\lf `steer
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `stem
\lx V
\alt Suffix
\gl1
\gl2

\lf `stickle
\lx V
\alt Suffix
\gl1
\gl2

\lf `stifle
\lx V
\alt Suffix
\gl1
\gl2

\lf `stimulate
\lx V
\alt Suffix
\gl1
\gl2

\lf `stipple
\lx V
\alt Suffix
\gl1
\gl2

\lf `stipulate
\lx V
\alt Suffix
\gl1
\gl2

\lf `stir
\lx V
\alt Suffix
\gl1
\gl2

\lf `stoke
\lx V
\alt Suffix
\gl1
\gl2

\lf `stomp
\lx V
\alt Suffix
\gl1
\gl2

\lf `stonewall
\lx V
\alt Suffix
\gl1
\gl2

\lf `stoop
\lx V
\alt Suffix
\gl1
\gl2

\lf `storekeep
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `stop
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `store
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `stow
\lx V
\alt Suffix
\gl1
\gl2

\lf `straddle
\lx V
\alt Suffix
\gl1
\gl2

\lf `strafe
\lx V
\alt Suffix
\gl1
\gl2

\lf `straggle
\lx V
\alt Suffix
\gl1
\gl2

\lf `straiten
\lx V
\alt Suffix
\gl1
\gl2

\lf `strand
\lx V
\alt Suffix
\gl1
\gl2

\lf `strangle
\lx V
\alt Suffix
\gl1
\gl2

\lf `strangulate
\lx V
\alt Suffix
\gl1
\gl2

\lf `stratify
\lx V
\alt Suffix
\gl1
\gl2

\lf `stray
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `strengthen
\lx V
\alt Suffix
\fea denom
\gl1 `strength
\gl2

\lf `stretch
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `striate
\lx V
\alt Suffix
\gl1
\gl2

\lf `strikebreak
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `stroll
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `struggle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `strum
\lx V
\alt Suffix
\gl1
\gl2

\lf `strut
\lx V
\alt Suffix
\gl1
\gl2

\lf `stub
\lx V
\alt Suffix
\gl1
\gl2

\lf `stud
\lx V
\alt Suffix
\gl1
\gl2

\lf `study
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `stuff
\lx V
\alt Suffix
\gl1
\gl2

\lf `stultify
\lx V
\alt Suffix
\gl1
\gl2

\lf `stumble
\lx V
\alt Suffix
\gl1
\gl2

\lf `stun
\lx V
\alt Suffix
\gl1
\gl2

\lf `stump
\lx V
\alt Suffix
\gl1
\gl2

\lf `stunt
\lx V
\alt Suffix
\gl1
\gl2

\lf `stupefy
\lx V
\alt Suffix
\gl1
\gl2

\lf `stutter
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `styled
\lx V
\alt Clitic
\fea ed
\gl1 `style
\gl2

\lf `styled
\lx V
\alt PT_Suffix
\fea en
\gl1 `style
\gl2

\lf `styling
\lx V
\alt PT_Suffix
\fea ing
\gl1 `style
\gl2

\lf `stylize
\lx V
\alt Suffix
\fea denom
\gl1 `style
\gl2

\lf `stymie
\lx V
\alt Suffix
\gl1
\gl2

\lf `sub
\lx N-V
\alt Suffix
\gl1
\gl2

\lf sub`due
\lx V
\alt Suffix
\gl1
\gl2

\lf sub`ject
\lx V
\alt Suffix
\gl1
\gl2

\lf `subjugate
\lx V
\alt Suffix
\gl1
\gl2

\lf `sublimate
\lx V
\alt Suffix
\gl1
\gl2

\lf sub`merse
\lx V
\alt Suffix
\gl1
\gl2

\lf sub`mit
\lx V
\alt Suffix
\gl1
\gl2

\lf `subrogate
\lx V
\alt Suffix
\gl1
\gl2

\lf sub`scribe
\lx V
\alt Suffix
\gl1
\gl2

\lf `subsidize
\lx V
\alt Suffix
\fea denom
\gl1 `subsidy
\gl2

\lf sub`sist
\lx V
\alt Suffix
\gl1
\gl2

\lf sub`stantiate
\lx V
\alt Suffix
\fea denom
\gl1 `substance
\gl2

\lf `substitute
\lx N-V
\alt Suffix
\gl1
\gl2

\lf sub`sume
\lx V
\alt Suffix
\gl1
\gl2

\lf sub`tract
\lx V
\alt Suffix
\gl1
\gl2

\lf sub`vert
\lx V
\alt Suffix
\gl1
\gl2

\lf suc`ceed
\lx V
\alt Suffix
\gl1
\gl2

\lf suc`cumb
\lx V
\alt Suffix
\gl1
\gl2

\lf `suck
\lx V
\alt Suffix
\gl1
\gl2

\lf `suckle
\lx V
\alt Suffix
\gl1
\gl2

\lf `sue
\lx V
\alt Suffix
\gl1
\gl2

\lf `suffer
\lx V
\alt Suffix
\gl1
\gl2

\lf suf`fice
\lx V
\alt Suffix
\gl1
\gl2

\lf `suffocate
\lx V
\alt Suffix
\gl1
\gl2

\lf suf`fuse
\lx V
\alt Suffix
\gl1
\gl2

\lf sugar`coat
\lx V
\alt Suffix
\gl1
\gl2

\lf sug`gest
\lx V
\alt Suffix
\gl1
\gl2

\lf `suit
\lx V
\alt Suffix
\gl1
\gl2

\lf `sulk
\lx V
\alt Suffix
\gl1
\gl2

\lf `sully
\lx V
\alt Suffix
\gl1
\gl2

\lf `summarize
\lx V
\alt Suffix
\fea denom
\gl1 `summary
\gl2

\lf `summon
\lx V
\alt Suffix
\gl1
\gl2

\lf `sunbathe
\lx V
\alt Suffix
\gl1
\gl2

\lf `sunder
\lx V
\alt Suffix
\gl1
\gl2

\lf `sup
\lx V
\alt Suffix
\gl1
\gl2

\lf super`annuate
\lx V
\alt Suffix
\gl1
\gl2

\lf superin`tend
\lx V
\alt Suffix
\gl1
\gl2

\lf super`pose
\lx V
\alt Suffix
\gl1
\gl2

\lf super`sede
\lx V
\alt Suffix
\gl1
\gl2

\lf super`vene
\lx V
\alt Suffix
\gl1
\gl2

\lf `supervise
\lx V
\alt Suffix
\gl1
\gl2

\lf sup`plant
\lx V
\alt Suffix
\gl1
\gl2

\lf `supplicate
\lx V
\alt Suffix
\gl1
\gl2

\lf sup`ply
\lx N-V
\alt Suffix
\gl1
\gl2

\lf sup`port
\lx N-V
\alt Suffix
\gl1
\gl2

\lf sup`pose
\lx V
\alt Suffix
\gl1
\gl2

\lf sup`press
\lx V
\alt Suffix
\gl1
\gl2

\lf sur`cease
\lx V
\alt Suffix
\gl1
\gl2

\lf `surcharge
\lx N-V
\alt Suffix
\gl1 `charge
\gl2

\lf `surge
\lx N-V
\alt Suffix
\gl1
\gl2

\lf sur`mise
\lx V
\alt Suffix
\gl1
\gl2

\lf sur`mount
\lx V
\alt Suffix
\gl1
\gl2

\lf sur`pass
\lx V
\alt Suffix
\gl1
\gl2

\lf sur`prise
\lx N-V
\alt Suffix
\gl1
\gl2

\lf sur`render
\lx N-V
\alt Suffix
\gl1
\gl2

\lf sur`round
\lx V
\alt Suffix
\gl1
\gl2

\lf sur`veil
\lx V
\alt Suffix
\gl1
\gl2

\lf sur`vey
\lx V
\alt Suffix
\gl1
\gl2

\lf sur`vive
\lx V
\alt Suffix
\gl1
\gl2

\lf sus`pect
\lx V
\alt Suffix
\gl1
\gl2

\lf sus`pend
\lx V
\alt Suffix
\gl1
\gl2

\lf sus`tain
\lx V
\alt Suffix
\gl1
\gl2

\lf `swaddle
\lx V
\alt Suffix
\gl1
\gl2

\lf `swagger
\lx V
\alt Suffix
\gl1
\gl2

\lf `swap
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `swarm
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `swashbuckle
\lx V
\alt Suffix
\gl1
\gl2

\lf `swat
\lx V
\alt Suffix
\gl1
\gl2

\lf `swathe
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `sway
\lx V
\alt Suffix
\gl1
\gl2

\lf `swelter
\lx V
\alt Suffix
\gl1
\gl2

\lf `swerve
\lx V
\alt Suffix
\gl1
\gl2

\lf `swig
\lx V
\alt Suffix
\gl1
\gl2

\lf `swindle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `swipe
\lx V
\alt Suffix
\gl1
\gl2

\lf `swish
\lx V
\alt Suffix
\gl1
\gl2

\lf `swoon
\lx V
\alt Suffix
\gl1
\gl2

\lf `swoop
\lx V
\alt Suffix
\gl1
\gl2

\lf syl`labify
\lx V
\alt Suffix
\fea denom
\gl1 `syllable
\gl2

\lf `syllogize
\lx V
\alt Suffix
\gl1
\gl2

\lf `symbolise
\lx V
\alt Suffix
\fea denom
\gl1 `symbol
\gl2

\lf `symbolize
\lx V
\alt Suffix
\fea denom
\gl1 `symbol
\gl2

\lf `synchronize
\lx V
\alt Suffix
\fea denom
\gl1 `synchrony
\gl2

\lf `syncopate
\lx V
\alt Suffix
\gl1
\gl2

\lf `syndicate
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `synthesize
\lx V
\alt Suffix
\gl1
\gl2

\lf `systematize
\lx V
\alt Suffix
\fea denom
\gl1 `system
\gl2

\lf `systemize
\lx V
\alt Suffix
\fea denom
\gl1 `system
\gl2

\lf `swallow
\lx N-V
\alt Suffix
\gl1
\gl2


\lf `tabulate
\lx V
\alt Suffix
\gl1
\gl2

\lf `tackle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `tail
\lx V
\alt Suffix
\gl1
\gl2

\lf `taint
\lx V
\alt Suffix
\gl1
\gl2

\lf `talk
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `tamp
\lx V
\alt Suffix
\gl1
\gl2

\lf `tamper
\lx V
\alt Suffix
\gl1
\gl2

\lf `tan
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `tangle
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `tantalize
\lx V
\alt Suffix
\gl1
\gl2

\lf `tap
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `taper
\lx V
\alt Suffix
\gl1
\gl2

\lf `tarnish
\lx V
\alt Suffix
\gl1
\gl2

\lf `tarry
\lx V
\alt Suffix
\gl1
\gl2

\lf `taste
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `tatter
\lx V
\alt Suffix
\gl1
\gl2

\lf `tattle
\lx V
\alt Suffix
\gl1
\gl2

\lf `taunt
\lx V
\alt Suffix
\gl1
\gl2

\lf `tax
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `tease
\lx V
\alt Suffix
\gl1
\gl2

\lf `teem
\lx V
\alt Suffix
\gl1
\gl2

\lf `teeter
\lx V
\alt Suffix
\gl1
\gl2

\lf `teethe
\lx V
\alt Suffix
\gl1
\gl2

\lf `televise
\lx V
\alt Suffix
\gl1
\gl2

\lf `temper
\lx V
\alt Suffix
\gl1
\gl2

\lf `temporize
\lx V
\alt Suffix
\gl1
\gl2

\lf `tempt
\lx V
\alt Suffix
\gl1
\gl2

\lf `tend
\lx V
\alt Suffix
\gl1
\gl2

\lf `terminate
\lx V
\alt Suffix
\gl1
\gl2

\lf `terrify
\lx V
\alt Suffix
\gl1
\gl2

\lf `testify
\lx V
\alt Suffix
\gl1
\gl2

\lf `thank
\lx V
\alt Suffix
\gl1
\gl2

\lf `thaw
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `theorize
\lx V
\alt Suffix
\fea denom
\gl1 `theory
\gl2

\lf `thieve
\lx V
\alt Suffix
\gl1
\gl2

\lf `thrash
\lx V
\alt Suffix
\gl1
\gl2

\lf `threaten
\lx V
\alt Suffix
\fea denom
\gl1 `threat
\gl2

\lf `thresh
\lx V
\alt Suffix
\gl1
\gl2

\lf `throb
\lx V
\alt Suffix
\gl1
\gl2

\lf `throttle
\lx V
\alt Suffix
\gl1
\gl2

\lf `thud
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `thump
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `thwack
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `thwart
\lx V
\alt Suffix
\gl1
\gl2

\lf `tick
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `tickle
\lx V
\alt Suffix
\gl1
\gl2

\lf `tide
\lx V
\alt Suffix
\gl1
\gl2

\lf `tie
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

;\lf `tying
;\lx V
;\alt PT_Suffix
;\fea ing rev
;\gl1 `tie
;\gl2

\lf `till
\lx V
\alt Suffix
\gl1
\gl2

\lf `tilt
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `tinge
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `tingle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `tinker
\lx V
\alt Suffix
\gl1
\gl2

\lf `tinkle
\lx V
\alt Suffix
\gl1
\gl2

\lf `tipple
\lx V
\alt Suffix
\gl1
\gl2

\lf `tire
\lx V
\alt Suffix
\gl1
\gl2

\lf `tithe
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `titillate
\lx V
\alt Suffix
\gl1
\gl2

\lf `titter
\lx V
\alt Suffix
\gl1
\gl2

\lf `toast
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `toddle
\lx V
\alt Suffix
\gl1
\gl2

\lf `toggle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `toil
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `tolerate
\lx V
\alt Suffix
\gl1
\gl2

\lf `toll
\lx V
\alt Suffix
\gl1
\gl2

\lf `toot
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `tootle
\lx V
\alt Suffix
\gl1
\gl2

\lf `top
\lx V
\alt Suffix
\gl1
\gl2

\lf `topple
\lx N-V
\alt Suffix
\gl1
\gl2

\lf tor`ment
\lx V
\alt Suffix
\gl1
\gl2

\lf `torture
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `toss
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `tote
\lx V
\alt Suffix
\gl1
\gl2

\lf `totter
\lx V
\alt Suffix
\gl1
\gl2

\lf `touch
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `tousle
\lx V
\alt Suffix
\gl1
\gl2

\lf `tout
\lx V
\alt Suffix
\gl1
\gl2

\lf `tow
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `trace
\lx V
\alt Suffix
\gl1
\gl2

\lf `trade
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `trafficked
\lx V
\alt Clitic
\fea ed
\gl1 `traffic
\gl2

\lf `trafficked
\lx V
\alt PT_Suffix
\fea en
\gl1 `traffic
\gl2

\lf `trafficking
\lx V
\alt PT_Suffix
\fea ing
\gl1 `traffic
\gl2

\lf `trail
\lx V
\alt Suffix
\gl1
\gl2

\lf `trailblaze
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `train
\lx V
\alt Suffix
\gl1
\gl2

\lf `traipse
\lx V
\alt Suffix
\gl1
\gl2

\lf tra`ject
\lx V
\alt Suffix
\gl1
\gl2

\lf `tramp
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `trample
\lx V
\alt Suffix
\gl1
\gl2

\lf trans`act
\lx V
\alt Suffix
\gl1
\gl2

\lf tran`scend
\lx V
\alt Suffix
\gl1
\gl2

\lf tran`scribe
\lx V
\alt Suffix
\gl1
\gl2

\lf trans`duce
\lx V
\alt Suffix
\gl1
\gl2

\lf tran`sect
\lx V
\alt Suffix
\gl1
\gl2

\lf trans`fer
\lx V
\alt Suffix
\gl1
\gl2

\lf trans`figure
\lx V
\alt Suffix
\gl1
\gl2

\lf trans`fix
\lx V
\alt Suffix
\gl1
\gl2

\lf trans`form
\lx V
\alt Suffix
\gl1
\gl2

\lf trans`fuse
\lx V
\alt Suffix
\gl1
\gl2

\lf trans`gress
\lx V
\alt Suffix
\gl1
\gl2

\lf `translate
\lx V
\alt Suffix
\gl1
\gl2

\lf trans`literate
\lx V
\alt Suffix
\gl1
\gl2

\lf trans`mit
\lx V
\alt Suffix
\gl1
\gl2

\lf trans`mogrify
\lx V
\alt Suffix
\gl1
\gl2

\lf trans`mute
\lx V
\alt Suffix
\gl1
\gl2

\lf tran`spire
\lx V
\alt Suffix
\gl1
\gl2

\lf trans`plant
\lx V
\alt Suffix
\gl1
\gl2

\lf trans`port
\lx V
\alt Suffix
\gl1
\gl2

\lf trans`pose
\lx V
\alt Suffix
\gl1
\gl2

\lf trans`ship
\lx V
\alt Suffix
\gl1
\gl2

\lf `traumatise
\lx V
\alt Suffix
\fea denom
\gl1 `trauma
\gl2

\lf `traumatize
\lx V
\alt Suffix
\fea denom
\gl1 `trauma
\gl2

\lf `travel
\lx N-V
\alt Suffix
\gl1
\gl2

\lf tra`verse
\lx V
\alt Suffix
\gl1
\gl2

\lf `trawl
\lx V
\alt Suffix
\gl1
\gl2

\lf `treat
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `trek
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `trekked
\lx V
\alt Clitic
\fea ed
\gl1 `trek
\gl2

\lf `trekked
\lx V
\alt PT_Suffix
\fea en
\gl1 `trek
\gl2

\lf `trekking
\lx V
\alt PT_Suffix
\fea ing
\gl1 `trek
\gl2

\lf `tremble
\lx V
\alt Suffix
\gl1
\gl2

\lf `trend
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `trespass
\lx N-V
\alt Suffix
\gl1
\gl2

\lf tri`angulate
\lx V
\alt Suffix
\gl1
\gl2

\lf `tribulate
\lx V
\alt Suffix
\gl1
\gl2

\lf `trickle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `trifle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `trill
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `trim
\lx V
\alt Suffix
\gl1
\gl2

\lf `trip
\lx V
\alt Suffix
\gl1
\gl2

\lf `trisect
\lx V
\alt Suffix
\gl1
\gl2

\lf `tromp
\lx V
\alt Suffix
\gl1
\gl2

\lf `trot
\lx V
\alt Suffix
\gl1
\gl2

\lf `troublemake
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `troubleshoot
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `trounce
\lx V
\alt Suffix
\gl1
\gl2

\lf `trudge
\lx V
\alt Suffix
\gl1
\gl2

\lf `truncate
\lx V
\alt Suffix
\gl1
\gl2

\lf `truss
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `try
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `tug
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `tumble
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `tune
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `turn
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `tweak
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `tweeze
\lx V
\alt Suffix
\gl1
\gl2

\lf `twiddle
\lx V
\alt Suffix
\gl1
\gl2

\lf `twig
\lx V
\alt Suffix
\gl1
\gl2

\lf `twinge
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `twinkle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `twirl
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `twist
\lx N-V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `twitch
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `twitter
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `type
\lx V
\alt Suffix
\gl1
\gl2

\lf `typed
\lx V
\alt Clitic
\fea ed
\gl1 `type
\gl2

\lf `typed
\lx V
\alt PT_Suffix
\fea en
\gl1 `type
\gl2

\lf `typing
\lx V
\alt PT_Suffix
\fea ing
\gl1 `type
\gl2

\lf `typify
\lx V
\alt Suffix
\fea denom
\gl1 `type
\gl2

\lf `tyrannise
\lx V
\alt Suffix
\fea denom
\gl1 `tyranny
\gl2

\lf `tyrannize
\lx V
\alt Suffix
\fea denom
\gl1 `tyranny
\gl2


\lf `uglify
\lx V
\alt Suffix
\fea deadj
\gl1 `ugly
\gl2

\lf `ulcerate
\lx V
\alt Suffix
\fea denom
\gl1 `ulcer
\gl2

\lf `ululate
\lx V
\alt Suffix
\gl1
\gl2

\lf un`bosom
\lx V
\alt Suffix
\fea denom
\gl1 `bosom
\gl2

\lf un`church
\lx V
\alt Suffix
\fea denom
\gl1 `church
\gl2

\lf `underpin
\lx V
\alt Suffix
\gl1
\gl2

\lf `undulate
\lx V
\alt Suffix
\gl1
\gl2

\lf un`earth
\lx V
\alt Suffix
\fea denom
\gl1 `earth
\gl2

\lf un`horse
\lx V
\alt Suffix
\fea denom
\gl1 `horse
\gl2

\lf `unify
\lx V
\alt Suffix
\gl1
\gl2

\lf u`nite
\lx V
\alt Suffix
\gl1
\gl2

\lf un`limber
\lx V
\alt Suffix
\fea deadj
\gl1 `limber
\gl2

\lf un`man
\lx V
\alt Suffix
\fea denom
\gl1 `man
\gl2

\lf un`sex
\lx V
\alt Suffix
\fea denom
\gl1 `sex
\gl2

\lf `up
\lx V
\alt Suffix
\gl1
\gl2

\lf up`braid
\lx V
\alt Suffix
\gl1
\gl2

\lf `upchuck
\lx V
\alt Suffix
\gl1
\gl2

\lf `update
\lx V
\alt Suffix
\gl1
\gl2

\lf up`end
\lx V
\alt Suffix
\gl1
\gl2

\lf `upgrade
\lx N-V
\alt Suffix
\gl1
\gl2

\lf up`holster
\lx V
\alt Suffix
\gl1
\gl2

\lf up`heave
\lx V
\alt Suffix
\gl1
\gl2

\lf up`lift
\lx V
\alt Suffix
\gl1
\gl2

\lf `upload
\lx N-V
\alt Suffix
\gl1
\gl2

\lf up`raise
\lx V
\alt Suffix
\gl1
\gl2

\lf up`root
\lx V
\alt Suffix
\gl1
\gl2

\lf up`stage
\lx V
\alt Suffix
\gl1
\gl2

\lf `urge
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `urinate
\lx V
\alt Suffix
\fea denom
\gl1 `urine
\gl2

\lf `use
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `usher
\lx N-V
\alt Suffix
\gl1
\gl2

\lf u`surp
\lx V
\alt Suffix
\gl1
\gl2

\lf `utter
\lx V
\alt Suffix
\gl1
\gl2


\lf `vacate
\lx V
\alt Suffix
\gl1
\gl2

\lf `vacillate
\lx V
\alt Suffix
\gl1
\gl2

\lf `vaccinate
\lx V
\alt Suffix
\fea denom
\gl1 vac`cine
\gl2

\lf `validate
\lx V
\alt Suffix
\fea deadj
\gl1 `valid
\gl2

\lf `valuate
\lx V
\alt Suffix
\fea denom
\gl1 `value
\gl2

\lf va`moose
\lx V
\alt Suffix
\gl1
\gl2

\lf `vanish
\lx V
\alt Suffix
\gl1
\gl2

\lf `vanquish
\lx V
\alt Suffix
\gl1
\gl2

\lf `variate
\lx V
\alt Suffix
\gl1
\gl2

\lf `variegate
\lx V
\alt Suffix
\gl1
\gl2

\lf `vary
\lx V
\alt Suffix
\gl1
\gl2

\lf `vault
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `vaunt
\lx V
\alt Suffix
\gl1
\gl2

\lf `veer
\lx V
\alt Suffix
\gl1
\gl2

\lf `vegetate
\lx V
\alt Suffix
\gl1
\gl2

\lf `vend
\lx V
\alt Suffix
\gl1
\gl2

\lf `venerate
\lx V
\alt Suffix
\gl1
\gl2

\lf `venge
\lx V
\alt Suffix
\gl1
\gl2

\lf `vent
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `ventilate
\lx V
\alt Suffix
\gl1
\gl2

\lf `venture
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `verge
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `verify
\lx V
\alt Suffix
\gl1
\gl2

\lf `verse
\lx V
\alt Suffix
\gl1
\gl2

\lf `vest
\lx V
\alt Suffix
\gl1
\gl2

\lf `vex
\lx V
\alt Suffix
\gl1
\gl2

\lf `vibrate
\lx V
\alt Suffix
\gl1
\gl2

\lf `vie
\lx V
\alt Suffix
\gl1
\gl2

;\lf `vying
;\lx V
;\alt PT_Suffix
;\fea ing
;\gl1 `vie
;\gl2

\lf `vilify
\lx V
\alt Suffix
\gl1
\gl2

\lf `vindicate
\lx V
\alt Suffix
\gl1
\gl2

\lf `violate
\lx V
\alt Suffix
\gl1
\gl2

\lf `visit
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `vitiate
\lx V
\alt Suffix
\gl1
\gl2

\lf `vitrify
\lx V
\alt Suffix
\gl1
\gl2

\lf vi`tuperate
\lx V
\alt Suffix
\gl1
\gl2

\lf `vivify
\lx V
\alt Suffix
\gl1
\gl2

\lf `vivisect
\lx V
\alt Suffix
\gl1
\gl2

\lf vo`ciferate
\lx V
\alt Suffix
\gl1
\gl2

\lf `vomit
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `vouch
\lx V
\alt Suffix
\gl1
\gl2

\lf vouch`safe
\lx V
\alt Suffix
\gl1
\gl2


\lf `waddle
\lx V
\alt Suffix
\gl1
\gl2

\lf `wade
\lx V
\alt Suffix
\gl1
\gl2

\lf `waffle
\lx V
\alt Suffix
\gl1
\gl2

\lf `waft
\lx V
\alt Suffix
\gl1
\gl2

\lf `wag
\lx V
\alt Suffix
\gl1
\gl2

\lf `wage
\lx V
\alt Suffix
\gl1
\gl2

\lf `waggle
\lx V
\alt Suffix
\gl1
\gl2

\lf `wail
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `wait
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `waive
\lx V
\alt Suffix
\gl1
\gl2

\lf `waken
\lx V
\alt Suffix
\gl1
\gl2

\lf `walk
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `wallop
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `wallow
\lx V
\alt Suffix
\gl1
\gl2

\lf `wander
\lx V
\alt Suffix
\gl1
\gl2

\lf `wane
\lx V
\alt Suffix
\gl1
\gl2

\lf `wangle
\lx V
\alt Suffix
\gl1
\gl2

\lf `want
\lx V
\alt Suffix
\gl1
\gl2

\lf `warble
\lx V
\alt Suffix
\gl1
\gl2

\lf `ward
\lx V
\alt Suffix
\gl1
\gl2

\lf `warn
\lx V
\alt Suffix
\gl1
\gl2

\lf `warp
\lx V
\alt Suffix
\gl1
\gl2

\lf `warrant
\lx V
\alt Suffix
\gl1
\gl2

\lf `wash
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `waste
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `watch
\lx V
\alt Suffix
\gl1
\gl2

\lf `watchmake
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `waterlog
\lx V
\alt Suffix
\gl1
\gl2

\lf `wave
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `waver
\lx V
\alt Suffix
\gl1
\gl2

\lf `wean
\lx V
\alt Suffix
\gl1
\gl2

\lf `weatherstrip
\lx V
\alt Suffix
\gl1
\gl2

\lf `weigh
\lx V
\alt Suffix
\gl1
\gl2

\lf `welcome
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `weld
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `well
\lx V
\alt Suffix
\gl1
\gl2

\lf `welsh
\lx V
\alt Suffix
\gl1
\gl2

\lf `welter
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `wend
\lx V
\alt Suffix
\gl1
\gl2

\lf `whack
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `wham
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `wheedle
\lx V
\alt Suffix
\gl1
\gl2

\lf `wheeze
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `whelm
\lx V
\alt Suffix
\gl1
\gl2

\lf `whelp
\lx V
\alt Suffix
\gl1
\gl2

\lf `whet
\lx V
\alt Suffix
\gl1
\gl2

\lf `whiff
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `while
\lx V
\alt Suffix
\gl1
\gl2

\lf `whimper
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `whine
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `whinny
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `whir
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `whirl
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `whish
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `whisper
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `whistle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `whitewash
\lx V
\alt Suffix
\gl1
\gl2

\lf `whittle
\lx V
\alt Suffix
\gl1
\gl2

\lf `whiz
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `whizzed
\lx V
\alt Clitic
\fea ed
\gl1 `whiz
\gl2

\lf `whizzed
\lx V
\alt PT_Suffix
\fea en
\gl1 `whiz
\gl2

\lf `whizzing
\lx V
\alt PT_Suffix
\fea ing
\gl1 `whiz
\gl2

\lf `whoop
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `whop
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `whump
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `wield
\lx V
\alt Suffix
\gl1
\gl2

\lf `wig
\lx V
\alt Suffix
\gl1
\gl2

\lf `wiggle
\lx V
\alt Suffix
\gl1
\gl2

\lf `wilt
\lx V
\alt Suffix
\gl1
\gl2

\lf `wince
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `winemake
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2

\lf `wink
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `winnow
\lx V
\alt Suffix
\gl1
\gl2

\lf `wipe
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `wish
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `wither
\lx V
\alt Suffix
\gl1
\gl2

\lf `wizen
\lx V
\alt Suffix
\gl1
\gl2

\lf `wobble
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `wonder
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `woo
\lx V
\alt Suffix
\gl1
\gl2

\lf `work
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `worry
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `wot
\lx V
\alt Suffix
\gl1
\gl2

\lf `wow
\lx V
\alt Suffix
\gl1
\gl2

\lf `wrack
\lx V
\alt Suffix
\gl1
\gl2

\lf `wrangle
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `wrap
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `wreak
\lx V
\alt Suffix
\gl1
\gl2

\lf `wreathe
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `wreck
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `wrench
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `wrest
\lx V
\alt Suffix
\gl1
\gl2

\lf `wrestle
\lx V
\alt Suffix
\gl1
\gl2

\lf `wriggle
\lx V
\alt Suffix
\gl1
\gl2

\lf `writhe
\lx V
\alt Suffix
\gl1
\gl2

\lf `wrong
\lx V
\alt Suffix
\gl1
\gl2

\lf `wrongdo
\lx V
\alt Suffix
\fea boundstem
\gl1
\gl2


\lf `yammer
\lx V
\alt Suffix
\gl1
\gl2

\lf `yank
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `yap
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `yaw
\lx V
\alt Suffix
\gl1
\gl2

\lf `yawn
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `yearn
\lx V
\alt Suffix
\gl1
\gl2

\lf `yell
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `yellow
\lx V
\alt Suffix
\gl1
\gl2

\lf `yield
\lx V
\alt Suffix
\gl1
\gl2

\lf `yip
\lx N-V
\alt Suffix
\gl1
\gl2

\lf `yodel
\lx V
\alt Suffix
\gl1
\gl2

\lf `yowl
\lx N-V
\alt Suffix
\gl1
\gl2


\lf `zap
\lx V
\alt Suffix
\gl1
\gl2

\lf `zero
\lx V
\alt Suffix
\gl1
\gl2

\lf `zip
\lx V
\alt Suffix
\fea rev
\gl1
\gl2

\lf `zoom
\lx N-V
\alt Suffix
\gl1
\gl2

;END OF FILE
