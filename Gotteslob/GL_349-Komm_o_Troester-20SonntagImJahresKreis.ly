\version "2.22.2"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "Pro Deo"
  title = "Komm, o Tröster"
  subtitle = "Gotteslob"
  subsubtitle = "Gabenbereitung"
  instrument = "Orgel"
  composer = "Bremen"
  arranger = "Sven Buschke"
  poet = "Maria Luise Thurmair, Stephen Langton"
  meter = "1639, 1200 (Veni Sance Spiritus)"
  piece = "5 Strophen"
  opus = "GL 349"
  copyright = "© Sven Buschke, 14. August 2022"
  tagline = "Veni, consolator!"
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key g \major
  \numericTimeSignature
  \time 6/4
  \partial 2.
  \tempo "Maestoso" 4=288
}

chordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  e2:m e4:m b2:m b4:m a2:m e4:m b2.:m b2:m e4:m
  a2:m e4:m e:m a2:m b2.:m b2:m e4:m b2:m e4:m e:m b2 e2.:m
}

melody = \relative c'' {
  \global
  % Music follows here.
  e,2 g4 fs2 b4 a2 g 4 fs2. \breathe
  fs2 g4 a2 b4 b a2 b2. \breathe
  b2 g4 fs2 e4 e ds2 e2.
  \bar "|."
}

accRight = \relative c' {
  \global
  % Music follows here.
  \chordNames
}

accRightSet = \relative c' {
  \global
  % Music follows here.
  <e, g b e>2 <e e b' g'>4 <b d b' fs'>2 <b fs' d' b'>4 <a c' e a>2 <e' b' e g>4 <b b' d fs>2. \breathe
  <b b' d fs>2 <e b' e g>4 <a, c' e a>2 <e' g e' b'>4 <e g e' b'> <a, c' e a>2 <b d' fs b>2. \breathe
  <b d' fs b>2 <e c' e g>4 <b b' d fs>2 <e g b e>4 <e g b e> <fs b b ds>2 <e b' g e'>2.
}

accLeft = \relative c {
  \global
  % Music follows here.
  e2 e4 b2 b4 a2 e'4 b2. b2 e4
  a,2 e'4 e a,2 b2. b2 e4 b2 e4 e fs2 e2.
}

figBass = \figuremode {
  < t >2 < t >4  < d >2 < d >4 < "s" >2 < t >4 < d >2.
  < d >2 < t >4 < "s" >2  < d >4 < d >4 < "s" >2 < d >2. < d >2 < t >4 < d >2 < t >4 < t >4 < D 6 4 >2 < t >2.
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Komm, o Trö -- ster, Heil -- ger Geist,
  Licht, das uns den Tag ver -- heißt,
  Quell, der uns mit Ga -- ben speist,
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  komm und lin -- dre uns -- re Last,
  komm, gib in der Müh -- sal Rast,
  komm, sei bei uns Ar -- men Gast.
}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  Glut, die un -- ser Herz durch -- dringt,
  Bei -- stand, der zum Ziel uns bringt,
  oh -- ne den uns nichts ge -- lingt.
}

verseFour = \lyricmode {
  \set stanza = "4."
  % Lyrics follow here.
  halt uns, wo wir halt -- los gehn,
  ra -- te, wo wir rat -- los stehn,
  sprich du, wo wir sprach -- los flehn.
}

verseFive = \lyricmode {
  \set stanza = "5."
  % Lyrics follow here.
  Hauch, der Le -- ben uns ver -- leiht,
  lenk uns in der Er -- den -- zeit,
  führ uns hin zur Se --lig --keit.
}

rightOne = \relative c'' {
  \global
  % Music follows here.
  \melody
}

rightTwo = \relative c'' {
  \global
  % Music follows here.
  b,2 b4 b2 d4 e2 e4 d2.
  d2 e4 e2 e4 e e2 fs2.fs2 e4 d2 b4 b b2 b2.
}

leftOne = \relative c' {
  \global
  % Music follows here.
  g2 e4 d2 fs4 c'2 b4 b2.
  b2 b4 c2 g4 g4 c2 d2. d2 c4 b2 g4 g4 b2 g2.
}

leftTwo = \relative c' {
  \global
  % Music follows here.
  \accLeft
}

pedal = \relative c {
  \global
  % Music follows here.
  \leftTwo
}

leadSheetPart = <<
  \new Staff \new Voice = "melody" \with { \consists "Ambitus_engraver"} { \melody }
  \new Lyrics \lyricsto "melody" \verseOne
  \new Lyrics \lyricsto "melody" \verseTwo
  \new Lyrics \lyricsto "melody" \verseThree
  \new Lyrics \lyricsto "melody" \verseFour
  \new Lyrics \lyricsto "melody" \verseFive
  \new ChoirStaff <<
    \new ChordNames \chordNames
    \new FretBoards \chordNames
    \new Staff  \accRight
    \new ChordNames \accRightSet
    \new FretBoards \accRightSet
    \new Staff {\clef "treble_8" \accRightSet }
    \new Staff { \clef bass << \new Voice = "b" \with { \consists "Ambitus_engraver"} { \accLeft } \new FiguredBass { \figBass } >>}
  >>
>>

organPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } << \rightOne  \\ \new Voice = "a" \with { \consists "Ambitus_engraver"} { \voiceTwo \rightTwo } >>
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass << \new Voice = "t" \with { \consists "Ambitus_engraver"} { \voiceThree \leftOne } \\ \leftTwo >> }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \pedal }
>>

\score {
  <<
    \leadSheetPart
    \organPart
  >>
  \layout { }
}

\score {
  \repeat unfold 5 {
    <<
      \leadSheetPart
      \organPart
    >>
  }
  \midi { }
}