\version "2.22.2"
% automatically converted by musicxml2ly from IMSLP630559-PMLP3144-Mozart_-_Clarinet_Concerto-clean.musicxml
\pointAndClickOff

%% additional definitions required by the score:
sfp = #(make-dynamic-script "sfp")

\header {
    title =  "III."
    composer =  \markup \column {
        \line { "Wolfgang Amadeus Mozart"}
        \line { "(1756-1791)"} }
    
    encodingsoftware =  "MuseScore 3.6.2"
    encodingdate =  "2022-04-11"
    }

#(set-global-staff-size 15.717142857142859)
\paper {
    
    paper-width = 21.01\cm
    paper-height = 29.69\cm
    top-margin = 1.0\cm
    bottom-margin = 2.0\cm
    left-margin = 1.0\cm
    right-margin = 1.0\cm
    indent = 1.6161538461538463\cm
    short-indent = 0.6464615384615385\cm
    }
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative b'' {
    \clef "treble" \time 4/4 \key a \major | % 1
    \tempo 4=120 R1*7 ^\markup{ \bold\small {Allegro} } | % 8
    r2 r8 \stemDown b8 ( [ _\f \stemDown cis8 \stemDown d8 ) ] | % 9
    \stemDown e2 \stemDown cis4. ( \stemDown d8 ) | \barNumberCheck #10
    \stemDown fis8 ( [ \stemDown e8 ) \stemDown d8 -. \stemDown cis8 -.
    ] \stemDown cis4 r4 | % 11
    \stemDown d4 ( _\p \stemDown b8 ) r8 \stemDown d4 ( \stemDown b8 ) r8
    | % 12
    \stemDown a2 ( \stemDown gis8 ) r8 r4 | % 13
    \stemDown a2 ( _\f \stemDown gis4 \stemDown fis4 ) | % 14
    \stemDown e4 ( \stemDown d'4 \stemDown cis4 \stemDown b4 ) | % 15
    \stemDown e4 ( \stemDown cis4 \stemDown b2 ) | % 16
    \stemDown a4 r4 r2 | % 17
    \stemDown d,2 \stemDown b4 \stemDown gis'4 | % 18
    \stemDown a4 r4 r2 | % 19
    \stemDown d2 \stemDown b4 \stemDown gis4 | \barNumberCheck #20
    \stemDown a16 ( [ \stemDown gis16 ) \stemDown b16 \stemDown a16 ]
    \stemDown cis16 [ \stemDown b16 \stemDown a16 \stemDown gis16 ]
    \stemDown fis16 ( [ \stemDown eis16 ) \stemDown gis16 \stemDown fis16
    ] \stemDown a8 r8 | % 21
    \stemDown fis16 ( [ \stemDown eis16 ) \stemDown gis16 \stemDown fis16
    ] \stemDown a16 [ \stemDown g16 \stemDown fis16 \stemDown e16 ]
    \stemDown d16 ( [ \stemDown cis16 ) \stemDown e16 \stemDown d16 ]
    \stemDown fis8 r8 | % 22
    \stemDown d'16 ( [ \stemDown cis16 ) \stemDown e16 \stemDown d16 ]
    \stemDown fis16 [ \stemDown e16 \stemDown d16 \stemDown cis16 ]
    \stemDown b16 ( [ \stemDown ais16 ) \stemDown cis16 \stemDown b16 ]
    \stemDown d16 [ \stemDown cis16 \stemDown b16 \stemDown a16 ] | % 23
    \stemDown gis4 r8 \stemDown e'8 \stemDown e8 [ \stemDown e8
    \stemDown e8 \stemDown e8 ] | % 24
    \stemDown e4 -. \stemDown e4 -. \stemDown e,4 -. r4 | % 25
    R1*7 | % 32
    \stemDown cis'2 _\f \stemDown a4.. ( \stemDown b16 ) | % 33
    \stemDown cis4 r4 r2 | % 34
    \stemDown cis2 \stemDown a4.. ( \stemDown b16 ) | % 35
    \stemDown cis4 r8 \stemDown cis16 [ \stemDown cis16 ] \stemDown cis8
    [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 36
    \stemDown d4 -. \stemDown e4 -. \stemDown fis4 -. r4 | % 37
    R1*2 | % 39
    r2 r4 \stemDown d8 _\p r8 | \barNumberCheck #40
    \stemDown cis8 r8 r4 r4 \stemDown d8 r8 | % 41
    \stemDown cis8 r8 r4 r4 \stemDown d8 r8 | % 42
    \stemDown cis8 r8 \stemDown d8 r8 \stemDown cis8 r8 \stemDown d8 r8
    | % 43
    \stemDown cis8 _\f \stemDown e4 \stemDown e4 \stemDown cis8 [
    \stemDown d8 \stemDown gis,8 ] | % 44
    a1 | % 45
    \stemDown g2 ( \stemDown eis2 | % 46
    \stemDown fis2 \stemDown dis2 ) | % 47
    \stemDown e2 \stemDown d16 [ \stemDown e16 \stemDown fis16 \stemDown
    gis16 ] \stemDown a16 [ \stemDown b16 \stemDown cis16 \stemDown d16
    ] | % 48
    \stemDown e4 \stemDown cis8. [ \stemDown cis16 ] \stemDown cis8 [
    \stemDown cis8 \stemDown b8 \stemDown b8 ] | % 49
    \stemDown a4 r4 r2 | \barNumberCheck #50
    R1*5 | % 55
    \stemDown a4 _\f \stemDown a8. [ \stemDown a16 ] \stemDown a8 [
    \stemDown a8 \stemDown a8 \stemDown a8 ] | % 56
    \stemDown a4 -. \stemDown cis4 -. \stemDown a4 -. r4 \bar "||"
    R1*18 | % 75
    \stemDown a4 _\f \stemDown a8. [ \stemDown a16 ] \stemDown a8 [
    \stemDown a8 \stemDown a8 \stemDown a8 ] | % 76
    \stemDown a4 r4 r2 | % 77
    R1*19 | % 96
    r8 \stemDown dis,16 ( [ _\p \stemDown e16 ] \stemDown fis8 ) [
    \stemDown g8 -. ] \stemDown a2 | % 97
    g1 | % 98
    \stemDown fis4 r8 \stemDown b8 -. _\f \stemDown g8 -. r8 \stemDown
    e'8 -. r8 | % 99
    \stemDown dis4 r8 \stemDown b8 -. \stemDown g8 -. r8 \stemDown g'8
    -. r8 | \barNumberCheck #100
    \stemDown fis4 r4 r2 | % 101
    R1*54 | % 155
    \stemDown a,2 _\f \stemDown fis4 \stemDown dis4 | % 156
    \stemDown e4 r4 r2 | % 157
    \stemDown a2 \stemDown fis4 \stemDown dis'4 | % 158
    \stemDown e4 r4 r2 | % 159
    \stemDown cis16 ( [ \stemDown bis16 ) \stemDown dis16 \stemDown cis16
    ] \stemDown e16 [ \stemDown d16 \stemDown cis16 \stemDown b16 ]
    \stemDown a16 ( [ \stemDown gis16 ) \stemDown b16 \stemDown a16 ]
    \stemDown cis8 r8 | \barNumberCheck #160
    \stemDown a16 ( [ \stemDown gis16 ) \stemDown b16 \stemDown a16 ]
    \stemDown cis16 [ \stemDown b16 \stemDown a16 \stemDown gis16 ]
    \stemDown fis16 ( [ \stemDown eis16 ) \stemDown gis16 \stemDown fis16
    ] \stemDown a16 [ \stemDown gis16 \stemDown fis16 \stemDown e16 ] | % 161
    \stemDown dis16 ( [ \stemDown cis16 ) \stemDown b16 \stemDown cis16
    ] \stemDown dis16 [ \stemDown e16 \stemDown fis16 \stemDown gis16 ]
    \stemDown a16 ( [ \stemDown gis16 ) \stemDown fis16 \stemDown gis16
    ] \stemDown a16 [ \stemDown b16 \stemDown cis16 \stemDown dis16 ] | % 162
    \stemDown e4 \stemDown e,4 ( \stemDown fis4 \stemDown g4 ) | % 163
    \stemDown gis4 \stemDown gis8. [ \stemDown gis16 ] \stemDown gis8 -.
    [ \stemDown gis8 -. \stemDown fis8 -. \stemDown fis8 -. ] | % 164
    \stemDown e4 r4 r2 | % 165
    R1*5 | \barNumberCheck #170
    \stemDown e'4 _\f \stemDown e8. [ \stemDown e16 ] \stemDown e8 [
    \stemDown e8 \stemDown e8 \stemDown e8 ] | % 171
    \stemDown e4 -. \stemDown e4 -. \stemDown e4 -. r4 \bar "||"
    R1*20 | % 192
    r2 \stemDown b2 _\f | % 193
    \stemDown a2 \stemDown fis'2 | % 194
    \stemDown eis4 r4 r2 | % 195
    R1*2 | % 197
    r4 \stemDown d4 ( -. _\p \stemDown d4 -. \stemDown d4 ) -. | % 198
    d1 ( | % 199
    cis1 ) | \barNumberCheck #200
    \stemDown d4 r4 r2 | % 201
    R1*14 | % 215
    r8 \stemDown eis8 [ _\f \stemDown fis8 \stemDown cis8 ] \stemDown d8
    [ \stemDown ais8 \stemDown b8 \stemDown fis8 ] | % 216
    R1*9 | % 225
    r2 \stemDown a2 _\p | % 226
    gis1 _\markup{ \tiny\italic {cresc.} } | % 227
    \stemDown fis8 -. [ _\f \stemDown eis8 -. \stemDown fis8 -.
    \stemDown gis8 -. ] \stemDown a8 -. [ \stemDown gis8 -. \stemDown a8
    -. \stemDown b8 -. ] | % 228
    \stemDown cis8 -. [ \stemDown bis8 -. \stemDown cis8 -. \stemDown d8
    -. ] \stemDown cis8 -. [ \stemDown b8 -. \stemDown a8 -. \stemDown
    gis8 -. ] | % 229
    \stemDown fis4 r4 r2 | \barNumberCheck #230
    R1*3 | % 233
    \stemDown e8 -. [ _\f \stemDown dis8 -. \stemDown e8 -. \stemDown
    fis8 -. ] \stemDown g8 -. [ \stemDown fis8 -. \stemDown g8 -.
    \stemDown a8 -. ] | % 234
    \stemDown b8 -. [ \stemDown ais8 -. \stemDown b8 -. \stemDown c8 -.
    ] \stemDown b8 -. [ \stemDown a8 -. \stemDown g8 -. \stemDown fis8
    -. ] | % 235
    \stemDown e4 r4 r2 | % 236
    R1*4 | \barNumberCheck #240
    \stemDown e2 _\f \stemDown g4 \stemDown cis4 | % 241
    \stemDown d4 r4 r2 | % 242
    \stemDown cis,2 \stemDown e4 \stemDown g4 | % 243
    \stemDown fis16 ( [ \stemDown e16 ) \stemDown g16 \stemDown fis16 ]
    \stemDown a16 [ \stemDown g16 \stemDown fis16 \stemDown e16 ]
    \stemDown d16 ( [ \stemDown cis16 ) \stemDown e16 \stemDown d16 ]
    \stemDown fis8 r8 | % 244
    \stemDown d'16 ( [ \stemDown cis16 ) \stemDown e16 \stemDown d16 ]
    \stemDown fis16 [ \stemDown e16 \stemDown d16 \stemDown cis16 ]
    \stemDown b16 ( [ \stemDown ais16 ) \stemDown cis16 \stemDown b16 ]
    \stemDown d8 r8 | % 245
    \stemDown b16 ( [ \stemDown ais16 ) \stemDown cis16 \stemDown b16 ]
    \stemDown d16 [ \stemDown cis16 \stemDown b16 \stemDown a16 ]
    \stemDown gis16 ( [ \stemDown fis16 ) \stemDown a16 \stemDown gis16
    ] \stemDown b16 [ \stemDown a16 \stemDown gis16 \stemDown fis16 ] | % 246
    \stemDown e8 r8 \stemDown d'2 \stemDown cis8. ( [ \stemDown b32
    \stemDown cis32 ) ] | % 247
    \stemDown b4 r8 \stemDown e8 \stemDown e8 [ \stemDown e8 \stemDown e8
    \stemDown e8 ] | % 248
    \stemDown e4 r4 r2 | % 249
    R1*20 | % 269
    \stemDown a,4 _\f \stemDown a8. [ \stemDown a16 ] \stemDown a8 [
    \stemDown a8 \stemDown a8 \stemDown a8 ] | \barNumberCheck #270
    \stemDown a4 r4 r2 | % 271
    R1*13 | % 284
    r8 \stemDown gis16 ( [ _\p \stemDown a16 ] \stemDown b8 ) [
    \stemDown c8 -. ] \stemDown d2 | % 285
    c1 | % 286
    \stemDown b4 r8 \stemDown e,8 -. \stemDown c8 -. r8 \stemDown a'8 -.
    r8 | % 287
    \stemDown gis4 r8 \stemDown e'8 -. \stemDown c8 -. r8 \stemDown c8
    -. r8 | % 288
    \stemDown b4 r4 r2 | % 289
    R1*35 | % 324
    e,1 ~ _\p | % 325
    e1 | % 326
    R1*6 | % 332
    r4 r8 \stemDown g8 -. _\p \stemDown fis8 -. [ \stemDown fis8 -.
    \stemDown g8 -. \stemDown g8 -. ] | % 333
    \stemDown fis4 r8 \stemUp g,8 -. \stemUp fis8 -. [ \stemUp fis8 -.
    \stemUp g8 -. \stemUp g8 -. ] | % 334
    \stemUp fis4 r4 r2 | % 335
    R1*9 | % 344
    \stemDown d'2 _\f \stemDown b4 \stemDown gis'4 | % 345
    \stemDown a4 r4 r2 | % 346
    \stemDown d2 \stemDown b4 \stemDown gis4 | % 347
    a1 | % 348
    \stemDown g2 ( \stemDown eis2 | % 349
    \stemDown fis2 \stemDown dis2 ) | \barNumberCheck #350
    \stemDown e2 \stemDown d16 [ \stemDown e16 \stemDown fis16 \stemDown
    gis16 ] \stemDown a16 [ \stemDown b16 \stemDown cis16 \stemDown d16
    ] | % 351
    \stemDown e4 \stemDown cis8. [ \stemDown cis16 ] \stemDown cis8 [
    \stemDown cis8 \stemDown b8 \stemDown b8 ] | % 352
    \stemDown a4 r4 r2 | % 353
    R1*5 | % 358
    \stemDown a4 _\f \stemDown a8. [ \stemDown a16 ] \stemDown a8 [
    \stemDown a8 \stemDown a8 \stemDown a8 ] | % 359
    \stemDown a4 \stemDown cis4 \stemDown a4 r4 \bar "|."
    \time 3/4  \key d \major \tempo 4=60 R2.*8 \stemDown a2. ~ ^\markup{
        \bold\small {Adagio} } _\f \stemDown a2. \stemDown a4. (
    \stemDown d8 [ \stemDown fis,8 \stemDown a8 ) ] \stemDown a8 ( [
    \stemDown g8 ) ] \stemDown fis4 r4 \stemDown e2 ( \stemDown fis4 )
    \stemDown e4 ( \stemDown a8 ) [ \stemDown cis8 ( \stemDown b8
    \stemDown fis'8 ) ] \stemDown a,2 \grace { \stemUp cis16 ( }
    \stemDown b8. ) [ \stemDown a16 ] \stemDown a4 r4 r4 R2.*9 \stemDown
    b4. ( _\f \stemDown a8 [ \stemDown g8 \stemDown fis8 ) ] \stemDown e4
    r4 r4 \stemDown cis'4. ( \stemDown b8 [ \stemDown a8 \stemDown gis8
    ) ] \stemDown fis4 r4 r4 r4 \stemDown g4. ( \stemDown fis8 )
    \stemDown e16 ( [ \stemDown b'16 \stemDown g16 \stemDown e16 ) ]
    \stemDown d4 \grace { \stemUp fis16 ( } \stemDown e8. [ \stemDown d16
    ) ] \stemDown d4 r4 r4 R2.*21 \stemDown a'2. ~ _\f \stemDown a8 r8 r4
    r4 \stemDown d2. ~ \stemDown d8 r8 r4 r4 \stemDown cis2. ~ \stemDown
    cis4 r4 r4 ^\fermata R2.*17 \stemDown b4. ( _\f \stemDown a8 [
    \stemDown g8 \stemDown fis8 ) ] \stemDown e4 r4 r4 \stemDown cis'4.
    ( _\f \stemDown b8 [ \stemDown a8 \stemDown gis8 ) ] \stemDown fis4
    r4 r4 r4 \stemDown d4 ( \stemDown dis4 ) \stemDown e16 ( [ \stemDown
    b'16 \stemDown g16 \stemDown e16 ) ] \stemDown d4 \grace { \stemUp
        fis16 ( } \stemDown e8. ) [ \stemDown d16 ] \stemDown d4 r4 r4
    R2.*13 \stemDown d'2. ~ _\p \stemDown d4 r4 r4 \bar "|."
    \time 6/8  \key a \major \tempo 4=120 r8 ^\markup{ \bold\small
        {Rondo. Allegro} } R2.*8 r8 -. [ \stemDown e8 -. ] _\p _\markup{
        \tiny\italic {cresc.} } \stemDown e8 -. [ \stemDown e8 -.
    \stemDown e8 -. ] \stemDown d4. ( _\f \stemDown cis8 ) r8 r8 R2.*2 r8
    \stemDown e8 -. [ _\p \stemDown e8 -. ] _\markup{ \tiny\italic
        {cresc.} } \stemDown e8 -. [ \stemDown e8 -. \stemDown e8 -. ]
    \stemDown gis,4. ( _\f \stemDown a8 ) r8 r8 R2.*16 \stemUp a,2. (
    _\p \stemDown b2. \stemDown cis2. _\markup{ \tiny\italic {cresc.} }
    \stemDown d2. ) \stemDown e4 r8 r4. R2.*4 \stemDown a4. ( _\f
    \stemDown e'4. ) \stemDown fis4. ( \stemDown d4. ) \stemDown cis4. (
    \stemDown b4. ) \stemDown a4 r8 r4. R2.*7 \stemDown e'2. _\f
    \stemDown e4 ( \stemDown cis8 ) \stemDown d4 ( \stemDown b8 )
    \stemDown e2. \stemDown e4 ( \stemDown cis8 ) \stemDown d4 (
    \stemDown b8 ) \stemDown a4 r8 \stemDown cis4 r8 \stemDown a4 r8 r4.
    R2.*20 \stemDown g4 _\p \stemDown g8 \grace { \stemUp a16 ( }
    \stemDown g8 ) -. [ \stemDown fis8 -. \stemDown g8 -. ] \stemDown
    fis4 ( \stemDown b8 ) \stemDown b8. [ \stemDown g16 ( \stemDown a16
    \stemDown fis16 ) ] \stemDown e4 \stemDown e8 \grace { \stemUp fis16
        ( } \stemDown e8 ) -. [ \stemDown dis8 -. \stemDown e8 -. ]
    \stemDown d4 ( \stemDown g8 ) \stemDown g8. [ \stemDown e16 (
    \stemDown f16 \stemDown d16 ) ] \stemDown c4 r8 r4. R2.*16 \stemDown
    gis'2. ( _\sfp \stemDown a4 ) r8 r4. R2.*2 \stemDown f'4. ~ _\sfp
    \stemDown f8 ( [ \stemDown e8 \stemDown d8 ) ] \stemDown c4 r8 r4.
    R2.*17 \stemDown e2. _\f \stemDown e4 ( \stemDown cis8 ) \stemDown d4
    ( \stemDown b8 ) \stemDown e2. \stemDown e4 ( \stemDown cis8 )
    \stemDown d4 ( \stemDown b8 ) \stemDown a4 r8 r4. \stemDown e'2.
    \stemDown cis2. ~ \stemDown cis2. \stemDown a8 [ \stemDown a8
    \stemDown a8 ] \stemDown a8 [ \stemDown a8 \stemDown a8 ] \stemDown
    a8 [ \stemDown a8 \stemDown a8 ] \stemDown a8 [ \stemDown a8
    \stemDown a8 ] \stemDown fis'8 [ \stemDown fis8 \stemDown e8 ]
    \stemDown e8 [ \stemDown d8 \stemDown d8 ] \stemDown cis8 [
    \stemDown cis8 \stemDown b8 ] \stemDown b8 [ \stemDown a8 \stemDown
    a8 ] \stemDown fis'2. \stemDown eis4. ( \stemDown fis4. ) \stemDown
    eis4. ( \stemDown fis4. ) \stemDown eis8 [ \stemDown cis8 \stemDown
    cis8 ] \stemDown cis8 [ \stemDown cis8 \stemDown cis8 ] \stemDown
    cis4 r8 r4. R2.*16 \stemDown a2. ( _\p \stemDown gis4 ) r8 r4.
    \stemDown bis2. ( \stemDown cis4 ) r8 r4. r4 \stemDown g'8 _\f
    \stemDown g8 [ \stemDown g8 \stemDown g8 ] \stemDown g4 r8 r4. R2.*9
    \stemDown b,,2. ~ _\p \stemDown b2. \stemUp a2. ~ \stemUp a2.
    \stemUp g2. ~ \stemUp g2. \stemUp fis4 r8 r4. R2.*10 r4 r8 \stemDown
    e''8 [ _\f \stemDown e8 \stemDown e8 ] \stemDown e4 r8 r4. R2.*34
    \stemDown f,4 _\p \stemDown f8 \grace { \stemUp g16 ( } \stemDown f8
    ) [ \stemDown e8 \stemDown f8 ] \stemDown e4 ( \stemDown a8 )
    \stemDown a8. [ \stemDown g16 ( \stemDown f16 \stemDown e16 ) ]
    \stemDown dis4 r8 r4. R2.*6 \stemDown gis2. ( _\sfp \stemDown a4 ) r8
    r4. R2.*2 \stemDown f'4. ~ _\sfp \stemDown f8 ( [ \stemDown e8
    \stemDown d8 ) ] \stemDown c4 r8 r4. R2.*18 r8 \stemDown e8 -. [ _\p
    \stemDown e8 -. ] _\markup{ \tiny\italic {cresc.} } \stemDown e8 -.
    [ \stemDown e8 -. \stemDown e8 -. ] \stemDown d4. ( _\f \stemDown
    cis8 ) r8 r8 R2.*2 r8 \stemDown e8 -. [ _\p \stemDown e8 -. ]
    _\markup{ \tiny\italic {cresc.} } \stemDown e8 -. [ \stemDown e8 -.
    \stemDown e8 -. ] \stemDown gis,4. ( _\f \stemDown a8 ) r8 r8 R2.*16
    \stemUp a,2. ( _\p \stemDown b2. \stemDown cis2. _\markup{
        \tiny\italic {cresc.} } \stemDown d2. ) \stemDown e4 r8 r4.
    R2.*4 \stemDown a4. ( _\f \stemDown e'4. ) \stemDown fis4. (
    \stemDown d4. ) \stemDown cis4. ( \stemDown b4. ) \stemDown a4 r8 r4.
    R2.*7 \stemDown e'2. _\f \stemDown e4 ( \stemDown cis8 ) \stemDown d4
    ( \stemDown b8 ) \stemDown e2. \stemDown e4 ( \stemDown cis8 )
    \stemDown d4 ( \stemDown b8 ) \stemDown a4 r8 r4. R2.*5 \stemDown e'4.
    _\f r4. R2. \stemDown e4. _\f r4. R2.*31 \stemDown e,2. _\p
    \stemDown d4. ( \stemDown b4. ) \stemDown e2. \stemDown fis4.
    _\markup{ \tiny\italic {cresc.} } \stemDown d'4. \stemDown b2.
    \stemDown a4. _\f \stemDown e'4. \stemDown e4 ( \stemDown cis8 )
    \stemDown d4 ( \stemDown b8 ) \stemDown e2. \stemDown e4 ( \stemDown
    cis8 ) \stemDown d4 ( \stemDown b8 ) \stemDown a4 r8 r4 \stemDown e'8
    -. \stemDown a,8 -. [ \stemDown cis8 -. \stemDown e,8 -. ] \stemDown
    a8 -. [ \stemDown cis,8 -. \stemDown e8 -. ] \stemUp a,4 r8
    \stemDown e''4 r8 \stemDown cis4 r8 r4. \bar "|."
    }

PartPTwoVoiceOne =  \relative gis'' {
    \clef "treble" \time 4/4 \key a \major | % 1
    R1*7 | % 8
    r2 r8 \stemDown gis8 ( [ _\f \stemDown a8 \stemDown b8 ) ] | % 9
    \stemDown cis2 \stemDown a4. ( \stemDown b8 ) | \barNumberCheck #10
    \stemDown d8 ( [ \stemDown cis8 ) \stemDown b8 -. \stemDown a8 -. ]
    \stemDown a4 r4 | % 11
    \stemDown fis4 ( _\p \stemDown d8 ) r8 \stemDown fis4 ( \stemDown d8
    ) r8 | % 12
    \stemDown cis2 ( \stemDown b8 ) r8 r4 | % 13
    \stemDown a'2 ( _\f \stemDown gis4 \stemDown fis4 ) | % 14
    \stemDown e4 ( \stemDown d'4 \stemDown cis4 \stemDown b4 ) | % 15
    \stemDown a2. ( \stemDown gis4 ) | % 16
    \stemDown a4 r4 r2 | % 17
    \stemDown b,2 \stemUp gis4 \stemDown e'4 | % 18
    \stemDown e4 r4 r2 | % 19
    \stemDown b'2 \stemDown gis4 \stemDown e4 | \barNumberCheck #20
    \stemDown a16 ( [ \stemDown gis16 ) \stemDown b16 \stemDown a16 ]
    \stemDown cis16 [ \stemDown b16 \stemDown a16 \stemDown gis16 ]
    \stemDown fis16 ( [ \stemDown eis16 ) \stemDown gis16 \stemDown fis16
    ] \stemDown a8 r8 | % 21
    \stemDown fis16 ( [ \stemDown eis16 ) \stemDown gis16 \stemDown fis16
    ] \stemDown a16 [ \stemDown g16 \stemDown fis16 \stemDown e16 ]
    \stemDown d16 ( [ \stemDown cis16 ) \stemDown e16 \stemDown d16 ]
    \stemDown fis8 r8 | % 22
    \stemDown d'16 ( [ \stemDown cis16 ) \stemDown e16 \stemDown d16 ]
    \stemDown fis16 [ \stemDown e16 \stemDown d16 \stemDown cis16 ]
    \stemDown b16 ( [ \stemDown ais16 ) \stemDown cis16 \stemDown b16 ]
    \stemDown d16 [ \stemDown cis16 \stemDown b16 \stemDown a16 ] | % 23
    \stemDown gis4 r8 \stemDown gis8 \stemDown gis8 [ \stemDown gis8
    \stemDown gis8 \stemDown gis8 ] | % 24
    \stemDown gis4 -. \stemDown gis4 -. \stemDown e4 -. r4 | % 25
    R1*7 | % 32
    \stemDown e2 _\f \stemDown cis4.. ( \stemDown d16 ) | % 33
    \stemDown e4 r4 r2 | % 34
    \stemDown e2 \stemDown cis4.. ( \stemDown d16 ) | % 35
    \stemDown e4 r8 \stemDown a16 [ \stemDown a16 ] \stemDown a8 [
    \stemDown a8 \stemDown a8 \stemDown a8 ] | % 36
    \stemDown a4 -. \stemDown a4 -. \stemDown a4 -. r4 | % 37
    R1*2 | % 39
    r4 \stemUp gis,8 _\p r8 \stemUp a8 r8 \stemDown gis'8 r8 |
    \barNumberCheck #40
    \stemDown a8 r8 \stemUp gis,8 r8 \stemUp a8 r8 \stemDown gis'8 r8 | % 41
    \stemDown a8 r8 \stemUp gis,8 r8 \stemUp a8 r8 \stemDown gis'8 r8 | % 42
    \stemDown a8 r8 \stemDown gis8 r8 \stemDown a8 r8 \stemDown gis8 r8
    | % 43
    \stemDown a8 _\f \stemDown e4 \stemDown e4 \stemDown e4 \stemDown e8
    | % 44
    e1 | % 45
    \stemDown g2 ( \stemDown eis2 | % 46
    \stemDown fis2 \stemDown dis2 ) | % 47
    \stemDown e2 \stemDown d16 [ \stemDown e16 \stemDown fis16 \stemDown
    gis16 ] \stemDown a16 [ \stemDown b16 \stemDown cis16 \stemDown d16
    ] | % 48
    \stemDown e4 \stemDown a,8. [ \stemDown a16 ] \stemDown a8 [
    \stemDown a8 \stemDown gis8 \stemDown gis8 ] | % 49
    \stemDown a4 r4 r2 | \barNumberCheck #50
    R1*5 | % 55
    \stemDown cis,4 _\f \stemDown cis8. [ \stemDown cis16 ] \stemDown
    cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 56
    \stemDown cis4 -. \stemDown e4 -. \stemDown cis4 -. r4 \bar "||"
    R1*18 | % 75
    \stemDown cis4 _\f \stemDown cis8. [ \stemDown cis16 ] \stemDown cis8
    [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 76
    \stemDown cis4 r4 r2 | % 77
    R1*19 | % 96
    r8 \stemDown b16 ( [ _\p \stemDown cis16 ] \stemDown dis8 ) [
    \stemDown e8 -. ] \stemDown fis2 ~ | % 97
    \stemDown fis2 \stemDown e2 | % 98
    \stemDown dis4 r8 \stemDown fis8 -. _\f \stemDown e8 -. r8 \stemDown
    g8 -. r8 | % 99
    \stemDown fis4 r8 \stemDown fis8 -. \stemDown e8 -. r8 \stemDown e'8
    -. r8 | \barNumberCheck #100
    \stemDown dis4 r4 r2 | % 101
    R1*54 | % 155
    \stemDown fis,2 _\f \stemDown dis4 \stemDown b4 | % 156
    \stemDown b4 r4 r2 | % 157
    \stemDown fis'2 \stemDown dis4 \stemDown b'4 | % 158
    \stemDown b4 r4 r2 | % 159
    \stemDown cis16 ( [ \stemDown bis16 ) \stemDown dis16 \stemDown cis16
    ] \stemDown e16 [ \stemDown d16 \stemDown cis16 \stemDown b16 ]
    \stemDown a16 ( [ \stemDown gis16 ) \stemDown b16 \stemDown a16 ]
    \stemDown cis8 r8 | \barNumberCheck #160
    \stemDown a16 ( [ \stemDown gis16 ) \stemDown b16 \stemDown a16 ]
    \stemDown cis16 [ \stemDown b16 \stemDown a16 \stemDown gis16 ]
    \stemDown fis16 ( [ \stemDown eis16 ) \stemDown gis16 \stemDown fis16
    ] \stemDown a16 [ \stemDown gis16 \stemDown fis16 \stemDown e16 ] | % 161
    \stemDown dis16 ( [ \stemDown cis16 ) \stemDown b16 \stemDown cis16
    ] \stemDown dis16 [ \stemDown e16 \stemDown fis16 \stemDown gis16 ]
    \stemDown a16 ( [ \stemDown gis16 ) \stemDown fis16 \stemDown gis16
    ] \stemDown a16 [ \stemDown b16 \stemDown cis16 \stemDown dis16 ] | % 162
    \stemDown e4 \stemDown b,4 ( \stemDown cis2 ) | % 163
    \stemDown b4 \stemDown e8. [ \stemDown e16 ] \stemDown e8 -. [
    \stemDown e8 -. \stemDown dis8 -. \stemDown dis8 -. ] | % 164
    \stemDown e4 r4 r2 | % 165
    R1*5 | \barNumberCheck #170
    \stemDown gis4 _\f \stemDown gis8. [ \stemDown gis16 ] \stemDown gis8
    [ \stemDown gis8 \stemDown gis8 \stemDown gis8 ] | % 171
    \stemDown gis4 -. \stemDown gis4 -. \stemDown gis4 -. r4 \bar "||"
    R1*20 | % 192
    r2 \stemDown gis2 _\f | % 193
    \stemDown fis2 \stemDown bis2 | % 194
    \stemDown cis4 r4 r2 | % 195
    R1*2 | % 197
    r4 \stemDown f,4 ( -. _\p \stemDown f4 -. \stemDown f4 ) -. | % 198
    fis1 ( | % 199
    g1 ) | \barNumberCheck #200
    \stemDown fis4 r4 r2 | % 201
    R1*14 | % 215
    r8 \stemDown eis'8 [ _\f \stemDown fis8 \stemDown cis8 ] \stemDown d8
    [ \stemDown ais8 \stemDown b8 \stemDown fis8 ] | % 216
    R1*9 | % 225
    r2 \stemDown fis2 ~ _\p | % 226
    \stemDown fis2 _\markup{ \tiny\italic {cresc.} } \stemDown eis2 | % 227
    \stemDown fis8 -. [ _\f \stemDown eis8 -. \stemDown fis8 -.
    \stemDown gis8 -. ] \stemDown a8 -. [ \stemDown gis8 -. \stemDown a8
    -. \stemDown b8 -. ] | % 228
    \stemDown cis8 -. [ \stemDown bis8 -. \stemDown cis8 -. \stemDown d8
    -. ] \stemDown cis8 -. [ \stemDown b8 -. \stemDown a8 -. \stemDown
    gis8 -. ] | % 229
    \stemDown fis4 r4 r2 | \barNumberCheck #230
    R1*3 | % 233
    \stemDown e8 -. [ _\f \stemDown dis8 -. \stemDown e8 -. \stemDown
    fis8 -. ] \stemDown g8 -. [ \stemDown fis8 -. \stemDown g8 -.
    \stemDown a8 -. ] | % 234
    \stemDown b8 -. [ \stemDown ais8 -. \stemDown b8 -. \stemDown c8 -.
    ] \stemDown b8 -. [ \stemDown a8 -. \stemDown g8 -. \stemDown fis8
    -. ] | % 235
    \stemDown e4 r4 r2 | % 236
    R1*4 | \barNumberCheck #240
    \stemUp a,2. _\f \stemDown g'4 | % 241
    \stemDown fis4 r4 r2 | % 242
    \stemUp a,2. \stemDown e'4 | % 243
    \stemDown fis16 ( [ \stemDown e16 ) \stemDown g16 \stemDown fis16 ]
    \stemDown a16 [ \stemDown g16 \stemDown fis16 \stemDown e16 ]
    \stemDown d16 ( [ \stemDown cis16 ) \stemDown e16 \stemDown d16 ]
    \stemDown fis8 r8 | % 244
    \stemDown d'16 ( [ \stemDown cis16 ) \stemDown e16 \stemDown d16 ]
    \stemDown fis16 [ \stemDown e16 \stemDown d16 \stemDown cis16 ]
    \stemDown b16 ( [ \stemDown ais16 ) \stemDown cis16 \stemDown b16 ]
    \stemDown d8 r8 | % 245
    \stemDown b16 ( [ \stemDown ais16 ) \stemDown cis16 \stemDown b16 ]
    \stemDown d16 [ \stemDown cis16 \stemDown b16 \stemDown a16 ]
    \stemDown gis16 ( [ \stemDown fis16 ) \stemDown a16 \stemDown gis16
    ] \stemDown b16 [ \stemDown a16 \stemDown gis16 \stemDown fis16 ] | % 246
    \stemDown e8 r8 \stemDown b'2 \stemDown a8. ( [ \stemDown gis32
    \stemDown a32 ) ] | % 247
    \stemDown gis4 r8 \stemDown gis8 \stemDown gis8 [ \stemDown gis8
    \stemDown gis8 \stemDown gis8 ] | % 248
    \stemDown gis4 r4 r2 | % 249
    R1*20 | % 269
    \stemDown cis,4 _\f \stemDown cis8. [ \stemDown cis16 ] \stemDown
    cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] |
    \barNumberCheck #270
    \stemDown cis4 r4 r2 | % 271
    R1*13 | % 284
    r8 \stemDown e16 ( [ _\p \stemDown fis16 ] \stemDown gis8 ) [
    \stemDown a8 -. ] \stemDown b2 ~ | % 285
    \stemDown b2 \stemDown a2 | % 286
    \stemDown gis4 r8 \stemDown b,8 -. \stemUp a8 -. r8 \stemDown c8 -.
    r8 | % 287
    \stemDown b4 r8 \stemDown b'8 -. \stemDown a8 -. r8 \stemDown a8 -.
    r8 | % 288
    \stemDown gis4 r4 r2 | % 289
    R1*43 | % 332
    r4 r8 \stemDown e8 -. _\p \stemDown d8 -. [ \stemDown d8 -.
    \stemDown e8 -. \stemDown e8 -. ] | % 333
    \stemDown d4 r8 \stemUp e,8 -. \stemUp d8 -. [ \stemUp d8 -. \stemUp
    e8 -. \stemUp e8 -. ] | % 334
    \stemUp d4 r4 r2 | % 335
    R1*9 | % 344
    \stemDown b'2 _\f \stemUp gis4 \stemDown e'4 | % 345
    \stemDown e4 r4 r2 | % 346
    \stemDown b'2 \stemDown gis4 \stemDown e4 | % 347
    e1 | % 348
    \stemDown g2 ( \stemDown eis2 | % 349
    \stemDown fis2 \stemDown dis2 ) | \barNumberCheck #350
    \stemDown e2 \stemDown d16 [ \stemDown e16 \stemDown fis16 \stemDown
    gis16 ] \stemDown a16 [ \stemDown b16 \stemDown cis16 \stemDown d16
    ] | % 351
    \stemDown e4 \stemDown a,8. [ \stemDown a16 ] \stemDown a8 [
    \stemDown a8 \stemDown gis8 \stemDown gis8 ] | % 352
    \stemDown a4 r4 r2 | % 353
    R1*5 | % 358
    \stemDown cis,4 _\f \stemDown cis8. [ \stemDown cis16 ] \stemDown
    cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 359
    \stemDown cis4 \stemDown e4 \stemDown cis4 r4 \bar "|."
    \time 3/4  \key d \major R2.*8 \stemUp a4 _\f \stemDown d4. (
    \stemDown fis8 ) \stemDown fis8 ( [ \stemDown e8 ) ] \stemDown d4 r4
    \stemDown fis2 ( \stemDown d8 [ \stemDown fis8 ) ] \stemDown e4 (
    \stemDown d4 ) r4 \stemDown cis2 ( \stemDown d4 ) \stemDown cis4. (
    \stemDown e8 [ \stemDown fis8 \stemDown d8 ) ] \stemDown cis2 \grace
    { \stemUp e16 ( } \stemDown d8. ) [ \stemDown cis16 ] \stemDown cis4
    r4 r4 R2.*9 \stemDown g'4. ( _\f \stemDown fis8 [ \stemDown e8
    \stemDown dis8 ) ] \stemDown e4 r4 r4 \stemDown a4. ( \stemDown gis8
    [ \stemDown fis8 \stemDown eis8 ) ] \stemDown fis4 r4 r4 r4
    \stemDown e4 ( \stemDown d4 \stemDown b4 \stemUp a4 \stemDown cis4 )
    \stemDown d4 r4 r4 R2.*21 \stemDown cis2. ~ _\f \stemDown cis8 r8 r4
    r4 \stemDown gis'2. ~ \stemDown gis8 r8 r4 r4 \stemDown g2. ~
    \stemDown g4 r4 r4 ^\fermata R2.*17 \stemDown g4. ( _\f \stemDown
    fis8 [ \stemDown e8 \stemDown dis8 ) ] \stemDown e4 r4 r4 \stemDown
    a4. ( _\f \stemDown gis8 [ \stemDown fis8 \stemDown eis8 ) ]
    \stemDown fis4 r4 r4 r4 \stemDown bes,4 ( \stemDown c4 \stemDown b4
    \stemUp a4 \stemDown cis4 ) \stemDown d4 r4 r4 R2.*13 \stemDown fis2.
    ~ _\p \stemDown fis4 r4 r4 \bar "|."
    \time 6/8  \key a \major r8 R2.*8 r8 -. [ \stemDown cis'8 -. ] _\p
    _\markup{ \tiny\italic {cresc.} } \stemDown cis8 -. [ \stemDown cis8
    -. \stemDown cis8 -. ] \stemDown b4. ( _\f \stemDown a8 ) r8 r8
    R2.*2 r8 \stemDown cis8 -. [ _\p \stemDown cis8 -. ] _\markup{
        \tiny\italic {cresc.} } \stemDown cis8 -. [ \stemDown cis8 -.
    \stemDown cis8 -. ] \stemDown d,4. ( _\f \stemDown cis8 ) r8 r8
    R2.*16 \stemUp a2. ( _\p \stemUp gis2. \stemUp a2. _\markup{
        \tiny\italic {cresc.} } \stemDown b2. ) \stemDown cis4 r8 r4.
    R2.*4 \stemDown a'2. ~ _\f \stemDown a4. \stemDown fis4 \stemDown b8
    \stemDown a4. ( \stemDown gis4. ) \stemDown a4 r8 r4. R2.*7
    \stemDown cis2. _\f \stemDown cis4 ( \stemDown a8 ) \stemDown b4 (
    \stemDown gis8 ) \stemDown cis2. \stemDown cis4 ( \stemDown a8 )
    \stemDown b4 ( \stemDown gis8 ) \stemDown a4 r8 \stemDown e4 r8
    \stemDown cis4 r8 r4. R2.*41 \stemDown f4. ~ _\sfp \stemDown f8 ( [
    \stemDown e8 \stemDown d8 ) ] \stemDown c4 r8 r4. R2.*2 \stemDown d'4.
    ( _\sfp \stemDown b4 \stemDown gis8 ) \stemDown a4 r8 r4. R2.*17
    \stemDown cis2. _\f \stemDown cis4 ( \stemDown a8 ) \stemDown b4 (
    \stemDown gis8 ) \stemDown cis2. \stemDown cis4 ( \stemDown a8 )
    \stemDown b4 ( \stemDown gis8 ) \stemDown a4 r8 r4. \stemDown e2.
    \stemDown cis2. ~ \stemDown cis2. \stemDown a'8 [ \stemDown a8
    \stemDown a8 ] \stemDown a8 [ \stemDown a8 \stemDown a8 ] \stemDown
    a8 [ \stemDown a8 \stemDown a8 ] \stemDown a8 [ \stemDown a8
    \stemDown a8 ] \stemDown d8 [ \stemDown d8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown b8 \stemDown b8 ] \stemDown a8 [
    \stemDown a8 \stemDown gis8 ] \stemDown gis8 [ \stemDown fis8
    \stemDown fis8 ] \stemDown b4. ( \stemDown bis4. ) \stemDown cis4. (
    \stemDown bis4. ) \stemDown cis4. ( \stemDown bis4. ) \stemDown cis8
    [ \stemDown cis,8 \stemDown cis8 ] \stemDown cis8 [ \stemDown cis8
    \stemDown cis8 ] \stemDown cis4 r8 r4. R2.*16 \stemDown fis2. ( _\p
    \stemDown eis4 ) r8 r4. \stemDown fis2. ( \stemDown eis4 ) r8 r4. r4
    \stemDown e'8 _\f \stemDown e8 [ \stemDown e8 \stemDown e8 ]
    \stemDown e4 r8 r4. R2.*9 \stemUp g,,2. ~ _\p \stemUp g2. \stemUp
    fis2. ~ \stemUp fis2. \stemUp e2. ~ \stemUp e2. \stemUp d4 r8 r4.
    R2.*10 r4 r8 \stemDown gis'8 [ _\f \stemDown gis8 \stemDown gis8 ]
    \stemDown gis4 r8 r4. R2.*43 \stemDown f4. ~ _\sfp \stemDown f8 ( [
    \stemDown e8 \stemDown d8 ) ] \stemDown c4 r8 r4. R2.*2 \stemDown d'4.
    ( _\sfp \stemDown b4 \stemDown gis8 ) \stemDown a4 r8 r4. R2.*18 r8
    \stemDown cis8 -. [ _\p \stemDown cis8 -. ] _\markup{ \tiny\italic
        {cresc.} } \stemDown cis8 -. [ \stemDown cis8 -. \stemDown cis8
    -. ] \stemDown b4. ( _\f \stemDown a8 ) r8 r8 R2.*2 r8 \stemDown cis8
    -. [ _\p \stemDown cis8 -. ] _\markup{ \tiny\italic {cresc.} }
    \stemDown cis8 -. [ \stemDown cis8 -. \stemDown cis8 -. ] \stemDown
    d,4. ( _\f \stemDown cis8 ) r8 r8 R2.*16 \stemUp a2. ( _\p \stemUp
    gis2. \stemUp a2. _\markup{ \tiny\italic {cresc.} } \stemDown b2. )
    \stemDown cis4 r8 r4. R2.*4 \stemDown a'2. ~ _\f \stemDown a4.
    \stemDown fis4 \stemDown b8 \stemDown a4. ( \stemDown gis4. )
    \stemDown a4 r8 r4. R2.*7 \stemDown cis2. _\f \stemDown cis4 (
    \stemDown a8 ) \stemDown b4 ( \stemDown gis8 ) \stemDown cis2.
    \stemDown cis4 ( \stemDown a8 ) \stemDown b4 ( \stemDown gis8 )
    \stemDown a4 r8 r4. R2.*5 \stemDown e4. _\f r4. R2. \stemDown e4.
    _\f r4. R2.*31 \stemDown cis2. _\p \stemDown b4. ( \stemUp gis4. )
    \stemDown cis2. \stemUp a4. _\markup{ \tiny\italic {cresc.} }
    \stemDown a'4. ~ \stemDown a4. \stemDown gis4. \stemDown a4. _\f
    \stemDown cis4. \stemDown cis4 ( \stemDown a8 ) \stemDown b4 (
    \stemDown gis8 ) \stemDown cis2. \stemDown cis4 ( \stemDown a8 )
    \stemDown b4 ( \stemDown gis8 ) \stemDown a4 r8 r4 \stemDown e'8 -.
    \stemDown a,8 -. [ \stemDown cis8 -. \stemDown e,8 -. ] \stemDown a8
    -. [ \stemDown cis,8 -. \stemDown e8 -. ] \stemUp a,4 r8 \stemDown
    cis'4 r8 \stemDown a4 r8 r4. \bar "|."
    }

PartPThreeVoiceOne =  \relative b {
    \clef "bass" \time 4/4 \key a \major | % 1
    R1*7 | % 8
    r2 r8 \stemDown b8 ( [ _\f \stemDown cis8 \stemDown d8 ) ] | % 9
    \stemDown e2 \stemDown cis4. ( \stemDown d8 ) | \barNumberCheck #10
    \stemDown fis8 ( [ \stemDown e8 ) \stemDown d8 -. \stemDown cis8 -.
    ] \stemDown cis4 r4 | % 11
    R1*2 | % 13
    \stemDown e2 ( _\f \stemDown d4 \stemDown cis4 ) | % 14
    \stemDown b4 ( \stemDown a4 \stemDown gis4 \stemDown fis4 ) | % 15
    \stemDown e8 r8 \stemDown fis8 [ \stemDown fis8 ] \stemDown d8 [
    \stemDown d8 \stemDown e8 \stemDown e8 ] | % 16
    \stemDown a8 [ \stemDown e8 \stemDown a8 \stemDown e8 ] \stemDown a8
    [ \stemDown e8 \stemDown a8 \stemDown e8 ] | % 17
    \stemDown gis8 [ \stemDown e8 \stemDown gis8 \stemDown e8 ]
    \stemDown b'8 [ \stemDown e,8 \stemDown d'8 \stemDown e,8 ] | % 18
    \stemDown cis'8 [ \stemDown e,8 \stemDown cis'8 \stemDown e,8 ]
    \stemDown a8 [ \stemDown e8 \stemDown a8 \stemDown e8 ] | % 19
    \stemDown gis8 [ \stemDown e8 \stemDown gis8 \stemDown e8 ]
    \stemDown b'8 [ \stemDown e,8 \stemDown d'8 \stemDown e,8 ] |
    \barNumberCheck #20
    \stemDown cis'4 r8 \stemDown cis8 ( \stemDown d4 ) r8 \stemDown cis8
    ( | % 21
    \stemDown d4 ) r8 \stemDown ais8 ( \stemDown b4 ) r8 \stemDown ais8
    ( | % 22
    \stemDown b4 ) r8 \stemDown fis8 ( \stemDown d4 ) r8 \stemDown dis8
    ( | % 23
    \stemDown e4 ) r16 \stemUp b16 [ \stemUp cis16 \stemUp dis16 ]
    \stemDown e16 [ \stemDown fis16 \stemDown gis16 \stemDown a16 ]
    \stemDown b16 [ \stemDown gis16 \stemDown b16 \stemDown gis16 ] | % 24
    \stemDown e4 -. \stemDown e'4 -. \stemDown e,4 -. r4 | % 25
    R1*6 | % 31
    \stemDown cis'2 _\f \stemDown a4.. ( \stemDown b16 ) | % 32
    \stemDown cis4 r4 r2 | % 33
    \stemDown cis2 \stemDown a4.. ( \stemDown b16 ) | % 34
    \stemDown cis4 r4 r2 | % 35
    \stemUp a,8 [ \stemUp b16 \stemUp cis16 ] \stemDown d16 [ \stemDown
    e16 \stemDown fis16 \stemDown gis16 ] \stemDown a16 [ \stemDown gis16
    \stemDown a16 \stemDown b16 ] \stemDown g16 [ \stemDown fis16
    \stemDown g16 \stemDown a16 ] | % 36
    \stemDown fis4 -. \stemUp cis4 -. \stemDown d4 -. r4 | % 37
    R1*2 | % 39
    r4 \stemDown e'8 _\p r8 \stemDown e8 r8 r4 | \barNumberCheck #40
    r4 \stemDown e8 r8 \stemDown e8 r8 r4 | % 41
    r4 \stemDown e8 r8 \stemDown e8 r8 r4 | % 42
    \stemDown e8 r8 \stemDown e8 r8 \stemDown e8 r8 \stemDown e8 r8 | % 43
    \stemDown e8 [ _\f \stemDown e,8 \stemDown gis8 \stemDown e8 ]
    \stemDown a8 [ \stemDown e8 \stemDown b'8 \stemDown e,8 ] | % 44
    \stemDown cis'8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 45
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown
    cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 46
    \stemDown d8 [ \stemDown d8 \stemDown d8 \stemDown d8 ] \stemDown
    fis8 [ \stemDown fis8 \stemDown fis8 \stemDown fis8 ] | % 47
    \stemDown e8 ( [ \stemDown dis8 \stemDown d8 \stemDown cis8 ) ]
    \stemDown b8 ( [ \stemDown d8 \stemDown cis8 \stemDown a8 ) ] | % 48
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown e8
    [ \stemDown e8 \stemDown e8 \stemDown e8 ] | % 49
    \stemUp a,4 r4 r2 | \barNumberCheck #50
    R1*5 | % 55
    \stemDown e''4 _\f \stemDown e8. [ \stemDown e16 ] \stemDown e8 [
    \stemDown e8 \stemDown e8 \stemDown e8 ] | % 56
    \stemDown e4 -. \stemDown e4 -. \stemDown e4 -. r4 \bar "||"
    R1*7 | % 64
    r8 \stemDown e4 ( _\p \stemDown d8 ) \stemDown cis8 -. \stemDown cis4
    ( \stemDown b8 ) | % 65
    \stemDown a4 r4 r2 | % 66
    R1*9 | % 75
    \stemDown e'4 _\f \stemDown e8. [ \stemDown e16 ] \stemDown e8 [
    \stemDown e8 \stemDown e8 \stemDown e8 ] | % 76
    \stemDown e4 r4 r2 | % 77
    R1*21 | % 98
    r8 \stemUp b,8 -. [ _\f \stemUp cis8 -. \stemUp dis8 -. ] \stemDown
    e16 [ \stemDown dis16 \stemDown e16 \stemDown fis16 ] \stemDown g16
    [ \stemDown fis16 \stemDown g16 \stemDown a16 ] | % 99
    \stemDown b8 [ \stemDown b,8 -. \stemDown cis8 -. \stemDown dis8 -.
    ] \stemDown e16 [ \stemDown dis16 \stemDown e16 \stemDown fis16 ]
    \stemDown g16 [ \stemDown fis16 \stemDown g16 \stemDown a16 ] |
    \barNumberCheck #100
    \stemDown b4 r4 r2 | % 101
    R1*53 | % 154
    \stemUp e,8 [ _\f \stemUp b8 \stemUp e8 \stemUp b8 ] \stemUp e8 [
    \stemUp b8 \stemUp e8 \stemUp b8 ] | % 155
    \stemUp dis8 [ \stemUp b8 \stemUp dis8 \stemUp b8 ] \stemDown fis'8
    [ \stemDown b,8 \stemDown a'8 \stemDown b,8 ] | % 156
    \stemDown gis'8 [ \stemDown b,8 \stemDown gis'8 \stemDown b,8 ]
    \stemUp e8 [ \stemUp b8 \stemUp e8 \stemUp b8 ] | % 157
    \stemUp dis8 [ \stemUp b8 \stemUp dis8 \stemUp b8 ] \stemDown fis'8
    [ \stemDown b,8 \stemDown a'8 \stemDown b,8 ] | % 158
    \stemDown gis'4 r8 \stemDown gis8 ( \stemDown a4 ) r8 \stemDown gis8
    ( | % 159
    \stemDown a4 ) r8 \stemDown eis8 ( \stemDown fis4 ) r8 \stemDown eis8
    ( | \barNumberCheck #160
    \stemDown fis4 ) r8 \stemUp cis8 ( \stemUp a4 ) r8 \stemUp ais8 | % 161
    \stemUp b8 [ \stemUp b8 \stemUp b8 \stemUp b8 ] \stemUp a8 [ \stemUp
    a8 \stemUp a8 \stemUp a8 ] | % 162
    \stemUp gis8 [ \stemUp gis8 \stemUp gis'8 \stemUp gis8 ] \stemDown a8
    [ \stemDown a8 \stemDown ais8 \stemDown ais8 ] | % 163
    \stemDown b8 [ \stemDown b8 \stemDown gis8 \stemDown e8 ] \stemUp b8
    [ \stemUp b8 \stemUp b8 \stemUp b8 ] | % 164
    \stemDown e4 r4 r2 | % 165
    R1*5 | \barNumberCheck #170
    \stemDown e8 [ _\f \stemDown e'8 \stemDown e8 \stemDown e8 ]
    \stemDown b8 [ \stemDown e8 \stemDown gis,8 \stemDown b8 ] | % 171
    \stemDown e,4 -. \stemDown e4 -. \stemDown e4 -. r4 \bar "||"
    R1*20 | % 192
    \stemDown cis'8 [ _\f \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 193
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 194
    \stemDown cis4 r4 r2 | % 195
    R1*2 | % 197
    r4 \stemDown d4 ( -. _\p \stemDown d4 -. \stemDown d4 ) -. | % 198
    a1 | % 199
    a,1 | \barNumberCheck #200
    \stemDown d4 r4 r2 | % 201
    R1*14 | % 215
    r8 \stemDown eis'8 [ _\f \stemDown fis8 \stemDown cis8 ] \stemDown d8
    [ \stemDown ais8 \stemDown b8 \stemDown fis8 ] | % 216
    R1*9 | % 225
    r2 \stemDown a2 _\p | % 226
    gis1 _\markup{ \tiny\italic {cresc.} } | % 227
    \stemDown fis8 -. [ _\f \stemDown eis8 -. \stemDown fis8 -.
    \stemDown gis8 -. ] \stemDown a8 -. [ \stemDown gis8 -. \stemDown a8
    -. \stemDown b8 -. ] | % 228
    \stemDown cis8 -. [ \stemDown bis8 -. \stemDown cis8 -. \stemDown d8
    -. ] \stemDown cis8 -. [ \stemDown b8 -. \stemDown a8 -. \stemDown
    gis8 -. ] | % 229
    \stemDown fis4 r4 \stemDown fis'2 ~ _\p | \barNumberCheck #230
    \stemDown fis2 ( \stemDown eis2 ) | % 231
    \stemDown fis4 r4 \stemDown e2 ~ | % 232
    \stemDown e2 ( \stemDown dis2 ) | % 233
    \stemDown e,8 -. [ _\f \stemDown dis8 -. \stemDown e8 -. \stemDown
    fis8 -. ] \stemDown g8 -. [ \stemDown fis8 -. \stemDown g8 -.
    \stemDown a8 -. ] | % 234
    \stemDown b8 -. [ \stemDown ais8 -. \stemDown b8 -. \stemDown c8 -.
    ] \stemDown b8 -. [ \stemDown a8 -. \stemDown g8 -. \stemDown fis8
    -. ] | % 235
    \stemDown e4 r4 \stemDown e'2 ~ _\p | % 236
    \stemDown e2 ( \stemDown dis2 ) | % 237
    \stemDown e4 r4 \stemDown d2 ~ | % 238
    \stemDown d2 ( \stemDown cis2 ) | % 239
    \stemUp d,8 [ _\f \stemUp a8 \stemUp d8 \stemUp a8 ] \stemUp d8 [
    \stemUp a8 \stemUp d8 \stemUp a8 ] | \barNumberCheck #240
    \stemUp cis8 [ \stemUp a8 \stemUp cis8 \stemUp a8 ] \stemUp e'8 [
    \stemUp a,8 \stemUp e'8 \stemUp a,8 ] | % 241
    \stemUp d8 [ \stemUp a8 \stemUp d8 \stemUp a8 ] \stemUp d8 [ \stemUp
    a8 \stemUp d8 \stemUp a8 ] | % 242
    \stemUp e'8 [ \stemUp a,8 \stemUp e'8 \stemUp a,8 ] \stemUp cis8 [
    \stemUp a8 \stemUp cis8 \stemUp a8 ] | % 243
    \stemDown d4 r8 \stemDown g8 ( \stemDown fis4 ) r8 \stemDown ais8 (
    | % 244
    \stemDown b4 ) r8 \stemDown e,8 ( \stemDown d4 ) r8 \stemDown fis8 (
    | % 245
    \stemDown gis4 ) r8 \stemDown dis'8 ( \stemDown e4 ) r8 \stemDown a,8
    ( | % 246
    \stemDown gis4 ) r16 \stemDown e16 [ \stemDown fis16 \stemDown gis16
    ] \stemDown a16 [ \stemDown gis16 \stemDown a16 \stemDown b16 ]
    \stemDown cis16 [ \stemDown b16 \stemDown cis16 \stemDown dis16 ] | % 247
    \stemDown e4 r16 \stemUp b,16 [ \stemUp cis16 \stemUp dis16 ]
    \stemDown e16 [ \stemDown fis16 \stemDown gis16 \stemDown a16 ]
    \stemDown b16 [ \stemDown gis16 \stemDown b16 \stemDown gis16 ] | % 248
    \stemDown e4 r4 r2 | % 249
    r2 r4 \stemDown e'4 ( ~ _\p | \barNumberCheck #250
    \stemDown e4 \stemDown d4 \stemDown cis4 \stemDown b4 | % 251
    \stemDown a4 ) r4 r2 | % 252
    R1*6 | % 258
    r8 \stemDown e'4 ( _\p \stemDown d8 ) \stemDown cis8 -. \stemDown
    cis4 ( \stemDown b8 ) | % 259
    \stemDown a4 r4 r2 | \barNumberCheck #260
    R1*9 | % 269
    \stemDown e'4 _\f \stemDown e8. [ \stemDown e16 ] \stemDown e8 [
    \stemDown e8 \stemDown e8 \stemDown e8 ] | \barNumberCheck #270
    \stemDown e4 r4 r2 | % 271
    R1*15 | % 286
    r8 \stemDown e,8 -. [ _\f \stemDown fis8 -. \stemDown gis8 -. ]
    \stemDown a16 [ \stemDown gis16 \stemDown a16 \stemDown b16 ]
    \stemDown c16 [ \stemDown b16 \stemDown c16 \stemDown d16 ] | % 287
    \stemDown e8 [ \stemDown e,8 -. \stemDown fis8 -. \stemDown gis8 -.
    ] \stemDown a16 [ \stemDown gis16 \stemDown a16 \stemDown b16 ]
    \stemDown c16 [ \stemDown b16 \stemDown c16 \stemDown d16 ] | % 288
    \stemDown e4 r4 r2 | % 289
    R1*35 | % 324
    e1 ~ _\p | % 325
    e1 | % 326
    R1*7 | % 333
    r4 r8 \stemDown g,8 -. _\p \stemDown fis8 -. [ \stemDown fis8 -.
    \stemDown g8 -. \stemDown g8 -. ] | % 334
    \stemDown fis4 r4 r2 | % 335
    R1*8 | % 343
    \stemDown a8 [ _\f \stemDown e8 \stemDown a8 \stemDown e8 ]
    \stemDown a8 [ \stemDown e8 \stemDown a8 \stemDown e8 ] | % 344
    \stemDown gis8 [ \stemDown e8 \stemDown gis8 \stemDown e8 ]
    \stemDown b'8 [ \stemDown e,8 \stemDown d'8 \stemDown e,8 ] | % 345
    \stemDown cis'8 [ \stemDown e,8 \stemDown cis'8 \stemDown e,8 ]
    \stemDown a8 [ \stemDown e8 \stemDown a8 \stemDown e8 ] | % 346
    \stemDown gis8 [ \stemDown e8 \stemDown gis8 \stemDown e8 ]
    \stemDown b'8 [ \stemDown e,8 \stemDown d'8 \stemDown e,8 ] | % 347
    \stemDown cis'8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 348
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown
    cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 349
    \stemDown d8 [ \stemDown d8 \stemDown d8 \stemDown d8 ] \stemDown
    fis8 [ \stemDown fis8 \stemDown fis8 \stemDown fis8 ] |
    \barNumberCheck #350
    \stemDown e8 ( [ \stemDown dis8 \stemDown d8 \stemDown cis8 ) ]
    \stemDown b8 ( [ \stemDown d8 \stemDown cis8 \stemDown a8 ) ] | % 351
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown e8
    [ \stemDown e8 \stemDown e8 \stemDown e8 ] | % 352
    \stemUp a,4 r4 r2 | % 353
    R1*5 | % 358
    \stemDown e''4 _\f \stemDown e8. [ \stemDown e16 ] \stemDown e8 [
    \stemDown e8 \stemDown e8 \stemDown e8 ] | % 359
    \stemDown e4 \stemDown e4 \stemDown e4 r4 \bar "|."
    \time 3/4  \key d \major R2.*8 \stemDown a,2. ~ _\f \stemDown a2.
    \stemDown a2. ~ \stemDown a2. \stemDown a2. ~ \stemDown a2 (
    \stemDown d4 ) \stemDown cis2 ( \stemDown b4 ) \stemDown a4 r4 r4
    R2.*8 \stemDown a2 _\f r4 r4 \stemDown c4 ( \stemDown b4 ) \stemDown
    b4. ( \stemDown a8 [ \stemDown g8 \stemDown fis8 ) ] \stemDown e8 r8
    \stemDown d'4 ( \stemDown cis4 ) \stemDown cis4. ( \stemDown b8 [
    \stemDown a8 \stemDown g8 ) ] \stemDown fis8 ( [ \stemDown g8 ) ]
    \stemUp cis,4 ( \stemDown d4 ) \stemUp g,4 \stemUp a4 \stemUp a4
    \stemDown d4 r4 r4 R2.*21 \stemDown e'2. ~ _\f \stemDown e8 r8 r4 r4
    \stemDown d2. ~ \stemDown d8 r8 r4 r4 \stemDown e2. ~ \stemDown e4 r4
    r4 ^\fermata R2.*16 \stemDown fis4. ( _\f \stemDown e8 [ \stemDown d8
    \stemDown cis8 ) ] \stemDown b8 r8 \stemDown c4 ( \stemDown b4 )
    \stemDown g'4. ( \stemDown fis8 [ \stemDown e8 \stemDown d8 ) ]
    \stemDown cis8 r8 \stemDown d4 ( \stemDown cis4 ) \stemDown cis8 (
    \stemDown a4 ) \stemDown g'8 ( [ \stemDown fis8 \stemDown e8 ) ]
    \stemDown d8. ( [ \stemDown g16 ) ] \stemDown g4. ( \stemDown fis8 )
    \stemDown e4 ( \stemDown a,4 \stemDown cis4 ) \stemDown d4 r4 r4
    R2.*13 \stemDown a2. ~ _\p \stemDown a4 r4 r4 \bar "|."
    \time 6/8  \key a \major r8 R2.*8 r8 -. [ \stemDown e'8 -. ] _\p
    _\markup{ \tiny\italic {cresc.} } \stemDown e8 -. [ \stemDown e8 -.
    \stemDown e8 -. ] \stemDown d4. ( _\f \stemDown cis8 ) r8 r8 R2.*2 r8
    \stemDown e8 -. [ _\p \stemDown e8 -. ] _\markup{ \tiny\italic
        {cresc.} } \stemDown e8 -. [ \stemDown e8 -. \stemDown e8 -. ]
    \stemDown d4. ( _\f \stemDown cis8 ) r8 r8 R2.*16 \stemDown a2. (
    _\p \stemDown b2. \stemDown cis2. _\markup{ \tiny\italic {cresc.} }
    \stemDown d2. ) \stemDown e4 r8 r4. R2.*4 \stemUp cis,8 [ _\f
    \stemUp cis8 \stemUp cis8 ] \stemUp cis8 [ \stemUp cis8 \stemUp cis8
    ] \stemDown d8 [ \stemDown d8 \stemDown d8 ] \stemDown d8 [
    \stemDown d8 \stemDown d8 ] \stemDown e8 [ \stemDown e8 \stemDown e8
    ] \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemUp a,4 r8 r4.
    R2.*7 \stemDown e''2. _\f \stemDown e4 ( \stemDown cis8 ) \stemDown
    d4 ( \stemDown b8 ) \stemDown e2. \stemDown e4 ( \stemDown cis8 )
    \stemDown d4 ( \stemDown b8 ) \stemDown a4 r8 \stemDown a4 r8
    \stemUp a,4 r8 r4. R2.*16 \stemDown e''2. ( _\p \stemDown dis4.
    \stemDown d4. \stemDown cis4. \stemDown c4. \stemDown b4 ) r8 r4.
    R2.*21 \stemDown f'4. ~ _\sfp \stemDown f8 ( [ \stemDown e8
    \stemDown d8 ) ] \stemDown c4 r8 r4. R2.*2 \stemDown f4. ~ _\sfp
    \stemDown f8 ( [ \stemDown e8 \stemDown d8 ) ] \stemDown c4 r8 r4.
    R2.*17 \stemDown e2. _\f \stemDown e4 ( \stemDown cis8 ) \stemDown d4
    ( \stemDown b8 ) \stemDown e2. \stemDown e4 ( \stemDown cis8 )
    \stemDown d4 ( \stemDown b8 ) \stemDown cis4 r8 r4. \stemDown e2.
    \stemDown cis2. ~ \stemDown cis2. \stemDown a8 [ \stemDown a8
    \stemDown a8 ] \stemDown a8 [ \stemDown a8 \stemDown a8 ] \stemDown
    a8 [ \stemDown a8 \stemDown a8 ] \stemDown a8 [ \stemDown a8
    \stemDown a8 ] \stemDown d8 [ \stemDown gis8 \stemDown gis8 ]
    \stemDown fis8 [ \stemDown fis8 \stemDown e8 ] \stemDown e8 [
    \stemDown d8 \stemDown d8 ] \stemDown cis8 [ \stemDown cis8
    \stemDown cis8 ] \stemDown dis8 [ \stemDown dis8 \stemDown dis8 ]
    \stemDown d8 [ \stemDown d8 \stemDown d8 ] \stemDown cis8 [
    \stemDown cis8 \stemDown cis8 ] \stemDown cis8 [ \stemDown cis8
    \stemDown cis8 ] \stemDown cis8 [ \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 ] \stemDown cis8 [
    \stemDown cis,8 \stemDown cis8 ] \stemUp cis8 [ \stemUp cis8 \stemUp
    cis8 ] \stemUp cis4 r8 r4. R2.*20 r4 \stemDown g''8 _\f \stemDown g8
    [ \stemDown g8 \stemDown g8 ] \stemDown g4 r8 r4. R2.*10 \stemDown e2.
    ( _\p \stemDown fis4 ) r8 r4. \stemDown d2. ( \stemDown e4 ) r8 r4.
    \stemDown cis2. ( \stemDown d4 ) r8 r4. R2.*10 r4 r8 \stemDown e8 [
    _\f \stemDown e8 \stemDown e8 ] \stemDown e4 r8 r4. R2.*43 \stemDown
    f4. ~ _\sfp \stemDown f8 ( [ \stemDown e8 \stemDown d8 ) ] \stemDown
    c4 r8 r4. R2.*2 \stemDown f4. ~ _\sfp \stemDown f8 ( [ \stemDown e8
    \stemDown d8 ) ] \stemDown c4 r8 r4. R2.*18 r8 \stemDown e8 -. [ _\p
    \stemDown e8 -. ] _\markup{ \tiny\italic {cresc.} } \stemDown e8 -.
    [ \stemDown e8 -. \stemDown e8 -. ] \stemDown d4. ( _\f \stemDown
    cis8 ) r8 r8 R2.*2 r8 \stemDown e8 -. [ _\p \stemDown e8 -. ]
    _\markup{ \tiny\italic {cresc.} } \stemDown e8 -. [ \stemDown e8 -.
    \stemDown e8 -. ] \stemDown d4. ( _\f \stemDown cis8 ) r8 r8 R2.*16
    \stemDown a2. ( _\p \stemDown b2. \stemDown cis2. _\markup{
        \tiny\italic {cresc.} } \stemDown d2. ) \stemDown e4 r8 r4.
    R2.*4 \stemUp cis,8 [ _\f \stemUp cis8 \stemUp cis8 ] \stemUp cis8 [
    \stemUp cis8 \stemUp cis8 ] \stemDown d8 [ \stemDown d8 \stemDown d8
    ] \stemDown d8 [ \stemDown d8 \stemDown d8 ] \stemDown e8 [
    \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8
    ] \stemUp a,4 r8 r4. R2.*7 \stemDown e''2. _\f \stemDown e4 (
    \stemDown cis8 ) \stemDown d4 ( \stemDown b8 ) \stemDown e2.
    \stemDown e4 ( \stemDown cis8 ) \stemDown d4 ( \stemDown b8 )
    \stemDown a4 r8 r4. R2.*5 \stemDown e'4. _\f r4. R2. \stemDown e4.
    _\f r4. R2.*31 \stemDown e2. _\p \stemDown d4. ( \stemDown b4. )
    \stemDown e2. \stemDown fis4. ( _\markup{ \tiny\italic {cresc.} }
    \stemDown d4. ) \stemDown b4. \stemDown e4. \stemDown e2. _\f
    \stemDown e4 ( \stemDown cis8 ) \stemDown d4 ( \stemDown b8 )
    \stemDown e2. \stemDown e4 ( \stemDown cis8 ) \stemDown d4 (
    \stemDown b8 ) \stemDown a4 r8 r4 \stemDown e'8 -. \stemDown a,8 -.
    [ \stemDown cis8 -. \stemDown e,8 -. ] \stemDown a8 -. [ \stemDown
    cis,8 -. \stemDown e8 -. ] \stemUp a,4 r8 \stemDown a'4 r8 \stemUp
    a,4 r8 r4. \bar "|."
    }

PartPFourVoiceOne =  \relative gis {
    \clef "bass" \time 4/4 \key a \major | % 1
    R1*7 | % 8
    r2 r8 \stemDown gis8 ( [ _\f \stemDown a8 \stemDown b8 ) ] | % 9
    \stemDown cis2 \stemDown a4. ( \stemDown b8 ) | \barNumberCheck #10
    \stemDown d8 ( [ \stemDown cis8 ) \stemDown b8 -. \stemDown a8 -. ]
    \stemDown a4 r4 | % 11
    R1*2 | % 13
    \stemDown cis2 ( _\f \stemDown b4 \stemDown a4 ) | % 14
    \stemDown gis4 ( \stemDown fis4 \stemDown e4 \stemDown d4 ) | % 15
    \stemUp cis8 r8 \stemDown fis8 [ \stemDown fis8 ] \stemDown d8 [
    \stemDown d8 \stemDown e8 \stemDown e8 ] | % 16
    \stemDown a8 [ \stemDown e8 \stemDown a8 \stemDown e8 ] \stemDown a8
    [ \stemDown e8 \stemDown a8 \stemDown e8 ] | % 17
    \stemDown gis8 [ \stemDown e8 \stemDown gis8 \stemDown e8 ]
    \stemDown b'8 [ \stemDown e,8 \stemDown d'8 \stemDown e,8 ] | % 18
    \stemDown cis'8 [ \stemDown e,8 \stemDown cis'8 \stemDown e,8 ]
    \stemDown a8 [ \stemDown e8 \stemDown a8 \stemDown e8 ] | % 19
    \stemDown gis8 [ \stemDown e8 \stemDown gis8 \stemDown e8 ]
    \stemDown b'8 [ \stemDown e,8 \stemDown d'8 \stemDown e,8 ] |
    \barNumberCheck #20
    \stemDown cis'4 r8 \stemDown cis8 ( \stemDown d4 ) r8 \stemDown cis8
    ( | % 21
    \stemDown d4 ) r8 \stemDown ais8 ( \stemDown b4 ) r8 \stemDown ais8
    ( | % 22
    \stemDown b4 ) r8 \stemDown fis8 ( \stemDown d4 ) r8 \stemDown dis8
    ( | % 23
    \stemDown e4 ) r16 \stemUp b16 [ \stemUp cis16 \stemUp dis16 ]
    \stemDown e16 [ \stemDown fis16 \stemDown gis16 \stemDown a16 ]
    \stemDown b16 [ \stemDown gis16 \stemDown b16 \stemDown gis16 ] | % 24
    \stemDown e4 -. \stemDown e'4 -. \stemDown e,4 -. r4 | % 25
    R1*6 | % 31
    \stemDown a2 _\f \stemDown fis4.. ( \stemDown gis16 ) | % 32
    \stemDown a4 r4 r2 | % 33
    \stemDown a2 \stemDown fis4.. ( \stemDown gis16 ) | % 34
    \stemDown a4 r4 r2 | % 35
    \stemUp a,8 [ \stemUp b16 \stemUp cis16 ] \stemDown d16 [ \stemDown
    e16 \stemDown fis16 \stemDown gis16 ] \stemDown a16 [ \stemDown gis16
    \stemDown a16 \stemDown b16 ] \stemDown g16 [ \stemDown fis16
    \stemDown g16 \stemDown a16 ] | % 36
    \stemDown fis4 -. \stemUp cis4 -. \stemDown d4 -. r4 | % 37
    R1*2 | % 39
    r4 \stemDown d'8 _\p r8 \stemDown cis8 r8 r4 | \barNumberCheck #40
    r4 \stemDown d8 r8 \stemDown cis8 r8 r4 | % 41
    r4 \stemDown d8 r8 \stemDown cis8 r8 r4 | % 42
    \stemDown cis8 r8 \stemDown d8 r8 \stemDown cis8 r8 \stemDown d8 r8
    | % 43
    \stemDown cis8 [ _\f \stemDown e,8 \stemDown gis8 \stemDown e8 ]
    \stemDown a8 [ \stemDown e8 \stemDown b'8 \stemDown e,8 ] | % 44
    \stemDown cis'8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 45
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown
    cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 46
    \stemDown d8 [ \stemDown d8 \stemDown d8 \stemDown d8 ] \stemDown
    fis8 [ \stemDown fis8 \stemDown fis8 \stemDown fis8 ] | % 47
    \stemDown e8 ( [ \stemDown dis8 \stemDown d8 \stemDown cis8 ) ]
    \stemDown b8 ( [ \stemDown d8 \stemDown cis8 \stemDown a8 ) ] | % 48
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown e8
    [ \stemDown e8 \stemDown e8 \stemDown e8 ] | % 49
    \stemUp a,4 r4 r2 | \barNumberCheck #50
    R1*5 | % 55
    \stemDown cis'4 _\f \stemDown cis8. [ \stemDown cis16 ] \stemDown
    cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 56
    \stemDown cis4 -. \stemDown cis4 -. \stemDown cis4 -. r4 \bar "||"
    R1*7 | % 64
    r8 \stemDown cis4 ( _\p \stemDown b8 ) \stemDown a8 -. \stemDown e4
    ( \stemDown d8 ) | % 65
    \stemUp cis4 r4 r2 | % 66
    R1*9 | % 75
    \stemDown cis'4 _\f \stemDown cis8. [ \stemDown cis16 ] \stemDown
    cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 76
    \stemDown cis4 r4 r2 | % 77
    R1*21 | % 98
    r8 \stemUp b,8 -. [ _\f \stemUp cis8 -. \stemUp dis8 -. ] \stemDown
    e16 [ \stemDown dis16 \stemDown e16 \stemDown fis16 ] \stemDown g16
    [ \stemDown fis16 \stemDown g16 \stemDown a16 ] | % 99
    \stemDown b8 [ \stemDown b,8 -. \stemDown cis8 -. \stemDown dis8 -.
    ] \stemDown e16 [ \stemDown dis16 \stemDown e16 \stemDown fis16 ]
    \stemDown g16 [ \stemDown fis16 \stemDown g16 \stemDown a16 ] |
    \barNumberCheck #100
    \stemDown b4 r4 r2 | % 101
    R1*53 | % 154
    \stemUp e,8 [ _\f \stemUp b8 \stemUp e8 \stemUp b8 ] \stemUp e8 [
    \stemUp b8 \stemUp e8 \stemUp b8 ] | % 155
    \stemUp dis8 [ \stemUp b8 \stemUp dis8 \stemUp b8 ] \stemDown fis'8
    [ \stemDown b,8 \stemDown a'8 \stemDown b,8 ] | % 156
    \stemDown gis'8 [ \stemDown b,8 \stemDown gis'8 \stemDown b,8 ]
    \stemUp e8 [ \stemUp b8 \stemUp e8 \stemUp b8 ] | % 157
    \stemUp dis8 [ \stemUp b8 \stemUp dis8 \stemUp b8 ] \stemDown fis'8
    [ \stemDown b,8 \stemDown a'8 \stemDown b,8 ] | % 158
    \stemDown gis'4 r8 \stemDown gis8 ( \stemDown a4 ) r8 \stemDown gis8
    ( | % 159
    \stemDown a4 ) r8 \stemDown eis8 ( \stemDown fis4 ) r8 \stemDown eis8
    ( | \barNumberCheck #160
    \stemDown fis4 ) r8 \stemUp cis8 ( \stemUp a4 ) r8 \stemUp ais8 | % 161
    \stemUp b8 [ \stemUp b8 \stemUp b8 \stemUp b8 ] \stemUp a8 [ \stemUp
    a8 \stemUp a8 \stemUp a8 ] | % 162
    \stemUp gis8 [ \stemUp gis8 \stemUp gis'8 \stemUp gis8 ] \stemDown a8
    [ \stemDown a8 \stemDown ais8 \stemDown ais8 ] | % 163
    \stemDown b8 [ \stemDown b8 \stemDown gis8 \stemDown e8 ] \stemUp b8
    [ \stemUp b8 \stemUp b8 \stemUp b8 ] | % 164
    \stemDown e4 r4 r2 | % 165
    R1*5 | \barNumberCheck #170
    \stemDown e8 [ _\f \stemDown e'8 \stemDown e8 \stemDown e8 ]
    \stemDown b8 [ \stemDown e8 \stemDown gis,8 \stemDown b8 ] | % 171
    \stemDown e,4 -. \stemDown e4 -. \stemDown e4 -. r4 \bar "||"
    R1*20 | % 192
    \stemDown cis'8 [ _\f \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 193
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 194
    \stemDown cis4 r4 r2 | % 195
    R1*2 | % 197
    r4 \stemDown gis4 ( -. _\p \stemDown gis4 -. \stemDown gis4 ) -. | % 198
    a1 | % 199
    a,1 | \barNumberCheck #200
    \stemDown d4 r4 r2 | % 201
    R1*14 | % 215
    r8 \stemDown eis'8 [ _\f \stemDown fis8 \stemDown cis8 ] \stemDown d8
    [ \stemDown ais8 \stemDown b8 \stemDown fis8 ] | % 216
    R1*9 | % 225
    r2 \stemDown fis2 ~ _\p | % 226
    \stemDown fis2 _\markup{ \tiny\italic {cresc.} } \stemDown eis2 | % 227
    \stemDown fis8 -. [ _\f \stemDown eis8 -. \stemDown fis8 -.
    \stemDown gis8 -. ] \stemDown a8 -. [ \stemDown gis8 -. \stemDown a8
    -. \stemDown b8 -. ] | % 228
    \stemDown cis8 -. [ \stemDown bis8 -. \stemDown cis8 -. \stemDown d8
    -. ] \stemDown cis8 -. [ \stemDown b8 -. \stemDown a8 -. \stemDown
    gis8 -. ] | % 229
    \stemDown fis4 r4 r2 | \barNumberCheck #230
    R1*3 | % 233
    \stemDown e8 -. [ _\f \stemDown dis8 -. \stemDown e8 -. \stemDown
    fis8 -. ] \stemDown g8 -. [ \stemDown fis8 -. \stemDown g8 -.
    \stemDown a8 -. ] | % 234
    \stemDown b8 -. [ \stemDown ais8 -. \stemDown b8 -. \stemDown c8 -.
    ] \stemDown b8 -. [ \stemDown a8 -. \stemDown g8 -. \stemDown fis8
    -. ] | % 235
    \stemDown e4 r4 r2 | % 236
    R1*3 | % 239
    \stemUp d8 [ _\f \stemUp a8 \stemUp d8 \stemUp a8 ] \stemUp d8 [
    \stemUp a8 \stemUp d8 \stemUp a8 ] | \barNumberCheck #240
    \stemUp cis8 [ \stemUp a8 \stemUp cis8 \stemUp a8 ] \stemUp e'8 [
    \stemUp a,8 \stemUp e'8 \stemUp a,8 ] | % 241
    \stemUp d8 [ \stemUp a8 \stemUp d8 \stemUp a8 ] \stemUp d8 [ \stemUp
    a8 \stemUp d8 \stemUp a8 ] | % 242
    \stemUp e'8 [ \stemUp a,8 \stemUp e'8 \stemUp a,8 ] \stemUp cis8 [
    \stemUp a8 \stemUp cis8 \stemUp a8 ] | % 243
    \stemDown d4 r8 \stemDown g8 ( \stemDown fis4 ) r8 \stemDown ais8 (
    | % 244
    \stemDown b4 ) r8 \stemDown e,8 ( \stemDown d4 ) r8 \stemDown fis8 (
    | % 245
    \stemDown gis4 ) r8 \stemDown dis'8 ( \stemDown e4 ) r8 \stemDown a,8
    ( | % 246
    \stemDown gis4 ) r16 \stemDown e16 [ \stemDown fis16 \stemDown gis16
    ] \stemDown a16 [ \stemDown gis16 \stemDown a16 \stemDown b16 ]
    \stemDown cis16 [ \stemDown b16 \stemDown cis16 \stemDown dis16 ] | % 247
    \stemDown e4 r16 \stemUp b,16 [ \stemUp cis16 \stemUp dis16 ]
    \stemDown e16 [ \stemDown fis16 \stemDown gis16 \stemDown a16 ]
    \stemDown b16 [ \stemDown gis16 \stemDown b16 \stemDown gis16 ] | % 248
    \stemDown e4 r4 r2 | % 249
    r4 \stemDown e'4 ( _\p \stemDown dis4 \stemDown d4 | \barNumberCheck
    #250
    \stemDown cis4 \stemDown b4 \stemDown a4 \stemDown gis4 | % 251
    \stemDown a4 ) r4 r2 | % 252
    R1*6 | % 258
    r8 \stemDown cis4 ( _\p \stemDown b8 ) \stemDown a8 -. \stemDown e4
    ( \stemDown d8 ) | % 259
    \stemUp cis4 r4 r2 | \barNumberCheck #260
    R1*9 | % 269
    \stemDown cis'4 _\f \stemDown cis8. [ \stemDown cis16 ] \stemDown
    cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] |
    \barNumberCheck #270
    \stemDown cis4 r4 r2 | % 271
    R1*15 | % 286
    r8 \stemDown e,8 -. [ _\f \stemDown fis8 -. \stemDown gis8 -. ]
    \stemDown a16 [ \stemDown gis16 \stemDown a16 \stemDown b16 ]
    \stemDown c16 [ \stemDown b16 \stemDown c16 \stemDown d16 ] | % 287
    \stemDown e8 [ \stemDown e,8 -. \stemDown fis8 -. \stemDown gis8 -.
    ] \stemDown a16 [ \stemDown gis16 \stemDown a16 \stemDown b16 ]
    \stemDown c16 [ \stemDown b16 \stemDown c16 \stemDown d16 ] | % 288
    \stemDown e4 r4 r2 | % 289
    R1*44 | % 333
    r4 r8 \stemDown e,8 -. _\p \stemDown d8 -. [ \stemDown d8 -.
    \stemDown e8 -. \stemDown e8 -. ] | % 334
    \stemDown d4 r4 r2 | % 335
    R1*8 | % 343
    \stemDown a'8 [ _\f \stemDown e8 \stemDown a8 \stemDown e8 ]
    \stemDown a8 [ \stemDown e8 \stemDown a8 \stemDown e8 ] | % 344
    \stemDown gis8 [ \stemDown e8 \stemDown gis8 \stemDown e8 ]
    \stemDown b'8 [ \stemDown e,8 \stemDown d'8 \stemDown e,8 ] | % 345
    \stemDown cis'8 [ \stemDown e,8 \stemDown cis'8 \stemDown e,8 ]
    \stemDown a8 [ \stemDown e8 \stemDown a8 \stemDown e8 ] | % 346
    \stemDown gis8 [ \stemDown e8 \stemDown gis8 \stemDown e8 ]
    \stemDown b'8 [ \stemDown e,8 \stemDown d'8 \stemDown e,8 ] | % 347
    \stemDown cis'8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 348
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown
    cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 349
    \stemDown d8 [ \stemDown d8 \stemDown d8 \stemDown d8 ] \stemDown
    fis8 [ \stemDown fis8 \stemDown fis8 \stemDown fis8 ] |
    \barNumberCheck #350
    \stemDown e8 ( [ \stemDown dis8 \stemDown d8 \stemDown cis8 ) ]
    \stemDown b8 ( [ \stemDown d8 \stemDown cis8 \stemDown a8 ) ] | % 351
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown e8
    [ \stemDown e8 \stemDown e8 \stemDown e8 ] | % 352
    \stemUp a,4 r4 r2 | % 353
    R1*5 | % 358
    \stemDown cis'4 _\f \stemDown cis8. [ \stemDown cis16 ] \stemDown
    cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 359
    \stemDown cis4 \stemDown cis4 \stemDown cis4 r4 \bar "|."
    \time 3/4  \key d \major R2.*8 \stemDown d,2. _\f \stemUp a4
    \stemDown d4 r4 \stemDown d2. \stemUp a4 \stemDown d4 r4 \stemDown
    a'2. ~ \stemDown a2 ( \stemDown fis4 ) \stemDown a2 ( \stemDown gis4
    ) \stemDown a4 r4 r4 R2.*9 r4 \stemDown c4 ( _\f \stemDown b8 [
    \stemDown a8 ) ] \stemDown g4. ( \stemDown fis8 [ \stemDown e8
    \stemDown d8 ) ] \stemUp cis8 r8 \stemDown d'4 ( \stemDown cis8 [
    \stemDown b8 ) ] \stemDown a4. ( \stemDown g8 [ \stemDown fis8
    \stemDown e8 ) ] \stemDown d4 ( \stemUp cis4 \stemDown d4 ) \stemUp
    g,4 \stemUp a4 \stemUp a4 \stemDown d4 r4 r4 R2.*21 \stemDown cis'2.
    ~ _\f \stemDown cis8 r8 r4 r4 \stemDown b2. ~ \stemDown b8 r8 r4 r4
    \stemDown cis2. ~ \stemDown cis4 r4 r4 ^\fermata R2.*16 \stemDown d4.
    ( _\f \stemDown cis8 [ \stemDown b8 \stemDown a8 ) ] \stemDown g8 r8
    \stemDown c4 ( \stemDown b8 [ \stemDown a8 ) ] \stemDown g8 ( [
    \stemDown b8 \stemDown e8 \stemDown d8 \stemDown cis8 \stemDown b8 )
    ] \stemDown a8 r8 \stemDown d4 ( \stemDown cis8 [ \stemDown b8 ) ]
    \stemDown a8 ( \stemDown fis4 ) \stemDown e'8 ( [ \stemDown d8
    \stemDown cis8 ) ] \stemDown b4 ( \stemDown bes4 \stemDown a4 )
    \stemDown g4 ( \stemDown a4 \stemUp a,4 ) \stemDown d4 r4 r4 R2.*13
    \stemDown fis2. ~ _\p \stemDown fis4 r4 r4 \bar "|."
    \time 6/8  \key a \major r8 R2.*8 r8 -. [ \stemDown cis'8 -. ] _\p
    _\markup{ \tiny\italic {cresc.} } \stemDown cis8 -. [ \stemDown cis8
    -. \stemDown cis8 -. ] \stemDown gis4. ( _\f \stemDown a8 ) r8 r8
    R2.*2 r8 \stemDown cis8 -. [ _\p \stemDown cis8 -. ] _\markup{
        \tiny\italic {cresc.} } \stemDown cis8 -. [ \stemDown cis8 -.
    \stemDown cis8 -. ] \stemDown b4. ( _\f \stemDown a8 ) r8 r8 R2.*16
    \stemDown a2. ( _\p \stemDown gis2. \stemDown a2. _\markup{
        \tiny\italic {cresc.} } \stemDown b2. ) \stemDown cis4 r8 r4.
    R2.*4 \stemUp cis,8 [ _\f \stemUp cis8 \stemUp cis8 ] \stemUp cis8 [
    \stemUp cis8 \stemUp cis8 ] \stemDown d8 [ \stemDown d8 \stemDown d8
    ] \stemDown d8 [ \stemDown d8 \stemDown d8 ] \stemDown e8 [
    \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8
    ] \stemUp a,4 r8 r4. R2.*7 \stemDown cis'2. _\f \stemDown cis4 (
    \stemDown a8 ) \stemDown b4 ( \stemDown gis8 ) \stemDown cis2.
    \stemDown cis4 ( \stemDown a8 ) \stemDown b4 ( \stemDown gis8 )
    \stemDown a4 r8 \stemDown a4 r8 \stemUp a,4 r8 r4. R2.*16 \stemDown
    e''2. ( _\p \stemDown dis4. \stemDown d4. \stemDown cis4. \stemDown
    c4. \stemDown b4 ) r8 r4. R2.*21 \stemDown d4. ( _\sfp \stemDown b4
    \stemDown gis8 ) \stemDown a4 r8 r4. R2.*2 \stemDown gis4. ~ _\sfp
    \stemDown gis4 ( \stemDown b8 ) \stemDown a4 r8 r4. R2.*17 \stemDown
    cis2. _\f \stemDown cis4 ( \stemDown a8 ) \stemDown b4 ( \stemDown
    gis8 ) \stemDown cis2. \stemDown cis4 ( \stemDown a8 ) \stemDown b4
    ( \stemDown gis8 ) \stemDown a4 r8 r4. R2.*2 \stemUp cis,2. \stemUp
    a8 [ \stemUp a8 \stemUp a8 ] \stemUp a8 [ \stemUp a8 \stemUp a8 ]
    \stemUp a8 [ \stemUp a8 \stemUp a8 ] \stemUp a8 [ \stemUp a8 \stemUp
    a8 ] \stemDown d8 [ \stemDown b'8 \stemDown cis8 ] \stemDown ais8 [
    \stemDown b8 \stemDown gis8 ] \stemDown a8 [ \stemDown fis8
    \stemDown gis8 ] \stemDown eis8 [ \stemDown fis8 \stemDown a8 ]
    \stemDown dis8 [ \stemDown dis8 \stemDown dis8 ] \stemDown d8 [
    \stemDown d8 \stemDown d8 ] \stemDown cis8 [ \stemDown cis8
    \stemDown cis8 ] \stemDown cis8 [ \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 ] \stemDown cis8 [
    \stemDown cis8 \stemDown cis8 ] \stemDown cis8 [ \stemDown cis,8
    \stemDown cis8 ] \stemUp cis8 [ \stemUp cis8 \stemUp cis8 ] \stemUp
    cis4 r8 r4. R2.*20 r4 \stemDown e'8 _\f \stemDown e8 [ \stemDown e8
    \stemDown e8 ] \stemDown e4 r8 r4. R2.*10 \stemDown cis2. ( _\p
    \stemDown fis,4 ) r8 r4. \stemDown b2. ( \stemDown e,4 ) r8 r4.
    \stemDown a2. ( \stemDown d,4 ) r8 r4. R2.*10 r4 r8 \stemDown gis8 [
    _\f \stemDown gis8 \stemDown gis8 ] \stemDown gis4 r8 r4. R2.*43
    \stemDown d'4. ( _\sfp \stemDown b4 \stemDown gis8 ) \stemDown a4 r8
    r4. R2.*2 \stemDown gis4. ~ _\sfp \stemDown gis4 ( \stemDown b8 )
    \stemDown a4 r8 r4. R2.*18 r8 \stemDown cis8 -. [ _\p \stemDown cis8
    -. ] _\markup{ \tiny\italic {cresc.} } \stemDown cis8 -. [ \stemDown
    cis8 -. \stemDown cis8 -. ] \stemDown gis4. ( _\f \stemDown a8 ) r8
    r8 R2.*2 r8 \stemDown cis8 -. [ _\p \stemDown cis8 -. ] _\markup{
        \tiny\italic {cresc.} } \stemDown cis8 -. [ \stemDown cis8 -.
    \stemDown cis8 -. ] \stemDown b4. ( _\f \stemDown a8 ) r8 r8 R2.*16
    \stemDown a2. ( _\p \stemDown gis2. \stemDown a2. _\markup{
        \tiny\italic {cresc.} } \stemDown b2. ) \stemDown cis4 r8 r4.
    R2.*4 \stemUp cis,8 [ _\f \stemUp cis8 \stemUp cis8 ] \stemUp cis8 [
    \stemUp cis8 \stemUp cis8 ] \stemDown d8 [ \stemDown d8 \stemDown d8
    ] \stemDown d8 [ \stemDown d8 \stemDown d8 ] \stemDown e8 [
    \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8
    ] \stemUp a,4 r8 r4. R2.*7 \stemDown cis'2. _\f \stemDown cis4 (
    \stemDown a8 ) \stemDown b4 ( \stemDown gis8 ) \stemDown cis2.
    \stemDown cis4 ( \stemDown a8 ) \stemDown b4 ( \stemDown gis8 )
    \stemDown a4 r8 r4. R2.*5 \stemDown e4. _\f r4. R2. \stemDown e4.
    _\f r4. R2.*31 \stemDown cis'2. _\p \stemDown b4. ( \stemDown gis4.
    ) \stemDown cis2. \stemDown a2. ~ _\markup{ \tiny\italic {cresc.} }
    \stemDown a4. \stemDown gis4. \stemDown cis2. _\f \stemDown cis4 (
    \stemDown a8 ) \stemDown b4 ( \stemDown gis8 ) \stemDown cis2.
    \stemDown cis4 ( \stemDown a8 ) \stemDown b4 ( \stemDown gis8 )
    \stemDown a4 r8 r4 \stemDown e'8 -. \stemDown a,8 -. [ \stemDown cis8
    -. \stemDown e,8 -. ] \stemDown a8 -. [ \stemDown cis,8 -. \stemDown
    e8 -. ] \stemUp a,4 r8 \stemUp a4 r8 \stemUp a4 r8 r4. \bar "|."
    }

PartPFiveVoiceOne =  \relative c'' {
    \clef "treble" \time 4/4 \key c \major \transposition a | % 1
    R1*8 | % 9
    \stemDown c2 _\f \stemDown c4. \stemDown c8 | \barNumberCheck #10
    \stemDown c4 \stemDown c4 \stemDown c4 r4 | % 11
    R1 | % 12
    \stemUp g2 ~ _\p \stemUp g8 r8 r4 | % 13
    \stemDown c4 _\f r4 r2 | % 14
    \stemDown g'4 r4 r2 | % 15
    r4 \stemDown e4 \stemDown d2 | % 16
    \stemDown c4 r8 \stemDown c8 \stemDown c8 [ \stemDown c8 \stemDown c8
    \stemDown c8 ] | % 17
    \stemDown d4 \stemDown d2 \stemDown d4 | % 18
    \stemDown e4 r8 \stemDown c8 \stemDown c8 [ \stemDown c8 \stemDown c8
    \stemDown c8 ] | % 19
    \stemDown d4 \stemDown d2 \stemDown d4 | \barNumberCheck #20
    \stemDown e4 r8 \stemDown c8 \stemDown c4 r8 \stemDown c8 | % 21
    \stemDown c4 r4 r2 | % 22
    R1 | % 23
    \stemUp g4 r8 \stemDown d'8 \stemDown d8 [ \stemDown d8 \stemDown d8
    \stemDown d8 ] | % 24
    \stemDown d4 -. \stemDown d4 -. \stemUp g,4 -. r4 | % 25
    R1*6 | % 31
    \stemDown c2 _\f r2 | % 32
    \stemDown e2 r2 | % 33
    \stemDown c2 r2 | % 34
    \stemDown e2 r2 | % 35
    \stemDown c4 r8 \stemDown c16 [ \stemDown c16 ] \stemDown c8 [
    \stemDown c8 \stemDown c8 \stemDown c8 ] | % 36
    \stemDown c4 -. \stemDown c4 -. \stemDown c4 -. r4 | % 37
    R1*2 | % 39
    r2 r4 \stemDown d8 _\p r8 | \barNumberCheck #40
    \stemDown e8 r8 r4 r4 \stemDown d8 r8 | % 41
    \stemDown e8 r8 r4 r4 \stemDown d8 r8 | % 42
    \stemDown e8 r8 \stemDown d8 r8 \stemDown e8 r8 \stemDown d8 r8 | % 43
    \stemDown c8 [ _\f \stemDown c8 \stemDown d8 \stemDown d8 ]
    \stemDown e8 [ \stemDown e8 \stemDown d8 \stemDown d8 ] | % 44
    \stemDown c2 \stemDown c4 \stemDown c4 | % 45
    \stemDown c2 \stemDown c2 | % 46
    \stemDown c4 \stemDown c8. [ \stemDown c16 ] \stemDown c4 \stemDown
    c4 | % 47
    \stemUp g4 \stemUp g8. [ \stemUp g16 ] \stemUp g8 [ \stemUp g8
    \stemUp g8 \stemUp g8 ] | % 48
    \stemUp g4 \stemDown e'8. [ \stemDown e16 ] \stemDown e8 [ \stemDown
    e8 \stemDown d8 \stemDown d8 ] | % 49
    \stemDown c4 r4 r2 | \barNumberCheck #50
    R1*5 | % 55
    \stemDown c4 _\f \stemDown c8. [ \stemDown c16 ] \stemDown c8 [
    \stemDown c8 \stemDown c8 \stemDown c8 ] | % 56
    \stemDown c4 -. \stemDown c4 -. \stemDown c4 -. r4 \bar "||"
    R1*18 | % 75
    \stemDown c4 _\f \stemDown c8. [ \stemDown c16 ] \stemDown c8 [
    \stemDown c8 \stemDown c8 \stemDown c8 ] | % 76
    \stemDown c4 r4 r2 | % 77
    R1*77 | % 154
    \stemUp g4 _\f r8 \stemDown d'8 \stemDown d8 [ \stemDown d8
    \stemDown d8 \stemDown d8 ] | % 155
    \stemDown d4 \stemDown d2 \stemDown d4 | % 156
    \stemDown d4 r8 \stemDown d8 \stemDown d8 [ \stemDown d8 \stemDown d8
    \stemDown d8 ] | % 157
    \stemDown d4 \stemDown d2 \stemDown d4 | % 158
    \stemDown d4 r8 \stemUp g,8 \stemUp g4 r8 \stemUp g8 | % 159
    \stemUp g4 r4 r2 | \barNumberCheck #160
    R1 | % 161
    d'1 ~ | % 162
    \stemDown d4 \stemUp g,4 \stemUp g4 \stemUp g4 | % 163
    \stemDown d'4 \stemDown d8. [ \stemDown d16 ] \stemDown d8 [
    \stemDown d8 \stemDown d8 \stemDown d8 ] | % 164
    \stemDown d4 r4 r2 | % 165
    R1*5 | \barNumberCheck #170
    \stemDown d4 _\f \stemDown d8. [ \stemDown d16 ] \stemDown d8 [
    \stemDown d8 \stemDown d8 \stemDown d8 ] | % 171
    \stemDown d4 -. \stemDown d4 -. \stemDown d4 -. r4 \bar "||"
    R1*20 | % 192
    e1 ~ _\f | % 193
    e1 | % 194
    \stemDown e4 r4 r2 | % 195
    R1*3 | % 198
    c1 ~ _\p | % 199
    c1 | \barNumberCheck #200
    \stemDown c4 r4 r2 | % 201
    R1*24 | % 225
    e,1 ~ _\p | % 226
    e1 _\markup{ \tiny\italic {cresc.} } | % 227
    \stemUp e4 _\f r4 r2 | % 228
    \stemDown e'4 r4 r2 | % 229
    \stemDown c4 r4 r2 | \barNumberCheck #230
    R1*3 | % 233
    \stemUp g4 _\f r4 r2 | % 234
    \stemDown d'4 r4 r2 | % 235
    \stemUp g,4 r4 r2 | % 236
    R1*3 | % 239
    \stemDown c4 _\f r8 \stemDown c8 \stemDown c8 [ \stemDown c8
    \stemDown c8 \stemDown c8 ] | \barNumberCheck #240
    \stemDown c4 \stemDown c2 \stemDown c4 | % 241
    \stemDown c4 r8 \stemDown c8 \stemDown c8 [ \stemDown c8 \stemDown c8
    \stemDown c8 ] | % 242
    \stemDown c4 \stemDown c2 \stemDown c4 | % 243
    \stemDown c4 r8 \stemDown c8 \stemDown c4 r4 | % 244
    R1*2 | % 246
    r4 \stemUp g8. [ \stemUp g16 ] \stemUp g8 [ \stemUp g8 \stemUp g8
    \stemUp g8 ] | % 247
    \stemUp g4 r8 \stemDown d'8 \stemDown d8 [ \stemDown d8 \stemDown d8
    \stemDown d8 ] | % 248
    \stemDown d4 r4 r2 | % 249
    g,1 ~ _\p | \barNumberCheck #250
    g1 | % 251
    \stemUp c,4 r4 r2 | % 252
    R1*17 | % 269
    \stemDown c'4 _\f \stemDown c8. [ \stemDown c16 ] \stemDown c8 [
    \stemDown c8 \stemDown c8 \stemDown c8 ] | \barNumberCheck #270
    \stemDown c4 r4 r2 | % 271
    R1*15 | % 286
    r8 \stemUp g8 [ _\f \stemUp g8 \stemUp g8 ] \stemUp g8 r8 \stemUp g8
    r8 | % 287
    \stemUp g8 [ \stemUp g8 \stemUp g8 \stemUp g8 ] \stemUp g8 r8
    \stemUp g8 r8 | % 288
    \stemUp g4 r4 r2 | % 289
    R1*52 | % 341
    g1 ~ _\p | % 342
    g1 _\markup{ \tiny\italic {cresc.} } | % 343
    \stemUp g4 _\f r8 \stemDown c8 \stemDown c8 [ \stemDown c8 \stemDown
    c8 \stemDown c8 ] | % 344
    \stemDown d4 \stemDown d2 \stemDown d4 | % 345
    \stemDown e4 r8 \stemDown c8 \stemDown c8 [ \stemDown c8 \stemDown c8
    \stemDown c8 ] | % 346
    \stemDown d4 \stemDown d2 \stemDown d4 | % 347
    \stemDown c2 \stemDown c4 \stemDown c4 | % 348
    \stemDown c2 \stemDown c2 | % 349
    \stemDown c4 \stemDown c8. [ \stemDown c16 ] \stemDown c4 \stemDown
    c4 | \barNumberCheck #350
    \stemUp g4 \stemUp g8. [ \stemUp g16 ] \stemUp g8 [ \stemUp g8
    \stemUp g8 \stemUp g8 ] | % 351
    \stemUp g4 \stemDown e'8. [ \stemDown e16 ] \stemDown e8 [ \stemDown
    e8 \stemDown d8 \stemDown d8 ] | % 352
    \stemDown c4 r4 r2 | % 353
    R1*5 | % 358
    \stemDown c4 _\f \stemDown c8. [ \stemDown c16 ] \stemDown c8 [
    \stemDown c8 \stemDown c8 \stemDown c8 ] | % 359
    \stemDown c4 \stemDown c4 \stemDown c4 \transposition d r4 _\markup{
        \bold {muta in D} } \bar "|."
    \time 3/4  \transposition a R2.*8 \stemUp g4 _\f \stemDown c4. (
    \stemDown e8 ) \stemDown e8 ( [ \stemDown d8 ) ] \stemDown c4 r4
    \stemUp g4. ( \stemDown c8 [ \stemDown e8 \stemDown g8 ) ] \stemDown
    g8 ( [ \stemDown f8 ) ] \stemDown e4 r4 \stemDown d2 ( \stemDown e4
    ) \stemDown d2 ( \stemDown e4 ) \stemDown d2. ~ \stemDown d4 r4 r4
    R2.*8 \stemDown c2. ~ _\f \stemDown c4 r4 r4 R2.*2 \stemDown g'4. (
    \stemDown f8 [ \stemDown e8 \stemDown f8 ) ] \stemDown e8 [
    \stemDown c8 ] \stemDown d4 ( \stemDown c4 ) r4 \stemDown e4
    \stemDown d4 \stemDown c4 r4 r4 R2.*12 \stemUp g2. ~ _\p \stemUp g2.
    ~ \stemUp g2. ~ \stemUp g2. R2.*5 \stemUp g2. ~ _\f \stemUp g8 r8 r4
    r4 \stemDown d'2. ~ \stemDown d8 r8 r4 r4 \stemUp g,2. ~ \stemUp g4
    r4 r4 ^\fermata R2.*16 \stemDown c2 _\f r4 R2. \stemDown d2 r4 R2.
    \stemDown g2. \stemDown c,2 \stemUp g4 r4 \stemDown e'4 \stemDown d4
    \stemDown c4 r4 r4 R2.*13 \stemDown c2. ~ _\p \stemDown c4 r4
    \transposition a r4 _\markup{ \bold {muta in A} } \bar "|."
    \time 6/8  \transposition a r8 R2.*8 r8 -. [ \stemDown c8 -. ] _\p
    _\markup{ \tiny\italic {cresc.} } \stemDown c8 -. [ \stemDown c8 -.
    \stemDown c8 -. ] \stemDown d4. ( _\f \stemDown e8 ) r8 r8 R2.*2 r8
    \stemDown c8 -. [ _\p \stemDown c8 -. ] _\markup{ \tiny\italic
        {cresc.} } \stemDown c8 -. [ \stemDown c8 -. \stemDown c8 -. ]
    \stemDown d4 ( _\f \stemDown f8 ) \stemDown e8 -. r8 r8 R2.*18
    \stemUp c,2. ~ _\p \stemUp c2. ~ _\markup{ \tiny\italic {cresc.} }
    \stemUp c4 r8 r4. R2.*4 \stemDown c'2. _\f \stemDown c8 [ \stemDown
    c8 \stemDown c8 ] \stemDown c8 r8 r8 \stemUp g8 [ \stemUp g8 \stemUp
    g8 ] \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp g4 r8 r4. R2.*7
    \stemDown c8 [ _\f \stemDown c8 \stemDown c8 ] \stemDown e4 (
    \stemDown c8 ) \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp g8 [
    \stemUp g8 \stemUp g8 ] \stemDown c8 [ \stemDown c8 \stemDown c8 ]
    \stemDown e4 ( \stemDown c8 ) \stemUp g8 [ \stemUp g8 \stemUp g8 ]
    \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp c,4 r8 \stemUp g'4 r8
    \stemUp e4 r8 r4. R2.*40 r8 \stemUp g8 [ _\p \stemUp g8 ] \stemUp g8
    [ \stemUp g8 \stemUp g8 ] \stemUp g2. ~ _\sfp \stemUp g4 r8 r4. R2.
    r8 \stemUp g8 [ _\p \stemUp g8 ] \stemUp g8 [ \stemUp g8 \stemUp g8
    ] \stemUp g2. ~ _\sfp \stemUp g4 r8 r4. R2.*17 \stemDown c8 [ _\f
    \stemDown c8 \stemDown c8 ] \stemDown e4 ( \stemDown c8 ) \stemUp g8
    [ \stemUp g8 \stemUp g8 ] \stemUp g8 [ \stemUp g8 \stemUp g8 ]
    \stemDown c8 [ \stemDown c8 \stemDown c8 ] \stemDown e4 ( \stemDown
    c8 ) \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp g8 [ \stemUp g8
    \stemUp g8 ] \stemUp g4 r8 r4. R2.*2 \stemDown e'2. \stemDown c8 [
    \stemDown c8 \stemDown c8 ] \stemDown c8 [ \stemDown c8 \stemDown c8
    ] \stemDown c8 [ \stemDown c8 \stemDown c8 ] \stemDown c8 [
    \stemDown c8 \stemDown c8 ] R2.*3 \stemUp e,8 [ \stemUp e8 \stemUp e8
    ] \stemUp e8 [ \stemUp e8 \stemUp e8 ] \stemUp e8 [ \stemUp e8
    \stemUp e8 ] \stemUp e8 [ \stemUp e8 \stemUp e8 ] \stemUp e8 [
    \stemUp e8 \stemUp e8 ] \stemUp e8 [ \stemUp e8 \stemUp e8 ] \stemUp
    e4 r8 r4. R2.*20 r4 \stemDown c'8 _\f \stemDown c8 [ \stemDown c8
    \stemDown c8 ] \stemDown c4 r8 r4. R2.*26 r4 r8 \stemDown d8 [ _\f
    \stemDown d8 \stemDown d8 ] \stemDown d4 r8 r4. R2.*42 r8 \stemUp g,8
    [ _\p \stemUp g8 ] \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp g2.
    ~ _\sfp \stemUp g4 r8 r4. R2. r8 \stemUp g8 [ _\p \stemUp g8 ]
    \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp g2. ~ _\sfp \stemUp g4
    r8 r4. R2.*18 r8 \stemDown c8 -. [ _\p \stemDown c8 -. ] _\markup{
        \tiny\italic {cresc.} } \stemDown c8 -. [ \stemDown c8 -.
    \stemDown c8 -. ] \stemDown d4. ( _\f \stemDown e8 ) r8 r8 R2.*2 r8
    \stemDown c8 -. [ _\p \stemDown c8 -. ] _\markup{ \tiny\italic
        {cresc.} } \stemDown c8 -. [ \stemDown c8 -. \stemDown c8 -. ]
    \stemDown d4 ( _\f \stemDown f8 ) \stemDown e8 -. r8 r8 R2.*18
    \stemUp c,2. ~ _\p \stemUp c2. ~ _\markup{ \tiny\italic {cresc.} }
    \stemUp c4 r8 r4. R2.*4 \stemDown c'2. _\f \stemDown c8 [ \stemDown
    c8 \stemDown c8 ] \stemDown c8 r8 r8 \stemUp g8 [ \stemUp g8 \stemUp
    g8 ] \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp g4 r8 r4. R2.*7
    \stemDown c8 [ _\f \stemDown c8 \stemDown c8 ] \stemDown e4 (
    \stemDown c8 ) \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp g8 [
    \stemUp g8 \stemUp g8 ] \stemDown c8 [ \stemDown c8 \stemDown c8 ]
    \stemDown e4 ( \stemDown c8 ) \stemUp g8 [ \stemUp g8 \stemUp g8 ]
    \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp c,4 r8 r4. R2.*5
    \stemUp g'4. _\f r4. R2. \stemUp g4. _\f r4. R2.*36 \stemDown c8 [
    _\f \stemDown c8 \stemDown c8 ] \stemDown e4 ( \stemDown c8 )
    \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp g8 [ \stemUp g8 \stemUp
    g8 ] \stemDown c8 [ \stemDown c8 \stemDown c8 ] \stemDown e4 (
    \stemDown c8 ) \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp g8 [
    \stemUp g8 \stemUp g8 ] \stemUp c,4 r8 r4 \stemUp g'8 -. \stemDown c8
    -. [ \stemDown e8 -. \stemDown g,8 -. ] \stemUp c8 -. [ \stemUp e,8
    -. \stemUp g8 -. ] \stemUp c,4 r8 \stemUp g'4 r8 \stemUp e4 r8 r4.
    \bar "|."
    }

PartPSixVoiceOne =  \relative c' {
    \clef "treble" \time 4/4 \key c \major \transposition a | % 1
    R1*8 | % 9
    \stemUp c2 _\f \stemUp c4. \stemUp c8 | \barNumberCheck #10
    \stemUp c4 \stemUp c4 \stemUp c4 r4 | % 11
    R1 | % 12
    \stemUp g'2 ~ _\p \stemUp g8 r8 r4 | % 13
    \stemUp c,4 _\f r4 r2 | % 14
    \stemUp g'4 r4 r2 | % 15
    r4 \stemDown c2 \stemUp g4 | % 16
    \stemUp e4 r8 \stemUp e8 \stemUp e8 [ \stemUp e8 \stemUp e8 \stemUp
    e8 ] | % 17
    \stemUp g4 \stemUp g2 \stemUp g4 | % 18
    \stemDown c4 r8 \stemUp e,8 \stemUp e8 [ \stemUp e8 \stemUp e8
    \stemUp e8 ] | % 19
    \stemUp g4 \stemUp g2 \stemUp g4 | \barNumberCheck #20
    \stemDown c4 r8 \stemUp c,8 \stemUp c4 r8 \stemUp c8 | % 21
    \stemUp c4 r4 r2 | % 22
    R1 | % 23
    \stemUp g'4 r8 \stemUp g8 \stemUp g8 [ \stemUp g8 \stemUp g8 \stemUp
    g8 ] | % 24
    \stemUp g4 -. \stemUp g4 -. \stemUp g,4 -. r4 | % 25
    R1*6 | % 31
    \stemUp e'2 _\f r2 | % 32
    \stemDown c'2 r2 | % 33
    \stemUp e,2 r2 | % 34
    \stemDown c'2 r2 | % 35
    \stemUp c,4 r8 \stemUp c16 [ \stemUp c16 ] \stemUp c8 [ \stemUp c8
    \stemUp c8 \stemUp c8 ] | % 36
    \stemUp c4 -. \stemUp c4 -. \stemUp c4 -. r4 | % 37
    R1*2 | % 39
    r2 r4 \stemUp g'8 _\p r8 | \barNumberCheck #40
    \stemDown c8 r8 r4 r4 \stemUp g8 r8 | % 41
    \stemDown c8 r8 r4 r4 \stemUp g8 r8 | % 42
    \stemDown c8 r8 \stemUp g8 r8 \stemDown c8 r8 \stemUp g8 r8 | % 43
    \stemUp e8 [ _\f \stemUp e8 \stemUp g8 \stemUp g8 ] \stemUp c8 [
    \stemUp c8 \stemUp g8 \stemUp g8 ] | % 44
    \stemUp c,2 \stemUp c4 \stemUp c4 | % 45
    \stemUp c2 \stemUp c2 | % 46
    \stemUp c4 \stemUp c8. [ \stemUp c16 ] \stemUp c4 \stemUp c4 | % 47
    \stemUp g'4 \stemUp g8. [ \stemUp g16 ] \stemUp g8 [ \stemUp g8
    \stemUp g8 \stemUp g8 ] | % 48
    \stemUp g4 \stemDown c8. [ \stemDown c16 ] \stemUp c8 [ \stemUp c8
    \stemUp g8 \stemUp g8 ] | % 49
    \stemUp e4 r4 r2 | \barNumberCheck #50
    R1*5 | % 55
    \stemUp c4 _\f \stemUp c8. [ \stemUp c16 ] \stemUp c8 [ \stemUp c8
    \stemUp c8 \stemUp c8 ] | % 56
    \stemUp c4 -. \stemUp c4 -. \stemUp c4 -. r4 \bar "||"
    R1*18 | % 75
    \stemUp c4 _\f \stemUp c8. [ \stemUp c16 ] \stemUp c8 [ \stemUp c8
    \stemUp c8 \stemUp c8 ] | % 76
    \stemUp c4 r4 r2 | % 77
    R1*77 | % 154
    \stemUp g'4 _\f r8 \stemUp g8 \stemUp g8 [ \stemUp g8 \stemUp g8
    \stemUp g8 ] | % 155
    \stemDown d'4 \stemDown d2 \stemDown d4 | % 156
    \stemUp g,4 r8 \stemUp g8 \stemUp g8 [ \stemUp g8 \stemUp g8 \stemUp
    g8 ] | % 157
    \stemDown d'4 \stemDown d2 \stemDown d4 | % 158
    \stemUp g,4 r8 \stemUp g8 \stemUp g4 r8 \stemUp g8 | % 159
    \stemUp g,4 r4 r2 | \barNumberCheck #160
    R1 | % 161
    d''1 | % 162
    \stemUp g,4 \stemUp g4 \stemUp g4 \stemUp g4 | % 163
    \stemDown d'4 \stemDown d8. [ \stemDown d16 ] \stemDown d8 [
    \stemDown d8 \stemDown d8 \stemDown d8 ] | % 164
    \stemDown d4 r4 r2 | % 165
    R1*5 | \barNumberCheck #170
    \stemUp g,4 _\f \stemUp g8. [ \stemUp g16 ] \stemUp g8 [ \stemUp g8
    \stemUp g8 \stemUp g8 ] | % 171
    \stemUp g4 -. \stemUp g4 -. \stemUp g4 -. r4 \bar "||"
    R1*20 | % 192
    e1 ~ _\f | % 193
    e1 | % 194
    \stemUp e4 r4 r2 | % 195
    R1*3 | % 198
    c1 ~ _\p | % 199
    c1 | \barNumberCheck #200
    \stemUp c4 r4 r2 | % 201
    R1*24 | % 225
    e1 ~ _\p | % 226
    e1 _\markup{ \tiny\italic {cresc.} } | % 227
    \stemUp e4 _\f r4 r2 | % 228
    \stemUp e4 r4 r2 | % 229
    \stemUp e4 r4 r2 | \barNumberCheck #230
    R1*3 | % 233
    \stemUp g4 _\f r4 r2 | % 234
    \stemDown d'4 r4 r2 | % 235
    \stemUp g,4 r4 r2 | % 236
    R1*3 | % 239
    \stemUp c,4 _\f r8 \stemUp c8 \stemUp c8 [ \stemUp c8 \stemUp c8
    \stemUp c8 ] | \barNumberCheck #240
    \stemUp c4 \stemUp c2 \stemUp c4 | % 241
    \stemUp c4 r8 \stemUp c8 \stemUp c8 [ \stemUp c8 \stemUp c8 \stemUp
    c8 ] | % 242
    \stemUp c4 \stemUp c2 \stemUp c4 | % 243
    \stemUp c4 r8 \stemUp c8 \stemUp c4 r4 | % 244
    R1*2 | % 246
    r4 \stemUp g'8. [ \stemUp g16 ] \stemUp g8 [ \stemUp g8 \stemUp g8
    \stemUp g8 ] | % 247
    \stemUp g4 r8 \stemUp g8 \stemUp g8 [ \stemUp g8 \stemUp g8 \stemUp
    g8 ] | % 248
    \stemUp g4 r4 r2 | % 249
    g1 ~ _\p | \barNumberCheck #250
    g1 | % 251
    \stemUp c,4 r4 r2 | % 252
    R1*17 | % 269
    \stemUp c4 _\f \stemUp c8. [ \stemUp c16 ] \stemUp c8 [ \stemUp c8
    \stemUp c8 \stemUp c8 ] | \barNumberCheck #270
    \stemUp c4 r4 r2 | % 271
    R1*15 | % 286
    r8 \stemUp g'8 [ _\f \stemUp g8 \stemUp g8 ] \stemUp g8 r8 \stemUp g8
    r8 | % 287
    \stemUp g8 [ \stemUp g8 \stemUp g8 \stemUp g8 ] \stemUp g8 r8
    \stemUp g8 r8 | % 288
    \stemUp g4 r4 r2 | % 289
    R1*52 | % 341
    g1 ~ _\p | % 342
    g1 _\markup{ \tiny\italic {cresc.} } | % 343
    \stemUp c,4 _\f r8 \stemUp e8 \stemUp e8 [ \stemUp e8 \stemUp e8
    \stemUp e8 ] | % 344
    \stemUp g4 \stemUp g2 \stemUp g4 | % 345
    \stemDown c4 r8 \stemUp e,8 \stemUp e8 [ \stemUp e8 \stemUp e8
    \stemUp e8 ] | % 346
    \stemUp g4 \stemUp g2 \stemUp g4 | % 347
    \stemUp c,2 \stemUp c4 \stemUp c4 | % 348
    \stemUp c2 \stemUp c2 | % 349
    \stemUp c4 \stemUp c8. [ \stemUp c16 ] \stemUp c4 \stemUp c4 |
    \barNumberCheck #350
    \stemUp g'4 \stemUp g8. [ \stemUp g16 ] \stemUp g8 [ \stemUp g8
    \stemUp g8 \stemUp g8 ] | % 351
    \stemUp g4 \stemDown c8. [ \stemDown c16 ] \stemUp c8 [ \stemUp c8
    \stemUp g8 \stemUp g8 ] | % 352
    \stemUp e4 r4 r2 | % 353
    R1*5 | % 358
    \stemUp c4 _\f \stemUp c8. [ \stemUp c16 ] \stemUp c8 [ \stemUp c8
    \stemUp c8 \stemUp c8 ] | % 359
    \stemUp c4 \stemUp c4 \stemUp c4 \transposition d r4 _\markup{ \bold
        {muta in D} } \bar "|."
    \time 3/4  \transposition a R2.*8 \stemUp e4 _\f \stemUp e4. (
    \stemUp g8 ) \stemUp g4 ( \stemUp e4 ) r4 \stemUp e4. ( \stemDown g8
    [ \stemDown c8 \stemDown e8 ) ] \stemDown d4 ( \stemDown c4 ) r4
    \stemUp g2 ( \stemDown c4 ) \stemUp g2 ( \stemDown c4 ) \stemDown d2.
    \stemUp g,4 r4 r4 R2.*8 \stemUp c,2. ~ _\f \stemUp c4 r4 r4 R2.*2
    \stemDown e'4. ( \stemDown d8 [ \stemDown c8 \stemDown d8 ) ]
    \stemDown c4 \stemUp g2 r4 \stemDown c4 \stemUp g4 \stemUp e4 r4 r4
    R2.*12 \stemUp g,2. ~ _\p \stemUp g2. ~ \stemUp g2. ~ \stemUp g2.
    R2.*5 \stemUp g2. ~ _\f \stemUp g8 r8 r4 r4 \stemDown d''2. ~
    \stemDown d8 r8 r4 r4 \stemUp g,,2. ~ \stemUp g4 r4 r4 ^\fermata
    R2.*16 \stemUp c2 _\f r4 R2. \stemDown d'2 r4 R2. \stemUp g,2.
    \stemUp c,2 \stemUp g'4 r4 \stemDown c4 \stemUp g4 \stemUp e4 r4 r4
    R2.*13 \stemUp c2. ~ _\p \stemUp c4 r4 \transposition a r4 _\markup{
        \bold {muta in A} } \bar "|."
    \time 6/8  \transposition a r8 R2.*8 r8 -. [ \stemUp e8 -. ] _\p
    _\markup{ \tiny\italic {cresc.} } \stemUp e8 -. [ \stemUp e8 -.
    \stemUp e8 -. ] \stemUp g4. ( _\f \stemDown c8 ) r8 r8 R2.*2 r8
    \stemUp e,8 -. [ _\p \stemUp e8 -. ] _\markup{ \tiny\italic {cresc.}
        } \stemUp e8 -. [ \stemUp e8 -. \stemUp e8 -. ] \stemUp g4 ( _\f
    \stemDown d'8 ) \stemDown c8 -. r8 r8 R2.*18 \stemUp c,2. ~ _\p
    \stemUp c2. ~ _\markup{ \tiny\italic {cresc.} } \stemUp c4 r8 r4.
    R2.*4 \stemUp c2. _\f \stemUp c8 [ \stemUp c8 \stemUp c8 ] \stemUp c8
    r8 r8 \stemUp g'8 [ \stemUp g8 \stemUp g8 ] \stemUp g8 [ \stemUp g8
    \stemUp g8 ] \stemUp c,4 r8 r4. R2.*7 \stemUp c8 [ _\f \stemUp c8
    \stemUp c8 ] \stemUp e4 ( \stemUp c8 ) \stemUp g8 [ \stemUp g8
    \stemUp g8 ] \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp c8 [
    \stemUp c8 \stemUp c8 ] \stemUp e4 ( \stemUp c8 ) \stemUp g8 [
    \stemUp g8 \stemUp g8 ] \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp
    c4 r8 \stemUp e4 r8 \stemUp c4 r8 r4. R2.*40 r8 \stemUp g8 [ _\p
    \stemUp g8 ] \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp g2. ~
    _\sfp \stemUp g4 r8 r4. R2. r8 \stemUp g8 [ _\p \stemUp g8 ] \stemUp
    g8 [ \stemUp g8 \stemUp g8 ] \stemUp g2. ~ _\sfp \stemUp g4 r8 r4.
    R2.*17 \stemUp c8 [ _\f \stemUp c8 \stemUp c8 ] \stemUp e4 ( \stemUp
    c8 ) \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp g8 [ \stemUp g8
    \stemUp g8 ] \stemUp c8 [ \stemUp c8 \stemUp c8 ] \stemUp e4 (
    \stemUp c8 ) \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp g8 [
    \stemUp g8 \stemUp g8 ] \stemUp c4 r8 r4. R2.*2 \stemUp e2. \stemUp
    c8 [ \stemUp c8 \stemUp c8 ] \stemUp c8 [ \stemUp c8 \stemUp c8 ]
    \stemUp c8 [ \stemUp c8 \stemUp c8 ] \stemUp c8 [ \stemUp c8 \stemUp
    c8 ] R2.*3 \stemUp e8 [ \stemUp e8 \stemUp e8 ] \stemUp e8 [ \stemUp
    e8 \stemUp e8 ] \stemUp e8 [ \stemUp e8 \stemUp e8 ] \stemUp e8 [
    \stemUp e8 \stemUp e8 ] \stemUp e8 [ \stemUp e8 \stemUp e8 ] \stemUp
    e8 [ \stemUp e8 \stemUp e8 ] \stemUp e4 r8 r4. R2.*20 r4 \stemUp c8
    _\f \stemUp c8 [ \stemUp c8 \stemUp c8 ] \stemUp c4 r8 r4. R2.*26 r4
    r8 \stemUp g'8 [ _\f \stemUp g8 \stemUp g8 ] \stemUp g4 r8 r4.
    R2.*42 r8 \stemUp g,8 [ _\p \stemUp g8 ] \stemUp g8 [ \stemUp g8
    \stemUp g8 ] \stemUp g2. ~ _\sfp \stemUp g4 r8 r4. R2. r8 \stemUp g8
    [ _\p \stemUp g8 ] \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp g2.
    ~ _\sfp \stemUp g4 r8 r4. R2.*18 r8 \stemUp e'8 -. [ _\p \stemUp e8
    -. ] _\markup{ \tiny\italic {cresc.} } \stemUp e8 -. [ \stemUp e8 -.
    \stemUp e8 -. ] \stemUp g4. ( _\f \stemDown c8 ) r8 r8 R2.*2 r8
    \stemUp e,8 -. [ _\p \stemUp e8 -. ] _\markup{ \tiny\italic {cresc.}
        } \stemUp e8 -. [ \stemUp e8 -. \stemUp e8 -. ] \stemUp g4 ( _\f
    \stemDown d'8 ) \stemDown c8 -. r8 r8 R2.*18 \stemUp c,2. ~ _\p
    \stemUp c2. ~ _\markup{ \tiny\italic {cresc.} } \stemUp c4 r8 r4.
    R2.*4 \stemUp c2. _\f \stemUp c8 [ \stemUp c8 \stemUp c8 ] \stemUp c8
    r8 r8 \stemUp g'8 [ \stemUp g8 \stemUp g8 ] \stemUp g8 [ \stemUp g8
    \stemUp g8 ] \stemUp c,4 r8 r4. R2.*7 \stemUp c8 [ _\f \stemUp c8
    \stemUp c8 ] \stemUp e4 ( \stemUp c8 ) \stemUp g8 [ \stemUp g8
    \stemUp g8 ] \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp c8 [
    \stemUp c8 \stemUp c8 ] \stemUp e4 ( \stemUp c8 ) \stemUp g8 [
    \stemUp g8 \stemUp g8 ] \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp
    c4 r8 r4. R2.*5 \stemUp g4. _\f r4. R2. \stemUp g4. _\f r4. R2.*36
    \stemUp c8 [ _\f \stemUp c8 \stemUp c8 ] \stemUp e4 ( \stemUp c8 )
    \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp g8 [ \stemUp g8 \stemUp
    g8 ] \stemUp c8 [ \stemUp c8 \stemUp c8 ] \stemUp e4 ( \stemUp c8 )
    \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp g8 [ \stemUp g8 \stemUp
    g8 ] \stemUp c4 r8 r4 \stemUp g'8 -. \stemDown c8 -. [ \stemDown e8
    -. \stemDown g,8 -. ] \stemUp c8 -. [ \stemUp e,8 -. \stemUp g8 -. ]
    \stemUp c,4 r8 \stemUp e4 r8 \stemUp c4 r8 r4. \bar "|."
    }

PartPSevenVoiceOne =  \relative g'' {
    \clef "treble" \time 4/4 \key c \major \transposition a | % 1
    R1*56 \bar "||"
    \stemDown g2 _\p \stemDown e4. ( \stemDown f8 ) | % 58
    \stemDown a8 ( [ \stemDown g8 ) \stemDown f8 -. \stemDown e8 -. ]
    \stemDown e4 r4 | % 59
    \stemDown f4 ( \stemDown d8 ) r8 \stemDown f4 ( \stemDown d8 ) r8 |
    \barNumberCheck #60
    \stemDown c2 ( \stemDown b4 ) r4 | % 61
    \stemDown c2 ~ \stemDown c16 ( [ \stemDown b16 \stemDown c16
    \stemDown b16 ) ] \grace { \stemUp d16 ( } \stemDown c8 [ \stemDown
    b16 \stemDown a16 ) ] | % 62
    \stemDown g8 ( [ \stemDown f'8 ) ] \stemDown f2 ( \stemDown e4 ) | % 63
    \stemDown d16 ( [ \stemDown e16 \stemDown f16 \stemDown g16 ]
    \stemDown gis16 [ \stemDown a16 \stemDown f16 \stemDown d16 ) ]
    \stemDown c4 ( \stemDown e8 [ \stemDown d8 ) ] | % 64
    \stemDown c4 r4 r2 | % 65
    c1 ~ | % 66
    \stemDown c16 ( [ \stemDown d16 \stemDown e16 \stemDown f16 ]
    \stemDown g16 [ \stemDown a16 \stemDown b16 \stemDown c16 ) ]
    \stemDown b16 ( [ \stemDown c16 \stemDown b16 \stemDown c16 ]
    \stemDown b16 [ \stemDown c16 \stemDown b16 \stemDown c16 ) ] | % 67
    \stemDown gis16 ( [ \stemDown a16 \stemDown gis16 \stemDown a16 ]
    \stemDown e16 [ \stemDown f16 \stemDown e16 \stemDown f16 ) ]
    \stemDown cis16 ( [ \stemDown d16 \stemDown e16 \stemDown f16 ]
    \stemDown fis16 [ \stemDown g16 \stemDown gis16 \stemDown a16 ) ] | % 68
    \stemDown c,4. ( \stemDown d16 [ \stemDown c16 ] \stemDown b4 ) r4 | % 69
    \stemDown g'16 [ \stemDown f16 \stemDown d16 \stemDown b16 ] \stemUp
    g16 [ \stemUp f16 \stemUp d16 \stemUp b16 ] \stemUp g2 |
    \barNumberCheck #70
    \stemUp f2 \stemDown b''2 ( | % 71
    \stemDown c8 ) [ \stemDown e,8 ( -. \stemDown f8 -. \stemDown fis8
    -. ] \stemDown g8 ) -. [ \stemDown b,8 ( -. \stemDown c8 -.
    \stemDown cis8 ) -. ] | % 72
    \stemDown d2. ( \stemDown e8 [ \stemDown f8 ) ] | % 73
    \stemDown e16 [ \stemDown c'16 \stemDown g16 \stemDown e16 ] \stemUp
    c16 [ \stemUp g16 \stemUp e16 \stemUp c16 ] \stemUp a16 [ \stemUp c16
    \stemUp f16 \stemUp a16 ] \stemDown c16 [ \stemDown f16 \stemDown a16
    \stemDown c16 ] | % 74
    \stemDown fis,16 ( [ \stemDown g16 \stemDown a16 \stemDown g16 ]
    \stemDown f16 [ \stemDown e16 \stemDown d16 \stemDown c16 ) ]
    \afterGrace { \stemDown d2 } { \stemUp c16 [ \stemUp d16 ] } | % 75
    \stemDown c4 r4 r2 | % 76
    R1*2 | % 78
    \stemDown c2. ( \stemDown d8 [ \stemDown es8 ) ] | % 79
    \stemDown d8 ( [ \stemDown f8 ] \stemDown as2 \stemDown g8 [
    \stemDown f8 ) ] | \barNumberCheck #80
    \grace { \stemUp f16 ( } \stemDown es8 ) [ \stemDown d16 \stemDown c16
    ] \stemDown c4 r8 \stemDown es8 [ \stemDown f8 \stemDown g8 ] | % 81
    as1 ~ | % 82
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown as8 [ \stemDown f8 \stemDown d8 ] }
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown bes8 [ \stemDown d8 \stemDown f8 ] }
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown as8 [ \stemDown f8 \stemDown d8 ] }
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown bes8 [ \stemDown d8 \stemDown f8 ] }
    | % 83
    \stemDown as16 [ \stemDown f16 \stemDown d16 \stemDown bes16 ]
    \stemUp as16 [ \stemUp f16 \stemUp d16 \stemUp bes16 ] \stemUp as16
    [ \stemUp bes16 \stemUp d16 \stemUp f16 ] \stemDown as16 [ \stemDown
    bes16 \stemDown d16 \stemDown f16 ] | % 84
    \stemDown as8 ( [ \stemDown g8 \stemDown f8 \stemDown es8 ]
    \stemDown d8 [ \stemDown c'8 \stemDown bes8 \stemDown as8 ) ] | % 85
    \stemDown fis4 ( \stemDown g4 ) r8 \stemDown bes,8 ( [ \stemDown es8
    \stemDown g8 ) ] | % 86
    \stemDown f4. ( \stemDown g8 \stemDown as8 [ \stemDown f8 \stemDown
    c8 \stemDown d8 ) ] | % 87
    \stemDown es8 -. [ \stemDown g8 -. ] \stemDown bes4. ( \stemDown a8
    [ \stemDown as8 \stemDown g8 ) ] | % 88
    \stemDown f4. ( \stemDown g8 \stemDown as8 [ \stemDown f8 \stemDown
    c8 \stemDown d8 ) ] | % 89
    \stemDown es8 ( [ \stemDown g8 ] \stemDown bes4. \stemDown g8 [
    \stemDown f8 \stemDown es8 ) ] | \barNumberCheck #90
    \stemDown d8 ( [ \stemDown f8 ] \stemDown bes4. \stemDown f8 [
    \stemDown es8 \stemDown d8 ) ] | % 91
    \stemDown cis4 \stemUp e,,2 \stemUp d4 | % 92
    \stemUp cis4 \stemDown bes'''2 ( \stemDown a8 [ \stemDown g8 ) ] | % 93
    \stemDown g4. ( \once \omit TupletBracket
    \times 2/3  {
        \stemDown f16 [ \stemDown es16 \stemDown d16 ] }
    \stemDown cis4 ) -. \stemDown cis4 -. | % 94
    \stemDown d4 r4 r8 \stemUp d,,8 -. [ \stemUp e8 -. \stemUp fis8 -. ]
    | % 95
    \stemUp g16 [ \stemUp fis16 \stemUp g16 \stemUp fis16 ] \stemUp g16
    [ \stemUp fis16 \stemUp g16 \stemUp a16 ] \stemUp bes16 [ \stemUp a16
    \stemUp g16 \stemUp a16 ] \stemUp bes16 [ \stemUp a16 \stemUp bes16
    \stemUp c16 ] | % 96
    \stemUp d4 \stemDown d'4 r8 \stemUp d,8 -. [ \stemUp e8 -. \stemUp
    fis8 -. ] | % 97
    \stemUp g16 [ \stemUp fis16 \stemUp g16 \stemUp fis16 ] \stemUp g16
    [ \stemUp fis16 \stemUp g16 \stemUp a16 ] \stemUp bes16 [ \stemUp a16
    \stemUp g16 \stemUp a16 ] \stemDown bes16 [ \stemDown a16 \stemDown
    bes16 \stemDown c16 ] | % 98
    \stemDown d4 r4 r2 | % 99
    R1 | \barNumberCheck #100
    \stemDown d2 ~ \stemDown d8 ( [ \stemDown e8 \stemDown fis8
    \stemDown g8 ) ] | % 101
    \stemDown g8 ( [ \stemDown fis8 \stemDown d8 \stemDown b8 ]
    \stemDown gis8 [ \stemDown a8 \stemDown c8 \stemDown e8 ) ] | % 102
    \stemDown e8 ( [ \stemDown d8 \stemDown b8 \stemDown g8 ) ] \stemUp
    g8 ( [ \stemUp fis8 \stemUp a8 \stemUp c8 ) ] | % 103
    \stemDown b16 [ \stemDown c16 \stemDown d16 \stemDown e16 ]
    \stemDown fis16 [ \stemDown g16 \stemDown a16 \stemDown b16 ]
    \stemDown c4. ( \stemDown fis,8 ) | % 104
    \stemDown a8 ( [ \stemDown g8 ) ] \stemDown g4. ( \stemDown a16 [
    \stemDown b16 ] \stemDown a8 ) [ \stemDown g8 -. ] | % 105
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown fis8 [ \stemDown a8 \stemDown c8 ] }
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown a8 [ \stemDown fis8 \stemDown d8 ] }
    \stemDown c4 r4 | % 106
    \stemDown b8 ( [ \stemDown d8 ) ] \stemDown g4. ( \stemDown a16 [
    \stemDown b16 ] \stemDown a8 ) [ \stemDown g8 -. ] | % 107
    \stemDown fis16 [ \stemDown a16 \stemDown c16 \stemDown a16 ]
    \stemDown fis16 [ \stemDown d16 \stemDown c16 \stemDown a16 ]
    \stemUp fis4 r4 | % 108
    \stemDown g'16 [ \stemDown fis16 \stemDown a16 \stemDown g16 ]
    \stemDown b16 [ \stemDown a16 \stemDown g16 \stemDown fis16 ]
    \stemDown e16 ( [ \stemDown dis16 \stemDown fis16 \stemDown e16 ) ]
    \stemDown g8 r8 | % 109
    \stemDown e16 [ \stemDown dis16 \stemDown fis16 \stemDown e16 ]
    \stemDown g16 [ \stemDown f16 \stemDown e16 \stemDown d16 ]
    \stemDown c16 ( [ \stemDown b16 \stemDown d16 \stemDown c16 ) ]
    \stemDown e8 r8 | \barNumberCheck #110
    \stemDown c16 [ \stemDown b16 \stemDown d16 \stemDown c16 ]
    \stemDown e16 [ \stemDown d16 \stemDown c16 \stemDown b16 ] \stemUp
    a16 [ \stemUp gis16 \stemUp b16 \stemUp a16 ] \stemUp c16 [ \stemUp
    b16 \stemUp a16 \stemUp g16 ] | % 111
    \stemUp fis16 [ \stemUp d16 \stemUp c16 \stemUp a16 ] \stemUp c16 [
    \stemUp d16 \stemUp fis16 \stemUp a16 ] \stemDown c16 [ \stemDown d16
    \stemDown fis16 \stemDown a16 ] \stemDown c16 [ \stemDown a16
    \stemDown fis16 \stemDown a16 ] | % 112
    \stemDown g8 [ \stemDown d'8 ( \stemDown c8 \stemDown b8 ] \stemDown
    a8 [ \stemDown g8 \stemDown fis8 \stemDown f8 ) ] | % 113
    \stemDown e8 ( -. [ \stemDown f8 -. \stemDown fis8 -. \stemDown g8
    -. ] \stemDown gis8 -. [ \stemDown a8 -. \stemDown b8 -. \stemDown c8
    ) -. ] | % 114
    \stemDown g2. ( \stemDown b8 [ \stemDown a8 ) ] | % 115
    \stemDown g4 r4 r8 \stemDown g8 ( [ \stemDown fis8 \stemDown e8 ) ]
    | % 116
    \stemDown dis8 ( [ \stemDown fis8 ] \stemDown a2 \stemDown dis,4 ) | % 117
    \stemDown fis4 ( \stemDown e4 ) r8 \stemUp e,,8 [ \stemUp g8 \stemUp
    e8 ] | % 118
    \stemUp b'8 ( [ \stemUp ais8 \stemUp b8 \stemUp ais8 ] \stemUp b8 [
    \stemUp ais8 \stemUp b8 \stemUp a8 ) ] | % 119
    \stemUp g4 \stemUp e4 r8 \stemDown g''8 ( [ \stemDown fis8 \stemDown
    e8 ) ] | \barNumberCheck #120
    \stemDown dis8 ( [ \stemDown fis8 ] \stemDown a2 \stemDown dis,4 ) | % 121
    \stemDown fis4 ( \stemDown e4 ) r8 \stemUp e,,8 [ \stemUp g8 \stemUp
    e8 ] | % 122
    \stemUp b'8 ( [ \stemUp ais8 \stemUp b8 \stemUp ais8 ] \stemUp b8 [
    \stemUp ais8 \stemUp b8 \stemUp a8 ) ] | % 123
    \stemUp g4 \stemUp e4 \times 2/3 {
        r8 \stemDown e''8 [ \stemDown fis8 ] }
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown g8 [ \stemDown a8 \stemDown b8 ] }
    | % 124
    \stemDown c4. ( \stemDown a8 ) \once \omit TupletBracket
    \times 2/3  {
        \stemDown fis8 [ \stemDown g8 \stemDown gis8 ] }
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown a8 [ \stemDown bes8 \stemDown b8 ] }
    | % 125
    \stemDown c4. ( \stemDown a8 ) \stemDown fis16 [ \stemDown e16
    \stemDown d16 \stemDown e16 ] \stemDown fis16 [ \stemDown g16
    \stemDown a16 \stemDown b16 ] | % 126
    \stemDown c16 [ \stemDown a16 \stemDown fis16 \stemDown d16 ]
    \stemUp c16 [ \stemUp a16 \stemUp fis16 \stemUp d16 ] \stemUp c16 [
    \stemUp d16 \stemUp fis16 \stemUp a16 ] \stemDown c16 [ \stemDown d16
    \stemDown fis16 \stemDown a16 ] | % 127
    \stemDown c4. ( ^\fermata \stemDown a8 ) \stemDown fis4 ^\fermata r4
    | % 128
    R1 | % 129
    \stemDown g2 \stemDown fis4. ( \stemDown g8 ) | \barNumberCheck #130
    \stemDown b8 ( [ \stemDown a8 ) \stemDown g8 -. \stemDown fis8 -. ]
    \stemDown e4. ( \stemDown fis8 ) | % 131
    \stemDown g8 ( [ \stemDown a16 \stemDown b16 ] \stemDown a16 [
    \stemDown g16 \stemDown fis16 \stemDown e16 ) ] \stemDown e8 ( [
    \stemDown d8 ) \stemDown d8 ( \stemDown cis8 ) ] | % 132
    \stemDown d8 ( [ \stemDown e8 ) ] \stemDown c4 r2 | % 133
    R1 | % 134
    \stemUp g,16 [ \stemUp d'16 \stemUp b16 \stemUp d16 ] \stemUp a16 [
    \stemUp d16 \stemUp c16 \stemUp d16 ] \stemUp g,16 [ \stemUp d'16
    \stemUp b16 \stemUp d16 ] \stemUp fis,16 [ \stemUp d'16 \stemUp a16
    \stemUp d16 ] | % 135
    \stemUp g,16 [ \stemUp d'16 \stemUp b16 \stemUp d16 ] \stemUp a16 [
    \stemUp d16 \stemUp c16 \stemUp d16 ] \stemUp g,16 [ \stemUp d'16
    \stemUp b16 \stemUp d16 ] \stemUp fis,16 [ \stemUp d'16 \stemUp a16
    \stemUp d16 ] | % 136
    \stemUp g,16 [ \stemUp d'16 \stemUp b16 \stemUp d16 ] \stemUp a16 [
    \stemUp d16 \stemUp c16 \stemUp d16 ] \stemUp g,16 [ \stemUp d'16
    \stemUp b16 \stemUp d16 ] \stemUp fis,16 [ \stemUp d'16 \stemUp a16
    \stemUp d16 ] | % 137
    \stemUp g,16 [ \stemUp d'16 \stemUp b16 \stemUp d16 ] \stemUp fis,16
    [ \stemUp d'16 \stemUp a16 \stemUp d16 ] \stemUp g,16 [ \stemUp d'16
    \stemUp b16 \stemUp d16 ] \stemUp fis,16 [ \stemUp d'16 \stemUp a16
    \stemUp d16 ] | % 138
    \stemUp g,16 ( [ \stemUp b16 \stemUp d16 \stemUp g16 ] \stemUp b16 [
    \stemUp g16 \stemUp d16 \stemUp b16 ] \stemUp g16 [ \stemUp b16
    \stemUp d16 \stemUp g16 ] \stemUp b16 [ \stemUp g16 \stemUp d16
    \stemUp b16 ) ] | % 139
    \stemUp c,16 ( [ \stemUp e16 \stemUp g16 \stemUp c16 ] \stemUp e16 [
    \stemUp c16 \stemUp g16 \stemUp e16 ] \stemUp c16 [ \stemUp e16
    \stemUp g16 \stemUp c16 ] \stemUp e16 [ \stemUp c16 \stemUp g16
    \stemUp e16 ) ] | \barNumberCheck #140
    \stemUp d16 ( [ \stemUp g16 \stemUp b16 \stemUp d16 ] \stemUp g16 [
    \stemUp d16 \stemUp b16 \stemUp g16 ] \stemUp d4 ) r4 | % 141
    \stemUp g8 [ \stemUp a16 \stemUp b16 ] \stemUp c16 [ \stemUp d16
    \stemUp e16 \stemUp fis16 ] \stemUp g8 [ \stemUp a16 \stemUp b16 ]
    \stemDown c16 [ \stemDown d16 \stemDown e16 \stemDown fis16 ] | % 142
    \stemDown g16 [ \stemDown a16 \stemDown b16 \stemDown c16 ]
    \stemDown d16 [ \stemDown e16 \stemDown f16 \stemDown e16 ]
    \stemDown d16 [ \stemDown c16 \stemDown b16 \stemDown a16 ]
    \stemDown g16 [ \stemDown fis16 \stemDown g16 \stemDown f16 ] | % 143
    \stemDown e16 [ \stemDown g16 \stemDown e16 \stemDown c16 ]
    \stemDown b16 [ \stemDown d16 \stemDown b16 \stemDown g16 ]
    \stemDown e'16 [ \stemDown g16 \stemDown e16 \stemDown c16 ]
    \stemDown b16 [ \stemDown d16 \stemDown b16 \stemDown g16 ] | % 144
    \stemUp e16 [ \stemUp g16 \stemUp e16 \stemUp c16 ] \stemUp b16 [
    \stemUp d16 \stemUp b16 \stemUp g16 ] \stemUp e'16 [ \stemUp g16
    \stemUp e16 \stemUp c16 ] \stemUp b16 [ \stemUp d16 \stemUp b16
    \stemUp g16 ] | % 145
    \stemUp c,8 [ \stemUp e16 \stemUp g16 ] \stemUp c16 [ \stemUp e16
    \stemUp g16 \stemUp c16 ] \stemDown e4 r4 | % 146
    \stemUp c,,16 [ \stemUp fis16 \stemUp a16 \stemUp c16 ] \stemDown
    fis16 [ \stemDown a16 \stemDown c16 \stemDown es16 ] \stemDown fis4
    r4 | % 147
    \stemUp cis,,16 [ \stemUp e16 \stemUp g16 \stemUp cis16 ] \stemUp e16
    [ \stemUp g16 \stemUp cis16 \stemUp e16 ] \stemDown g4 r4 | % 148
    \stemUp d,,16 [ \stemUp g16 \stemUp fis16 \stemUp a16 ] \stemUp g16
    [ \stemUp b16 \stemUp a16 \stemUp c16 ] \stemUp b16 [ \stemUp d16
    \stemUp c16 \stemUp e16 ] \stemUp d16 [ \stemUp g16 \stemUp fis16
    \stemUp a16 ] | % 149
    \stemUp g16 [ \stemUp b16 \stemUp a16 \stemUp c16 ] \stemDown b16 [
    \stemDown d16 \stemDown c16 \stemDown e16 ] \stemDown d16 [
    \stemDown g16 \stemDown fis16 \stemDown a16 ] \stemDown g16 [
    \stemDown b16 \stemDown a16 \stemDown c16 ] | \barNumberCheck #150
    \stemDown b8 -. [ \stemDown d16 ( \stemDown cis16 ] \stemDown d16 [
    \stemDown cis16 \stemDown d16 \stemDown cis16 ) ] \stemDown d8 -. [
    \stemDown b16 ( \stemDown ais16 ] \stemDown b16 [ \stemDown ais16
    \stemDown b16 \stemDown ais16 ) ] | % 151
    \stemDown b8 -. [ \stemDown g16 ( \stemDown fis16 ] \stemDown g16 [
    \stemDown fis16 \stemDown g16 \stemDown fis16 ) ] \stemDown g8 -. [
    \stemDown d16 ( \stemDown cis16 ] \stemDown d16 [ \stemDown cis16
    \stemDown d16 \stemDown cis16 ) ] | % 152
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown d8 [ \stemDown es8 \stemDown e8 ] }
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown f8 [ \stemDown fis8 \stemDown g8 ] }
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown gis8 [ \stemDown a8 \stemDown bes8 ] }
    \stemDown b16 ( [ \stemDown c16 \stemDown cis16 \stemDown d16 ) ] | % 153
    \afterGrace { a1 } { \stemUp g16 [ \stemUp a16 ] } | % 154
    \stemDown g4 r4 r2 | % 155
    R1*17 \bar "||"
    \stemDown d2 _\p \stemDown b4. ( \stemDown c8 ) | % 173
    \stemDown e8 ( [ \stemDown d8 ) ] \stemDown d4. ( \stemDown b'8 [
    \stemDown a8 \stemDown g8 ) ] | % 174
    \stemDown fis8 ( [ \stemDown a8 ] \stemDown c4. \stemDown b8 [
    \stemDown a8 \stemDown g8 ) ] | % 175
    \stemDown g8 ( [ \stemDown fis8 \stemDown e8 \stemDown d8 ]
    \stemDown cis8 [ \stemDown d8 \stemDown e8 \stemDown fis8 ) ] | % 176
    \stemDown g2 \stemDown b,4. ( \stemDown c8 ) | % 177
    \stemDown e8 ( [ \stemDown d8 ) ] \stemDown d4. ( \stemDown b'8 [
    \stemDown a8 \stemDown g8 ) ] | % 178
    \stemDown fis8 ( [ \stemDown a8 ] \stemDown c4. \stemDown b8 [
    \stemDown a8 \stemDown g8 ) ] | % 179
    \stemDown g8 ( [ \stemDown fis8 \stemDown e8 \stemDown d8 ]
    \stemDown cis8 [ \stemDown d8 \stemDown e8 \stemDown fis8 ) ] |
    \barNumberCheck #180
    \stemDown g4 r8 \stemUp g,16 [ \stemUp a16 ] \stemDown b16 [
    \stemDown c16 \stemDown d16 \stemDown e16 ] \stemDown fis16 [
    \stemDown g16 \stemDown a16 \stemDown b16 ] | % 181
    \stemDown c16 [ \stemDown d16 \stemDown c16 \stemDown b16 ]
    \stemDown a16 [ \stemDown g16 \stemDown fis16 \stemDown e16 ]
    \stemDown d16 [ \stemDown fis16 \stemDown a16 \stemDown g16 ]
    \stemDown fis16 [ \stemDown e16 \stemDown d16 \stemDown c16 ] | % 182
    \stemDown g'4 r8 \stemUp g,16 [ \stemUp a16 ] \stemDown b16 [
    \stemDown c16 \stemDown d16 \stemDown e16 ] \stemDown fis16 [
    \stemDown g16 \stemDown a16 \stemDown b16 ] | % 183
    \stemDown c16 [ \stemDown d16 \stemDown c16 \stemDown b16 ]
    \stemDown a16 [ \stemDown g16 \stemDown fis16 \stemDown e16 ]
    \stemDown d16 [ \stemDown fis16 \stemDown a16 \stemDown g16 ]
    \stemDown fis16 [ \stemDown e16 \stemDown d16 \stemDown c16 ] | % 184
    \stemDown d4 r16 \stemUp g,16 [ \stemUp a16 \stemUp b16 ] \stemDown
    c16 [ \stemDown d16 \stemDown e16 \stemDown fis16 ] \stemDown g16 [
    \stemDown a16 \stemDown g16 \stemDown fis16 ] | % 185
    \stemDown g4 r16 \stemDown b,16 [ \stemDown c16 \stemDown d16 ]
    \stemDown e16 [ \stemDown fis16 \stemDown g16 \stemDown a16 ]
    \stemDown b16 [ \stemDown c16 \stemDown b16 \stemDown a16 ] | % 186
    \stemDown b4 r16 \stemDown d,16 [ \stemDown e16 \stemDown fis16 ]
    \stemDown g16 [ \stemDown fis16 \stemDown a16 \stemDown g16 ]
    \stemDown b16 [ \stemDown a16 \stemDown c16 \stemDown b16 ] | % 187
    d1 ~ | % 188
    \stemDown d8 \stemDown b4 \stemDown gis4 \stemDown f4 \stemDown d8 ~
    | % 189
    \stemDown d8 \stemDown b4 \stemUp gis8 \stemUp e8 [ \stemUp d8
    \stemUp c8 \stemUp b8 ] | \barNumberCheck #190
    \stemUp a4 \stemUp g4 \stemUp f4 \stemUp e4 | % 191
    \stemUp d2 \stemUp dis2 | % 192
    \stemUp e4 r4 r2 | % 193
    R1 | % 194
    r4 \stemUp e4 ( -. \stemUp e4 -. \stemUp e4 ) -. | % 195
    \stemUp e4 r4 r2 | % 196
    r4 \stemUp d4 ( -. \stemUp d4 -. \stemUp d4 ) -. | % 197
    \stemUp d4 r4 r2 | % 198
    \times 2/3  {
        r8 \stemUp c8 [ \stemUp f8 ] }
    \once \omit TupletBracket
    \times 2/3  {
        \stemUp a8 [ \stemUp c8 \stemUp f8 ] }
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown a8 [ \stemDown c8 \stemDown f8 ] }
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown a8 [ \stemDown f8 \stemDown c'8 ] }
    | % 199
    r8 \stemDown e,16 [ \stemDown g16 ] \stemDown bes16 [ \stemDown d16
    \stemDown bes16 \stemDown g16 ] \stemDown e16 [ \stemDown c16
    \stemDown bes16 \stemDown g16 ] \stemUp e16 [ \stemUp c16 \stemUp
    bes16 \stemUp g16 ] | \barNumberCheck #200
    \stemUp f4 r4 r8 \stemDown c''8 ( [ \stemDown f8 \stemDown a8 ) ] | % 201
    \stemDown g4. ( \stemDown a8 \stemDown bes8 [ \stemDown g8 \stemDown
    d8 \stemDown e8 ) ] | % 202
    \stemDown f8 -. [ \stemDown a8 -. ] \stemDown c4. ( \stemDown b8 [
    \stemDown bes8 \stemDown a8 ) ] | % 203
    \stemDown g4. ( \stemDown a8 \stemDown bes8 [ \stemDown g8 \stemDown
    d8 \stemDown e8 ) ] | % 204
    \stemDown f8 -. [ \stemDown a8 -. ] \stemDown c4. ( \stemDown a8 [
    \stemDown g8 \stemDown f8 ) ] | % 205
    \stemDown e8 -. [ \stemDown g8 -. ] \stemDown c4. ( \stemDown g8 [
    \stemDown f8 \stemDown e8 ) ] | % 206
    \stemDown dis4 \stemUp fis,,2 \stemUp e4 | % 207
    \stemUp dis4 r4 \stemDown b'''4. ( \once \omit TupletBracket
    \times 2/3  {
        \stemDown a16 [ \stemDown g16 \stemDown fis16 ) ] }
    | % 208
    \stemDown g4 \stemUp e,,2 \stemUp d4 | % 209
    \stemUp cis4 r4 \stemDown a'''4. ( \once \omit TupletBracket
    \times 2/3  {
        \stemDown g16 [ \stemDown f16 \stemDown e16 ) ] }
    | \barNumberCheck #210
    \stemDown f4 r16 \stemDown d16 ( [ \stemDown cis16 \stemDown d16 ]
    \stemDown e16 [ \stemDown d16 \stemDown cis16 \stemDown d16 ]
    \stemDown e16 [ \stemDown f16 \stemDown fis16 \stemDown g16 ) ] | % 211
    \stemDown gis4 r16 \stemDown e16 ( [ \stemDown dis16 \stemDown e16 ]
    \stemDown f16 [ \stemDown e16 \stemDown dis16 \stemDown e16 ]
    \stemDown f16 [ \stemDown fis16 \stemDown g16 \stemDown gis16 ) ] | % 212
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown a8 ( [ \stemDown e8 \stemDown fis8 ] }
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown gis8 [ \stemDown a8 \stemDown ais8 ) ] }
    \stemDown b16 [ \stemDown e,16 ( \stemDown fis16 \stemDown g16 ]
    \stemDown gis16 [ \stemDown a16 \stemDown ais16 \stemDown b16 ) ] | % 213
    \stemDown c8 \stemDown a4 \stemDown f4 \stemDown d4 \stemDown b8 | % 214
    \stemDown e2 \stemUp gis,2 | % 215
    R1 | % 216
    bes1 | % 217
    cis,1 | % 218
    a''1 | % 219
    dis,,1 | \barNumberCheck #220
    \stemUp e4 r8 \stemDown c16 ( [ \stemDown b16 ] \stemDown c8 ) [
    \stemDown a'16 ( \stemDown gis16 ] \stemDown a8 ) [ \stemDown e'16 (
    \stemDown dis16 ] | % 221
    \stemDown e4 ) r8 \stemDown c16 ( [ \stemDown b16 ] \stemDown c8 ) [
    \stemDown a'16 ( \stemDown gis16 ] \stemDown a8 ) [ \stemDown c16 (
    \stemDown b16 ] | % 222
    \stemDown c4 ) r8 \stemDown e,16 ( [ \stemDown dis16 ] \stemDown e8
    ) [ \stemDown c'16 ( \stemDown b16 ] \stemDown c8 ) [ \stemDown e16
    ( \stemDown dis16 ] | % 223
    \stemDown e8 ) r8 \stemUp a,,,4 \stemUp f4 \stemUp dis4 | % 224
    \stemUp e4 r8 \stemDown dis''8 -. \stemDown e8 -. [ \stemDown f8 -.
    \stemDown fis8 -. \stemDown g8 -. ] | % 225
    \stemDown gis2 \stemDown a2 | % 226
    \afterGrace { b1 } { \stemUp a16 [ \stemUp b16 ] } | % 227
    \stemDown a4 r4 r2 | % 228
    R1*20 | % 248
    \stemUp g,,8 [ \stemUp a16 \stemUp b16 ] \stemUp c16 [ \stemUp d16
    \stemUp e16 \stemUp fis16 ] \stemUp g16 [ \stemUp a16 \stemUp b16
    \stemUp c16 ] \stemDown d16 [ \stemDown e16 \stemDown f16 \stemDown
    fis16 ] | % 249
    g1 ~ | \barNumberCheck #250
    g1 ~ | % 251
    \stemDown g2 \stemDown e4. ( \stemDown f8 ) | % 252
    \stemDown a8 ( [ \stemDown g8 ) \stemDown f8 -. \stemDown e8 -. ]
    \stemDown e4 r4 | % 253
    \stemDown f4 ( \stemDown d8 ) r8 \stemDown f4 ( \stemDown d8 ) r8 | % 254
    \stemDown c4. ( \stemDown d16 [ \stemDown c16 ] \stemDown b4 ) r4 | % 255
    \stemDown c2 ~ \stemDown c16 ( [ \stemDown b16 \stemDown c16
    \stemDown b16 ) ] \grace { \stemUp d16 ( } \stemDown c8 [ \stemDown
    b16 \stemDown a16 ) ] | % 256
    \stemDown g8 ( [ \stemDown f'8 ) ] \stemDown f2 ( \stemDown e4 ) | % 257
    \stemDown d16 ( [ \stemDown e16 \stemDown f16 \stemDown g16 ]
    \stemDown gis16 [ \stemDown a16 \stemDown f16 \stemDown d16 ) ]
    \stemDown c4 ( \stemDown e8 [ \stemDown d8 ) ] | % 258
    \stemDown c4 r4 r2 | % 259
    c1 ~ | \barNumberCheck #260
    \stemDown c16 ( [ \stemDown d16 \stemDown e16 \stemDown f16 ]
    \stemDown g16 [ \stemDown a16 \stemDown b16 \stemDown c16 ) ]
    \stemDown b16 ( [ \stemDown c16 \stemDown b16 \stemDown c16 ]
    \stemDown b16 [ \stemDown c16 \stemDown b16 \stemDown c16 ) ] | % 261
    \stemDown gis16 ( [ \stemDown a16 \stemDown gis16 \stemDown a16 ]
    \stemDown e16 [ \stemDown f16 \stemDown e16 \stemDown f16 ) ]
    \stemDown cis16 ( [ \stemDown d16 \stemDown e16 \stemDown f16 ]
    \stemDown fis16 [ \stemDown g16 \stemDown gis16 \stemDown a16 ) ] | % 262
    \stemDown c,4. ( \stemDown d16 [ \stemDown c16 ] \stemDown b4 ) r4 | % 263
    \stemDown g'16 [ \stemDown f16 \stemDown d16 \stemDown b16 ] \stemUp
    g16 [ \stemUp f16 \stemUp d16 \stemUp b16 ] \stemUp g2 | % 264
    \stemUp f2 \stemDown b''2 ( | % 265
    \stemDown c8 ) [ \stemDown e,8 ( -. \stemDown f8 -. \stemDown fis8
    -. ] \stemDown g8 ) -. [ \stemDown b,8 ( -. \stemDown c8 -.
    \stemDown cis8 ) -. ] | % 266
    \stemDown d2. ( \stemDown e8 [ \stemDown f8 ) ] | % 267
    \stemDown e16 [ \stemDown c'16 \stemDown g16 \stemDown e16 ] \stemUp
    c16 [ \stemUp g16 \stemUp e16 \stemUp c16 ] \stemUp a16 [ \stemUp c16
    \stemUp f16 \stemUp a16 ] \stemDown c16 [ \stemDown f16 \stemDown a16
    \stemDown c16 ] | % 268
    \stemDown fis,16 ( [ \stemDown g16 \stemDown a16 \stemDown g16 ]
    \stemDown f16 [ \stemDown e16 \stemDown d16 \stemDown c16 ) ]
    \afterGrace { \stemDown d2 } { \stemUp c16 [ \stemUp d16 ] } | % 269
    \stemDown c4 r4 r2 | \barNumberCheck #270
    R1*2 | % 272
    \stemDown c2. ( \stemDown d8 [ \stemDown es8 ) ] | % 273
    \stemDown d8 ( [ \stemDown f8 ] \stemDown as2 \stemDown g8 [
    \stemDown f8 ) ] | % 274
    \grace { \stemUp f16 ( } \stemDown es8 ) [ \stemDown d16 \stemDown c16
    ] \stemDown c4 r8 \stemDown es8 ( [ \stemDown f8 \stemDown g8 ) ] | % 275
    \stemDown f8 ( [ \stemDown as8 ] \stemDown c2 \stemDown bes8 [
    \stemDown as8 ) ] | % 276
    \grace { \stemUp as16 ( } \stemDown g8 ) [ \stemDown f16 \stemDown
    es16 ] \stemDown es4 r2 | % 277
    R1 | % 278
    \stemDown f8 ( [ \stemDown g8 ] \stemDown as2 \stemDown g8 [
    \stemDown f8 ) ] | % 279
    \stemDown e8 ( [ \stemDown g16 \stemDown bes16 ] \stemDown des2
    \stemDown c8 [ \stemDown bes8 ) ] | \barNumberCheck #280
    \stemDown bes8 ( [ \stemDown as8 ) ] r8 \stemDown g8 -. \stemDown g8
    ( [ \stemDown f8 ) ] r8 \stemDown es8 ~ | % 281
    \stemDown es8 \stemDown d4 \stemDown es4 \stemDown d4 \stemDown c8 | % 282
    \stemDown b4 r4 r8 \stemUp g,8 -. [ \stemUp a8 -. \stemUp b8 -. ] | % 283
    \stemUp c16 [ \stemUp g16 \stemUp a16 \stemUp b16 ] \stemUp c16 [
    \stemUp b16 \stemUp c16 \stemUp d16 ] \stemUp es16 [ \stemUp d16
    \stemUp c16 \stemUp d16 ] \stemUp es16 [ \stemUp d16 \stemUp es16
    \stemUp f16 ] | % 284
    \stemUp g4 \stemUp g,4 r8 \stemUp g8 -. [ \stemUp a8 -. \stemUp b8
    -. ] | % 285
    \stemUp c16 [ \stemUp g16 \stemUp a16 \stemUp b16 ] \stemUp c16 [
    \stemUp b16 \stemUp c16 \stemUp d16 ] \stemUp es16 [ \stemUp d16
    \stemUp c16 \stemUp d16 ] \stemUp es16 [ \stemUp d16 \stemUp es16
    \stemUp f16 ] | % 286
    \stemUp g4 r4 r2 | % 287
    R1 | % 288
    \stemDown g'2 ~ \stemDown g8 ( [ \stemDown a8 \stemDown b8 \stemDown
    c8 ) ] | % 289
    \stemDown c8 ( [ \stemDown b8 \stemDown g8 \stemDown e8 ] \stemDown
    cis8 [ \stemDown d8 \stemDown f8 \stemDown a8 ) ] | \barNumberCheck
    #290
    \stemDown a8 ( [ \stemDown g8 \stemDown e8 \stemDown c8 ] \stemDown
    c8 [ \stemDown b8 \stemDown d8 \stemDown f8 ) ] | % 291
    \stemDown e16 ( [ \stemDown f16 \stemDown fis16 \stemDown g16 ]
    \stemDown f16 [ \stemDown e16 \stemDown d16 \stemDown c16 ) ]
    \stemDown b16 [ \stemDown c16 \stemDown d16 \stemDown e16 ]
    \stemDown f16 [ \stemDown g16 \stemDown a16 \stemDown b16 ] | % 292
    \stemDown c8 r8 \stemDown c,4. ( \stemDown d16 [ \stemDown e16 ]
    \stemDown d8 ) [ \stemDown c8 -. ] | % 293
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown b8 [ \stemDown d8 \stemDown f8 ] }
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown d8 [ \stemDown b8 \stemDown g8 ] }
    \stemUp f4 r4 | % 294
    r4 \stemUp c4. ( \stemUp d16 [ \stemUp e16 ] \stemUp d8 ) [ \stemUp
    c8 -. ] | % 295
    \stemUp b16 [ \stemUp d16 \stemUp f16 \stemUp d16 ] \stemUp f16 [
    \stemUp d16 \stemUp b16 \stemUp g16 ] \stemUp f4 r4 | % 296
    \stemUp c'16 [ \stemUp b16 \stemUp d16 \stemUp c16 ] \stemUp e16 [
    \stemUp d16 \stemUp c16 \stemUp b16 ] \stemUp a16 [ \stemUp gis16
    \stemUp b16 \stemUp a16 ] \stemUp c8 r8 | % 297
    \stemUp a16 [ \stemUp gis16 \stemUp b16 \stemUp a16 ] \stemUp c16 [
    \stemUp b16 \stemUp a16 \stemUp g16 ] \stemUp f16 [ \stemUp e16
    \stemUp g16 \stemUp f16 ] \stemUp a8 r8 | % 298
    \stemDown f''16 [ \stemDown e16 \stemDown g16 \stemDown f16 ]
    \stemDown a16 [ \stemDown g16 \stemDown f16 \stemDown e16 ]
    \stemDown d16 [ \stemDown cis16 \stemDown e16 \stemDown d16 ]
    \stemDown f16 [ \stemDown e16 \stemDown d16 \stemDown c16 ] | % 299
    \stemDown b16 [ \stemDown d16 \stemDown f16 \stemDown d16 ]
    \stemDown f16 [ \stemDown d16 \stemDown b16 \stemDown g16 ] \stemUp
    f16 [ \stemUp d16 \stemUp b16 \stemUp g16 ] \stemUp f16 [ \stemUp g16
    \stemUp d16 \stemUp f16 ] | \barNumberCheck #300
    \stemUp e8 \stemDown g''8 ( [ \stemDown f8 \stemDown e8 ] \stemDown
    d8 [ \stemDown c8 \stemDown b8 \stemDown bes8 ) ] | % 301
    \stemDown a8 ( -. [ \stemDown bes8 -. \stemDown b8 -. \stemDown c8
    -. ] \stemDown cis8 -. [ \stemDown d8 -. \stemDown e8 -. \stemDown f8
    ) -. ] | % 302
    \stemDown c2. ( \stemDown e8 [ \stemDown d8 ) ] | % 303
    \stemDown c4 r4 r8 \stemDown e8 ( -. [ \stemDown e8 -. \stemDown e8
    ) -. ] | % 304
    \stemDown e4. \stemDown e8 \stemDown f8 ( -. [ \stemDown fis8 -.
    \stemDown g8 -. \stemDown gis8 ) -. ] | % 305
    \stemDown gis8 ( [ \stemDown a8 ) ] \stemDown e4 r8 \stemUp a,,8 ( [
    \stemUp g8 \stemUp f8 ) ] | % 306
    \stemUp f8 ( [ \stemUp e8 ) ] \stemUp e4. \stemUp f'8 ( [ \stemUp e8
    \stemUp d8 ) ] | % 307
    \grace { \stemUp d16 ( } \stemUp c8 [ \stemUp b16 \stemUp a16 ) ]
    \stemUp a4 r8 \stemDown c'8 ( [ \stemDown b8 \stemDown a8 ) ] | % 308
    \stemUp gis8 ( [ \stemUp b8 ] \stemDown d4. ) \stemDown d8 ( [
    \stemDown c8 \stemDown b8 ) ] | % 309
    \stemDown e8 ( [ \stemDown c8 ] \stemUp a4 ) \stemUp c,,2 |
    \barNumberCheck #310
    \stemUp d2 \stemUp e4. ( \stemUp d16 [ \stemUp e16 ) ] | % 311
    \stemUp a4 r4 \times 2/3 {
        r8 \stemUp a'8 [ \stemUp b8 ] }
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown c8 [ \stemDown d8 \stemDown e8 ] }
    | % 312
    \stemDown f4. ( \stemDown d8 ) \once \omit TupletBracket
    \times 2/3  {
        \stemDown b8 [ \stemDown c8 \stemDown cis8 ] }
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown d8 [ \stemDown es8 \stemDown e8 ] }
    | % 313
    \stemDown f4. ( \stemDown d8 ) \stemUp b16 [ \stemUp a16 \stemUp g16
    \stemUp a16 ] \stemDown b16 [ \stemDown c16 \stemDown d16 \stemDown
    e16 ] | % 314
    \stemDown f16 [ \stemDown d16 \stemDown b16 \stemDown g16 ] \stemUp
    f16 [ \stemUp d16 \stemUp b16 \stemUp g16 ] \stemUp f16 [ \stemUp g16
    \stemUp b16 \stemUp d16 ] \stemUp f16 [ \stemUp g16 \stemUp b16
    \stemUp d16 ] | % 315
    \stemDown f4. ( ^\fermata \stemDown d8 ) \stemDown b4 r4 ^\fermata | % 316
    \stemDown g'2 \stemDown e4. ( \stemDown f8 ) | % 317
    \stemDown a8 ( [ \stemDown g8 ) \stemDown f8 -. \stemDown e8 -. ]
    \stemDown d4. ( \stemDown e8 ) | % 318
    \stemDown g8 ( [ \stemDown f8 ) \stemDown e8 -. \stemDown d8 -. ]
    \stemDown c4. ( \stemDown d8 ) | % 319
    \stemDown e8 ( [ \stemDown fis16 \stemDown g16 ] \stemDown fis16 [
    \stemDown e16 \stemDown d16 \stemDown c16 ) ] \stemDown b4 -.
    \stemUp a4 -. | \barNumberCheck #320
    \stemUp g4 -. \stemDown b4 -. r8 \stemDown d8 ( [ \stemDown e8
    \stemDown f8 ) ] | % 321
    \stemDown g8 ( [ \stemDown b16 \stemDown a16 ] \stemDown g16 [
    \stemDown f16 \stemDown e16 \stemDown d16 ) ] \stemDown d8 ( [
    \stemDown c8 ) \stemDown c8 ( \stemDown b8 ) ] | % 322
    \stemDown c4 r4 r2 | % 323
    R1 | % 324
    \stemUp c,16 [ \stemUp g'16 \stemUp e16 \stemUp g16 ] \stemUp d16 [
    \stemUp g16 \stemUp f16 \stemUp g16 ] \stemUp c,16 [ \stemUp g'16
    \stemUp e16 \stemUp g16 ] \stemUp g,16 [ \stemUp g'16 \stemUp b,16
    \stemUp g'16 ] | % 325
    \stemUp c,16 [ \stemUp g'16 \stemUp e16 \stemUp g16 ] \stemUp g,16 [
    \stemUp g'16 \stemUp b,16 \stemUp g'16 ] \stemUp c,16 [ \stemUp g'16
    \stemUp e16 \stemUp g16 ] \stemUp g,16 [ \stemUp g'16 \stemUp b,16
    \stemUp g'16 ] | % 326
    \stemUp c,,16 [ \stemUp e16 \stemUp g16 \stemUp c16 ] \stemUp e16 [
    \stemUp g16 \stemUp c16 \stemUp e16 ] \stemDown g16 [ \stemDown c16
    \stemDown g16 \stemDown e16 ] \stemUp c16 [ \stemUp g16 \stemUp e16
    \stemUp c16 ] | % 327
    \stemUp f,16 [ \stemUp a16 \stemUp c16 \stemUp f16 ] \stemDown a16 [
    \stemDown c16 \stemDown f16 \stemDown a16 ] \stemDown c16 [
    \stemDown a16 \stemDown f16 \stemDown c16 ] \stemUp a16 [ \stemUp f16
    \stemUp c16 \stemUp a16 ] | % 328
    \stemUp g16 [ \stemUp c16 \stemUp e16 \stemUp g16 ] \stemUp c16 [
    \stemUp g16 \stemUp e16 \stemUp c16 ] \stemUp g4 r4 | % 329
    \stemUp c8 [ \stemUp d16 \stemUp e16 ] \stemUp f16 [ \stemUp g16
    \stemUp a16 \stemUp b16 ] \stemDown c16 [ \stemDown d16 \stemDown e16
    \stemDown f16 ] \stemDown g16 [ \stemDown a16 \stemDown b16
    \stemDown c16 ] | \barNumberCheck #330
    \stemDown c16 [ \stemDown bes16 \stemDown g16 \stemDown e16 ]
    \stemUp c16 [ \stemUp bes16 \stemUp g16 \stemUp e16 ] \stemUp c16 [
    \stemUp e16 \stemUp g16 \stemUp bes16 ] \stemDown c16 [ \stemDown e16
    \stemDown g16 \stemDown bes16 ] | % 331
    \stemDown a16 [ \stemDown c16 \stemDown a16 \stemDown f16 ]
    \stemDown e16 [ \stemDown g16 \stemDown e16 \stemDown c16 ]
    \stemDown a'16 [ \stemDown c16 \stemDown a16 \stemDown f16 ]
    \stemDown e16 [ \stemDown g16 \stemDown e16 \stemDown c16 ] | % 332
    \stemUp a16 [ \stemUp c16 \stemUp a16 \stemUp f16 ] \stemUp e16 [
    \stemUp g16 \stemUp e16 \stemUp c16 ] \stemUp a'16 [ \stemUp c16
    \stemUp a16 \stemUp f16 ] \stemUp e16 [ \stemUp g16 \stemUp e16
    \stemUp c16 ] | % 333
    \stemUp a16 [ \stemUp c16 \stemUp a16 \stemUp f16 ] \stemUp e16 [
    \stemUp g16 \stemUp e16 \stemUp c16 ] \stemUp a'16 [ \stemUp c16
    \stemUp a16 \stemUp f16 ] \stemUp e16 [ \stemUp g16 \stemUp e16
    \stemUp c16 ] | % 334
    \stemUp f8 [ \stemUp a16 \stemUp c16 ] \stemDown f16 [ \stemDown a16
    \stemDown c16 \stemDown f16 ] \stemDown a4 r4 | % 335
    \stemUp g,,8 [ \stemUp b16 \stemUp d16 ] \stemDown g16 [ \stemDown b16
    \stemDown d16 \stemDown g16 ] \stemDown b4 r4 | % 336
    \stemUp a,,16 [ \stemUp c16 \stemUp fis16 \stemUp a16 ] \stemDown c16
    [ \stemDown es16 \stemDown fis16 \stemDown a16 ] \stemDown c4 r4 | % 337
    \stemUp c,,,16 [ \stemUp e16 \stemUp g16 \stemUp c16 ] \stemUp e16 [
    \stemUp c16 \stemUp g16 \stemUp e16 ] \stemUp g16 [ \stemUp c16
    \stemUp e16 \stemUp g16 ] \stemUp c16 [ \stemUp g16 \stemUp e16
    \stemUp c16 ] | % 338
    \stemUp e16 [ \stemUp g16 \stemUp c16 \stemUp e16 ] \stemDown g16 [
    \stemDown e16 \stemDown c16 \stemDown g16 ] \stemDown c16 [
    \stemDown e16 \stemDown g16 \stemDown c16 ] \stemDown e8 r8 | % 339
    r8 \stemDown c16 ( [ \stemDown b16 ] \stemDown c16 [ \stemDown b16
    \stemDown c16 \stemDown b16 ) ] \stemDown c8 -. [ \stemDown g16 (
    \stemDown fis16 ] \stemDown g16 [ \stemDown fis16 \stemDown g16
    \stemDown fis16 ) ] | \barNumberCheck #340
    \stemDown g8 -. [ \stemDown e16 ( \stemDown dis16 ] \stemDown e16 [
    \stemDown dis16 \stemDown e16 \stemDown dis16 ) ] \stemDown e8 -. [
    \stemDown c16 ( \stemDown b16 ] \stemDown c16 [ \stemDown b16
    \stemDown c16 \stemDown b16 ) ] | % 341
    \stemUp c16 ( [ \stemUp g16 \stemUp a16 \stemUp b16 ] \stemDown c16
    [ \stemDown d16 \stemDown es16 \stemDown e16 ] \stemDown f16 [
    \stemDown fis16 \stemDown g16 \stemDown as16 ] \stemDown a16 [
    \stemDown bes16 \stemDown b16 \stemDown c16 ) ] | % 342
    \afterGrace { d,1 } { \stemUp c16 [ \stemUp d16 ] } | % 343
    \stemDown c4 r4 r2 | % 344
    R1*16 \bar "|."
    \time 3/4  \key f \major \transposition a \stemDown c4 ( \stemDown f4.
    \stemDown a8 ) \stemDown a8 ( [ \stemDown g8 ) ] \stemDown f4 r4
    \stemDown c4. ( \stemDown f8 [ \stemDown a8 \stemDown c8 ) ]
    \stemDown c8 ( [ \stemDown bes8 ) ] \stemDown a4 r4 \stemDown g4. (
    \stemDown c8 [ \stemDown a8 \stemDown c8 ) ] \stemDown g4. (
    \stemDown c8 [ \stemDown d,8 \stemDown a'8 ) ] \stemDown c,2 \grace
    { \stemUp e16 ( } \stemDown d8. ) [ \stemDown c16 ] \stemDown c4 r4
    r4 R2.*8 \stemDown a'4. ( \stemDown g8 [ \stemDown f8 \stemDown e8 )
    ] \stemDown d4 r4 r4 \stemDown bes'4. ( \stemDown a8 [ \stemDown g8
    \stemDown f8 ) ] \stemDown e4 r4 r4 \stemDown c'4. ( \stemDown bes8
    [ \stemDown a8 \stemDown g8 ) ] \stemDown f8 ( [ \stemDown bes8 ) ]
    \stemDown bes4. ( \stemDown a8 ) \stemDown a16 ( [ \stemDown g16
    \stemDown bes16 \stemDown g16 ) ] \stemDown f4 \grace { \stemUp a16
        ( } \stemDown g8. ) [ \stemDown f16 ] \stemDown f4 r4 r4 R2.*8
    \stemDown a8. ( [ \stemDown f16 ) ] \stemDown c'4. ( \stemDown a16 [
    \stemDown f16 ) ] \stemDown e4 ( \stemDown g4 ) r4 \stemDown f32 ( [
    \stemDown d32 \stemDown b32 \stemDown g32 \stemDown f32 \stemDown d32
    \stemDown b32 \stemDown g32 ] \stemDown f8 ) [ \stemDown a''8 ( -.
    \stemDown g8 -. \stemDown f8 ) -. ] \stemDown d8. ( [ \stemDown dis16
    ) ] \stemDown e4 r4 \stemDown g4. ( \stemDown c16 [ \stemDown b16 ]
    \stemDown a16 [ \stemDown g16 \stemDown f16 \stemDown e16 ) ]
    \stemDown e16 ( [ \stemDown f16 \stemDown cis16 \stemDown d16 ) ]
    \stemDown d4 r4 \stemDown e8. \turn [ \stemDown f16 ] \stemDown g8.
    \turn [ \stemDown a16 ] \stemDown bes8 [ \stemDown e,8 ] \stemDown g4
    ( \stemDown f4 ) r4 \stemUp g,,4 \stemDown d'''4 ~ \stemDown d16 ( [
    \stemDown b16 \stemDown g16 \stemDown f16 ) ] \stemDown dis16 ( [
    \stemDown e16 \stemDown f16 \stemDown fis16 ] \stemDown g16 [
    \stemDown a16 \stemDown b16 \stemDown c16 ] \stemDown gis16 [
    \stemDown a16 \stemDown f16 \stemDown d16 ) ] \stemDown c4.
    \stemDown cis8 ( [ \stemDown d8 \stemDown g8 ) ] \stemDown f8. ( [
    \stemDown g32 \stemDown f32 ) ] \stemDown e4 r4 \stemUp g,,4 ~
    \stemUp g16 [ \stemUp a32 ( \stemUp b32 ) \stemUp c16 -. \stemUp b16
    -. ] \stemUp a16 ( [ \stemUp g16 \stemUp f16 \stemUp e16 ) ] \stemUp
    cis4 ( \stemUp d4 ) r4 \once \omit TupletBracket
    \times 4/6  {
        \stemUp e16 ( [ \stemUp d16 \stemUp c16 \stemUp d16 \stemUp e16
        \stemUp f16 ) ] }
    \once \omit TupletBracket
    \times 4/6  {
        \stemUp g16 ( [ \stemUp f16 \stemUp e16 \stemUp f16 \stemUp g16
        \stemUp a16 ) ] }
    \stemUp bes16 ( -. [ \stemUp c16 -. \stemUp d16 -. \stemUp e,16 ) -.
    ] \stemUp g4 ( \stemUp f4 ) r4 \stemUp f'4 ~ \stemUp f32 ( [ \stemUp
    g32 \stemUp a32 \stemUp g32 \stemUp f32 \stemUp e32 \stemUp d32
    \stemUp c32 ) ] \once \omit TupletBracket
    \times 4/6  {
        \stemUp b16 ( [ \stemUp a16 \stemUp g16 \stemUp f16 \stemUp e16
        \stemUp d16 ) ] }
    \stemUp c8 r8 \stemDown g'''2 \stemUp d,,8 r8 \stemDown a'''2 \once
    \omit TupletBracket
    \times 4/6  {
        \stemUp g,16 ( [ \stemUp gis16 \stemUp a16 \stemUp bes16 \stemUp
        b16 \stemUp c16 ) ] }
    \once \omit TupletBracket
    \times 4/6  {
        \stemDown cis16 ( [ \stemDown d16 \stemDown dis16 \stemDown e16
        \stemDown f16 \stemDown fis16 ) ] }
    \once \omit TupletBracket
    \times 4/6  {
        \stemDown g16 ( [ \stemDown as16 \stemDown a16 \stemDown bes16
        \stemDown b16 \stemDown c16 ) ] }
    \afterGrace { \stemDown d,2. } { \stemUp c16 [ \stemUp d16 ] }
    \stemDown c4 r4 r4 \stemUp c,,4 ~ \stemUp c32 ( [ \stemUp e32
    \stemUp g32 \stemUp c32 \stemUp e32 \stemUp g32 \stemUp c32 \stemUp
    e32 ) ] \stemDown c32 ( [ \stemDown d32 \stemDown e32 \stemDown f32
    \stemDown g32 \stemDown a32 \stemDown b32 \stemDown c32 ) ]
    \stemDown b4 r4 r4 \stemUp d,,,4 ~ \stemUp d32 ( [ \stemUp g32
    \stemUp b32 \stemUp d32 \stemUp f32 \stemUp g32 \stemUp b32 \stemUp
    d32 ) ] \stemDown b32 ( [ \stemDown c32 \stemDown d32 \stemDown e32
    \stemDown f32 \stemDown g32 \stemDown a32 \stemDown b32 ) ]
    \stemDown bes4 r4 r4 \stemDown bes2. ^\fermata \stemDown c,4 (
    _\markup{ \tiny\italic {cadenza} } \stemDown f4. \stemDown a8 )
    \stemDown a8 ( [ \stemDown g8 ) ] \stemDown f4 r4 \stemDown c4. (
    \stemDown f8 [ \stemDown a8 \stemDown c8 ) ] \stemDown c8 ( [
    \stemDown bes8 ) ] \stemDown a4 r4 \stemDown g4. ( \stemDown c8 [
    \stemDown a8 \stemDown c8 ) ] \stemDown g4. ( \stemDown c8 [
    \stemDown d,8 \stemDown a'8 ) ] \stemDown c,2 \grace { \stemUp e16 (
        } \stemDown d8. ) [ \stemDown c16 ] \stemDown c4 r4 r4 \stemDown
    a'4. ( \stemDown g8 [ \stemDown f8 \stemDown e8 ) ] \stemDown d4 r4
    r4 \stemDown bes'4. ( \stemDown a8 [ \stemDown g8 \stemDown f8 ) ]
    \stemDown e4 r4 r4 \stemDown c'4. ( \stemDown bes8 [ \stemDown a8
    \stemDown g8 ) ] \stemDown f8 ( [ \stemDown bes8 ) ] \stemDown bes4.
    ( \stemDown a8 ) \stemDown a16 ( [ \stemDown g16 \stemDown a16
    \stemDown bes16 ) ] \stemDown f4 \grace { \stemUp a16 ( } \stemDown
    g8. ) [ \stemDown f16 ] \stemDown f4 r4 r4 R2.*7 r4 r4 \stemDown c16
    ( [ \stemDown e16 \stemDown f16 \stemDown a16 ) ] \stemDown c4 ~
    \stemDown c16 ( [ \stemDown b16 \stemDown bes16 \stemDown g16 ) ]
    \stemDown bes16 ( [ \stemDown a16 ) \stemDown a16 ( \stemDown f16 )
    ] \stemDown c'4 ~ \stemDown c16 ( [ \stemDown b16 \stemDown bes16
    \stemDown g16 ) ] \stemDown bes16 ( [ \stemDown a16 ) \stemDown a16
    ( \stemDown f16 ) ] \stemDown d32 ( [ \stemDown fis32 \stemDown g32
    \stemDown bes32 \stemDown cis32 \stemDown d32 \stemDown bes32
    \stemDown g32 ) ] \stemDown f4 \grace { \stemUp a16 ( } \stemDown g8.
    ) [ \stemDown f16 ] \stemDown f4 r4 \once \omit TupletBracket
    \times 4/6  {
        \stemUp f,,16 ( [ \stemUp a16 \stemUp c16 \stemUp f16 \stemUp a16
        \stemUp c16 ) ] }
    \stemDown c4 ~ \stemUp c16 ( [ \stemUp b16 \stemUp bes16 \stemUp g16
    ) ] \stemUp bes16 ( [ \stemUp a16 ) \stemUp a16 ( \stemUp f16 ) ]
    \stemUp c4 ~ \stemUp c16 ( [ \stemUp b16 \stemUp bes16 \stemUp g16 )
    ] \stemUp bes16 ( [ \stemUp a16 ) \stemUp a16 ( \stemUp f16 ) ]
    \stemUp d8 \stemDown d'''8 ( [ \stemDown c8 \stemDown bes8 \stemDown
    a8 \stemDown g8 ) ] \once \omit TupletBracket
    \times 2/3  {
        \stemDown f16 ( [ \stemDown c16 \stemDown d16 ] }
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown es16 [ \stemDown e16 \stemDown f16 ] }
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown fis16 [ \stemDown g16 \stemDown gis16 ] }
    \once \omit TupletBracket
    \times 2/3  {
        \stemDown a16 [ \stemDown bes16 \stemDown b16 ) ] }
    \stemDown c16 ( -. [ \stemDown b16 -. \stemDown bes16 -. \stemDown a16
    ) -. ] \afterGrace { \stemDown g2. } { \stemUp f16 [ \stemUp g16 ] }
    \stemDown f4 r4 \stemDown f16 ( [ \stemDown e16 ) ] \once \omit
    TupletBracket
    \times 2/3  {
        \stemDown g16 ( [ \stemDown f16 \stemDown d16 ) ] }
    \stemDown c2 ( \stemDown b8 [ \stemDown bes8 ) ] \stemUp a4 r4 \once
    \omit TupletBracket
    \times 4/6  {
        \stemUp g,16 ( [ \stemUp bes16 \stemUp a16 \stemUp g16 \stemUp
        bes16 \stemUp d16 ) ] }
    \stemUp c4. \stemUp c8 ( [ \stemUp d8 \stemUp e8 ) ] \stemUp f4
    \stemUp f4 \stemUp f4 \stemUp f2 r4 \bar "|."
    \time 6/8  \key c \major \transposition a \stemDown e'16 ( [
    \stemDown f16 ) ] \stemDown <g g>8 -. [ -. \stemDown g8 -. ]
    \stemDown a16 ( [ \stemDown g16 \stemDown fis16 \stemDown g16
    \stemDown a16 \stemDown g16 ) ] \stemDown f4. ( \stemDown e8 ) r8
    \stemDown c'16 ( [ \stemDown b16 ) ] \stemDown a8 -. [ \stemDown a8
    -. ] \stemDown a16 ( [ \stemDown g16 ) ] \stemDown f8 -. [ \stemDown
    f16 ( \stemDown e16 \stemDown d16 \stemDown c16 ) ] \stemDown b8 (
    -. [ \stemDown c8 -. \stemDown cis8 ) -. ] \stemDown d8 r8 \stemDown
    e16 ( [ \stemDown f16 ) ] \stemDown g8 -. [ \stemDown g8 -.
    \stemDown g8 -. ] \stemDown a16 ( [ \stemDown g16 \stemDown fis16
    \stemDown g16 \stemDown a16 \stemDown g16 ) ] \stemDown b4. (
    \stemDown c8 ) r8 \stemDown c16 ( [ \stemDown b16 ) ] \stemDown a16
    -. [ \stemDown g16 -. \stemDown f16 -. \stemDown e16 -. \stemDown d16
    -. \stemDown c16 -. ] \stemDown b16 -. [ \stemDown c16 -. \stemDown
    d16 -. \stemDown e16 -. \stemDown f16 -. \stemDown b,16 -. ]
    \stemDown c4 ( \stemDown e8 ) \stemDown c4 r8 R2.*7 r4 r8 r4 \stemUp
    g16 ( [ \stemUp a16 ) ] \stemDown b16 [ \stemDown c16 \stemDown d16
    \stemDown e16 \stemDown f16 \stemDown g16 ] \stemDown f16 [
    \stemDown e16 \stemDown d16 \stemDown c16 \stemDown b16 \stemDown d16
    ] \stemDown c16 [ \stemDown d16 \stemDown e16 \stemDown f16
    \stemDown g16 \stemDown a16 ] \stemDown g8 r8 \stemDown d16 ( [
    \stemDown e16 ) ] \stemDown fis16 [ \stemDown g16 \stemDown a16
    \stemDown b16 \stemDown c16 \stemDown d16 ] \stemDown c16 [
    \stemDown b16 \stemDown a16 \stemDown g16 \stemDown fis16 \stemDown
    a16 ] \stemDown g16 [ \stemDown b16 \stemDown d16 \stemDown b16
    \stemDown g16 \stemDown d16 ] \stemDown b16 [ \stemDown d16
    \stemDown c16 \stemDown b16 \stemDown c16 \stemDown a16 ] \stemUp g16
    [ \stemUp b16 \stemUp d16 \stemUp b16 \stemUp g16 \stemUp d16 ]
    \stemUp b16 [ \stemUp d16 \stemUp c16 \stemUp b16 \stemUp c16
    \stemUp a16 ] \stemUp g16 [ \stemUp b16 \stemUp c16 \stemUp d16
    \stemUp e16 \stemUp fis16 ] \stemDown g16 [ \stemDown b16 \stemDown
    c16 \stemDown d16 \stemDown e16 \stemDown fis16 ] \stemDown g4. ~
    \stemDown g4 \stemDown g8 -. \stemDown g8 -. [ r8 \stemDown g8 -. ]
    \stemDown g8 -. [ \stemDown fis16 \stemDown g16 \stemDown a16
    \stemDown g16 ] \stemDown f4. ( \stemDown e8 ) r8 \stemDown c'16 ( [
    \stemDown b16 ) ] \stemDown a8 -. [ \stemDown a8 -. ] \stemDown a16
    ( [ \stemDown g16 ) ] \stemDown f8 -. [ \stemDown f16 ( \stemDown e16
    \stemDown d16 \stemDown c16 ) ] \stemDown b8 ( -. [ \stemDown c8 -.
    \stemDown cis8 ) -. ] \stemDown d8 r8 \stemDown e16 ( [ \stemDown f16
    ) ] \stemDown g8 -. [ \stemDown g8 -. \stemDown g8 -. ] \stemDown a16
    ( [ \stemDown g16 \stemDown fis16 \stemDown g16 \stemDown a16
    \stemDown g16 ) ] \stemDown b4. ( \stemDown c8 ) r8 \stemDown c16 (
    [ \stemDown b16 ) ] \stemDown a16 -. [ \stemDown g16 -. \stemDown f16
    -. \stemDown e16 -. \stemDown d16 -. \stemDown c16 -. ] \stemDown b16
    -. [ \stemDown c16 -. \stemDown d16 -. \stemDown e16 -. \stemDown f16
    -. \stemDown b,16 -. ] \stemDown c4 r8 r4. R2.*3 r4 r8 r4 \stemDown
    g'8 \stemDown c8 ( [ \stemDown b8 \stemDown a8 ] \stemDown g8 [
    \stemDown f8 \stemDown e8 ) ] \stemDown cis8 ( [ \stemDown d8
    \stemDown e8 ] \stemDown f8 [ \stemDown g8 \stemDown a8 ) ]
    \stemDown a16 [ \stemDown g16 \stemDown f16 \stemDown e16 \stemDown
    d16 \stemDown c16 ] \stemDown b16 [ \stemDown c16 \stemDown d16
    \stemDown e16 \stemDown f16 \stemDown g16 ] \stemDown f4. (
    \stemDown e8 ) r8 r8 R2.*3 r16 \stemUp e,16 [ \stemUp f16 \stemUp g16
    \stemUp a16 \stemUp b16 ] \stemDown c16 [ \stemDown d16 \stemDown e16
    \stemDown f16 \stemDown g16 \stemDown a16 ] \stemDown b2. \stemDown
    c4 \stemDown e,8 \stemDown d8 ( [ \stemDown f8 \stemDown a8 ) ]
    \stemDown c,4 r8 r4. r16 \stemDown g16 [ \stemDown a16 \stemDown b16
    \stemDown c16 \stemDown d16 ] \stemDown e16 [ \stemDown f16
    \stemDown g16 \stemDown a16 \stemDown b16 \stemDown c16 ] \stemDown
    d4. ~ \stemDown d4 ( \stemDown dis8 ) \stemDown e8 [ \stemDown c8
    \stemDown g8 ] \stemDown a16 ( [ \stemDown bes16 \stemDown b16
    \stemDown c16 \stemDown a16 \stemDown f16 ) ] \stemDown e16 ( [
    \stemDown f16 \stemDown fis16 \stemDown g16 \stemDown e16 \stemDown
    c16 ) ] \afterGrace { \stemDown d4. } { \stemUp c16 [ \stemUp d16 ]
        } \stemDown c4 r8 r4. R2.*5 \stemDown e4. \grace { \stemUp g16 (
        } \stemDown f8 [ \stemDown e8 \stemDown f8 ) ] \stemDown g4. ~
    \stemDown g4 ( \stemDown gis8 ) \stemDown a8 ( [ \stemDown f8 )
    \stemDown c8 -. ] \stemDown c'8 ( [ \stemDown a8 ) \stemDown f8 -. ]
    \stemDown g4 ( \stemDown e8 ) \stemDown c4 r8 \stemUp f16 [ \stemUp
    d16 \stemUp b16 \stemUp g16 \stemUp f16 \stemUp d16 ] \stemUp b16 [
    \stemUp a16 \stemUp g16 \stemUp f16 \stemUp e16 \stemUp d16 ]
    \stemUp c16 [ \stemUp e16 \stemUp g16 \stemUp c16 \stemUp e16
    \stemUp g16 ] \stemDown c16 [ \stemDown e16 \stemDown g16 \stemDown
    c16 \stemDown g16 \stemDown e16 ] \stemDown cis8 ( -. [ \stemDown d8
    -. \stemDown e8 -. ] \stemDown f8 -. [ \stemDown g8 -. \stemDown a8
    ) -. ] \stemDown e4 ( \stemDown f16 [ \stemDown e16 ) ] \stemDown d8
    r8 r8 \stemUp e,,4. \grace { \stemUp g16 ( } \stemUp f8 [ \stemUp e8
    \stemUp f8 ) ] \stemUp g4. ~ \stemUp g4 ( \stemUp gis8 ) \stemUp a8
    ( [ \stemUp f8 ) \stemUp c8 -. ] \stemUp c'8 ( [ \stemUp a8 )
    \stemUp f8 -. ] \stemUp g4 ( \stemUp e8 ) \stemUp c4 r8 \stemUp d16
    [ \stemUp fis16 \stemUp a16 \stemUp d16 \stemUp fis16 \stemUp a16 ]
    \stemDown d16 [ \stemDown fis16 \stemDown a16 \stemDown c16
    \stemDown a16 \stemDown fis16 ] \stemDown g16 [ \stemDown b16
    \stemDown d16 \stemDown c16 \stemDown b16 \stemDown a16 ] \stemDown
    g16 [ \stemDown fis16 \stemDown e16 \stemDown d16 \stemDown c16
    \stemDown b16 ] \stemDown a8 -. [ \stemDown c8 -. \stemDown e8 -. ]
    \stemDown a8 -. [ \stemDown c8 -. \stemDown fis,8 -. ] \stemDown a4.
    ( \stemDown g8 ) r8 r8 R2.*4 \stemUp g,,4 ( \stemUp bes8 \stemUp es4
    \stemUp g,8 ) \stemUp fis4 ( \stemUp a8 \stemUp d4 \stemUp f,8 )
    \stemUp e4 ( \stemUp g8 \stemUp c4 \stemUp es,8 ) \stemUp d4 (
    \stemUp f8 \stemUp bes4 \stemUp d,8 ) \stemUp c8 r8 \stemDown es''8
    \grace { \stemUp f16 ( } \stemDown es8 ) -. [ \stemDown d8 -.
    \stemDown es8 -. ] \stemDown d4 ( \stemDown e16 [ \stemDown fis16 )
    ] \stemDown g16 [ \stemDown fis16 \stemDown e16 \stemDown d16
    \stemDown c16 \stemDown b16 ] \stemUp a8 r8 r8 \stemDown d8 r8 r8
    \stemUp g,,16 [ \stemUp b16 \stemUp d16 \stemUp g16 \stemUp b16
    \stemUp d16 ] \stemDown g,16 [ \stemDown b16 \stemDown d16 \stemDown
    g16 \stemDown b16 \stemDown d16 ] \stemDown cis16 [ \stemDown c16
    \stemDown b16 \stemDown a16 \stemDown g16 \stemDown fis16 ]
    \stemDown e16 [ \stemDown d16 \stemDown c16 \stemDown b16 \stemDown
    c16 \stemDown a16 ] \stemUp g,16 [ \stemUp b16 \stemUp d16 \stemUp g16
    \stemUp b16 \stemUp d16 ] \stemDown g,16 [ \stemDown b16 \stemDown d16
    \stemDown g16 \stemDown b16 \stemDown d16 ] \stemDown cis16 [
    \stemDown c16 \stemDown b16 \stemDown a16 \stemDown g16 \stemDown
    fis16 ] \stemDown e16 [ \stemDown d16 \stemDown c16 \stemDown b16
    \stemDown c16 \stemDown a16 ] \stemDown g16 [ \stemDown b16
    \stemDown d16 \stemDown fis16 \stemDown g16 \stemDown b16 ]
    \stemDown d8 r8 r8 \stemDown a,16 [ \stemDown c16 \stemDown e16
    \stemDown gis16 \stemDown a16 \stemDown c16 ] \stemDown e8 r8 r8
    \stemDown d,4. \afterGrace { \stemDown a'4. } { \stemUp g16 [
        \stemUp a16 ] } r16 \stemDown d,,16 [ \stemDown g16 \stemDown b16
    \stemDown d16 \stemDown g16 ] \stemDown b8 -. [ \stemDown d8 -. ] r8
    r16 \stemDown a,16 [ \stemDown c16 \stemDown e16 \stemDown a16
    \stemDown c16 ] \stemDown e8 -. [ \stemDown g8 -. ] r8 r8 \stemDown
    fis,8 ( [ \stemDown g8 ] \stemDown bes8 [ \stemDown fis8 \stemDown g8
    ) ] \stemDown bes4. \stemDown cis,4. \stemDown d16 ( [ \stemDown e16
    \stemDown fis16 \stemDown g16 \stemDown a16 \stemDown bes16 ]
    \stemDown b16 [ \stemDown c16 \stemDown cis16 \stemDown d16
    \stemDown cis16 \stemDown d16 ) ] \afterGrace { \stemDown a2. } {
        \stemUp g16 [ \stemUp a16 ] } \stemDown g4 r8 r4. R2. r8 \stemUp
    g,8 ( [ \stemUp f8 ] \stemUp es8 [ \stemUp d8 \stemUp c8 ) ] \stemUp
    b4 \stemUp b8 \grace { \stemUp d16 ( } \stemUp c8 ) -. [ \stemUp b8
    -. \stemUp c8 -. ] \stemUp d4 r8 r4. R2. r8 \stemUp g,8 ( [ \stemUp
    f8 ] \stemUp es8 [ \stemUp d8 \stemUp c8 ) ] \stemUp c'4. \stemUp
    fis,4. \stemUp g8 r8 r8 \stemDown fis''16 ( [ \stemDown g16
    \stemDown as16 \stemDown a16 \stemDown bes16 \stemDown b16 ) ]
    \stemDown c8 r8 r8 r4. r4 r8 \stemUp fis,,16 ( [ \stemUp g16 \stemUp
    as16 \stemUp a16 \stemUp bes16 \stemUp b16 ) ] \stemDown c8 r8 r8 r4.
    r4 r8 \stemUp fis,,16 ( [ \stemUp g16 \stemUp as16 \stemUp a16
    \stemUp bes16 \stemUp b16 ) ] \stemUp c4. \stemDown c'4. \stemDown
    es'4. \stemDown fis,4. \stemDown g2. ~ \stemDown g2. \stemDown g8 -.
    [ r8 \stemDown g8 -. ] \stemDown g8 -. [ \stemDown fis16 ( \stemDown
    g16 \stemDown a16 \stemDown g16 ) ] \stemDown f4. ( \stemDown e8 ) r8
    \stemDown c'16 ( [ \stemDown b16 ) ] \stemDown a8 -. [ \stemDown a8
    -. ] \stemDown a16 ( [ \stemDown g16 ) ] \stemDown f8 -. [ \stemDown
    f16 ( \stemDown e16 \stemDown d16 \stemDown c16 ) ] \stemDown b8 (
    -. [ \stemDown c8 -. \stemDown cis8 ) -. ] \stemDown d8 r8 \stemDown
    e16 ( [ \stemDown f16 ) ] \stemDown g8 -. [ \stemDown g8 -.
    \stemDown g8 -. ] \stemDown a16 ( [ \stemDown g16 \stemDown fis16
    \stemDown g16 \stemDown a16 \stemDown g16 ) ] \stemDown b4. (
    \stemDown c8 ) r8 \stemDown c16 ( [ \stemDown b16 ) ] \stemDown a16
    -. [ \stemDown g16 -. \stemDown f16 -. \stemDown e16 -. \stemDown d16
    -. \stemDown c16 -. ] \stemDown b16 -. [ \stemDown c16 -. \stemDown
    d16 -. \stemDown e16 -. \stemDown f16 -. \stemDown b,16 -. ]
    \stemDown c4 r8 r4. R2.*15 r4 r8 r4 \stemDown e8 \stemDown a4. (
    \stemDown e4 \stemDown c8 ) \stemDown f4 ( \stemDown d8 \stemDown b4
    ) \stemDown b8 \stemDown b'4 ( \stemDown gis8 \stemDown e4 \stemDown
    d8 ) \stemDown c4 ( \stemDown f8 \stemDown e4 \stemDown c'8 )
    \stemDown b4 ( \stemDown gis8 \stemDown a4 \stemDown c8 ) \stemDown
    b4 ( \stemDown gis8 \stemDown a4 ) \stemDown a8 \stemDown a8 ( [
    \stemDown g8 \stemDown f8 ) ] \grace { \stemUp g16 ( } \stemDown f8
    ) [ \stemDown e8 \stemDown dis8 ] \stemDown e4 r8 r4 \stemUp e,,8
    \stemUp a4. ( \stemUp e4 \stemUp c8 ) \stemUp f4 ( \stemUp d8
    \stemUp b4 ) \stemUp b8 \stemUp b'4 ( \stemUp gis8 \stemUp e4
    \stemUp d8 ) \stemUp c4 ( \stemUp f8 \stemUp e4 ) \stemUp e8 \stemUp
    f4 ( \stemUp fis8 \stemUp g4 \stemUp gis8 ) \stemUp a4. ( \stemUp
    cis,4. \stemUp d4. \stemUp dis4. ) \stemUp e4 r8 r4 \stemUp e8
    \stemUp dis4 ( \stemUp fis8 \stemUp a4 \stemUp dis,8 ) \stemUp e4 r8
    r4 \stemUp e8 \stemUp f4 ( \stemUp a8 \stemUp c4 \stemUp f,8 )
    \stemUp e4 r8 r4. R2. \stemUp c'4. \stemDown bes''4. ~ \stemDown bes16
    [ \stemDown c16 \stemDown bes16 \stemDown a16 \stemDown g16
    \stemDown f16 ] \stemDown e16 [ \stemDown d16 \stemDown c16
    \stemDown bes16 \stemDown a16 \stemDown g16 ] \stemUp f4. \stemUp f,4.
    \stemDown a''4. \stemUp f,,4. \stemDown c'''4. ~ \stemDown c8 ( [
    \stemDown a8 \stemDown f8 ) ] \stemDown e8 ( [ \stemDown f8
    \stemDown fis8 ) ] \stemDown g8 r8 r8 \stemDown c,4. \stemUp c,,4.
    \stemDown g'''4. \stemUp c,,,4. \stemDown bes'''4. \stemDown c16 ( [
    \stemDown bes16 \stemDown a16 \stemDown g16 \stemDown f16 \stemDown
    e16 ) ] \stemDown f8 ( [ \stemDown g8 \stemDown gis8 ) ] \stemDown a8
    r8 r8 r8 \stemUp bes,,8 [ \stemUp a8 ] \stemUp g8 [ \stemUp bes8
    \stemUp f8 ] \stemUp e8 r8 r8 \stemDown g''16 ( [ \stemDown a16
    \stemDown bes16 \stemDown c16 ) \stemDown d8 ] r8 \stemUp a,,8 [
    \stemUp g8 ] \stemUp f8 [ \stemUp a8 \stemUp e8 ] \stemUp d8 r8 r8
    \stemDown f''16 ( [ \stemDown g16 \stemDown a16 \stemDown bes16 )
    \stemDown c8 ] r8 \stemUp g,,8 [ \stemUp f8 ] \stemUp e8 [ \stemUp g8
    \stemUp d8 ] \stemUp c8 r8 r8 \stemDown e''16 [ \stemDown f16
    \stemDown g16 \stemDown a16 \stemDown bes16 \stemDown g16 ]
    \stemDown a16 [ \stemDown f16 \stemDown e16 \stemDown f16 \stemDown
    g16 \stemDown a16 ] \stemDown bes16 [ \stemDown g16 \stemDown f16
    \stemDown g16 \stemDown a16 \stemDown bes16 ] \stemDown c16 [
    \stemDown a16 \stemDown f16 \stemDown c16 \stemDown a16 \stemDown f16
    ] \stemDown g16 [ \stemDown bes16 \stemDown d16 \stemDown g16
    \stemDown bes16 \stemDown d16 ] \stemDown c,16 [ \stemDown f16
    \stemDown a16 \stemDown c16 \stemDown a16 \stemDown f16 ]
    \afterGrace { \stemDown g4. } { \stemUp f16 [ \stemUp g16 ] }
    \stemDown f4 r8 r4. r4 r8 r4 \stemDown c8 \stemDown a'8 -. [ r8
    \stemDown a8 -. ] \stemDown bes16 ( [ \stemDown a16 \stemDown gis16
    \stemDown a16 \stemDown bes16 \stemDown a16 ) ] \stemDown g2. (
    \stemDown f4 ) r8 r4. r8 \stemUp g,,8 [ \stemUp as8 ] \stemUp a8 [
    \stemUp bes8 \stemUp b8 ] \stemUp c4 ( \stemUp bes8 \stemUp as4
    \stemUp g8 ) \stemUp f4. \stemUp fis4. \stemUp g4 r8 r4. r8
    \stemDown g''8 -. [ \stemDown g8 -. ] \stemDown g8 ( [ \stemDown fis8
    \stemDown f8 ) ] \stemDown e4. \grace { \stemUp g16 ( } \stemDown f8
    ) [ \stemDown e8 \stemDown f8 ] \stemDown g4. ~ \stemDown g4 (
    \stemDown gis8 ) \stemDown a8 ( [ \stemDown f8 ) \stemDown c8 -. ]
    \stemDown c'8 ( [ \stemDown a8 ) \stemDown f8 -. ] \stemDown g4 (
    \stemDown e8 ) \stemDown c4 r8 \stemUp f16 [ \stemUp d16 \stemUp b16
    \stemUp g16 \stemUp f16 \stemUp d16 ] \stemUp b16 [ \stemUp a16
    \stemUp g16 \stemUp f16 \stemUp e16 \stemUp d16 ] \stemUp c16 [
    \stemUp e16 \stemUp g16 \stemUp c16 \stemUp e16 \stemUp g16 ]
    \stemDown c16 [ \stemDown e16 \stemDown g16 \stemDown c16 \stemDown
    g16 \stemDown e16 ] \stemDown cis8 ( -. [ \stemDown d8 -. \stemDown
    e8 -. ] \stemDown f8 -. [ \stemDown g8 -. \stemDown a8 ) -. ]
    \stemDown e4 ( \stemDown f16 [ \stemDown e16 ) ] \stemDown d8 r8 r8
    R2. \stemUp c,4. \grace { \stemUp es16 ( } \stemUp d8 ) [ \stemUp c8
    \stemUp d8 ] \stemUp es4. ( \stemUp f4 \stemUp fis8 ) \stemUp g4 r8
    r4. \stemDown g'4. \grace { \stemUp bes16 ( } \stemDown as8 ) [
    \stemDown g8 \stemDown as8 ] \stemDown bes2. ~ \stemDown bes8. [
    \stemDown c16 \stemDown bes8 ] \stemDown as4 ( \stemDown g8 )
    \stemDown f4 r8 r4. R2. \stemUp f,,4. \grace { \stemUp as16 ( }
    \stemUp g8 ) [ \stemUp f8 \stemUp g8 ] \stemUp as4. ( \stemUp bes4
    \stemUp b8 ) \stemUp c8 r8 \stemDown c'8 \stemDown c'4 \stemDown bes8
    \stemDown as16 [ \stemDown bes16 \stemDown c16 \stemDown bes16
    \stemDown as16 \stemDown g16 ] \stemDown f16 [ \stemDown g16
    \stemDown as16 \stemDown g16 \stemDown f16 \stemDown es16 ]
    \stemDown d16 [ \stemDown es16 \stemDown f16 \stemDown g16 \stemDown
    as16 \stemDown a16 ] \stemDown bes8 ( [ \stemDown a8 \stemDown as8 )
    ] \stemDown g16 [ \stemDown as16 \stemDown bes16 \stemDown as16
    \stemDown g16 \stemDown f16 ] \stemDown es16 [ \stemDown f16
    \stemDown g16 \stemDown f16 \stemDown es16 \stemDown d16 ] \stemDown
    c16 [ \stemDown d16 \stemDown es16 \stemDown e16 \stemDown f16
    \stemDown fis16 ] \stemDown g8 ( [ \stemDown as8 \stemDown g8 ) ]
    \stemDown f16 [ \stemDown g16 \stemDown as16 \stemDown g16 \stemDown
    f16 \stemDown es16 ] \stemDown d16 [ \stemDown es16 \stemDown f16
    \stemDown es16 \stemDown d16 \stemDown c16 ] \stemDown b16 [
    \stemDown c16 \stemDown d16 \stemDown es16 \stemDown e16 \stemDown f16
    ] \stemDown g8 ( [ \stemDown fis8 \stemDown f8 ) ] \stemDown es4
    \stemDown es8 \grace { \stemUp f16 ( } \stemDown es8 ) [ \stemDown d8
    \stemDown es8 ] \stemDown d4 ( \stemDown g8 ) \stemDown g8. [
    \stemDown f16 ( \stemDown es16 \stemDown d16 ) ] \stemDown c4
    \stemDown c8 \grace { \stemUp d16 ( } \stemDown c8 ) [ \stemDown b8
    \stemDown c8 ] \stemDown b4 ( \stemDown d8 ) \stemUp g,4 r8 R2.*2
    \stemDown c4 \stemDown c8 \grace { \stemUp des16 ( } \stemDown c8 )
    [ \stemDown bes8 \stemDown c8 ] \stemDown bes4 ( \stemDown es8 )
    \stemDown es8 r8 r8 ^\fermata \stemUp f,,4 ( \stemUp as8 \stemUp des4
    \stemUp f,8 ) \stemUp e4 ( \stemUp g8 \stemUp c4 \stemUp es8 )
    \stemUp d8 r8 r8 \stemDown c''4. ~ \stemDown c16 [ \stemDown b16
    \stemDown a16 \stemDown g16 \stemDown fis16 \stemDown e16 ]
    \stemDown d16 [ \stemDown e16 \stemDown d16 \stemDown c16 \stemDown
    b16 \stemDown a16 ] \stemDown g16 [ \stemDown a16 \stemDown b16
    \stemDown c16 \stemDown d16 \stemDown e16 ] \stemDown fis16 [
    \stemDown g16 \stemDown a16 \stemDown b16 \stemDown c16 \stemDown d16
    ] \stemDown cis16 [ \stemDown c16 \stemDown b16 \stemDown a16
    \stemDown g16 \stemDown fis16 ] \stemDown e16 [ \stemDown d16
    \stemDown c16 \stemDown b16 \stemDown c16 \stemDown a16 ] \stemDown
    g16 [ \stemDown a16 \stemDown b16 \stemDown c16 \stemDown d16
    \stemDown e16 ] \stemDown fis16 [ \stemDown g16 \stemDown a16
    \stemDown b16 \stemDown c16 \stemDown d16 ] \stemDown cis16 [
    \stemDown c16 \stemDown b16 \stemDown a16 \stemDown g16 \stemDown
    fis16 ] \stemDown e16 [ \stemDown d16 \stemDown c16 \stemDown b16
    \stemDown c16 \stemDown a16 ] \stemUp g4 r8 r4. R2. r8 \stemUp g8 (
    [ \stemUp f8 ] \stemUp es8 [ \stemUp d8 \stemUp c8 ) ] \stemUp b4
    \stemUp b8 \grace { \stemUp d16 ( } \stemUp c8 ) -. [ \stemUp b8 -.
    \stemUp c8 -. ] \stemUp d4 r8 r4. R2. r8 \stemUp g,8 ( [ \stemUp f8
    ] \stemUp es8 [ \stemUp d8 \stemUp c8 ) ] \stemUp c'4. \stemUp fis,4.
    \stemUp g8 r8 r8 \stemDown fis''16 ( [ \stemDown g16 \stemDown as16
    \stemDown a16 \stemDown bes16 \stemDown b16 ) ] \stemDown c8 r8 r8 r4.
    r4 r8 \stemUp fis,,16 ( [ \stemUp g16 \stemUp as16 \stemUp a16
    \stemUp bes16 \stemUp b16 ) ] \stemDown c8 r8 r8 r4. r4 r8 \stemUp
    fis,,16 ( [ \stemUp g16 \stemUp as16 \stemUp a16 \stemUp bes16
    \stemUp b16 ) ] \stemUp c4. \stemDown c'4. \stemDown es'4. \stemDown
    fis,4. \stemDown g2. ~ \stemDown g2. \stemDown g8 -. [ r8 \stemDown
    g8 -. ] \stemDown g8 -. [ \stemDown fis16 ( \stemDown g16 \stemDown
    a16 \stemDown g16 ) ] \stemDown f4. ( \stemDown e8 ) r8 \stemDown c'16
    ( [ \stemDown b16 ) ] \stemDown a8 -. [ \stemDown a8 -. ] \stemDown
    a16 ( [ \stemDown g16 ) ] \stemDown f8 -. [ \stemDown f16 (
    \stemDown e16 \stemDown d16 \stemDown c16 ) ] \stemDown b8 ( -. [
    \stemDown c8 -. \stemDown cis8 ) -. ] \stemDown d8 r8 \stemDown e16
    ( [ \stemDown f16 ) ] \stemDown g8 -. [ \stemDown g8 -. \stemDown g8
    -. ] \stemDown a16 ( [ \stemDown g16 \stemDown fis16 \stemDown g16
    \stemDown a16 \stemDown g16 ) ] \stemDown b4. ( \stemDown c8 ) r8
    \stemDown c16 ( [ \stemDown b16 ) ] \stemDown a16 -. [ \stemDown g16
    -. \stemDown f16 -. \stemDown e16 -. \stemDown d16 -. \stemDown c16
    -. ] \stemDown b16 -. [ \stemDown c16 -. \stemDown d16 -. \stemDown
    e16 -. \stemDown f16 -. \stemDown b,16 -. ] \stemDown c4 ( \stemDown
    e8 ) \stemDown c4 r8 R2.*7 r4 r8 r4 \stemUp g16 ( [ \stemUp a16 ) ]
    \stemDown b16 [ \stemDown c16 \stemDown d16 \stemDown e16 \stemDown
    f16 \stemDown g16 ] \stemDown f16 [ \stemDown e16 \stemDown d16
    \stemDown c16 \stemDown b16 \stemDown d16 ] \stemDown c16 [
    \stemDown d16 \stemDown e16 \stemDown f16 \stemDown g16 \stemDown a16
    ] \stemDown g8 r8 \stemDown d16 ( [ \stemDown e16 ) ] \stemDown fis16
    [ \stemDown g16 \stemDown a16 \stemDown b16 \stemDown c16 \stemDown
    d16 ] \stemDown c16 [ \stemDown b16 \stemDown a16 \stemDown g16
    \stemDown fis16 \stemDown a16 ] \stemDown g16 [ \stemDown b16
    \stemDown d16 \stemDown b16 \stemDown g16 \stemDown d16 ] \stemDown
    b16 [ \stemDown d16 \stemDown c16 \stemDown b16 \stemDown c16
    \stemDown a16 ] \stemUp g16 [ \stemUp b16 \stemUp d16 \stemUp b16
    \stemUp g16 \stemUp d16 ] \stemUp b16 [ \stemUp d16 \stemUp c16
    \stemUp b16 \stemUp c16 \stemUp a16 ] \stemUp g16 [ \stemUp b16
    \stemUp c16 \stemUp d16 \stemUp e16 \stemUp fis16 ] \stemDown g16 [
    \stemDown b16 \stemDown c16 \stemDown d16 \stemDown e16 \stemDown
    fis16 ] \stemDown g4. ~ \stemDown g4 \stemDown g8 -. \stemDown g8 -.
    [ r8 \stemDown g8 -. ] \stemDown g8 -. [ \stemDown fis16 \stemDown g16
    \stemDown a16 \stemDown g16 ] \stemDown f4. ( \stemDown e8 ) r8
    \stemDown c'16 ( [ \stemDown b16 ) ] \stemDown a8 -. [ \stemDown a8
    -. ] \stemDown a16 ( [ \stemDown g16 ) ] \stemDown f8 -. [ \stemDown
    f16 ( \stemDown e16 \stemDown d16 \stemDown c16 ) ] \stemDown b8 (
    -. [ \stemDown c8 -. \stemDown cis8 ) -. ] \stemDown d8 r8 \stemDown
    e16 ( [ \stemDown f16 ) ] \stemDown g8 -. [ \stemDown g8 -.
    \stemDown g8 -. ] \stemDown a16 ( [ \stemDown g16 \stemDown fis16
    \stemDown g16 \stemDown a16 \stemDown g16 ) ] \stemDown b4. (
    \stemDown c8 ) r8 \stemDown c16 ( [ \stemDown b16 ) ] \stemDown a16
    -. [ \stemDown g16 -. \stemDown f16 -. \stemDown e16 -. \stemDown d16
    -. \stemDown c16 -. ] \stemDown b16 -. [ \stemDown c16 -. \stemDown
    d16 -. \stemDown e16 -. \stemDown f16 -. \stemDown b,16 -. ]
    \stemDown c4 r8 r4. R2.*3 r4 r8 r4 \stemDown g'8 \stemDown c8 ( [
    \stemDown b8 \stemDown a8 ] \stemDown g8 [ \stemDown f8 \stemDown e8
    ) ] \stemDown cis8 ( [ \stemDown d8 \stemDown e8 ] \stemDown f8 [
    \stemDown g8 \stemDown a8 ) ] \stemDown a16 ( [ \stemDown g16
    \stemDown f16 \stemDown e16 \stemDown d16 \stemDown c16 ) ]
    \stemDown b16 ( [ \stemDown c16 \stemDown d16 \stemDown e16
    \stemDown f16 \stemDown g16 ) ] \stemDown f4. ( \stemDown e8 ) r8 r8
    R2.*3 r16 \stemUp e,16 [ \stemUp f16 \stemUp g16 \stemUp a16 \stemUp
    b16 ] \stemDown c16 [ \stemDown d16 \stemDown e16 \stemDown f16
    \stemDown g16 \stemDown a16 ] \stemDown b2. \stemDown c4 \stemDown
    e,8 \stemDown d8 ( [ \stemDown f8 \stemDown a8 ) ] \stemDown c,4 r8
    r4. r16 \stemDown g16 [ \stemDown a16 \stemDown b16 \stemDown c16
    \stemDown d16 ] \stemDown e16 [ \stemDown f16 \stemDown g16
    \stemDown a16 \stemDown b16 \stemDown c16 ] \stemDown d4. ~
    \stemDown d4 ( \stemDown dis8 ) \stemDown e8 [ \stemDown c8
    \stemDown g8 ] \stemDown a16 ( [ \stemDown bes16 \stemDown b16
    \stemDown c16 \stemDown a16 \stemDown f16 ) ] \stemDown e16 ( [
    \stemDown f16 \stemDown fis16 \stemDown g16 \stemDown e16 \stemDown
    c16 ) ] \afterGrace { \stemDown d4. } { \stemUp c16 ( [ \stemUp d16
        ) ] } \stemDown c4 r8 r4. R2.*3 \stemUp c,,16 [ \stemUp e16
    \stemUp g16 \stemUp c16 \stemUp e8 ] \stemUp d,16 [ \stemUp f16
    \stemUp b16 \stemUp d16 \stemUp f8 ] \stemUp e,16 [ \stemUp g16
    \stemUp c16 \stemUp e16 \stemUp g8 ] \stemUp f16 [ \stemUp a16
    \stemUp f16 \stemUp d16 \stemUp b16 \stemUp g16 ] \stemUp c16 [
    \stemUp e16 \stemUp g16 \stemUp c16 \stemUp e8 ] \stemUp d,16 [
    \stemUp f16 \stemUp b16 \stemUp d16 \stemUp f8 ] \stemDown e,16 [
    \stemDown g16 \stemDown c16 \stemDown e16 \stemDown g8 ] \stemDown f16
    [ \stemDown a16 \stemDown f16 \stemDown d16 \stemDown b16 \stemDown
    d16 ] \stemDown g,16 [ \stemDown c16 \stemDown e16 \stemDown g16
    \stemDown c8 ] \stemDown b,16 [ \stemDown d16 \stemDown f16
    \stemDown b16 \stemDown d8 ] \stemDown c,16 [ \stemDown e16
    \stemDown g16 \stemDown c16 \stemDown e8 ] \stemDown d16 [ \stemDown
    c16 \stemDown b16 \stemDown a16 \stemDown g16 \stemDown f16 ]
    \stemDown e8 r8 r8 \stemDown e16 [ \stemDown g16 \stemDown fis16
    \stemDown g16 \stemDown a16 \stemDown g16 ] \stemDown f16 [
    \stemDown g16 \stemDown f16 \stemDown e16 \stemDown d16 \stemDown c16
    ] \stemUp b16 [ \stemUp c16 \stemUp b16 \stemUp a16 \stemUp g16
    \stemUp f16 ] \stemUp e8 r8 r8 \stemUp e16 [ \stemUp g16 \stemUp fis16
    \stemUp g16 \stemUp a16 \stemUp g16 ] \stemUp f16 [ \stemUp g16
    \stemUp f16 \stemUp e16 \stemUp d16 \stemUp c16 ] \stemUp b16 [
    \stemUp c16 \stemUp b16 \stemUp a16 \stemUp g16 \stemUp f16 ]
    \stemUp e8 r8 r8 \stemUp a16 [ \stemUp c16 \stemUp g16 \stemUp c16
    \stemUp f,16 \stemUp c'16 ] \stemUp e,16 [ \stemUp c'16 \stemUp c,16
    \stemUp c'16 \stemUp g16 \stemUp c16 ] \stemUp a16 [ \stemUp c16
    \stemUp g16 \stemUp c16 \stemUp f,16 \stemUp c'16 ] \stemUp e,16 [
    \stemUp c'16 \stemUp c,16 \stemUp c'16 \stemUp g16 \stemUp c16 ]
    \stemUp a16 [ \stemUp c16 \stemUp g16 \stemUp c16 \stemUp f,16
    \stemUp c'16 ] \stemUp e,4. \stemDown g''4. \stemDown bes4.
    \afterGrace { \stemUp e,,,4. \trill } { \stemUp d16 ( [ \stemUp e16
        ) ] } \stemUp f4. \stemDown a''4. \stemDown c4. \afterGrace {
        \stemUp fis,,,4. \trill } { \stemUp e16 ( [ \stemUp fis16 ) ] }
    \stemUp g4. r16 \stemDown g'16 [ \stemDown a16 \stemDown b16
    \stemDown c16 \stemDown d16 ] \stemDown e16 [ \stemDown b16
    \stemDown c16 \stemDown d16 \stemDown e16 \stemDown f16 ] \stemDown
    g16 [ \stemDown e16 \stemDown f16 \stemDown g16 \stemDown a16
    \stemDown b16 ] \stemDown c16 [ \stemDown b16 \stemDown a16
    \stemDown g16 \stemDown fis16 \stemDown g16 ] \stemDown f16 [
    \stemDown e16 \stemDown d16 \stemDown c16 \stemDown b16 \stemDown c16
    ] \afterGrace { \stemDown d2. } { \stemUp c16 [ \stemUp d16 ] }
    \stemDown c4 r8 r4. r4 r8 r4 \stemUp g8 \stemDown e'8 -. [ r8
    \stemDown e8 -. ] \stemDown f16 ( [ \stemDown e16 \stemDown dis16
    \stemDown e16 \stemDown f16 \stemDown e16 ) ] \stemDown d2. (
    \stemDown c4 ) r8 r4. r8 \stemUp c,8 ( [ \stemUp cis8 ] \stemUp d8 [
    \stemUp es8 \stemUp e8 ) ] \stemUp f4. \stemDown a'4. ~ \stemDown a16
    [ \stemDown b16 \stemDown c16 \stemDown b16 \stemDown a16 \stemDown
    g16 ] \stemDown f16 [ \stemDown g16 \stemDown f16 \stemDown e16
    \stemDown d16 \stemDown c16 ] \stemDown b8 -. [ r8 \stemDown d8 -. ]
    \stemDown e16 ( [ \stemDown d16 \stemDown c16 \stemDown d16
    \stemDown e16 \stemDown d16 ) ] \stemDown e8 -. [ r8 \stemDown e8 -.
    ] \stemDown f16 ( [ \stemDown e16 \stemDown d16 \stemDown e16
    \stemDown f16 \stemDown e16 ) ] \stemDown f8 -. [ \stemDown cis8 (
    \stemDown d8 ) ] \stemDown f8 -. [ \stemDown cis8 ( \stemDown d8 ) ]
    \stemDown f8 -. [ \stemDown d8 ( \stemDown es8 ] \stemDown e8 [
    \stemDown f8 \stemDown fis8 ) ] \stemDown g8 -. [ r8 \stemDown g8 -.
    ] \stemDown g8 -. [ \stemDown fis16 \stemDown g16 \stemDown a16
    \stemDown g16 ] \stemDown f4. ( \stemDown e8 ) r8 \stemDown c'16 ( [
    \stemDown b16 ) ] \stemDown a8 -. [ \stemDown a8 -. ] \stemDown a16
    ( [ \stemDown g16 ) ] \stemDown f8 -. [ \stemDown f16 ( \stemDown e16
    \stemDown d16 \stemDown c16 ) ] \stemDown b8 ( -. [ \stemDown c8 -.
    \stemDown cis8 ) -. ] \stemDown d8 r8 \stemDown e16 ( [ \stemDown f16
    ) ] \stemDown g8 -. [ \stemDown g8 -. \stemDown g8 -. ] \stemDown a16
    ( [ \stemDown g16 \stemDown fis16 \stemDown g16 \stemDown a16
    \stemDown g16 ) ] \stemDown b4. ( \stemDown c8 ) r8 \stemDown c16 (
    [ \stemDown b16 ) ] \stemDown a16 -. [ \stemDown g16 -. \stemDown f16
    -. \stemDown e16 -. \stemDown d16 -. \stemDown c16 -. ] \stemDown b16
    -. [ \stemDown c16 -. \stemDown d16 -. \stemDown e16 -. \stemDown f16
    -. \stemDown b,16 -. ] \stemDown c4 ( \stemDown e8 ) \stemDown g8 -.
    r8 \stemDown c16 ( [ \stemDown b16 ) ] \stemDown a16 -. [ \stemDown
    g16 -. \stemDown f16 -. \stemDown e16 -. \stemDown d16 -. \stemDown
    c16 -. ] \stemDown b16 -. [ \stemDown c16 -. \stemDown d16 -.
    \stemDown e16 -. \stemDown f16 -. \stemDown b,16 -. ] \stemDown c4 (
    \stemDown e8 ) \stemDown g8 -. r8 \stemDown c16 ( [ \stemDown b16 )
    ] \stemDown a4. \stemUp f,,4. | % 345
    \stemUp g4. \afterGrace { \stemDown b''4. } { \stemUp a16 [ \stemUp
        b16 ] } | % 346
    \stemDown c4 r8 r4. | % 347
    R2.*7 \bar "|."
    }

PartPEightVoiceOne =  \relative e'' {
    \clef "treble" \time 4/4 \key a \major | % 1
    \stemDown e2 _\p \stemDown cis4. ( \stemDown d8 ) | % 2
    \stemDown fis8 ( [ \stemDown e8 ) \stemDown d8 -. \stemDown cis8 -.
    ] \stemDown cis4 r4 | % 3
    \stemDown d4 ( \stemDown b8 ) r8 \stemDown d4 ( \stemDown b8 ) r8 | % 4
    \stemUp a2 ( \stemUp gis8 ) r8 r4 | % 5
    \stemUp a2 ~ \stemUp a8 ( [ \stemUp gis8 \stemUp a8 \stemUp fis8 ) ]
    | % 6
    \stemUp e8 ( [ \stemUp d'8 ) ] \stemDown d4 ~ \stemDown d8 ( [
    \stemDown cis8 \stemDown d8 \stemDown b8 ) ] | % 7
    \stemDown e8 ( [ \stemDown a8 \stemDown gis8 \stemDown d8 ) ]
    \stemDown cis8 ( [ \stemDown e8 \stemDown b8 \stemDown fis'8 ) ] | % 8
    \stemUp a,4. ( \stemUp b16 [ \stemUp a16 ) ] \stemUp gis8 -.
    \stemDown b8 ( [ _\f \stemDown cis8 \stemDown d8 ) ] | % 9
    \stemDown e2 \stemDown cis4. ( \stemDown d8 ) | \barNumberCheck #10
    \stemDown fis8 ( [ \stemDown e8 ) \stemDown d8 -. \stemDown cis8 -.
    ] \stemDown cis4 r4 | % 11
    \stemDown d4 ( _\p \stemDown b8 ) r8 \stemDown d4 ( \stemDown b8 ) r8
    | % 12
    \stemUp a2 ( \stemUp gis8 ) r8 r4 | % 13
    \stemDown a'4 ~ _\f \stemDown a16 ( [ \stemDown cis16 \stemDown b16
    \stemDown a16 ) ] \stemDown gis16 ( [ \stemDown b16 \stemDown a16
    \stemDown gis16 ) ] \stemDown fis16 ( [ \stemDown a16 \stemDown gis16
    \stemDown fis16 ) ] | % 14
    \stemDown e4 \stemDown d16 ( [ \stemDown fis16 \stemDown e16
    \stemDown d16 ) ] \stemDown cis16 ( [ \stemDown e16 \stemDown d16
    \stemDown cis16 ) ] \stemDown b16 ( [ \stemDown d16 \stemDown cis16
    \stemDown b16 ) ] | % 15
    \stemUp a4 \stemDown a'8. [ \stemDown b16 ] \stemDown b4. (
    \stemDown a16 [ \stemDown b16 ) ] | % 16
    \stemDown a4 r8 \stemDown cis16 ( [ \stemDown a16 ) ] \stemDown e8
    -. [ \stemDown e8 -. \stemDown e8 -. \stemDown e8 -. ] | % 17
    \stemDown e8 ( [ \stemDown d'8 ) ] \stemDown d4. \stemDown cis16 ( [
    \stemDown b16 ] \stemDown cis16 [ \stemDown b16 \stemDown a16
    \stemDown gis16 ) ] | % 18
    \stemDown b8 ( [ \stemDown a8 ) ] r8 \stemDown cis16 ( [ \stemDown a16
    ) ] \stemDown e8 -. [ \stemDown e8 -. \stemDown e8 -. \stemDown e8
    -. ] | % 19
    \stemDown e8 ( [ \stemDown d'8 ) ] \stemDown d4. \stemDown cis16 ( [
    \stemDown b16 ] \stemDown cis16 [ \stemDown b16 \stemDown a16
    \stemDown gis16 ) ] | \barNumberCheck #20
    \stemDown a16 ( [ \stemDown gis16 ) \stemDown b16 \stemDown a16 ]
    \stemDown cis16 [ \stemDown b16 \stemDown a16 \stemDown gis16 ]
    \stemDown fis16 ( [ \stemDown eis16 ) \stemDown gis16 \stemDown fis16
    ] \stemDown a8 r8 | % 21
    \stemDown fis16 ( [ \stemDown eis16 ) \stemDown gis16 \stemDown fis16
    ] \stemDown a16 [ \stemDown g16 \stemDown fis16 \stemDown e16 ]
    \stemDown d16 ( [ \stemDown cis16 ) \stemDown e16 \stemDown d16 ]
    \stemDown fis8 r8 | % 22
    \stemDown d16 ( [ \stemDown cis16 ) \stemDown e16 \stemDown d16 ]
    \stemDown fis16 [ \stemDown e16 \stemDown d16 \stemDown cis16 ]
    \stemDown b16 ( [ \stemDown ais16 ) \stemDown cis16 \stemDown b16 ]
    \stemDown d16 [ \stemDown cis16 \stemDown b16 \stemDown a16 ] | % 23
    \stemUp gis16 [ \stemUp e16 \stemUp fis16 \stemUp gis16 ] \stemDown
    a16 [ \stemDown b16 \stemDown cis16 \stemDown dis16 ] \stemDown e16
    [ \stemDown fis16 \stemDown gis16 \stemDown a16 ] \stemDown b16 [
    \stemDown gis16 \stemDown b16 \stemDown gis16 ] | % 24
    \stemDown e4 -. \stemDown <e, b' gis'>4 -. \stemUp <e b' e>4 -. r4 | % 25
    R1 | % 26
    \stemDown a'2 _\p \stemDown gis4. ( \stemDown a8 ) | % 27
    \stemDown cis8 ( [ \stemDown b8 ) \stemDown a8 -. \stemDown gis8 -.
    ] \stemDown fis4. ( \stemDown gis8 ) | % 28
    \stemDown a8 ( [ \stemDown cis8 ) ] \stemDown b16 ( [ \stemDown a16
    \stemDown gis16 \stemDown fis16 ) ] \stemDown fis8 ( [ \stemDown e8
    ) \stemDown e8 ( \stemDown dis8 ) ] | % 29
    \stemDown e8 ( [ \stemDown fis8 ) ] \stemDown d4 r8 \stemDown b8 ( [
    \stemDown cis8 \stemDown d8 ) ] | \barNumberCheck #30
    \stemDown e8 ( [ \stemDown fis8 ) ] \stemDown e16 ( [ \stemDown d16
    \stemDown cis16 \stemDown b16 ) ] \stemUp a4 \stemUp gis4 | % 31
    \stemUp a4 r4 r2 | % 32
    \stemDown e''2 _\f \stemDown cis4.. ( \stemDown d16 ) | % 33
    \stemDown e4 -. \stemDown a,4 -. r2 | % 34
    \stemDown e'2 \stemDown cis4.. ( \stemDown d16 ) | % 35
    \stemDown e4 r8 \stemDown cis16 [ \stemDown cis16 ] \stemDown cis8 [
    \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 36
    \stemDown d4 -. \stemDown <a, a'>4 -. \stemUp <d, a' fis'>4 -. r4 | % 37
    \stemUp fis4. ( _\p \stemUp gis16 [ \stemUp ais16 ] \stemDown b8 [
    \stemDown cis8 \stemDown d8 \stemDown e8 ) ] | % 38
    \stemDown fis8 [ \stemDown ais,8 ( \stemDown b8 \stemDown d8 ) ]
    \stemUp a4 ( \stemUp gis4 ) | % 39
    \stemDown a8 -. [ \stemDown a'8 ( \stemDown gis8 \stemDown d8 ]
    \stemDown cis8 ) [ \stemDown cis'16 ( \stemDown b32 \stemDown cis32
    ] \stemDown d8 ) r8 | \barNumberCheck #40
    r8 \stemDown a8 ( [ \stemDown gis8 \stemDown d8 ] \stemDown cis8 ) [
    \stemDown cis'16 ( \stemDown b32 \stemDown cis32 ] \stemDown d8 ) r8
    | % 41
    r8 \stemDown a8 ( [ \stemDown gis8 \stemDown d8 ] \stemDown cis8 ) [
    \stemDown cis'16 ( \stemDown b32 \stemDown cis32 ] \stemDown d8 ) r8
    | % 42
    r8 \stemDown cis16 ( [ \stemDown b32 \stemDown cis32 ] \stemDown d8
    ) r8 r8 \stemDown cis16 ( [ \stemDown b32 \stemDown cis32 ]
    \stemDown d8 ) r8 | % 43
    r8 \stemDown a16 ( [ _\f \stemDown gis32 \stemDown a32 ] \stemDown b8
    ) [ \stemDown b16 ( \stemDown a32 \stemDown b32 ] \stemDown cis8 ) [
    \stemDown cis8 -. \stemDown d8 -. \stemDown d8 -. ] | % 44
    \stemDown e4 ~ \stemDown e16 [ \stemDown d16 -. \stemDown cis16 -.
    \stemDown b16 -. ] \stemDown a16 -. [ \stemDown gis16 -. \stemDown
    fis16 -. \stemDown e16 -. ] \stemDown d16 -. [ \stemDown cis16 -.
    \stemDown b16 -. \stemDown a16 -. ] | % 45
    \stemUp g8 \stemUp g4 -. \stemUp g8 ( \stemUp eis8 ) \stemUp eis4 -.
    \stemUp eis8 | % 46
    \stemUp fis4 -. \stemDown a'4 -. r4 \stemUp dis,,4 -. | % 47
    \stemUp e8. [ \stemUp fis16 ] \stemUp gis16 [ \stemUp a16 \stemUp b16
    \stemUp cis16 ] \stemDown d16 [ \stemDown e16 \stemDown fis16
    \stemDown gis16 ] \stemDown a16 [ \stemDown b16 \stemDown cis16
    \stemDown d16 ] | % 48
    \stemDown e8 [ \stemDown cis16 \stemDown a16 ] \stemDown e8 [
    \stemDown cis16 \stemDown a16 ] \stemUp e4 \stemDown <e b' gis'>4 | % 49
    \stemDown <e cis' a'>4 r4 \stemDown a'4 ( _\p \stemDown cis8 ) r8 |
    \barNumberCheck #50
    \stemDown fis,4 ( \stemDown a8 ) r8 \stemDown b,8. [ \stemDown b16
    \stemDown cis8. \stemDown cis16 ] | % 51
    \stemDown e4 ( \stemDown d8 ) r8 \stemDown d4 ( \stemDown fis8 ) r8
    | % 52
    \stemDown b,4 ( \stemDown d8 ) r8 \stemUp fis,8. [ \stemUp fis16
    \stemUp gis8. \stemUp gis16 ] | % 53
    \stemDown a16 [ \stemDown cis16 \stemDown e16 \stemDown cis16 ]
    \stemUp a16 [ \stemUp e16 \stemUp cis16 \stemUp e16 ] \stemUp fis16
    [ \stemUp d16 \stemUp fis16 \stemUp a16 ] \stemUp gis16 [ \stemUp e16
    \stemUp gis16 \stemUp b16 ] | % 54
    \stemDown a16 [ \stemDown cis16 \stemDown e16 \stemDown cis16 ]
    \stemUp a16 [ \stemUp e16 \stemUp cis16 \stemUp e16 ] \stemUp fis16
    [ \stemUp d16 \stemUp fis16 \stemUp a16 ] \stemUp gis16 [ \stemUp e16
    \stemUp gis16 \stemUp b16 ] | % 55
    \stemUp a16 [ _\f \stemUp e16 \stemUp cis16 \stemUp e16 ] \stemUp a16
    [ \stemUp e16 \stemUp a16 \stemUp e16 ] \stemDown cis'16 [ \stemDown
    a16 \stemDown cis16 \stemDown a16 ] \stemDown e'16 [ \stemDown cis16
    \stemDown e16 \stemDown cis16 ] | % 56
    \stemUp a4 -. \stemDown <e cis' a'>4 -. \stemUp a,4 -. r4 \bar "||"
    \stemDown cis'2 _\p \stemUp a4. ( \stemDown b8 ) | % 58
    \stemDown d8 ( [ \stemDown cis8 ) \stemDown b8 -. \stemDown a8 -. ]
    \stemUp a4 r4 | % 59
    \stemUp fis4 ( \stemUp d8 ) r8 \stemUp fis4 ( \stemUp d8 ) r8 |
    \barNumberCheck #60
    \stemUp cis2 ( \stemUp b4 ) r4 | % 61
    \stemUp e2 ( \stemUp d4 \stemUp cis4 ) | % 62
    \stemUp b4 \stemDown b'2 ( \stemUp a4 ) | % 63
    \stemDown b4 r8 \stemUp fis16 ( [ \stemUp d16 ] \stemUp cis8 [
    \stemUp e8 \stemUp d8 \stemUp e8 ) ] | % 64
    \stemUp cis8 -. [ \stemUp e8 -. ] \stemDown a8 -. [ \stemDown b16 (
    \stemDown a32 \stemDown b32 ) ] \stemDown cis8 -. [ \stemDown a8 -.
    ] \stemDown cis8 -. [ \stemDown d16 ( \stemDown cis32 \stemDown d32
    ) ] | % 65
    \stemDown e2 \stemDown cis4. ( \stemDown d8 ) | % 66
    \stemDown fis8 ( [ \stemDown e8 ) \stemDown d8 -. \stemDown cis8 -.
    ] \stemDown cis4 r4 | % 67
    \stemDown d4 ( \stemDown b8 ) r8 \stemDown d4 ( \stemDown b8 ) r8 | % 68
    \stemUp a2 ( \stemUp gis4 ) r4 | % 69
    \stemUp b,4 r4 r8 \stemUp e8 [ \stemUp e8 \stemUp e8 ] |
    \barNumberCheck #70
    r8 \stemUp d8 [ \stemUp d8 \stemUp d8 ] r8 \stemDown b'8 [ \stemDown
    b8 \stemDown b8 ] | % 71
    \stemDown cis4 r4 r2 | % 72
    r4 \stemUp a2 ( \stemUp gis4 ) | % 73
    \stemUp a8 [ \stemUp a8 \stemUp a8 \stemUp a8 ] r8 \stemUp a8 [
    \stemUp a8 \stemUp a8 ] | % 74
    r8 \stemUp a8 [ \stemUp a8 \stemUp a8 ] \stemUp a8 [ \stemUp a8
    \stemUp gis8 \stemUp gis8 ] | % 75
    \stemUp a16 [ _\f \stemUp e16 \stemUp cis16 \stemUp e16 ] \stemUp a16
    [ \stemUp e16 \stemUp a16 \stemUp e16 ] \stemDown cis'16 [ \stemDown
    a16 \stemDown cis16 \stemDown a16 ] \stemDown e'16 [ \stemDown cis16
    \stemDown e16 \stemDown cis16 ] | % 76
    \stemDown a'4 r4 \stemUp a,4 _\p r4 | % 77
    \stemDown d4 r4 \stemUp gis,4 r4 | % 78
    \stemUp a4 r4 \stemUp c,4 r4 | % 79
    \stemUp f4 r4 \stemUp b,4 r4 | \barNumberCheck #80
    \stemUp c8 -. [ \stemUp e8 -. \stemUp c8 -. \stemUp e8 -. ] \stemUp
    c4 r4 | % 81
    r4 \stemUp f2 _\f \stemUp f4 | % 82
    \stemUp f4 r4 \stemUp f4 _\p r4 | % 83
    f1 ~ | % 84
    \stemUp f4 r4 r2 | % 85
    r4 \stemUp e4 -. \stemUp e4 -. r4 | % 86
    \stemUp f8 ( [ \stemUp g8 \stemUp f8 \stemUp g8 ] \stemUp f8 [
    \stemUp g8 \stemUp f8 \stemUp g8 ) ] | % 87
    \stemUp e8 ( [ \stemUp g8 \stemUp e8 \stemUp g8 ] \stemUp e8 [
    \stemUp g8 \stemUp e8 \stemUp g8 ) ] | % 88
    \stemUp f8 ( [ \stemUp g8 \stemUp f8 \stemUp g8 ] \stemUp f8 [
    \stemUp g8 \stemUp f8 \stemUp g8 ) ] | % 89
    \stemUp e8 ( [ \stemUp g8 \stemUp e8 \stemUp g8 ] \stemUp e8 [
    \stemUp g8 \stemUp e8 \stemUp g8 ) ] | \barNumberCheck #90
    \stemUp d8 ( [ \stemUp g8 \stemUp d8 \stemUp g8 ] \stemUp d8 [
    \stemUp g8 \stemUp d8 \stemUp g8 ) ] | % 91
    \stemUp cis,4 \stemUp ais'2 \stemDown b4 | % 92
    \stemDown cis4 \stemUp g2 \stemUp g4 ~ | % 93
    \stemUp g4 \stemUp g4 r8 \stemUp g8 ( [ \stemUp fis8 \stemUp e8 ) ]
    | % 94
    \stemDown dis8 [ \stemDown dis'16 ( \stemDown e16 ] \stemDown fis8 )
    [ \stemDown g8 -. ] \stemDown a2 ( | % 95
    \stemDown g4 ) \stemDown g8. [ \stemDown g16 ] \stemDown g4. (
    \stemDown fis16 [ \stemDown g16 ) ] | % 96
    \stemUp fis8 [ \stemUp dis,16 ( \stemUp e16 ] \stemUp fis8 ) [
    \stemUp g8 -. ] \stemUp a2 ( | % 97
    \stemUp g4 ) \stemUp g8. [ \stemUp g16 ] \stemUp g4. ( \stemUp fis16
    [ \stemUp g16 ) ] | % 98
    \stemUp fis4 r8 \stemDown b8 -. _\f \stemUp g8 -. r8 \stemUp <b, g'
        e'>8 -. r8 | % 99
    \stemUp <b fis' dis'>4 r8 \stemDown b'8 -. \stemUp g8 -. r8
    \stemDown <b g'>8 -. r8 | \barNumberCheck #100
    \stemDown <b fis'>4 r4 r2 | % 101
    \stemUp dis,2 ( _\p \stemUp cis2 | % 102
    \stemUp b2 \stemUp a4 \stemUp dis4 | % 103
    \stemUp e4 ) r4 r8 \stemUp dis8 ( [ \stemUp fis8 \stemUp a8 ) ] | % 104
    \stemUp gis8 [ \stemUp b8 \stemUp b8 \stemUp b8 ] r8 \stemDown b8 [
    \stemDown b8 \stemDown b8 ] | % 105
    \stemDown b4 r4 r8 \stemUp a8 ( [ \stemUp gis8 \stemUp fis8 ) ] | % 106
    \stemUp gis8 [ \stemUp b8 \stemUp b8 \stemUp b8 ] r8 \stemDown b8 [
    \stemDown b8 \stemDown b8 ] | % 107
    \stemDown b4 r4 r8 \stemUp a8 ( [ \stemUp gis8 \stemUp fis8 ) ] | % 108
    \stemUp gis4 r8 \stemDown b8 ( \stemUp a4 ) r8 \stemDown b8 ( | % 109
    \stemDown cis4 ) r8 \stemUp gis8 ( \stemUp fis4 ) r8 \stemUp gis8 (
    | \barNumberCheck #110
    \stemUp a4 ) r8 \stemUp eis8 ( \stemUp fis4 ) r8 \stemUp e8 ( | % 111
    dis1 ) ( | % 112
    \stemUp e4 ) r4 r4 \stemDown b'4 ( | % 113
    \stemDown cis4 ) r4 r2 | % 114
    r4 \stemDown cis4 ( \stemDown b4 \stemDown dis4 ) | % 115
    \stemUp e8 [ \stemUp gis,8 ( \stemUp e8 \stemUp gis8 ] \stemUp e8 [
    \stemUp gis8 \stemUp e8 \stemUp gis8 ) ] | % 116
    \stemUp fis8 ( [ \stemUp gis8 \stemUp fis8 \stemUp gis8 ] \stemUp
    fis8 [ \stemUp gis8 \stemUp fis8 \stemUp gis8 ) ] | % 117
    \stemUp e8 ( [ \stemUp gis8 \stemUp e8 \stemUp gis8 ] \stemUp e8 [
    \stemUp gis8 \stemUp e8 \stemUp gis8 ) ] | % 118
    \stemUp dis8 ( [ \stemUp gis8 \stemUp dis8 \stemUp gis8 ] \stemUp
    dis8 [ \stemUp gis8 \stemUp dis8 \stemUp gis8 ) ] | % 119
    \stemUp e8 ( [ \stemUp gis8 \stemUp e8 \stemUp gis8 ] \stemUp e8 [
    \stemUp gis8 \stemUp e8 \stemUp gis8 ) ] | \barNumberCheck #120
    \stemUp fis8 ( [ \stemUp gis8 \stemUp fis8 \stemUp gis8 ] \stemUp
    fis8 [ \stemUp gis8 \stemUp fis8 \stemUp gis8 ) ] | % 121
    \stemUp e8 ( [ \stemUp gis8 \stemUp e8 \stemUp gis8 ] \stemUp e8 [
    \stemUp gis8 \stemUp e8 \stemUp gis8 ) ] | % 122
    \stemUp dis8 ( [ \stemUp gis8 \stemUp dis8 \stemUp gis8 ] \stemUp
    dis8 [ \stemUp gis8 \stemUp dis8 \stemUp gis8 ) ] | % 123
    \stemUp e8 ( [ \stemUp gis8 \stemUp e8 \stemUp gis8 ) ] \stemUp e4 r4
    | % 124
    \stemUp a2 ~ \stemUp a4 r4 | % 125
    \stemUp a2 ~ \stemUp a4 r4 | % 126
    \stemUp a8 \stemUp a4 \stemUp a4 \stemUp a4 \stemUp a8 | % 127
    \stemUp a4 r4 r2 ^\fermata | % 128
    \stemDown b2 _\p \stemUp gis4. ( \stemUp a8 ) | % 129
    \stemUp cis8 ( [ \stemUp b8 ) \stemUp a8 -. \stemUp gis8 -. ]
    \stemUp fis4. ( \stemUp gis8 ) | \barNumberCheck #130
    \stemUp b8 ( [ \stemUp a8 ) \stemUp gis8 -. \stemUp fis8 -. ]
    \stemUp e4. ( \stemUp fis8 ) | % 131
    \stemUp gis8 ( [ \stemUp a16 \stemUp b16 ] \stemUp a16 [ \stemUp gis16
    \stemUp fis16 \stemUp e16 ) ] \stemUp dis4 -. \stemUp cis4 -. | % 132
    \stemUp b4 -. \stemUp dis4 -. r8 \stemUp fis8 ( [ \stemUp gis8
    \stemUp a8 ) ] | % 133
    \stemDown b8 ( [ \stemDown cis8 ) ] \stemUp b16 ( [ \stemUp a16
    \stemUp gis16 \stemUp fis16 ) ] \stemUp fis8 ( [ \stemUp e8 )
    \stemUp e8 ( \stemUp dis8 ) ] | % 134
    \stemDown e8 -. [ \stemDown e'8 ( \stemDown dis8 \stemDown a8 ]
    \stemDown gis8 ) [ \stemDown gis'16 ( \stemDown fis32 \stemDown gis32
    ] \stemDown a8 ) r8 | % 135
    r8 \stemDown e8 ( [ \stemDown dis8 \stemDown a8 ] \stemDown gis8 ) [
    \stemDown gis'16 ( \stemDown fis32 \stemDown gis32 ] \stemDown a8 )
    r8 | % 136
    r8 \stemDown e8 ( [ \stemDown dis8 \stemDown a8 ] \stemDown gis8 ) [
    \stemDown gis'16 ( \stemDown fis32 \stemDown gis32 ] \stemDown a8 )
    r8 | % 137
    r8 \stemDown gis16 ( [ \stemDown fis32 \stemDown gis32 ] \stemDown a8
    ) r8 r8 \stemDown gis16 ( [ \stemDown fis32 \stemDown gis32 ]
    \stemDown a8 ) r8 | % 138
    r8 \stemDown b,8 -. [ \stemDown b8 -. \stemDown b8 -. ] \stemDown b4.
    ( \stemDown e8 ) | % 139
    \stemDown e8 ( [ \stemDown cis8 ) \stemDown cis8 -. \stemDown cis8
    -. ] \stemDown cis4. ( \stemDown e8 ) | \barNumberCheck #140
    \stemDown e8 ( [ \stemDown b8 \stemDown gis8 \stemDown b8 ) ]
    \stemUp b8 ( [ \stemUp a8 \stemUp gis8 \stemUp fis8 ) ] | % 141
    \stemUp e4 r4 r2 | % 142
    d1 ( | % 143
    \stemUp cis4 ) r8 \stemDown d'16 ( [ \stemDown cis32 \stemDown d32 )
    ] \stemDown cis8 -. [ \stemDown cis8 -. \stemDown d8 -. \stemDown d8
    -. ] | % 144
    \stemDown cis4 r8 \stemUp d,16 ( [ \stemUp cis32 \stemUp d32 ) ]
    \stemUp cis8 -. [ \stemUp cis8 -. \stemUp d8 -. \stemUp d8 -. ] | % 145
    \stemUp cis8 r8 r4 r8 \stemUp e8 [ \stemUp e8 \stemUp e8 ] | % 146
    \stemUp fis4 r4 r8 \stemUp fis8 [ \stemUp fis8 \stemUp fis8 ] | % 147
    \stemUp g4 r4 r8 \stemUp g8 [ \stemUp g8 \stemUp g8 ] | % 148
    \stemUp gis4 r4 r4 r8 \stemUp dis8 -. | % 149
    \stemUp e8 -. [ \stemUp fis8 -. \stemUp gis8 -. \stemUp a8 -. ]
    \stemDown b8 -. [ \stemDown dis8 -. \stemDown e8 -. \stemDown fis8
    -. ] | \barNumberCheck #150
    \stemDown gis4 r4 \stemDown gis4 r4 | % 151
    \stemDown e4 r4 \stemDown b4 r4 | % 152
    \stemUp gis8 [ \stemUp gis8 \stemUp gis8 \stemUp gis8 ] \stemUp gis8
    [ \stemUp gis8 \stemUp gis8 \stemUp gis8 ] | % 153
    \stemUp fis16 [ _\markup{ \tiny\italic {cresc.} } \stemUp fis16
    \stemUp fis16 \stemUp fis16 ] \stemUp fis4 :16 \stemUp fis2 :16 | % 154
    \stemUp <e b' e>4 _\f r8 \stemDown gis'16 ( [ \stemDown e16 ) ]
    \stemDown b8 -. [ \stemDown b8 -. \stemDown b8 -. \stemDown b8 -. ]
    | % 155
    \stemDown b'8 ( [ \stemDown a8 ) ] \stemDown a4. \stemDown b16 ( [
    \stemDown a16 ] \stemDown gis16 [ \stemDown fis16 \stemDown e16
    \stemDown dis16 ) ] | % 156
    \stemDown fis8 ( [ \stemDown e8 ) ] r8 \stemDown gis16 ( [ \stemDown
    e16 ) ] \stemDown b8 -. [ \stemDown b8 -. \stemDown b8 -. \stemDown
    b8 -. ] | % 157
    \stemDown b8 [ \stemDown b'16 ( \stemDown a16 ) ] \stemDown a4.
    \stemDown b16 ( [ \stemDown a16 ] \stemDown gis16 [ \stemDown fis16
    \stemDown e16 \stemDown dis16 ) ] | % 158
    \stemDown e16 ( [ \stemDown dis16 ) \stemDown fis16 \stemDown e16 ]
    \stemDown gis16 [ \stemDown fis16 \stemDown e16 \stemDown dis16 ]
    \stemDown cis16 ( [ \stemDown bis16 ) \stemDown dis16 \stemDown cis16
    ] \stemDown e8 r8 | % 159
    \stemDown cis16 ( [ \stemDown bis16 ) \stemDown dis16 \stemDown cis16
    ] \stemDown e16 [ \stemDown d16 \stemDown cis16 \stemDown b16 ]
    \stemUp a16 ( [ \stemUp gis16 ) \stemUp b16 \stemUp a16 ] \stemDown
    cis8 r8 | \barNumberCheck #160
    \stemUp a16 ( [ \stemUp gis16 ) \stemUp b16 \stemUp a16 ] \stemUp
    cis16 [ \stemUp b16 \stemUp a16 \stemUp gis16 ] \stemUp fis16 ( [
    \stemUp eis16 ) \stemUp gis16 \stemUp fis16 ] \stemUp a16 [ \stemUp
    gis16 \stemUp fis16 \stemUp e16 ] | % 161
    \stemUp dis16 ( [ \stemUp cis16 ) \stemUp b16 \stemUp cis16 ]
    \stemUp dis16 [ \stemUp e16 \stemUp fis16 \stemUp gis16 ] \stemUp a16
    ( [ \stemUp gis16 ) \stemUp fis16 \stemUp gis16 ] \stemDown a16 [
    \stemDown b16 \stemDown cis16 \stemDown dis16 ] | % 162
    \stemDown e8 [ \stemDown gis16 \stemDown e16 ] \stemDown b'8 [
    \stemDown gis,8 ] \stemUp a4 \stemDown cis'4 | % 163
    \stemDown b8 [ \stemDown gis16 \stemDown e16 ] \stemUp b8 [ \stemUp
    gis16 \stemUp e16 ] \stemUp b4 \stemUp <b fis' dis'>4 | % 164
    \stemUp <b gis' e'>4 r4 \stemDown e'4 ( _\p \stemDown gis8 ) r8 | % 165
    \stemDown cis,4 ( \stemDown e8 ) r8 \stemUp fis,8. [ \stemUp fis16
    \stemUp gis8. \stemUp gis16 ] | % 166
    \stemDown b4 ( \stemUp a8 ) r8 \stemDown a'4 ( \stemDown cis8 ) r8 | % 167
    \stemDown fis,4 ( \stemDown a8 ) r8 \stemDown cis,8. [ \stemDown cis16
    \stemDown dis8. \stemDown dis16 ] | % 168
    \stemDown e16 [ \stemDown gis16 \stemDown b16 \stemDown gis16 ]
    \stemDown e16 [ \stemDown b16 \stemDown gis16 \stemDown b16 ]
    \stemDown cis16 [ \stemDown a16 \stemDown cis16 \stemDown e16 ]
    \stemDown dis16 [ \stemDown b16 \stemDown dis16 \stemDown fis16 ] | % 169
    \stemDown e16 [ \stemDown gis16 \stemDown b16 \stemDown gis16 ]
    \stemDown e16 [ \stemDown b16 \stemDown gis16 \stemDown b16 ]
    \stemDown cis16 [ \stemDown a16 \stemDown cis16 \stemDown e16 ]
    \stemDown dis16 [ \stemDown b16 \stemDown dis16 \stemDown fis16 ] |
    \barNumberCheck #170
    \stemDown e16 [ _\f \stemDown b16 \stemDown e16 \stemDown b16 ]
    \stemUp gis16 [ \stemUp e16 \stemUp gis16 \stemUp b16 ] \stemDown e16
    [ \stemDown b16 \stemDown e16 \stemDown gis16 ] \stemDown b16 [
    \stemDown gis16 \stemDown b16 \stemDown gis16 ] | % 171
    \stemDown e4 -. \stemDown <e, b' gis'>4 -. \stemUp <e b' e>4 -. r4
    \bar "||"
    \stemUp gis2 _\p \stemUp e4. ( \stemUp fis8 ) | % 173
    \stemUp a8 ( [ \stemUp gis8 ) \stemUp gis8 -. \stemUp gis8 -. ]
    \stemUp gis4 r4 | % 174
    r4 \stemUp dis4. ( \stemUp e8 [ \stemUp fis8 \stemUp gis8 ) ] | % 175
    \stemUp a4 -. \stemUp fis4 -. r4 \stemUp a4 | % 176
    \stemUp gis2 \stemUp e4. ( \stemUp fis8 ) | % 177
    \stemUp a8 ( [ \stemUp gis8 ) \stemUp gis8 -. \stemUp gis8 -. ]
    \stemUp gis4 r4 | % 178
    r4 \stemUp dis4. ( \stemUp e8 [ \stemUp fis8 \stemUp gis8 ) ] | % 179
    \stemUp a4 -. \stemUp fis4 -. r4 \stemUp a4 | \barNumberCheck #180
    \stemUp gis8 [ \stemUp b8 ] \stemUp gis4 r2 | % 181
    r4 \stemUp a4 r4 \stemUp fis4 | % 182
    \stemUp gis8 [ \stemUp b8 ] \stemUp gis4 r2 | % 183
    r4 \stemUp a4 r4 \stemUp fis4 | % 184
    \stemUp gis8 [ \stemUp b8 ] \stemUp gis4 r2 | % 185
    \stemDown b8 [ \stemDown b8 ] \stemDown b4 r2 | % 186
    \stemDown e8 [ \stemDown e8 ] \stemDown e4 r2 | % 187
    r4 \stemUp fis,4 ( \stemUp eis4 \stemUp fis4 ) | % 188
    \stemUp eis8 r8 \stemUp eis8 r8 \stemUp eis8 r8 \stemUp eis8 r8 | % 189
    \stemUp eis8 r8 \stemUp eis8 r8 \stemUp eis8 r8 \stemUp eis8 r8 |
    \barNumberCheck #190
    \stemUp fis8 \stemUp a4 \stemUp a4 \stemUp a4 \stemUp a8 | % 191
    r8 \stemUp gis8 [ \stemUp gis8 \stemUp gis8 ] r8 \stemUp gis8 [
    \stemUp gis8 \stemUp gis8 ] | % 192
    \stemUp gis4 r4 \stemDown gis'16 [ _\f \stemDown gis16 \stemDown gis16
    \stemDown gis16 ] \stemDown gis16 [ \stemDown gis16 \stemDown gis16
    \stemDown gis16 ] | % 193
    \stemDown a2 :16 \stemDown bis2 :16 | % 194
    \stemDown cis4 r4 r2 | % 195
    r4 \stemDown cis,4 ( -. _\p \stemDown cis4 -. \stemDown cis4 ) -. | % 196
    \stemDown d4 r4 r2 | % 197
    r4 \stemDown d4 ( -. \stemDown d4 -. \stemDown d4 ) -. | % 198
    d1 ( | % 199
    cis1 ) | \barNumberCheck #200
    \stemUp d8 [ \stemUp a8 ( \stemUp fis8 \stemUp a8 ) ] \stemUp fis8 (
    [ \stemUp a8 \stemUp fis8 \stemUp a8 ) ] | % 201
    \stemUp g8 ( [ \stemUp a8 \stemUp g8 \stemUp a8 ] \stemUp g8 [
    \stemUp a8 \stemUp g8 \stemUp a8 ) ] | % 202
    \stemUp fis8 ( [ \stemUp a8 \stemUp fis8 \stemUp a8 ] \stemUp fis8 [
    \stemUp a8 \stemUp fis8 \stemUp a8 ) ] | % 203
    \stemUp g8 ( [ \stemUp a8 \stemUp g8 \stemUp a8 ] \stemUp g8 [
    \stemUp a8 \stemUp g8 \stemUp a8 ) ] | % 204
    \stemUp fis8 ( [ \stemUp a8 \stemUp fis8 \stemUp a8 ] \stemUp fis8 [
    \stemUp a8 \stemUp fis8 \stemUp a8 ) ] | % 205
    \stemUp e8 ( [ \stemUp a8 \stemUp e8 \stemUp a8 ] \stemUp e8 [
    \stemUp a8 \stemUp e8 \stemUp a8 ) ] | % 206
    \stemDown dis,8 [ \stemDown a''8 \stemDown a8 \stemDown a8 ]
    \stemDown a8 [ \stemDown a8 \stemDown a8 \stemDown a8 ] | % 207
    \stemUp gis8 [ \stemUp gis,8 \stemUp gis8 \stemUp gis8 ] \stemUp gis8
    [ \stemUp gis8 \stemUp gis8 \stemUp gis8 ] | % 208
    \stemDown gis8 [ \stemDown gis'8 \stemDown gis8 \stemDown gis8 ]
    \stemDown g8 [ \stemDown g8 \stemDown g8 \stemDown g8 ] | % 209
    \stemUp fis8 [ \stemUp fis,8 \stemUp fis8 \stemUp fis8 ] \stemUp fis8
    [ \stemUp fis8 \stemUp fis8 \stemUp fis8 ] | \barNumberCheck #210
    \stemUp fis8 -. [ \stemUp d'8 -. ] \stemDown d4 -. r2 | % 211
    \stemDown gis,8 -. [ \stemDown eis'8 -. ] \stemDown eis4 -. r2 | % 212
    \stemDown fis8 r8 r4 \stemDown gis8 r8 r4 | % 213
    \stemDown a8 r8 \stemDown fis8 r8 \stemDown d8 r8 \stemDown b8 r8 | % 214
    r8 \stemUp a8 [ \stemUp a8 \stemUp a8 ] r8 \stemUp gis8 [ \stemUp
    gis8 \stemUp gis8 ] | % 215
    \stemDown a'16 [ _\f \stemDown a16 \stemDown eis16 \stemDown eis16 ]
    \stemDown fis16 [ \stemDown fis16 \stemDown cis16 \stemDown cis16 ]
    \stemDown d16 [ \stemDown d16 \stemDown ais16 \stemDown ais16 ]
    \stemUp b16 [ \stemUp b16 \stemUp fis16 \stemUp fis16 ] | % 216
    \stemUp g4 \stemUp d4 ( -. _\p \stemUp d4 -. \stemUp d4 ) -. | % 217
    r4 \stemDown g'4 ( -. \stemDown g4 -. \stemDown g4 ) -. | % 218
    r4 \stemUp d,4 ( -. \stemUp d4 -. \stemUp d4 ) -. | % 219
    r4 \stemDown a''4 ( -. \stemDown a4 -. \stemDown a4 ) -. |
    \barNumberCheck #220
    \stemDown a8 [ \stemDown fis,8 ] \stemUp fis4 r2 | % 221
    \stemUp a8 [ \stemUp a8 ] \stemUp a4 r2 | % 222
    \stemDown fis'8 [ \stemDown fis8 ] \stemDown fis4 r2 | % 223
    r8 \stemDown a8 [ \stemDown a8 \stemDown a8 ] \stemDown a8 [
    \stemDown a8 \stemDown a8 \stemDown a8 ] | % 224
    \stemDown a4 \stemUp cis,,4 r2 | % 225
    r8 \stemDown b'8 [ \stemDown b8 \stemDown b8 ] r8 \stemUp a8 [
    \stemUp a8 \stemUp a8 ] | % 226
    \stemUp gis4 r4 \stemDown <gis eis' cis'>4 _\f r4 | % 227
    \stemDown fis'16 [ _\f \stemDown fis16 \stemDown eis16 \stemDown eis16
    ] \stemDown fis16 [ \stemDown fis16 \stemDown gis16 \stemDown gis16
    ] \stemDown a16 [ \stemDown a16 \stemDown gis16 \stemDown gis16 ]
    \stemDown a16 [ \stemDown a16 \stemDown b16 \stemDown b16 ] | % 228
    \stemDown cis16 [ \stemDown cis16 \stemDown bis16 \stemDown bis16 ]
    \stemDown cis16 [ \stemDown cis16 \stemDown d16 \stemDown d16 ]
    \stemDown cis16 [ \stemDown cis16 \stemDown b16 \stemDown b16 ]
    \stemDown a16 [ \stemDown a16 \stemDown gis16 \stemDown gis16 ] | % 229
    \stemDown fis8 -. [ _\p \stemDown eis8 -. \stemDown fis8 -.
    \stemDown gis8 -. ] \stemDown a8 -. [ \stemDown gis8 -. \stemDown a8
    -. \stemDown b8 -. ] | \barNumberCheck #230
    \stemDown cis8 -. [ \stemDown bis8 -. \stemDown cis8 -. \stemDown d8
    -. ] \stemDown cis8 -. [ \stemDown b8 -. \stemDown a8 -. \stemDown
    gis8 -. ] | % 231
    \stemDown fis8 -. [ \stemDown eis8 -. \stemDown fis8 -. \stemDown
    gis8 -. ] \stemDown a8 -. [ \stemDown gis8 -. \stemDown a8 -.
    \stemDown b8 -. ] | % 232
    \stemDown c8 -. [ \stemDown b8 -. \stemDown ais8 -. \stemDown c8 -.
    ] \stemDown b8 -. [ \stemDown gis8 -. \stemDown a8 -. \stemDown fis8
    -. ] | % 233
    \stemDown e16 [ _\f \stemDown e16 \stemDown dis16 \stemDown dis16 ]
    \stemDown e16 [ \stemDown e16 \stemDown fis16 \stemDown fis16 ]
    \stemDown g16 [ \stemDown g16 \stemDown fis16 \stemDown fis16 ]
    \stemDown g16 [ \stemDown g16 \stemDown a16 \stemDown a16 ] | % 234
    \stemDown b16 [ \stemDown b16 \stemDown ais16 \stemDown ais16 ]
    \stemDown b16 [ \stemDown b16 \stemDown c16 \stemDown c16 ]
    \stemDown b16 [ \stemDown b16 \stemDown a16 \stemDown a16 ]
    \stemDown g16 [ \stemDown g16 \stemDown fis16 \stemDown fis16 ] | % 235
    \stemDown e8 -. [ _\p \stemDown dis8 -. \stemDown e8 -. \stemDown
    fis8 -. ] \stemDown g8 -. [ \stemDown fis8 -. \stemDown g8 -.
    \stemDown a8 -. ] | % 236
    \stemDown b8 -. [ \stemDown ais8 -. \stemDown b8 -. \stemDown c8 -.
    ] \stemDown b8 -. [ \stemDown a8 -. \stemDown g8 -. \stemDown fis8
    -. ] | % 237
    \stemDown e8 -. [ \stemDown dis8 -. \stemDown e8 -. \stemDown fis8
    -. ] \stemDown g8 -. [ \stemDown fis8 -. \stemDown g8 -. \stemDown a8
    -. ] | % 238
    \stemDown bes8 -. [ \stemDown a8 -. \stemDown gis8 -. \stemDown bes8
    -. ] \stemDown a8 -. [ \stemDown fis8 -. \stemDown g8 -. \stemDown e8
    -. ] | % 239
    \stemUp <d, d'>4 _\f r8 \stemDown fis'16 ( [ \stemDown d16 ) ]
    \stemUp a8 -. [ \stemUp a8 -. \stemUp a8 -. \stemUp a8 -. ] |
    \barNumberCheck #240
    \stemDown a'8 ( [ \stemDown g8 ) ] \stemDown g4. \stemDown a16 ( [
    \stemDown g16 ] \stemDown fis16 [ \stemDown e16 \stemDown d16
    \stemDown cis16 ) ] | % 241
    \stemDown e8 ( [ \stemDown d8 ) ] r8 \stemDown fis16 ( [ \stemDown d16
    ) ] \stemUp a8 -. [ \stemUp a8 -. \stemUp a8 -. \stemUp a8 -. ] | % 242
    \stemDown a8 -. [ \stemDown a'16 ( \stemDown g16 ) ] \stemDown g4.
    \stemDown fis16 ( [ \stemDown g16 ] \stemDown a16 [ \stemDown g16
    \stemDown fis16 \stemDown e16 ) ] | % 243
    \stemDown fis16 ( [ \stemDown e16 ) \stemDown g16 \stemDown fis16 ]
    \stemDown a16 [ \stemDown g16 \stemDown fis16 \stemDown e16 ]
    \stemDown d16 ( [ \stemDown cis16 ) \stemDown e16 \stemDown d16 ]
    \stemDown fis8 r8 | % 244
    \stemDown d16 ( [ \stemDown cis16 ) \stemDown e16 \stemDown d16 ]
    \stemDown fis16 [ \stemDown e16 \stemDown d16 \stemDown cis16 ]
    \stemDown b16 ( [ \stemDown ais16 ) \stemDown cis16 \stemDown b16 ]
    \stemDown d8 r8 | % 245
    \stemDown b16 ( [ \stemDown ais16 ) \stemDown cis16 \stemDown b16 ]
    \stemDown d16 [ \stemDown cis16 \stemDown b16 \stemDown a16 ]
    \stemUp gis16 ( [ \stemUp fis16 ) \stemUp a16 \stemUp gis16 ]
    \stemUp b16 [ \stemUp a16 \stemUp gis16 \stemUp fis16 ] | % 246
    \stemUp e8 r8 \stemDown d'2 \stemDown cis8. ( [ \stemDown b32
    \stemDown cis32 ) ] | % 247
    \stemUp b16 [ \stemUp e,16 \stemUp fis16 \stemUp gis16 ] \stemDown a16
    [ \stemDown b16 \stemDown cis16 \stemDown dis16 ] \stemDown e16 [
    \stemDown fis16 \stemDown gis16 \stemDown a16 ] \stemDown b16 [
    \stemDown gis16 \stemDown b16 \stemDown gis16 ] | % 248
    \stemDown e4 r4 r2 | % 249
    r4 \stemUp e,8 -. [ _\p \stemUp e8 -. ] \stemUp fis8 -. [ \stemUp
    fis8 -. \stemUp gis8 -. \stemUp gis8 -. ] | \barNumberCheck #250
    \stemUp a8 -. [ \stemUp a8 -. \stemUp b8 -. \stemUp b8 -. ]
    \stemDown cis8 -. [ \stemDown cis8 -. \stemDown d8 -. \stemDown d8
    -. ] | % 251
    \stemDown cis2 \stemUp a4. ( \stemDown b8 ) | % 252
    \stemDown d8 ( [ \stemDown cis8 ) \stemDown b8 -. \stemDown a8 -. ]
    \stemUp a4 r4 | % 253
    \stemUp fis4 ( \stemUp d8 ) r8 \stemUp fis4 ( \stemUp d8 ) r8 | % 254
    \stemUp cis2 ( \stemUp b4 ) r4 | % 255
    \stemUp e2 ( \stemUp d4 \stemUp cis4 ) | % 256
    \stemUp b4 \stemDown b'2 ( \stemUp a4 ) | % 257
    \stemDown b4 r8 \stemUp fis16 ( [ \stemUp d16 ] \stemUp cis8 [
    \stemUp e8 \stemUp d8 \stemUp e8 ) ] | % 258
    \stemUp cis8 -. [ \stemUp e8 -. ] \stemDown a8 -. [ \stemDown b16 (
    \stemDown a32 \stemDown b32 ) ] \stemDown cis8 -. [ \stemDown a8 -.
    ] \stemDown cis8 -. [ \stemDown d16 ( \stemDown cis32 \stemDown d32
    ) ] | % 259
    \stemDown e2 \stemDown cis4. ( \stemDown d8 ) | \barNumberCheck #260
    \stemDown fis8 ( [ \stemDown e8 ) \stemDown d8 -. \stemDown cis8 -.
    ] \stemDown cis4 r4 | % 261
    \stemDown d4 ( \stemDown b8 ) r8 \stemDown d4 ( \stemDown b8 ) r8 | % 262
    \stemUp a2 ( \stemUp gis4 ) r4 | % 263
    \stemUp b,4 r4 r8 \stemUp e8 [ \stemUp e8 \stemUp e8 ] | % 264
    r8 \stemUp d8 [ \stemUp d8 \stemUp d8 ] r8 \stemDown b'8 [ \stemDown
    b8 \stemDown b8 ] | % 265
    \stemDown cis4 r4 r2 | % 266
    r4 \stemUp a2 ( \stemUp gis4 ) | % 267
    \stemUp a8 [ \stemUp a8 \stemUp a8 \stemUp a8 ] r8 \stemUp a8 [
    \stemUp a8 \stemUp a8 ] | % 268
    r8 \stemUp a8 [ \stemUp a8 \stemUp a8 ] \stemUp a8 [ \stemUp a8
    \stemUp gis8 \stemUp gis8 ] | % 269
    \stemUp a8 [ _\f \stemUp cis,16 \stemUp e16 ] \stemUp a16 [ \stemUp
    e16 \stemUp a16 \stemUp e16 ] \stemDown cis'16 [ \stemDown a16
    \stemDown cis16 \stemDown a16 ] \stemDown e'16 [ \stemDown cis16
    \stemDown e16 \stemDown cis16 ] | \barNumberCheck #270
    \stemDown a'4 r4 \stemUp a,4 _\p r4 | % 271
    \stemDown d4 r4 \stemUp gis,4 r4 | % 272
    \stemUp a4 r4 \stemDown c4 r4 | % 273
    \stemDown f4 r4 \stemDown b,4 r4 | % 274
    \stemDown c4 r4 \stemDown g'4 r4 | % 275
    \stemDown a4 r4 \stemDown d,4 r4 | % 276
    \stemDown e4 r4 r8 \stemDown e8 ( [ \stemDown fis8 \stemDown g8 ) ]
    | % 277
    \stemDown fis8 ( [ \stemDown a8 ] \stemDown c2 \stemDown b8 [
    \stemDown a8 ) ] | % 278
    \stemDown a2 ( \stemDown gis2 | % 279
    \stemDown g2 \stemDown e2 ) | \barNumberCheck #280
    \stemDown d8 r8 \stemUp g,8 r8 \stemUp f8 r8 \stemUp a8 r8 | % 281
    a1 | % 282
    \stemDown gis8 -. [ \stemDown gis16 ( \stemDown a16 ] \stemDown b8 )
    [ \stemDown c8 -. ] \stemDown d2 ( | % 283
    \stemDown c4 ) \stemDown c8. [ \stemDown c16 ] \stemDown c4. (
    \stemDown b16 [ \stemDown c16 ) ] | % 284
    \stemDown b8 -. [ \stemDown gis16 ( \stemDown a16 ] \stemDown b8 ) [
    \stemDown c8 -. ] \stemDown d2 ( | % 285
    \stemDown c4 ) \stemDown c8. [ \stemDown c16 ] \stemDown c4. (
    \stemDown b16 [ \stemDown c16 ) ] | % 286
    \stemDown b4 r8 \stemDown e8 -. _\f \stemDown c8 -. r8 \stemDown <e,
        c' a'>8 -. r8 | % 287
    \stemDown <e b' gis'>4 r8 \stemDown e'8 -. \stemDown c8 -. r8
    \stemDown c'8 -. r8 | % 288
    \stemDown b4 r4 r2 | % 289
    \stemUp gis,2 ( _\p \stemUp fis2 | \barNumberCheck #290
    \stemUp e2 \stemUp d4 \stemUp gis4 | % 291
    \stemUp a4 ) r4 \stemUp d,4 r4 | % 292
    \stemUp cis8 [ \stemUp e8 \stemUp e8 \stemUp e8 ] r8 \stemUp e8 [
    \stemUp e8 \stemUp e8 ] | % 293
    \stemUp e4 r4 r8 \stemUp d8 ( [ \stemUp cis8 \stemUp b8 ) ] | % 294
    \stemDown cis8 [ \stemDown e'8 \stemDown e8 \stemDown e8 ] r8
    \stemDown e8 [ \stemDown e8 \stemDown e8 ] | % 295
    \stemDown e4 r4 r8 \stemUp d,8 ( [ \stemUp cis8 \stemUp b8 ) ] | % 296
    \stemUp cis4 r8 \stemUp e8 ( \stemUp fis4 ) r8 \stemUp eis8 ( | % 297
    \stemUp fis4 ) r8 \stemUp cis8 ( \stemUp d4 ) r8 \stemUp cis8 ( | % 298
    \stemUp d4 ) r8 \stemDown ais'8 ( \stemDown b4 ) r8 \stemUp fis8 ( | % 299
    \stemUp e4 ) r4 \stemUp gis2 ( | \barNumberCheck #300
    \stemUp a4 ) r4 r4 \stemUp e4 ( | % 301
    \stemUp fis4 ) r4 r2 | % 302
    r4 \stemUp fis4 ( \stemUp e4 \stemUp gis4 ) | % 303
    \stemUp a4 r4 r8 \stemUp a8 ( [ \stemUp gis8 \stemUp fis8 ) ] | % 304
    \stemUp eis8 ( [ \stemUp gis8 ] \stemDown b4. ) \stemUp b8 ( [
    \stemUp a8 \stemUp gis8 ) ] | % 305
    \stemDown cis8 ( [ \stemDown a8 ] \stemUp fis4 ) r8 \stemUp d8 [
    \stemUp d8 \stemUp d8 ] | % 306
    r8 \stemUp cis8 [ \stemUp cis8 \stemUp cis8 ] r8 \stemUp gis'8 [
    \stemUp gis8 \stemUp gis8 ] | % 307
    \stemUp a4 r4 r8 \stemDown cis8 [ \stemDown cis8 \stemDown cis8 ] | % 308
    \stemDown cis4. \stemDown cis8 \stemDown d8 ( [ \stemDown dis8
    \stemDown e8 \stemDown eis8 ) ] | % 309
    \stemDown eis8 ( [ \stemDown fis8 ) ] \stemDown cis4 r8 \stemUp fis,8
    ( [ \stemUp gis8 \stemUp a8 ) ] | \barNumberCheck #310
    \stemUp a8 ( [ \stemUp gis8 ) ] \stemUp gis4. \stemDown d'8 ( [
    \stemDown cis8 \stemDown b8 ) ] | % 311
    \grace { \stemUp b16 ( } \stemUp a8 [ \stemUp gis16 \stemUp fis16 )
    ] \stemUp fis4 r2 | % 312
    \stemUp a2 ( \stemUp gis4 ) r4 | % 313
    \stemUp a2 ( \stemUp gis4 ) r4 | % 314
    \stemUp gis8 \stemUp gis4 \stemUp gis4 \stemUp gis4 \stemUp gis8 | % 315
    \stemUp gis4 r4 r2 ^\fermata | % 316
    R1 | % 317
    \stemDown a'2 _\p \stemDown gis4. ( \stemDown a8 ) | % 318
    \stemDown cis8 ( [ \stemDown b8 ) \stemDown a8 -. \stemDown gis8 -.
    ] \stemDown fis4. ( \stemDown gis8 ) | % 319
    \stemDown a8 ( [ \stemDown b16 \stemDown cis16 ] \stemDown b16 [
    \stemDown a16 \stemDown gis16 \stemDown fis16 ) ] \stemDown fis8 ( [
    \stemDown e8 ) \stemDown e8 ( \stemDown dis8 ) ] | \barNumberCheck
    #320
    \stemDown e8 ( [ \stemDown fis8 ) ] \stemDown d4 r8 \stemUp gis,8 (
    [ \stemUp a8 \stemUp b8 ) ] | % 321
    \stemUp a4 \stemUp gis16 ( [ \stemUp fis16 \stemUp e16 \stemUp d16 )
    ] \stemUp d8 ( [ \stemUp cis8 ) \stemUp cis8 ( \stemUp b8 ) ] | % 322
    r8 \stemDown a''8 ( [ \stemDown gis8 \stemDown d8 ] \stemDown cis8 )
    [ \stemDown cis'16 ( \stemDown b32 \stemDown cis32 ] \stemDown d8 )
    r8 | % 323
    r8 \stemDown a8 ( [ \stemDown gis8 \stemDown d8 ] \stemDown cis8 ) [
    \stemDown cis'16 ( \stemDown b32 \stemDown cis32 ] \stemDown d8 ) r8
    | % 324
    r8 \stemDown a8 ( [ \stemDown gis8 \stemDown d8 ] \stemDown cis8 ) [
    \stemDown cis'16 ( \stemDown b32 \stemDown cis32 ] \stemDown d8 ) r8
    | % 325
    r8 \stemDown cis16 ( [ \stemDown b32 \stemDown cis32 ] \stemDown d8
    ) r8 r8 \stemDown cis,16 ( [ \stemDown b32 \stemDown cis32 ]
    \stemDown d8 ) [ \stemDown gis16 ( \stemDown fis32 \stemDown gis32 )
    ] | % 326
    \stemDown a8 ( [ \stemDown e8 ) \stemDown e8 -. \stemDown e8 -. ]
    \stemDown e4. ( \stemDown a8 ) | % 327
    \stemDown a8 ( [ \stemDown fis8 ) \stemDown fis8 -. \stemDown fis8
    -. ] \stemDown fis4. ( \stemDown a8 ) | % 328
    \stemDown a8 ( [ \stemDown e8 \stemDown cis8 \stemDown e8 ) ]
    \stemDown e8 ( [ \stemDown d8 \stemDown cis8 \stemDown b8 ) ] | % 329
    \stemUp a4 r4 r2 | \barNumberCheck #330
    g1 ( | % 331
    \stemUp fis4 ) r8 \stemDown g'16 ( [ \stemDown fis32 \stemDown g32 )
    ] \stemDown fis8 -. [ \stemDown fis8 -. \stemDown g8 -. \stemDown g8
    -. ] | % 332
    \stemDown fis4 r8 \stemUp g,16 ( [ \stemUp fis32 \stemUp g32 ) ]
    \stemUp fis8 -. [ \stemUp fis8 -. \stemUp g8 -. \stemUp g8 -. ] | % 333
    \stemUp fis4 r8 \stemUp e16 ( [ \stemUp d32 \stemUp e32 ) ] \stemUp
    d8 -. [ \stemUp d8 -. \stemUp e8 -. \stemUp e8 -. ] | % 334
    \stemUp d4 r4 r8 \stemUp fis8 [ \stemUp fis8 \stemUp fis8 ] | % 335
    \stemUp gis4 r4 r8 \stemUp gis8 [ \stemUp gis8 \stemUp gis8 ] | % 336
    \stemUp a4 r4 r8 \stemUp a8 [ \stemUp a8 \stemUp a8 ] | % 337
    \stemUp a8 [ \stemUp a8 \stemUp a8 \stemUp a8 ] r8 \stemDown cis8 [
    \stemDown cis8 \stemDown cis8 ] | % 338
    r8 \stemDown e8 [ \stemDown e8 \stemDown e8 ] r8 \stemDown a8 [
    \stemDown a8 \stemDown a8 ] | % 339
    \stemDown a8 r8 \stemDown cis,8 -. [ \stemDown cis8 -. ] \stemDown
    cis8 -. r8 \stemDown cis8 -. [ \stemDown cis8 -. ] | \barNumberCheck
    #340
    \stemDown cis8 -. r8 \stemUp a8 -. [ \stemUp a8 -. ] \stemUp a8 -. r8
    \stemUp e8 -. [ \stemUp e8 -. ] | % 341
    \stemUp e8 [ \stemUp cis8 \stemUp cis8 \stemUp cis8 ] \stemUp cis8 [
    \stemUp cis8 \stemUp cis8 \stemUp cis8 ] | % 342
    \stemUp b16 [ _\markup{ \tiny\italic {cresc.} } \stemUp b16 \stemUp
    b16 \stemUp b16 ] \stemUp b4 :16 \stemUp b2 :16 | % 343
    \stemUp a4 _\f r8 \stemDown cis''16 ( [ \stemDown a16 ) ] \stemDown
    e8 -. [ \stemDown e8 -. \stemDown e8 -. \stemDown e8 -. ] | % 344
    \stemDown e8 ( [ \stemDown d'8 ) ] \stemDown d4. \stemDown cis16 ( [
    \stemDown b16 ] \stemDown cis16 [ \stemDown b16 \stemDown a16
    \stemDown gis16 ) ] | % 345
    \stemDown b8 ( [ \stemDown a8 ) ] r8 \stemDown cis16 ( [ \stemDown a16
    ) ] \stemDown e8 -. [ \stemDown e8 -. \stemDown e8 -. \stemDown e8
    -. ] | % 346
    \stemDown e8 ( [ \stemDown d'8 ) ] \stemDown d4. \stemDown cis16 ( [
    \stemDown b16 ] \stemDown cis16 [ \stemDown b16 \stemDown a16
    \stemDown gis16 ) ] | % 347
    \stemDown e'4 ~ \stemDown e16 [ \stemDown d16 -. \stemDown cis16 -.
    \stemDown b16 -. ] \stemDown a16 -. [ \stemDown gis16 -. \stemDown
    fis16 -. \stemDown e16 -. ] \stemDown d16 -. [ \stemDown cis16 -.
    \stemDown b16 -. \stemDown a16 -. ] | % 348
    \stemUp g8 \stemUp g4 -. \stemUp g8 ( \stemUp eis8 ) \stemUp eis4 -.
    \stemUp eis8 | % 349
    \stemUp fis4 -. \stemDown a'4 -. r4 \stemUp dis,,4 -. |
    \barNumberCheck #350
    \stemUp e8. [ \stemUp fis16 ] \stemUp gis16 [ \stemUp a16 \stemUp b16
    \stemUp cis16 ] \stemDown d16 [ \stemDown e16 \stemDown fis16
    \stemDown gis16 ] \stemDown a16 [ \stemDown b16 \stemDown cis16
    \stemDown d16 ] | % 351
    \stemDown e8 [ \stemDown cis16 \stemDown a16 ] \stemDown e8 [
    \stemDown cis16 \stemDown a16 ] \stemUp e4 \stemDown <e b' gis'>4 | % 352
    \stemDown <e cis' a'>4 r4 \stemDown a'4 ( _\p \stemDown cis8 ) r8 | % 353
    \stemDown fis,4 ( \stemDown a8 ) r8 \stemDown b,8. [ \stemDown b16
    \stemDown cis8. \stemDown cis16 ] | % 354
    \stemDown e4 ( \stemDown d8 ) r8 \stemDown d4 ( \stemDown fis8 ) r8
    | % 355
    \stemDown b,4 ( \stemDown d8 ) r8 \stemUp fis,8. [ \stemUp fis16
    \stemUp gis8. \stemUp gis16 ] | % 356
    \stemDown a16 [ \stemDown cis16 \stemDown e16 \stemDown cis16 ]
    \stemUp a16 [ \stemUp e16 \stemUp cis16 \stemUp e16 ] \stemUp fis16
    [ \stemUp d16 \stemUp fis16 \stemUp a16 ] \stemUp gis16 [ \stemUp e16
    \stemUp gis16 \stemUp b16 ] | % 357
    \stemDown a16 [ \stemDown cis16 \stemDown e16 \stemDown cis16 ]
    \stemUp a16 [ \stemUp e16 \stemUp cis16 \stemUp e16 ] \stemUp fis16
    [ \stemUp d16 \stemUp fis16 \stemUp a16 ] \stemUp gis16 [ \stemUp e16
    \stemUp gis16 \stemUp b16 ] | % 358
    \stemUp a16 [ _\f \stemUp e16 \stemUp cis16 \stemUp e16 ] \stemUp a16
    [ \stemUp e16 \stemUp a16 \stemUp e16 ] \stemDown cis'16 [ \stemDown
    a16 \stemDown cis16 \stemDown a16 ] \stemDown e'16 [ \stemDown cis16
    \stemDown e16 \stemDown cis16 ] | % 359
    \stemUp a4 -. \stemDown <e cis' a'>4 -. \stemUp a,4 -. r4 \bar "|."
    \time 3/4  \key d \major \stemUp fis'8 ( [ _\p \stemUp a8 \stemUp
    fis8 \stemUp a8 \stemUp fis8 \stemUp a8 ) ] \stemUp g8 ( [ \stemUp a8
    \stemUp fis8 \stemUp a8 \stemUp fis8 \stemUp a8 ) ] \stemUp fis8 ( [
    \stemUp a8 \stemUp fis8 \stemUp a8 \stemUp fis8 \stemUp a8 ) ]
    \stemUp e8 ( [ \stemUp a8 \stemUp fis8 \stemUp a8 \stemUp fis8
    \stemUp a8 ) ] \stemUp e8 ( [ \stemUp a8 \stemUp e8 \stemUp a8
    \stemUp fis8 \stemUp a8 ) ] \stemUp e8 ( [ \stemUp a8 \stemUp e8
    \stemUp a8 \stemUp d,8 \stemUp fis8 ) ] \stemUp cis8 ( [ \stemUp e8
    \stemUp cis8 \stemUp e8 \stemUp d8 \stemUp e8 ) ] \stemUp cis4 r4 r4
    \stemUp a'4 ( _\f \stemDown d4. \stemDown fis8 ) \stemDown fis8 ( [
    \stemDown e8 ) ] \stemDown d4 r4 \stemUp a4. ( \stemDown d8 [
    \stemDown fis8 \stemDown a8 ) ] \stemDown a8 ( [ \stemDown g8 ) ]
    \stemDown fis4 r4 \stemDown e4. \stemDown a8 ( [ \stemDown fis8
    \stemDown a8 ) ] \stemDown e4. \stemDown a8 ( [ \stemDown b,8
    \stemDown fis'8 ) ] \stemUp a,2 \grace { \stemUp cis16 ( } \stemUp b8.
    ) [ \stemUp a16 ] \stemUp a8 \stemUp b8 ( [ _\p \stemUp a8 \stemUp g8
    \stemUp fis8 \stemUp e8 ) ] \stemUp fis8 ( [ \stemUp d8 \stemUp fis8
    \stemUp d8 \stemUp fis8 \stemUp d8 ) ] \stemUp d8 \stemDown b'4 (
    \stemDown a8 [ \stemDown g8 \stemDown fis8 ) ] \stemUp g8 ( [
    \stemUp e8 \stemUp g8 \stemUp e8 \stemUp g8 \stemUp e8 ) ] \stemUp e8
    \stemDown cis'4 ( \stemDown b8 [ \stemDown a8 \stemDown gis8 ) ]
    \stemUp a8 ( [ \stemUp cis,8 \stemUp b8 \stemUp e8 \stemUp cis8
    \stemUp g'8 ) ] \stemUp fis8 ( [ \stemUp d8 \stemUp e8 \stemUp a8
    \stemUp d,8 \stemUp a'8 ) ] \stemUp e8 ( [ \stemUp g8 \stemUp fis8
    \stemUp a8 \stemUp cis,8 \stemUp e8 ) ] \stemUp d4 r4 r4 \stemDown
    fis'4. ( _\f \stemDown e8 [ \stemDown d8 \stemDown cis8 ) ]
    \stemDown b4 r4 r4 \stemDown g'4. ( \stemDown fis8 [ \stemDown e8
    \stemDown d8 ) ] \stemDown cis4 r4 r4 \stemDown a'4. ( \stemDown g8
    [ \stemDown fis8 \stemDown e8 ) ] \stemDown d8. ( [ \stemDown g16 )
    ] \stemDown g4. ( \stemDown fis8 ) \stemDown e16 ( [ \stemDown b'16
    \stemDown g16 \stemDown e16 ) ] \stemDown d4 \grace { \stemUp fis16
        ( } \stemDown e8. [ \stemDown d16 ) ] \stemDown d8 \stemUp b8 (
    [ _\p \stemUp a8 \stemUp g8 \stemUp fis8 \stemUp e8 ) ] r8 \stemUp
    fis8 [ \stemUp fis8 \stemUp fis8 \stemUp fis8 \stemUp fis8 ] r8
    \stemUp e8 [ \stemUp e8 \stemUp e8 \stemUp e8 \stemUp e8 ] r8
    \stemUp d4 \stemUp fis8 ( [ \stemUp e8 \stemUp d8 ) ] \stemUp b8. (
    [ \stemUp bis16 ) ] \stemUp cis4 r4 r8 \stemUp a'8 -. [ \stemUp e8
    -. \stemUp a8 -. \stemUp e8 -. \stemUp a8 -. ] r8 \stemUp fis8 -. [
    \stemUp d8 -. \stemUp fis8 -. \stemUp d8 -. \stemUp fis8 -. ] r8
    \stemUp g8 -. [ \stemUp e8 -. \stemUp g8 -. \stemUp e8 -. \stemUp g8
    -. ] r8 \stemUp a8 -. [ \stemUp fis8 -. \stemUp a8 -. \stemUp fis8
    -. \stemUp a8 -. ] r8 \stemUp b8 -. [ \stemUp d,8 -. \stemUp b'8 -.
    \stemUp d,8 -. \stemUp b'8 -. ] \stemUp cis,8 r8 \stemUp a'8 r8
    \stemUp fis8 r8 r8 \stemUp e8 ( [ \stemUp cis8 \stemUp e8 \stemUp d8
    \stemUp b8 ) ] \stemUp gis'4 ( \stemUp a8 ) \stemUp cis,4 ( \stemUp
    d8 ) \stemUp e8 r8 \stemDown e'8 -. r8 \stemDown a8 -. r8 r4
    \stemDown fis8 -. r8 \stemDown b8 -. r8 r4 \stemDown g8 -. r8
    \stemDown cis8 -. r8 r4 \stemDown a8 -. r8 \stemDown d8 -. r8 r4
    \stemDown d,8 -. r8 \stemDown b'8 -. r8 r8 \stemUp cis,,8 [ \stemUp
    e8 \stemUp a8 \stemUp cis8 \stemUp e8 ] r8 \stemUp d,8 [ \stemUp fis8
    \stemUp b8 \stemUp d8 \stemUp fis8 ] r8 \stemUp cis,8 [ \stemUp cis8
    \stemUp cis8 \stemUp cis8 \stemUp cis8 ] \stemUp b16 [ _\markup{
        \tiny\italic {cresc.} } \stemUp b16 \stemUp b16 \stemUp b16 ]
    \stemUp b4 :16 \stemUp b4 :16 \stemUp a8 _\f \stemUp a'4 \stemDown
    cis4 \stemDown e8 \stemDown a8 \stemUp cis,,8 [ _\p \stemUp cis8
    \stemUp cis8 \stemUp cis8 \stemUp cis8 ] \stemUp d8 _\f \stemUp gis4
    \stemDown b4 \stemDown d8 \stemDown gis8 \stemUp d,8 [ _\p \stemUp d8
    \stemUp d8 \stemUp d8 \stemUp d8 ] \stemUp cis8 _\f \stemUp g'4
    \stemDown cis4 \stemDown e8 \stemDown g4 r4 r4 ^\fermata \stemUp
    fis,8 ( [ _\p \stemUp a8 \stemUp fis8 \stemUp a8 \stemUp fis8
    \stemUp a8 ) ] \stemUp g8 ( [ \stemUp a8 \stemUp fis8 \stemUp a8
    \stemUp fis8 \stemUp a8 ) ] \stemUp fis8 ( [ \stemUp a8 \stemUp fis8
    \stemUp a8 \stemUp fis8 \stemUp a8 ) ] \stemUp e8 ( [ \stemUp a8
    \stemUp fis8 \stemUp a8 \stemUp fis8 \stemUp a8 ) ] \stemUp e8 ( [
    \stemUp a8 \stemUp e8 \stemUp a8 \stemUp fis8 \stemUp a8 ) ] \stemUp
    e8 ( [ \stemUp a8 \stemUp e8 \stemUp a8 \stemUp d,8 \stemUp fis8 ) ]
    \stemUp cis8 ( [ \stemUp e8 \stemUp cis8 \stemUp e8 \stemUp d8
    \stemUp e8 ) ] \stemUp cis8 \stemUp b'8 ( [ \stemUp a8 \stemUp g8
    \stemUp fis8 \stemUp e8 ) ] \stemUp fis8 ( [ \stemUp d8 \stemUp fis8
    \stemUp d8 \stemUp fis8 \stemUp d8 ) ] \stemUp d8 \stemDown b'4 (
    \stemDown a8 [ \stemDown g8 \stemDown fis8 ) ] \stemUp g8 ( [
    \stemUp e8 \stemUp g8 \stemUp e8 \stemUp g8 \stemUp e8 ) ] \stemUp e8
    \stemDown cis'4 ( \stemDown b8 [ \stemDown a8 \stemDown gis8 ) ]
    \stemUp a8 ( [ \stemUp cis,8 \stemUp b8 \stemUp e8 \stemUp cis8
    \stemUp g'8 ) ] \stemUp fis8 ( [ \stemUp d8 \stemUp e8 \stemUp a8
    \stemUp d,8 \stemUp a'8 ) ] \stemUp e8 ( [ \stemUp g8 \stemUp fis8
    \stemUp a8 \stemUp cis,8 \stemUp e8 ) ] \stemUp d4 r4 r4 \stemDown
    fis'4. ( _\f \stemDown e8 [ \stemDown d8 \stemDown cis8 ) ]
    \stemDown b4 r4 r4 \stemDown g'4. ( \stemDown fis8 [ \stemDown e8
    \stemDown d8 ) ] \stemDown cis4 r4 r4 \stemDown a'4. ( \stemDown g8
    [ \stemDown fis8 \stemDown e8 ) ] \stemDown d8. ( [ \stemDown g16 )
    ] \stemDown g4. ( \stemDown fis8 ) \stemDown e16 ( [ \stemDown b'16
    \stemDown g16 \stemDown e16 ) ] \stemDown d4 \grace { \stemUp fis16
        ( } \stemDown e8. ) [ \stemDown d16 ] \stemDown d8 \stemUp a8 [
    _\p \stemUp a8 \stemUp a8 \stemUp a8 \stemUp a8 ] r8 \stemUp a8 [
    \stemUp a8 \stemUp a8 \stemUp a8 \stemUp a8 ] r8 \stemUp a8 [
    \stemUp a8 \stemUp a8 \stemUp a8 \stemUp a8 ] r8 \stemUp g8 [
    \stemUp fis8 \stemUp fis8 \stemUp cis8 \stemUp cis8 ] \stemUp d8 [
    \stemUp d8 \stemUp d8 \stemUp d8 \stemUp d8 \stemUp d8 ] r8 \stemUp
    e8 [ \stemUp e8 \stemUp e8 \stemUp d8 \stemUp d8 ] r8 \stemDown g'8
    [ \stemDown g8 \stemDown g8 \stemDown fis8 \stemDown fis8 ]
    \stemDown e4 r8 \stemUp g,8 ( [ \stemUp a8 \stemUp b8 ) ] r8 \stemUp
    fis8 [ \stemUp fis8 \stemUp fis8 \stemUp fis8 \stemUp fis8 ] \stemUp
    e16 [ \stemUp e16 \stemUp e16 \stemUp e16 ] \stemUp e4 :16 \stemUp e4
    :16 \stemUp d4 r4 \stemUp b8. ( [ \stemUp g'16 ) ] \stemUp fis2
    \stemUp f8. [ \stemUp e16 ] \stemUp d4 r4 \stemDown b''8 r8
    \stemDown a8 r8 \stemDown fis8 r8 \stemDown e8 r8 \stemDown d8 -. r8
    \stemUp d,8 -. r8 \stemUp d8 -. r8 \stemUp d4 r4 r4 \bar "|."
    \time 6/8  \key a \major r8 -. [ r8 _\p \stemDown cis'8 -. ]
    \stemDown cis8 -. [ \stemDown cis8 -. \stemDown cis8 -. ] \stemDown
    b4. ( \stemDown cis8 ) r8 r8 \stemUp a8 -. [ \stemUp a8 -. ] r8
    \stemUp a8 -. [ \stemUp a8 -. ] r8 \stemUp e8 ( [ \stemUp fis8
    \stemUp g8 ) ] \stemUp gis8 r8 \stemUp a16 ( [ \stemUp b16 ) ]
    \stemDown cis8 -. [ r8 \stemDown cis8 -. ] \stemDown cis8 -. [
    \stemDown cis8 -. \stemDown cis8 -. ] \stemDown d4. ( \stemDown cis8
    ) r8 r8 \stemDown b8 r8 r8 \stemUp d,8 r8 r8 \stemUp cis4 ( \stemUp
    e8 ) \stemUp cis8 r8 \stemDown cis'16 ( [ _\p \stemDown d16 ) ]
    \stemDown e8 -. [ _\markup{ \tiny\italic {cresc.} } \stemDown e8 -.
    \stemDown e8 -. ] \stemDown e8 -. [ \stemDown e8 -. \stemDown e8 -.
    ] \stemDown gis4. ( _\f \stemDown a8 ) r8 \stemDown a16 ( [ _\p
    \stemDown gis16 ) ] \stemDown fis8 -. r8 \stemDown fis16 ( [
    \stemDown e16 ) ] \stemDown d8 -. r8 \stemDown d16 ( [ \stemDown cis16
    ) ] \stemDown b8 -. [ \stemDown b16 ( \stemDown cis16 \stemDown a16
    \stemDown cis16 ) ] \stemDown b8 r8 \stemDown cis16 ( [ \stemDown d16
    ) ] \stemDown e8 -. [ _\markup{ \tiny\italic {cresc.} } \stemDown e8
    -. \stemDown e8 -. ] \stemDown e8 -. [ \stemDown e8 -. \stemDown e8
    -. ] \stemDown d'4. ( _\f \stemDown cis8 ) r8 \stemDown a16 ( [ _\p
    \stemDown gis16 ) ] \stemDown fis8 -. r8 \stemDown d16 ( [ \stemDown
    cis16 ) ] \stemDown b8 -. r8 \stemDown e16 ( [ \stemDown gis,16 ) ]
    \stemDown a4 ( \stemDown cis8 ) \stemUp a4 r8 r8 \stemUp <d, e>8 [
    _\p \stemUp <d e>8 ] \stemUp <d e>8 [ \stemUp <d e>8 \stemUp <d e>8
    ] r8 \stemUp <cis e>8 [ \stemUp <cis e>8 ] \stemUp <cis e>8 [
    \stemUp <cis e>8 \stemUp <cis e>8 ] r8 \stemUp <a' b>8 [ \stemUp <a
        b>8 ] \stemUp <a b>8 [ \stemUp <a b>8 \stemUp <a b>8 ] \stemUp
    <gis b>4 r8 r4 \stemUp dis8 -. \stemUp e4 r8 r4 \stemUp dis8 -.
    \stemUp e4 r8 r4. r8 \stemDown gis8 ( [ \stemDown a8 ] \stemDown b8
    [ \stemDown cis8 \stemDown d8 ) ] \stemDown cis8 -. [ r8 \stemDown
    cis8 -. ] \stemDown cis8 -. [ \stemDown cis8 -. \stemDown cis8 -. ]
    \stemDown b4. ( \stemUp a8 ) r8 r8 \stemUp a8 -. [ \stemUp a8 -. ] r8
    \stemDown b8 -. [ \stemDown b8 -. ] r8 \stemUp e,8 ( [ \stemUp fis8
    \stemUp g8 ) ] \stemUp gis8 r8 \stemUp a16 ( [ \stemUp b16 ) ]
    \stemDown cis8 -. [ r8 \stemDown cis8 -. ] \stemDown cis8 -. [
    \stemDown cis8 -. \stemDown cis8 -. ] \stemDown d4. ( \stemDown cis8
    ) r8 r8 \stemDown b8 r8 r8 \stemUp d,8 r8 r8 \stemUp cis8 [ \stemUp
    a'16 ( \stemUp gis16 \stemUp fis16 \stemUp e16 ] \stemUp d16 [
    \stemUp cis16 \stemUp b16 \stemUp a16 \stemUp gis16 \stemUp a16 ) ]
    \stemUp b8 [ \stemUp b'16 ( \stemUp a16 \stemUp gis16 \stemUp fis16
    ] \stemUp e16 [ \stemUp d16 \stemUp cis16 \stemUp b16 \stemUp a16
    \stemUp b16 ) ] \stemUp cis8 [ \stemUp cis'16 ( _\markup{
        \tiny\italic {cresc.} } \stemUp b16 \stemUp a16 \stemUp gis16 ]
    \stemUp fis16 [ \stemUp e16 \stemUp d16 \stemUp cis16 \stemUp b16
    \stemUp cis16 ) ] \stemUp d8 [ \stemUp d'16 ( \stemUp cis16 \stemUp
    b16 \stemUp a16 ] \stemUp gis16 [ \stemUp fis16 \stemUp e16 \stemUp
    d16 \stemUp cis16 \stemUp d16 ) ] \stemUp e8 r8 r8 r4. \stemUp a2.
    _\p \stemUp fis4 ( \stemUp ais8 \stemDown b8 [ \stemDown cis8
    \stemDown d8 ) ] \stemDown cis4 r8 \stemDown d4 r8 \stemUp gis,8 [
    \stemUp gis8 \stemUp gis8 ] \stemUp a8 r8 \stemUp a8 _\f \stemDown
    a'8 ( [ \stemDown cis8 ) ] \stemDown cis4 -. \stemDown a8 -. [
    \stemDown e8 -. ] \stemDown fis8 ( [ \stemDown a8 ) ] \stemDown a4
    -. \stemDown fis8 -. [ \stemDown d8 -. ] \stemDown cis8 -. [
    \stemDown e16 ( \stemDown d16 \stemDown e16 \stemDown cis16 ) ]
    \stemDown b8 -. [ \stemDown d16 ( \stemDown cis16 \stemDown d16
    \stemDown b16 ) ] \stemUp a4 r8 r4. \stemDown d2. _\p \stemDown cis8
    r8 r8 \stemDown b8 r8 r8 \stemUp a8 -. [ \stemUp a8 -. \stemUp a8 -.
    ] \grace { \stemUp cis16 ( } \stemUp b8 ) [ \stemUp a8 \stemUp b8 ]
    \stemDown cis4 r8 r4. \stemUp gis4. ( \stemDown e'4. ) \stemDown e8
    r8 r8 \stemDown d8 r8 r8 \stemDown cis8 r8 r8 \stemUp gis8 [ \stemUp
    gis8 \stemUp gis8 ] \stemDown <cis a'>16 [ _\f \stemDown <cis a'>16
    \stemDown <cis a'>16 \stemDown <cis a'>16 \stemDown <cis a'>16
    \stemDown <cis a'>16 ] \stemDown <cis a'>4. :64 \stemDown <cis a'>8
    [ \stemDown e16 \stemDown e16 \stemDown cis'16 \stemDown cis16 ]
    \stemDown d16 [ \stemDown d16 \stemDown b16 \stemDown b16 \stemDown
    gis16 \stemDown gis16 ] \stemDown <cis, a'>2. :64 \stemDown <cis a'>8
    [ \stemDown e16 \stemDown e16 \stemDown cis'16 \stemDown cis16 ]
    \stemDown d16 [ \stemDown d16 \stemDown b16 \stemDown b16 \stemDown
    gis16 \stemDown gis16 ] \stemDown a4 r8 \stemDown <a, e' cis'>4 r8
    \stemDown <e cis' a'>4 r8 r4. \stemUp a4. _\p \grace { \stemUp cis16
        ( } \stemDown b8 ) -. [ \stemDown a8 -. \stemDown b8 -. ]
    \stemDown cis2. ( \stemDown d8 ) r8 r8 \stemDown fis8 r8 r8
    \stemDown cis4 ( \stemUp e,8 ) \stemUp cis4 r8 \stemUp gis'4 r8 r8
    \stemUp gis8 -. [ \stemUp gis8 -. ] \stemUp a4 r8 r8 \stemDown a8 -.
    [ \stemDown cis8 -. ] \stemUp fis,4 ( \stemUp ais8 \stemDown b8 [
    \stemDown cis8 \stemDown d8 ) ] \stemUp a4 ( \stemUp b16 [ \stemUp a16
    ) ] \stemUp gis8 r8 r8 \stemUp cis,4. \grace { \stemUp e16 ( }
    \stemUp d8 ) -. [ \stemUp cis8 -. \stemUp d8 -. ] \stemUp e4. ~
    \stemUp e4 ( \stemUp eis8 ) \stemUp fis8 r8 r8 \stemUp a8 r8 r8
    \stemUp e4 r8 r8 \stemDown a'8 [ \stemDown a8 ] \stemDown a4 r8
    \stemUp fis,4. ( \stemUp gis4 ) r8 r4. \stemUp fis4 r8 r4 \stemUp a8
    \stemDown a4. ( \stemDown gis16 ) [ \stemDown b16 ( \stemDown cis16
    \stemDown dis16 \stemDown e16 \stemDown fis16 ) ] \stemDown g4
    \stemDown g8 \grace { \stemUp a16 ( } \stemDown g8 ) -. [ \stemDown
    fis8 -. \stemDown g8 -. ] \stemDown fis4 ( \stemDown b8 ) \stemDown
    b8. [ \stemDown g16 ( \stemDown a16 \stemDown fis16 ) ] \stemDown e4
    \stemDown e8 \grace { \stemUp fis16 ( } \stemDown e8 ) -. [
    \stemDown dis8 -. \stemDown e8 -. ] \stemDown dis4 ( \stemDown fis8
    ) \stemUp b,8 ( [ \stemUp ais8 \stemUp a8 ) ] \stemUp g4 \stemUp g8
    \grace { \stemUp a16 ( } \stemUp g8 ) -. [ \stemUp fis8 -. \stemUp g8
    -. ] \stemUp fis4 ( \stemDown b8 ) \stemUp b8. [ \stemUp g16 (
    \stemUp a16 \stemUp fis16 ) ] \stemUp e4 \stemUp e8 \grace { \stemUp
        fis16 ( } \stemUp e8 ) -. [ \stemUp dis8 -. \stemUp e8 -. ]
    \stemUp d4 ( \stemUp g8 ) \stemUp g8. [ \stemUp e16 ( \stemUp f16
    \stemUp d16 ) ] \stemUp c4 \stemUp g'8 \stemUp f4 \stemUp e8 \stemUp
    dis4 ( \stemUp e16 [ \stemUp fis16 ) ] \stemUp gis8 r8 r8 r8 \stemUp
    fis8 [ \stemUp fis8 ] r8 \stemUp fis8 [ \stemUp fis8 ] r8 \stemUp e8
    [ \stemUp e8 ] r8 \stemDown b'8 [ \stemDown b8 ] r8 \stemUp a8 [
    \stemUp a8 ] r8 \stemUp fis8 [ \stemUp fis8 ] r8 \stemUp e8 [
    \stemUp e8 ] r8 \stemDown b'8 [ \stemDown b8 ] r8 \stemUp a8 [
    \stemUp a8 ] r8 \stemUp fis8 [ \stemUp fis8 ] \stemUp gis4 r8 r8
    \stemDown b8 [ \stemDown b8 ] \stemUp fis4 r8 r8 \stemDown cis'8 [
    \stemDown cis8 ] \stemUp gis8 [ \stemUp gis8 \stemUp gis8 ] \stemUp
    fis8 [ \stemUp fis8 \stemUp fis8 ] \stemDown b4 r8 r8 \stemUp gis8
    -. [ \stemUp b8 -. ] \stemUp fis4 r8 r8 \stemDown cis'8 -. [
    \stemDown e8 -. ] \stemUp g,2. ~ \stemDown g8 [ \stemDown dis'8 (
    \stemDown e8 ] \stemDown g8 [ \stemDown dis8 \stemDown e8 ) ]
    \stemDown gis8 [ \stemDown gis,8 \stemDown gis8 ] \stemUp gis8 [
    \stemUp gis8 \stemUp gis8 ] \stemUp fis8 [ \stemUp fis8 \stemUp fis8
    ] \stemUp fis8 [ \stemUp fis8 \stemUp fis8 ] \stemUp e4 r8 r4.
    \stemDown f'4. ~ _\sfp \stemDown f8 ( [ \stemDown e8 \stemDown d8 )
    ] \stemDown c4 r8 r4. \stemUp b,8 ( [ \stemUp d8 \stemUp e8 ) ]
    \stemUp a,8 ( [ \stemUp c8 \stemUp e8 ) ] \stemUp gis,4 r8 r4.
    \stemDown <b' gis'>2. ( _\sfp \stemDown <a a'>4 ) r8 r4. r8 \stemUp
    gis8 ( [ \stemUp a8 ] \stemDown c8 [ \stemDown b8 \stemDown a8 ) ]
    \stemUp gis4 r8 r4. r4 r8 \stemDown dis'4. ( \stemDown e8 ) r8 r8 r4.
    r4 r8 \stemUp dis,4. ( \stemUp e8 ) r8 r8 r4. R2. r8 \stemUp gis8 (
    [ \stemUp a8 ] \stemDown c8 [ \stemDown b8 \stemDown a8 ) ] \stemUp
    gis8 -. [ \stemUp gis8 ( \stemUp a8 ) ] \stemDown b8 -. [ \stemDown
    b8 ( \stemDown cis8 ) ] \stemDown d2. \stemDown cis8 -. [ r8
    \stemDown cis8 -. ] \stemDown cis8 -. [ \stemDown cis8 -. \stemDown
    cis8 -. ] \stemDown b4. ( \stemDown cis8 ) r8 r8 \stemUp a8 -. [
    \stemUp a8 -. ] r8 \stemUp a8 -. [ \stemUp a8 -. ] r8 \stemUp e8 ( [
    \stemUp fis8 \stemUp g8 ) ] \stemUp gis8 r8 \stemUp a16 ( [ \stemUp
    b16 ) ] \stemDown cis8 -. [ r8 \stemDown cis8 -. ] \stemDown cis8 -.
    [ \stemDown cis8 -. \stemDown cis8 -. ] \stemDown d4. ( \stemDown
    cis8 ) r8 r8 \stemDown b8 r8 r8 \stemUp d,8 r8 r8 \stemDown <cis'
        a'>16 [ _\f \stemDown <cis a'>16 \stemDown <cis a'>16 \stemDown
    <cis a'>16 \stemDown <cis a'>16 \stemDown <cis a'>16 ] \stemDown
    <cis a'>4. :64 \stemDown <cis a'>8 [ \stemDown e16 \stemDown e16
    \stemDown cis'16 \stemDown cis16 ] \stemDown d16 [ \stemDown d16
    \stemDown b16 \stemDown b16 \stemDown gis16 \stemDown gis16 ]
    \stemDown <cis, a'>2. :64 \stemDown <cis a'>8 [ \stemDown e16
    \stemDown e16 \stemDown cis'16 \stemDown cis16 ] \stemDown d16 [
    \stemDown d16 \stemDown b16 \stemDown b16 \stemDown gis16 \stemDown
    gis16 ] \stemDown a16 [ \stemDown a16 \stemDown e16 \stemDown e16
    \stemDown cis'16 \stemDown cis16 ] \stemDown d16 [ \stemDown d16
    \stemDown b16 \stemDown b16 \stemDown gis16 \stemDown gis16 ]
    \stemDown a16 [ \stemDown a16 \stemDown e16 \stemDown e16 \stemDown
    cis'16 \stemDown cis16 ] \stemDown d16 [ \stemDown d16 \stemDown b16
    \stemDown b16 \stemDown gis16 \stemDown gis16 ] \stemDown a16 [
    \stemDown a16 \stemDown e16 \stemDown e16 \stemDown cis'16 \stemDown
    cis16 ] \stemDown b16 [ \stemDown b16 \stemDown gis16 \stemDown gis16
    \stemDown eis16 \stemDown eis16 ] \stemDown fis16 [ \stemDown fis16
    \stemDown cis16 \stemDown cis16 \stemDown a'16 \stemDown a16 ]
    \stemDown b16 [ \stemDown b16 \stemDown gis16 \stemDown gis16
    \stemDown eis16 \stemDown eis16 ] \stemDown fis16 [ \stemDown fis16
    \stemDown a16 \stemDown a16 \stemDown a,16 \stemDown a16 ] \stemUp
    cis,16 [ \stemUp cis16 \stemUp a'16 \stemUp a16 \stemUp g'16 \stemUp
    g16 ] \stemDown fis16 [ \stemDown fis16 \stemDown a16 \stemDown a16
    \stemDown a,16 \stemDown a16 ] \stemUp cis,16 [ \stemUp cis16
    \stemUp a'16 \stemUp a16 \stemUp g'16 \stemUp g16 ] \stemDown fis16
    [ \stemDown fis16 \stemDown d'16 \stemDown d16 \stemDown e,16
    \stemDown e16 ] \stemDown cis'16 [ \stemDown cis16 \stemDown d,16
    \stemDown d16 \stemDown b'16 \stemDown b16 ] \stemDown cis,16 [
    \stemDown cis16 \stemDown a'16 \stemDown a16 \stemDown b,16
    \stemDown b16 ] \stemDown gis'16 [ \stemDown gis16 \stemDown a,16
    \stemDown a16 \stemDown fis'16 \stemDown fis16 ] \stemDown b4. :64
    \stemDown bis4. :64 \stemDown cis4. :64 \stemDown bis4. :64
    \stemDown cis4. :64 \stemDown bis4. :64 \stemUp cis8 [ \stemUp cis,,8
    \stemUp cis8 ] \stemUp cis8 [ \stemUp cis8 \stemUp cis8 ] \stemUp
    cis4 r8 r4. r8 \stemUp fis8 ( [ _\p \stemUp a8 ] \stemDown cis8 ) [
    \stemDown cis8 -. \stemDown cis8 -. ] r8 \stemUp gis8 ( [ \stemUp b8
    ] \stemDown d8 ) [ \stemDown d8 -. \stemDown d8 -. ] r8 \stemUp eis,8
    ( [ \stemUp gis8 ] \stemDown cis8 ) [ \stemDown cis8 -. \stemDown
    cis8 -. ] r8 \stemDown a8 ( [ \stemDown d8 ] \stemDown cis8 ) [
    \stemDown cis8 -. \stemDown cis8 -. ] \stemDown b8 ( [ \stemDown cis8
    \stemDown b8 ] \stemUp a8 [ \stemUp cis8 \stemUp a8 ) ] \stemDown b8
    ( [ \stemDown cis8 \stemDown b8 ] \stemUp a8 [ \stemUp cis8 \stemUp
    a8 ) ] \stemUp fis2. \stemUp eis4 ( \stemUp gis8 \stemDown cis4
    \stemUp eis,8 ) \stemUp fis8 [ \stemUp cis8 \stemUp cis8 ] \stemUp
    cis8 [ \stemUp cis8 \stemUp cis8 ] r8 \stemUp b8 [ \stemUp b8 ]
    \stemUp b8 [ \stemUp b8 \stemUp b8 ] r8 \stemUp b8 [ \stemUp b8 ]
    \stemUp b8 [ \stemUp b8 \stemUp b8 ] r8 \stemUp a8 ( [ \stemUp d8 ]
    \stemUp cis8 ) [ \stemUp cis8 -. \stemUp cis8 -. ] R2. r8 \stemUp
    fis8 -. [ \stemUp fis8 -. ] r8 \stemUp fis8 -. [ \stemUp fis8 -. ] r8
    \stemUp fis8 -. [ \stemUp fis8 -. ] r8 \stemUp fis8 -. [ \stemUp fis8
    -. ] \stemDown eis8 [ \stemDown gis'8 \stemDown gis8 ] \stemDown gis8
    [ \stemDown gis8 \stemDown gis8 ] \stemDown a4 r8 r4. r8 \stemDown
    gis8 -. [ \stemDown gis8 -. ] \stemDown gis8 -. [ \stemDown gis8 (
    \stemDown cis8 ) ] \stemDown bis4 r8 r4. r4 \stemUp cis,,8 \stemUp
    cis8 [ \stemUp cis8 \stemUp cis8 ] \stemUp cis8 r8 \stemDown <a' g'>8
    _\f \stemDown <a g'>8 [ \stemDown <a g'>8 \stemDown <a g'>8 ]
    \stemDown <a g'>4 r8 r4. \stemUp <a, g'>2. _\markup{ \tiny\italic
        {(} } _\p _\markup{ \tiny\italic {)} } r8 \stemUp fis'8 ( [
    \stemUp g8 ] \stemUp a8 ) [ \stemUp a8 -. \stemUp a8 -. ] r8
    \stemDown d8 ( [ \stemDown e8 ] \stemDown fis8 ) [ \stemDown fis8 -.
    \stemDown fis8 -. ] r8 \stemDown fis8 ( [ \stemDown g8 ] \stemDown a8
    ) r8 \stemUp fis,8 ( \stemUp e8 ) r8 r8 \stemDown cis'8 ( [
    \stemDown d8 \stemDown dis8 ) ] \stemDown e8 [ \stemDown a,8 (
    \stemDown b8 ] \stemDown cis8 ) [ \stemDown cis8 -. \stemDown cis8
    -. ] r8 \stemDown cis8 ( [ \stemDown d8 ] \stemDown e8 ) [ \stemDown
    e8 -. \stemDown e8 -. ] r8 \stemDown e8 ( [ \stemDown fis8 ]
    \stemDown g8 ) r8 \stemUp e,8 ( \stemUp fis8 ) r8 r8 \stemDown fis'8
    -. [ \stemDown g8 -. \stemDown a8 -. ] \stemDown b4 r8 r4. r8
    \stemDown b8 [ \stemDown b8 ] \stemDown b8 [ \stemDown b8 \stemDown
    b8 ] \stemDown a4 r8 r4. r8 \stemDown a8 [ \stemDown a8 ] \stemDown
    a8 [ \stemDown a8 \stemDown a8 ] \stemDown g4 r8 r4. r8 \stemDown g8
    [ \stemDown g8 ] \stemDown g8 [ \stemDown g8 \stemDown g8 ] \stemUp
    fis8 [ \stemUp fis,8 \stemUp fis8 ] r8 \stemUp g8 [ \stemUp g8 ] r8
    \stemUp a8 [ \stemUp a8 ] r8 \stemUp g8 [ \stemUp g8 ] r8 \stemUp
    fis8 [ \stemUp fis8 ] \stemUp e8 r8 \stemUp a8 \stemDown a'8 [ r8
    \stemDown a8 ] \stemDown b16 ( [ \stemDown a16 \stemDown gis16
    \stemDown a16 \stemDown b16 \stemDown a16 ) ] \stemDown g2. (
    \stemDown fis8 ) [ r8 \stemDown d8 ] \stemDown e16 ( [ \stemDown d16
    \stemDown cis16 \stemDown d16 \stemDown e16 \stemDown d16 ) ]
    \stemDown d4. ( \stemDown cis4. ) \stemDown b8 -. [ r8 \stemDown d8
    -. ] \stemDown e16 ( [ \stemDown d16 \stemDown cis16 \stemDown d16
    \stemDown fis16 \stemDown e16 ) ] \stemDown d2. \stemDown c8 -. [ r8
    \stemDown c8 -. ] \stemDown d16 ( [ \stemDown c16 \stemDown b16
    \stemDown c16 \stemDown d16 \stemDown c16 ) ] \stemDown b2. ~
    \stemDown b8 \stemUp gis8 -. [ _\f \stemUp b8 -. ] \stemDown e8 -. [
    \stemDown gis8 -. \stemDown b8 -. ] \stemUp <e,, b' e>4 r8 r4.
    \stemUp a4. _\p \grace { \stemUp cis16 ( } \stemDown b8 ) -. [
    \stemDown a8 -. \stemDown b8 -. ] \stemDown cis2. ( \stemDown d8 ) r8
    r8 \stemDown fis8 r8 r8 \stemDown cis4 ( \stemUp e,8 ) \stemUp cis4
    r8 \stemUp gis'4 r8 r8 \stemUp gis8 -. [ \stemUp gis8 -. ] \stemUp a4
    r8 r8 \stemDown a8 -. [ \stemDown cis8 -. ] \stemUp fis,4 ( \stemUp
    ais8 \stemDown b8 [ \stemDown cis8 \stemDown d8 ) ] \stemUp a4 (
    \stemUp b16 [ \stemUp a16 ) ] \stemUp gis8 r8 r8 \stemDown c4.
    \grace { \stemUp e16 ( } \stemDown d8 ) [ \stemDown c8 \stemDown d8
    ] \stemDown e2. ~ \stemDown e8. [ \stemDown f16 \stemDown e8 ]
    \stemDown d4 ( \stemDown c8 ) \stemDown b2. \stemDown c4. \grace {
        \stemUp e16 ( } \stemDown d8 ) [ \stemDown c8 \stemDown d8 ]
    \stemDown e2. ~ \stemDown e8. [ \stemDown f16 \stemDown e8 ]
    \stemDown d4 ( \stemDown c8 ) \stemDown b4 ( \stemDown d8 )
    \stemDown d4 ( \stemDown e8 ) \stemDown f4. \grace { \stemUp a16 ( }
    \stemDown g8 ) [ \stemDown f8 \stemDown g8 ] \stemDown a2. ~
    \stemDown a8. [ \stemDown bes16 \stemDown a8 ] \stemDown g4 (
    \stemDown f8 ) \stemDown e4 r8 r4. r8 \stemUp a,8 -. [ \stemUp a8 -.
    ] r8 \stemUp f8 -. [ \stemUp f8 -. ] \stemUp d8 r8 r8 \stemDown b'8
    ( [ \stemDown c8 \stemDown d8 ) ] r8 \stemUp g,8 -. [ \stemUp g8 -.
    ] r8 \stemUp e8 -. [ \stemUp e8 -. ] \stemUp c8 r8 r8 \stemDown c'4.
    r8 \stemDown d8 -. [ \stemDown d8 -. ] r8 \stemDown b8 -. [
    \stemDown b8 -. ] \stemUp gis8 r8 r8 \stemUp gis8 ( [ \stemUp a8
    \stemUp b8 ) ] R2.*3 r4 r8 r16 \stemDown e16 ( [ \stemDown fis16
    \stemDown gis16 \stemDown a16 \stemDown b16 ) ] \stemDown c4
    \stemDown c8 \grace { \stemUp d16 ( } \stemDown c8 ) [ \stemDown b8
    \stemDown c8 ] \stemDown b4 ( \stemDown e8 ) \stemDown e8 r8 r8
    ^\fermata R2.*2 \stemUp f,,4 \stemUp f8 \grace { \stemUp g16 ( }
    \stemUp f8 ) [ \stemUp e8 \stemUp f8 ] \stemUp e4 ( \stemUp a8 )
    \stemUp a8. [ \stemUp g16 ( \stemUp f16 \stemUp e16 ) ] \stemUp dis8
    [ \stemUp a'8 \stemUp a8 ] \stemUp a8 [ \stemUp a8 \stemUp a8 ]
    \stemUp a8 r8 r8 \stemUp dis,8 r8 r8 \stemUp e8 [ \stemUp gis8
    \stemUp gis8 ] r8 \stemDown b8 [ \stemDown b8 ] r8 \stemUp a8 [
    \stemUp a8 ] r8 \stemUp fis8 [ \stemUp fis8 ] r8 \stemUp gis8 [
    \stemUp gis8 ] r8 \stemDown b8 [ \stemDown b8 ] r8 \stemUp a8 [
    \stemUp a8 ] r8 \stemUp fis8 [ \stemUp fis8 ] \stemUp e4 r8 r4.
    \stemDown f'4. ~ _\sfp \stemDown f8 ( [ \stemDown e8 \stemDown d8 )
    ] \stemDown c4 r8 r4. \stemUp b,8 ( [ \stemUp d8 \stemUp e8 ) ]
    \stemUp a,8 ( [ \stemUp c8 \stemUp e8 ) ] \stemUp gis,4 r8 r4.
    \stemDown <b' gis'>2. ( _\sfp \stemDown <a a'>4 ) r8 r4. r8 \stemUp
    gis8 ( [ \stemUp a8 ] \stemDown c8 [ \stemDown b8 \stemDown a8 ) ]
    \stemUp gis4 r8 r4. r4 r8 \stemDown dis'4. ( \stemDown e8 ) r8 r8 r4.
    r4 r8 \stemUp dis,4. ( \stemUp e8 ) r8 r8 r4. R2. r8 \stemUp gis8 (
    [ \stemUp a8 ] \stemDown c8 [ \stemDown b8 \stemDown a8 ) ] \stemUp
    gis8 -. [ \stemUp gis8 ( \stemUp a8 ) ] \stemDown b8 -. [ \stemDown
    b8 ( \stemDown cis8 ) ] \stemDown d2. \stemDown cis8 -. [ r8
    \stemDown cis8 -. ] \stemDown cis8 -. [ \stemDown cis8 -. \stemDown
    cis8 -. ] \stemDown b4. ( \stemDown cis8 ) r8 r8 \stemUp a8 -. [
    \stemUp a8 -. ] r8 \stemUp a8 -. [ \stemUp a8 -. ] r8 \stemUp e8 ( [
    \stemUp fis8 \stemUp g8 ) ] \stemUp gis8 r8 \stemUp a16 ( [ \stemUp
    b16 ) ] \stemDown cis8 -. [ r8 \stemDown cis8 -. ] \stemDown cis8 -.
    [ \stemDown cis8 -. \stemDown cis8 -. ] \stemDown d4. ( \stemDown
    cis8 ) r8 r8 \stemDown b8 r8 r8 \stemUp d,8 r8 r8 \stemUp cis4 (
    \stemUp e8 ) \stemUp cis8 r8 \stemDown cis'16 ( [ _\p \stemDown d16
    ) ] \stemDown e8 -. [ _\markup{ \tiny\italic {cresc.} } \stemDown e8
    -. \stemDown e8 -. ] \stemDown e8 -. [ \stemDown e8 -. \stemDown e8
    -. ] \stemDown gis4. ( _\f \stemDown a8 ) r8 \stemDown a16 ( [ _\p
    \stemDown gis16 ) ] \stemDown fis8 -. r8 \stemDown fis16 ( [
    \stemDown e16 ) ] \stemDown d8 -. r8 \stemDown d16 ( [ \stemDown cis16
    ) ] \stemDown b8 -. [ \stemDown b16 ( \stemDown cis16 \stemDown a16
    \stemDown cis16 ) ] \stemDown b8 r8 \stemDown cis16 ( [ \stemDown d16
    ) ] \stemDown e8 -. [ _\markup{ \tiny\italic {cresc.} } \stemDown e8
    -. \stemDown e8 -. ] \stemDown e8 -. [ \stemDown e8 -. \stemDown e8
    -. ] \stemDown d'4. ( _\f \stemDown cis8 ) r8 \stemDown a16 ( [ _\p
    \stemDown gis16 ) ] \stemDown fis8 -. r8 \stemDown d16 ( [ \stemDown
    cis16 ) ] \stemDown b8 -. r8 \stemDown e16 ( [ \stemDown gis,16 ) ]
    \stemDown a4 ( \stemDown cis8 ) \stemUp a4 r8 r8 \stemUp <d, e>8 [
    _\p \stemUp <d e>8 ] \stemUp <d e>8 [ \stemUp <d e>8 \stemUp <d e>8
    ] r8 \stemUp <cis e>8 [ \stemUp <cis e>8 ] \stemUp <cis e>8 [
    \stemUp <cis e>8 \stemUp <cis e>8 ] r8 \stemUp <a' b>8 [ \stemUp <a
        b>8 ] \stemUp <a b>8 [ \stemUp <a b>8 \stemUp <a b>8 ] \stemUp
    <gis b>4 r8 r4 \stemUp dis8 -. \stemUp e4 r8 r4 \stemUp dis8 -.
    \stemUp e4 r8 r4. r8 \stemDown gis8 ( [ \stemDown a8 ] \stemDown b8
    [ \stemDown cis8 \stemDown d8 ) ] \stemDown cis8 -. [ r8 \stemDown
    cis8 -. ] \stemDown cis8 -. [ \stemDown cis8 -. \stemDown cis8 -. ]
    \stemDown b4. ( \stemUp a8 ) r8 r8 \stemUp a8 -. [ \stemUp a8 -. ] r8
    \stemDown b8 -. [ \stemDown b8 -. ] r8 \stemUp e,8 ( [ \stemUp fis8
    \stemUp g8 ) ] \stemUp gis8 r8 \stemUp a16 ( [ \stemUp b16 ) ]
    \stemDown cis8 -. [ r8 \stemDown cis8 -. ] \stemDown cis8 -. [
    \stemDown cis8 -. \stemDown cis8 -. ] \stemDown d4. ( \stemDown cis8
    ) r8 r8 \stemDown b8 r8 r8 \stemUp d,8 r8 r8 \stemUp cis8 [ \stemUp
    a'16 ( \stemUp gis16 \stemUp fis16 \stemUp e16 ] \stemUp d16 [
    \stemUp cis16 \stemUp b16 \stemUp a16 \stemUp gis16 \stemUp a16 ) ]
    \stemUp b8 [ \stemUp b'16 ( \stemUp a16 \stemUp gis16 \stemUp fis16
    ] \stemUp e16 [ \stemUp d16 \stemUp cis16 \stemUp b16 \stemUp a16
    \stemUp b16 ) ] \stemUp cis8 [ \stemUp cis'16 ( _\markup{
        \tiny\italic {cresc.} } \stemUp b16 \stemUp a16 \stemUp gis16 ]
    \stemUp fis16 [ \stemUp e16 \stemUp d16 \stemUp cis16 \stemUp b16
    \stemUp cis16 ) ] \stemUp d8 [ \stemUp d'16 ( \stemUp cis16 \stemUp
    b16 \stemUp a16 ] \stemUp gis16 [ \stemUp fis16 \stemUp e16 \stemUp
    d16 \stemUp cis16 \stemUp d16 ) ] \stemUp e8 r8 r8 r4. \stemUp a2.
    _\p \stemUp fis4 ( \stemUp ais8 \stemDown b8 [ \stemDown cis8
    \stemDown d8 ) ] \stemDown cis4 r8 \stemDown d4 r8 \stemUp gis,8 [
    \stemUp gis8 \stemUp gis8 ] \stemUp a8 r8 \stemUp a8 _\f \stemDown
    a'8 ( [ \stemDown cis8 ) ] \stemDown cis4 -. \stemDown a8 -. [
    \stemDown e8 -. ] \stemDown fis8 ( [ \stemDown a8 ) ] \stemDown a4
    -. \stemDown fis8 -. [ \stemDown d8 -. ] \stemDown cis8 -. [
    \stemDown e16 ( \stemDown d16 \stemDown e16 \stemDown cis16 ) ]
    \stemDown b8 -. [ \stemDown d16 ( \stemDown cis16 \stemDown d16
    \stemDown b16 ) ] \stemUp a4 r8 r4. \stemDown d2. _\p \stemDown cis8
    r8 r8 \stemDown b8 r8 r8 \stemUp a8 -. [ \stemUp a8 -. \stemUp a8 -.
    ] \grace { \stemUp cis16 ( } \stemUp b8 ) ( [ \stemUp a8 \stemUp b8
    ) ] \stemDown cis4 r8 r4. \stemUp gis4. ( \stemDown e'4. ) \stemDown
    e8 r8 r8 \stemDown d8 r8 r8 \stemDown cis8 r8 r8 \stemUp gis8 [
    \stemUp gis8 \stemUp gis8 ] \stemDown <cis a'>16 [ _\f \stemDown
    <cis a'>16 \stemDown <cis a'>16 \stemDown <cis a'>16 \stemDown <cis
        a'>16 \stemDown <cis a'>16 ] \stemDown <cis a'>4. :64 \stemDown
    <cis a'>8 [ \stemDown e16 \stemDown e16 \stemDown cis'16 \stemDown
    cis16 ] \stemDown d16 [ \stemDown d16 \stemDown b16 \stemDown b16
    \stemDown gis16 \stemDown gis16 ] \stemDown <cis, a'>2. :64
    \stemDown <cis a'>8 [ \stemDown e16 \stemDown e16 \stemDown cis'16
    \stemDown cis16 ] \stemDown d16 [ \stemDown d16 \stemDown b16
    \stemDown b16 \stemDown gis16 \stemDown gis16 ] \stemDown a8 \stemUp
    cis,,8 [ _\p \stemUp cis8 ] r8 \stemUp d8 [ \stemUp d8 ] r8 \stemUp
    e8 [ \stemUp e8 ] r8 \stemUp d8 ( [ \stemUp b8 ) ] r8 \stemUp a'8 [
    \stemUp a8 ] r8 \stemDown b8 [ \stemDown b8 ] r8 \stemDown cis8 [
    \stemDown cis8 ] r8 \stemUp b8 ( [ \stemUp gis8 ) ] r8 \stemDown cis8
    [ \stemDown cis8 ] r8 \stemDown d8 [ \stemDown d8 ] r8 \stemDown e8
    [ \stemDown e8 ] r8 \stemDown d8 ( [ \stemDown b8 ) ] \stemDown cis16
    ( [ _\f \stemDown e16 \stemDown dis16 \stemDown e16 \stemDown fis16
    \stemDown e16 ) ] \stemDown a4 r8 r8 \stemUp gis,8 -. [ _\p \stemUp
    gis8 -. ] r8 \stemUp d8 -. [ \stemUp d8 -. ] \stemUp cis16 ( [ _\f
    \stemUp e16 \stemUp dis16 \stemUp e16 \stemUp fis16 \stemUp e16 ) ]
    \stemUp a4 r8 r8 \stemUp d,8 -. [ _\p \stemUp d8 -. ] r8 \stemUp d8
    -. [ \stemUp d8 -. ] \stemUp cis8 r8 \grace { \stemUp d'32 ( }
    \stemDown cis16 ) ( [ \stemDown b32 \stemDown cis32 ) ] \stemDown d8
    [ \stemDown e8 -. \stemDown fis8 -. ] \stemDown e8 [ \stemDown a8 ]
    \grace { \stemUp d,32 ( } \stemDown cis16 ) ( [ \stemDown b32
    \stemDown cis32 ) ] \stemDown d8 [ \stemDown e8 -. \stemDown fis8 -.
    ] \stemDown e8 [ \stemDown a8 ] \grace { \stemUp d,32 ( } \stemDown
    cis16 ) ( [ \stemDown b32 \stemDown cis32 ) ] \stemDown d8 [
    \stemDown e8 -. \stemDown fis8 -. ] \stemDown g8 [ \stemDown g,8
    \stemDown g8 ] \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp g8 [
    \stemUp g8 \stemUp g8 ] \stemUp g8 [ \stemUp g8 \stemUp g8 ] \stemUp
    fis8 [ \stemUp fis8 \stemUp fis8 ] \stemUp fis8 [ \stemUp fis8
    \stemUp fis8 ] \stemUp fis8 [ \stemUp fis8 \stemUp fis8 ] \stemUp
    dis8 [ \stemUp dis8 \stemUp dis8 ] \stemUp e8 [ \stemUp e8 \stemUp e8
    ] \stemUp e8 r8 r8 \stemUp e8 r8 r8 \stemUp e8 r8 r8 \stemUp e8 -. [
    \stemUp e8 -. \stemUp a8 -. ] \stemDown cis8 -. [ \stemDown e8 -.
    \stemDown a8 -. ] \stemUp e,4 r8 r4 \stemUp e8 \stemDown e'8 -. [ r8
    \stemDown e8 -. ] \stemDown fis16 ( [ \stemDown e16 \stemDown dis16
    \stemDown e16 \stemDown fis16 \stemDown e16 ) ] \stemDown d2. (
    \stemDown cis4 ) r8 r4. r4 r8 r4 \stemDown cis8 \stemDown a'8 -. [ r8
    \stemDown a8 -. ] \stemDown b16 ( [ \stemDown a16 \stemDown gis16
    \stemDown a16 \stemDown b16 \stemDown a16 ) ] \stemDown g2. (
    \stemUp fis8 ) [ \stemUp fis,8 \stemUp fis8 ] \stemUp fis8 [ \stemUp
    fis8 \stemUp fis8 ] \stemUp fis8 -. [ r8 \stemUp a8 -. ] \stemUp a8
    -. [ r8 \stemUp fis8 -. ] \stemUp e8 [ r8 \stemUp gis8 ] \stemUp gis8
    [ \stemUp gis8 \stemUp gis8 ] \stemUp a8 [ r8 \stemUp a8 ] \stemUp a8
    [ \stemUp a8 \stemUp a8 ] \stemDown b8 r8 r8 \stemDown b8 r8 r8
    \stemDown b4 r8 r4. \stemDown cis8 -. [ r8 \stemDown cis8 -. ]
    \stemDown cis8 -. [ \stemDown cis8 -. \stemDown cis8 -. ] \stemDown
    b4. ( \stemUp a8 ) r8 r8 \stemUp a8 -. [ \stemUp a8 -. ] r8
    \stemDown b8 -. [ \stemDown b8 -. ] r8 \stemUp e,8 ( [ \stemUp fis8
    \stemUp g8 ) ] \stemUp gis8 r8 \stemUp a16 ( [ \stemUp b16 ) ]
    \stemDown cis8 -. [ r8 \stemDown cis8 -. ] \stemDown cis8 -. [
    \stemDown cis8 -. \stemDown cis8 -. ] \stemDown d4. ( \stemDown cis8
    ) r8 r8 \stemDown b8 r8 r8 \stemUp d,8 r8 r8 r8 \stemUp e8 -. [
    \stemUp a8 -. ] \stemDown cis8 -. [ \stemDown e8 -. \stemDown a8 -.
    ] r8 \stemDown d,8 -. [ \stemDown d8 -. ] r8 \stemDown b8 -. [
    \stemDown b8 -. ] r8 \stemUp e,8 -. [ \stemUp a8 -. ] \stemDown cis8
    -. [ \stemDown e8 -. \stemDown a8 -. ] \stemDown fis16 [ _\markup{
        \tiny\italic {cresc.} } \stemDown fis16 \stemDown fis16
    \stemDown fis16 \stemDown fis16 \stemDown fis16 ] \stemDown d4. :64
    \stemDown b4. :64 \stemDown e4. :64 \stemDown <cis a'>16 [ _\f
    \stemDown <cis a'>16 \stemDown <cis a'>16 \stemDown <cis a'>16
    \stemDown <cis a'>16 \stemDown <cis a'>16 ] \stemDown <cis a'>4. :64
    \stemDown <cis a'>8 [ \stemDown e16 \stemDown e16 \stemDown cis'16
    \stemDown cis16 ] \stemDown d16 [ \stemDown d16 \stemDown b16
    \stemDown b16 \stemDown gis16 \stemDown gis16 ] \stemDown <cis, a'>2.
    :64 \stemDown <cis a'>8 [ \stemDown e16 \stemDown e16 \stemDown cis'16
    \stemDown cis16 ] \stemDown d16 [ \stemDown d16 \stemDown b16
    \stemDown b16 \stemDown gis16 \stemDown gis16 ] \stemDown a16 [
    \stemDown a16 \stemDown cis16 \stemDown cis16 \stemDown e,16
    \stemDown e16 ] \stemDown a16 [ \stemDown a16 \stemDown cis,16
    \stemDown cis16 \stemDown e16 \stemDown e16 ] \stemUp a,16 [ \stemUp
    a16 \stemUp cis16 \stemUp cis16 \stemUp e,16 \stemUp e16 ] \stemUp a16
    [ \stemUp a16 \stemUp cis,16 \stemUp cis16 \stemUp e16 \stemUp e16 ]
    \stemUp a,4 r8 \stemDown <a' cis e>4 r8 \stemDown <e cis' a'>4 r8 r4.
    \bar "|."
    }

PartPNineVoiceOne =  \relative cis'' {
    \clef "treble" \time 4/4 \key a \major | % 1
    \stemDown cis2 _\p \stemUp a4. ( \stemDown b8 ) | % 2
    \stemDown d8 ( [ \stemDown cis8 ) \stemDown b8 -. \stemDown a8 -. ]
    \stemUp a4 r4 | % 3
    \stemUp fis4 ( \stemUp d8 ) r8 \stemUp fis4 ( \stemUp d8 ) r8 | % 4
    \stemUp cis2 ( \stemUp b8 ) r8 r4 | % 5
    r8 \stemUp e8 [ \stemUp e8 \stemUp e8 ] \stemUp d8 [ \stemUp d8
    \stemUp cis8 \stemUp cis8 ] | % 6
    \stemUp b8 [ \stemUp b8 \stemUp a8 \stemUp a8 ] \stemUp gis8 [
    \stemUp gis8 \stemUp gis'8 \stemUp gis8 ] | % 7
    \stemUp a8 ( [ \stemUp e8 \stemUp d8 \stemUp gis8 ) ] \stemUp a8 ( [
    \stemUp cis,8 \stemUp fis8 \stemUp d8 ) ] | % 8
    \stemUp cis4. ( \stemUp d16 [ \stemUp cis16 ) ] \stemUp b8 -.
    \stemUp gis'8 ( [ _\f \stemUp a8 \stemUp b8 ) ] | % 9
    \stemDown cis2 \stemUp a4. ( \stemDown b8 ) | \barNumberCheck #10
    \stemDown d8 ( [ \stemDown cis8 ) \stemDown b8 -. \stemDown a8 -. ]
    \stemUp a4 r4 | % 11
    \stemUp fis4 ( _\p \stemUp d8 ) r8 \stemUp fis4 ( \stemUp d8 ) r8 | % 12
    \stemUp cis2 ( \stemUp b8 ) r8 r4 | % 13
    \stemUp a'4 ~ _\f \stemUp a16 ( [ \stemUp cis16 \stemUp b16 \stemUp
    a16 ) ] \stemUp gis16 ( [ \stemUp b16 \stemUp a16 \stemUp gis16 ) ]
    \stemUp fis16 ( [ \stemUp a16 \stemUp gis16 \stemUp fis16 ) ] | % 14
    \stemUp e4 \stemUp d16 ( [ \stemUp fis16 \stemUp e16 \stemUp d16 ) ]
    \stemUp cis16 ( [ \stemUp e16 \stemUp d16 \stemUp cis16 ) ] \stemUp
    b16 ( [ \stemUp d16 \stemUp cis16 \stemUp b16 ) ] | % 15
    \stemUp a4 \stemDown a''16 [ \stemDown a16 \stemDown a16 \stemDown a16
    ] \stemDown a16 [ \stemDown a16 \stemDown a16 \stemDown a16 ]
    \stemDown gis16 [ \stemDown gis16 \stemDown gis16 \stemDown gis16 ]
    | % 16
    \stemUp a8 [ \stemUp cis,,16 \stemUp e16 ] \stemUp cis16 [ \stemUp e16
    \stemUp cis16 \stemUp e16 ] \stemUp cis16 [ \stemUp e16 \stemUp cis16
    \stemUp e16 ] \stemUp cis16 [ \stemUp e16 \stemUp cis16 \stemUp e16
    ] | % 17
    \stemUp b16 [ \stemUp e16 \stemUp b16 \stemUp e16 ] \stemUp b16 [
    \stemUp e16 \stemUp b16 \stemUp e16 ] \stemUp b16 [ \stemUp e16
    \stemUp b16 \stemUp e16 ] \stemUp b16 [ \stemUp e16 \stemUp b16
    \stemUp e16 ] | % 18
    \stemUp a,16 [ \stemUp e'16 \stemUp a,16 \stemUp e'16 ] \stemUp a,16
    [ \stemUp e'16 \stemUp a,16 \stemUp e'16 ] \stemUp cis16 [ \stemUp e16
    \stemUp cis16 \stemUp e16 ] \stemUp cis16 [ \stemUp e16 \stemUp cis16
    \stemUp e16 ] | % 19
    \stemUp b16 [ \stemUp e16 \stemUp b16 \stemUp e16 ] \stemUp b16 [
    \stemUp e16 \stemUp b16 \stemUp e16 ] \stemUp b16 [ \stemUp e16
    \stemUp b16 \stemUp e16 ] \stemUp b16 [ \stemUp e16 \stemUp b16
    \stemUp e16 ] | \barNumberCheck #20
    \stemUp a,4 \stemDown cis''16 [ \stemDown b16 \stemDown a16
    \stemDown gis16 ] \stemDown fis16 ( [ \stemDown eis16 ) \stemDown
    gis16 \stemDown fis16 ] \stemDown a8 r8 | % 21
    \stemDown fis16 ( [ \stemDown eis16 ) \stemDown gis16 \stemDown fis16
    ] \stemDown a16 [ \stemDown g16 \stemDown fis16 \stemDown e16 ]
    \stemDown d16 ( [ \stemDown cis16 ) \stemDown e16 \stemDown d16 ]
    \stemDown fis8 r8 | % 22
    \stemDown d16 ( [ \stemDown cis16 ) \stemDown e16 \stemDown d16 ]
    \stemDown fis16 [ \stemDown e16 \stemDown d16 \stemDown cis16 ]
    \stemDown b16 ( [ \stemDown ais16 ) \stemDown cis16 \stemDown b16 ]
    \stemDown d16 [ \stemDown cis16 \stemDown b16 \stemDown a16 ] | % 23
    \stemUp gis16 [ \stemUp e16 \stemUp fis16 \stemUp gis16 ] \stemDown
    a16 [ \stemDown b16 \stemDown cis16 \stemDown dis16 ] \stemDown e16
    [ \stemDown fis16 \stemDown gis16 \stemDown a16 ] \stemDown b16 [
    \stemDown gis16 \stemDown b16 \stemDown gis16 ] | % 24
    \stemDown e4 -. \stemDown <e, b' gis'>4 -. \stemUp <e b' e>4 -. r4 | % 25
    \stemDown e'2 _\p \stemDown cis4. ( \stemDown d8 ) | % 26
    \stemDown fis8 ( [ \stemDown e8 ) \stemDown d8 -. \stemDown cis8 -.
    ] \stemDown b4. ( \stemDown cis8 ) | % 27
    \stemDown e8 ( [ \stemDown d8 ) \stemDown cis8 -. \stemDown b8 -. ]
    \stemUp a4. ( \stemDown b8 ) | % 28
    \stemDown cis8 ( [ \stemDown e8 ) ] \stemDown d16 ( [ \stemDown cis16
    \stemDown b16 \stemDown a16 ) ] \stemUp a8 ( [ \stemUp gis8 )
    \stemUp gis8 ( \stemUp fis8 ) ] | % 29
    \stemUp e4 -. \stemUp gis4 -. r8 \stemUp gis8 ( [ \stemUp a8 \stemUp
    b8 ) ] | \barNumberCheck #30
    \stemUp a4 \stemUp gis16 ( [ \stemUp fis16 \stemUp e16 \stemUp d16 ]
    \stemUp cis8 [ \stemUp e8 \stemUp d8 \stemUp b8 ) ] | % 31
    \stemUp cis16 [ _\f \stemUp a'16 \stemUp b16 \stemUp cis16 ]
    \stemDown d16 [ \stemDown e16 \stemDown fis16 \stemDown gis16 ]
    \stemDown a16 ( [ \stemDown cis16 ) \stemDown b16 \stemDown a16 ]
    \stemDown gis16 [ \stemDown fis16 \stemDown e16 \stemDown d16 ] | % 32
    \stemDown cis2 \stemUp a4.. ( \stemDown b16 ) | % 33
    \stemDown cis16 [ \stemDown a16 \stemDown b16 \stemDown cis16 ]
    \stemDown d16 [ \stemDown e16 \stemDown fis16 \stemDown gis16 ]
    \stemDown a16 ( [ \stemDown cis16 ) \stemDown b16 \stemDown a16 ]
    \stemDown gis16 [ \stemDown fis16 \stemDown e16 \stemDown d16 ] | % 34
    \stemDown cis2 \stemUp a4.. ( \stemDown b16 ) | % 35
    \stemDown cis4 r8 \stemDown e16 [ \stemDown e16 ] \stemDown e8 [
    \stemDown e8 \stemDown e8 \stemDown e8 ] | % 36
    \stemDown fis4 -. \stemDown <a, e'>4 -. \stemUp <a, fis' d'>4 -. r4
    | % 37
    R1 | % 38
    r8 \stemUp cis8 ( [ _\p \stemUp d8 \stemUp fis8 ) ] \stemUp cis4 (
    \stemUp b4 ) | % 39
    \stemUp a4 r4 r8 \stemUp a'8 ( [ \stemUp gis8 \stemUp d8 ] |
    \barNumberCheck #40
    \stemUp cis8 ) [ \stemUp cis'16 ( \stemUp b32 \stemUp cis32 ]
    \stemUp d8 ) r8 r8 \stemUp a8 ( [ \stemUp gis8 \stemUp d8 ] | % 41
    \stemUp cis8 ) [ \stemUp cis'16 ( \stemUp b32 \stemUp cis32 ]
    \stemUp d8 ) r8 r8 \stemUp a8 ( \stemDown b8 ) [ \stemDown gis'16 (
    \stemDown fis32 \stemDown gis32 ] | % 42
    \stemDown a8 ) r8 r8 \stemDown gis16 ( [ \stemDown fis32 \stemDown
    gis32 ] \stemDown a8 ) r8 r8 \stemDown gis16 ( [ \stemDown fis32
    \stemDown gis32 ] | % 43
    \stemDown a8 ) [ \stemDown a,16 ( _\f \stemDown gis32 \stemDown a32
    ] \stemDown b8 ) [ \stemDown b16 ( \stemDown a32 \stemDown b32 ]
    \stemDown cis8 ) [ \stemDown cis8 -. \stemDown d8 -. \stemDown d8 -.
    ] | % 44
    \stemDown e4 ~ \stemDown e16 [ \stemDown d16 -. \stemDown cis16 -.
    \stemDown b16 -. ] \stemUp a16 -. [ \stemUp gis16 -. \stemUp fis16
    -. \stemUp e16 -. ] \stemUp d16 -. [ \stemUp cis16 -. \stemUp b16 -.
    \stemUp a16 -. ] | % 45
    \stemUp g'8 \stemUp g4 -. \stemUp g8 ( \stemUp eis8 ) \stemUp eis4
    -. \stemUp eis8 | % 46
    \stemUp fis4 -. \stemDown a'4 -. r4 \stemUp dis,,4 -. | % 47
    \stemUp e8. [ \stemUp fis16 ] \stemUp gis16 [ \stemUp a16 \stemUp b16
    \stemUp cis16 ] \stemDown d16 [ \stemDown e16 \stemDown fis16
    \stemDown gis16 ] \stemDown a16 [ \stemDown b16 \stemDown cis16
    \stemDown d16 ] | % 48
    \stemDown e8 [ \stemDown cis16 \stemDown a16 ] \stemDown e8 [
    \stemDown cis16 \stemDown a16 ] \stemUp e4 \stemDown <e b' gis'>4 | % 49
    \stemDown <e cis' a'>4 r4 \stemUp a4 ( _\p \stemDown cis8 ) r8 |
    \barNumberCheck #50
    \stemUp fis,4 ( \stemUp a8 ) r8 \stemUp fis8 -. r8 \stemUp g8 -. r8
    | % 51
    \stemUp a4 r4 \stemUp d,4 ( \stemUp fis8 ) r8 | % 52
    \stemUp b,4 ( \stemUp d8 ) r8 \stemUp d8 -. r8 \stemUp d8 -. r8 | % 53
    \stemUp cis4 r4 \stemUp d8 -. r8 \stemUp d8 -. r8 | % 54
    \stemUp cis4 r4 \stemUp d8 -. r8 \stemUp d8 -. r8 | % 55
    \stemUp cis8 [ _\f \stemUp cis16 \stemUp e16 ] \stemUp a16 [ \stemUp
    e16 \stemUp a16 \stemUp e16 ] \stemDown cis'16 [ \stemDown a16
    \stemDown cis16 \stemDown a16 ] \stemDown e'16 [ \stemDown cis16
    \stemDown e16 \stemDown cis16 ] | % 56
    \stemUp a4 -. \stemDown <e cis' a'>4 -. \stemUp a,4 -. r4 \bar "||"
    \stemUp a8 [ _\p \stemUp a8 \stemUp a8 \stemUp a8 ] \stemUp a8 [
    \stemUp a8 \stemUp a8 \stemUp a8 ] | % 58
    \stemUp a4 r4 r8 \stemUp a8 [ \stemUp cis8 \stemUp a8 ] | % 59
    \stemUp b4 r4 \stemUp b4 r4 | \barNumberCheck #60
    r2 r8 \stemUp e8 ( [ \stemUp dis8 \stemUp d8 ) ] | % 61
    \stemUp cis8 [ \stemUp cis8 \stemUp cis8 \stemUp cis8 ] \stemUp b8 [
    \stemUp b8 \stemUp a8 \stemUp a8 ] | % 62
    \stemUp gis4 \stemUp gis'2 ( \stemUp a4 ) | % 63
    \stemUp fis4 r4 r4 \stemUp gis,4 | % 64
    \stemUp a4 r4 r8 \stemUp e'8 -. \stemDown a8 -. [ \stemDown b16 (
    \stemDown a32 \stemDown b32 ) ] | % 65
    \stemDown cis2 \stemUp a4. ( \stemDown b8 ) | % 66
    \stemDown d8 ( [ \stemDown cis8 ) \stemDown b8 -. \stemDown a8 -. ]
    \stemUp a4 r4 | % 67
    \stemUp fis4 ( \stemUp d8 ) r8 \stemUp fis4 ( \stemUp d8 ) r8 | % 68
    \stemUp cis2 ( \stemUp b4 ) r4 | % 69
    \stemUp gis4 r4 r8 \stemUp gis8 [ \stemUp gis8 \stemUp gis8 ] |
    \barNumberCheck #70
    r8 \stemUp a8 [ \stemUp a8 \stemUp a8 ] r8 \stemUp gis'8 [ \stemUp
    gis8 \stemUp gis8 ] | % 71
    \stemUp a4 r4 r2 | % 72
    r4 \stemUp fis4 ( \stemUp e2 ) | % 73
    \stemUp e8 [ \stemUp e8 \stemUp e8 \stemUp e8 ] r8 \stemUp fis8 [
    \stemUp fis8 \stemUp fis8 ] | % 74
    r8 \stemUp e8 [ \stemUp cis8 \stemUp cis8 ] \stemUp b8 [ \stemUp b8
    \stemUp b8 \stemUp b8 ] | % 75
    \stemUp cis8 [ _\f \stemUp cis16 \stemUp e16 ] \stemUp a16 [ \stemUp
    e16 \stemUp a16 \stemUp e16 ] \stemDown cis'16 [ \stemDown a16
    \stemDown cis16 \stemDown a16 ] \stemDown e'16 [ \stemDown cis16
    \stemDown e16 \stemDown cis16 ] | % 76
    \stemDown a'4 r4 \stemUp a,4 _\p r4 | % 77
    \stemUp <fis a>4 r4 \stemUp <d e>4 r4 | % 78
    \stemUp <c e>4 r4 \stemUp a4 r4 | % 79
    \stemUp b4 r4 \stemUp gis4 r4 | \barNumberCheck #80
    \stemUp a8 -. [ \stemUp c8 -. \stemUp a8 -. \stemUp c8 -. ] \stemUp
    a4 r4 | % 81
    r4 \stemUp c8. [ _\f \stemUp c16 ] \stemUp b8. [ \stemUp b16 ]
    \stemUp c8. [ \stemUp c16 ] | % 82
    \stemUp b4 r4 \stemUp b4 _\p r4 | % 83
    b1 ~ | % 84
    \stemUp b4 r4 r2 | % 85
    r4 \stemUp g4 -. \stemUp c4 -. r4 | % 86
    R1*3 | % 89
    g'1 ~ | \barNumberCheck #90
    g1 | % 91
    \stemUp g4 \stemUp g2 \stemUp g4 ~ | % 92
    \stemUp g4 \stemUp e2 \stemUp e4 ~ | % 93
    \stemUp e4 \stemUp e4 \stemUp ais,2 | % 94
    \stemUp b8 [ \stemUp b'16 ( \stemUp cis16 ] \stemDown dis8 ) [
    \stemDown e8 -. ] \stemDown fis2 ( | % 95
    \stemDown fis8 ) [ \stemDown b,8 \stemDown cis8 \stemDown dis8 ]
    \stemDown e4. ( \stemDown dis16 [ \stemDown e16 ) ] | % 96
    \stemUp dis8 [ \stemUp b,16 ( \stemUp cis16 ] \stemUp dis8 ) [
    \stemUp e8 -. ] \stemUp fis2 ~ | % 97
    \stemUp fis8 [ \stemUp b,8 ( \stemUp cis8 \stemUp dis8 ) ] \stemUp e4.
    ( \stemUp dis16 [ \stemUp e16 ) ] | % 98
    \stemUp dis4 r8 \stemUp fis8 -. _\f \stemUp e8 -. r8 \stemUp <b g'>8
    -. r8 | % 99
    \stemUp <b fis'>4 r8 \stemUp fis'8 -. \stemUp e8 -. r8 \stemUp <b g'
        e'>8 -. r8 | \barNumberCheck #100
    \stemUp <b fis' dis'>4 r4 r2 | % 101
    \stemUp b2 ( _\p \stemUp a2 | % 102
    \stemUp gis2 \stemUp a2 | % 103
    \stemUp b4 ) r4 r8 \stemUp b8 ( [ \stemUp dis8 \stemUp fis8 ) ] | % 104
    \stemUp e8 [ \stemUp gis8 \stemUp gis8 \stemUp gis8 ] r8 \stemUp gis8
    [ \stemUp gis8 \stemUp gis8 ] | % 105
    \stemUp a4 r4 r8 \stemUp fis8 ( [ \stemUp e8 \stemUp dis8 ) ] | % 106
    \stemUp e8 [ \stemUp gis8 \stemUp gis8 \stemUp gis8 ] r8 \stemUp gis8
    [ \stemUp gis8 \stemUp gis8 ] | % 107
    \stemUp a4 r4 r8 \stemUp fis8 ( [ \stemUp e8 \stemUp dis8 ) ] | % 108
    \stemUp e4 r8 \stemUp e8 ( \stemUp e4 ) r8 \stemUp e8 ( | % 109
    \stemUp e4 ) r8 \stemUp cis8 ( \stemUp cis4 ) r8 \stemUp cis8 ( |
    \barNumberCheck #110
    \stemUp cis4 ) r8 \stemUp b8 ( \stemUp cis4 ) r8 \stemUp cis8 ( | % 111
    b1 ) ~ | % 112
    \stemUp b4 r4 r4 \stemUp e4 ( | % 113
    \stemUp e4 ) r4 r2 | % 114
    r4 \stemUp g4 ( \stemUp gis4 \stemUp a4 ) | % 115
    \stemUp gis4 r4 r2 | % 116
    R1 | % 117
    r2 r4 \stemUp cis,4 | % 118
    bis1 ( | % 119
    \stemUp cis4 ) r4 r2 | \barNumberCheck #120
    R1 | % 121
    r2 r4 \stemUp cis4 | % 122
    bis1 ( | % 123
    \stemUp cis4 ) \stemUp cis4 -. \stemUp cis4 -. r4 | % 124
    \stemUp e2 ( \stemUp dis4 ) r4 | % 125
    \stemUp e2 ( \stemUp dis4 ) r4 | % 126
    \stemUp dis8 \stemUp dis4 \stemUp dis4 \stemUp dis4 \stemUp dis8 | % 127
    \stemUp dis4 r4 r2 ^\fermata | % 128
    R1*4 | % 132
    r2 r8 \stemUp dis8 ( [ _\p \stemUp e8 \stemUp fis8 ) ] | % 133
    \stemUp e4 \stemUp dis16 ( [ \stemUp cis16 \stemUp b16 \stemUp a16 )
    ] \stemUp gis4 \stemUp a4 | % 134
    \stemUp gis4 r4 r8 \stemUp e'8 ( [ \stemUp dis8 \stemUp a8 ] | % 135
    \stemUp gis8 ) [ \stemUp gis'16 ( \stemUp fis32 \stemUp gis32 ]
    \stemUp a8 ) r8 r8 \stemUp e8 ( [ \stemUp dis8 \stemUp a8 ] | % 136
    \stemUp gis8 ) [ \stemUp gis'16 ( \stemUp fis32 \stemUp gis32 ]
    \stemUp a8 ) r8 r8 \stemUp e8 ( \stemDown dis8 ) [ \stemDown dis'16
    ( \stemDown cis32 \stemDown dis32 ] | % 137
    \stemDown e8 ) r8 r8 \stemDown dis16 ( [ \stemDown cis32 \stemDown
    dis32 ] \stemDown e8 ) r8 r8 \stemDown dis16 ( [ \stemDown cis32
    \stemDown dis32 ] | % 138
    \stemUp e8 ) [ \stemUp gis,8 -. \stemUp gis8 -. \stemUp gis8 -. ]
    \stemUp gis2 | % 139
    \stemUp cis8 ( [ \stemUp a8 ) \stemUp a8 -. \stemUp a8 -. ] \stemUp
    a4. ( \stemDown cis8 ) | \barNumberCheck #140
    \stemUp gis4 ( \stemUp e8 [ \stemUp gis8 ) ] \stemUp gis8 ( [
    \stemUp fis8 \stemUp e8 \stemUp dis8 ) ] | % 141
    \stemUp e4 r4 r2 | % 142
    b1 ( | % 143
    \stemUp a4 ) r8 \stemDown b'16 ( [ \stemDown a32 \stemDown b32 ) ]
    \stemUp a8 -. [ \stemUp a8 -. \stemUp b8 -. \stemUp b8 -. ] | % 144
    \stemUp a4 r8 \stemUp b,16 ( [ \stemUp a32 \stemUp b32 ) ] \stemUp a8
    -. [ \stemUp a8 -. \stemUp b8 -. \stemUp b8 -. ] | % 145
    \stemUp a4 r4 r8 \stemUp cis8 [ \stemUp cis8 \stemUp cis8 ] | % 146
    \stemUp c4 r4 r8 \stemUp c8 [ \stemUp c8 \stemUp c8 ] | % 147
    \stemUp cis4 r4 r8 \stemUp cis8 [ \stemUp cis8 \stemUp cis8 ] | % 148
    \stemUp b4 r4 r4 r8 \stemUp b8 -. | % 149
    \stemUp gis8 -. [ \stemUp dis'8 -. \stemUp e8 -. \stemUp fis8 -. ]
    \stemUp gis8 -. [ \stemUp fis8 -. \stemUp gis8 -. \stemUp dis'8 -. ]
    | \barNumberCheck #150
    \stemDown e4 r4 \stemDown e4 r4 | % 151
    \stemUp gis,4 r4 \stemUp gis4 r4 | % 152
    \stemUp e8 [ \stemUp e8 \stemUp e8 \stemUp e8 ] \stemUp e8 [ \stemUp
    e8 \stemUp e8 \stemUp e8 ] | % 153
    \stemUp e16 [ _\markup{ \tiny\italic {cresc.} } \stemUp e16 \stemUp
    e16 \stemUp e16 ] \stemUp e4 :16 \stemUp dis2 :16 | % 154
    \stemUp e8 [ _\f \stemUp gis16 \stemUp b16 ] \stemUp gis16 [ \stemUp
    b16 \stemUp gis16 \stemUp b16 ] \stemUp gis16 [ \stemUp b16 \stemUp
    gis16 \stemUp b16 ] \stemUp gis16 [ \stemUp b16 \stemUp gis16
    \stemUp b16 ] | % 155
    \stemUp fis16 [ \stemUp b16 \stemUp fis16 \stemUp b16 ] \stemUp fis16
    [ \stemUp b16 \stemUp fis16 \stemUp b16 ] \stemUp fis16 [ \stemUp b16
    \stemUp fis16 \stemUp b16 ] \stemUp fis16 [ \stemUp b16 \stemUp fis16
    \stemUp b16 ] | % 156
    \stemUp e,16 [ \stemUp b'16 \stemUp e,16 \stemUp b'16 ] \stemUp e,16
    [ \stemUp b'16 \stemUp e,16 \stemUp b'16 ] \stemUp gis16 [ \stemUp b16
    \stemUp gis16 \stemUp b16 ] \stemUp gis16 [ \stemUp b16 \stemUp gis16
    \stemUp b16 ] | % 157
    \stemUp fis16 [ \stemUp b16 \stemUp fis16 \stemUp b16 ] \stemUp fis16
    [ \stemUp b16 \stemUp fis16 \stemUp b16 ] \stemUp fis16 [ \stemUp b16
    \stemUp fis16 \stemUp b16 ] \stemUp fis16 [ \stemUp b16 \stemUp fis16
    \stemUp b16 ] | % 158
    \stemDown e16 ( [ \stemDown dis16 ) \stemDown fis16 \stemDown e16 ]
    \stemDown gis16 [ \stemDown fis16 \stemDown e16 \stemDown dis16 ]
    \stemDown cis16 ( [ \stemDown bis16 ) \stemDown dis16 \stemDown cis16
    ] \stemDown e8 r8 | % 159
    \stemDown cis16 ( [ \stemDown bis16 ) \stemDown dis16 \stemDown cis16
    ] \stemDown e16 [ \stemDown d16 \stemDown cis16 \stemDown b16 ]
    \stemUp a16 ( [ \stemUp gis16 ) \stemUp b16 \stemUp a16 ] \stemDown
    cis8 r8 | \barNumberCheck #160
    \stemUp a16 ( [ \stemUp gis16 ) \stemUp b16 \stemUp a16 ] \stemUp
    cis16 [ \stemUp b16 \stemUp a16 \stemUp gis16 ] \stemUp fis16 ( [
    \stemUp eis16 ) \stemUp gis16 \stemUp fis16 ] \stemUp a16 [ \stemUp
    gis16 \stemUp fis16 \stemUp e16 ] | % 161
    \stemUp dis16 ( [ \stemUp cis16 ) \stemUp b16 \stemUp cis16 ]
    \stemUp dis16 [ \stemUp e16 \stemUp fis16 \stemUp gis16 ] \stemUp a16
    ( [ \stemUp gis16 ) \stemUp fis16 \stemUp gis16 ] \stemDown a16 [
    \stemDown b16 \stemDown cis16 \stemDown dis16 ] | % 162
    \stemDown e8 [ \stemDown gis16 \stemDown e16 ] \stemDown b'8 [
    \stemDown gis,8 ] \stemUp a4 \stemDown cis'4 | % 163
    \stemDown b8 [ \stemDown gis16 \stemDown e16 ] \stemUp b8 [ \stemUp
    gis16 \stemUp e16 ] \stemUp b4 \stemUp <b fis' dis'>4 | % 164
    \stemUp <b gis' e'>4 r4 \stemUp e4 ( _\p \stemUp gis8 ) r8 | % 165
    \stemUp cis,4 ( \stemUp e8 ) r8 \stemUp cis8 -. r8 \stemUp dis8 -. r8
    | % 166
    \stemUp e4 r4 \stemUp a4 ( \stemDown cis8 ) r8 | % 167
    \stemUp fis,4 ( \stemUp a8 ) r8 \stemUp a8 -. r8 \stemUp a8 -. r8 | % 168
    \stemUp gis4 r4 \stemUp a8 -. r8 \stemUp a8 -. r8 | % 169
    \stemUp gis4 r4 \stemUp a8 -. r8 \stemUp a8 -. r8 | \barNumberCheck
    #170
    \stemUp gis8 [ _\f \stemUp gis16 \stemUp b16 ] \stemUp gis16 [
    \stemUp e16 \stemUp gis16 \stemUp b16 ] \stemDown e16 [ \stemDown b16
    \stemDown e16 \stemDown gis16 ] \stemDown b16 [ \stemDown gis16
    \stemDown b16 \stemDown gis16 ] | % 171
    \stemDown e4 -. \stemDown <e, b' gis'>4 -. \stemUp <e b' e>4 -. r4
    \bar "||"
    \stemUp e8 [ _\p \stemUp e8 \stemUp e8 \stemUp e8 ] \stemUp e8 [
    \stemUp e8 \stemUp e8 \stemUp e8 ] | % 173
    \stemUp e8 [ \stemUp e8 \stemUp e8 \stemUp e8 ] \stemUp e4 r4 | % 174
    r4 \stemUp b4. ( \stemUp cis8 [ \stemUp dis8 \stemUp e8 ) ] | % 175
    \stemUp fis4 -. \stemUp dis4 -. r4 \stemUp fis4 | % 176
    \stemUp e8 [ \stemUp e8 \stemUp e8 \stemUp e8 ] \stemUp e8 [ \stemUp
    e8 \stemUp e8 \stemUp e8 ] | % 177
    \stemUp e8 [ \stemUp e8 \stemUp e8 \stemUp e8 ] \stemUp e4 r4 | % 178
    r4 \stemUp b4. ( \stemUp cis8 [ \stemUp dis8 \stemUp e8 ) ] | % 179
    \stemUp fis4 -. \stemUp dis4 -. r4 \stemUp fis4 | \barNumberCheck
    #180
    \stemUp e8 [ \stemUp gis8 ] \stemUp e4 r2 | % 181
    r4 \stemUp dis4 r4 \stemUp dis4 | % 182
    \stemUp e8 [ \stemUp e8 ] \stemUp e4 r2 | % 183
    r4 \stemUp dis4 r4 \stemUp dis4 | % 184
    \stemUp e8 [ \stemUp e8 ] \stemUp e4 r2 | % 185
    \stemUp gis8 [ \stemUp gis8 ] \stemUp gis4 r2 | % 186
    \stemDown b8 [ \stemDown b8 ] \stemDown b4 r2 | % 187
    r4 \stemUp gis,2 \stemUp gis4 | % 188
    \stemUp gis8 r8 \stemUp gis8 r8 \stemUp gis8 r8 \stemUp gis8 r8 | % 189
    \stemUp gis8 r8 \stemUp gis8 r8 \stemUp gis8 r8 \stemUp gis8 r8 |
    \barNumberCheck #190
    \stemUp a8 \stemUp fis'4 \stemUp fis4 \stemUp fis4 \stemUp fis8 | % 191
    r8 \stemUp fis8 [ \stemUp fis8 \stemUp fis8 ] r8 \stemUp fis8 [
    \stemUp fis8 \stemUp fis8 ] | % 192
    \stemUp eis4 r4 \stemDown eis'16 [ _\f \stemDown eis16 \stemDown eis16
    \stemDown eis16 ] \stemDown eis16 [ \stemDown eis16 \stemDown eis16
    \stemDown eis16 ] | % 193
    \stemDown fis2 :16 \stemDown gis2 :16 | % 194
    \stemDown eis4 r4 r2 | % 195
    r4 \stemUp gis,4 ( -. _\p \stemUp gis4 -. \stemUp gis4 ) -. | % 196
    \stemUp gis4 r4 r2 | % 197
    r4 \stemUp f4 ( -. \stemUp f4 -. \stemUp f4 ) -. | % 198
    fis1 ( | % 199
    e1 ) | \barNumberCheck #200
    \stemUp d4 r4 r2 | % 201
    R1*3 | % 204
    a'1 ~ | % 205
    a1 | % 206
    \stemDown a8 [ \stemDown fis'8 \stemDown fis8 \stemDown fis8 ]
    \stemDown fis8 [ \stemDown fis8 \stemDown fis8 \stemDown fis8 ] | % 207
    \stemUp fis8 [ \stemUp fis,8 \stemUp fis8 \stemUp fis8 ] \stemUp fis8
    [ \stemUp fis8 \stemUp fis8 \stemUp fis8 ] | % 208
    \stemDown e8 [ \stemDown e'8 \stemDown e8 \stemDown e8 ] \stemDown e8
    [ \stemDown e8 \stemDown e8 \stemDown e8 ] | % 209
    \stemUp e8 [ \stemUp e,8 \stemUp e8 \stemUp e8 ] \stemUp e8 [
    \stemUp e8 \stemUp e8 \stemUp e8 ] | \barNumberCheck #210
    \stemUp d8 -. [ \stemUp fis8 -. ] \stemUp fis4 -. r2 | % 211
    \stemUp eis8 -. [ \stemUp gis8 -. ] \stemUp gis4 -. r2 | % 212
    \stemUp a8 r8 r4 \stemDown cis8 r8 r4 | % 213
    \stemDown cis8 r8 \stemUp fis,8 r8 \stemUp fis8 r8 \stemUp fis8 r8 | % 214
    r8 \stemUp fis8 [ \stemUp fis8 \stemUp fis8 ] r8 \stemUp eis8 [
    \stemUp eis8 \stemUp eis8 ] | % 215
    \stemDown a'16 [ _\f \stemDown a16 \stemDown eis16 \stemDown eis16 ]
    \stemDown fis16 [ \stemDown fis16 \stemDown cis16 \stemDown cis16 ]
    \stemDown d16 [ \stemDown d16 \stemDown ais16 \stemDown ais16 ]
    \stemUp b16 [ \stemUp b16 \stemUp fis16 \stemUp fis16 ] | % 216
    \stemUp g4 \stemUp b,4 ( -. _\p \stemUp b4 -. \stemUp b4 ) -. | % 217
    r4 \stemDown e'4 ( -. \stemDown e4 -. \stemDown e4 ) -. | % 218
    r4 \stemUp b,4 ( -. \stemUp b4 -. \stemUp b4 ) -. | % 219
    r4 \stemDown fis''4 ( -. \stemDown fis4 -. \stemDown fis4 ) -. |
    \barNumberCheck #220
    \stemUp fis8 [ \stemUp a,,8 ] \stemUp a4 r2 | % 221
    \stemUp fis'8 [ \stemUp fis8 ] \stemUp fis4 r2 | % 222
    \stemUp a8 [ \stemUp a8 ] \stemUp a4 r2 | % 223
    r8 \stemDown fis'8 [ \stemDown fis8 \stemDown fis8 ] \stemDown fis8
    [ \stemDown fis8 \stemDown fis8 \stemDown fis8 ] | % 224
    \stemDown fis4 \stemUp cis,4 r2 | % 225
    r8 \stemUp gis'8 [ \stemUp gis8 \stemUp gis8 ] r8 \stemUp fis8 [
    \stemUp fis8 \stemUp fis8 ] | % 226
    \stemUp fis4 r4 \stemDown <eis cis' gis'>4 _\f r4 | % 227
    \stemUp fis16 [ _\f \stemUp fis16 \stemUp eis16 \stemUp eis16 ]
    \stemUp fis16 [ \stemUp fis16 \stemUp gis16 \stemUp gis16 ] \stemUp
    a16 [ \stemUp a16 \stemUp gis16 \stemUp gis16 ] \stemUp a16 [
    \stemUp a16 \stemUp b16 \stemUp b16 ] | % 228
    \stemDown cis16 [ \stemDown cis16 \stemDown bis16 \stemDown bis16 ]
    \stemDown cis16 [ \stemDown cis16 \stemDown d16 \stemDown d16 ]
    \stemDown cis16 [ \stemDown cis16 \stemDown b16 \stemDown b16 ]
    \stemUp a16 [ \stemUp a16 \stemUp gis16 \stemUp gis16 ] | % 229
    \stemUp fis8 -. [ _\p \stemUp eis8 -. \stemUp fis8 -. \stemUp gis8
    -. ] \stemUp a8 -. [ \stemUp gis8 -. \stemUp a8 -. \stemUp b8 -. ] |
    \barNumberCheck #230
    \stemDown cis8 -. [ \stemDown bis8 -. \stemDown cis8 -. \stemDown d8
    -. ] \stemUp cis8 -. [ \stemUp b8 -. \stemUp a8 -. \stemUp gis8 -. ]
    | % 231
    \stemUp fis8 -. [ \stemUp eis8 -. \stemUp fis8 -. \stemUp gis8 -. ]
    \stemUp a8 -. [ \stemUp gis8 -. \stemUp a8 -. \stemUp b8 -. ] | % 232
    \stemDown c8 -. [ \stemDown b8 -. \stemDown ais8 -. \stemDown c8 -.
    ] \stemUp b8 -. [ \stemUp gis8 -. \stemUp a8 -. \stemUp fis8 -. ] | % 233
    \stemUp e16 [ _\f \stemUp e16 \stemUp dis16 \stemUp dis16 ] \stemUp
    e16 [ \stemUp e16 \stemUp fis16 \stemUp fis16 ] \stemUp g16 [
    \stemUp g16 \stemUp fis16 \stemUp fis16 ] \stemUp g16 [ \stemUp g16
    \stemUp a16 \stemUp a16 ] | % 234
    \stemUp b16 [ \stemUp b16 \stemUp ais16 \stemUp ais16 ] \stemDown b16
    [ \stemDown b16 \stemDown c16 \stemDown c16 ] \stemUp b16 [ \stemUp
    b16 \stemUp a16 \stemUp a16 ] \stemUp g16 [ \stemUp g16 \stemUp fis16
    \stemUp fis16 ] | % 235
    \stemUp e8 -. [ _\p \stemUp dis8 -. \stemUp e8 -. \stemUp fis8 -. ]
    \stemUp g8 -. [ \stemUp fis8 -. \stemUp g8 -. \stemUp a8 -. ] | % 236
    \stemDown b8 -. [ \stemDown ais8 -. \stemDown b8 -. \stemDown c8 -.
    ] \stemUp b8 -. [ \stemUp a8 -. \stemUp g8 -. \stemUp fis8 -. ] | % 237
    \stemUp e8 -. [ \stemUp dis8 -. \stemUp e8 -. \stemUp fis8 -. ]
    \stemUp g8 -. [ \stemUp fis8 -. \stemUp g8 -. \stemUp a8 -. ] | % 238
    \stemUp bes8 -. [ \stemUp a8 -. \stemUp gis8 -. \stemUp bes8 -. ]
    \stemUp a8 -. [ \stemUp fis8 -. \stemUp g8 -. \stemUp e8 -. ] | % 239
    \stemUp d16 [ _\f \stemUp a'16 \stemUp fis16 \stemUp a16 ] \stemUp
    fis16 [ \stemUp a16 \stemUp fis16 \stemUp a16 ] \stemUp fis16 [
    \stemUp a16 \stemUp fis16 \stemUp a16 ] \stemUp fis16 [ \stemUp a16
    \stemUp fis16 \stemUp a16 ] | \barNumberCheck #240
    \stemUp e16 [ \stemUp a16 \stemUp e16 \stemUp a16 ] \stemUp e16 [
    \stemUp a16 \stemUp e16 \stemUp a16 ] \stemUp g16 [ \stemUp a16
    \stemUp g16 \stemUp a16 ] \stemUp g16 [ \stemUp a16 \stemUp g16
    \stemUp a16 ] | % 241
    \stemUp fis16 [ \stemUp a16 \stemUp fis16 \stemUp a16 ] \stemUp fis16
    [ \stemUp a16 \stemUp fis16 \stemUp a16 ] \stemUp fis16 [ \stemUp a16
    \stemUp fis16 \stemUp a16 ] \stemUp fis16 [ \stemUp a16 \stemUp fis16
    \stemUp a16 ] | % 242
    \stemUp cis,16 [ \stemUp a'16 \stemUp cis,16 \stemUp a'16 ] \stemUp
    cis,16 [ \stemUp a'16 \stemUp cis,16 \stemUp a'16 ] \stemUp e16 [
    \stemUp a16 \stemUp e16 \stemUp a16 ] \stemUp e16 [ \stemUp a16
    \stemUp e16 \stemUp a16 ] | % 243
    \stemDown fis'16 ( [ \stemDown e16 ) \stemDown g16 \stemDown fis16 ]
    \stemDown a16 [ \stemDown g16 \stemDown fis16 \stemDown e16 ]
    \stemDown d16 ( [ \stemDown cis16 ) \stemDown e16 \stemDown d16 ]
    \stemDown fis8 r8 | % 244
    \stemDown d16 ( [ \stemDown cis16 ) \stemDown e16 \stemDown d16 ]
    \stemDown fis16 [ \stemDown e16 \stemDown d16 \stemDown cis16 ]
    \stemDown b16 ( [ \stemDown ais16 ) \stemDown cis16 \stemDown b16 ]
    \stemDown d8 r8 | % 245
    \stemDown b16 ( [ \stemDown ais16 ) \stemDown cis16 \stemDown b16 ]
    \stemDown d16 [ \stemDown cis16 \stemDown b16 \stemDown a16 ]
    \stemUp gis16 ( [ \stemUp fis16 ) \stemUp a16 \stemUp gis16 ]
    \stemUp b16 [ \stemUp a16 \stemUp gis16 \stemUp fis16 ] | % 246
    \stemUp e8 r8 \stemUp <e b'>2 \stemDown a8. ( [ \stemDown gis32
    \stemDown a32 ) ] | % 247
    \stemUp gis16 [ \stemUp e16 \stemUp fis16 \stemUp gis16 ] \stemDown
    a16 [ \stemDown b16 \stemDown cis16 \stemDown dis16 ] \stemDown e16
    [ \stemDown fis16 \stemDown gis16 \stemDown a16 ] \stemDown b16 [
    \stemDown gis16 \stemDown b16 \stemDown gis16 ] | % 248
    \stemDown e4 r4 r2 | % 249
    r4 \stemUp e,2 ( _\p \stemUp e4 ) | \barNumberCheck #250
    \stemUp e8 -. [ \stemUp e8 -. \stemUp gis8 -. \stemUp gis8 -. ]
    \stemUp a8 -. [ \stemUp a8 -. \stemUp b8 -. \stemUp b8 -. ] | % 251
    \stemUp a8 [ \stemUp a,8 \stemUp a8 \stemUp a8 ] \stemUp a8 [
    \stemUp a8 \stemUp a8 \stemUp a8 ] | % 252
    \stemUp a4 r4 r8 \stemUp a8 [ \stemUp cis8 \stemUp a8 ] | % 253
    \stemUp b4 r4 \stemUp b4 r4 | % 254
    r2 r8 \stemUp e8 ( [ \stemUp dis8 \stemUp d8 ) ] | % 255
    \stemUp cis8 [ \stemUp cis8 \stemUp cis8 \stemUp cis8 ] \stemUp b8 [
    \stemUp b8 \stemUp a8 \stemUp a8 ] | % 256
    \stemUp gis4 \stemUp gis'2 ( \stemUp a4 ) | % 257
    \stemUp fis4 r4 r4 \stemUp gis,4 ( | % 258
    \stemUp a4 ) r4 r8 \stemUp e'8 -. \stemDown a8 -. [ \stemDown b16 (
    \stemDown a32 \stemDown b32 ) ] | % 259
    \stemDown cis2 \stemDown a4. ( \stemDown b8 ) | \barNumberCheck #260
    \stemDown d8 ( [ \stemDown cis8 ) \stemDown b8 -. \stemDown a8 -. ]
    \stemUp a4 r4 | % 261
    \stemUp fis4 ( \stemUp d8 ) r8 \stemUp fis4 ( \stemUp d8 ) r8 | % 262
    \stemUp cis2 ( \stemUp b4 ) r4 | % 263
    \stemUp gis4 r4 r8 \stemUp gis8 [ \stemUp gis8 \stemUp gis8 ] | % 264
    r8 \stemUp a8 [ \stemUp a8 \stemUp a8 ] r8 \stemUp gis'8 [ \stemUp
    gis8 \stemUp gis8 ] | % 265
    \stemUp a4 r4 r2 | % 266
    r4 \stemUp fis4 ( \stemUp e2 ) | % 267
    \stemUp e8 [ \stemUp e8 \stemUp e8 \stemUp e8 ] r8 \stemUp fis8 [
    \stemUp fis8 \stemUp fis8 ] | % 268
    r8 \stemUp e8 [ \stemUp cis8 \stemUp cis8 ] \stemUp b8 [ \stemUp b8
    \stemUp b8 \stemUp b8 ] | % 269
    \stemUp a8 [ _\f \stemUp cis16 \stemUp e16 ] \stemUp a16 [ \stemUp e16
    \stemUp a16 \stemUp e16 ] \stemDown cis'16 [ \stemDown a16 \stemDown
    cis16 \stemDown a16 ] \stemDown e'16 [ \stemDown cis16 \stemDown e16
    \stemDown cis16 ] | \barNumberCheck #270
    \stemDown a'4 r4 \stemUp a,4 _\p r4 | % 271
    \stemUp <fis a>4 r4 \stemUp <d e>4 r4 | % 272
    \stemUp <c e>4 r4 \stemUp a'4 r4 | % 273
    \stemUp a4 r4 \stemUp gis4 r4 | % 274
    \stemUp a4 r4 \stemDown c4 r4 | % 275
    \stemDown c4 r4 \stemDown b4 r4 | % 276
    \stemDown c4 r4 \stemDown b4 r4 | % 277
    \stemDown c4 r4 \stemUp fis,4 r4 | % 278
    b1 | % 279
    cis1 ( | \barNumberCheck #280
    \stemDown d8 ) r8 \stemUp cis,8 r8 \stemUp d8 r8 \stemUp e8 r8 | % 281
    \stemUp f2 ( \stemUp fis2 ) | % 282
    \stemDown e8 -. [ \stemDown e16 ( \stemDown fis16 ] \stemDown gis8 )
    [ \stemDown a8 -. ] \stemDown b2 ( | % 283
    \stemUp b8 ) [ \stemUp e,8 ( \stemUp fis8 \stemUp gis8 ) ] \stemDown
    a4. ( \stemDown gis16 [ \stemDown a16 ) ] | % 284
    \stemDown e8 -. [ \stemDown e16 ( \stemDown fis16 ] \stemDown gis8 )
    [ \stemDown a8 -. ] \stemDown b2 ( | % 285
    \stemUp b8 ) [ \stemUp e,8 ( \stemUp fis8 \stemUp gis8 ) ] \stemDown
    a4. ( \stemDown gis16 [ \stemDown a16 ) ] | % 286
    \stemUp gis4 r8 \stemDown b8 -. _\f \stemUp a8 -. r8 \stemUp <a, e'
        c'>8 -. r8 | % 287
    \stemUp <gis' b>4 r8 \stemDown b8 -. \stemUp a8 -. r8 \stemDown <e
        c' a'>8 -. r8 | % 288
    \stemDown <e b' gis'>4 r4 r2 | % 289
    \stemUp e2 ( _\p \stemUp d2 | \barNumberCheck #290
    \stemUp cis2 \stemUp d2 | % 291
    \stemUp e4 ) r4 \stemUp b4 r4 | % 292
    \stemUp a8 [ \stemUp cis8 \stemUp cis8 \stemUp cis8 ] r8 \stemUp cis8
    [ \stemUp cis8 \stemUp cis8 ] | % 293
    \stemUp d4 r4 r8 \stemUp b8 ( [ \stemUp a8 \stemUp gis8 ) ] | % 294
    \stemUp a8 [ \stemUp cis'8 \stemUp cis8 \stemUp cis8 ] r8 \stemDown
    cis8 [ \stemDown cis8 \stemDown cis8 ] | % 295
    \stemDown d4 r4 r8 \stemUp b,8 ( [ \stemUp a8 \stemUp gis8 ) ] | % 296
    \stemUp a4 r8 \stemUp a8 ( \stemUp a4 ) r8 \stemUp a8 ( | % 297
    \stemUp a4 ) r8 \stemUp cis8 ( \stemUp b4 ) r8 \stemUp cis8 ( | % 298
    \stemUp b4 ) r8 \stemUp e8 ( \stemUp fis4 ) r8 \stemUp b,8 ( | % 299
    \stemUp b4 ) r4 \stemUp b2 ( | \barNumberCheck #300
    \stemUp cis4 ) r4 r4 \stemUp a4 ( | % 301
    \stemUp a4 ) r4 r2 | % 302
    r4 \stemUp c4 ( \stemUp cis4 \stemUp d4 ) | % 303
    \stemUp cis8 \stemUp cis8 ( [ \stemUp a8 \stemUp cis8 ] \stemUp a8 [
    \stemUp cis8 \stemUp a8 \stemUp cis8 ) ] | % 304
    \stemUp b8 ( [ \stemUp cis8 \stemUp b8 \stemUp cis8 ] \stemUp b8 [
    \stemUp cis8 \stemUp b8 \stemUp cis8 ) ] | % 305
    \stemUp a8 ( [ \stemUp cis8 \stemUp a8 \stemUp cis8 ) ] r8 \stemUp a8
    [ \stemUp a8 \stemUp a8 ] | % 306
    r8 \stemUp gis8 [ \stemUp gis8 \stemUp gis8 ] r8 \stemUp eis'8 [
    \stemUp eis8 \stemUp eis8 ] | % 307
    \stemUp fis8 \stemUp cis8 ( [ \stemUp a8 \stemUp cis8 ] \stemUp a8 [
    \stemUp cis8 \stemUp a8 \stemUp cis8 ) ] | % 308
    \stemUp b8 ( [ \stemUp cis8 \stemUp b8 \stemUp cis8 ] \stemUp b8 [
    \stemUp cis8 \stemUp b8 \stemUp cis8 ) ] | % 309
    \stemUp a8 ( [ \stemUp cis8 \stemUp a8 \stemUp cis8 ) ] \stemUp fis2
    ~ | \barNumberCheck #310
    \stemUp fis2 ( \stemUp eis2 ) | % 311
    \stemUp fis8 ( [ \stemUp cis8 \stemUp a8 \stemUp cis8 ) ] \stemUp a4
    r4 | % 312
    \stemUp d2 ( \stemUp d4 ) r4 | % 313
    \stemUp d2 ( \stemUp d4 ) r4 | % 314
    \stemUp <b d>8 \stemUp <b d>4 \stemUp <b d>4 \stemUp <b d>4 \stemUp
    <b d>8 | % 315
    \stemUp <b d>4 r4 r2 ^\fermata | % 316
    r2 \stemUp e2 _\p | % 317
    \stemUp cis4. ( \stemUp d8 ) \stemUp fis8 ( [ \stemUp e8 ) \stemUp d8
    -. \stemUp cis8 -. ] | % 318
    \stemUp b4. ( \stemUp cis8 ) \stemUp e8 ( [ \stemUp d8 ) \stemUp cis8
    -. \stemUp b8 -. ] | % 319
    \stemUp a2 \stemUp b4 -. \stemUp a4 -. | \barNumberCheck #320
    \stemUp gis4 -. \stemUp e'4 -. r4 \stemUp e4 ~ | % 321
    \stemUp e4 r8 \stemUp fis8 ( \stemUp e4 \stemUp d4 ) | % 322
    \stemUp cis4 r4 r8 \stemUp a'8 ( [ \stemUp gis8 \stemUp d8 ] | % 323
    \stemDown cis8 ) [ \stemDown cis'16 ( \stemDown b32 \stemDown cis32
    ] \stemDown d8 ) r8 r8 \stemUp a8 ( [ \stemUp gis8 \stemUp d8 ] | % 324
    \stemDown cis8 ) [ \stemDown cis'16 ( \stemDown b32 \stemDown cis32
    ] \stemDown d8 ) r8 r8 \stemDown a8 ( \stemDown gis8 ) [ \stemDown
    gis'16 ( \stemDown fis32 \stemDown gis32 ] | % 325
    \stemDown a8 ) r8 r8 \stemUp gis,16 ( [ \stemUp fis32 \stemUp gis32
    ] \stemUp a8 ) r8 r8 \stemDown b16 ( [ \stemDown a32 \stemDown b32 )
    ] | % 326
    \stemDown cis4 \stemDown cis8 -. [ \stemDown cis8 -. ] \stemDown cis4.
    ( \stemDown e8 ) | % 327
    \stemDown fis8 ( [ \stemDown d8 ) \stemDown d8 -. \stemDown d8 -. ]
    \stemDown d4. ( \stemDown fis8 ) | % 328
    \stemDown cis4 ( \stemDown a8 [ \stemDown cis8 ) ] \stemUp cis8 ( [
    \stemUp b8 \stemUp a8 \stemUp gis8 ) ] | % 329
    \stemUp a4 r4 r2 | \barNumberCheck #330
    e1 ( | % 331
    \stemUp d4 ) r8 \stemDown e'16 ( [ \stemDown d32 \stemDown e32 ) ]
    \stemDown d8 -. [ \stemDown d8 -. \stemDown e8 -. \stemDown e8 -. ]
    | % 332
    \stemDown d4 r8 \stemUp e,16 ( [ \stemUp d32 \stemUp e32 ) ] \stemUp
    d8 -. [ \stemUp d8 -. \stemUp e8 -. \stemUp e8 -. ] | % 333
    \stemUp d8 -. [ \stemUp a8 -. ] \stemUp a2. ~ | % 334
    \stemUp a4 r4 r8 \stemUp a8 [ \stemUp a8 \stemUp a8 ] | % 335
    \stemUp b4 r4 r8 \stemUp b8 [ \stemUp b8 \stemUp b8 ] | % 336
    \stemUp c4 r4 r8 \stemUp c8 [ \stemUp c8 \stemUp c8 ] | % 337
    \stemUp cis8 [ \stemUp cis8 \stemUp cis8 \stemUp cis8 ] r8 \stemUp
    a'8 [ \stemUp a8 \stemUp a8 ] | % 338
    r8 \stemDown cis8 [ \stemDown cis8 \stemDown cis8 ] r8 \stemDown e8
    [ \stemDown e8 \stemDown e8 ] | % 339
    \stemDown e8 r8 \stemUp a,8 -. [ \stemUp a8 -. ] \stemUp a8 -. r8
    \stemUp a8 -. [ \stemUp a8 -. ] | \barNumberCheck #340
    \stemUp a8 -. r8 \stemUp cis,8 -. [ \stemUp cis8 -. ] \stemUp cis8
    -. r8 \stemUp cis8 -. [ \stemUp cis8 -. ] | % 341
    \stemUp cis8 [ \stemUp a8 \stemUp a8 \stemUp a8 ] \stemUp a8 [
    \stemUp a8 \stemUp a8 \stemUp a8 ] | % 342
    \stemUp gis16 [ _\markup{ \tiny\italic {cresc.} } \stemUp gis16
    \stemUp gis16 \stemUp gis16 ] \stemUp gis4 :16 \stemUp gis2 :16 | % 343
    \stemUp a16 [ _\f \stemUp e'16 \stemUp cis16 \stemUp e16 ] \stemUp
    cis16 [ \stemUp e16 \stemUp cis16 \stemUp e16 ] \stemUp cis16 [
    \stemUp e16 \stemUp cis16 \stemUp e16 ] \stemUp cis16 [ \stemUp e16
    \stemUp cis16 \stemUp e16 ] | % 344
    \stemUp b16 [ \stemUp e16 \stemUp b16 \stemUp e16 ] \stemUp b16 [
    \stemUp e16 \stemUp b16 \stemUp e16 ] \stemUp b16 [ \stemUp e16
    \stemUp b16 \stemUp e16 ] \stemUp b16 [ \stemUp e16 \stemUp b16
    \stemUp e16 ] | % 345
    \stemUp a,16 [ \stemUp e'16 \stemUp a,16 \stemUp e'16 ] \stemUp a,16
    [ \stemUp e'16 \stemUp a,16 \stemUp e'16 ] \stemUp cis16 [ \stemUp e16
    \stemUp cis16 \stemUp e16 ] \stemUp cis16 [ \stemUp e16 \stemUp cis16
    \stemUp e16 ] | % 346
    \stemUp b16 [ \stemUp e16 \stemUp b16 \stemUp e16 ] \stemUp b16 [
    \stemUp e16 \stemUp b16 \stemUp e16 ] \stemUp b16 [ \stemUp e16
    \stemUp b16 \stemUp e16 ] \stemUp b16 [ \stemUp e16 \stemUp b16
    \stemUp e16 ] | % 347
    \stemDown e'4 ~ \stemDown e16 [ \stemDown d16 -. \stemDown cis16 -.
    \stemDown b16 -. ] \stemUp a16 -. [ \stemUp gis16 -. \stemUp fis16
    -. \stemUp e16 -. ] \stemUp d16 -. [ \stemUp cis16 -. \stemUp b16 -.
    \stemUp a16 -. ] | % 348
    \stemUp g'8 \stemUp g4 -. \stemUp g8 ( \stemUp eis8 ) \stemUp eis4
    -. \stemUp eis8 | % 349
    \stemUp fis4 -. \stemDown a'4 -. r4 \stemUp dis,,4 -. |
    \barNumberCheck #350
    \stemUp e8. [ \stemUp fis16 ] \stemUp gis16 [ \stemUp a16 \stemUp b16
    \stemUp cis16 ] \stemDown d16 [ \stemDown e16 \stemDown fis16
    \stemDown gis16 ] \stemDown a16 [ \stemDown b16 \stemDown cis16
    \stemDown d16 ] | % 351
    \stemDown e8 [ \stemDown cis16 \stemDown a16 ] \stemDown e8 [
    \stemDown cis16 \stemDown a16 ] \stemUp e4 \stemDown <e b' gis'>4 | % 352
    \stemDown <e cis' a'>4 r4 \stemUp a4 ( _\p \stemDown cis8 ) r8 | % 353
    \stemUp fis,4 ( \stemUp a8 ) r8 \stemUp fis8 -. r8 \stemUp g8 -. r8
    | % 354
    \stemUp a4 r4 \stemUp d,4 ( \stemUp fis8 ) r8 | % 355
    \stemUp b,4 ( \stemUp d8 ) r8 \stemUp d8 -. r8 \stemUp d8 -. r8 | % 356
    \stemUp cis4 r4 \stemUp d8 -. r8 \stemUp d8 -. r8 | % 357
    \stemUp cis4 r4 \stemUp d8 -. r8 \stemUp d8 -. r8 | % 358
    \stemUp cis8 [ _\f \stemUp cis16 \stemUp e16 ] \stemUp a16 [ \stemUp
    e16 \stemUp a16 \stemUp e16 ] \stemDown cis'16 [ \stemDown a16
    \stemDown cis16 \stemDown a16 ] \stemDown e'16 [ \stemDown cis16
    \stemDown e16 \stemDown cis16 ] | % 359
    \stemUp a4 -. \stemDown <e cis' a'>4 -. \stemUp a,4 -. r4 \bar "|."
    \time 3/4  \key d \major \stemUp d8 ( [ _\p \stemUp a8 \stemUp d8
    \stemUp a8 \stemUp d8 \stemUp a8 ) ] \stemUp cis8 ( [ \stemUp a8
    \stemUp d8 \stemUp a8 \stemUp d8 \stemUp a8 ) ] \stemUp d8 ( [
    \stemUp a8 \stemUp d8 \stemUp a8 \stemUp d8 \stemUp a8 ) ] \stemUp
    cis8 ( [ \stemUp a8 \stemUp d8 \stemUp a8 \stemUp d8 \stemUp a8 ) ]
    \stemUp cis8 ( [ \stemUp a8 \stemUp cis8 \stemUp a8 \stemUp d8
    \stemUp a8 ) ] \stemUp cis8 ( [ \stemUp a8 \stemUp cis8 \stemUp a8
    \stemUp b8 \stemUp d8 ) ] \stemUp a8 ( [ \stemUp cis8 \stemUp a8
    \stemUp cis8 \stemUp gis8 \stemUp b8 ) ] \stemUp a8 \stemUp b'8 ( [
    _\f \stemUp a8 \stemUp g8 \stemUp fis8 \stemUp e8 ) ] \stemUp fis8 (
    [ _\f \stemUp a8 \stemUp fis8 \stemUp a8 \stemUp fis8 \stemUp a8 ) ]
    \stemUp g8 ( [ \stemUp a8 \stemUp fis8 \stemUp a8 \stemUp fis8
    \stemUp a8 ) ] \stemUp fis8 ( [ \stemUp a8 \stemUp fis8 \stemUp a8
    \stemUp fis8 \stemUp a8 ) ] \stemUp e8 ( [ \stemUp a8 \stemUp fis8
    \stemUp a8 \stemUp fis8 \stemUp a8 ) ] \stemUp e8 ( [ \stemUp a8
    \stemUp e8 \stemUp a8 \stemUp fis8 \stemUp a8 ) ] \stemUp e8 ( [
    \stemUp a8 \stemUp e8 \stemUp a8 \stemUp d,8 \stemUp fis8 ) ]
    \stemUp cis8 ( [ \stemUp e8 \stemUp cis8 \stemUp e8 \stemUp d8
    \stemUp e8 ) ] \stemUp cis8 \stemUp g'8 ( [ _\p \stemUp fis8 \stemUp
    e8 \stemUp d8 \stemUp cis8 ) ] \stemUp d8 ( [ \stemUp a8 \stemUp d8
    \stemUp a8 \stemUp d8 \stemUp a8 ) ] \stemUp b8 \stemUp g'4 (
    \stemUp fis8 [ \stemUp e8 \stemUp dis8 ) ] \stemUp e8 ( [ \stemUp b8
    \stemUp e8 \stemUp b8 \stemUp e8 \stemUp b8 ) ] \stemUp cis8 \stemUp
    a'4 ( \stemUp gis8 [ \stemUp fis8 \stemUp eis8 ) ] \stemUp fis8 ( [
    \stemUp a,8 ) ] \stemUp b4 \stemUp a8 ( [ \stemUp cis8 ) ] \stemUp d8
    ( [ \stemUp b8 \stemUp a8 \stemUp e'8 \stemUp a,8 \stemUp d8 ) ]
    \stemUp b8 ( [ \stemUp e8 \stemUp d8 \stemUp fis8 \stemUp a,8
    \stemUp cis8 ) ] \stemUp d8 \stemUp b'8 ( [ _\f \stemUp a8 \stemUp g8
    \stemUp fis8 \stemUp e8 ) ] \stemUp fis8 ( [ \stemUp d8 \stemUp fis8
    \stemUp e8 \stemUp d8 \stemUp cis8 ) ] \stemUp b8 \stemDown b'4 (
    \stemDown a8 [ \stemDown g8 \stemDown fis8 ) ] \stemUp g8 ( [
    \stemUp e8 \stemUp g8 \stemUp fis8 \stemUp e8 \stemUp d8 ) ] \stemUp
    cis8 \stemDown cis'4 ( \stemDown b8 [ \stemDown a8 \stemDown gis8 )
    ] \stemUp a8 ( [ \stemUp cis,8 \stemUp a'8 \stemUp g8 \stemUp fis8
    \stemUp e8 ) ] \stemUp d8 ( [ \stemUp b8 \stemUp e8 \stemUp a8
    \stemUp d,8 \stemUp a'8 ) ] \stemUp b8 ( [ \stemUp g8 \stemUp fis8
    \stemUp a8 \stemUp g8 \stemUp a8 ) ] \stemUp fis8 \stemUp g8 ( [ _\p
    \stemUp fis8 \stemUp e8 \stemUp d8 \stemUp cis8 ) ] r8 \stemUp d8 [
    \stemUp d8 \stemUp d8 \stemUp d8 \stemUp d8 ] r8 \stemUp cis8 [
    \stemUp cis8 \stemUp cis8 \stemUp cis8 \stemUp cis8 ] r8 \stemUp b4
    \stemUp d8 ( [ \stemUp cis8 \stemUp b8 ) ] \stemUp gis4 ( \stemUp a4
    ) r4 r8 \stemUp e'8 -. [ \stemUp cis8 -. \stemUp e8 -. \stemUp cis8
    -. \stemUp e8 -. ] r8 \stemUp d8 -. [ \stemUp b8 -. \stemUp d8 -.
    \stemUp b8 -. \stemUp d8 -. ] r8 \stemUp a8 -. [ \stemUp cis8 -.
    \stemUp a8 -. \stemUp cis8 -. \stemUp a8 -. ] r8 \stemUp fis'8 -. [
    \stemUp d8 -. \stemUp fis8 -. \stemUp d8 -. \stemUp fis8 -. ] r8
    \stemUp d8 -. [ \stemUp b8 -. \stemUp d8 -. \stemUp b8 -. \stemUp d8
    -. ] \stemUp a8 r8 \stemUp e'8 r8 \stemUp d8 r8 r8 \stemUp cis8 ( [
    \stemUp a8 \stemUp cis8 \stemUp b8 \stemUp gis8 ) ] \stemUp d'4 (
    \stemUp cis8 ) \stemUp a4 ( \stemUp b8 ) \stemUp cis8 -. [ \stemUp
    a'8 -. \stemUp e8 -. \stemUp a8 -. \stemUp e8 -. \stemUp a8 -. ] r8
    \stemUp fis8 -. [ \stemUp d8 -. \stemUp b'8 -. \stemUp fis8 -.
    \stemUp b8 -. ] r8 \stemUp g8 -. [ \stemUp e8 -. \stemUp cis'8 -.
    \stemUp g8 -. \stemUp cis8 -. ] r8 \stemUp a8 -. [ \stemUp fis8 -.
    \stemUp d'8 -. \stemUp a8 -. \stemUp d8 -. ] r8 \stemUp e,8 -. [
    \stemUp b8 -. \stemUp b'8 -. \stemUp e,8 -. \stemUp d'8 -. ] r8
    \stemUp a,8 [ \stemUp cis8 \stemUp e8 \stemUp a8 \stemUp cis8 ] r8
    \stemUp b,8 [ \stemUp d8 \stemUp fis8 \stemUp b8 \stemUp d8 ] r8
    \stemUp a,8 [ \stemUp a8 \stemUp a8 \stemUp a8 \stemUp a8 ] \stemUp
    a16 [ _\markup{ \tiny\italic {cresc.} } \stemUp a16 \stemUp a16
    \stemUp a16 ] \stemUp gis2 :16 \stemUp a8 _\f \stemUp e'4 \stemUp a4
    \stemDown cis8 \stemDown e8 \stemUp a,,8 [ _\p \stemUp a8 \stemUp a8
    \stemUp a8 \stemUp a8 ] \stemUp b8 _\f \stemUp d4 \stemUp gis4
    \stemDown b8 \stemDown d8 \stemUp gis,,8 [ _\p \stemUp gis8 \stemUp
    gis8 \stemUp gis8 \stemUp gis8 ] \stemUp g8 _\f \stemUp e'4 \stemUp
    g4 \stemDown cis8 \stemDown e4 r4 r4 ^\fermata \stemUp d,8 ( [ _\p
    \stemUp a8 \stemUp d8 \stemUp a8 \stemUp d8 \stemUp a8 ) ] \stemUp
    cis8 ( [ \stemUp a8 \stemUp d8 \stemUp a8 \stemUp d8 \stemUp a8 ) ]
    \stemUp d8 ( [ \stemUp a8 \stemUp d8 \stemUp a8 \stemUp d8 \stemUp a8
    ) ] \stemUp cis8 ( [ \stemUp a8 \stemUp d8 \stemUp a8 \stemUp d8
    \stemUp a8 ) ] \stemUp cis8 ( [ \stemUp a8 \stemUp cis8 \stemUp a8
    \stemUp d8 \stemUp a8 ) ] \stemUp cis8 ( [ \stemUp a8 \stemUp cis8
    \stemUp a8 \stemUp b8 \stemUp d8 ) ] \stemUp a8 ( [ \stemUp cis8
    \stemUp a8 \stemUp cis8 \stemUp gis8 \stemUp b8 ) ] \stemUp a8
    \stemUp g'8 ( [ \stemUp fis8 \stemUp e8 \stemUp d8 \stemUp cis8 ) ]
    \stemUp d8 ( [ \stemUp a8 \stemUp d8 \stemUp a8 \stemUp d8 \stemUp a8
    ) ] \stemUp b8 \stemUp g'4 ( \stemUp fis8 [ \stemUp e8 \stemUp dis8
    ) ] \stemUp e8 ( [ \stemUp b8 \stemUp e8 \stemUp b8 \stemUp e8
    \stemUp b8 ) ] \stemUp cis8 \stemUp a'4 ( \stemUp gis8 [ \stemUp fis8
    \stemUp eis8 ) ] \stemUp fis8 ( [ \stemUp a,8 ) ] \stemUp b4 \stemUp
    a8 ( [ \stemUp cis8 ) ] \stemUp d8 ( [ \stemUp b8 \stemUp a8 \stemUp
    e'8 \stemUp a,8 \stemUp d8 ) ] \stemUp b8 ( [ \stemUp e8 \stemUp d8
    \stemUp fis8 \stemUp a,8 \stemUp cis8 ) ] \stemUp d8 \stemUp b'8 ( [
    _\f \stemUp a8 \stemUp g8 \stemUp fis8 \stemUp e8 ) ] \stemUp fis8
    \stemUp fis4 \stemUp fis4 \stemUp fis8 \stemUp g8 \stemDown b4 (
    \stemDown a8 [ \stemDown g8 \stemDown fis8 ) ] \stemUp g8 \stemUp g4
    \stemUp g4 \stemUp gis8 \stemUp a8 \stemDown cis4 ( \stemDown b8 [
    \stemDown a8 \stemDown gis8 ) ] \stemUp a8 \stemUp a4 \stemUp a4
    \stemUp a8 \stemUp a8 ( [ \stemUp g8 \stemUp d'8 ) \stemUp d,8 (
    \stemUp dis8 \stemUp c'8 ) ] \stemUp b8 ( [ \stemUp e,16 \stemUp g16
    ) ] \stemUp fis8 ( [ \stemUp a8 \stemUp g8 \stemUp a8 ) ] \stemUp
    fis8 \stemUp fis8 [ _\p \stemUp fis8 \stemUp fis8 \stemUp fis8
    \stemUp fis8 ] r8 \stemUp g8 [ \stemUp g8 \stemUp g8 \stemUp fis8
    \stemUp fis8 ] r8 \stemUp g8 [ \stemUp g8 \stemUp g8 \stemUp fis8
    \stemUp fis8 ] r8 \stemUp e8 [ \stemUp d8 \stemUp d8 \stemUp a8
    \stemUp a8 ] \stemUp a8 [ \stemUp a8 \stemUp a8 \stemUp a8 \stemUp a8
    \stemUp a8 ] r8 \stemUp a8 [ \stemUp a8 \stemUp a8 \stemUp a8
    \stemUp a8 ] r8 \stemDown e''8 [ \stemDown e8 \stemDown e8 \stemDown
    d8 \stemDown d8 ] \stemDown b4 r8 \stemUp e,8 ( [ \stemUp fis8
    \stemUp g8 ) ] r8 \stemUp d8 [ \stemUp d8 \stemUp d8 \stemUp d8
    \stemUp d8 ] \stemUp d16 [ \stemUp d16 \stemUp d16 \stemUp d16 ]
    \stemUp cis4 :16 \stemUp cis4 :16 \stemUp d4 r4 \stemUp g,4 \stemUp
    a2 \stemUp a8 ( [ \stemUp ais8 ) ] \stemUp b4 r4 \stemDown g''8 r8
    \stemDown fis8 r8 \stemDown d8 r8 \stemUp g,8 r8 \stemUp fis8 -. r8
    \stemUp a,8 -. r8 \stemUp a8 -. r8 \stemUp a4 r4 r4 \bar "|."
    \time 6/8  \key a \major r8 -. [ r8 _\p \stemUp a'8 -. ] \stemUp a8
    -. [ \stemUp a8 -. \stemUp a8 -. ] \stemUp gis4. ( \stemUp a8 ) r8 r8
    \stemUp d,8 -. [ \stemUp d8 -. ] r8 \stemUp fis8 -. [ \stemUp fis8
    -. ] r8 \stemUp e8 -. [ \stemUp e8 -. \stemUp e8 -. ] \stemUp e8 r8
    r8 \stemUp a8 -. [ r8 \stemUp a8 -. ] \stemUp a8 -. [ \stemUp a8 -.
    \stemUp a8 -. ] \stemDown b4. ( \stemUp a8 ) r8 r8 \stemUp fis8 r8 r8
    \stemUp b,8 r8 r8 \stemUp a8 -. [ \stemUp a8 -. \stemUp a8 -. ]
    \stemUp a8 r8 \stemUp a'16 ( [ _\p \stemUp b16 ) ] \stemDown cis8 -.
    [ _\markup{ \tiny\italic {cresc.} } \stemDown cis8 -. \stemDown cis8
    -. ] \stemDown cis8 -. [ \stemDown cis8 -. \stemDown cis8 -. ]
    \stemDown d4. ( _\f \stemDown cis8 ) r8 \stemDown fis16 ( [ _\p
    \stemDown e16 ) ] \stemDown d8 -. r8 \stemDown d16 ( [ \stemDown cis16
    ) ] \stemDown b8 -. r8 \stemUp b16 ( [ \stemUp a16 ) ] \stemUp gis8
    -. [ \stemUp gis16 ( \stemUp a16 \stemUp fis16 \stemUp a16 ) ]
    \stemUp gis8 r8 \stemUp a16 ( [ \stemUp b16 ) ] \stemDown cis8 -. [
    _\markup{ \tiny\italic {cresc.} } \stemDown cis8 -. \stemDown cis8
    -. ] \stemDown cis8 -. [ \stemDown cis8 -. \stemDown cis8 -. ]
    \stemDown <b gis'>4. ( _\f \stemDown <a a'>8 ) r8 \stemDown cis16 (
    [ _\p \stemDown e16 ) ] \stemDown d8 -. r8 \stemUp fis,16 ( [
    \stemUp a16 ) ] \stemUp gis8 -. r8 \stemUp b,16 ( [ \stemUp d16 ) ]
    \stemUp cis4 ( \stemUp e8 ) \stemUp cis4 r8 r8 \stemUp b8 [ _\p
    \stemUp b8 ] \stemUp b8 [ \stemUp b8 \stemUp b8 ] r8 \stemUp a8 [
    \stemUp a8 ] \stemUp a8 [ \stemUp a8 \stemUp a8 ] r8 \stemUp fis'8 [
    \stemUp fis8 ] \stemUp fis8 [ \stemUp fis8 \stemUp fis8 ] \stemUp e4
    r8 r4 \stemUp a,8 -. \stemUp gis4 r8 r4 \stemUp a8 -. \stemUp gis4 r8
    r4. r8 \stemUp e'8 ( [ \stemUp fis8 ] \stemUp gis8 [ \stemUp a8
    \stemUp b8 ) ] \stemUp a8 -. [ r8 \stemUp a8 -. ] \stemUp a8 -. [
    \stemUp a8 -. \stemUp a8 -. ] \stemUp gis4. ( \stemUp a8 ) r8 r8
    \stemUp fis8 -. [ \stemUp fis8 -. ] r8 \stemUp fis8 -. [ \stemUp fis8
    -. ] r8 \stemUp e8 -. [ \stemUp e8 -. \stemUp e8 -. ] \stemUp e8 r8
    r8 \stemUp a8 -. [ r8 \stemUp a8 -. ] \stemUp a8 -. [ \stemUp a8 -.
    \stemUp a8 -. ] \stemDown b4. ( \stemUp a8 ) r8 r8 \stemUp fis8 r8 r8
    \stemUp b,8 r8 r8 \stemUp a8 r8 r8 r4. R2. r8 \stemUp a'16 ( [
    _\markup{ \tiny\italic {cresc.} } \stemUp gis16 \stemUp fis16
    \stemUp e16 ] \stemUp d16 [ \stemUp cis16 \stemUp b16 \stemUp a16
    \stemUp gis16 \stemUp a16 ) ] \stemUp b8 [ \stemUp b'16 ( \stemUp a16
    \stemUp gis16 \stemUp fis16 ] \stemUp e16 [ \stemUp d16 \stemUp cis16
    \stemUp b16 \stemUp a16 \stemUp b16 ) ] \stemUp cis8 r8 r8 r4.
    \stemUp cis2. ( _\p \stemUp d2. ) \stemUp e4 r8 \stemUp e4 r8
    \stemUp eis8 [ \stemUp eis8 \stemUp eis8 ] \stemUp fis8 r8 r8
    \stemUp e16 [ _\f \stemUp a16 \stemUp e16 \stemUp a16 \stemUp e16
    \stemUp a16 ] \stemUp e16 [ \stemUp a16 \stemUp e16 \stemUp a16
    \stemUp e16 \stemUp a16 ] \stemUp fis16 [ \stemUp a16 \stemUp fis16
    \stemUp a16 \stemUp fis16 \stemUp a16 ] \stemUp fis16 [ \stemUp a16
    \stemUp fis16 \stemUp a16 \stemUp fis16 \stemUp b16 ] \stemDown a8
    -. [ \stemDown cis16 ( \stemDown b16 \stemDown cis16 \stemDown a16 )
    ] \stemUp gis8 -. [ \stemUp b16 ( \stemUp a16 \stemUp b16 \stemUp
    gis16 ) ] \stemUp a4 r8 r4. \stemDown b2. _\p \stemUp a8 r8 r8
    \stemUp fis8 r8 r8 \stemUp cis8 -. [ \stemUp cis8 -. \stemUp cis8 -.
    ] \stemUp e8 -. [ \stemUp cis8 -. \stemUp e8 -. ] \stemUp a4 r8 r4.
    \stemUp e4. ( \stemUp gis4. ) \stemUp a8 r8 r8 \stemDown b8 r8 r8
    \stemUp a8 r8 r8 \stemUp d,8 [ \stemUp d8 \stemUp d8 ] \stemDown
    <cis' a'>16 [ _\f \stemDown <cis a'>16 \stemDown <cis a'>16
    \stemDown <cis a'>16 \stemDown <cis a'>16 \stemDown <cis a'>16 ]
    \stemDown <cis a'>4. :64 \stemDown <cis a'>8 [ \stemDown cis16
    \stemDown cis16 \stemDown a16 \stemDown a16 ] \stemDown gis16 [
    \stemDown gis16 \stemDown b16 \stemDown b16 \stemDown d16 \stemDown
    d16 ] \stemDown <cis a'>2. :64 \stemDown <cis a'>8 [ \stemDown cis16
    \stemDown cis16 \stemDown a16 \stemDown a16 ] \stemDown gis16 [
    \stemDown gis16 \stemDown b16 \stemDown b16 \stemDown d16 \stemDown
    d16 ] \stemDown cis4 r8 \stemDown <e, cis' a'>4 r8 \stemUp <cis e a>4
    r8 r4. \stemUp a'2. ~ _\p \stemUp a8 [ \stemUp a8 -. \stemUp a8 -. ]
    \stemUp a8 -. [ \stemUp a8 -. \stemUp a8 -. ] \stemUp a8 r8 r8
    \stemUp a8 r8 r8 \stemUp a4 r8 \stemUp a,8 -. [ \stemUp cis8 -.
    \stemUp a8 -. ] \stemUp b4 r8 r8 \stemUp b8 -. [ \stemUp b8 -. ]
    \stemUp cis4 r8 r8 \stemUp cis8 -. [ \stemUp a8 -. ] \stemUp d4.
    \stemUp d8 ( [ \stemUp cis8 \stemUp b8 ) ] \stemUp e8 [ \stemUp e8
    \stemUp e8 ] \stemUp e8 ( [ \stemUp d8 \stemUp b8 ) ] \stemUp a4.
    \grace { \stemUp cis16 ( } \stemUp b8 ) -. [ \stemUp a8 -. \stemUp b8
    -. ] \stemUp cis2. \stemUp d8 r8 r8 \stemUp fis8 r8 r8 \stemUp cis4
    r8 r8 \stemDown cis'8 [ \stemDown cis8 ] \stemDown b4 r8 \stemUp
    dis,4. ( \stemUp e4 ) r8 r4. \stemUp cis4 r8 r4 \stemUp fis8 \stemUp
    dis8 [ \stemUp dis8 \stemUp dis8 ] \stemUp e8 r8 r8 \stemUp e4 (
    \stemUp g8 \stemDown c4 \stemUp e,8 ) \stemUp dis4 ( \stemUp fis8
    \stemDown b4 \stemUp d,8 ) \stemUp cis4 ( \stemUp e8 \stemUp a4
    \stemUp c,8 ) \stemUp b4 r8 r4. r4 r8 \stemUp c4. ~ \stemUp c4
    \stemUp b8 \stemUp b4. ~ \stemUp b4 \stemUp a8 \stemUp a4. ~ \stemUp
    a4 \stemUp g8 \stemUp g4. ~ \stemUp g4 \stemUp c8 \stemUp c4.
    \stemUp b4 ( \stemUp cis16 [ \stemUp dis16 ) ] \stemUp e8 r8 r8 r8
    \stemUp e8 [ \stemUp e8 ] r8 \stemUp dis8 [ \stemUp dis8 ] r8
    \stemUp b8 [ \stemUp b8 ] r8 \stemUp e8 [ \stemUp e8 ] r8 \stemUp
    dis8 [ \stemUp dis8 ] r8 \stemUp dis8 [ \stemUp dis8 ] r8 \stemUp b8
    [ \stemUp b8 ] r8 \stemUp e8 [ \stemUp e8 ] r8 \stemUp dis8 [
    \stemUp dis8 ] r8 \stemUp dis8 [ \stemUp dis8 ] \stemUp e4 r8 r8
    \stemUp e8 [ \stemUp e8 ] \stemUp cis4 r8 r8 \stemUp e8 [ \stemUp e8
    ] \stemUp e8 [ \stemUp e8 \stemUp e8 ] \stemUp dis8 [ \stemUp dis8
    \stemUp dis8 ] \stemUp e4 r8 r8 \stemUp e8 -. [ \stemUp e8 -. ]
    \stemUp e4 r8 r8 \stemUp e8 -. [ \stemUp cis8 -. ] \stemUp cis2. ~
    \stemUp cis8 [ \stemUp dis8 ( \stemUp e8 ] \stemUp g8 [ \stemUp dis8
    \stemUp e8 ) ] \stemUp gis8 [ \stemUp e8 \stemUp e8 ] \stemUp e8 [
    \stemUp e8 \stemUp e8 ] \stemUp e8 [ \stemUp e8 \stemUp e8 ] \stemUp
    dis8 [ \stemUp dis8 \stemUp dis8 ] \stemUp e8 [ \stemUp e8 \stemUp e8
    ] \stemUp e8 [ \stemUp e8 \stemUp e8 ] \stemUp <gis b>2. ( _\sfp
    \stemUp a4 ) r8 r4. R2. r8 \stemUp e8 [ \stemUp e8 ] \stemUp e8 [
    \stemUp e8 \stemUp e8 ] \stemDown f'4. ~ _\sfp \stemDown f8 ( [
    \stemDown e8 \stemDown d8 ) ] \stemDown c4 r8 r4. r8 \stemUp gis,8 (
    [ \stemUp a8 ] \stemUp c8 [ \stemUp b8 \stemUp a8 ) ] \stemUp gis4 r8
    r4. r4 r8 \stemDown c'8 ( [ \stemDown b8 \stemDown a8 ) ] \stemUp
    gis8 r8 r8 r4. r4 r8 \stemUp c,8 ( [ \stemUp b8 \stemUp a8 ) ]
    \stemUp gis8 r8 r8 r4. r8 \stemUp a'8 ( [ \stemUp g8 ) ] \stemUp f8
    -. [ \stemUp f8 ( \stemUp e8 ) ] \stemUp dis2. ( \stemUp e8 ) [
    \stemUp e8 ( \stemUp fis8 ) ] \stemUp gis8 -. [ \stemUp gis8 (
    \stemUp a8 ) ] \stemDown b2. \stemUp a8 -. [ r8 \stemUp a8 -. ]
    \stemUp a8 -. [ \stemUp a8 -. \stemUp a8 -. ] \stemUp gis4. (
    \stemUp a8 ) r8 r8 \stemUp d,8 -. [ \stemUp d8 -. ] r8 \stemUp fis8
    -. [ \stemUp fis8 -. ] r8 \stemUp e8 -. [ \stemUp e8 -. \stemUp e8
    -. ] \stemUp e8 r8 r8 \stemUp a8 -. [ r8 \stemUp a8 -. ] \stemUp a8
    -. [ \stemUp a8 -. \stemUp a8 -. ] \stemDown b4. ( \stemUp a8 ) r8 r8
    \stemUp fis8 r8 r8 \stemUp b,8 r8 r8 \stemDown <cis' a'>16 [ _\f
    \stemDown <cis a'>16 \stemDown <cis a'>16 \stemDown <cis a'>16
    \stemDown <cis a'>16 \stemDown <cis a'>16 ] \stemDown <cis a'>4. :64
    \stemDown <cis a'>8 [ \stemDown cis16 \stemDown cis16 \stemDown a16
    \stemDown a16 ] \stemDown gis16 [ \stemDown gis16 \stemDown b16
    \stemDown b16 \stemDown d16 \stemDown d16 ] \stemDown <cis a'>2. :64
    \stemDown <cis a'>8 [ \stemDown cis16 \stemDown cis16 \stemDown a16
    \stemDown a16 ] \stemDown gis16 [ \stemDown gis16 \stemDown b16
    \stemDown b16 \stemDown d16 \stemDown d16 ] \stemDown cis8 r8 r8
    \stemUp b16 [ \stemUp b16 \stemUp e,16 \stemUp e16 \stemUp d'16
    \stemUp d16 ] \stemUp cis16 [ \stemUp cis16 \stemUp a16 \stemUp a16
    \stemUp e16 \stemUp e16 ] \stemUp b'16 [ \stemUp b16 \stemUp e,16
    \stemUp e16 \stemUp d'16 \stemUp d16 ] \stemUp cis16 [ \stemUp cis16
    \stemUp a16 \stemUp a16 \stemUp e16 \stemUp e16 ] \stemUp gis16 [
    \stemUp gis16 \stemUp cis,16 \stemUp cis16 \stemUp b'16 \stemUp b16
    ] \stemUp a16 [ \stemUp a16 \stemUp fis16 \stemUp fis16 \stemUp cis16
    \stemUp cis16 ] \stemUp gis'16 [ \stemUp gis16 \stemUp cis,16
    \stemUp cis16 \stemUp b'16 \stemUp b16 ] \stemUp a16 [ \stemUp a16
    \stemUp fis16 \stemUp fis16 \stemUp d16 \stemUp d16 ] \stemDown e16
    [ \stemDown e16 \stemDown cis'16 \stemDown cis16 \stemDown e16
    \stemDown e16 ] \stemUp a,16 [ \stemUp a16 \stemUp fis16 \stemUp fis16
    \stemUp d16 \stemUp d16 ] \stemDown e16 [ \stemDown e16 \stemDown
    cis'16 \stemDown cis16 \stemDown e16 \stemDown e16 ] \stemDown d16 [
    \stemDown d16 \stemDown fis16 \stemDown fis16 \stemDown cis16
    \stemDown cis16 ] \stemDown e16 [ \stemDown e16 \stemDown b16
    \stemDown b16 \stemDown d16 \stemDown d16 ] \stemUp a16 [ \stemUp a16
    \stemUp cis16 \stemUp cis16 \stemUp gis16 \stemUp gis16 ] \stemUp b16
    [ \stemUp b16 \stemUp fis16 \stemUp fis16 \stemUp cis'16 \stemUp cis16
    ] \stemDown fis16 [ \stemDown fis16 \stemDown eis16 \stemDown eis16
    \stemDown fis16 \stemDown fis16 ] \stemDown a16 [ \stemDown a16
    \stemDown gis16 \stemDown gis16 \stemDown fis16 \stemDown fis16 ]
    \stemDown eis16 [ \stemDown eis16 \stemDown gis16 \stemDown gis16
    \stemDown cis,16 \stemDown cis16 ] \stemDown a'16 [ \stemDown a16
    \stemDown fis16 \stemDown fis16 \stemDown gis16 \stemDown gis16 ]
    \stemDown eis16 [ \stemDown eis16 \stemDown gis16 \stemDown gis16
    \stemDown cis,16 \stemDown cis16 ] \stemDown a'16 [ \stemDown a16
    \stemDown fis16 \stemDown fis16 \stemDown gis16 \stemDown gis16 ]
    \stemUp eis8 [ \stemUp cis,8 \stemUp cis8 ] \stemUp cis8 [ \stemUp
    cis8 \stemUp cis8 ] \stemUp cis4 r8 r4. r8 \stemUp a8 ( [ _\p
    \stemUp fis'8 ] \stemUp a8 ) [ \stemUp a8 -. \stemUp a8 -. ] r8
    \stemUp b,8 ( [ \stemUp gis'8 ] \stemDown b8 ) [ \stemDown b8 -.
    \stemDown b8 -. ] r8 \stemUp cis,8 ( [ \stemUp eis8 ] \stemUp gis8 )
    [ \stemUp gis8 -. \stemUp gis8 -. ] r8 \stemUp fis8 ( [ \stemUp b8 ]
    \stemUp a8 ) [ \stemUp a8 -. \stemUp a8 -. ] \stemDown b8 ( [
    \stemDown cis8 \stemDown b8 ] \stemUp a8 [ \stemUp cis8 \stemUp a8 )
    ] \stemDown b8 ( [ \stemDown cis8 \stemDown b8 ] \stemUp a8 [
    \stemUp cis8 \stemUp a8 ) ] \stemUp d,2. \stemUp cis4 ( \stemUp eis8
    \stemUp fis4 \stemUp b,8 ) \stemUp a8 [ \stemUp a8 \stemUp a8 ]
    \stemUp a8 [ \stemUp a8 \stemUp a8 ] r8 \stemUp gis8 [ \stemUp gis8
    ] \stemUp gis8 [ \stemUp gis8 \stemUp gis8 ] r8 \stemUp gis8 [
    \stemUp gis8 ] \stemUp gis8 [ \stemUp gis8 \stemUp gis8 ] r8 \stemUp
    a8 ( [ \stemUp b8 ] \stemUp a8 ) [ \stemUp a8 -. \stemUp a8 -. ] R2.
    r8 \stemUp a8 -. [ \stemUp a8 -. ] r8 \stemUp ais8 -. [ \stemUp ais8
    -. ] r8 \stemUp b8 -. [ \stemUp b8 -. ] r8 \stemUp bis8 -. [ \stemUp
    bis8 -. ] \stemDown cis8 [ \stemDown eis'8 \stemDown eis8 ]
    \stemDown eis8 [ \stemDown eis8 \stemDown eis8 ] \stemDown fis4 r8 r4.
    r8 \stemDown eis8 [ \stemDown eis8 ] \stemDown eis8 [ \stemDown eis8
    \stemDown eis8 ] \stemDown fis4 r8 r4. r4 \stemUp cis,8 \stemUp cis8
    [ \stemUp cis8 \stemUp cis8 ] \stemUp cis8 r8 \stemDown <a' e'>8 _\f
    \stemDown <a e'>8 [ \stemDown <a e'>8 \stemDown <a e'>8 ] \stemDown
    <a e'>4 r8 r4. \stemUp <cis, e>2. _\markup{ \tiny\italic {(} } _\p
    _\markup{ \tiny\italic {)} } r8 \stemUp d8 ( [ \stemUp e8 ] \stemUp
    fis8 ) [ \stemUp fis8 -. \stemUp fis8 -. ] r8 \stemUp fis8 ( [
    \stemUp g8 ] \stemUp a8 ) [ \stemUp a8 -. \stemUp a8 -. ] r8
    \stemDown d8 ( [ \stemDown e8 ] \stemDown fis8 ) r8 \stemUp d,8 (
    \stemUp cis8 ) r8 r8 \stemUp a'8 ( [ \stemUp b8 \stemUp bis8 ) ]
    \stemUp cis8 [ \stemUp cis,8 ( \stemUp d8 ] \stemUp e8 ) [ \stemUp e8
    -. \stemUp e8 -. ] r8 \stemUp a8 ( [ \stemUp b8 ] \stemDown cis8 ) [
    \stemDown cis8 -. \stemDown cis8 -. ] r8 \stemDown cis8 ( [
    \stemDown d8 ] \stemDown e8 ) r8 \stemUp cis,8 ( \stemUp d8 ) r8 r8
    \stemDown d'8 -. [ \stemDown e8 -. \stemDown fis8 -. ] \stemDown g4
    r8 r4. r8 \stemDown <e g>8 [ \stemDown <e g>8 ] \stemDown <e g>8 [
    \stemDown <e g>8 \stemDown <e g>8 ] \stemDown fis4 r8 r4. r8
    \stemDown <d fis>8 [ \stemDown <d fis>8 ] \stemDown <d fis>8 [
    \stemDown <d fis>8 \stemDown <d fis>8 ] \stemDown e4 r8 r4. r8
    \stemDown <cis e>8 [ \stemDown <cis e>8 ] \stemDown <cis e>8 [
    \stemDown <cis e>8 \stemDown <cis e>8 ] \stemUp d8 [ \stemUp d,8
    \stemUp d8 ] r8 \stemUp e8 [ \stemUp e8 ] r8 \stemUp fis8 [ \stemUp
    fis8 ] r8 \stemUp e8 [ \stemUp e8 ] r8 \stemUp d8 [ \stemUp d8 ]
    \stemUp cis8 r8 \stemUp a'8 \stemDown fis'8 [ r8 \stemDown fis8 ]
    \stemDown g16 ( [ \stemDown fis16 \stemDown eis16 \stemDown fis16
    \stemDown g16 \stemDown fis16 ) ] \stemDown fis4. ( \stemDown e4.
    \stemDown d4 ) r8 r4. r8 \stemUp fis,8 ( [ \stemUp g8 ] \stemUp gis8
    [ \stemUp a8 \stemUp ais8 ) ] \stemDown b8 -. [ r8 \stemDown b8 -. ]
    \stemDown cis16 ( [ \stemDown b16 \stemDown ais16 \stemDown b16
    \stemDown d16 \stemDown cis16 ) ] \stemDown cis4. \stemDown b4. ~
    \stemDown b4. \stemUp a4. \stemUp a8 -. [ r8 \stemUp a8 -. ] \stemUp
    b16 ( [ \stemUp a16 \stemUp gis16 \stemUp a16 \stemUp b16 \stemUp a16
    ) ] \stemUp gis8 \stemUp gis8 -. [ _\f \stemUp b8 -. ] \stemDown e8
    -. [ \stemDown gis8 -. \stemDown b8 -. ] \stemUp <e,, b' e>4 r8 r4.
    \stemUp a2. ~ _\p \stemUp a8 [ \stemUp a8 -. \stemUp a8 -. ] \stemUp
    a8 -. [ \stemUp a8 -. \stemUp a8 -. ] \stemUp a8 r8 r8 \stemUp a8 r8
    r8 \stemUp a4 r8 \stemUp a,8 -. [ \stemUp cis8 -. \stemUp a8 -. ]
    \stemUp b4 r8 r8 \stemUp b8 -. [ \stemUp b8 -. ] \stemUp cis4 r8 r8
    \stemUp cis8 -. [ \stemUp a8 -. ] \stemUp d4. \stemUp d8 ( [ \stemUp
    cis8 \stemUp b8 ) ] \stemUp e8 [ \stemUp e8 \stemUp e8 ] \stemUp e8
    ( [ \stemUp d8 \stemUp b8 ) ] \stemUp a4 \stemUp a'8 \grace {
        \stemUp c16 ( } \stemUp b8 ) [ \stemUp a8 \stemUp b8 ] \stemDown
    c2. ~ \stemDown c8. [ \stemDown d16 \stemDown c8 ] \stemDown b4 (
    \stemUp a8 ) \stemUp gis4 ( \stemUp g8 ) \stemUp fis4 ( \stemUp f8 )
    \stemUp e4 r8 r4. \stemUp e4. \grace { \stemUp g16 ( } \stemUp f8 )
    [ \stemUp e8 \stemUp f8 ] \stemUp g4. ( \stemUp a4. ) \stemDown b4.
    ~ \stemDown b4 ( \stemDown cis8 ) \stemDown d4. \grace { \stemUp f16
        ( } \stemDown e8 ) [ \stemDown d8 \stemDown e8 ] \stemDown f2. ~
    \stemDown f8. [ \stemDown g16 \stemDown f8 ] \stemDown e4 (
    \stemDown d8 ) \stemDown cis4 r8 r4. r8 \stemUp f,8 -. [ \stemUp f8
    -. ] r8 \stemUp d8 -. [ \stemUp d8 -. ] \stemUp b8 r8 r8 \stemUp g'8
    ( [ \stemUp a8 \stemUp b8 ) ] r8 \stemUp e,8 -. [ \stemUp e8 -. ] r8
    \stemUp c8 -. [ \stemUp c8 -. ] \stemUp a8 r8 r8 \stemUp a'4. r8
    \stemDown b8 -. [ \stemDown b8 -. ] r8 \stemUp f8 -. [ \stemUp f8 -.
    ] \stemUp e8 r8 r8 \stemUp e8 ( [ \stemUp fis8 \stemUp gis8 ) ]
    R2.*4 \stemUp a4 ( \stemDown c8 \stemDown f4 \stemUp a,8 ) \stemUp
    gis8 r8 r8 \stemDown b8 r8 r8 ^\fermata R2.*2 r4 r8 \stemUp bes,4. ~
    \stemUp bes4 ( \stemUp a8 ) \stemUp a4. \stemUp a8 [ \stemUp dis8
    \stemUp dis8 ] \stemUp dis8 [ \stemUp dis8 \stemUp dis8 ] \stemUp
    dis8 r8 r8 \stemUp a8 r8 r8 \stemUp gis8 [ \stemUp e'8 \stemUp e8 ]
    r8 \stemUp e8 [ \stemUp e8 ] r8 \stemUp dis8 [ \stemUp dis8 ] r8
    \stemUp dis8 [ \stemUp dis8 ] r8 \stemUp e8 [ \stemUp e8 ] r8
    \stemUp e8 [ \stemUp e8 ] r8 \stemUp dis8 [ \stemUp dis8 ] r8
    \stemUp dis8 [ \stemUp dis8 ] \stemUp e4 r8 r4. \stemUp <gis b>2. (
    _\sfp \stemUp a4 ) r8 r4. R2. r8 \stemUp e8 [ \stemUp e8 ] \stemUp e8
    [ \stemUp e8 \stemUp e8 ] \stemDown f'4. ~ _\sfp \stemDown f8 ( [
    \stemDown e8 \stemDown d8 ) ] \stemDown c4 r8 r4. r8 \stemUp gis,8 (
    [ \stemUp a8 ] \stemUp c8 [ \stemUp b8 \stemUp a8 ) ] \stemUp gis4 r8
    r4. r4 r8 \grace { \stemUp d''16 ( } \stemDown c8 ) -. [ \stemDown b8
    -. \stemDown a8 -. ] \stemUp gis8 r8 r8 r4. r4 r8 \grace { \stemUp d16
        ( } \stemUp c8 ) -. [ \stemUp b8 -. \stemUp a8 -. ] \stemUp gis8
    r8 r8 r4. r8 \stemUp a'8 ( [ \stemUp g8 ) ] \stemUp f8 -. [ \stemUp
    f8 ( \stemUp e8 ) ] \stemUp dis2. ( \stemUp e8 ) [ \stemUp e8 (
    \stemUp fis8 ) ] \stemUp gis8 -. [ \stemUp gis8 ( \stemUp a8 ) ]
    \stemDown b2. \stemUp a8 -. [ r8 \stemUp a8 -. ] \stemUp a8 -. [
    \stemUp a8 -. \stemUp a8 -. ] \stemUp gis4. ( \stemUp a8 ) r8 r8
    \stemUp d,8 -. [ \stemUp d8 -. ] r8 \stemUp fis8 -. [ \stemUp fis8
    -. ] r8 \stemUp e8 -. [ \stemUp e8 -. \stemUp e8 -. ] \stemUp e8 r8
    r8 \stemUp a8 -. [ r8 \stemUp a8 -. ] \stemUp a8 -. [ \stemUp a8 -.
    \stemUp a8 -. ] \stemDown b4. ( \stemUp a8 ) r8 r8 \stemUp fis8 r8 r8
    \stemUp b,8 r8 r8 \stemUp a8 -. [ \stemUp a8 -. \stemUp a8 -. ]
    \stemUp a8 r8 \stemUp a'16 ( [ _\p \stemUp b16 ) ] \stemDown cis8 -.
    [ _\markup{ \tiny\italic {cresc.} } \stemDown cis8 -. \stemDown cis8
    -. ] \stemDown cis8 -. [ \stemDown cis8 -. \stemDown cis8 -. ]
    \stemDown d4. ( _\f \stemDown cis8 ) r8 \stemDown fis16 ( [ _\p
    \stemDown e16 ) ] \stemDown d8 -. r8 \stemDown d16 ( [ \stemDown cis16
    ) ] \stemDown b8 -. r8 \stemUp b16 ( [ \stemUp a16 ) ] \stemUp gis8
    -. [ \stemUp gis16 ( \stemUp a16 \stemUp fis16 \stemUp a16 ) ]
    \stemUp gis8 r8 \stemUp a16 ( [ \stemUp b16 ) ] \stemDown cis8 -. [
    _\markup{ \tiny\italic {cresc.} } \stemDown cis8 -. \stemDown cis8
    -. ] \stemDown cis8 -. [ \stemDown cis8 -. \stemDown cis8 -. ]
    \stemDown <b gis'>4. ( _\f \stemDown <a a'>8 ) r8 \stemDown cis16 (
    [ _\p \stemDown e16 ) ] \stemDown d8 -. r8 \stemUp fis,16 ( [
    \stemUp a16 ) ] \stemUp gis8 -. r8 \stemUp b,16 ( [ \stemUp d16 ) ]
    \stemUp cis4 ( \stemUp e8 ) \stemUp cis4 r8 r8 \stemUp b8 [ _\p
    \stemUp b8 ] \stemUp b8 [ \stemUp b8 \stemUp b8 ] r8 \stemUp a8 [
    \stemUp a8 ] \stemUp a8 [ \stemUp a8 \stemUp a8 ] r8 \stemUp fis'8 [
    \stemUp fis8 ] \stemUp fis8 [ \stemUp fis8 \stemUp fis8 ] \stemUp e4
    r8 r4 \stemUp a,8 -. \stemUp gis4 r8 r4 \stemUp a8 -. \stemUp gis4 r8
    r4. r8 \stemUp e'8 ( [ \stemUp fis8 ] \stemUp gis8 [ \stemUp a8
    \stemUp b8 ) ] \stemUp a8 -. [ r8 \stemUp a8 -. ] \stemUp a8 -. [
    \stemUp a8 -. \stemUp a8 -. ] \stemUp gis4. ( \stemUp a8 ) r8 r8
    \stemUp fis8 -. [ \stemUp fis8 -. ] r8 \stemUp fis8 -. [ \stemUp fis8
    -. ] r8 \stemUp e8 -. [ \stemUp e8 -. \stemUp e8 -. ] \stemUp e8 r8
    r8 \stemUp a8 -. [ r8 \stemUp a8 -. ] \stemUp a8 -. [ \stemUp a8 -.
    \stemUp a8 -. ] \stemDown b4. ( \stemUp a8 ) r8 r8 \stemUp fis8 r8 r8
    \stemUp b,8 r8 r8 \stemUp a8 r8 r8 r4. R2. r8 \stemUp a'16 ( [
    _\markup{ \tiny\italic {cresc.} } \stemUp gis16 \stemUp fis16
    \stemUp e16 ] \stemUp d16 [ \stemUp cis16 \stemUp b16 \stemUp a16
    \stemUp gis16 \stemUp a16 ) ] \stemUp b8 [ \stemUp b'16 ( \stemUp a16
    \stemUp gis16 \stemUp fis16 ] \stemUp e16 [ \stemUp d16 \stemUp cis16
    \stemUp b16 \stemUp a16 \stemUp b16 ) ] \stemUp cis8 r8 r8 r4.
    \stemUp cis2. ( _\p \stemUp d2. ) \stemUp e4 r8 \stemUp e4 r8
    \stemUp eis8 [ \stemUp eis8 \stemUp eis8 ] \stemUp fis8 r8 r8
    \stemUp e16 [ _\f \stemUp a16 \stemUp e16 \stemUp a16 \stemUp e16
    \stemUp a16 ] \stemUp e16 [ \stemUp a16 \stemUp e16 \stemUp a16
    \stemUp e16 \stemUp a16 ] \stemUp fis16 [ \stemUp a16 \stemUp fis16
    \stemUp a16 \stemUp fis16 \stemUp a16 ] \stemUp fis16 [ \stemUp a16
    \stemUp fis16 \stemUp a16 \stemUp fis16 \stemUp b16 ] \stemDown a8
    -. [ \stemDown cis16 ( \stemDown b16 \stemDown cis16 \stemDown a16 )
    ] \stemUp gis8 -. [ \stemUp b16 ( \stemUp a16 \stemUp b16 \stemUp
    gis16 ) ] \stemUp a4 r8 r4. \stemDown b2. _\p \stemUp a8 r8 r8
    \stemUp fis8 r8 r8 \stemUp cis8 -. [ \stemUp cis8 -. \stemUp cis8 -.
    ] \stemUp e8 -. [ \stemUp cis8 -. \stemUp e8 -. ] \stemUp a4 r8 r4.
    \stemUp e4. ( \stemUp gis4. ) \stemUp a8 r8 r8 \stemDown b8 r8 r8
    \stemUp a8 r8 r8 \stemUp d,8 [ \stemUp d8 \stemUp d8 ] \stemDown
    <cis' a'>16 [ _\f \stemDown <cis a'>16 \stemDown <cis a'>16
    \stemDown <cis a'>16 \stemDown <cis a'>16 \stemDown <cis a'>16 ]
    \stemDown <cis a'>4. :64 \stemDown <cis a'>8 [ \stemDown cis16
    \stemDown cis16 \stemDown a16 \stemDown a16 ] \stemDown gis16 [
    \stemDown gis16 \stemDown b16 \stemDown b16 \stemDown d16 \stemDown
    d16 ] \stemDown <cis a'>2. :64 \stemDown <cis a'>8 [ \stemDown cis16
    \stemDown cis16 \stemDown a16 \stemDown a16 ] \stemDown gis16 [
    \stemDown gis16 \stemDown b16 \stemDown b16 \stemDown d16 \stemDown
    d16 ] \stemDown cis8 \stemUp a,8 [ _\p \stemUp a8 ] r8 \stemUp b8 [
    \stemUp b8 ] r8 \stemUp cis8 [ \stemUp cis8 ] r8 \stemUp b8 ( [
    \stemUp gis8 ) ] r8 \stemUp cis8 [ \stemUp cis8 ] r8 \stemUp d8 [
    \stemUp d8 ] r8 \stemUp e8 [ \stemUp e8 ] r8 \stemUp d8 ( [ \stemUp
    b8 ) ] r8 \stemUp a'8 [ \stemUp a8 ] r8 \stemDown b8 [ \stemDown b8
    ] r8 \stemDown cis8 [ \stemDown cis8 ] r8 \stemUp b8 ( [ \stemUp gis8
    ) ] \stemDown a8 -. [ _\f \stemDown a8 -. \stemDown d8 -. ]
    \stemDown cis4 r8 r8 \stemUp d,8 -. [ _\p \stemUp d8 -. ] r8 \stemUp
    gis,8 -. [ \stemUp gis8 -. ] \stemUp a8 -. [ _\f \stemUp a8 -.
    \stemUp d8 -. ] \stemUp cis4 r8 r8 \stemUp b8 -. [ _\p \stemUp b8 -.
    ] r8 \stemUp gis8 -. [ \stemUp gis8 -. ] \stemUp a8 [ \stemUp a'8
    \stemUp a8 ] \stemUp a8 [ \stemUp a8 \stemUp a8 ] \stemUp a8 [
    \stemUp a8 \stemUp a8 ] \stemUp a8 [ \stemUp a8 \stemUp a8 ] \stemUp
    a8 [ \stemUp a8 \stemUp a8 ] \stemUp a8 [ \stemUp a8 \stemUp a8 ]
    \stemUp a8 [ \stemUp e8 \stemUp e8 ] \stemUp e8 [ \stemUp e8 \stemUp
    e8 ] \stemUp <cis e>8 [ \stemUp <cis e>8 \stemUp <cis e>8 ] \stemUp
    <cis e>8 [ \stemUp <cis e>8 \stemUp <cis e>8 ] \stemUp d8 [ \stemUp
    d8 \stemUp d8 ] \stemUp d8 [ \stemUp d8 \stemUp d8 ] \stemUp c8 [
    \stemUp c8 \stemUp c8 ] \stemUp c8 [ \stemUp c8 \stemUp c8 ] \stemUp
    cis8 [ \stemUp cis8 \stemUp cis8 ] \stemUp cis8 r8 r8 \stemUp cis8 r8
    r8 \stemUp cis8 r8 r8 \stemUp cis8 -. [ \stemUp cis8 -. \stemUp e8
    -. ] \stemDown a8 -. [ \stemDown cis8 -. \stemDown cis8 -. ] \stemUp
    gis8 [ \stemUp gis8 \stemUp gis8 ] \stemUp gis8 [ \stemUp gis8
    \stemUp gis8 ] \stemDown a8 -. [ r8 \stemDown cis8 -. ] \stemDown d16
    ( [ \stemDown cis16 \stemDown bis16 \stemDown cis16 \stemDown d16
    \stemDown cis16 ) ] \stemDown cis4. ( \stemDown b4. ) \stemUp a8 -.
    [ r8 \stemUp a8 -. ] \stemUp b16 ( [ \stemUp a16 \stemUp gis16
    \stemUp a16 \stemUp b16 \stemUp a16 ) ] \stemUp a4. ( \stemUp gis4.
    ) \stemDown fis8 -. [ r8 \stemDown fis'8 -. ] \stemDown g16 ( [
    \stemDown fis16 \stemDown eis16 \stemDown fis16 \stemDown g16
    \stemDown fis16 ) ] \stemDown fis4. ( \stemDown e4. ) \stemUp d8 [
    \stemUp d,8 \stemUp d8 ] \stemUp d8 [ \stemUp d8 \stemUp d8 ]
    \stemUp d8 -. [ r8 \stemUp cis8 -. ] \stemUp a8 -. [ r8 \stemUp b8
    -. ] \stemUp b8 [ r8 \stemUp e8 ] \stemUp e8 [ \stemUp e8 \stemUp e8
    ] \stemUp e8 [ r8 \stemUp e8 ] \stemUp e8 [ \stemUp e8 \stemUp e8 ]
    \stemUp gis8 r8 r8 \stemUp gis8 r8 r8 \stemUp gis4 r8 r4. \stemUp a8
    -. [ r8 \stemUp a8 -. ] \stemUp a8 -. [ \stemUp a8 -. \stemUp a8 -.
    ] \stemUp gis4. ( \stemUp a8 ) r8 r8 \stemUp d,8 -. [ \stemUp d8 -.
    ] r8 \stemUp fis8 -. [ \stemUp fis8 -. ] r8 \stemUp e8 -. [ \stemUp
    e8 -. \stemUp e8 -. ] \stemUp e8 r8 r8 \stemUp a8 -. [ r8 \stemUp a8
    -. ] \stemUp a8 -. [ \stemUp a8 -. \stemUp a8 -. ] \stemDown b4. (
    \stemUp a8 ) r8 r8 \stemUp fis8 r8 r8 \stemUp b,8 r8 r8 r8 \stemUp
    cis8 -. [ \stemUp e8 -. ] \stemDown a8 -. [ \stemDown cis8 -.
    \stemDown e8 -. ] r8 \stemDown b8 -. [ \stemDown b8 -. ] r8 \stemUp
    gis8 -. [ \stemUp gis8 -. ] r8 \stemUp cis,8 -. [ \stemUp e8 -. ]
    \stemDown a8 -. [ \stemDown cis8 -. \stemDown e8 -. ] \stemUp a,16 [
    _\markup{ \tiny\italic {cresc.} } \stemUp a16 \stemUp a16 \stemUp a16
    \stemUp a16 \stemUp a16 ] \stemUp a4. :64 \stemUp a4. :64 \stemUp
    gis4. :64 \stemDown <cis a'>16 [ _\f \stemDown <cis a'>16 \stemDown
    <cis a'>16 \stemDown <cis a'>16 \stemDown <cis a'>16 \stemDown <cis
        a'>16 ] \stemDown <cis a'>4. :64 \stemDown <cis a'>8 [ \stemDown
    cis16 \stemDown cis16 \stemDown a16 \stemDown a16 ] \stemDown gis16
    [ \stemDown gis16 \stemDown b16 \stemDown b16 \stemDown d16
    \stemDown d16 ] \stemDown <cis a'>2. :64 \stemDown <cis a'>8 [
    \stemDown cis16 \stemDown cis16 \stemDown a16 \stemDown a16 ]
    \stemDown gis16 [ \stemDown gis16 \stemDown b16 \stemDown b16
    \stemDown d16 \stemDown d16 ] \stemDown cis8 [ \stemDown cis'16
    \stemDown cis16 \stemDown e,16 \stemDown e16 ] \stemDown a16 [
    \stemDown a16 \stemDown cis,16 \stemDown cis16 \stemDown e16
    \stemDown e16 ] \stemUp a,16 [ \stemUp a16 \stemUp cis16 \stemUp cis16
    \stemUp e,16 \stemUp e16 ] \stemUp a16 [ \stemUp a16 \stemUp cis,16
    \stemUp cis16 \stemUp e16 \stemUp e16 ] \stemUp a,4 r8 \stemDown <a'
        cis e>4 r8 \stemDown <e cis' a'>4 r8 r4. \bar "|."
    }

PartPOneZeroVoiceOne =  \relative a {
    \clef "alto" \time 4/4 \key a \major | % 1
    \stemUp a8 [ _\p \stemUp a8 \stemUp a8 \stemUp a8 ] \stemUp a8 [
    \stemUp a8 \stemUp a8 \stemUp a8 ] | % 2
    \stemUp a8 [ \stemUp a8 \stemUp a8 \stemUp a8 ] \stemUp a8 [ \stemUp
    a8 \stemUp a8 \stemUp a8 ] | % 3
    \stemUp b4 r4 \stemUp b4 r4 | % 4
    \stemUp e,2 ~ \stemUp e8 r8 r4 | % 5
    e'1 ~ | % 6
    e1 | % 7
    \stemDown e2 ~ \stemDown e8 r8 \stemUp d8 ( [ \stemUp fis,8 ) ] | % 8
    \stemUp e8 ( [ \stemUp dis8 \stemUp e8 \stemUp dis8 ) ] \stemUp e4 r4
    | % 9
    \stemDown a'8 [ _\f \stemDown a8 \stemDown a8 \stemDown a8 ]
    \stemDown a8 [ \stemDown a8 \stemDown a8 \stemDown a8 ] |
    \barNumberCheck #10
    \stemDown a8 [ \stemDown a8 \stemDown a8 \stemDown a8 ] \stemDown a8
    [ \stemDown a8 \stemDown a8 \stemDown a8 ] | % 11
    \stemUp b,4 _\p r4 \stemUp b4 r4 | % 12
    \stemUp e,2 ~ \stemUp e8 r8 r4 | % 13
    \stemDown e'8 [ _\f \stemDown e8 \stemDown e8 \stemDown e8 ]
    \stemDown d8 [ \stemDown d8 \stemDown cis8 \stemDown cis8 ] | % 14
    \stemUp b8 [ \stemUp b8 \stemUp a8 \stemUp a8 ] \stemUp gis8 [
    \stemUp gis8 \stemUp fis8 \stemUp fis8 ] | % 15
    \stemUp e8 [ \stemUp e8 \stemUp cis'8 \stemUp cis8 ] \stemDown fis8
    [ \stemDown fis8 \stemDown e8 \stemDown d8 ] | % 16
    \stemDown cis8 \stemDown e4 \stemDown e4 \stemDown e4 \stemDown e8 ~
    | % 17
    \stemDown e8 \stemDown e4 \stemDown e4 \stemDown e4 \stemDown e8 ~ | % 18
    \stemDown e8 \stemDown e4 \stemDown e4 \stemDown e4 \stemDown e8 ~ | % 19
    \stemDown e8 \stemDown e4 \stemDown e4 \stemDown e4 \stemDown e8 |
    \barNumberCheck #20
    \stemDown e4 r8 \stemDown e8 ( \stemDown d4 ) r8 \stemDown a'8 ( | % 21
    \stemDown a4 ) r8 \stemDown cis,8 ( \stemUp b4 ) r8 \stemDown fis'8
    ~ | % 22
    \stemDown fis4 r8 \stemDown fis8 ~ \stemDown fis4 r8 \stemDown fis8
    ( | % 23
    \stemUp b,4 ) r16 \stemDown b16 [ \stemDown cis16 \stemDown dis16 ]
    \stemDown e16 [ \stemDown fis16 \stemDown gis16 \stemDown a16 ]
    \stemDown b16 [ \stemDown gis16 \stemDown b16 \stemDown gis16 ] | % 24
    \stemDown e4 -. \stemDown e'4 -. \stemDown e,4 -. r4 | % 25
    r2 \stemDown e2 _\p | % 26
    \stemDown cis4. ( \stemDown d8 ) \stemDown fis8 ( [ \stemDown e8 )
    \stemDown d8 -. \stemDown cis8 -. ] | % 27
    \stemUp b4. ( \stemDown cis8 ) \stemDown e8 ( [ \stemDown d8 )
    \stemDown cis8 -. \stemDown b8 -. ] | % 28
    \stemUp a4. ( \stemDown cis8 ) \stemUp b4 -. \stemUp b4 -. | % 29
    \stemUp b4 -. \stemUp b4 -. r4 \stemDown e4 ~ | \barNumberCheck #30
    \stemDown e8 ( [ \stemDown cis8 \stemDown b8 ) \stemDown fis'8 -. ]
    \stemDown e4 -. \stemUp e,4 -. | % 31
    \stemDown cis'2 _\f \stemUp a4.. ( \stemUp b16 ) | % 32
    \stemUp cis16 [ \stemUp a16 \stemUp b16 \stemUp cis16 ] \stemDown d16
    [ \stemDown e16 \stemDown fis16 \stemDown gis16 ] \stemDown a16 ( [
    \stemDown cis16 ) \stemDown b16 \stemDown a16 ] \stemDown gis16 [
    \stemDown fis16 \stemDown e16 \stemDown d16 ] | % 33
    \stemDown cis2 \stemUp a4.. ( \stemUp b16 ) | % 34
    \stemUp cis16 [ \stemUp a16 \stemUp b16 \stemUp cis16 ] \stemDown d16
    [ \stemDown e16 \stemDown fis16 \stemDown gis16 ] \stemDown a16 ( [
    \stemDown cis16 ) \stemDown b16 \stemDown a16 ] \stemDown gis16 [
    \stemDown fis16 \stemDown e16 \stemDown d16 ] | % 35
    \stemUp cis16 [ \stemUp a16 \stemUp b16 \stemUp cis16 ] \stemDown d16
    [ \stemDown e16 \stemDown fis16 \stemDown gis16 ] \stemDown a16 [
    \stemDown gis16 \stemDown a16 \stemDown b16 ] \stemDown g16 [
    \stemDown fis16 \stemDown g16 \stemDown a16 ] | % 36
    \stemDown fis4 -. \stemDown cis4 -. \stemDown d4 -. r4 | % 37
    \stemUp fis,4. ( _\p \stemUp gis16 [ \stemUp ais16 ] \stemDown b8 [
    \stemDown cis8 \stemDown d8 \stemDown e8 ) ] | % 38
    \stemDown fis8 [ \stemDown ais,8 ( \stemDown b8 \stemDown d8 ) ]
    \stemUp a4 ( \stemUp gis4 ) | % 39
    \stemDown cis16 ( [ \stemDown e16 ) \stemDown e16 -. \stemDown e16
    -. ] \stemDown d16 ( [ \stemDown e16 ) \stemDown e16 -. \stemDown e16
    -. ] \stemDown cis16 ( [ \stemDown e16 ) \stemDown e16 -. \stemDown
    e16 -. ] \stemDown b16 ( [ \stemDown e16 ) \stemDown e16 -.
    \stemDown e16 -. ] | \barNumberCheck #40
    \stemDown a,16 ( [ \stemDown e'16 ) \stemDown e16 -. \stemDown e16
    -. ] \stemDown b16 ( [ \stemDown e16 ) \stemDown e16 -. \stemDown e16
    -. ] \stemDown cis16 ( [ \stemDown e16 ) \stemDown e16 -. \stemDown
    e16 -. ] \stemDown b16 ( [ \stemDown e16 ) \stemDown e16 -.
    \stemDown e16 -. ] | % 41
    \stemDown a,16 ( [ \stemDown e'16 ) \stemDown e16 -. \stemDown e16
    -. ] \stemDown b16 ( [ \stemDown e16 ) \stemDown e16 -. \stemDown e16
    -. ] \stemDown cis16 ( [ \stemDown e16 ) \stemDown e16 -. \stemDown
    e16 -. ] \stemDown b16 ( [ \stemDown e16 ) \stemDown e16 -.
    \stemDown e16 -. ] | % 42
    \stemDown e16 -. [ \stemDown cis'16 -. \stemDown a16 -. \stemDown
    cis16 -. ] \stemDown e,16 -. [ \stemDown d'16 -. \stemDown b16 -.
    \stemDown d16 -. ] \stemDown e,16 -. [ \stemDown cis'16 -. \stemDown
    a16 -. \stemDown cis16 -. ] \stemDown e,16 -. [ \stemDown d'16 -.
    \stemDown b16 -. \stemDown d16 -. ] | % 43
    \stemDown cis8 [ _\f \stemDown e,8 \stemDown gis8 \stemDown e8 ]
    \stemDown a8 [ \stemDown e8 \stemDown b'8 \stemDown e,8 ] | % 44
    \stemDown cis'8 [ \stemDown cis,8 \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 45
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown
    cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 46
    \stemDown d8 [ \stemDown d8 \stemDown d8 \stemDown d8 ] \stemDown
    fis8 [ \stemDown fis8 \stemDown fis8 \stemDown fis8 ] | % 47
    \stemDown e8 ( [ \stemDown dis8 \stemDown d8 \stemDown cis8 ) ]
    \stemUp b8 ( [ \stemUp d8 \stemUp cis8 \stemUp a8 ) ] | % 48
    \stemDown e'8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown e8
    [ \stemDown e8 \stemDown e8 \stemDown e8 ] | % 49
    \stemUp a,4 r4 r2 | \barNumberCheck #50
    r2 \stemDown d8 -. _\p r8 \stemDown e8 -. r8 | % 51
    \stemDown fis4 r4 r2 | % 52
    r2 \stemUp b,8 -. r8 \stemDown e8 -. r8 | % 53
    \stemUp a,4 r4 \stemUp b8 -. r8 \stemUp b8 -. r8 | % 54
    \stemUp a4 r4 \stemUp b8 -. r8 \stemUp b8 -. r8 | % 55
    \stemUp a8 \stemDown a'8 -. [ _\f \stemDown cis8 -. \stemDown a8 -.
    ] \stemDown e8 -. [ \stemDown a8 -. \stemDown cis,8 -. \stemDown e8
    -. ] | % 56
    \stemUp a,4 -. \stemDown a'4 -. \stemUp a,4 -. r4 \bar "||"
    R1*2 | % 59
    \stemUp d,4 _\p r4 \stemUp d4 r4 | \barNumberCheck #60
    r8 \stemUp e8 [ \stemUp e8 \stemUp e8 ] \stemUp e4 r4 | % 61
    R1 | % 62
    r4 \stemDown e'4 ( \stemDown eis4 \stemDown fis4 ) | % 63
    \stemDown d4 r8 \stemUp d,8 \stemUp e4 \stemUp e4 | % 64
    \stemUp a4 r4 r2 | % 65
    \stemDown <cis e>2 \stemUp <a cis>4. ( \stemDown <b d>8 ) | % 66
    \stemDown <d fis>8 ( [ \stemDown <cis e>8 ) \stemDown <b d>8 -.
    \stemDown <a cis>8 -. ] \stemUp <a cis>4 r4 | % 67
    \stemUp b4 r4 \stemUp b4 r4 | % 68
    \stemDown e2 ~ \stemDown e4 r4 | % 69
    \stemUp e,4 r4 r2 | \barNumberCheck #70
    r2 r8 \stemDown e'8 [ \stemDown e8 \stemDown e8 ] | % 71
    \stemDown e4 r4 r2 | % 72
    r4 \stemDown dis4 ( \stemDown e4 \stemUp e,4 ) | % 73
    \stemUp a8 [ \stemUp cis8 \stemUp cis8 \stemUp cis8 ] r8 \stemDown d8
    [ \stemDown d8 \stemDown d8 ] | % 74
    r8 \stemUp a8 [ \stemUp a8 \stemUp fis'8 ] \stemDown fis8 [
    \stemDown fis8 \stemDown e8 \stemDown d8 ] | % 75
    \stemDown cis8 \stemDown a'8 -. [ _\f \stemDown cis8 -. \stemDown a8
    -. ] \stemDown e8 -. [ \stemDown a8 -. \stemDown cis,8 -. \stemDown
    e8 -. ] | % 76
    \stemUp a,4 r4 \stemDown cis4 _\p r4 | % 77
    \stemUp b4 r4 \stemUp b4 r4 | % 78
    \stemUp a4 r4 \stemUp f4 r4 | % 79
    \stemUp a4 r4 \stemUp e4 r4 | \barNumberCheck #80
    \stemUp e8 -. [ \stemUp e8 -. \stemUp e8 -. \stemUp e8 -. ] \stemUp
    e4 r4 | % 81
    r4 \stemUp as8. [ _\f \stemUp as16 ] \stemUp g8. [ \stemUp g16 ]
    \stemUp as8. [ \stemUp as16 ] | % 82
    \stemUp g4 r4 \stemDown d'4 _\p r4 | % 83
    d1 ~ | % 84
    \stemDown d4 r4 r2 | % 85
    r4 \stemUp c,4 -. \stemUp c4 -. r4 | % 86
    R1*3 | % 89
    e'1 ( | \barNumberCheck #90
    d1 ) | % 91
    \stemDown cis4 \stemDown e2 \stemDown e4 ~ | % 92
    \stemDown e4 \stemDown cis2 ( \stemUp b4 ) | % 93
    \stemUp ais4 \stemUp ais4 r8 \stemUp e8 ( [ \stemUp dis8 \stemUp e8
    ) ] | % 94
    \stemUp fis4 r4 r2 | % 95
    R1*3 | % 98
    r8 \stemDown b8 -. [ _\f \stemDown cis8 -. \stemDown dis8 -. ]
    \stemDown e16 [ \stemDown dis16 \stemDown e16 \stemDown fis16 ]
    \stemDown g16 [ \stemDown fis16 \stemDown g16 \stemDown a16 ] | % 99
    \stemDown b8 [ \stemDown b,8 -. \stemDown cis8 -. \stemDown dis8 -.
    ] \stemDown e16 [ \stemDown dis16 \stemDown e16 \stemDown fis16 ]
    \stemDown g16 [ \stemDown fis16 \stemDown g16 \stemDown a16 ] |
    \barNumberCheck #100
    \stemDown b4 r4 r2 | % 101
    R1 | % 102
    r2 \stemUp fis,2 ( _\p | % 103
    \stemUp e4 ) r4 \stemDown b'2 ~ | % 104
    \stemDown b8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] r8 \stemDown
    e8 [ \stemDown e8 \stemDown e8 ] | % 105
    \stemDown fis4 r4 r4 \stemDown b,4 ~ | % 106
    \stemDown b8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] r8 \stemDown
    e8 [ \stemDown e8 \stemDown e8 ] | % 107
    \stemDown fis4 r4 r4 \stemUp b,4 ~ | % 108
    \stemUp b4 r8 \stemUp gis8 ( \stemUp a4 ) r8 \stemUp gis8 ( | % 109
    \stemUp a4 ) r8 \stemUp eis8 ( \stemUp fis4 ) r8 \stemUp eis8 ( |
    \barNumberCheck #110
    \stemUp fis4 ) r8 \stemUp gis8 ( \stemUp a4 ) r8 \stemUp ais8 ( | % 111
    fis1 ) ( | % 112
    \stemUp gis4 ) r4 r4 \stemUp gis4 ( | % 113
    \stemUp a4 ) r4 r2 | % 114
    r4 \stemUp ais4 ( \stemUp b2 ) | % 115
    \stemUp e,4 r4 r2 | % 116
    R1*8 | % 124
    \stemDown fis'2 ~ \stemDown fis4 r4 | % 125
    \stemDown fis2 ~ \stemDown fis4 r4 | % 126
    \stemDown fis8 \stemDown fis4 \stemDown fis4 \stemDown fis4
    \stemDown fis8 | % 127
    \stemDown fis4 r4 r2 ^\fermata | % 128
    r2 \stemUp b,2 _\p | % 129
    \stemUp gis4. ( \stemUp a8 ) \stemUp cis8 ( [ \stemUp b8 ) \stemUp a8
    -. \stemUp gis8 -. ] | \barNumberCheck #130
    \stemUp fis4. ( \stemUp gis8 ) \stemUp b8 ( [ \stemUp a8 ) \stemUp
    gis8 -. \stemUp fis8 -. ] | % 131
    \stemUp e4 r8 \stemUp e8 ( \stemUp fis4 ) \stemUp e4 -. | % 132
    \stemUp dis4 -. \stemUp b'4 -. r4 \stemUp b4 ~ | % 133
    \stemUp b4 r8 \stemDown cis8 \stemUp b4 \stemUp b4 | % 134
    \stemUp b4 r4 r2 | % 135
    r8 \stemDown b'4 \stemDown b4 \stemDown b4 \stemDown b8 ~ | % 136
    \stemDown b8 \stemDown b4 \stemDown b4 \stemDown b4 \stemDown b8 ~ | % 137
    \stemDown b8 \stemDown b4 \stemDown b4 \stemDown b4 \stemDown b8 | % 138
    \stemDown b4 \stemDown e,4 r4 \stemDown e4 | % 139
    r4 \stemUp a,4 r4 \stemUp a4 | \barNumberCheck #140
    r4 \stemUp b4 r4 \stemUp b4 | % 141
    \stemUp gis4 r4 r2 | % 142
    e1 ~ | % 143
    \stemUp e8 [ \stemUp e'8 -. ] \stemDown e2. ~ | % 144
    \stemUp e8 [ \stemUp e,8 -. ] \stemUp e2. ~ | % 145
    \stemUp e4 r4 r8 \stemUp a8 [ \stemUp a8 \stemUp a8 ] | % 146
    \stemDown dis4 r4 r8 \stemDown dis8 [ \stemDown dis8 \stemDown dis8
    ] | % 147
    \stemDown e4 r4 r8 \stemDown e8 [ \stemDown e8 \stemDown e8 ] | % 148
    \stemDown e4 r4 r2 | % 149
    R1 | \barNumberCheck #150
    \stemDown b'4 r4 \stemDown b4 r4 | % 151
    \stemUp b,4 r4 \stemUp b4 r4 | % 152
    \stemUp b8 [ \stemUp b8 \stemUp b8 \stemUp b8 ] \stemUp b8 [ \stemUp
    b8 \stemUp b8 \stemUp b8 ] | % 153
    \stemUp b16 [ _\markup{ \tiny\italic {cresc.} } \stemUp b16 \stemUp
    b16 \stemUp b16 ] \stemUp b4 :16 \stemUp a2 :16 | % 154
    \stemUp gis8 _\f \stemUp b4 \stemUp b4 \stemUp b4 \stemUp b8 ~ | % 155
    \stemUp b8 \stemUp b4 \stemUp b4 \stemUp b4 \stemUp b8 ~ | % 156
    \stemUp b8 \stemUp b4 \stemUp b4 \stemUp b4 \stemUp b8 ~ | % 157
    \stemUp b8 \stemUp b4 \stemUp b4 \stemUp b4 \stemUp b8 | % 158
    \stemUp b4 r8 \stemDown b'8 ( \stemDown a4 ) r8 \stemDown e8 ( | % 159
    \stemDown e4 ) r8 \stemDown gis8 ( \stemDown fis4 ) r8 \stemDown cis8
    ( | \barNumberCheck #160
    \stemDown cis4 ) r8 \stemDown cis8 ( \stemDown cis4 ) r8 \stemDown
    cis8 | % 161
    \stemUp fis,8 \stemUp b4 \stemDown dis4 \stemDown dis8 ( [ \stemDown
    fis8 ) \stemDown fis8 -. ] | % 162
    \stemDown gis8 [ \stemDown gis8 \stemDown gis8 \stemDown gis8 ]
    \stemDown a8 [ \stemDown a8 \stemDown ais8 \stemDown ais8 ] | % 163
    \stemDown b8 [ \stemDown b8 \stemDown gis8 \stemDown e8 ] \stemUp b8
    [ \stemUp b8 \stemUp b8 \stemUp b8 ] | % 164
    \stemDown e4 r4 r2 | % 165
    r2 \stemUp a,8 -. _\p r8 \stemUp b8 -. r8 | % 166
    \stemDown cis4 r4 r2 | % 167
    r2 \stemDown fis8 -. r8 \stemDown fis8 -. r8 | % 168
    \stemDown e4 r4 \stemDown fis8 -. r8 \stemDown fis8 -. r8 | % 169
    \stemDown e4 r4 \stemDown fis8 -. r8 \stemDown fis8 -. r8 |
    \barNumberCheck #170
    \stemDown e8 [ _\f \stemDown e8 \stemDown e8 \stemDown e8 ] \stemUp
    b8 [ \stemUp e8 \stemUp gis,8 \stemUp b8 ] | % 171
    \stemUp e,4 -. \stemDown e'4 -. \stemUp e,4 -. r4 \bar "||"
    \stemDown e'8 [ _\p \stemDown e8 \stemDown e8 \stemDown e8 ]
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] | % 173
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown e4
    r4 | % 174
    b1 ~ | % 175
    \stemUp b4 r4 \stemUp b4 r4 | % 176
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown e8
    [ \stemDown e8 \stemDown e8 \stemDown e8 ] | % 177
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown e4
    r4 | % 178
    b1 ~ | % 179
    \stemUp b4 r4 \stemUp b4 r4 | \barNumberCheck #180
    \stemUp b8 [ \stemUp b8 ] \stemUp b4 r2 | % 181
    \stemUp b4 r4 \stemUp b4 r4 | % 182
    \stemUp b8 [ \stemUp b8 ] \stemUp b4 r2 | % 183
    \stemUp b4 r4 \stemUp b4 r4 | % 184
    \stemUp b8 [ \stemUp b8 ] \stemUp b4 r2 | % 185
    \stemDown e8 [ \stemDown e8 ] \stemDown e4 r2 | % 186
    \stemDown gis8 [ \stemDown gis8 ] \stemDown gis4 r2 | % 187
    r4 \stemUp b,2 \stemUp b4 | % 188
    \stemUp b8 r8 \stemUp b8 r8 \stemUp b8 r8 \stemUp b8 r8 | % 189
    \stemUp b8 r8 \stemUp b8 r8 \stemUp b8 r8 \stemUp b8 r8 |
    \barNumberCheck #190
    \stemUp a4 r4 r2 | % 191
    R1 | % 192
    \stemDown cis'8 [ _\f \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 193
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown a8 [ \stemDown a8 \stemDown fis8 \stemDown fis8 ] | % 194
    \stemDown gis4 r4 r2 | % 195
    r4 \stemDown eis4 ( -. _\p \stemDown eis4 -. \stemDown eis4 ) -. | % 196
    \stemDown eis4 r4 r2 | % 197
    r4 \stemDown gis4 ( -. \stemDown gis4 -. \stemDown gis4 ) -. | % 198
    a1 ( | % 199
    g1 ) | \barNumberCheck #200
    \stemDown fis4 r4 r2 | % 201
    R1*3 | % 204
    fis1 ( | % 205
    e1 ) | % 206
    \stemDown dis4 r4 r2 | % 207
    dis1 ( | % 208
    \stemDown cis4 ) r4 r2 | % 209
    cis1 ( | \barNumberCheck #210
    \stemDown b8 ) [ \stemDown b'8 -. ] \stemDown b4 -. r2 | % 211
    \stemDown cis,8 [ \stemDown cis'8 -. ] \stemDown cis4 -. r2 | % 212
    \stemDown cis8 r8 r4 \stemDown cis,8 r8 r4 | % 213
    \stemDown fis8 r8 \stemUp a,8 r8 \stemUp b8 r8 \stemDown d8 r8 | % 214
    r8 \stemDown cis8 [ \stemDown cis8 \stemDown cis8 ] r8 \stemDown cis8
    [ \stemDown cis8 \stemDown cis8 ] | % 215
    \stemUp a8 _\f \stemDown gis'8 [ \stemDown a8 \stemDown ais8 ]
    \stemDown b8 [ \stemDown cis8 \stemDown d8 \stemDown ais8 ] | % 216
    \stemDown b4 r4 r2 | % 217
    \stemUp e,,4 _\p r4 r2 | % 218
    \stemUp fis4 r4 r2 | % 219
    \stemUp fis4 r4 r2 | \barNumberCheck #220
    \stemDown cis'8 [ \stemDown cis8 ] \stemDown cis4 r2 | % 221
    \stemDown cis8 [ \stemDown cis8 ] \stemDown cis4 r2 | % 222
    \stemDown cis'8 [ \stemDown cis8 ] \stemDown cis4 r2 | % 223
    R1 | % 224
    r4 \stemDown cis,4 r2 | % 225
    \stemDown cis4 r4 \stemDown cis4 r4 | % 226
    \stemDown cis8 [ _\markup{ \tiny\italic {cresc.} } \stemDown cis8
    \stemDown cis8 \stemDown cis8 ] \stemDown cis8 [ \stemDown cis8
    \stemDown cis8 \stemDown cis8 ] | % 227
    \stemDown fis8 -. [ _\f \stemDown eis8 -. \stemDown fis8 -.
    \stemDown gis8 -. ] \stemDown a8 -. [ \stemDown gis8 -. \stemDown a8
    -. \stemDown b8 -. ] | % 228
    \stemDown cis8 -. [ \stemDown bis8 -. \stemDown cis8 -. \stemDown d8
    -. ] \stemDown cis8 -. [ \stemDown b8 -. \stemDown a8 -. \stemDown
    gis8 -. ] | % 229
    \stemDown fis4 r4 r2 | \barNumberCheck #230
    \stemDown gis2. ( _\p \stemDown b4 ) | % 231
    \stemDown a4 r4 \stemDown fis2 ~ | % 232
    \stemDown fis2. \stemDown b8 -. [ \stemDown a8 -. ] | % 233
    \stemDown g8 -. [ _\f \stemDown dis8 -. \stemDown e8 -. \stemDown
    fis8 -. ] \stemDown g8 -. [ \stemDown fis8 -. \stemDown g8 -.
    \stemDown a8 -. ] | % 234
    \stemDown b8 -. [ \stemDown ais8 -. \stemDown b8 -. \stemDown c8 -.
    ] \stemDown b8 -. [ \stemDown a8 -. \stemDown g8 -. \stemDown fis8
    -. ] | % 235
    \stemDown e4 r4 r2 | % 236
    \stemDown fis2. ( _\p \stemDown a4 ) | % 237
    \stemDown g4 r4 \stemDown e2 ~ | % 238
    \stemDown e2. \stemDown a8 -. [ \stemDown g8 -. ] | % 239
    \stemDown fis8 [ _\f \stemDown a,8 \stemDown d8 \stemDown a8 ]
    \stemUp d8 [ \stemUp a8 \stemUp d8 \stemUp a8 ] | \barNumberCheck
    #240
    \stemUp cis8 [ \stemUp a8 \stemUp cis8 \stemUp a8 ] \stemDown e'8 [
    \stemDown a,8 \stemDown e'8 \stemDown a,8 ] | % 241
    \stemUp d8 [ \stemUp a8 \stemUp d8 \stemUp a8 ] \stemUp d8 [ \stemUp
    a8 \stemUp d8 \stemUp a8 ] | % 242
    \stemDown e'8 [ \stemDown a,8 \stemDown e'8 \stemDown a,8 ] \stemUp
    cis8 [ \stemUp a8 \stemUp cis8 \stemUp a8 ] | % 243
    \stemDown d4 r8 \stemDown cis8 ( \stemDown d4 ) r8 \stemDown cis8 (
    | % 244
    \stemUp b4 ) r8 \stemUp ais8 ( \stemUp b4 ) r8 \stemDown d8 ( | % 245
    \stemDown d4 ) r8 \stemDown fis8 ( \stemDown e4 ) r8 \stemDown dis8
    ( | % 246
    \stemDown e4 ) r16 \stemUp e,16 [ \stemUp fis16 \stemUp gis16 ]
    \stemUp a16 [ \stemUp gis16 \stemUp a16 \stemUp b16 ] \stemDown cis16
    [ \stemDown b16 \stemDown cis16 \stemDown dis16 ] | % 247
    \stemDown e4 r16 \stemDown b16 [ \stemDown cis16 \stemDown dis16 ]
    \stemDown e16 [ \stemDown fis16 \stemDown gis16 \stemDown a16 ]
    \stemDown b16 [ \stemDown gis16 \stemDown b16 \stemDown gis16 ] | % 248
    \stemDown e4 r4 r2 | % 249
    r4 \stemDown e8 -. [ _\p \stemDown e8 -. ] \stemDown dis8 -. [
    \stemDown dis8 -. \stemDown d8 -. \stemDown d8 -. ] |
    \barNumberCheck #250
    \stemUp cis8 -. [ \stemUp cis8 -. \stemUp b8 -. \stemUp b8 -. ]
    \stemUp a8 -. [ \stemUp a8 -. \stemUp gis8 -. \stemUp gis8 -. ] | % 251
    \stemUp a4 r4 r2 | % 252
    R1 | % 253
    \stemUp d,4 r4 \stemUp d4 r4 | % 254
    r8 \stemUp e8 [ \stemUp e8 \stemUp e8 ] \stemUp e4 r4 | % 255
    R1 | % 256
    r4 \stemDown e'4 ( \stemDown eis4 \stemDown fis4 ) | % 257
    \stemDown d4 r8 \stemUp d,8 \stemUp e4 \stemUp e4 | % 258
    \stemUp a4 r4 r2 | % 259
    \stemDown <cis e>2 \stemDown <a cis>4. ( \stemDown <b d>8 ) |
    \barNumberCheck #260
    \stemDown <d fis>8 ( [ \stemDown <cis e>8 ) \stemDown <b d>8 -.
    \stemDown <a cis>8 -. ] \stemUp <a cis>4 r4 | % 261
    \stemUp b4 r4 \stemUp b4 r4 | % 262
    \stemDown e2 ~ \stemDown e4 r4 | % 263
    \stemUp e,4 r4 r2 | % 264
    r2 r8 \stemDown e'8 [ \stemDown e8 \stemDown e8 ] | % 265
    \stemDown e4 r4 r2 | % 266
    r4 \stemDown dis4 ( \stemDown e4 \stemUp e,4 ) | % 267
    \stemUp a8 [ \stemUp cis8 \stemUp cis8 \stemUp cis8 ] r8 \stemDown d8
    [ \stemDown d8 \stemDown d8 ] | % 268
    r8 \stemUp a8 [ \stemUp a8 \stemUp fis'8 ] \stemDown fis8 [
    \stemDown fis8 \stemDown e8 \stemDown d8 ] | % 269
    \stemDown cis8 \stemDown a'8 -. [ _\f \stemDown cis8 -. \stemDown a8
    -. ] \stemDown e8 -. [ \stemDown a8 -. \stemDown cis,8 -. \stemDown
    e8 -. ] | \barNumberCheck #270
    \stemUp a,4 r4 \stemDown cis4 _\p r4 | % 271
    \stemUp b4 r4 \stemUp b4 r4 | % 272
    \stemUp a4 r4 \stemDown f'4 r4 | % 273
    \stemDown d4 r4 \stemDown e4 r4 | % 274
    \stemUp a,4 r4 \stemDown e'4 r4 | % 275
    \stemDown f4 r4 \stemDown g4 r4 | % 276
    \stemDown c,4 r4 \stemDown e4 r4 | % 277
    \stemDown e4 r4 \stemDown dis4 r4 | % 278
    e1 ~ | % 279
    \stemDown e2 \stemDown a2 ~ | \barNumberCheck #280
    \stemDown a8 r8 \stemUp a,8 r8 \stemUp a8 r8 \stemUp a8 r8 | % 281
    \stemDown d2 ( \stemUp b2 ) | % 282
    \stemUp b4 r4 r2 | % 283
    R1*3 | % 286
    r8 \stemUp e,8 -. [ _\f \stemUp fis8 -. \stemUp gis8 -. ] \stemUp a16
    [ \stemUp gis16 \stemUp a16 \stemUp b16 ] \stemDown c16 [ \stemDown
    b16 \stemDown c16 \stemDown d16 ] | % 287
    \stemDown e8 [ \stemDown e8 -. \stemDown fis8 -. \stemDown gis8 -. ]
    \stemDown a16 [ \stemDown gis16 \stemDown a16 \stemDown b16 ]
    \stemDown c16 [ \stemDown b16 \stemDown c16 \stemDown d16 ] | % 288
    \stemDown e4 r4 r2 | % 289
    R1 | \barNumberCheck #290
    r2 \stemUp b,2 ( _\p | % 291
    \stemUp b4 ) r4 \stemUp e,4 r4 | % 292
    \stemUp e8 [ \stemUp a8 \stemUp a8 \stemUp a8 ] r8 \stemUp a8 [
    \stemUp a8 \stemUp a8 ] | % 293
    \stemUp b4 r4 r4 \stemUp e,4 ~ | % 294
    \stemUp e4 r4 \stemDown a'4 r4 | % 295
    \stemDown b4 r4 r4 \stemUp e,,4 ( | % 296
    \stemUp a4 ) r8 \stemUp e8 ( \stemUp d4 ) r8 \stemUp cis8 ( | % 297
    \stemUp d4 ) r8 \stemUp fis8 ( \stemUp fis4 ) r8 \stemUp fis8 ( | % 298
    \stemUp fis4 ) r8 \stemDown cis'8 ( \stemDown d4 ) r8 \stemUp dis,8
    ( | % 299
    \stemUp e4 ) r4 \stemDown e'2 ( | \barNumberCheck #300
    \stemDown e4 ) r4 r4 \stemUp cis,4 ( | % 301
    \stemUp d4 ) r4 r2 | % 302
    r4 \stemUp dis4 ( \stemUp e2 ) | % 303
    \stemUp a4 r4 r2 | % 304
    R1 | % 305
    r2 \stemUp fis2 ( | % 306
    \stemUp eis2 \stemUp cis2 ) | % 307
    \stemUp fis4 r4 r2 | % 308
    R1 | % 309
    r2 \stemDown cis'2 ( | \barNumberCheck #310
    \stemDown d2 \stemUp gis,2 ) | % 311
    \stemUp fis8 ( [ \stemUp a8 \stemUp fis8 \stemUp a8 ) ] \stemUp fis4
    r4 | % 312
    \stemUp b2 ( \stemUp b4 ) r4 | % 313
    \stemUp b2 ( \stemUp b4 ) r4 | % 314
    \stemDown e8 \stemDown e4 \stemDown e4 \stemDown e4 \stemDown e8 | % 315
    \stemDown e4 r4 r2 ^\fermata | % 316
    r2 \stemDown e2 _\p | % 317
    \stemDown cis4. ( \stemDown d8 ) \stemDown fis8 ( [ \stemDown e8 )
    \stemDown d8 -. \stemDown cis8 -. ] | % 318
    \stemUp b4. ( \stemDown cis8 ) \stemDown e8 ( [ \stemDown d8 )
    \stemDown cis8 -. \stemDown b8 -. ] | % 319
    \stemUp a2 \stemUp b4 -. \stemUp a4 -. | \barNumberCheck #320
    \stemUp gis4 -. \stemDown e'4 -. r4 \stemDown d4 ( | % 321
    \stemDown cis4 ) \stemUp b4 -. \stemDown e4 -. \stemUp e,4 -. | % 322
    \stemDown a16 ( [ \stemDown e'16 ) \stemDown e16 -. \stemDown e16 -.
    ] \stemDown d16 ( [ \stemDown e16 ) \stemDown e16 -. \stemDown e16
    -. ] \stemDown cis16 ( [ \stemDown e16 ) \stemDown e16 -. \stemDown
    e16 -. ] \stemDown b16 ( [ \stemDown e16 ) \stemDown e16 -.
    \stemDown e16 -. ] | % 323
    \stemDown a,16 ( [ \stemDown e'16 ) \stemDown e16 -. \stemDown e16
    -. ] \stemDown b16 ( [ \stemDown e16 ) \stemDown e16 -. \stemDown e16
    -. ] \stemDown cis16 ( [ \stemDown e16 ) \stemDown e16 -. \stemDown
    e16 -. ] \stemDown b16 ( [ \stemDown e16 ) \stemDown e16 -.
    \stemDown e16 -. ] | % 324
    \stemUp a,8 r8 \stemUp b8 r8 \stemUp a8 r8 \stemUp e8 r8 | % 325
    \stemUp a8 r8 \stemUp e8 r8 \stemUp a8 r8 \stemUp e8 r8 | % 326
    \stemUp a8 r8 \stemDown e'8 r8 \stemDown cis8 r8 \stemUp a8 r8 | % 327
    \stemUp d,8 r8 \stemUp a'8 r8 \stemUp fis8 r8 \stemUp d8 r8 | % 328
    \stemUp e8 [ \stemUp a8 \stemUp cis8 \stemUp a8 ] \stemDown e'8 r8
    \stemUp e,8 r8 | % 329
    \stemUp a4 r4 r2 | \barNumberCheck #330
    a1 ~ | % 331
    \stemDown a8 [ \stemDown a'8 -. ] \stemDown a2. ~ | % 332
    \stemDown a8 [ \stemDown a,8 -. ] \stemUp a2. ~ | % 333
    \stemUp a4 r8 \stemUp g16 ( [ \stemUp fis32 \stemUp g32 ) ] \stemUp
    fis8 -. [ \stemUp fis8 -. \stemUp g8 -. \stemUp g8 -. ] | % 334
    \stemUp fis4 r4 r8 \stemDown d'8 [ \stemDown d8 \stemDown d8 ] | % 335
    \stemDown e4 r4 r8 \stemDown e8 [ \stemDown e8 \stemDown e8 ] | % 336
    \stemDown fis4 r4 r8 \stemDown f8 [ \stemDown f8 \stemDown f8 ] | % 337
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] r8 \stemDown
    e8 [ \stemDown e8 \stemDown e8 ] | % 338
    r8 \stemDown a8 [ \stemDown a8 \stemDown a8 ] r8 \stemDown cis8 [
    \stemDown cis8 \stemDown cis8 ] | % 339
    \stemDown cis8 r8 \stemDown e,8 -. [ \stemDown e8 -. ] \stemDown e8
    -. r8 \stemDown e8 -. [ \stemDown e8 -. ] | \barNumberCheck #340
    \stemDown e8 -. r8 \stemDown e8 -. [ \stemDown e8 -. ] \stemDown e8
    -. r8 \stemUp a,8 -. [ \stemUp a8 -. ] | % 341
    \stemUp a4 r4 r2 | % 342
    \stemUp e16 [ _\markup{ \tiny\italic {cresc.} } \stemUp e16 \stemUp
    e16 \stemUp e16 ] \stemUp e4 :16 \stemUp d2 :16 | % 343
    \stemUp cis8 _\f \stemDown e'4 \stemDown e4 \stemDown e4 \stemDown e8
    ~ | % 344
    \stemDown e8 \stemDown e4 \stemDown e4 \stemDown e4 \stemDown e8 ~ | % 345
    \stemDown e8 \stemDown e4 \stemDown e4 \stemDown e4 \stemDown e8 ~ | % 346
    \stemDown e8 \stemDown e4 \stemDown e4 \stemDown e4 \stemDown e8 | % 347
    \stemDown e8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 348
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown
    cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 349
    \stemDown d8 [ \stemDown d8 \stemDown d8 \stemDown d8 ] \stemDown
    fis8 [ \stemDown fis8 \stemDown fis8 \stemDown fis8 ] |
    \barNumberCheck #350
    \stemDown e8 ( [ \stemDown dis8 \stemDown d8 \stemDown cis8 ) ]
    \stemUp b8 ( [ \stemUp d8 \stemUp cis8 \stemUp a8 ) ] | % 351
    \stemDown e'8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown e8
    [ \stemDown e8 \stemDown e8 \stemDown e8 ] | % 352
    \stemUp a,4 r4 r2 | % 353
    r2 \stemDown d8 -. _\p r8 \stemDown e8 -. r8 | % 354
    \stemDown fis4 r4 r2 | % 355
    r2 \stemUp b,8 -. r8 \stemDown e8 -. r8 | % 356
    \stemUp a,4 r4 \stemUp b8 -. r8 \stemUp b8 -. r8 | % 357
    \stemUp a4 r4 \stemUp b8 -. r8 \stemUp b8 -. r8 | % 358
    \stemUp a8 \stemDown a'8 -. [ _\f \stemDown cis8 -. \stemDown a8 -.
    ] \stemDown e8 -. [ \stemDown a8 -. \stemDown cis,8 -. \stemDown e8
    -. ] | % 359
    \stemUp a,4 -. \stemDown a'4 -. \stemUp a,4 -. r4 \bar "|."
    \time 3/4  \key d \major \stemUp a2. ~ _\p \stemUp a2. \stemUp a2. ~
    \stemUp a2. \stemUp a2. ~ \stemUp a2 \stemUp fis4 \stemUp e2. ~
    \stemUp e8 \stemDown g'8 ( [ _\f \stemDown fis8 \stemDown e8
    \stemDown d8 \stemDown cis8 ) ] \stemUp d8 ( [ _\f \stemUp a8
    \stemUp d8 \stemUp a8 \stemUp d8 \stemUp a8 ) ] \stemUp cis8 ( [
    \stemUp a8 \stemUp d8 \stemUp a8 \stemUp d8 \stemUp a8 ) ] \stemUp d8
    ( [ \stemUp a8 \stemUp d8 \stemUp a8 \stemUp d8 \stemUp a8 ) ]
    \stemUp cis8 ( [ \stemUp a8 \stemUp d8 \stemUp a8 \stemUp d8 \stemUp
    a8 ) ] \stemUp cis8 ( [ \stemUp a8 \stemUp cis8 \stemUp a8 \stemUp d8
    \stemUp a8 ) ] \stemUp cis8 ( [ \stemUp a8 \stemUp cis8 \stemUp a8
    \stemUp b8 \stemUp d8 ) ] \stemUp a8 ( [ \stemUp cis8 \stemUp a8
    \stemUp cis8 \stemUp gis8 \stemUp b8 ) ] \stemUp a4 r4 r4 \stemUp
    fis2. _\p \stemUp g4 \stemDown c4 ( \stemDown b8 [ \stemDown a8 ) ]
    \stemUp g2. \stemUp a4 \stemDown d4 ( \stemDown cis8 [ \stemDown b8
    ) ] \stemUp a4 ( \stemUp g4 \stemUp a4 ) \stemUp b4 ( \stemDown cis4
    \stemDown d4 ) \stemUp g,8 ( [ \stemUp b8 ) ] \stemUp a4. ( \stemUp
    g8 ) \stemUp fis8 \stemDown g'8 ( [ _\f \stemDown fis8 \stemDown e8
    \stemDown d8 \stemDown cis8 ) ] \stemUp d8 ( [ \stemUp fis,8 \stemUp
    d'8 \stemUp cis8 \stemUp b8 \stemUp a8 ) ] \stemUp g8 \stemDown g'4
    ( \stemDown fis8 [ \stemDown e8 \stemDown dis8 ) ] \stemUp e8 ( [
    \stemUp g,8 \stemUp b8 \stemUp a8 \stemUp g8 \stemUp fis8 ) ]
    \stemUp e8 \stemDown a'4 ( \stemDown gis8 [ \stemDown fis8 \stemDown
    eis8 ) ] \stemUp fis8 ( [ \stemUp a,8 \stemUp cis8 \stemUp b8
    \stemUp a8 \stemUp g8 ) ] \stemUp fis8 ( [ \stemUp d'8 \stemUp a8
    \stemUp e'8 \stemUp a,8 \stemUp d8 ) ] \stemDown b8 ( [ \stemDown e8
    \stemDown a,8 \stemDown fis'8 \stemDown cis8 \stemDown e8 ) ]
    \stemDown d4 r4 r4 r8 \stemUp a8 [ _\p \stemUp a8 \stemUp a8 \stemUp
    a8 \stemUp a8 ] r8 \stemUp a8 [ \stemUp a8 \stemUp a8 \stemUp a8
    \stemUp a8 ] r8 \stemUp gis4 \stemUp gis4 \stemUp gis8 ~ \stemUp gis8
    [ \stemUp e8 ] \stemUp e4 r4 \stemUp a2. ~ \stemUp a2. \stemUp a2. ~
    \stemUp a2. \stemUp e2. ~ \stemUp e8 r8 \stemUp a8 r8 \stemUp b8 r8
    \stemUp e,2. \stemUp b'4 ( \stemUp a8 ) \stemUp a8 ( [ \stemUp gis8
    \stemUp fis8 ) ] \stemDown e8 [ \stemDown e'8 -. \stemDown cis8 -.
    \stemDown e8 -. \stemDown cis8 -. \stemDown e8 -. ] r8 \stemDown d8
    -. [ \stemDown b8 -. \stemDown fis'8 -. \stemDown d8 -. \stemDown
    fis8 -. ] r8 \stemDown e8 -. [ \stemDown cis8 -. \stemDown g'8 -.
    \stemDown e8 -. \stemDown g8 -. ] r8 \stemDown fis8 -. [ \stemDown d8
    -. \stemDown a'8 -. \stemDown fis8 -. \stemDown a8 -. ] r8 \stemDown
    b,8 -. [ \stemDown e,8 -. \stemDown e'8 -. \stemDown b8 -. \stemDown
    b'8 -. ] \stemUp a,4 r4 r4 \stemUp fis4 r4 r4 r8 \stemUp e8 [
    \stemUp e8 \stemUp e8 \stemUp e8 \stemUp e8 ] \stemUp e8 [ _\markup{
        \tiny\italic {cresc.} } \stemUp e8 \stemUp e8 \stemUp e8 \stemUp
    d8 \stemUp d8 ] \stemUp cis8 _\f \stemDown cis'4 \stemDown e4
    \stemDown a8 \stemDown cis4 r4 r4 \stemUp gis,8 \stemUp b4 \stemDown
    d4 \stemDown gis8 \stemDown b4 r4 r4 \stemUp e,,8 \stemDown cis'4
    \stemDown e4 \stemDown g8 \stemDown cis4 r4 r4 ^\fermata \stemUp a,2.
    ~ _\p \stemUp a2. \stemUp a2. ~ \stemUp a2. \stemUp a2. ~ \stemUp a2
    \stemUp fis4 \stemUp e2. ~ \stemUp e4 r4 r4 \stemUp fis2. \stemUp g4
    \stemDown c4 ( \stemDown b8 [ \stemDown a8 ) ] \stemUp g2. \stemUp a4
    \stemDown d4 ( \stemDown cis8 [ \stemDown b8 ) ] \stemUp a4 (
    \stemUp g4 \stemUp a4 ) \stemUp b4 ( \stemDown cis4 \stemDown d4 )
    \stemUp g,8 ( [ \stemUp b8 ) ] \stemUp a4. ( \stemUp g8 ) \stemUp
    fis8 \stemDown g'8 ( [ _\f \stemDown fis8 \stemDown e8 \stemDown d8
    \stemDown cis8 ) ] \stemUp a8 \stemUp a4 \stemUp a8 ( [ \stemUp b8
    \stemUp cis8 ) ] \stemDown d8 \stemDown g4 ( \stemDown fis8 [
    \stemDown e8 \stemDown dis8 ) ] \stemDown e8 \stemUp b4 \stemDown b8
    ( [ \stemDown cis8 \stemDown d8 ) ] \stemDown e8 \stemDown a4 (
    \stemDown gis8 [ \stemDown fis8 \stemDown eis8 ) ] \stemDown fis8
    \stemDown cis4 \stemDown cis8 ( [ \stemDown d8 \stemDown e8 ) ]
    \stemDown fis8 ( [ \stemDown g8 \stemDown d8 ) \stemDown bes8 (
    \stemDown c8 \stemDown a8 ) ] \stemUp g8 ( [ \stemUp b8 ) ]
    \stemDown a4 ( \stemDown cis4 ) \stemDown d8 \stemDown d8 [ _\p
    \stemDown d8 \stemDown d8 \stemDown d8 \stemDown d8 ] r8 \stemDown e8
    [ \stemDown e8 \stemDown e8 \stemDown d8 \stemDown d8 ] r8 \stemDown
    e8 [ \stemDown e8 \stemDown e8 \stemDown d8 \stemDown d8 ] r8
    \stemUp b8 [ \stemUp a8 \stemUp a8 \stemUp g8 \stemUp g8 ] \stemUp
    fis8 [ \stemUp fis8 \stemUp fis8 \stemUp fis8 \stemUp fis8 \stemUp
    fis8 ] r8 \stemUp g8 [ \stemUp g8 \stemUp g8 \stemUp fis8 \stemUp
    fis8 ] r8 \stemDown a'8 [ \stemDown a8 \stemDown a8 \stemDown a8
    \stemDown a8 ] \stemDown g4 r4 r4 r8 \stemUp a,8 [ \stemUp a8
    \stemUp a8 \stemUp a8 \stemUp a8 ] \stemUp a16 [ \stemUp a16 \stemUp
    a16 \stemUp a16 ] \stemUp a4 :16 \stemUp g4 :16 \stemUp fis4 r4 r4
    R2. r2 \stemDown e'8 r8 \stemDown fis8 r8 \stemDown a8 r8 \stemUp a,8
    r8 \stemDown d8 -. r8 \stemUp fis,8 -. r8 \stemUp fis8 -. r8 \stemUp
    fis4 r4 r4 \bar "|."
    \time 6/8  \key a \major r8 -. [ r8 _\p \stemDown a'8 -. ] \stemDown
    a8 -. [ \stemDown a8 -. \stemDown a8 -. ] \stemDown e4. ( \stemDown
    a8 ) r8 r8 \stemDown d,8 -. [ \stemDown d8 -. ] r8 \stemDown fis8 -.
    [ \stemDown fis8 -. ] r8 \stemDown e8 -. [ \stemDown e8 -. \stemDown
    e8 -. ] \stemDown e8 r8 r8 \stemDown a8 -. [ r8 \stemDown a8 -. ]
    \stemDown a8 -. [ \stemDown a8 -. \stemDown a8 -. ] \stemDown e4 (
    \stemDown eis8 ) \stemDown fis4 -. r8 \stemDown d8 r8 r8 \stemUp e,8
    r8 r8 \stemUp a8 -. [ \stemUp a8 -. \stemUp a8 -. ] \stemUp a8 r8 r8
    \stemDown a'8 -. [ _\p \stemDown a8 -. _\markup{ \tiny\italic
        {cresc.} } \stemDown a8 -. ] \stemDown a8 -. [ \stemDown a8 -.
    \stemDown a8 -. ] \stemDown b4. ( _\f \stemDown a8 ) r8 r8 r8
    \stemDown d,8 -. _\p r8 r8 \stemDown d8 -. r8 \stemDown e8 -. [
    \stemDown e8 -. \stemDown e8 -. ] \stemDown e8 r8 r8 r8 \stemDown a8
    -. [ _\markup{ \tiny\italic {cresc.} } \stemDown a8 -. ] \stemDown a8
    -. [ \stemDown a8 -. \stemDown a8 -. ] \stemDown e4 ( _\f \stemDown
    eis8 ) \stemDown fis4 -. r8 r8 \stemDown d8 -. _\p r8 r8 \stemDown e8
    -. r8 \stemUp a,8 -. [ \stemUp a8 -. \stemUp a8 -. ] \stemUp a8 r8 r8
    r8 \stemUp gis8 [ _\p \stemUp gis8 ] \stemUp gis8 [ \stemUp gis8
    \stemUp gis8 ] r8 \stemUp a8 [ \stemUp a8 ] \stemUp a8 [ \stemUp a8
    \stemUp a8 ] r8 \stemDown dis8 [ \stemDown dis8 ] \stemDown dis8 [
    \stemDown dis8 \stemDown dis8 ] \stemDown e4 r8 r4 \stemUp b8 -.
    \stemUp b4 r8 r4 \stemUp b8 -. \stemUp b4 r8 r4. r8 \stemDown d8 ( [
    \stemDown cis8 ] \stemDown b8 [ \stemDown a8 \stemDown gis8 ) ]
    \stemDown a8 -. [ r8 \stemDown a'8 -. ] \stemDown a8 -. [ \stemDown
    a8 -. \stemDown a8 -. ] \stemDown e4. ( \stemDown fis8 ) r8 r8
    \stemDown d8 -. [ \stemDown d8 -. ] r8 \stemDown d8 -. [ \stemDown d8
    -. ] r8 \stemDown e8 -. [ \stemDown e8 -. \stemDown e8 -. ]
    \stemDown e8 r8 r8 \stemDown a8 -. [ r8 \stemDown a8 -. ] \stemDown
    a8 -. [ \stemDown a8 -. \stemDown a8 -. ] \stemDown e4 ( \stemDown
    eis8 ) \stemDown fis4 -. r8 \stemDown d8 r8 r8 \stemUp e,8 r8 r8
    \stemUp a4 r8 r4. \stemUp gis4 r8 r4. \stemUp a4 _\markup{
        \tiny\italic {cresc.} } r8 r4. \stemUp a4 r8 r4. \stemUp a4 r8 r4.
    R2.*4 \stemDown cis8 [ _\f \stemDown cis8 \stemDown cis8 ] \stemDown
    cis8 [ \stemDown cis8 \stemDown cis8 ] \stemDown d8 [ \stemDown d8
    \stemDown d8 ] \stemDown d8 [ \stemDown d8 \stemDown d8 ] \stemDown
    e8 [ \stemDown e8 \stemDown e8 ] \stemDown d8 [ \stemDown d8
    \stemDown d8 ] \stemDown cis4 r8 r4. \stemDown e4. ( _\p \stemDown
    eis4. ) \stemDown fis8 r8 r8 \stemDown d8 r8 r8 \stemDown e8 -. [
    \stemDown e8 -. \stemDown e8 -. ] \stemDown e8 -. [ \stemDown e8 -.
    \stemDown e8 -. ] \stemDown e4 r8 r4. \stemDown e2. ( \stemUp a,8 )
    r8 r8 \stemDown d8 r8 r8 \stemDown e8 r8 r8 \stemUp e,8 [ \stemUp e8
    \stemUp e8 ] \stemDown a8 [ _\f \stemDown a'8 \stemDown a8 ]
    \stemDown cis4 ( \stemDown a8 ) \stemDown e8 [ \stemDown e8
    \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown
    a,8 [ \stemDown a'8 \stemDown a8 ] \stemDown cis4 ( \stemDown a8 )
    \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown
    e8 \stemDown e8 ] \stemUp a,4 r8 \stemDown a'4 r8 \stemUp a,4 r8 r4.
    R2.*4 \stemDown e'4 _\p r8 r8 \stemDown e8 -. [ \stemDown e8 -. ]
    \stemDown e4 r8 r4. R2.*2 \stemUp a,2. ~ \stemUp a8 [ \stemUp a8 -.
    \stemUp a8 -. ] \stemUp a8 -. [ \stemUp a8 -. \stemUp a8 -. ]
    \stemUp a8 r8 r8 \stemUp a8 r8 r8 \stemUp a4 r8 r8 \stemDown fis'8 [
    \stemDown e8 ] \stemDown dis4 r8 \stemUp b4. ~ \stemUp b4 r8 r4.
    \stemUp a4 r8 r4 \stemUp b8 \stemUp b8 [ \stemUp b8 \stemUp b8 ]
    \stemUp e,8 r8 r8 \stemDown e'2. ( \stemDown dis4. \stemDown d4.
    \stemDown cis4. \stemDown c4. \stemUp b4 ) r8 r4. R2.*4 r4 \stemUp b8
    _\p \stemUp a4 \stemUp g8 \stemUp fis4 \stemUp b8 \stemUp b8 r8 r8 r8
    \stemDown cis8 [ \stemDown cis8 ] r8 \stemUp a8 [ \stemUp a8 ] r8
    \stemUp gis8 [ \stemUp gis8 ] r8 \stemUp b8 [ \stemUp b8 ] r8
    \stemUp b8 [ \stemUp b8 ] r8 \stemUp b8 [ \stemUp b8 ] r8 \stemUp
    gis8 [ \stemUp gis8 ] r8 \stemUp b8 [ \stemUp b8 ] r8 \stemUp b8 [
    \stemUp b8 ] r8 \stemUp b8 [ \stemUp b8 ] \stemUp b4 r8 r8 \stemUp b8
    [ \stemUp b8 ] \stemUp a4 r8 r8 \stemDown fis'8 [ \stemDown fis8 ]
    \stemUp b,2. ~ \stemUp b4 r8 r8 \stemUp b8 -. [ \stemUp b8 -. ]
    \stemDown cis4 r8 r8 \stemDown fis8 -. [ \stemDown fis8 -. ]
    \stemDown e2. ~ \stemDown e4 r8 r4. \stemUp b8 [ \stemUp b8 \stemUp
    b8 ] \stemUp b8 [ \stemUp b8 \stemUp b8 ] \stemUp b8 [ \stemUp b8
    \stemUp b8 ] \stemUp a8 [ \stemUp a8 \stemUp a8 ] \stemUp gis8 [
    \stemUp e8 \stemUp e8 ] \stemUp e8 [ \stemUp e8 \stemUp e8 ]
    \stemDown d'4. ( _\sfp \stemUp b4 \stemDown e8 ) \stemDown e4 r8 r4.
    \stemUp e,4 r8 \stemUp e4 r8 \stemUp e8 [ \stemUp e8 \stemUp e8 ]
    \stemUp e8 [ \stemUp e8 \stemUp e8 ] \stemDown d'4. ( _\sfp \stemUp
    b4 \stemDown e8 ) \stemDown e4 r8 r4. \stemUp f,2. ( \stemUp e4 ) r8
    r4. r4 r8 \stemDown f'4. ( \stemDown e8 ) r8 r8 r4. r4 r8 \stemUp f,4.
    ( \stemUp e8 ) r8 r8 r4. \stemUp f2. ~ \stemUp f4. \stemUp a8 ( [
    \stemUp gis8 \stemUp a8 ) ] \stemUp b4 r8 r4. r8 \stemDown dis8 ( [
    \stemDown e8 ] \stemDown eis8 [ \stemDown fis8 \stemDown gis8 ) ]
    \stemDown a8 -. [ r8 \stemDown a8 -. ] \stemDown a8 -. [ \stemDown a8
    -. \stemDown a8 -. ] \stemDown e4. ( \stemDown a8 ) r8 r8 \stemDown
    d,8 -. [ \stemDown d8 -. ] r8 \stemDown fis8 -. [ \stemDown fis8 -.
    ] r8 \stemDown e8 -. [ \stemDown e8 -. \stemDown e8 -. ] \stemDown e8
    r8 r8 \stemDown a8 -. [ r8 \stemDown a8 -. ] \stemDown a8 -. [
    \stemDown a8 -. \stemDown a8 -. ] \stemDown e4 ( \stemDown eis8 )
    \stemDown fis4 -. r8 \stemDown d8 r8 r8 \stemUp e,8 r8 r8 \stemDown
    a8 [ _\f \stemDown a'8 \stemDown a8 ] \stemDown cis4 ( \stemDown a8
    ) \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown e8 [
    \stemDown e8 \stemDown e8 ] \stemDown a,8 [ \stemDown a'8 \stemDown
    a8 ] \stemDown cis4 ( \stemDown a8 ) \stemDown e8 [ \stemDown e8
    \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemUp a,4
    r8 r4. R2. r4. \stemDown gis'16 [ \stemDown gis16 \stemDown cis,16
    \stemDown cis16 \stemDown b'16 \stemDown b16 ] \stemDown a16 [
    \stemDown a16 \stemDown fis16 \stemDown fis16 \stemDown cis16
    \stemDown cis16 ] \stemDown gis'16 [ \stemDown gis16 \stemDown cis,16
    \stemDown cis16 \stemDown b'16 \stemDown b16 ] \stemDown a4. :64
    \stemDown a4. :64 \stemDown a4. :64 \stemDown a4. :64 \stemDown a16
    [ \stemDown a16 \stemDown gis16 \stemDown gis16 \stemDown gis16
    \stemDown gis16 ] \stemDown fis16 [ \stemDown fis16 \stemDown fis16
    \stemDown fis16 \stemDown e16 \stemDown e16 ] \stemDown e16 [
    \stemDown e16 \stemDown d16 \stemDown d16 \stemDown d16 \stemDown d16
    ] \stemDown cis4. :64 \stemDown fis16 [ \stemDown fis16 \stemDown
    eis16 \stemDown eis16 \stemDown fis16 \stemDown fis16 ] \stemDown a16
    [ \stemDown a16 \stemDown gis16 \stemDown gis16 \stemDown fis16
    \stemDown fis16 ] \stemDown eis16 [ \stemDown eis16 \stemDown gis16
    \stemDown gis16 \stemDown cis,16 \stemDown cis16 ] \stemDown a'16 [
    \stemDown a16 \stemDown fis16 \stemDown fis16 \stemDown gis16
    \stemDown gis16 ] \stemDown eis16 [ \stemDown eis16 \stemDown gis16
    \stemDown gis16 \stemDown cis,16 \stemDown cis16 ] \stemDown a'16 [
    \stemDown a16 \stemDown fis16 \stemDown fis16 \stemDown gis16
    \stemDown gis16 ] \stemDown eis8 [ \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 ] \stemDown cis4 r8 r4.
    r4 r8 \stemDown fis4. _\p r4 r8 \stemDown fis4. r4 r8 \stemDown eis4.
    r4 r8 \stemDown fis4. R2.*3 r4 \stemDown cis8 \stemDown cis4
    \stemDown cis8 \stemUp cis8 [ \stemUp fis,8 \stemUp fis8 ] \stemUp
    fis8 [ \stemUp fis8 \stemUp fis8 ] r8 \stemUp d8 [ \stemUp d8 ]
    \stemUp d8 [ \stemUp d8 \stemUp d8 ] r8 \stemUp cis8 [ \stemUp cis8
    ] \stemUp cis8 [ \stemUp cis8 \stemUp cis8 ] r8 \stemUp fis8 [
    \stemUp fis8 ] \stemUp fis8 [ \stemUp fis8 \stemUp fis8 ] R2.*3 r8
    \stemDown cis'8 [ \stemDown cis8 ] \stemDown cis8 [ \stemDown cis8
    \stemDown cis8 ] \stemUp bis2. \stemDown cis8 [ \stemDown cis8
    \stemDown cis8 ] \stemDown cis8 [ \stemDown cis8 \stemDown cis8 ]
    \stemDown d2. \stemDown cis8 r8 \stemDown cis8 \stemDown cis8 [
    \stemDown cis8 \stemDown cis8 ] \stemDown cis8 r8 \stemDown cis'8
    _\f \stemDown cis8 [ \stemDown cis8 \stemDown cis8 ] \stemDown cis4
    r8 r4. \stemUp a,2. _\markup{ \tiny\italic {(} } _\p _\markup{
        \tiny\italic {)} } \stemDown d4 r8 r4. \stemDown d4 r8 r4.
    \stemDown d4 r8 r4. \stemUp a4 r8 r4. \stemUp a4 r8 r4. \stemUp a4 r8
    r4. \stemUp a4 r8 r4. \stemDown d4 r8 r4. \stemDown g4 r8 r4. r8
    \stemDown cis8 [ \stemDown cis8 ] \stemDown cis8 [ \stemDown cis8
    \stemDown cis8 ] \stemDown fis,4 r8 r4. r8 \stemDown b8 [ \stemDown
    b8 ] \stemDown b8 [ \stemDown b8 \stemDown b8 ] \stemDown e,4 r8 r4.
    r8 \stemDown a8 [ \stemDown a8 ] \stemDown a8 [ \stemDown a8
    \stemDown a8 ] \stemDown d,8 r8 r8 \stemDown d8 r8 r8 \stemDown d8 r8
    r8 \stemUp g,8 r8 r8 \stemUp a8 r8 r8 \stemUp a8 r8 r8 \stemDown d4
    r8 r4. r8 \stemDown a'8 ( [ \stemDown bes8 ] \stemDown b8 [
    \stemDown c8 \stemDown cis8 ) ] \stemDown d4 r8 r4. R2.*5 r4 r8
    \stemDown e,8 -. [ _\f \stemDown gis8 -. \stemDown b8 -. ] \stemDown
    e,4 r8 r4. R2.*4 \stemDown e4 _\p r8 r8 \stemDown e8 -. [ \stemDown
    e8 -. ] \stemDown e4 r8 r4. R2.*5 \stemDown e4. ( \stemDown dis4
    \stemDown d8 ) \stemDown c4 r8 r4. \stemDown c4. \grace { \stemUp e16
        ( } \stemDown d8 ) [ \stemDown c8 \stemDown d8 ] \stemDown e4. (
    \stemDown f4 \stemDown fis8 ) \stemDown g2. ( \stemDown f4 ) r8 r4.
    \stemUp f,4. \grace { \stemUp a16 ( } \stemUp g8 ) [ \stemUp f8
    \stemUp g8 ] \stemUp a4. ( \stemUp bes4 \stemUp b8 ) \stemDown cis4
    r8 r4. r8 \stemDown d8 -. [ \stemDown d8 -. ] r8 \stemUp a8 -. [
    \stemUp a8 -. ] \stemUp g8 r8 r8 r4. r8 \stemDown c8 -. [ \stemDown
    c8 -. ] r8 \stemUp g8 -. [ \stemUp g8 -. ] \stemUp f8 r8 r8
    \stemDown f'4. r8 \stemDown f8 -. [ \stemDown f8 -. ] r8 \stemDown d8
    -. [ \stemDown d8 -. ] \stemUp b8 r8 r8 r4. \stemUp a2. ( \stemUp
    gis4. \stemUp g4. \stemUp fis4. \stemUp f4. \stemUp e4 ) r8 r4.
    \stemDown a'2. ( \stemDown gis8 ) r8 r8 \stemDown g8 r8 r8 ^\fermata
    \stemUp f,2. ( \stemUp e8 ) r8 r8 \stemDown g'8 r8 r8 ^\fermata
    \stemUp d,2. ( \stemUp e2. ) \stemDown fis8 [ \stemDown fis'8
    \stemDown fis8 ] \stemDown fis8 [ \stemDown fis8 \stemDown fis8 ]
    \stemDown fis8 r8 r8 \stemUp fis,8 r8 r8 \stemUp e8 [ \stemUp b'8
    \stemUp b8 ] r8 \stemUp b8 [ \stemUp b8 ] r8 \stemUp b8 [ \stemUp b8
    ] r8 \stemUp b8 [ \stemUp b8 ] r8 \stemUp b8 [ \stemUp b8 ] r8
    \stemUp b8 [ \stemUp b8 ] r8 \stemUp b8 [ \stemUp b8 ] r8 \stemUp b8
    [ \stemUp b8 ] \stemUp gis8 [ \stemUp e8 \stemUp e8 ] \stemUp e8 [
    \stemUp e8 \stemUp e8 ] \stemDown d'4. ( _\sfp \stemUp b4 \stemDown
    e8 ) \stemDown e4 r8 r4. \stemUp e,4 r8 \stemUp e4 r8 \stemUp e8 [
    \stemUp e8 \stemUp e8 ] \stemUp e8 [ \stemUp e8 \stemUp e8 ]
    \stemDown d'4. ( _\sfp \stemUp b4 \stemDown e8 ) \stemDown e4 r8 r4.
    \stemUp f,2. ( \stemUp e4 ) r8 r4. r4 r8 \stemDown f'4. ( \stemDown
    e8 ) r8 r8 r4. r4 r8 \stemUp f,4. ( \stemUp e8 ) r8 r8 r4. \stemUp f2.
    ~ \stemUp f4. \stemUp a8 ( [ \stemUp gis8 \stemUp a8 ) ] \stemUp b4
    r8 r4. r8 \stemDown dis8 ( [ \stemDown e8 ] \stemDown eis8 [
    \stemDown fis8 \stemDown gis8 ) ] \stemDown a8 -. [ r8 \stemDown a8
    -. ] \stemDown a8 -. [ \stemDown a8 -. \stemDown a8 -. ] \stemDown e4.
    ( \stemDown a8 ) r8 r8 \stemDown d,8 -. [ \stemDown d8 -. ] r8
    \stemDown fis8 -. [ \stemDown fis8 -. ] r8 \stemDown e8 -. [
    \stemDown e8 -. \stemDown e8 -. ] \stemDown e8 r8 r8 \stemDown a8 -.
    [ r8 \stemDown a8 -. ] \stemDown a8 -. [ \stemDown a8 -. \stemDown a8
    -. ] \stemDown e4 ( \stemDown eis8 ) \stemDown fis4 -. r8 \stemDown
    d8 r8 r8 \stemUp e,8 r8 r8 \stemUp a8 -. [ \stemUp a8 -. \stemUp a8
    -. ] \stemUp a8 r8 r8 \stemDown a'8 -. [ _\p \stemDown a8 -.
    _\markup{ \tiny\italic {cresc.} } \stemDown a8 -. ] \stemDown a8 -.
    [ \stemDown a8 -. \stemDown a8 -. ] \stemDown b4. ( _\f \stemDown a8
    ) r8 r8 r8 \stemDown d,8 -. _\p r8 r8 \stemDown d8 -. r8 \stemDown e8
    -. [ \stemDown e8 -. \stemDown e8 -. ] \stemDown e8 r8 r8 r8
    \stemDown a8 -. [ _\markup{ \tiny\italic {cresc.} } \stemDown a8 -.
    ] \stemDown a8 -. [ \stemDown a8 -. \stemDown a8 -. ] \stemDown e4 (
    _\f \stemDown eis8 ) \stemDown fis4 -. r8 r8 \stemDown d8 -. _\p r8
    r8 \stemDown e8 -. r8 \stemUp a,8 -. [ \stemUp a8 -. \stemUp a8 -. ]
    \stemUp a8 r8 r8 r8 \stemUp gis8 [ _\p \stemUp gis8 ] \stemUp gis8 [
    \stemUp gis8 \stemUp gis8 ] r8 \stemUp a8 [ \stemUp a8 ] \stemUp a8
    [ \stemUp a8 \stemUp a8 ] r8 \stemDown dis8 [ \stemDown dis8 ]
    \stemDown dis8 [ \stemDown dis8 \stemDown dis8 ] \stemDown e4 r8 r4
    \stemUp b8 -. \stemUp b4 r8 r4 \stemUp b8 -. \stemUp b4 r8 r4. r8
    \stemDown d8 ( [ \stemDown cis8 ] \stemDown b8 [ \stemDown a8
    \stemDown gis8 ) ] \stemDown a8 -. [ r8 \stemDown a'8 -. ] \stemDown
    a8 -. [ \stemDown a8 -. \stemDown a8 -. ] \stemDown e4. ( \stemDown
    fis8 ) r8 r8 \stemDown d8 -. [ \stemDown d8 -. ] r8 \stemDown d8 -.
    [ \stemDown d8 -. ] r8 \stemDown e8 -. [ \stemDown e8 -. \stemDown e8
    -. ] \stemDown e8 r8 r8 \stemDown a8 -. [ r8 \stemDown a8 -. ]
    \stemDown a8 -. [ \stemDown a8 -. \stemDown a8 -. ] \stemDown e4 (
    \stemDown eis8 ) \stemDown fis4 -. r8 \stemDown d8 r8 r8 \stemUp e,8
    r8 r8 \stemUp a4 r8 r4. \stemUp gis4 r8 r4. \stemUp a4 _\markup{
        \tiny\italic {cresc.} } r8 r4. \stemUp a4 r8 r4. \stemUp a4 r8 r4.
    R2.*4 \stemDown cis8 [ _\f \stemDown cis8 \stemDown cis8 ] \stemDown
    cis8 [ \stemDown cis8 \stemDown cis8 ] \stemDown d8 [ \stemDown d8
    \stemDown d8 ] \stemDown d8 [ \stemDown d8 \stemDown d8 ] \stemDown
    e8 [ \stemDown e8 \stemDown e8 ] \stemDown d8 [ \stemDown d8
    \stemDown d8 ] \stemDown cis4 r8 r4. \stemDown e4. ( _\p \stemDown
    eis4. ) \stemDown fis8 r8 r8 \stemDown d8 r8 r8 \stemDown e8 -. [
    \stemDown e8 -. \stemDown e8 -. ] \stemDown e8 -. [ \stemDown e8 -.
    \stemDown e8 -. ] \stemDown e4 r8 r4. \stemDown e2. ( \stemUp a,8 )
    r8 r8 \stemDown d8 r8 r8 \stemDown e8 r8 r8 \stemUp e,8 [ \stemUp e8
    \stemUp e8 ] \stemDown a8 [ _\f \stemDown a'8 \stemDown a8 ]
    \stemDown cis4 ( \stemDown a8 ) \stemDown e8 [ \stemDown e8
    \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown
    a,8 [ \stemDown a'8 \stemDown a8 ] \stemDown cis4 ( \stemDown a8 )
    \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown
    e8 \stemDown e8 ] \stemUp a,2. ~ _\p \stemUp a4. \stemUp gis4 (
    \stemUp b8 ) \stemUp a2. ~ \stemUp a4. \stemUp gis4 ( \stemUp b8 )
    \stemUp a4. \stemDown a'4. ~ \stemDown a4. \stemDown gis4 (
    \stemDown b8 ) \stemDown a8 -. [ _\f \stemDown e8 -. \stemDown gis8
    -. ] \stemDown a4 r8 r8 \stemUp b,8 -. [ _\p \stemUp b8 -. ] r8
    \stemUp b8 -. [ \stemUp b8 -. ] \stemUp a8 -. [ _\f \stemUp e8 -.
    \stemUp gis8 -. ] \stemUp a4 r8 r8 \stemUp gis8 -. [ _\p \stemUp gis8
    -. ] r8 \stemUp e8 -. [ \stemUp e8 -. ] \stemDown e8 [ \stemDown a'8
    -. \stemDown g8 -. ] \stemDown fis8 -. [ \stemDown e8 -. \stemDown d8
    -. ] \stemDown cis8 -. [ \stemDown a8 -. \stemDown e'8 -. ]
    \stemDown fis8 -. [ \stemDown e8 -. \stemDown d8 -. ] \stemDown cis8
    -. [ \stemDown a8 -. \stemDown e'8 -. ] \stemDown fis8 -. [
    \stemDown e8 -. \stemDown d8 -. ] \stemUp e8 [ \stemUp a,8 \stemUp a8
    ] \stemUp a8 [ \stemUp a8 \stemUp a8 ] \stemUp a8 [ \stemUp a8
    \stemUp a8 ] \stemUp a8 [ \stemUp a8 \stemUp a8 ] \stemUp a8 [
    \stemUp a8 \stemUp a8 ] \stemUp a8 [ \stemUp a8 \stemUp a8 ] \stemUp
    a8 [ \stemUp a8 \stemUp a8 ] \stemUp a8 [ \stemUp a8 \stemUp a8 ]
    \stemUp a8 [ \stemUp a8 \stemUp a8 ] \stemUp a8 r8 r8 \stemUp a8 r8
    r8 \stemUp a8 r8 r8 \stemUp b4 r8 r4. \stemDown d8 [ \stemDown d8
    \stemDown d8 ] \stemDown d8 [ \stemDown d8 \stemDown d8 ] \stemDown
    cis4 r8 r4. r8 \stemDown dis8 ( [ \stemDown e8 ] \stemDown eis8 [
    \stemDown fis8 \stemDown gis8 ) ] \stemDown a4 r8 r4. r8 \stemDown
    cis,8 ( [ \stemDown d8 ] \stemDown dis8 [ \stemDown e8 \stemDown eis8
    ) ] \stemDown fis4 r8 r4. \stemDown a2. ~ \stemDown a8 [ \stemDown
    a,8 \stemDown a8 ] \stemUp a8 [ \stemUp a8 \stemUp a8 ] \stemDown a8
    -. [ r8 \stemDown e'8 -. ] \stemDown d8 -. [ r8 \stemDown fis8 -. ]
    \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown e8 r8 r8
    \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown e8 r8 r8
    \stemDown e8 r8 r8 \stemDown e8 r8 r8 \stemDown e4 r8 r4. \stemDown
    a8 -. [ r8 \stemDown a8 -. ] \stemDown a8 -. [ \stemDown a8 -.
    \stemDown a8 -. ] \stemDown e4. ( \stemDown fis8 ) r8 r8 \stemDown d8
    -. [ \stemDown d8 -. ] r8 \stemDown fis8 -. [ \stemDown fis8 -. ] r8
    \stemDown e8 -. [ \stemDown e8 -. \stemDown e8 -. ] \stemDown e8 r8
    r8 \stemDown a8 -. [ r8 \stemDown a8 -. ] \stemDown a8 -. [
    \stemDown a8 -. \stemDown a8 -. ] \stemDown e4 ( \stemDown eis8 )
    \stemDown fis4 -. r8 \stemDown d8 r8 r8 \stemUp e,8 r8 r8 \stemUp a2.
    r8 \stemDown fis'8 -. [ \stemDown fis8 -. ] r8 \stemDown e8 -. [
    \stemDown e8 -. ] \stemUp a,2. \stemDown d8 [ _\markup{ \tiny\italic
        {cresc.} } \stemDown d8 \stemDown d8 ] \stemDown fis8 [
    \stemDown fis8 \stemDown fis8 ] \stemDown e8 [ \stemDown e8
    \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemUp a,8
    _\f \stemDown a'8 [ \stemDown a8 ] \stemDown cis4 ( \stemDown a8 )
    \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown
    e8 \stemDown e8 ] \stemDown a,8 [ \stemDown a'8 \stemDown a8 ]
    \stemDown cis4 ( \stemDown a8 ) \stemDown e8 [ \stemDown e8
    \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemUp a,4
    r8 r4 \stemDown e''8 -. \stemDown a,8 -. [ \stemDown cis8 -.
    \stemDown e,8 -. ] \stemDown a8 -. [ \stemDown cis,8 -. \stemDown e8
    -. ] \stemUp a,4 r8 \stemDown a'4 r8 \stemUp a,4 r8 r4. \bar "|."
    }

PartPOneOneVoiceOne =  \relative a {
    \clef "bass" \time 4/4 \key a \major | % 1
    \stemDown a8 [ _\p \stemDown a8 \stemDown a8 \stemDown a8 ]
    \stemDown a8 [ \stemDown a8 \stemDown a8 \stemDown a8 ] | % 2
    \stemDown a8 [ \stemDown a8 \stemDown a8 \stemDown a8 ] \stemDown a8
    [ \stemDown a8 \stemDown a8 \stemDown a8 ] | % 3
    \stemDown d,4 r4 \stemDown d4 r4 | % 4
    r8 \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown e8 [
    \stemDown e'8 ( \stemDown dis8 \stemDown d8 ) ] | % 5
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown b8 [ \stemDown b8 \stemDown a8 \stemDown a8 ] | % 6
    \stemDown gis8 [ \stemDown gis8 \stemDown fis8 \stemDown fis8 ]
    \stemDown e8 [ \stemDown e8 \stemDown d8 \stemDown d8 ] | % 7
    \stemUp cis4 ( \stemUp b4 \stemUp a4 \stemDown d4 ) | % 8
    \stemDown e8 ( [ \stemDown dis8 \stemDown e8 \stemDown dis8 ) ]
    \stemDown e4 r4 | % 9
    \stemDown a8 [ _\f \stemDown a8 \stemDown a8 \stemDown a8 ]
    \stemDown a8 [ \stemDown a8 \stemDown a8 \stemDown a8 ] |
    \barNumberCheck #10
    \stemDown a8 [ \stemDown a8 \stemDown a8 \stemDown a8 ] \stemDown a8
    [ \stemDown a8 \stemDown a8 \stemDown a8 ] | % 11
    \stemDown d,4 _\p r4 \stemDown d4 r4 | % 12
    r8 \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown e8 [
    \stemDown e'8 ( _\f \stemDown dis8 \stemDown d8 ) ] | % 13
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown b8 [ \stemDown b8 \stemDown a8 \stemDown a8 ] | % 14
    \stemDown gis8 [ \stemDown gis8 \stemDown fis8 \stemDown fis8 ]
    \stemDown e8 [ \stemDown e8 \stemDown d8 \stemDown d8 ] | % 15
    \stemDown cis8 [ \stemDown cis8 \stemDown fis8 \stemDown fis8 ]
    \stemDown d8 [ \stemDown d8 \stemDown e8 \stemDown e8 ] | % 16
    \stemDown a8 [ \stemDown e8 \stemDown a8 \stemDown e8 ] \stemDown a8
    [ \stemDown e8 \stemDown a8 \stemDown e8 ] | % 17
    \stemDown gis8 [ \stemDown e8 \stemDown gis8 \stemDown e8 ]
    \stemDown b'8 [ \stemDown e,8 \stemDown d'8 \stemDown e,8 ] | % 18
    \stemDown cis'8 [ \stemDown e,8 \stemDown cis'8 \stemDown e,8 ]
    \stemDown a8 [ \stemDown e8 \stemDown a8 \stemDown e8 ] | % 19
    \stemDown gis8 [ \stemDown e8 \stemDown gis8 \stemDown e8 ]
    \stemDown b'8 [ \stemDown e,8 \stemDown d'8 \stemDown e,8 ] |
    \barNumberCheck #20
    \stemDown cis'4 r8 \stemDown cis8 ( \stemDown d4 ) r8 \stemDown cis8
    ( | % 21
    \stemDown d4 ) r8 \stemDown ais8 ( \stemDown b4 ) r8 \stemDown ais8
    ( | % 22
    \stemDown b4 ) r8 \stemDown fis8 ( \stemDown d4 ) r8 \stemDown dis8
    ( | % 23
    \stemDown e4 ) r16 \stemUp b16 [ \stemUp cis16 \stemUp dis16 ]
    \stemDown e16 [ \stemDown fis16 \stemDown gis16 \stemDown a16 ]
    \stemDown b16 [ \stemDown gis16 \stemDown b16 \stemDown gis16 ] | % 24
    \stemDown e4 -. \stemDown e'4 -. \stemDown e,4 -. r4 | % 25
    r2 \stemDown e'2 _\p | % 26
    \stemDown cis4. ( \stemDown d8 ) \stemDown fis8 ( [ \stemDown e8 )
    \stemDown d8 -. \stemDown cis8 -. ] | % 27
    \stemDown b4. ( \stemDown cis8 ) \stemDown e8 ( [ \stemDown d8 )
    \stemDown cis8 -. \stemDown b8 -. ] | % 28
    \stemDown a2 ( \stemDown b4 \stemDown a4 ) | % 29
    \stemDown gis4 -. \stemDown e4 -. r4 \stemDown d4 ( |
    \barNumberCheck #30
    \stemUp cis4 \stemDown d4 ) \stemDown e4 -. \stemDown e4 -. | % 31
    \stemDown a2 _\f \stemDown fis4.. ( \stemDown gis16 ) | % 32
    \stemDown a4 -. \stemUp a,4 -. r2 | % 33
    \stemDown a'2 \stemDown fis4.. ( \stemDown gis16 ) | % 34
    \stemDown a4 -. \stemUp a,4 -. r2 | % 35
    \stemUp a8 [ \stemUp b16 \stemUp cis16 ] \stemDown d16 [ \stemDown e16
    \stemDown fis16 \stemDown gis16 ] \stemDown a16 [ \stemDown gis16
    \stemDown a16 \stemDown b16 ] \stemDown g16 [ \stemDown fis16
    \stemDown g16 \stemDown a16 ] | % 36
    \stemDown fis4 -. \stemUp cis4 -. \stemDown d4 -. r4 | % 37
    R1 | % 38
    r4 \stemDown d4 ( _\p \stemDown e4 ) \stemDown e4 -. | % 39
    \stemDown a8 r8 \stemDown b8 r8 \stemDown a8 r8 \stemDown e8 r8 |
    \barNumberCheck #40
    \stemDown a8 r8 \stemDown b8 r8 \stemDown a8 r8 \stemDown e8 r8 | % 41
    \stemDown a8 r8 \stemDown b8 r8 \stemDown a8 r8 \stemDown e8 r8 | % 42
    \stemDown a8 r8 \stemDown e8 r8 \stemDown a8 r8 \stemDown e8 r8 | % 43
    \stemDown a8 [ _\f \stemDown e8 \stemDown gis8 \stemDown e8 ]
    \stemDown a8 [ \stemDown e8 \stemDown b'8 \stemDown e,8 ] | % 44
    \stemDown cis'8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 45
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown
    cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 46
    \stemDown d8 [ \stemDown d8 \stemDown d8 \stemDown d8 ] \stemDown
    fis8 [ \stemDown fis8 \stemDown fis8 \stemDown fis8 ] | % 47
    \stemDown e8 ( [ \stemDown dis8 \stemDown d8 \stemDown cis8 ) ]
    \stemDown b8 ( [ \stemDown d8 \stemDown cis8 \stemDown a8 ) ] | % 48
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown e8
    [ \stemDown e8 \stemDown e8 \stemDown e8 ] | % 49
    \stemUp a,4 r4 r2 | \barNumberCheck #50
    r2 \stemDown d8 -. _\p r8 \stemDown e8 -. r8 | % 51
    \stemDown fis4 r4 r2 | % 52
    r2 \stemUp b,8 -. r8 \stemDown e8 -. r8 | % 53
    \stemUp a,4 r4 \stemDown d8 -. r8 \stemDown e8 -. r8 | % 54
    \stemUp a,4 r4 \stemDown d8 -. r8 \stemDown e8 -. r8 | % 55
    \stemUp a,8 \stemDown a'8 -. [ _\f \stemDown cis8 -. \stemDown a8 -.
    ] \stemDown e8 -. [ \stemDown a8 -. \stemDown cis,8 -. \stemDown e8
    -. ] | % 56
    \stemUp a,4 -. \stemDown a'4 -. \stemUp a,4 -. r4 \bar "||"
    R1*8 | % 65
    \stemUp a8 _\p r8 \stemDown a'8 r8 \stemUp a,8 r8 \stemDown a'8 r8 | % 66
    \stemUp a,8 r8 \stemDown a'8 r8 \stemUp a,8 r8 \stemDown a'8 r8 | % 67
    \stemDown d,4 r4 \stemDown d4 r4 | % 68
    r8 \stemDown e8 -. [ \stemDown e8 -. \stemDown e8 -. ] \stemDown e8
    ( [ \stemDown gis8 \stemDown b8 \stemDown gis8 ) ] | % 69
    \stemDown e4 r4 r2 | \barNumberCheck #70
    \stemDown fis2 ( \stemDown d2 ) | % 71
    \stemUp cis4 r4 r2 | % 72
    R1 | % 73
    \stemDown a'4 r4 \stemDown d,4 r4 | % 74
    \stemUp cis4 \stemDown fis4 ( \stemDown d4 \stemDown e4 ) | % 75
    \stemUp a,8 \stemDown a'8 -. [ _\f \stemDown cis8 -. \stemDown a8 -.
    ] \stemDown e8 -. [ \stemDown a8 -. \stemDown cis,8 -. \stemDown e8
    -. ] | % 76
    \stemUp a,4 r4 \stemDown fis'4 _\p r4 | % 77
    \stemUp b,4 r4 \stemDown e4 r4 | % 78
    \stemUp a,4 r4 \stemDown f'4 r4 | % 79
    \stemDown d4 r4 \stemDown e4 r4 | \barNumberCheck #80
    \stemDown a,8 -. [ \stemDown a'8 -. \stemDown a,8 -. \stemDown a'8
    -. ] \stemUp a,4 r4 | % 81
    r4 \stemDown as'8. [ _\f \stemDown as16 ] \stemDown g8. [ \stemDown
    g16 ] \stemDown as8. [ \stemDown as16 ] | % 82
    \stemDown g4 r4 \stemDown g4 _\p r4 | % 83
    g1 ~ | % 84
    \stemDown g4 r4 r2 | % 85
    R1*7 | % 92
    r4 \stemUp ais,2 ( \stemUp b4 ) | % 93
    \stemUp c4 r4 \stemUp c4 r4 | % 94
    \stemUp b4 r4 r2 | % 95
    R1*3 | % 98
    r8 \stemUp b8 -. [ _\f \stemUp cis8 -. \stemUp dis8 -. ] \stemDown e16
    [ \stemDown dis16 \stemDown e16 \stemDown fis16 ] \stemDown g16 [
    \stemDown fis16 \stemDown g16 \stemDown a16 ] | % 99
    \stemDown b8 [ \stemDown b,8 -. \stemDown cis8 -. \stemDown dis8 -.
    ] \stemDown e16 [ \stemDown dis16 \stemDown e16 \stemDown fis16 ]
    \stemDown g16 [ \stemDown fis16 \stemDown g16 \stemDown a16 ] |
    \barNumberCheck #100
    \stemDown b4 r4 r2 | % 101
    R1 | % 102
    r2 \stemDown fis2 ( _\p | % 103
    \stemDown e2 ) r2 | % 104
    \stemDown e4 r4 \stemDown e4 r4 | % 105
    \stemDown fis4 r4 \stemUp b,4 r4 | % 106
    \stemDown e4 r4 \stemDown e4 r4 | % 107
    \stemDown fis4 r4 \stemUp b,4 r4 | % 108
    \stemDown e4 r8 \stemDown gis8 ( \stemDown a4 ) r8 \stemDown gis8 (
    | % 109
    \stemDown a4 ) r8 \stemDown eis8 ( \stemDown fis4 ) r8 \stemDown eis8
    ( | \barNumberCheck #110
    \stemDown fis4 ) r8 \stemDown gis8 ( \stemDown a4 ) r4 | % 111
    \stemUp b,2. ( \stemUp a4 | % 112
    \stemUp gis4 ) r4 r4 \stemDown gis'4 ( | % 113
    \stemDown a4 ) r4 r2 | % 114
    r4 \stemDown ais4 ( \stemDown b2 ) | % 115
    \stemDown e,4 r4 r2 | % 116
    R1*8 | % 124
    \stemDown c'2 ( \stemDown b4 ) r4 | % 125
    \stemDown c2 ( \stemDown b4 ) r4 | % 126
    r4 \stemDown b8 -. r8 \stemDown fis8 -. r8 \stemDown dis8 -. r8 | % 127
    \stemUp b4 r4 r2 ^\fermata | % 128
    r2 \stemDown b'2 _\p | % 129
    \stemDown gis4. ( \stemDown a8 ) \stemDown cis8 ( [ \stemDown b8 )
    \stemDown a8 -. \stemDown gis8 -. ] | \barNumberCheck #130
    \stemDown fis4. ( \stemDown gis8 ) \stemDown b8 ( [ \stemDown a8 )
    \stemDown gis8 -. \stemDown fis8 -. ] | % 131
    \stemDown e4 r8 \stemDown e8 ( \stemDown fis4 ) \stemDown e4 -. | % 132
    \stemDown dis4 -. \stemDown b'4 -. r4 \stemDown a4 ( _\p | % 133
    \stemDown gis4 \stemDown a4 ) \stemDown b4 \stemUp b,4 | % 134
    \stemDown e8 r8 \stemDown fis8 r8 \stemDown e8 r8 \stemUp b8 r8 | % 135
    \stemDown e8 r8 \stemDown fis8 r8 \stemDown e8 r8 \stemUp b8 r8 | % 136
    \stemDown e8 r8 \stemDown fis8 r8 \stemDown e8 r8 \stemDown b'8 r8 | % 137
    \stemDown e8 r8 \stemDown b8 r8 \stemDown e8 r8 \stemDown b8 r8 | % 138
    \stemDown e4 r4 \stemDown e,4 r4 | % 139
    \stemDown a4 r4 \stemUp a,4 r4 | \barNumberCheck #140
    \stemDown b'4 r4 \stemUp b,4 r4 | % 141
    \stemDown e4 r4 r2 | % 142
    gis1 ( | % 143
    \stemDown a8 ) r8 \stemDown e'8 r8 \stemDown a,8 r8 \stemDown e'8 r8
    | % 144
    \stemDown a,8 r8 \stemDown e8 r8 \stemDown a8 r8 \stemDown e8 r8 | % 145
    \stemDown a4 r4 r8 \stemDown a8 [ \stemDown a8 \stemDown a8 ] | % 146
    \stemDown a4 r4 r8 \stemDown a8 [ \stemDown a8 \stemDown a8 ] | % 147
    \stemDown ais4 r4 r8 \stemDown ais8 [ \stemDown ais8 \stemDown ais8
    ] | % 148
    \stemDown b4 r4 r2 | % 149
    R1*3 | % 152
    \stemUp b,4 \stemUp b4 \stemUp b4 \stemUp b4 | % 153
    \stemUp b8 [ _\markup{ \tiny\italic {cresc.} } \stemUp b8 \stemUp b8
    \stemUp b8 ] \stemUp b8 [ \stemUp b8 \stemUp b8 \stemUp b8 ] | % 154
    \stemUp e8 [ _\f \stemUp b8 \stemUp e8 \stemUp b8 ] \stemUp e8 [
    \stemUp b8 \stemUp e8 \stemUp b8 ] | % 155
    \stemUp dis8 [ \stemUp b8 \stemUp dis8 \stemUp b8 ] \stemDown fis'8
    [ \stemDown b,8 \stemDown a'8 \stemDown b,8 ] | % 156
    \stemDown gis'8 [ \stemDown b,8 \stemDown gis'8 \stemDown b,8 ]
    \stemUp e8 [ \stemUp b8 \stemUp e8 \stemUp b8 ] | % 157
    \stemUp dis8 [ \stemUp b8 \stemUp dis8 \stemUp b8 ] \stemDown fis'8
    [ \stemDown b,8 \stemDown a'8 \stemDown b,8 ] | % 158
    \stemDown gis'4 r8 \stemDown gis8 ( \stemDown a4 ) r8 \stemDown gis8
    ( | % 159
    \stemDown a4 ) r8 \stemDown eis8 ( \stemDown fis4 ) r8 \stemDown eis8
    ( | \barNumberCheck #160
    \stemDown fis4 ) r8 \stemUp cis8 ( \stemUp a4 ) r8 \stemUp ais8 | % 161
    \stemUp b8 [ \stemUp b8 \stemUp b8 \stemUp b8 ] \stemUp a8 [ \stemUp
    a8 \stemUp a8 \stemUp a8 ] | % 162
    \stemUp gis8 [ \stemUp gis8 \stemUp gis'8 \stemUp gis8 ] \stemDown a8
    [ \stemDown a8 \stemDown ais8 \stemDown ais8 ] | % 163
    \stemDown b8 [ \stemDown b8 \stemDown gis8 \stemDown e8 ] \stemUp b8
    [ \stemUp b8 \stemUp b8 \stemUp b8 ] | % 164
    \stemDown e4 r4 r2 | % 165
    r2 \stemDown a8 -. _\p r8 \stemDown b8 -. r8 | % 166
    \stemDown cis4 r4 r2 | % 167
    r2 \stemDown fis,8 -. r8 \stemDown b8 -. r8 | % 168
    \stemDown e,4 r4 \stemDown a8 -. r8 \stemDown b8 -. r8 | % 169
    \stemDown e,4 r4 \stemDown a8 -. r8 \stemDown b8 -. r8 |
    \barNumberCheck #170
    \stemDown e,8 [ _\f \stemDown e'8 \stemDown e8 \stemDown e8 ]
    \stemDown b8 [ \stemDown e8 \stemDown gis,8 \stemDown b8 ] | % 171
    \stemDown e,4 -. \stemDown e4 -. \stemDown e4 -. r4 \bar "||"
    R1*2 | % 174
    b'1 _\p | % 175
    \stemUp b,4 r4 \stemUp b4 r4 | % 176
    \stemDown e4 r4 r2 | % 177
    R1 | % 178
    b'1 | % 179
    \stemUp b,4 r4 \stemUp b4 r4 | \barNumberCheck #180
    \stemDown e8 [ \stemDown e8 ] \stemDown e4 r2 | % 181
    \stemUp b4 r4 \stemUp b4 r4 | % 182
    \stemDown e8 [ \stemDown e8 ] \stemDown e4 r2 | % 183
    \stemUp b4 r4 \stemUp b4 r4 | % 184
    \stemDown e8 [ \stemDown e8 ] \stemDown e4 r2 | % 185
    \stemDown e8 [ \stemDown e8 ] \stemDown e4 r2 | % 186
    \stemDown e8 [ \stemDown e8 ] \stemDown e4 r2 | % 187
    r4 \stemDown d4 ( \stemUp cis4 \stemDown d4 ) | % 188
    \stemUp cis8 r8 \stemUp cis8 r8 \stemUp cis8 r8 \stemUp cis8 r8 | % 189
    \stemUp cis8 r8 \stemUp cis8 r8 \stemUp cis8 r8 \stemUp cis8 r8 |
    \barNumberCheck #190
    \stemDown fis4 r4 r2 | % 191
    R1 | % 192
    \stemDown cis'8 [ _\f \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 193
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 194
    \stemDown cis4 r4 r2 | % 195
    r4 \stemDown cis4 ( -. _\p \stemDown cis4 -. \stemDown cis4 ) -. | % 196
    \stemDown b4 r4 r2 | % 197
    r4 \stemDown b4 ( -. \stemDown b4 -. \stemDown b4 ) -. | % 198
    \stemDown a4 r4 r2 | % 199
    \stemUp a,4 r4 r2 | \barNumberCheck #200
    \stemDown d4 r4 r2 | % 201
    R1*6 | % 207
    r4 \stemDown bis'2 ~ \stemDown bis4 | % 208
    \stemDown cis4 r4 r2 | % 209
    r4 \stemDown ais2 ( \stemDown ais4 ) | \barNumberCheck #210
    \stemDown b8 -. [ \stemDown b8 -. ] \stemDown b4 -. r2 | % 211
    \stemDown b8 -. [ \stemDown b8 -. ] \stemDown b4 -. r2 | % 212
    \stemDown a8 r8 r4 \stemDown eis8 r8 r4 | % 213
    \stemDown fis8 r8 \stemDown a8 r8 \stemDown b8 r8 \stemDown d8 r8 | % 214
    \stemDown cis4 r4 \stemUp cis,4 r4 | % 215
    \stemDown fis8 [ _\f \stemDown gis8 \stemDown a8 \stemDown ais8 ]
    \stemDown b8 [ \stemDown cis8 \stemDown d8 \stemDown ais8 ] | % 216
    \stemDown b4 r4 r2 | % 217
    \stemUp cis,4 _\p r4 r2 | % 218
    \stemDown d4 r4 r2 | % 219
    \stemDown dis4 r4 r2 | \barNumberCheck #220
    \stemUp cis8 [ \stemUp cis8 ] \stemUp cis4 r2 | % 221
    \stemUp cis8 [ \stemUp cis8 ] \stemUp cis4 r2 | % 222
    \stemDown cis'8 [ \stemDown cis8 ] \stemDown cis4 r2 | % 223
    R1 | % 224
    r4 \stemUp cis,4 r2 | % 225
    R1 | % 226
    \stemUp cis8 [ _\markup{ \tiny\italic {cresc.} } \stemUp cis8
    \stemUp cis8 \stemUp cis8 ] \stemUp cis8 [ \stemUp cis8 \stemUp cis8
    \stemUp cis8 ] | % 227
    \stemDown fis8 -. [ _\f \stemDown eis8 -. \stemDown fis8 -.
    \stemDown gis8 -. ] \stemDown a8 -. [ \stemDown gis8 -. \stemDown a8
    -. \stemDown b8 -. ] | % 228
    \stemDown cis8 -. [ \stemDown bis8 -. \stemDown cis8 -. \stemDown d8
    -. ] \stemDown cis8 -. [ \stemDown b8 -. \stemDown a8 -. \stemDown
    gis8 -. ] | % 229
    \stemDown fis4 r4 \stemDown fis'2 ~ _\p | \barNumberCheck #230
    \stemDown fis2 ( \stemDown eis2 ) | % 231
    \stemDown fis4 r4 \stemDown e2 ~ | % 232
    \stemDown e2 ( \stemDown dis2 ) | % 233
    \stemDown e8 -. [ _\f \stemDown dis,8 -. \stemDown e8 -. \stemDown
    fis8 -. ] \stemDown g8 -. [ \stemDown fis8 -. \stemDown g8 -.
    \stemDown a8 -. ] | % 234
    \stemDown b8 -. [ \stemDown ais8 -. \stemDown b8 -. \stemDown c8 -.
    ] \stemDown b8 -. [ \stemDown a8 -. \stemDown g8 -. \stemDown fis8
    -. ] | % 235
    \stemDown e4 r4 \stemDown e'2 ~ _\p | % 236
    \stemDown e2 ( \stemDown dis2 ) | % 237
    \stemDown e4 r4 \stemDown d2 ~ | % 238
    \stemDown d2 ( \stemDown cis2 ) | % 239
    \stemDown d8 [ _\f \stemDown a,8 \stemDown d8 \stemDown a8 ] \stemUp
    d8 [ \stemUp a8 \stemUp d8 \stemUp a8 ] | \barNumberCheck #240
    \stemUp cis8 [ \stemUp a8 \stemUp cis8 \stemUp a8 ] \stemUp e'8 [
    \stemUp a,8 \stemUp e'8 \stemUp a,8 ] | % 241
    \stemUp d8 [ \stemUp a8 \stemUp d8 \stemUp a8 ] \stemUp d8 [ \stemUp
    a8 \stemUp d8 \stemUp a8 ] | % 242
    \stemUp e'8 [ \stemUp a,8 \stemUp e'8 \stemUp a,8 ] \stemUp cis8 [
    \stemUp a8 \stemUp cis8 \stemUp a8 ] | % 243
    \stemDown d4 r8 \stemDown g8 ( \stemDown fis4 ) r8 \stemDown ais8 (
    | % 244
    \stemDown b4 ) r8 \stemDown e,8 ( \stemDown d4 ) r8 \stemDown fis8 (
    | % 245
    \stemDown gis4 ) r8 \stemDown dis'8 ( \stemDown e4 ) r8 \stemDown a,8
    ( | % 246
    \stemDown gis4 ) r16 \stemDown e16 [ \stemDown fis16 \stemDown gis16
    ] \stemDown a16 [ \stemDown gis16 \stemDown a16 \stemDown b16 ]
    \stemDown cis16 [ \stemDown b16 \stemDown cis16 \stemDown dis16 ] | % 247
    \stemDown e4 r16 \stemUp b,16 [ \stemUp cis16 \stemUp dis16 ]
    \stemDown e16 [ \stemDown fis16 \stemDown gis16 \stemDown a16 ]
    \stemDown b16 [ \stemDown gis16 \stemDown b16 \stemDown gis16 ] | % 248
    \stemDown e4 r4 r2 | % 249
    R1*10 | % 259
    \stemUp a,8 _\p r8 \stemDown a'8 r8 \stemUp a,8 r8 \stemDown a'8 r8
    | \barNumberCheck #260
    \stemUp a,8 r8 \stemDown a'8 r8 \stemUp a,8 r8 \stemDown a'8 r8 | % 261
    \stemDown d,4 r4 \stemDown d4 r4 | % 262
    r8 \stemDown e8 -. [ \stemDown e8 -. \stemDown e8 -. ] \stemDown e8
    ( [ \stemDown gis8 \stemDown b8 \stemDown gis8 ) ] | % 263
    \stemDown e4 r4 r2 | % 264
    \stemDown fis2 ( \stemDown d2 ) | % 265
    \stemUp cis4 r4 r2 | % 266
    R1 | % 267
    \stemDown a'4 r4 \stemDown d,4 r4 | % 268
    \stemUp cis4 \stemDown fis4 ( \stemDown d4 \stemDown e4 ) | % 269
    \stemUp a,8 \stemDown a'8 -. [ _\f \stemDown cis8 -. \stemDown a8 -.
    ] \stemDown e8 -. [ \stemDown a8 -. \stemDown cis,8 -. \stemDown e8
    -. ] | \barNumberCheck #270
    \stemUp a,4 r4 \stemDown fis'4 _\p r4 | % 271
    \stemUp b,4 r4 \stemDown e4 r4 | % 272
    \stemUp a,4 r4 r2 | % 273
    R1*3 | % 276
    r2 \stemDown g'4 r4 | % 277
    \stemDown a4 r4 \stemDown b4 r4 | % 278
    e,1 | % 279
    a1 | \barNumberCheck #280
    \stemDown d,8 r8 \stemDown e8 r8 \stemDown f8 r8 \stemDown e8 r8 | % 281
    \stemDown d2 ( \stemDown dis2 ) | % 282
    \stemDown e4 r4 r2 | % 283
    R1*3 | % 286
    r8 \stemDown e8 -. [ _\f \stemDown fis8 -. \stemDown gis8 -. ]
    \stemDown a16 [ \stemDown gis16 \stemDown a16 \stemDown b16 ]
    \stemDown c16 [ \stemDown b16 \stemDown c16 \stemDown d16 ] | % 287
    \stemDown e8 [ \stemDown e,8 -. \stemDown fis8 -. \stemDown gis8 -.
    ] \stemDown a16 [ \stemDown gis16 \stemDown a16 \stemDown b16 ]
    \stemDown c16 [ \stemDown b16 \stemDown c16 \stemDown d16 ] | % 288
    \stemDown e4 r4 r2 | % 289
    R1 | \barNumberCheck #290
    r2 \stemDown b2 ( _\p | % 291
    \stemDown a2 ) r2 | % 292
    \stemDown a4 r4 \stemDown a4 r4 | % 293
    \stemDown b4 r4 \stemDown e,4 r4 | % 294
    \stemDown a4 r4 r2 | % 295
    R1 | % 296
    r4 r8 \stemDown cis,8 ( \stemDown d4 ) r8 \stemDown cis8 ( | % 297
    \stemDown d4 ) r8 \stemUp ais8 ( \stemUp b4 ) r8 \stemUp ais8 ( | % 298
    \stemUp b4 ) r4 r2 | % 299
    R1 | \barNumberCheck #300
    r2 r4 \stemDown cis4 ( | % 301
    \stemDown d4 ) r4 r2 | % 302
    r4 \stemDown dis4 ( \stemDown e2 ) | % 303
    \stemUp a,4 r4 r2 | % 304
    R1 | % 305
    r2 \stemDown fis'2 ( | % 306
    \stemDown eis2 \stemUp cis2 ) | % 307
    \stemDown fis4 r4 r2 | % 308
    R1 | % 309
    r2 \stemUp a,4 r4 | \barNumberCheck #310
    \stemUp b4 r4 \stemUp cis4 r4 | % 311
    \stemUp fis,4 \stemDown fis'4 \stemUp fis,4 r4 | % 312
    \stemDown f'2 ( \stemDown e4 ) r4 | % 313
    \stemDown f2 ( \stemDown e4 ) r4 | % 314
    r4 \stemDown e'8 -. r8 \stemDown b8 -. r8 \stemDown gis8 -. r8 | % 315
    \stemDown e4 r4 r2 ^\fermata | % 316
    R1*5 | % 321
    r4 \stemDown b'4 -. _\p \stemDown e4 -. \stemDown e,4 -. | % 322
    \stemDown a8 r8 \stemDown b8 r8 \stemDown a8 r8 \stemDown e8 r8 | % 323
    \stemDown a8 r8 \stemDown b8 r8 \stemDown a8 r8 \stemDown e8 r8 | % 324
    R1*2 | % 326
    \stemDown a4 r4 r2 | % 327
    \stemDown d,4 r4 r2 | % 328
    \stemDown e4 r4 \stemDown e4 r4 | % 329
    \stemUp a,4 r4 r2 | \barNumberCheck #330
    cis1 | % 331
    \stemDown d8 r8 \stemDown a'8 r8 \stemDown d8 r8 \stemDown a8 r8 | % 332
    \stemDown d8 r8 \stemDown a8 r8 \stemDown d,8 r8 \stemDown a'8 r8 | % 333
    \stemDown d,8 r8 \stemUp a8 r8 \stemDown d8 r8 \stemUp a8 r8 | % 334
    \stemDown d4 r4 r8 \stemDown d8 [ \stemDown d8 \stemDown d8 ] | % 335
    \stemDown d4 r4 r8 \stemDown d8 [ \stemDown d8 \stemDown d8 ] | % 336
    \stemDown dis4 r4 r8 \stemDown dis8 [ \stemDown dis8 \stemDown dis8
    ] | % 337
    \stemDown e4 r4 \stemDown e'4 r4 | % 338
    \stemDown cis4 r4 \stemDown a4 r4 | % 339
    \stemDown e4 r4 r2 | \barNumberCheck #340
    r4 \stemDown e'8 -. [ \stemDown e8 -. ] \stemDown e8 -. r8 \stemDown
    e8 -. [ \stemDown e8 -. ] | % 341
    \stemDown e4 r4 r2 | % 342
    \stemDown e,8 [ _\markup{ \tiny\italic {cresc.} } \stemDown e8
    \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8
    \stemDown e8 ] | % 343
    \stemDown a8 [ _\f \stemDown e8 \stemDown a8 \stemDown e8 ]
    \stemDown a8 [ \stemDown e8 \stemDown a8 \stemDown e8 ] | % 344
    \stemDown gis8 [ \stemDown e8 \stemDown gis8 \stemDown e8 ]
    \stemDown b'8 [ \stemDown e,8 \stemDown d'8 \stemDown e,8 ] | % 345
    \stemDown cis'8 [ \stemDown e,8 \stemDown cis'8 \stemDown e,8 ]
    \stemDown a8 [ \stemDown e8 \stemDown a8 \stemDown e8 ] | % 346
    \stemDown gis8 [ \stemDown e8 \stemDown gis8 \stemDown e8 ]
    \stemDown b'8 [ \stemDown e,8 \stemDown d'8 \stemDown e,8 ] | % 347
    \stemDown cis'8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 348
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown
    cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 349
    \stemDown d8 [ \stemDown d8 \stemDown d8 \stemDown d8 ] \stemDown
    fis8 [ \stemDown fis8 \stemDown fis8 \stemDown fis8 ] |
    \barNumberCheck #350
    \stemDown e8 ( [ \stemDown dis8 \stemDown d8 \stemDown cis8 ) ]
    \stemDown b8 ( [ \stemDown d8 \stemDown cis8 \stemDown a8 ) ] | % 351
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown e8
    [ \stemDown e8 \stemDown e8 \stemDown e8 ] | % 352
    \stemUp a,4 r4 r2 | % 353
    r2 \stemDown d8 -. _\p r8 \stemDown e8 -. r8 | % 354
    \stemDown fis4 r4 r2 | % 355
    r2 \stemUp b,8 -. r8 \stemDown e8 -. r8 | % 356
    \stemUp a,4 r4 \stemDown d8 -. r8 \stemDown e8 -. r8 | % 357
    \stemUp a,4 r4 \stemDown d8 -. r8 \stemDown e8 -. r8 | % 358
    \stemUp a,8 \stemDown a'8 -. [ _\f \stemDown cis8 -. \stemDown a8 -.
    ] \stemDown e8 -. [ \stemDown a8 -. \stemDown cis,8 -. \stemDown e8
    -. ] | % 359
    \stemUp a,4 -. \stemDown a'4 -. \stemUp a,4 -. r4 \bar "|."
    \time 3/4  \key d \major \stemDown d2. _\p \stemUp a4 \stemDown d4 r4
    \stemDown d2. \stemUp a4 \stemDown d4 r4 \stemUp a2. ~ \stemUp a2
    \stemDown d4 \stemDown e4 \stemDown e4 \stemDown e4 \stemUp a,4 r4 r4
    \stemDown d4 _\f r4 \stemDown d4 \stemUp a4 \stemDown d4 r4
    \stemDown d4 r4 \stemDown d4 \stemUp a4 \stemDown d4 r4 \stemDown a'4
    r4 r4 \stemDown a4 r4 \stemDown d,4 \stemDown e4 \stemDown e4
    \stemDown e4 \stemUp a,4 r4 r4 \stemDown d2. _\p \stemDown g4 (
    \stemDown a4 \stemDown b4 ) \stemDown e,2. \stemDown a4 ( \stemDown
    b4 \stemDown cis4 ) \stemDown fis,4 ( \stemDown g4 \stemDown a4 )
    \stemDown b4 ( \stemDown cis4 \stemDown d4 ) \stemDown g,4 \stemDown
    a4 \stemUp a,4 \stemDown d4 r4 r4 \stemDown d4. ( _\f \stemDown e8
    \stemDown fis4 ) \stemDown g4 ( \stemDown a4 \stemDown b4 )
    \stemDown e,4 \stemUp e,8 ( [ \stemUp fis8 \stemUp g8 \stemUp gis8 )
    ] \stemUp a4 ( \stemUp b4 \stemUp cis4 ) \stemUp fis,4. ( \stemUp g8
    [ \stemUp a8 \stemUp ais8 ) ] \stemUp b4 ( \stemUp cis4 \stemDown d4
    ) \stemUp g,4 \stemUp a4 \stemUp a4 \stemDown d4 r4 r4 \stemDown d4
    _\p r4 r4 \stemUp a4 r4 r4 \stemDown e'2. ~ \stemDown e4 \stemDown
    a,8 [ \stemDown a'8 ( \stemDown e8 \stemDown d8 ) ] \stemUp cis4 r4
    r4 \stemDown d4 r4 r4 \stemDown e4 r4 r4 \stemDown fis4 r4 r4
    \stemUp gis,2. \stemUp a8 r8 \stemUp cis8 r8 \stemDown d8 r8
    \stemDown e2. \stemDown eis4 ( \stemDown fis8 ) \stemUp fis,8 ( [
    \stemUp e8 \stemUp d8 ) ] \stemUp cis4 r4 r4 \stemUp d4 r4 r4
    \stemUp e4 r4 r4 \stemUp fis4 r4 r4 \stemUp gis2. \stemUp a4 r4 r4
    \stemDown d4 r4 r4 \stemDown e4 r4 r4 \stemDown e4 _\markup{
        \tiny\italic {cresc.} } \stemDown e4 \stemDown e4 \stemDown a4
    _\f \stemDown e4 \stemUp cis4 \stemUp a4 r4 r4 \stemDown a'4 \stemUp
    a,4 \stemDown a'4 \stemUp a,4 r4 r4 \stemDown a'4 \stemDown e4
    \stemUp cis4 \stemUp a4 r4 r4 ^\fermata \stemDown d2. _\p \stemUp a4
    \stemDown d4 r4 \stemDown d2. \stemUp a4 \stemDown d4 r4 \stemUp a2.
    ~ \stemUp a2 \stemDown d4 \stemDown e4 \stemDown e4 \stemDown e4
    \stemUp a,4 r4 r4 \stemDown d2. \stemDown g4 ( \stemDown a4
    \stemDown b4 ) \stemDown e,2. \stemDown a4 ( \stemDown b4 \stemDown
    cis4 ) \stemDown fis,4 ( \stemDown g4 \stemDown a4 ) \stemDown b4 (
    \stemDown cis4 \stemDown d4 ) \stemDown g,4 \stemDown a4 \stemUp a,4
    \stemDown d4 r4 r4 \stemDown d4. ( _\f \stemUp cis8 [ \stemUp b8
    \stemUp a8 ) ] \stemUp g4 ( \stemUp a4 \stemUp b4 ) \stemDown e4. (
    \stemDown d8 [ \stemDown cis8 \stemDown b8 ) ] \stemUp a4 ( \stemUp
    b4 \stemUp cis4 ) \stemDown fis4. ( \stemDown e8 [ \stemDown d8
    \stemDown cis8 ) ] \stemUp b4 ( \stemUp bes4 \stemUp a4 ) \stemUp g4
    \stemUp a4 \stemUp a4 \stemDown d4 r4 r4 \stemDown cis'2 ( _\p
    \stemDown d4 ) \stemDown cis2 ( \stemDown d4 ) \stemDown g,4
    \stemDown a4 \stemUp a,4 \stemDown d4 r4 r4 \stemUp cis2 ( \stemDown
    d4 ) \stemUp cis2 ( \stemDown d4 ) \stemUp g,4 r4 r4 \stemUp a4 r4 r4
    \stemUp a4 \stemUp a4 \stemUp a4 \stemUp b4 r4 r4 R2. r2 \stemUp g4
    ( \stemUp a2. ) \stemDown d8 -. r8 \stemUp a8 -. r8 \stemUp fis8 -.
    r8 \stemUp d4 r4 r4 \bar "|."
    \time 6/8  \key a \major r8 R2.*8 r8 -. [ \stemDown a''8 -. ] _\p
    _\markup{ \tiny\italic {cresc.} } \stemDown a8 -. [ \stemDown a8 -.
    \stemDown a8 -. ] \stemDown e4. ( _\f \stemDown fis8 ) r8 r8 r8
    \stemDown d8 -. _\p r8 r8 \stemDown d8 -. r8 \stemDown e8 -. [
    \stemDown e8 -. \stemDown e8 -. ] \stemDown e8 r8 r8 r8 \stemDown a8
    -. [ _\markup{ \tiny\italic {cresc.} } \stemDown a8 -. ] \stemDown a8
    -. [ \stemDown a8 -. \stemDown a8 -. ] \stemDown e4 ( _\f \stemDown
    eis8 ) \stemDown fis4 -. r8 r8 \stemDown d8 -. _\p r8 r8 \stemDown e8
    -. r8 \stemUp a,8 -. [ \stemUp a8 -. \stemUp a8 -. ] \stemUp a8 r8 r8
    \stemDown e'2. ( _\p \stemDown a4 ) r8 r4. \stemDown b2. ( \stemDown
    e,4 ) r8 r4 \stemUp b8 -. \stemDown e4 r8 r4 \stemUp b8 -. \stemDown
    e4 r8 r4. r8 \stemDown d'8 ( [ \stemDown cis8 ] \stemDown b8 [
    \stemDown a8 \stemDown gis8 ) ] \stemDown a4 r8 r4. R2.*6 \stemDown
    a4 _\p r8 r4. \stemDown e4 r8 r4. \stemUp a,4 _\markup{ \tiny\italic
        {cresc.} } r8 r4. \stemUp a4 r8 r4. \stemUp a4 r8 r4. R2.*4
    \stemUp cis8 [ _\f \stemUp cis8 \stemUp cis8 ] \stemUp cis8 [
    \stemUp cis8 \stemUp cis8 ] \stemDown d8 [ \stemDown d8 \stemDown d8
    ] \stemDown d8 [ \stemDown d8 \stemDown d8 ] \stemDown e8 [
    \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8
    ] \stemUp a,4 r8 r4. R2.*2 \stemDown e'2. ( _\p \stemDown a4 ) r8 r4.
    R2.*3 \stemDown a,8 [ _\f \stemDown a'8 \stemDown a8 ] \stemDown cis4
    ( \stemDown a8 ) \stemDown e8 [ \stemDown e8 \stemDown e8 ]
    \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown a,8 [ \stemDown
    a'8 \stemDown a8 ] \stemDown cis4 ( \stemDown a8 ) \stemDown e8 [
    \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8
    ] \stemUp a,4 r8 \stemDown a'4 r8 \stemUp a,4 r8 r4. R2.*4 \stemDown
    e'4 _\p r8 r8 \stemDown e8 -. [ \stemDown d8 -. ] \stemUp cis4 r8 r4.
    R2.*2 \stemUp a2. ~ \stemUp a2. \stemUp a8 r8 r8 \stemUp a8 r8 r8
    \stemUp a4 r8 r4. r4 r8 \stemDown a'4. ( \stemDown gis4 ) r8 r4.
    R2.*6 \stemDown e2. ( \stemDown dis4. \stemDown d4. \stemUp cis4.
    \stemUp c4. ) \stemUp b2. \stemUp a2. \stemUp a4. ( \stemUp gis8 ) r8
    r8 r8 \stemUp a8 [ \stemUp a8 ] r8 \stemUp b8 [ \stemUp b8 ]
    \stemDown e8 r8 r8 \stemDown gis8 r8 r8 \stemDown fis8 r8 r8 \stemUp
    b,8 r8 r8 \stemDown e8 r8 r8 \stemDown gis8 r8 r8 \stemDown fis8 r8
    r8 \stemUp b,8 r8 r8 \stemDown e4 r8 r8 \stemDown gis8 [ \stemDown
    gis8 ] \stemDown a4 r8 r8 \stemDown a8 [ \stemDown a8 ] \stemDown b4.
    ( \stemDown a4. ) \stemDown gis4 r8 r8 \stemDown e8 -. [ \stemDown
    gis8 -. ] \stemDown a4 r8 r8 \stemUp a,8 -. [ \stemUp cis8 -. ]
    \stemUp ais2. ~ \stemUp ais4. \stemUp c4. \stemUp b4 r8 r4. \stemUp
    b4 r8 \stemUp b4 r8 \stemDown e4 r8 r4. \stemDown e8 [ _\sfp
    \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8
    ] \stemDown e4 r8 r4. R2.*2 \stemDown e8 [ _\sfp \stemDown e8
    \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown
    e4 r8 r4. \stemDown f2. ( \stemDown e4 ) r8 r4. R2.*4 \stemDown f2.
    ~ \stemDown f2. \stemDown e4 r8 r4. r8 \stemDown dis8 ( [ \stemDown
    e8 ] \stemDown eis8 [ \stemDown fis8 \stemDown gis8 ) ] \stemDown a4
    r8 r4. R2.*6 \stemDown a,8 [ _\f \stemDown a'8 \stemDown a8 ]
    \stemDown cis4 ( \stemDown a8 ) \stemDown e8 [ \stemDown e8
    \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown
    a,8 [ \stemDown a'8 \stemDown a8 ] \stemDown cis4 ( \stemDown a8 )
    \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown
    e8 \stemDown e8 ] \stemUp a,4 r8 r4. R2.*3 \stemDown d'16 [
    \stemDown d16 \stemDown a16 \stemDown a16 \stemDown fis'16 \stemDown
    fis16 ] \stemDown g16 [ \stemDown g16 \stemDown e16 \stemDown e16
    \stemDown cis16 \stemDown cis16 ] \stemDown d16 [ \stemDown d16
    \stemDown a16 \stemDown a16 \stemDown fis'16 \stemDown fis16 ]
    \stemDown g16 [ \stemDown g16 \stemDown e16 \stemDown e16 \stemDown
    cis16 \stemDown cis16 ] \stemDown d16 [ \stemDown d16 \stemDown b16
    \stemDown b16 \stemDown cis16 \stemDown cis16 ] \stemDown ais16 [
    \stemDown ais16 \stemDown b16 \stemDown b16 \stemDown gis16
    \stemDown gis16 ] \stemDown a16 [ \stemDown a16 \stemDown fis16
    \stemDown fis16 \stemDown gis16 \stemDown gis16 ] \stemDown eis16 [
    \stemDown eis16 \stemDown fis16 \stemDown fis16 \stemDown a16
    \stemDown a16 ] \stemDown dis4. :64 \stemDown d4. :64 \stemDown cis2.
    :64 \stemDown cis2. :64 \stemDown cis8 [ \stemDown cis,8 \stemDown
    cis8 ] \stemUp cis8 [ \stemUp cis8 \stemUp cis8 ] \stemUp cis4 r8 r4.
    \stemDown fis4 _\p r8 r4. \stemDown fis4 r8 r4. \stemDown eis4 r8 r4.
    \stemDown fis4 r8 r4. R2.*3 r4 \stemDown b8 ( \stemDown a4 \stemDown
    gis8 ) \stemDown fis4 r8 r4. \stemDown fis4 r8 r4. \stemDown eis4 r8
    r4. \stemDown fis4 r8 r4. r8 \stemUp b,8 ( [ \stemUp a8 ] \stemUp
    gis8 [ \stemUp cis8 \stemUp b8 ) ] \stemUp a4. ( \stemUp e4. \stemUp
    dis4. \stemUp d4. ) \stemUp cis4 ( _\p \stemDown eis'8 \stemDown gis4
    \stemUp cis,8 ) \stemUp bis4 r8 r4 \stemUp bis8 \stemUp cis4 (
    \stemDown eis8 \stemDown gis4 \stemUp cis,8 ) \stemDown d4 r8 r4
    \stemDown d8 \stemUp cis8 r8 \stemUp cis8 \stemUp cis8 [ \stemUp cis8
    \stemUp cis8 ] \stemUp cis8 r8 \stemDown cis'8 _\f \stemDown cis8 [
    \stemDown cis8 \stemDown cis8 ] \stemDown cis4 r8 r4. \stemUp a,2.
    _\markup{ \tiny\italic {(} } _\p _\markup{ \tiny\italic {)} }
    \stemDown d4 r8 r4. \stemDown d4 r8 r4. \stemDown d4 r8 r4. \stemUp
    a4 r8 r4. \stemUp a4 r8 r4. \stemUp a4 r8 r4. \stemUp a4 r8 r4.
    \stemDown d4 r8 r4. \stemDown g4 r8 r4. \stemDown cis4 r8 r4.
    \stemDown fis,4 r8 r4. \stemDown b4 r8 r4. \stemDown e,4 r8 r4.
    \stemDown a4 r8 r4. \stemDown d,8 r8 r8 \stemDown d8 r8 r8 \stemDown
    d8 r8 r8 \stemDown g8 r8 r8 \stemDown a8 r8 r8 \stemUp a,8 r8 r8
    \stemDown d4 r8 r4. R2.*7 r4 r8 \stemDown e8 -. [ _\f \stemDown gis8
    -. \stemDown b8 -. ] \stemDown e,4 r8 r4. R2.*4 \stemDown e4 _\p r8
    r8 \stemDown e8 -. [ \stemDown d8 -. ] \stemUp cis4 r8 r4. R2.*9 r4
    \stemDown g''8 ( \stemDown f4 \stemDown e8 ) \stemDown d4 r8 r4.
    \stemDown d,4. \grace { \stemUp f16 ( } \stemDown e8 ) [ \stemDown d8
    \stemDown e8 ] \stemDown f4. ( \stemDown g4 \stemDown gis8 )
    \stemDown a4 r8 r4. \stemDown d,8 r8 r8 \stemDown f8 r8 r8 \stemDown
    g8 r8 r8 r4. \stemUp c,8 r8 r8 \stemDown e8 r8 r8 \stemDown f8 r8 r8
    r4. \stemUp b,8 r8 r8 \stemDown d8 r8 r8 \stemDown e8 r8 r8 r4.
    \stemDown a4 ( \stemDown c8 \stemDown f4 \stemDown a,8 ) \stemDown
    gis4 ( \stemDown b8 \stemDown e4 \stemDown g,8 ) \stemDown fis4 (
    \stemDown a8 \stemDown d4 \stemDown f,8 ) \stemDown e4 r8 r4. R2.*2
    \stemDown f4 ( \stemDown a8 \stemDown d4 \stemDown f,8 ) \stemDown e8
    r8 r8 \stemDown e'8 r8 r8 ^\fermata \stemDown d,2. ( \stemUp cis4.
    \stemUp c4. ) \stemUp b4 ( \stemDown dis8 \stemDown fis4 \stemDown
    dis8 ) \stemUp b8 r8 r8 \stemUp b8 r8 r8 \stemDown e8 r8 r8
    \stemDown gis8 r8 r8 \stemDown fis8 r8 r8 \stemUp b,8 r8 r8
    \stemDown e8 r8 r8 \stemDown gis8 r8 r8 \stemDown fis8 r8 r8 \stemUp
    b,8 r8 r8 \stemDown e4 r8 r4. \stemDown e8 [ _\sfp \stemDown e8
    \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown
    e4 r8 r4. R2.*2 \stemDown e8 [ _\sfp \stemDown e8 \stemDown e8 ]
    \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown e4 r8 r4.
    \stemDown f2. ( \stemDown e4 ) r8 r4. R2.*4 \stemDown f2. ~
    \stemDown f2. \stemDown e4 r8 r4. r8 \stemDown dis8 ( [ \stemDown e8
    ] \stemDown eis8 [ \stemDown fis8 \stemDown gis8 ) ] \stemDown a4 r8
    r4. R2.*7 r8 \stemDown a8 -. [ _\p \stemDown a8 -. ] _\markup{
        \tiny\italic {cresc.} } \stemDown a8 -. [ \stemDown a8 -.
    \stemDown a8 -. ] \stemDown e4. ( _\f \stemDown fis8 ) r8 r8 r8
    \stemDown d8 -. _\p r8 r8 \stemDown d8 -. r8 \stemDown e8 -. [
    \stemDown e8 -. \stemDown e8 -. ] \stemDown e8 r8 r8 r8 \stemDown a8
    -. [ _\markup{ \tiny\italic {cresc.} } \stemDown a8 -. ] \stemDown a8
    -. [ \stemDown a8 -. \stemDown a8 -. ] \stemDown e4 ( _\f \stemDown
    eis8 ) \stemDown fis4 -. r8 r8 \stemDown d8 -. _\p r8 r8 \stemDown e8
    -. r8 \stemUp a,8 -. [ \stemUp a8 -. \stemUp a8 -. ] \stemUp a8 r8 r8
    \stemDown e'2. ( _\p \stemDown a4 ) r8 r4. \stemDown b2. ( \stemDown
    e,4 ) r8 r4 \stemUp b8 -. \stemDown e4 r8 r4 \stemUp b8 -. \stemDown
    e4 r8 r4. r8 \stemDown d'8 ( [ \stemDown cis8 ] \stemDown b8 [
    \stemDown a8 \stemDown gis8 ) ] \stemDown a4 r8 r4. R2.*6 \stemDown
    a4 _\p r8 r4. \stemDown e4 r8 r4. \stemUp a,4 _\markup{ \tiny\italic
        {cresc.} } r8 r4. \stemUp a4 r8 r4. \stemUp a4 r8 r4. R2.*4
    \stemUp cis8 [ _\f \stemUp cis8 \stemUp cis8 ] \stemUp cis8 [
    \stemUp cis8 \stemUp cis8 ] \stemDown d8 [ \stemDown d8 \stemDown d8
    ] \stemDown d8 [ \stemDown d8 \stemDown d8 ] \stemDown e8 [
    \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8
    ] \stemUp a,4 r8 r4. R2.*2 \stemDown e'2. ( _\p \stemDown a4 ) r8 r4.
    R2.*3 \stemDown a,8 [ _\f \stemDown a'8 \stemDown a8 ] \stemDown cis4
    ( \stemDown a8 ) \stemDown e8 [ \stemDown e8 \stemDown e8 ]
    \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown a,8 [ \stemDown
    a'8 \stemDown a8 ] \stemDown cis4 ( \stemDown a8 ) \stemDown e8 [
    \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8
    ] \stemUp a,4 _\p r8 \stemUp a4 r8 \stemUp a4 r8 \stemUp a4 r8
    \stemUp a4 r8 \stemUp a4 r8 \stemUp a4 r8 \stemUp a4 r8 \stemUp a4 r8
    \stemDown a'4 r8 \stemDown a4 r8 \stemDown a4 r8 \stemDown a8 -. [
    _\f \stemDown cis8 -. \stemDown b8 -. ] \stemDown a4 r8 \stemDown b4
    _\p r8 \stemDown e,4 r8 \stemUp a,8 -. [ _\f \stemUp cis8 -. \stemUp
    b8 -. ] \stemUp a4 r8 \stemUp b4 _\p r8 \stemUp e,4 r8 \stemUp a4 r8
    r4. R2.*3 \stemUp a4 r8 r4. \stemDown d4 r8 r4. \stemDown dis4. (
    \stemDown fis4. ) \stemDown e8 [ \stemDown e8 \stemDown e8 ]
    \stemDown e8 r8 r8 \stemDown e8 r8 r8 \stemDown e8 r8 r8 \stemDown e4
    r8 r4. \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown e8 [
    \stemDown e8 \stemDown e8 ] \stemDown a4 r8 r4. R2.*2 r8 \stemDown
    cis8 ( [ \stemDown d8 ] \stemDown dis8 [ \stemDown e8 \stemDown eis8
    ) ] \stemDown fis4 r8 r4. R2. r8 \stemDown d,8 [ \stemDown d8 ]
    \stemDown d8 [ \stemDown d8 \stemDown d8 ] \stemDown d8 -. [ r8
    \stemDown e8 -. ] \stemDown fis8 -. [ r8 \stemDown dis8 -. ]
    \stemDown e8 [ \stemDown e'8 \stemDown e8 ] \stemDown e8 r8 r8
    \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown e8 r8 r8
    \stemDown e8 r8 r8 \stemDown e8 r8 r8 \stemDown e4 r8 r4. R2.*7
    \stemUp cis,2. \stemDown d8 r8 r8 \stemDown e8 r8 r8 \stemUp cis2.
    \stemDown d8 [ _\markup{ \tiny\italic {cresc.} } \stemDown d8
    \stemDown d8 ] \stemDown d8 [ \stemDown d8 \stemDown d8 ] \stemDown
    e8 [ \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown e8
    \stemDown e8 ] \stemUp a,8 _\f \stemDown a'8 [ \stemDown a8 ]
    \stemDown cis4 ( \stemDown a8 ) \stemDown e8 [ \stemDown e8
    \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown
    a,8 [ \stemDown a'8 \stemDown a8 ] \stemDown cis4 ( \stemDown a8 )
    \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown
    e8 \stemDown e8 ] \stemUp a,4 r8 r4 \stemDown e''8 -. \stemDown a,8
    -. [ \stemDown cis8 -. \stemDown e,8 -. ] \stemDown a8 -. [
    \stemDown cis,8 -. \stemDown e8 -. ] \stemUp a,4 r8 \stemDown a'4 r8
    \stemUp a,4 r8 r4. \bar "|."
    }

PartPOneTwoVoiceOne =  \relative a {
    \clef "bass" \time 4/4 \key a \major \transposition c | % 1
    \stemDown a8 [ _\p \stemDown a8 \stemDown a8 \stemDown a8 ]
    \stemDown a8 [ \stemDown a8 \stemDown a8 \stemDown a8 ] | % 2
    \stemDown a8 [ \stemDown a8 \stemDown a8 \stemDown a8 ] \stemDown a8
    [ \stemDown a8 \stemDown a8 \stemDown a8 ] | % 3
    \stemDown d,4 r4 \stemDown d4 r4 | % 4
    r8 \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown e8 [
    \stemDown e'8 ( \stemDown dis8 \stemDown d8 ) ] | % 5
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown b8 [ \stemDown b8 \stemDown a8 \stemDown a8 ] | % 6
    \stemDown gis8 [ \stemDown gis8 \stemDown fis8 \stemDown fis8 ]
    \stemDown e8 [ \stemDown e8 \stemDown d8 \stemDown d8 ] | % 7
    \stemUp cis4 ( \stemUp b4 \stemUp a4 \stemDown d4 ) | % 8
    \stemDown e8 ( [ \stemDown dis8 \stemDown e8 \stemDown dis8 ) ]
    \stemDown e4 r4 | % 9
    \stemDown a8 [ _\f \stemDown a8 \stemDown a8 \stemDown a8 ]
    \stemDown a8 [ \stemDown a8 \stemDown a8 \stemDown a8 ] |
    \barNumberCheck #10
    \stemDown a8 [ \stemDown a8 \stemDown a8 \stemDown a8 ] \stemDown a8
    [ \stemDown a8 \stemDown a8 \stemDown a8 ] | % 11
    \stemDown d,4 _\p r4 \stemDown d4 r4 | % 12
    r8 \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown e8 [
    \stemDown e'8 ( _\f \stemDown dis8 \stemDown d8 ) ] | % 13
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown b8 [ \stemDown b8 \stemDown a8 \stemDown a8 ] | % 14
    \stemDown gis8 [ \stemDown gis8 \stemDown fis8 \stemDown fis8 ]
    \stemDown e8 [ \stemDown e8 \stemDown d8 \stemDown d8 ] | % 15
    \stemDown cis8 [ \stemDown cis8 \stemDown fis8 \stemDown fis8 ]
    \stemDown d8 [ \stemDown d8 \stemDown e8 \stemDown e8 ] | % 16
    \stemDown a8 [ \stemDown e8 \stemDown a8 \stemDown e8 ] \stemDown a8
    [ \stemDown e8 \stemDown a8 \stemDown e8 ] | % 17
    \stemDown gis8 [ \stemDown e8 \stemDown gis8 \stemDown e8 ]
    \stemDown b'8 [ \stemDown e,8 \stemDown d'8 \stemDown e,8 ] | % 18
    \stemDown cis'8 [ \stemDown e,8 \stemDown cis'8 \stemDown e,8 ]
    \stemDown a8 [ \stemDown e8 \stemDown a8 \stemDown e8 ] | % 19
    \stemDown gis8 [ \stemDown e8 \stemDown gis8 \stemDown e8 ]
    \stemDown b'8 [ \stemDown e,8 \stemDown d'8 \stemDown e,8 ] |
    \barNumberCheck #20
    \stemDown cis'4 r8 \stemDown cis8 ( \stemDown d4 ) r8 \stemDown cis8
    ( | % 21
    \stemDown d4 ) r8 \stemDown ais8 ( \stemDown b4 ) r8 \stemDown ais8
    ( | % 22
    \stemDown b4 ) r8 \stemDown fis8 ( \stemDown d4 ) r8 \stemDown dis8
    ( | % 23
    \stemDown e4 ) r16 \stemUp b16 [ \stemUp cis16 \stemUp dis16 ]
    \stemDown e16 [ \stemDown fis16 \stemDown gis16 \stemDown a16 ]
    \stemDown b16 [ \stemDown gis16 \stemDown b16 \stemDown gis16 ] | % 24
    \stemDown e4 -. \stemDown e'4 -. \stemDown e,4 -. r4 | % 25
    R1*6 | % 31
    \stemDown a2 _\f \stemDown fis4.. ( \stemDown gis16 ) | % 32
    \stemDown a4 -. \stemUp a,4 -. r2 | % 33
    \stemDown a'2 \stemDown fis4.. ( \stemDown gis16 ) | % 34
    \stemDown a4 -. \stemUp a,4 -. r2 | % 35
    \stemUp a8 [ \stemUp b16 \stemUp cis16 ] \stemDown d16 [ \stemDown e16
    \stemDown fis16 \stemDown gis16 ] \stemDown a16 [ \stemDown gis16
    \stemDown a16 \stemDown b16 ] \stemDown g16 [ \stemDown fis16
    \stemDown g16 \stemDown a16 ] | % 36
    \stemDown fis4 -. \stemUp cis4 -. \stemDown d4 -. r4 | % 37
    R1 | % 38
    r4 \stemDown d4 ( _\p \stemDown e4 ) \stemDown e4 -. | % 39
    \stemDown a8 r8 \stemDown b8 r8 \stemDown a8 r8 \stemDown e8 r8 |
    \barNumberCheck #40
    \stemDown a8 r8 \stemDown b8 r8 \stemDown a8 r8 \stemDown e8 r8 | % 41
    \stemDown a8 r8 \stemDown b8 r8 \stemDown a8 r8 \stemDown e8 r8 | % 42
    \stemDown a8 r8 \stemDown e8 r8 \stemDown a8 r8 \stemDown e8 r8 | % 43
    \stemDown a8 [ _\f \stemDown e8 \stemDown gis8 \stemDown e8 ]
    \stemDown a8 [ \stemDown e8 \stemDown b'8 \stemDown e,8 ] | % 44
    \stemDown cis'8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 45
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown
    cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 46
    \stemDown d8 [ \stemDown d8 \stemDown d8 \stemDown d8 ] \stemDown
    fis8 [ \stemDown fis8 \stemDown fis8 \stemDown fis8 ] | % 47
    \stemDown e8 ( [ \stemDown dis8 \stemDown d8 \stemDown cis8 ) ]
    \stemDown b8 ( [ \stemDown d8 \stemDown cis8 \stemDown a8 ) ] | % 48
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown e8
    [ \stemDown e8 \stemDown e8 \stemDown e8 ] | % 49
    \stemUp a,4 r4 r2 | \barNumberCheck #50
    r2 \stemDown d8 -. _\p r8 \stemDown e8 -. r8 | % 51
    \stemDown fis4 r4 r2 | % 52
    r2 \stemUp b,8 -. r8 \stemDown e8 -. r8 | % 53
    \stemUp a,4 r4 \stemDown d8 -. r8 \stemDown e8 -. r8 | % 54
    \stemUp a,4 r4 \stemDown d8 -. r8 \stemDown e8 -. r8 | % 55
    \stemUp a,8 \stemDown a'8 -. [ _\f \stemDown cis8 -. \stemDown a8 -.
    ] \stemDown e8 -. [ \stemDown a8 -. \stemDown cis,8 -. \stemDown e8
    -. ] | % 56
    \stemUp a,4 -. \stemDown a'4 -. \stemUp a,4 -. r4 \bar "||"
    R1*8 | % 65
    \stemUp a8 _\p r8 \stemDown a'8 r8 \stemUp a,8 r8 \stemDown a'8 r8 | % 66
    \stemUp a,8 r8 \stemDown a'8 r8 \stemUp a,8 r8 \stemDown a'8 r8 | % 67
    \stemDown d,4 r4 \stemDown d4 r4 | % 68
    r8 \stemDown e8 -. [ \stemDown e8 -. \stemDown e8 -. ] \stemDown e8
    ( [ \stemDown gis8 \stemDown b8 \stemDown gis8 ) ] | % 69
    \stemDown e4 r4 r2 | \barNumberCheck #70
    \stemDown fis2 ( \stemDown d2 ) | % 71
    \stemUp cis4 r4 r2 | % 72
    R1 | % 73
    \stemDown a'4 r4 \stemDown d,4 r4 | % 74
    \stemUp cis4 \stemDown fis4 ( \stemDown d4 \stemDown e4 ) | % 75
    \stemUp a,8 \stemDown a'8 -. [ _\f \stemDown cis8 -. \stemDown a8 -.
    ] \stemDown e8 -. [ \stemDown a8 -. \stemDown cis,8 -. \stemDown e8
    -. ] | % 76
    \stemUp a,4 r4 \stemDown fis'4 _\p r4 | % 77
    \stemUp b,4 r4 \stemDown e4 r4 | % 78
    \stemUp a,4 r4 \stemDown f'4 r4 | % 79
    \stemDown d4 r4 \stemDown e4 r4 | \barNumberCheck #80
    \stemDown a,8 -. [ \stemDown a'8 -. \stemDown a,8 -. \stemDown a'8
    -. ] \stemUp a,4 r4 | % 81
    r4 \stemDown as'8. [ _\f \stemDown as16 ] \stemDown g8. [ \stemDown
    g16 ] \stemDown as8. [ \stemDown as16 ] | % 82
    \stemDown g4 r4 \stemDown g4 _\p r4 | % 83
    g1 ~ | % 84
    \stemDown g4 r4 r2 | % 85
    R1*7 | % 92
    r4 \stemUp ais,2 ( \stemUp b4 ) | % 93
    \stemUp c4 r4 \stemUp c4 r4 | % 94
    \stemUp b4 r4 r2 | % 95
    R1*3 | % 98
    r8 \stemUp b8 -. [ _\f \stemUp cis8 -. \stemUp dis8 -. ] \stemDown e16
    [ \stemDown dis16 \stemDown e16 \stemDown fis16 ] \stemDown g16 [
    \stemDown fis16 \stemDown g16 \stemDown a16 ] | % 99
    \stemDown b8 [ \stemDown b,8 -. \stemDown cis8 -. \stemDown dis8 -.
    ] \stemDown e16 [ \stemDown dis16 \stemDown e16 \stemDown fis16 ]
    \stemDown g16 [ \stemDown fis16 \stemDown g16 \stemDown a16 ] |
    \barNumberCheck #100
    \stemDown b4 r4 r2 | % 101
    R1*2 | % 103
    r2 \stemUp b,2 ( _\p | % 104
    \stemDown e4 ) r4 \stemDown e4 r4 | % 105
    \stemDown fis4 r4 \stemUp b,4 r4 | % 106
    \stemDown e4 r4 \stemDown e4 r4 | % 107
    \stemDown fis4 r4 \stemUp b,4 r4 | % 108
    \stemDown e4 r4 r2 | % 109
    R1*2 | % 111
    \stemUp b2. ( \stemUp a4 | % 112
    \stemUp gis4 ) r4 r2 | % 113
    R1*13 | % 126
    r4 \stemDown b'8 -. r8 \stemDown fis8 -. r8 \stemDown dis8 -. r8 | % 127
    \stemUp b4 r4 r2 ^\fermata | % 128
    R1*4 | % 132
    r2 r4 \stemDown a'4 ( _\p | % 133
    \stemDown gis4 \stemDown a4 ) \stemDown b4 \stemUp b,4 | % 134
    \stemDown e8 r8 \stemDown fis8 r8 \stemDown e8 r8 \stemUp b8 r8 | % 135
    \stemDown e8 r8 \stemDown fis8 r8 \stemDown e8 r8 \stemUp b8 r8 | % 136
    \stemDown e8 r8 \stemDown fis8 r8 \stemDown e8 r8 \stemDown b'8 r8 | % 137
    \stemDown e8 r8 \stemDown b8 r8 \stemDown e8 r8 \stemDown b8 r8 | % 138
    \stemDown e4 r4 \stemDown e,4 r4 | % 139
    \stemDown a4 r4 \stemUp a,4 r4 | \barNumberCheck #140
    \stemDown b'4 r4 \stemUp b,4 r4 | % 141
    \stemDown e4 r4 r2 | % 142
    gis1 ( | % 143
    \stemDown a8 ) r8 \stemDown e'8 r8 \stemDown a,8 r8 \stemDown e'8 r8
    | % 144
    \stemDown a,8 r8 \stemDown e8 r8 \stemDown a8 r8 \stemDown e8 r8 | % 145
    \stemDown a4 r4 r8 \stemDown a8 [ \stemDown a8 \stemDown a8 ] | % 146
    \stemDown a4 r4 r8 \stemDown a8 [ \stemDown a8 \stemDown a8 ] | % 147
    \stemDown ais4 r4 r8 \stemDown ais8 [ \stemDown ais8 \stemDown ais8
    ] | % 148
    \stemDown b4 r4 r2 | % 149
    R1*3 | % 152
    \stemUp b,4 \stemUp b4 \stemUp b4 \stemUp b4 | % 153
    \stemUp b8 [ _\markup{ \tiny\italic {cresc.} } \stemUp b8 \stemUp b8
    \stemUp b8 ] \stemUp b8 [ \stemUp b8 \stemUp b8 \stemUp b8 ] | % 154
    \stemUp e8 [ _\f \stemUp b8 \stemUp e8 \stemUp b8 ] \stemUp e8 [
    \stemUp b8 \stemUp e8 \stemUp b8 ] | % 155
    \stemUp dis8 [ \stemUp b8 \stemUp dis8 \stemUp b8 ] \stemDown fis'8
    [ \stemDown b,8 \stemDown a'8 \stemDown b,8 ] | % 156
    \stemDown gis'8 [ \stemDown b,8 \stemDown gis'8 \stemDown b,8 ]
    \stemUp e8 [ \stemUp b8 \stemUp e8 \stemUp b8 ] | % 157
    \stemUp dis8 [ \stemUp b8 \stemUp dis8 \stemUp b8 ] \stemDown fis'8
    [ \stemDown b,8 \stemDown a'8 \stemDown b,8 ] | % 158
    \stemDown gis'4 r8 \stemDown gis8 ( \stemDown a4 ) r8 \stemDown gis8
    ( | % 159
    \stemDown a4 ) r8 \stemDown eis8 ( \stemDown fis4 ) r8 \stemDown eis8
    ( | \barNumberCheck #160
    \stemDown fis4 ) r8 \stemUp cis8 ( \stemUp a4 ) r8 \stemUp ais8 | % 161
    \stemUp b8 [ \stemUp b8 \stemUp b8 \stemUp b8 ] \stemUp a8 [ \stemUp
    a8 \stemUp a8 \stemUp a8 ] | % 162
    \stemUp gis8 [ \stemUp gis8 \stemUp gis'8 \stemUp gis8 ] \stemDown a8
    [ \stemDown a8 \stemDown ais8 \stemDown ais8 ] | % 163
    \stemDown b8 [ \stemDown b8 \stemDown gis8 \stemDown e8 ] \stemUp b8
    [ \stemUp b8 \stemUp b8 \stemUp b8 ] | % 164
    \stemDown e4 r4 r2 | % 165
    r2 \stemDown a8 -. _\p r8 \stemDown b8 -. r8 | % 166
    \stemDown cis4 r4 r2 | % 167
    r2 \stemDown fis,8 -. r8 \stemDown b8 -. r8 | % 168
    \stemDown e,4 r4 \stemDown a8 -. r8 \stemDown b8 -. r8 | % 169
    \stemDown e,4 r4 \stemDown a8 -. r8 \stemDown b8 -. r8 |
    \barNumberCheck #170
    \stemDown e,8 [ _\f \stemDown e'8 \stemDown e8 \stemDown e8 ]
    \stemDown b8 [ \stemDown e8 \stemDown gis,8 \stemDown b8 ] | % 171
    \stemDown e,4 -. \stemDown e4 -. \stemDown e4 -. r4 \bar "||"
    R1*2 | % 174
    b'1 _\p | % 175
    \stemUp b,4 r4 \stemUp b4 r4 | % 176
    \stemDown e4 r4 r2 | % 177
    R1 | % 178
    b'1 | % 179
    \stemUp b,4 r4 \stemUp b4 r4 | \barNumberCheck #180
    \stemDown e8 [ \stemDown e8 ] \stemDown e4 r2 | % 181
    \stemUp b4 r4 \stemUp b4 r4 | % 182
    \stemDown e8 [ \stemDown e8 ] \stemDown e4 r2 | % 183
    \stemUp b4 r4 \stemUp b4 r4 | % 184
    \stemDown e8 [ \stemDown e8 ] \stemDown e4 r2 | % 185
    \stemDown e8 [ \stemDown e8 ] \stemDown e4 r2 | % 186
    \stemDown e8 [ \stemDown e8 ] \stemDown e4 r2 | % 187
    r4 \stemDown d4 ( \stemUp cis4 \stemDown d4 ) | % 188
    \stemUp cis8 r8 \stemUp cis8 r8 \stemUp cis8 r8 \stemUp cis8 r8 | % 189
    \stemUp cis8 r8 \stemUp cis8 r8 \stemUp cis8 r8 \stemUp cis8 r8 |
    \barNumberCheck #190
    \stemDown fis4 r4 r2 | % 191
    R1 | % 192
    \stemDown cis'8 [ _\f \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 193
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 194
    \stemDown cis4 r4 r2 | % 195
    r4 \stemDown cis4 ( -. _\p \stemDown cis4 -. \stemDown cis4 ) -. | % 196
    \stemDown b4 r4 r2 | % 197
    r4 \stemDown b4 ( -. \stemDown b4 -. \stemDown b4 ) -. | % 198
    \stemDown a4 r4 r2 | % 199
    \stemUp a,4 r4 r2 | \barNumberCheck #200
    \stemDown d4 r4 r2 | % 201
    R1*8 | % 209
    r4 \stemDown ais'2 ( \stemDown ais4 ) | \barNumberCheck #210
    \stemDown b8 -. [ \stemDown b8 -. ] \stemDown b4 -. r2 | % 211
    \stemDown b8 -. [ \stemDown b8 -. ] \stemDown b4 -. r2 | % 212
    \stemDown a8 r8 r4 \stemDown eis8 r8 r4 | % 213
    \stemDown fis8 r8 \stemDown a8 r8 \stemDown b8 r8 \stemDown d8 r8 | % 214
    \stemDown cis4 r4 \stemUp cis,4 r4 | % 215
    \stemDown fis8 [ _\f \stemDown gis8 \stemDown a8 \stemDown ais8 ]
    \stemDown b8 [ \stemDown cis8 \stemDown d8 \stemDown ais8 ] | % 216
    \stemDown b4 r4 r2 | % 217
    \stemUp cis,4 _\p r4 r2 | % 218
    \stemDown d4 r4 r2 | % 219
    \stemDown dis4 r4 r2 | \barNumberCheck #220
    \stemUp cis8 [ \stemUp cis8 ] \stemUp cis4 r2 | % 221
    \stemUp cis8 [ \stemUp cis8 ] \stemUp cis4 r2 | % 222
    \stemDown cis'8 [ \stemDown cis8 ] \stemDown cis4 r2 | % 223
    R1 | % 224
    r4 \stemUp cis,4 r2 | % 225
    R1 | % 226
    \stemUp cis8 [ _\markup{ \tiny\italic {cresc.} } \stemUp cis8
    \stemUp cis8 \stemUp cis8 ] \stemUp cis8 [ \stemUp cis8 \stemUp cis8
    \stemUp cis8 ] | % 227
    \stemDown fis8 -. [ _\f \stemDown eis8 -. \stemDown fis8 -.
    \stemDown gis8 -. ] \stemDown a8 -. [ \stemDown gis8 -. \stemDown a8
    -. \stemDown b8 -. ] | % 228
    \stemDown cis8 -. [ \stemDown bis8 -. \stemDown cis8 -. \stemDown d8
    -. ] \stemDown cis8 -. [ \stemDown b8 -. \stemDown a8 -. \stemDown
    gis8 -. ] | % 229
    \stemDown fis4 r4 r2 | \barNumberCheck #230
    cis'1 _\p | % 231
    \stemDown fis,4 r4 r2 | % 232
    b1 | % 233
    \stemDown e,8 -. [ _\f \stemDown dis8 -. \stemDown e8 -. \stemDown
    fis8 -. ] \stemDown g8 -. [ \stemDown fis8 -. \stemDown g8 -.
    \stemDown a8 -. ] | % 234
    \stemDown b8 -. [ \stemDown ais8 -. \stemDown b8 -. \stemDown c8 -.
    ] \stemDown b8 -. [ \stemDown a8 -. \stemDown g8 -. \stemDown fis8
    -. ] | % 235
    \stemDown e4 r4 r2 | % 236
    b'1 _\p | % 237
    \stemDown e,4 r4 r2 | % 238
    a1 | % 239
    \stemUp d,8 [ _\f \stemUp a8 \stemUp d8 \stemUp a8 ] \stemUp d8 [
    \stemUp a8 \stemUp d8 \stemUp a8 ] | \barNumberCheck #240
    \stemUp cis8 [ \stemUp a8 \stemUp cis8 \stemUp a8 ] \stemUp e'8 [
    \stemUp a,8 \stemUp e'8 \stemUp a,8 ] | % 241
    \stemUp d8 [ \stemUp a8 \stemUp d8 \stemUp a8 ] \stemUp d8 [ \stemUp
    a8 \stemUp d8 \stemUp a8 ] | % 242
    \stemUp e'8 [ \stemUp a,8 \stemUp e'8 \stemUp a,8 ] \stemUp cis8 [
    \stemUp a8 \stemUp cis8 \stemUp a8 ] | % 243
    \stemDown d4 r8 \stemDown g8 ( \stemDown fis4 ) r8 \stemDown ais8 (
    | % 244
    \stemDown b4 ) r8 \stemDown e,8 ( \stemDown d4 ) r8 \stemDown fis8 (
    | % 245
    \stemDown gis4 ) r8 \stemDown dis'8 ( \stemDown e4 ) r8 \stemDown a,8
    ( | % 246
    \stemDown gis4 ) r16 \stemDown e16 [ \stemDown fis16 \stemDown gis16
    ] \stemDown a16 [ \stemDown gis16 \stemDown a16 \stemDown b16 ]
    \stemDown cis16 [ \stemDown b16 \stemDown cis16 \stemDown dis16 ] | % 247
    \stemDown e4 r16 \stemUp b,16 [ \stemUp cis16 \stemUp dis16 ]
    \stemDown e16 [ \stemDown fis16 \stemDown gis16 \stemDown a16 ]
    \stemDown b16 [ \stemDown gis16 \stemDown b16 \stemDown gis16 ] | % 248
    \stemDown e4 r4 r2 | % 249
    R1*10 | % 259
    \stemUp a,8 _\p r8 \stemDown a'8 r8 \stemUp a,8 r8 \stemDown a'8 r8
    | \barNumberCheck #260
    \stemUp a,8 r8 \stemDown a'8 r8 \stemUp a,8 r8 \stemDown a'8 r8 | % 261
    \stemDown d,4 r4 \stemDown d4 r4 | % 262
    r8 \stemDown e8 -. [ \stemDown e8 -. \stemDown e8 -. ] \stemDown e8
    ( [ \stemDown gis8 \stemDown b8 \stemDown gis8 ) ] | % 263
    \stemDown e4 r4 r2 | % 264
    \stemDown fis2 ( \stemDown d2 ) | % 265
    \stemUp cis4 r4 r2 | % 266
    R1 | % 267
    \stemDown a'4 r4 \stemDown d,4 r4 | % 268
    \stemUp cis4 \stemDown fis4 ( \stemDown d4 \stemDown e4 ) | % 269
    \stemUp a,8 \stemDown a'8 -. [ _\f \stemDown cis8 -. \stemDown a8 -.
    ] \stemDown e8 -. [ \stemDown a8 -. \stemDown cis,8 -. \stemDown e8
    -. ] | \barNumberCheck #270
    \stemUp a,4 r4 \stemDown fis'4 _\p r4 | % 271
    \stemUp b,4 r4 \stemDown e4 r4 | % 272
    \stemUp a,4 r4 r2 | % 273
    R1*3 | % 276
    r2 \stemDown g'4 r4 | % 277
    \stemDown a4 r4 \stemDown b4 r4 | % 278
    e,1 | % 279
    a1 | \barNumberCheck #280
    \stemDown d,8 r8 \stemDown e8 r8 \stemDown f8 r8 \stemDown e8 r8 | % 281
    \stemDown d2 ( \stemDown dis2 ) | % 282
    \stemDown e4 r4 r2 | % 283
    R1*3 | % 286
    r8 \stemDown e8 -. [ _\f \stemDown fis8 -. \stemDown gis8 -. ]
    \stemDown a16 [ \stemDown gis16 \stemDown a16 \stemDown b16 ]
    \stemDown c16 [ \stemDown b16 \stemDown c16 \stemDown d16 ] | % 287
    \stemDown e8 [ \stemDown e,8 -. \stemDown fis8 -. \stemDown gis8 -.
    ] \stemDown a16 [ \stemDown gis16 \stemDown a16 \stemDown b16 ]
    \stemDown c16 [ \stemDown b16 \stemDown c16 \stemDown d16 ] | % 288
    \stemDown e4 r4 r2 | % 289
    R1*2 | % 291
    r2 \stemDown e,2 ( _\markup{ \tiny\italic {(} } _\p _\markup{
        \tiny\italic {)} } | % 292
    \stemDown a4 ) r4 \stemDown a4 r4 | % 293
    \stemDown b4 r4 \stemDown e,4 r4 | % 294
    \stemDown a4 r4 r2 | % 295
    R1 | % 296
    r4 r8 \stemDown cis,8 ( \stemDown d4 ) r8 \stemDown cis8 ( | % 297
    \stemDown d4 ) r8 \stemUp ais8 ( \stemUp b4 ) r8 \stemUp ais8 ( | % 298
    \stemUp b4 ) r4 r2 | % 299
    R1*6 | % 305
    r2 \stemDown fis'2 ( | % 306
    \stemDown eis2 \stemUp cis2 ) | % 307
    \stemDown fis4 r4 r2 | % 308
    R1*4 | % 312
    \stemDown f2 ( \stemDown e4 ) r4 | % 313
    \stemDown f2 ( \stemDown e4 ) r4 | % 314
    r4 \stemDown e'8 -. r8 \stemDown b8 -. r8 \stemDown gis8 -. r8 | % 315
    \stemDown e4 r4 r2 ^\fermata | % 316
    R1*5 | % 321
    r4 \stemDown b'4 -. _\p \stemDown e4 -. \stemDown e,4 -. | % 322
    \stemDown a8 r8 \stemDown b8 r8 \stemDown a8 r8 \stemDown e8 r8 | % 323
    \stemDown a8 r8 \stemDown b8 r8 \stemDown a8 r8 \stemDown e8 r8 | % 324
    R1*2 | % 326
    \stemDown a4 r4 r2 | % 327
    \stemDown d,4 r4 r2 | % 328
    \stemDown e4 r4 \stemDown e4 r4 | % 329
    \stemUp a,4 r4 r2 | \barNumberCheck #330
    cis1 | % 331
    \stemDown d8 r8 \stemDown a'8 r8 \stemDown d8 r8 \stemDown a8 r8 | % 332
    \stemDown d8 r8 \stemDown a8 r8 \stemDown d,8 r8 \stemDown a'8 r8 | % 333
    \stemDown d,8 r8 \stemUp a8 r8 \stemDown d8 r8 \stemUp a8 r8 | % 334
    \stemDown d4 r4 r8 \stemDown d8 [ \stemDown d8 \stemDown d8 ] | % 335
    \stemDown d4 r4 r8 \stemDown d8 [ \stemDown d8 \stemDown d8 ] | % 336
    \stemDown dis4 r4 r8 \stemDown dis8 [ \stemDown dis8 \stemDown dis8
    ] | % 337
    \stemDown e4 r4 \stemDown e'4 r4 | % 338
    \stemDown cis4 r4 \stemDown a4 r4 | % 339
    \stemDown e4 r4 r2 | \barNumberCheck #340
    r4 \stemDown e'8 -. [ \stemDown e8 -. ] \stemDown e8 -. r8 \stemDown
    e8 -. [ \stemDown e8 -. ] | % 341
    \stemDown e4 r4 r2 | % 342
    \stemDown e,8 [ _\markup{ \tiny\italic {cresc.} } \stemDown e8
    \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8
    \stemDown e8 ] | % 343
    \stemDown a8 [ _\f \stemDown e8 \stemDown a8 \stemDown e8 ]
    \stemDown a8 [ \stemDown e8 \stemDown a8 \stemDown e8 ] | % 344
    \stemDown gis8 [ \stemDown e8 \stemDown gis8 \stemDown e8 ]
    \stemDown b'8 [ \stemDown e,8 \stemDown d'8 \stemDown e,8 ] | % 345
    \stemDown cis'8 [ \stemDown e,8 \stemDown cis'8 \stemDown e,8 ]
    \stemDown a8 [ \stemDown e8 \stemDown a8 \stemDown e8 ] | % 346
    \stemDown gis8 [ \stemDown e8 \stemDown gis8 \stemDown e8 ]
    \stemDown b'8 [ \stemDown e,8 \stemDown d'8 \stemDown e,8 ] | % 347
    \stemDown cis'8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 348
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown
    cis8 [ \stemDown cis8 \stemDown cis8 \stemDown cis8 ] | % 349
    \stemDown d8 [ \stemDown d8 \stemDown d8 \stemDown d8 ] \stemDown
    fis8 [ \stemDown fis8 \stemDown fis8 \stemDown fis8 ] |
    \barNumberCheck #350
    \stemDown e8 ( [ \stemDown dis8 \stemDown d8 \stemDown cis8 ) ]
    \stemDown b8 ( [ \stemDown d8 \stemDown cis8 \stemDown a8 ) ] | % 351
    \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] \stemDown e8
    [ \stemDown e8 \stemDown e8 \stemDown e8 ] | % 352
    \stemUp a,4 r4 r2 | % 353
    r2 \stemDown d8 -. _\p r8 \stemDown e8 -. r8 | % 354
    \stemDown fis4 r4 r2 | % 355
    r2 \stemUp b,8 -. r8 \stemDown e8 -. r8 | % 356
    \stemUp a,4 r4 \stemDown d8 -. r8 \stemDown e8 -. r8 | % 357
    \stemUp a,4 r4 \stemDown d8 -. r8 \stemDown e8 -. r8 | % 358
    \stemUp a,8 \stemDown a'8 -. [ _\f \stemDown cis8 -. \stemDown a8 -.
    ] \stemDown e8 -. [ \stemDown a8 -. \stemDown cis,8 -. \stemDown e8
    -. ] | % 359
    \stemUp a,4 -. \stemDown a'4 -. \stemUp a,4 -. r4 \bar "|."
    \time 3/4  \key d \major \transposition c R2.*8 \stemDown d4 _\f r4
    \stemDown d4 \stemUp a4 \stemDown d4 r4 \stemDown d4 r4 \stemDown d4
    \stemUp a4 \stemDown d4 r4 \stemDown a'4 r4 r4 \stemDown a4 r4
    \stemDown d,4 \stemDown e4 \stemDown e4 \stemDown e4 \stemUp a,4 r4
    r4 R2.*8 \stemDown d4. ( _\f \stemDown e8 \stemDown fis4 ) \stemDown
    g4 ( \stemDown a4 \stemDown b4 ) \stemDown e,4 \stemUp e,8 ( [
    \stemUp fis8 \stemUp g8 \stemUp gis8 ) ] \stemUp a4 ( \stemUp b4
    \stemUp cis4 ) \stemUp fis,4. ( \stemUp g8 [ \stemUp a8 \stemUp ais8
    ) ] \stemUp b4 ( \stemUp cis4 \stemDown d4 ) \stemUp g,4 \stemUp a4
    \stemUp a4 \stemDown d4 r4 r4 \stemDown d4 _\p r4 r4 \stemUp a4 r4 r4
    \stemDown e'2. ~ \stemDown e4 \stemDown a,8 [ \stemDown a'8 (
    \stemDown e8 \stemDown d8 ) ] \stemUp cis4 r4 r4 \stemDown d4 r4 r4
    \stemDown e4 r4 r4 \stemDown fis4 r4 r4 \stemUp gis,2. \stemUp a8 r8
    \stemUp cis8 r8 \stemDown d8 r8 \stemDown e2. \stemDown eis4 (
    \stemDown fis8 ) \stemDown fis8 ( [ \stemDown e8 \stemDown d8 ) ]
    \stemUp cis4 r4 r4 \stemDown d4 r4 r4 \stemDown e4 r4 r4 \stemDown
    fis4 r4 r4 \stemDown gis2. \stemDown a4 r4 r4 \stemDown d,4 r4 r4
    \stemDown e4 r4 r4 \stemDown e4 _\markup{ \tiny\italic {cresc.} }
    \stemDown e4 \stemDown e4 \stemDown a4 _\f \stemDown e4 \stemUp cis4
    \stemUp a4 r4 r4 \stemDown a'4 \stemUp a,4 \stemDown a'4 \stemUp a,4
    r4 r4 \stemDown a'4 \stemDown e4 \stemUp cis4 \stemUp a4 r4 r4
    ^\fermata R2.*16 \stemDown d4. ( _\f \stemUp cis8 [ \stemUp b8
    \stemUp a8 ) ] \stemUp g4 ( \stemUp a4 \stemUp b4 ) \stemDown e4. (
    \stemDown d8 [ \stemDown cis8 \stemDown b8 ) ] \stemUp a4 ( \stemUp
    b4 \stemUp cis4 ) \stemDown fis4. ( \stemDown e8 [ \stemDown d8
    \stemDown cis8 ) ] \stemUp b4 ( \stemUp bes4 \stemUp a4 ) \stemUp g4
    \stemUp a4 \stemUp a4 \stemDown d4 r4 r4 R2.*4 \stemUp cis2 ( _\p
    \stemDown d4 ) \stemUp cis2 ( \stemDown d4 ) \stemUp g,4 r4 r4
    \stemUp a4 r4 r4 \stemUp a4 \stemUp a4 \stemUp a4 \stemUp b4 r4 r4
    R2. r2 \stemUp g4 ( \stemUp a2. ) \stemDown d8 -. r8 \stemUp a8 -. r8
    \stemUp fis8 -. r8 \stemUp d4 r4 r4 \bar "|."
    \time 6/8  \key a \major \transposition c r8 R2.*8 r8 -. [ \stemDown
    a''8 -. ] _\p _\markup{ \tiny\italic {cresc.} } \stemDown a8 -. [
    \stemDown a8 -. \stemDown a8 -. ] \stemDown e4. ( _\f \stemDown fis8
    ) r8 r8 r8 \stemDown d8 -. _\p r8 r8 \stemDown d8 -. r8 \stemDown e8
    -. [ \stemDown e8 -. \stemDown e8 -. ] \stemDown e8 r8 r8 r8
    \stemDown a8 -. [ _\markup{ \tiny\italic {cresc.} } \stemDown a8 -.
    ] \stemDown a8 -. [ \stemDown a8 -. \stemDown a8 -. ] \stemDown e4 (
    _\f \stemDown eis8 ) \stemDown fis4 -. r8 r8 \stemDown d8 -. _\p r8
    r8 \stemDown e8 -. r8 \stemUp a,8 -. [ \stemUp a8 -. \stemUp a8 -. ]
    \stemUp a8 r8 r8 \stemDown e'2. ( _\p \stemDown a4 ) r8 r4.
    \stemDown b2. ( \stemDown e,4 ) r8 r4 \stemUp b8 -. \stemDown e4 r8
    r4 \stemUp b8 -. \stemDown e4 r8 r4. R2.*8 \stemDown a4 _\p r8 r4.
    \stemDown e4 r8 r4. \stemUp a,4 _\markup{ \tiny\italic {cresc.} } r8
    r4. \stemUp a4 r8 r4. \stemUp a4 r8 r4. R2.*4 \stemUp cis8 [ _\f
    \stemUp cis8 \stemUp cis8 ] \stemUp cis8 [ \stemUp cis8 \stemUp cis8
    ] \stemDown d8 [ \stemDown d8 \stemDown d8 ] \stemDown d8 [
    \stemDown d8 \stemDown d8 ] \stemDown e8 [ \stemDown e8 \stemDown e8
    ] \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemUp a,4 r8 r4.
    R2.*2 \stemDown e'2. ( _\p \stemDown a4 ) r8 r4. R2.*3 \stemDown a,8
    [ _\f \stemDown a'8 \stemDown a8 ] \stemDown cis4 ( \stemDown a8 )
    \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown
    e8 \stemDown e8 ] \stemDown a,8 [ \stemDown a'8 \stemDown a8 ]
    \stemDown cis4 ( \stemDown a8 ) \stemDown e8 [ \stemDown e8
    \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemUp a,4
    r8 \stemDown a'4 r8 \stemUp a,4 r8 r4. R2.*4 \stemDown e'4 _\p r8 r8
    \stemDown e8 -. [ \stemDown d8 -. ] \stemUp cis4 r8 r4. R2.*2
    \stemUp a2. ~ \stemUp a2. \stemUp a8 r8 r8 \stemUp a8 r8 r8 \stemUp
    a4 r8 r4. r4 r8 \stemDown a'4. ( \stemDown gis4 ) r8 r4. R2.*6
    \stemDown e2. ( \stemDown dis4. \stemDown d4. \stemUp cis4. \stemUp
    c4. ) \stemUp b2. \stemUp a2. \stemUp a4. ( \stemUp gis8 ) r8 r8 r8
    \stemUp a8 [ \stemUp a8 ] r8 \stemUp b8 [ \stemUp b8 ] \stemDown e8
    r8 r8 \stemDown gis8 r8 r8 \stemDown fis8 r8 r8 \stemUp b,8 r8 r8
    \stemDown e8 r8 r8 \stemDown gis8 r8 r8 \stemDown fis8 r8 r8 \stemUp
    b,8 r8 r8 \stemDown e4 r8 r8 \stemDown gis8 [ \stemDown gis8 ]
    \stemDown a4 r8 r8 \stemDown a8 [ \stemDown a8 ] \stemDown b4. (
    \stemDown a4. ) \stemDown gis4 r8 r8 \stemDown e8 -. [ \stemDown gis8
    -. ] \stemDown a4 r8 r8 \stemUp a,8 -. [ \stemUp cis8 -. ] \stemUp
    ais2. ~ \stemUp ais4. \stemUp c4. \stemUp b4 r8 r4. \stemUp b4 r8
    \stemUp b4 r8 \stemDown e4 r8 r4. \stemDown e8 [ _\sfp \stemDown e8
    \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown
    e4 r8 r4. R2.*2 \stemDown e8 [ _\sfp \stemDown e8 \stemDown e8 ]
    \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown e4 r8 r4. R2.*6
    \stemDown f2. ~ \stemDown f2. \stemDown e4 r8 r4. r8 \stemDown dis8
    ( [ \stemDown e8 ] \stemDown eis8 [ \stemDown fis8 \stemDown gis8 )
    ] \stemDown a4 r8 r4. R2.*6 \stemDown a,8 [ _\f \stemDown a'8
    \stemDown a8 ] \stemDown cis4 ( \stemDown a8 ) \stemDown e8 [
    \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8
    ] \stemDown a,8 [ \stemDown a'8 \stemDown a8 ] \stemDown cis4 (
    \stemDown a8 ) \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown
    e8 [ \stemDown e8 \stemDown e8 ] \stemUp a,4 r8 r4. R2.*3 \stemUp d8
    [ \stemUp a8 \stemUp fis'8 ] \stemDown g8 [ \stemDown e8 \stemDown
    cis8 ] \stemUp d8 [ \stemUp a8 \stemUp fis'8 ] \stemDown g8 [
    \stemDown e8 \stemDown cis8 ] \stemDown d8 [ \stemDown b'8 \stemDown
    cis8 ] \stemDown ais8 [ \stemDown b8 \stemDown gis8 ] \stemDown a8 [
    \stemDown fis8 \stemDown gis8 ] \stemDown eis8 [ \stemDown fis8
    \stemDown a8 ] \stemDown dis8 [ \stemDown dis8 \stemDown dis8 ]
    \stemDown d8 [ \stemDown d8 \stemDown d8 ] \stemDown cis8 [
    \stemDown cis8 \stemDown cis8 ] \stemDown cis8 [ \stemDown cis8
    \stemDown cis8 ] \stemDown cis8 [ \stemDown cis8 \stemDown cis8 ]
    \stemDown cis8 [ \stemDown cis8 \stemDown cis8 ] \stemDown cis8 [
    \stemDown cis,8 \stemDown cis8 ] \stemUp cis8 [ \stemUp cis8 \stemUp
    cis8 ] \stemUp cis4 r8 r4. \stemDown fis4 _\p r8 r4. \stemDown fis4
    r8 r4. \stemDown eis4 r8 r4. \stemDown fis4 r8 r4. R2.*3 r4
    \stemDown b8 ( \stemDown a4 \stemDown gis8 ) \stemDown fis4 r8 r4.
    \stemDown fis4 r8 r4. \stemDown eis4 r8 r4. \stemDown fis4 r8 r4.
    R2.*3 \stemUp cis4 ( _\p \stemDown eis8 \stemDown gis4 \stemUp cis,8
    ) \stemUp bis4 r8 r4 \stemUp bis8 \stemUp cis4 ( \stemDown eis8
    \stemDown gis4 \stemUp cis,8 ) \stemDown d4 r8 r4 \stemDown d8
    \stemUp cis8 r8 \stemUp cis8 \stemUp cis8 [ \stemUp cis8 \stemUp cis8
    ] \stemUp cis8 r8 \stemDown cis'8 _\f \stemDown cis8 [ \stemDown cis8
    \stemDown cis8 ] \stemDown cis4 r8 r4. \stemUp a,2. _\markup{
        \tiny\italic {(} } _\p _\markup{ \tiny\italic {)} } \stemDown d4
    r8 r4. \stemDown d4 r8 r4. \stemDown d4 r8 r4. \stemUp a4 r8 r4.
    \stemUp a4 r8 r4. \stemUp a4 r8 r4. \stemUp a4 r8 r4. \stemDown d4 r8
    r4. \stemDown g4 r8 r4. \stemDown cis4 r8 r4. \stemDown fis,4 r8 r4.
    \stemDown b4 r8 r4. \stemDown e,4 r8 r4. \stemDown a4 r8 r4.
    \stemDown d,8 r8 r8 \stemDown d8 r8 r8 \stemDown d8 r8 r8 \stemDown
    g8 r8 r8 \stemDown a8 r8 r8 \stemUp a,8 r8 r8 \stemDown d4 r8 r4.
    R2.*7 r4 r8 \stemDown e8 -. [ _\f \stemDown gis8 -. \stemDown b8 -.
    ] \stemDown e,4 r8 r4. R2.*4 \stemDown e4 _\p r8 r8 \stemDown e8 -.
    [ \stemDown d8 -. ] \stemUp cis4 r8 r4. R2.*14 \stemDown d8 _\p r8 r8
    \stemDown f8 r8 r8 \stemDown g8 r8 r8 r4. \stemUp c,8 r8 r8
    \stemDown e8 r8 r8 \stemDown f8 r8 r8 r4. \stemUp b,8 r8 r8
    \stemDown d8 r8 r8 \stemDown e8 r8 r8 r4. R2.*10 \stemUp b4 ( _\p
    \stemDown dis8 \stemDown fis4 \stemDown dis8 ) \stemUp b8 r8 r8
    \stemUp b8 r8 r8 \stemDown e8 r8 r8 \stemDown gis8 r8 r8 \stemDown
    fis8 r8 r8 \stemUp b,8 r8 r8 \stemDown e8 r8 r8 \stemDown gis8 r8 r8
    \stemDown fis8 r8 r8 \stemUp b,8 r8 r8 \stemDown e4 r8 r4. \stemDown
    e8 [ _\sfp \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown e8
    \stemDown e8 ] \stemDown e4 r8 r4. R2.*2 \stemDown e8 [ _\sfp
    \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8
    ] \stemDown e4 r8 r4. R2.*6 \stemDown f2. ~ \stemDown f2. \stemDown
    e4 r8 r4. r8 \stemDown dis8 ( [ \stemDown e8 ] \stemDown eis8 [
    \stemDown fis8 \stemDown gis8 ) ] \stemDown a4 r8 r4. R2.*7 r8
    \stemDown a8 -. [ _\p \stemDown a8 -. ] _\markup{ \tiny\italic
        {cresc.} } \stemDown a8 -. [ \stemDown a8 -. \stemDown a8 -. ]
    \stemDown e4. ( _\f \stemDown fis8 ) r8 r8 r8 \stemDown d8 -. _\p r8
    r8 \stemDown d8 -. r8 \stemDown e8 -. [ \stemDown e8 -. \stemDown e8
    -. ] \stemDown e8 r8 r8 r8 \stemDown a8 -. [ _\markup{ \tiny\italic
        {cresc.} } \stemDown a8 -. ] \stemDown a8 -. [ \stemDown a8 -.
    \stemDown a8 -. ] \stemDown e4 ( _\f \stemDown eis8 ) \stemDown fis4
    -. r8 r8 \stemDown d8 -. _\p r8 r8 \stemDown e8 -. r8 \stemUp a,8 -.
    [ \stemUp a8 -. \stemUp a8 -. ] \stemUp a8 r8 r8 \stemDown e'2. (
    _\p \stemDown a4 ) r8 r4. \stemDown b2. ( \stemDown e,4 ) r8 r4
    \stemUp b8 -. \stemDown e4 r8 r4 \stemUp b8 -. \stemDown e4 r8 r4.
    R2.*8 \stemDown a4 _\p r8 r4. \stemDown e4 r8 r4. \stemUp a,4
    _\markup{ \tiny\italic {cresc.} } r8 r4. \stemUp a4 r8 r4. \stemUp a4
    r8 r4. R2.*4 \stemUp cis8 [ _\f \stemUp cis8 \stemUp cis8 ] \stemUp
    cis8 [ \stemUp cis8 \stemUp cis8 ] \stemDown d8 [ \stemDown d8
    \stemDown d8 ] \stemDown d8 [ \stemDown d8 \stemDown d8 ] \stemDown
    e8 [ \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown e8
    \stemDown e8 ] \stemUp a,4 r8 r4. R2.*2 \stemDown e'2. ( _\p
    \stemDown a4 ) r8 r4. R2.*3 \stemDown a,8 [ _\f \stemDown a'8
    \stemDown a8 ] \stemDown cis4 ( \stemDown a8 ) \stemDown e8 [
    \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8
    ] \stemDown a,8 [ \stemDown a'8 \stemDown a8 ] \stemDown cis4 (
    \stemDown a8 ) \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown
    e8 [ \stemDown e8 \stemDown e8 ] \stemUp a,4 _\p r8 \stemUp a4 r8
    \stemUp a4 r8 \stemUp a4 r8 \stemUp a4 r8 \stemUp a4 r8 \stemUp a4 r8
    \stemUp a4 r8 \stemUp a4 r8 \stemDown a'4 r8 \stemDown a4 r8
    \stemDown a4 r8 \stemDown a8 -. [ _\f \stemDown cis8 -. \stemDown b8
    -. ] \stemDown a4 r8 \stemDown b4 _\p r8 \stemDown e,4 r8 \stemUp a,8
    -. [ _\f \stemUp cis8 -. \stemUp b8 -. ] \stemUp a4 r8 \stemUp b4
    _\p r8 \stemUp e,4 r8 \stemUp a4 r8 r4. R2.*3 \stemUp a4 r8 r4.
    \stemDown d4 r8 r4. \stemDown dis4. ( \stemDown fis4. ) \stemDown e8
    [ \stemDown e8 \stemDown e8 ] \stemDown e8 r8 r8 \stemDown e8 r8 r8
    \stemDown e8 r8 r8 \stemDown e4 r8 r4. \stemDown e8 [ \stemDown e8
    \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown
    a4 r8 r4. R2.*5 r8 \stemDown d,8 [ \stemDown d8 ] \stemDown d8 [
    \stemDown d8 \stemDown d8 ] \stemDown d8 -. [ r8 \stemDown e8 -. ]
    \stemDown fis8 -. [ r8 \stemDown dis8 -. ] \stemDown e8 [ \stemDown
    e'8 \stemDown e8 ] \stemDown e8 r8 r8 \stemDown e8 [ \stemDown e8
    \stemDown e8 ] \stemDown e8 r8 r8 \stemDown e8 r8 r8 \stemDown e8 r8
    r8 \stemDown e4 r8 r4. R2.*10 \stemDown d,8 [ _\markup{ \tiny\italic
        {cresc.} } \stemDown d8 \stemDown d8 ] \stemDown d8 [ \stemDown
    d8 \stemDown d8 ] \stemDown e8 [ \stemDown e8 \stemDown e8 ]
    \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemUp a,8 _\f \stemDown
    a'8 [ \stemDown a8 ] \stemDown cis4 ( \stemDown a8 ) \stemDown e8 [
    \stemDown e8 \stemDown e8 ] \stemDown e8 [ \stemDown e8 \stemDown e8
    ] \stemDown a,8 [ \stemDown a'8 \stemDown a8 ] \stemDown cis4 (
    \stemDown a8 ) \stemDown e8 [ \stemDown e8 \stemDown e8 ] \stemDown
    e8 [ \stemDown e8 \stemDown e8 ] \stemUp a,4 r8 r4 \stemDown e''8 -.
    \stemDown a,8 -. [ \stemDown cis8 -. \stemDown e,8 -. ] \stemDown a8
    -. [ \stemDown cis,8 -. \stemDown e8 -. ] \stemUp a,4 r8 \stemDown
    a'4 r8 \stemUp a,4 r8 r4. \bar "|."
    }


% The score definition
\score {
    <<
        
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = "1st Flute"
                \set Staff.shortInstrumentName = "Fl.1"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "2nd Flute"
                \set Staff.shortInstrumentName = "Fl.2"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPTwoVoiceOne" {  \PartPTwoVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "1st Bassoon"
                \set Staff.shortInstrumentName = "Bsn.1"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPThreeVoiceOne" {  \PartPThreeVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "2nd Bassoon"
                \set Staff.shortInstrumentName = "Bsn.2"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPFourVoiceOne" {  \PartPFourVoiceOne }
                    >>
                >>
            
            >>
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = "1st Horn in A"
                \set Staff.shortInstrumentName = "A Hn.1"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPFiveVoiceOne" {  \PartPFiveVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "2nd Horn in A"
                \set Staff.shortInstrumentName = "A Hn.2"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPSixVoiceOne" {  \PartPSixVoiceOne }
                    >>
                >>
            
            >>
        \new Staff
        <<
            \set Staff.instrumentName = "Basset-Clarinet in A"
            \set Staff.shortInstrumentName = "Solo Cl."
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPSevenVoiceOne" {  \PartPSevenVoiceOne }
                >>
            >>
        \new StaffGroup
        <<
            \new Staff
            <<
                \set Staff.instrumentName = "Violin 1"
                \set Staff.shortInstrumentName = "Vln. 1"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPEightVoiceOne" {  \PartPEightVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "Violin 2"
                \set Staff.shortInstrumentName = "Vln. 2"
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPNineVoiceOne" {  \PartPNineVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "Viola"
                \set Staff.shortInstrumentName = "Vla."
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPOneZeroVoiceOne" {  \PartPOneZeroVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "Violoncello"
                \set Staff.shortInstrumentName = "Vc."
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPOneOneVoiceOne" {  \PartPOneOneVoiceOne }
                    >>
                >>
            \new Staff
            <<
                \set Staff.instrumentName = "Contrabass"
                \set Staff.shortInstrumentName = "Cb."
                
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "PartPOneTwoVoiceOne" {  \PartPOneTwoVoiceOne }
                    >>
                >>
            
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 120 }
    }

