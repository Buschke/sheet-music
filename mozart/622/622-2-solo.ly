\version "2.22.2"
% automatically converted by musicxml2ly from IMSLP630559-PMLP3144-Mozart_-_Clarinet_Concerto-clean.musicxml
\pointAndClickOff

%% additional definitions required by the score:
sfp = #(make-dynamic-script "sfp")

\header {
    title =  "Clarinet Concerto A Major - Solo Part"
    subtitle = "2nd Movement"
    subsubtitle = "Transposed from A to Bb Clarinet"
    composer =  \markup \column {
        \line { "Wolfgang Amadeus Mozart"}
        \line { "(1756-1791)"} }
    opus = "KV 622"
    poet = \markup \box { \pad-around #1 {"Bb Clarinet Solo"}}
    tagline = ###f
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
        %skipBars = ##t
        %autoBeaming = ##f
        }
    }

PartPSevenVoiceOne =  \transpose bes a {\relative g' {
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

\score {
\new Staff
        <<
            \set Staff.instrumentName = "Solo Bb Clarinet"
            \set Staff.shortInstrumentName = "Solo Cl."

            \context Staff <<
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPSevenVoiceOne" {  \PartPSevenVoiceOne }
                >>
            >>
  \layout {}
  \midi {}
}