\version "2.22.2"
% automatically converted by musicxml2ly from IMSLP630559-PMLP3144-Mozart_-_Clarinet_Concerto-clean.musicxml
\pointAndClickOff

%% additional definitions required by the score:
sfp = #(make-dynamic-script "sfp")

\header {
    title =  "Clarinet Concerto A Major"
    subtitle = "2nd Movement"
    opus = "KV 622"
    composer =  \markup \column {
        \line { "Wolfgang Amadeus Mozart"}
        \line { "(1756-1791)"} }
    }
    tagline = ###f

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
        %skipBars = ##t
        %autoBeaming = ##f
        }
    }

global = {
  \key d \major
  \time 3/4
  \tempo "Adagio" 4 = 60
}

PartPOneVoiceOne =  \relative b'' {
    \clef "treble" \global
    R2.*8  a2. ~   a2.  a4. (
     d8 [  fis,8  a8 ) ]  a8 ( [
     g8 ) ]  fis4 r4  e2 (  fis4 )
     e4 (  a8 ) [  cis8 (  b8
     fis'8 ) ]  a,2 \grace {  cis16 ( }
     b8. ) [  a16 ]  a4 r4 r4 R2.*9
    b4. ( _\f  a8 [  g8  fis8 ) ]  e4
    r4 r4  cis'4. (  b8 [  a8  gis8
    ) ]  fis4 r4 r4 r4  g4. (  fis8 )
     e16 ( [  b'16  g16  e16 ) ]
     d4 \grace {  fis16 ( }  e8. [  d16
    ) ]  d4 r4 r4 R2.*21  a'2. ~ _\f  a8 r8 r4
    r4  d2. ~  d8 r8 r4 r4  cis2. ~
    cis4 r4 r4 ^\fermata R2.*17  b4. ( _\f  a8 [
     g8  fis8 ) ]  e4 r4 r4  cis'4.
    ( _\f  b8 [  a8  gis8 ) ]  fis4
    r4 r4 r4  d4 (  dis4 )  e16 ( [
    b'16  g16  e16 ) ]  d4 \grace {
        fis16 ( }  e8. ) [  d16 ]  d4 r4 r4
    R2.*13  d'2. ~ _\p  d4 r4 r4 \bar "|."
    }

PartPTwoVoiceOne =  \relative gis' {
    \clef "treble"     \time 3/4  \key d \major R2.*8  a4 _\f  d4. (
     fis8 )  fis8 ( [  e8 ) ]  d4 r4
     fis2 (  d8 [  fis8 ) ]  e4 (
     d4 ) r4  cis2 (  d4 )  cis4. (
     e8 [  fis8  d8 ) ]  cis2 \grace
    {  e16 ( }  d8. ) [  cis16 ]  cis4
    r4 r4 R2.*9  g'4. ( _\f  fis8 [  e8
     dis8 ) ]  e4 r4 r4  a4. (  gis8
    [  fis8  eis8 ) ]  fis4 r4 r4 r4
     e4 (  d4  b4  a4  cis4 )
     d4 r4 r4 R2.*21  cis2. ~ _\f  cis8 r8 r4
    r4  gis'2. ~  gis8 r8 r4 r4  g2. ~
     g4 r4 r4 ^\fermata R2.*17  g4. ( _\f
    fis8 [  e8  dis8 ) ]  e4 r4 r4
    a4. ( _\f  gis8 [  fis8  eis8 ) ]
     fis4 r4 r4 r4  bes,4 (  c4  b4
     a4  cis4 )  d4 r4 r4 R2.*13  fis2.
    ~ _\p  fis4 r4 r4 \bar "|."
    }

PartPThreeVoiceOne =  \relative b' {
    \clef "bass" \time 3/4  \key d \major R2.*8  a,2. ~ _\f  a2.
     a2. ~  a2.  a2. ~  a2 (
     d4 )  cis2 (  b4 )  a4 r4 r4
    R2.*8  a2 _\f r4 r4  c4 (  b4 )
    b4. (  a8 [  g8  fis8 ) ]  e8 r8
     d'4 (  cis4 )  cis4. (  b8 [
     a8  g8 ) ]  fis8 ( [  g8 ) ]
     cis,4 (  d4 )  g,4  a4  a4
     d4 r4 r4 R2.*21  e'2. ~ _\f  e8 r8 r4 r4
     d2. ~  d8 r8 r4 r4  e2. ~  e4 r4
    r4 ^\fermata R2.*16  fis4. ( _\f  e8 [  d8
     cis8 ) ]  b8 r8  c4 (  b4 )
     g'4. (  fis8 [  e8  d8 ) ]
     cis8 r8  d4 (  cis4 )  cis8 (
     a4 )  g'8 ( [  fis8  e8 ) ]
     d8. ( [  g16 ) ]  g4. (  fis8 )
     e4 (  a,4  cis4 )  d4 r4 r4
    R2.*13  a2. ~ _\p  a4 r4 r4 \bar "|."
    }

PartPFourVoiceOne =  \relative gis' {
    \clef "bass" \time 3/4  \key d \major R2.*8  d,2. _\f  a4
     d4 r4  d2.  a4  d4 r4
    a'2. ~  a2 (  fis4 )  a2 (  gis4
    )  a4 r4 r4 R2.*9 r4  c4 ( _\f  b8 [
     a8 ) ]  g4. (  fis8 [  e8
     d8 ) ]  cis8 r8  d'4 (  cis8 [
     b8 ) ]  a4. (  g8 [  fis8
     e8 ) ]  d4 (  cis4  d4 )
    g,4  a4  a4  d4 r4 r4 R2.*21  cis'2.
    ~ _\f  cis8 r8 r4 r4  b2. ~  b8 r8 r4 r4
     cis2. ~  cis4 r4 r4 ^\fermata R2.*16  d4.
    ( _\f  cis8 [  b8  a8 ) ]  g8 r8
     c4 (  b8 [  a8 ) ]  g8 ( [
     b8  e8  d8  cis8  b8 )
    ]  a8 r8  d4 (  cis8 [  b8 ) ]
     a8 (  fis4 )  e'8 ( [  d8
     cis8 ) ]  b4 (  bes4  a4 )
     g4 (  a4  a,4 )  d4 r4 r4 R2.*13
     fis2. ~ _\p  fis4 r4 r4 \bar "|."
    }

PartPFiveVoiceOne =  \relative c'' {
    \clef "treble" \time 3/4  \transposition a R2.*8  g4 _\f  c4. (
     e8 )  e8 ( [  d8 ) ]  c4 r4
     g4. (  c8 [  e8  g8 ) ]
    g8 ( [  f8 ) ]  e4 r4  d2 (  e4
    )  d2 (  e4 )  d2. ~  d4 r4 r4
    R2.*8  c2. ~ _\f  c4 r4 r4 R2.*2  g'4. (
     f8 [  e8  f8 ) ]  e8 [
     c8 ]  d4 (  c4 ) r4  e4
     d4  c4 r4 r4 R2.*12  g2. ~ _\p  g2.
    ~  g2. ~  g2. R2.*5  g2. ~ _\f  g8 r8 r4
    r4  d'2. ~  d8 r8 r4 r4  g,2. ~  g4
    r4 r4 ^\fermata R2.*16  c2 _\f r4 R2.  d2 r4 R2.
     g2.  c,2  g4 r4  e'4  d4
     c4 r4 r4 R2.*13  c2. ~ _\p  c4 r4
    \transposition a r4 _\markup{ \bold {muta in A} } \bar "|."
    }

PartPSixVoiceOne =  \relative c' {
    \clef "treble" \time 3/4  \transposition a R2.*8  e4 _\f  e4. (
     g8 )  g4 (  e4 ) r4  e4. (  g8
    [  c8  e8 ) ]  d4 (  c4 ) r4
     g2 (  c4 )  g2 (  c4 )  d2.
     g,4 r4 r4 R2.*8  c,2. ~ _\f  c4 r4 r4 R2.*2
     e'4. (  d8 [  c8  d8 ) ]
     c4  g2 r4  c4  g4  e4 r4 r4
    R2.*12  g,2. ~ _\p  g2. ~  g2. ~  g2.
    R2.*5  g2. ~ _\f  g8 r8 r4 r4  d''2. ~
     d8 r8 r4 r4  g,,2. ~  g4 r4 r4 ^\fermata
    R2.*16  c2 _\f r4 R2.  d'2 r4 R2.  g,2.
     c,2  g'4 r4  c4  g4  e4 r4 r4
    R2.*13  c2. ~ _\p  c4 r4 \transposition a r4 _\markup{
        \bold {muta in A} } \bar "|."
    }

PartPSevenVoiceOne =  \transpose a a {\relative g' {
    \clef "treble" \time 3/4  \key f \major \transposition a  c4 (  f4.
     a8 )  a8 ( [  g8 ) ]  f4 r4
     c4. (  f8 [  a8  c8 ) ]
     c8 ( [  bes8 ) ]  a4 r4  g4. (
     c8 [  a8  c8 ) ]  g4. (
     c8 [  d,8  a'8 ) ]  c,2 \grace
    {  e16 ( }  d8. ) [  c16 ]  c4 r4
    r4 R2.*8  a'4. (  g8 [  f8  e8 )
    ]  d4 r4 r4  bes'4. (  a8 [  g8
     f8 ) ]  e4 r4 r4  c'4. (  bes8
    [  a8  g8 ) ]  f8 ( [  bes8 ) ]
     bes4. (  a8 )  a16 ( [  g16
     bes16  g16 ) ]  f4 \grace {  a16
        ( }  g8. ) [  f16 ]  f4 r4 r4 R2.*8
     a8. ( [  f16 ) ]  c'4. (  a16 [
     f16 ) ]  e4 (  g4 ) r4  f32 ( [
     d32  b32  g32  f32  d32
     b32  g32 ]  f8 ) [  a''8 ( -.
     g8 -.  f8 ) -. ]  d8. ( [  dis16
    ) ]  e4 r4  g4. (  c16 [  b16 ]
     a16 [  g16  f16  e16 ) ]
     e16 ( [  f16  cis16  d16 ) ]
     d4 r4  e8. \turn [  f16 ]  g8.
    \turn [  a16 ]  bes8 [  e,8 ]  g4
    (  f4 ) r4  g,,4  d'''4 ~  d16 ( [
     b16  g16  f16 ) ]  dis16 ( [
     e16  f16  fis16 ]  g16 [
     a16  b16  c16 ]  gis16 [
     a16  f16  d16 ) ]  c4.
     cis8 ( [  d8  g8 ) ]  f8. ( [
     g32  f32 ) ]  e4 r4  g,,4 ~
     g16 [  a32 (  b32 )  c16 -.  b16
    -. ]  a16 ( [  g16  f16  e16 ) ]
    cis4 (  d4 ) r4 \once \omit TupletBracket
    \times 4/6  {
         e16 ( [  d16  c16  d16  e16
         f16 ) ] }
    \once \omit TupletBracket
    \times 4/6  {
         g16 ( [  f16  e16  f16  g16
         a16 ) ] }
     bes16 ( -. [  c16 -.  d16 -.  e,16 ) -.
    ]  g4 (  f4 ) r4  f'4 ~  f32 ( [
    g32  a32  g32  f32  e32  d32
     c32 ) ] \once \omit TupletBracket
    \times 4/6  {
         b16 ( [  a16  g16  f16  e16
         d16 ) ] }
     c8 r8  g'''2  d,,8 r8  a'''2 \once
    \omit TupletBracket
    \times 4/6  {
         g,16 ( [  gis16  a16  bes16
        b16  c16 ) ] }
    \once \omit TupletBracket
    \times 4/6  {
         cis16 ( [  d16  dis16  e16
         f16  fis16 ) ] }
    \once \omit TupletBracket
    \times 4/6  {
         g16 ( [  as16  a16  bes16
         b16  c16 ) ] }
    \afterGrace {  d,2. } {  c16 [  d16 ] }
     c4 r4 r4  c,,4 ~  c32 ( [  e32
     g32  c32  e32  g32  c32
    e32 ) ]  c32 ( [  d32  e32  f32
     g32  a32  b32  c32 ) ]
     b4 r4 r4  d,,,4 ~  d32 ( [  g32
     b32  d32  f32  g32  b32
    d32 ) ]  b32 ( [  c32  d32  e32
     f32  g32  a32  b32 ) ]
     bes4 r4 r4  bes2. ^\fermata  c,4 (
    _\markup{ \tiny\italic {cadenza} }  f4.  a8 )
     a8 ( [  g8 ) ]  f4 r4  c4. (
     f8 [  a8  c8 ) ]  c8 ( [
     bes8 ) ]  a4 r4  g4. (  c8 [
     a8  c8 ) ]  g4. (  c8 [
     d,8  a'8 ) ]  c,2 \grace {  e16 (
        }  d8. ) [  c16 ]  c4 r4 r4
    a'4. (  g8 [  f8  e8 ) ]  d4 r4
    r4  bes'4. (  a8 [  g8  f8 ) ]
     e4 r4 r4  c'4. (  bes8 [  a8
     g8 ) ]  f8 ( [  bes8 ) ]  bes4.
    (  a8 )  a16 ( [  g16  a16
     bes16 ) ]  f4 \grace {  a16 ( }
    g8. ) [  f16 ]  f4 r4 r4 R2.*7 r4 r4  c16
    ( [  e16  f16  a16 ) ]  c4 ~
     c16 ( [  b16  bes16  g16 ) ]
     bes16 ( [  a16 )  a16 (  f16 )
    ]  c'4 ~  c16 ( [  b16  bes16
     g16 ) ]  bes16 ( [  a16 )  a16
    (  f16 ) ]  d32 ( [  fis32  g32
     bes32  cis32  d32  bes32
     g32 ) ]  f4 \grace {  a16 ( }  g8.
    ) [  f16 ]  f4 r4 \once \omit TupletBracket
    \times 4/6  {
         f,,16 ( [  a16  c16  f16  a16
         c16 ) ] }
     c4 ~  c16 ( [  b16  bes16  g16
    ) ]  bes16 ( [  a16 )  a16 (  f16 ) ]
     c4 ~  c16 ( [  b16  bes16  g16 )
    ]  bes16 ( [  a16 )  a16 (  f16 ) ]
     d8  d'''8 ( [  c8  bes8
    a8  g8 ) ] \once \omit TupletBracket
    \times 2/3  {
         f16 ( [  c16  d16 ] }
    \once \omit TupletBracket
    \times 2/3  {
         es16 [  e16  f16 ] }
    \once \omit TupletBracket
    \times 2/3  {
         fis16 [  g16  gis16 ] }
    \once \omit TupletBracket
    \times 2/3  {
         a16 [  bes16  b16 ) ] }
     c16 ( -. [  b16 -.  bes16 -.  a16
    ) -. ] \afterGrace {  g2. } {  f16 [  g16 ] }
     f4 r4  f16 ( [  e16 ) ] \once \omit
    TupletBracket
    \times 2/3  {
         g16 ( [  f16  d16 ) ] }
     c2 (  b8 [  bes8 ) ]  a4 r4 \once
    \omit TupletBracket
    \times 4/6  {
         g,16 ( [  bes16  a16  g16
        bes16  d16 ) ] }
     c4.  c8 ( [  d8  e8 ) ]  f4
     f4  f4  f2 r4 \bar "|."
    }
}

PartPEightVoiceOne =  \relative e {
    \clef "treble" \time 3/4  \key d \major  fis'8 ( [ _\p  a8
    fis8  a8  fis8  a8 ) ]  g8 ( [  a8
     fis8  a8  fis8  a8 ) ]  fis8 ( [
     a8  fis8  a8  fis8  a8 ) ]
     e8 ( [  a8  fis8  a8  fis8
     a8 ) ]  e8 ( [  a8  e8  a8
     fis8  a8 ) ]  e8 ( [  a8  e8
     a8  d,8  fis8 ) ]  cis8 ( [  e8
     cis8  e8  d8  e8 ) ]  cis4 r4 r4
     a'4 ( _\f  d4.  fis8 )  fis8 ( [
     e8 ) ]  d4 r4  a4. (  d8 [
     fis8  a8 ) ]  a8 ( [  g8 ) ]
     fis4 r4  e4.  a8 ( [  fis8
     a8 ) ]  e4.  a8 ( [  b,8
     fis'8 ) ]  a,2 \grace {  cis16 ( }  b8.
    ) [  a16 ]  a8  b8 ( [ _\p  a8  g8
     fis8  e8 ) ]  fis8 ( [  d8  fis8
     d8  fis8  d8 ) ]  d8  b'4 (
     a8 [  g8  fis8 ) ]  g8 ( [
     e8  g8  e8  g8  e8 ) ]  e8
     cis'4 (  b8 [  a8  gis8 ) ]
     a8 ( [  cis,8  b8  e8  cis8
     g'8 ) ]  fis8 ( [  d8  e8  a8
     d,8  a'8 ) ]  e8 ( [  g8  fis8
     a8  cis,8  e8 ) ]  d4 r4 r4 
    fis'4. ( _\f  e8 [  d8  cis8 ) ]
     b4 r4 r4  g'4. (  fis8 [  e8
     d8 ) ]  cis4 r4 r4  a'4. (  g8
    [  fis8  e8 ) ]  d8. ( [  g16 )
    ]  g4. (  fis8 )  e16 ( [  b'16
     g16  e16 ) ]  d4 \grace {  fis16
        ( }  e8. [  d16 ) ]  d8  b8 (
    [ _\p  a8  g8  fis8  e8 ) ] r8
    fis8 [  fis8  fis8  fis8  fis8 ] r8
     e8 [  e8  e8  e8  e8 ] r8
     d4  fis8 ( [  e8  d8 ) ]  b8. (
    [  bis16 ) ]  cis4 r4 r8  a'8 -. [  e8
    -.  a8 -.  e8 -.  a8 -. ] r8  fis8 -. [
     d8 -.  fis8 -.  d8 -.  fis8 -. ] r8
     g8 -. [  e8 -.  g8 -.  e8 -.  g8
    -. ] r8  a8 -. [  fis8 -.  a8 -.  fis8
    -.  a8 -. ] r8  b8 -. [  d,8 -.  b'8 -.
     d,8 -.  b'8 -. ]  cis,8 r8  a'8 r8
     fis8 r8 r8  e8 ( [  cis8  e8  d8
     b8 ) ]  gis'4 (  a8 )  cis,4 (
    d8 )  e8 r8  e'8 -. r8  a8 -. r8 r4
     fis8 -. r8  b8 -. r8 r4  g8 -. r8
     cis8 -. r8 r4  a8 -. r8  d8 -. r8 r4
     d,8 -. r8  b'8 -. r8 r8  cis,,8 [
    e8  a8  cis8  e8 ] r8  d,8 [  fis8
     b8  d8  fis8 ] r8  cis,8 [  cis8
     cis8  cis8  cis8 ]  b16 [ _\markup{
        \tiny\italic {cresc.} }  b16  b16  b16 ]
     b4 :16  b4 :16  a8 _\f  a'4 
    cis4  e8  a8  cis,,8 [ _\p  cis8
     cis8  cis8  cis8 ]  d8 _\f  gis4
     b4  d8  gis8  d,8 [ _\p  d8
     d8  d8  d8 ]  cis8 _\f  g'4
     cis4  e8  g4 r4 r4 ^\fermata
    fis,8 ( [ _\p  a8  fis8  a8  fis8
     a8 ) ]  g8 ( [  a8  fis8  a8
     fis8  a8 ) ]  fis8 ( [  a8  fis8
     a8  fis8  a8 ) ]  e8 ( [  a8
     fis8  a8  fis8  a8 ) ]  e8 ( [
     a8  e8  a8  fis8  a8 ) ]
    e8 ( [  a8  e8  a8  d,8  fis8 ) ]
     cis8 ( [  e8  cis8  e8  d8
     e8 ) ]  cis8  b'8 ( [  a8  g8
     fis8  e8 ) ]  fis8 ( [  d8  fis8
     d8  fis8  d8 ) ]  d8  b'4 (
     a8 [  g8  fis8 ) ]  g8 ( [
     e8  g8  e8  g8  e8 ) ]  e8
     cis'4 (  b8 [  a8  gis8 ) ]
     a8 ( [  cis,8  b8  e8  cis8
     g'8 ) ]  fis8 ( [  d8  e8  a8
     d,8  a'8 ) ]  e8 ( [  g8  fis8
     a8  cis,8  e8 ) ]  d4 r4 r4 
    fis'4. ( _\f  e8 [  d8  cis8 ) ]
     b4 r4 r4  g'4. (  fis8 [  e8
     d8 ) ]  cis4 r4 r4  a'4. (  g8
    [  fis8  e8 ) ]  d8. ( [  g16 )
    ]  g4. (  fis8 )  e16 ( [  b'16
     g16  e16 ) ]  d4 \grace {  fis16
        ( }  e8. ) [  d16 ]  d8  a8 [
    _\p  a8  a8  a8  a8 ] r8  a8 [
     a8  a8  a8  a8 ] r8  a8 [
     a8  a8  a8  a8 ] r8  g8 [
     fis8  fis8  cis8  cis8 ]  d8 [
     d8  d8  d8  d8  d8 ] r8
    e8 [  e8  e8  d8  d8 ] r8  g'8
    [  g8  g8  fis8  fis8 ]
     e4 r8  g,8 ( [  a8  b8 ) ] r8
    fis8 [  fis8  fis8  fis8  fis8 ]
    e16 [  e16  e16  e16 ]  e4 :16  e4
    :16  d4 r4  b8. ( [  g'16 ) ]  fis2
     f8. [  e16 ]  d4 r4  b''8 r8
     a8 r8  fis8 r8  e8 r8  d8 -. r8
     d,8 -. r8  d8 -. r8  d4 r4 r4 \bar "|."
    }

PartPNineVoiceOne =  \relative cis' {
    \clef "treble" \time 3/4  \key d \major  d8 ( [ _\p  a8  d8
     a8  d8  a8 ) ]  cis8 ( [  a8
     d8  a8  d8  a8 ) ]  d8 ( [
     a8  d8  a8  d8  a8 ) ]
    cis8 ( [  a8  d8  a8  d8  a8 ) ]
     cis8 ( [  a8  cis8  a8  d8
     a8 ) ]  cis8 ( [  a8  cis8  a8
     b8  d8 ) ]  a8 ( [  cis8  a8
     cis8  gis8  b8 ) ]  a8  b'8 ( [
    _\f  a8  g8  fis8  e8 ) ]  fis8 (
    [ _\f  a8  fis8  a8  fis8  a8 ) ]
     g8 ( [  a8  fis8  a8  fis8
     a8 ) ]  fis8 ( [  a8  fis8  a8
     fis8  a8 ) ]  e8 ( [  a8  fis8
     a8  fis8  a8 ) ]  e8 ( [  a8
     e8  a8  fis8  a8 ) ]  e8 ( [
     a8  e8  a8  d,8  fis8 ) ]
     cis8 ( [  e8  cis8  e8  d8
     e8 ) ]  cis8  g'8 ( [ _\p  fis8
    e8  d8  cis8 ) ]  d8 ( [  a8  d8
     a8  d8  a8 ) ]  b8  g'4 (
     fis8 [  e8  dis8 ) ]  e8 ( [  b8
     e8  b8  e8  b8 ) ]  cis8
    a'4 (  gis8 [  fis8  eis8 ) ]  fis8 ( [
     a,8 ) ]  b4  a8 ( [  cis8 ) ]  d8
    ( [  b8  a8  e'8  a,8  d8 ) ]
     b8 ( [  e8  d8  fis8  a,8
     cis8 ) ]  d8  b'8 ( [ _\f  a8  g8
     fis8  e8 ) ]  fis8 ( [  d8  fis8
     e8  d8  cis8 ) ]  b8  b'4 (
     a8 [  g8  fis8 ) ]  g8 ( [
     e8  g8  fis8  e8  d8 ) ]
    cis8  cis'4 (  b8 [  a8  gis8 )
    ]  a8 ( [  cis,8  a'8  g8  fis8
     e8 ) ]  d8 ( [  b8  e8  a8
     d,8  a'8 ) ]  b8 ( [  g8  fis8
     a8  g8  a8 ) ]  fis8  g8 ( [ _\p
     fis8  e8  d8  cis8 ) ] r8  d8 [
     d8  d8  d8  d8 ] r8  cis8 [
     cis8  cis8  cis8  cis8 ] r8  b4
     d8 ( [  cis8  b8 ) ]  gis4 (  a4
    ) r4 r8  e'8 -. [  cis8 -.  e8 -.  cis8
    -.  e8 -. ] r8  d8 -. [  b8 -.  d8 -.
     b8 -.  d8 -. ] r8  a8 -. [  cis8 -.
     a8 -.  cis8 -.  a8 -. ] r8  fis'8 -. [
     d8 -.  fis8 -.  d8 -.  fis8 -. ] r8
     d8 -. [  b8 -.  d8 -.  b8 -.  d8
    -. ]  a8 r8  e'8 r8  d8 r8 r8  cis8 ( [
     a8  cis8  b8  gis8 ) ]  d'4 (
     cis8 )  a4 (  b8 )  cis8 -. [
    a'8 -.  e8 -.  a8 -.  e8 -.  a8 -. ] r8
     fis8 -. [  d8 -.  b'8 -.  fis8 -.
     b8 -. ] r8  g8 -. [  e8 -.  cis'8 -.
     g8 -.  cis8 -. ] r8  a8 -. [  fis8 -.
     d'8 -.  a8 -.  d8 -. ] r8  e,8 -. [
     b8 -.  b'8 -.  e,8 -.  d'8 -. ] r8
     a,8 [  cis8  e8  a8  cis8 ] r8
     b,8 [  d8  fis8  b8  d8 ] r8
     a,8 [  a8  a8  a8  a8 ]
    a16 [ _\markup{ \tiny\italic {cresc.} }  a16  a16
     a16 ]  gis2 :16  a8 _\f  e'4  a4
     cis8  e8  a,,8 [ _\p  a8  a8
     a8  a8 ]  b8 _\f  d4  gis4
     b8  d8  gis,,8 [ _\p  gis8
    gis8  gis8  gis8 ]  g8 _\f  e'4
    g4  cis8  e4 r4 r4 ^\fermata  d,8 ( [ _\p
     a8  d8  a8  d8  a8 ) ]
    cis8 ( [  a8  d8  a8  d8  a8 ) ]
     d8 ( [  a8  d8  a8  d8  a8
    ) ]  cis8 ( [  a8  d8  a8  d8
     a8 ) ]  cis8 ( [  a8  cis8  a8
     d8  a8 ) ]  cis8 ( [  a8  cis8
     a8  b8  d8 ) ]  a8 ( [  cis8
     a8  cis8  gis8  b8 ) ]  a8
     g'8 ( [  fis8  e8  d8  cis8 ) ]
     d8 ( [  a8  d8  a8  d8  a8
    ) ]  b8  g'4 (  fis8 [  e8  dis8
    ) ]  e8 ( [  b8  e8  b8  e8
     b8 ) ]  cis8  a'4 (  gis8 [  fis8
     eis8 ) ]  fis8 ( [  a,8 ) ]  b4
    a8 ( [  cis8 ) ]  d8 ( [  b8  a8
    e'8  a,8  d8 ) ]  b8 ( [  e8  d8
     fis8  a,8  cis8 ) ]  d8  b'8 ( [
    _\f  a8  g8  fis8  e8 ) ]  fis8
     fis4  fis4  fis8  g8  b4 (
     a8 [  g8  fis8 ) ]  g8  g4
     g4  gis8  a8  cis4 (  b8 [
     a8  gis8 ) ]  a8  a4  a4
     a8  a8 ( [  g8  d'8 )  d,8 (
     dis8  c'8 ) ]  b8 ( [  e,16  g16
    ) ]  fis8 ( [  a8  g8  a8 ) ]
    fis8  fis8 [ _\p  fis8  fis8  fis8
     fis8 ] r8  g8 [  g8  g8  fis8
     fis8 ] r8  g8 [  g8  g8  fis8
     fis8 ] r8  e8 [  d8  d8  a8
     a8 ]  a8 [  a8  a8  a8  a8
     a8 ] r8  a8 [  a8  a8  a8
     a8 ] r8  e''8 [  e8  e8 
    d8  d8 ]  b4 r8  e,8 ( [  fis8
     g8 ) ] r8  d8 [  d8  d8  d8
     d8 ]  d16 [  d16  d16  d16 ]
     cis4 :16  cis4 :16  d4 r4  g,4
    a2  a8 ( [  ais8 ) ]  b4 r4  g''8 r8
     fis8 r8  d8 r8  g,8 r8  fis8 -. r8
     a,8 -. r8  a8 -. r8  a4 r4 r4 \bar "|."
    }

PartPOneZeroVoiceOne =  \relative a {
    \clef "alto" \time 3/4  \key d \major  a2. ~ _\p  a2.  a2. ~
     a2.  a2. ~  a2  fis4  e2. ~
     e8  g'8 ( [ _\f  fis8  e8
     d8  cis8 ) ]  d8 ( [ _\f  a8
     d8  a8  d8  a8 ) ]  cis8 ( [
     a8  d8  a8  d8  a8 ) ]  d8
    ( [  a8  d8  a8  d8  a8 ) ]
     cis8 ( [  a8  d8  a8  d8 
    a8 ) ]  cis8 ( [  a8  cis8  a8  d8
     a8 ) ]  cis8 ( [  a8  cis8  a8
     b8  d8 ) ]  a8 ( [  cis8  a8
     cis8  gis8  b8 ) ]  a4 r4 r4 
    fis2. _\p  g4  c4 (  b8 [  a8 ) ]
     g2.  a4  d4 (  cis8 [  b8
    ) ]  a4 (  g4  a4 )  b4 (  cis4
     d4 )  g,8 ( [  b8 ) ]  a4. ( 
    g8 )  fis8  g'8 ( [ _\f  fis8  e8
     d8  cis8 ) ]  d8 ( [  fis,8 
    d'8  cis8  b8  a8 ) ]  g8  g'4
    (  fis8 [  e8  dis8 ) ]  e8 ( [
     g,8  b8  a8  g8  fis8 ) ]
     e8  a'4 (  gis8 [  fis8 
    eis8 ) ]  fis8 ( [  a,8  cis8  b8
     a8  g8 ) ]  fis8 ( [  d'8  a8
     e'8  a,8  d8 ) ]  b8 ( [  e8
     a,8  fis'8  cis8  e8 ) ]
     d4 r4 r4 r8  a8 [ _\p  a8  a8 
    a8  a8 ] r8  a8 [  a8  a8  a8
     a8 ] r8  gis4  gis4  gis8 ~  gis8
    [  e8 ]  e4 r4  a2. ~  a2.  a2. ~
     a2.  e2. ~  e8 r8  a8 r8  b8 r8
     e,2.  b'4 (  a8 )  a8 ( [  gis8
     fis8 ) ]  e8 [  e'8 -.  cis8 -.
     e8 -.  cis8 -.  e8 -. ] r8  d8
    -. [  b8 -.  fis'8 -.  d8 -. 
    fis8 -. ] r8  e8 -. [  cis8 -.  g'8 -.
     e8 -.  g8 -. ] r8  fis8 -. [  d8
    -.  a'8 -.  fis8 -.  a8 -. ] r8 
    b,8 -. [  e,8 -.  e'8 -.  b8 -. 
    b'8 -. ]  a,4 r4 r4  fis4 r4 r4 r8  e8 [
     e8  e8  e8  e8 ]  e8 [ _\markup{
        \tiny\italic {cresc.} }  e8  e8  e8 
    d8  d8 ]  cis8 _\f  cis'4  e4
     a8  cis4 r4 r4  gis,8  b4 
    d4  gis8  b4 r4 r4  e,,8  cis'4
     e4  g8  cis4 r4 r4 ^\fermata  a,2.
    ~ _\p  a2.  a2. ~  a2.  a2. ~  a2
     fis4  e2. ~  e4 r4 r4  fis2.  g4
     c4 (  b8 [  a8 ) ]  g2.  a4
     d4 (  cis8 [  b8 ) ]  a4 (
     g4  a4 )  b4 (  cis4  d4 )
     g,8 ( [  b8 ) ]  a4. (  g8 ) 
    fis8  g'8 ( [ _\f  fis8  e8  d8
     cis8 ) ]  a8  a4  a8 ( [  b8
     cis8 ) ]  d8  g4 (  fis8 [
     e8  dis8 ) ]  e8  b4  b8
    ( [  cis8  d8 ) ]  e8  a4 (
     gis8 [  fis8  eis8 ) ]  fis8
     cis4  cis8 ( [  d8  e8 ) ]
     fis8 ( [  g8  d8 )  bes8 (
     c8  a8 ) ]  g8 ( [  b8 ) ]
     a4 (  cis4 )  d8  d8 [ _\p
     d8  d8  d8  d8 ] r8  e8
    [  e8  e8  d8  d8 ] r8 
    e8 [  e8  e8  d8  d8 ] r8
     b8 [  a8  a8  g8  g8 ] 
    fis8 [  fis8  fis8  fis8  fis8 
    fis8 ] r8  g8 [  g8  g8  fis8 
    fis8 ] r8  a'8 [  a8  a8  a8
     a8 ]  g4 r4 r4 r8  a,8 [  a8
     a8  a8  a8 ]  a16 [  a16 
    a16  a16 ]  a4 :16  g4 :16  fis4 r4 r4
    R2. r2  e'8 r8  fis8 r8  a8 r8  a,8
    r8  d8 -. r8  fis,8 -. r8  fis8 -. r8 
    fis4 r4 r4 \bar "|."
    }

PartPOneOneVoiceOne =  \relative a, {
    \clef "bass" \time 3/4  \key d \major  d2. _\p  a4  d4 r4
     d2.  a4  d4 r4  a2. ~  a2
     d4  e4  e4  e4  a,4 r4 r4
     d4 _\f r4  d4  a4  d4 r4
     d4 r4  d4  a4  d4 r4  a'4
    r4 r4  a4 r4  d,4  e4  e4
     e4  a,4 r4 r4  d2. _\p  g4 (
     a4  b4 )  e,2.  a4 ( 
    b4  cis4 )  fis,4 (  g4  a4 )
     b4 (  cis4  d4 )  g,4 
    a4  a,4  d4 r4 r4  d4. ( _\f  e8
     fis4 )  g4 (  a4  b4 )
     e,4  e,8 ( [  fis8  g8  gis8 )
    ]  a4 (  b4  cis4 )  fis,4. (  g8
    [  a8  ais8 ) ]  b4 (  cis4  d4
    )  g,4  a4  a4  d4 r4 r4  d4
    _\p r4 r4  a4 r4 r4  e'2. ~  e4 
    a,8 [  a'8 (  e8  d8 ) ]  cis4 r4
    r4  d4 r4 r4  e4 r4 r4  fis4 r4 r4
     gis,2.  a8 r8  cis8 r8  d8 r8
     e2.  eis4 (  fis8 )  fis,8 ( [
     e8  d8 ) ]  cis4 r4 r4  d4 r4 r4
     e4 r4 r4  fis4 r4 r4  gis2.  a4 r4 r4
     d4 r4 r4  e4 r4 r4  e4 _\markup{
        \tiny\italic {cresc.} }  e4  e4  a4
    _\f  e4  cis4  a4 r4 r4  a'4 
    a,4  a'4  a,4 r4 r4  a'4  e4
     cis4  a4 r4 r4 ^\fermata  d2. _\p  a4
     d4 r4  d2.  a4  d4 r4  a2.
    ~  a2  d4  e4  e4  e4
     a,4 r4 r4  d2.  g4 (  a4
     b4 )  e,2.  a4 (  b4 
    cis4 )  fis,4 (  g4  a4 )  b4 (
     cis4  d4 )  g,4  a4  a,4
     d4 r4 r4  d4. ( _\f  cis8 [  b8
     a8 ) ]  g4 (  a4  b4 )  e4. (
     d8 [  cis8  b8 ) ]  a4 ( 
    b4  cis4 )  fis4. (  e8 [  d8
     cis8 ) ]  b4 (  bes4  a4 )  g4
     a4  a4  d4 r4 r4  cis'2 ( _\p
     d4 )  cis2 (  d4 )  g,4
     a4  a,4  d4 r4 r4  cis2 ( 
    d4 )  cis2 (  d4 )  g,4 r4 r4  a4 r4 r4
     a4  a4  a4  b4 r4 r4 R2. r2  g4
    (  a2. )  d8 -. r8  a8 -. r8  fis8 -.
    r8  d4 r4 r4 \bar "|."
    }

PartPOneTwoVoiceOne =  \relative a, {
    \clef "bass" \time 3/4  \key d \major \transposition c R2.*8  d4 _\f r4
     d4  a4  d4 r4  d4 r4  d4
     a4  d4 r4  a'4 r4 r4  a4 r4
     d,4  e4  e4  e4  a,4 r4
    r4 R2.*8  d4. ( _\f  e8  fis4 ) 
    g4 (  a4  b4 )  e,4  e,8 ( [
     fis8  g8  gis8 ) ]  a4 (  b4
     cis4 )  fis,4. (  g8 [  a8  ais8
    ) ]  b4 (  cis4  d4 )  g,4  a4
     a4  d4 r4 r4  d4 _\p r4 r4  a4 r4 r4
     e'2. ~  e4  a,8 [  a'8 (
     e8  d8 ) ]  cis4 r4 r4  d4 r4 r4
     e4 r4 r4  fis4 r4 r4  gis,2.  a8 r8
     cis8 r8  d8 r8  e2.  eis4 (
     fis8 )  fis8 ( [  e8  d8 ) ]
     cis4 r4 r4  d4 r4 r4  e4 r4 r4 
    fis4 r4 r4  gis2.  a4 r4 r4  d,4 r4 r4
     e4 r4 r4  e4 _\markup{ \tiny\italic {cresc.} }
     e4  e4  a4 _\f  e4  cis4
     a4 r4 r4  a'4  a,4  a'4  a,4
    r4 r4  a'4  e4  cis4  a4 r4 r4
    ^\fermata R2.*16  d4. ( _\f  cis8 [  b8
     a8 ) ]  g4 (  a4  b4 )  e4. (
     d8 [  cis8  b8 ) ]  a4 ( 
    b4  cis4 )  fis4. (  e8 [  d8
     cis8 ) ]  b4 (  bes4  a4 )  g4
     a4  a4  d4 r4 r4 R2.*4  cis2 ( _\p
     d4 )  cis2 (  d4 )  g,4 r4 r4
     a4 r4 r4  a4  a4  a4  b4 r4 r4
    R2. r2  g4 (  a2. )  d8 -. r8  a8 -. r8
     fis8 -. r8  d4 r4 r4 \bar "|."
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
            \set Staff.instrumentName = "Solo A Clarinet"
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
     \midi {\tempo 4 = 120 }
    }

