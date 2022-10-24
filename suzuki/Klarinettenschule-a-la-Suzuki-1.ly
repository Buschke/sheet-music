\version "2.22.2"
\include "articulate.ly"
\language "english"

\header {
  dedication = "To me"
  title = "Klarinettenschule à la Suzuki 1"
  subtitle = "Cello 1"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "Suzuki"
  arranger = "Satz: Sven Buschke"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "NN"
  copyright = "NN"
  tagline = "NN"
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

globalA = {
  \key g \major
  \time 2/2
  \tempo "Allegro" 2=100
}

scoreACello = \relative c {
  \globalA
  % Music follows here.
  g'4 g fs e
  d2. d4
  e e fs d
  g2 d
  g4 g fs e 
  d2. d4
  e e fs d
  g2. r4
  b8 c d4 b8 c d4
  c b a d,
  g2 a
  b2. r4
  b8 c d4 b8 c d4
  c b a d,
  e2 fs
  g2. r4
  a8 b c4 c2
  b4 a g2
  a8 b c4 b a
  b2 d
  a8 b c4 c2
  b4 a g b
  e,2 fs
  g2. r4
  g g fs e 
  d2. d4
  e e fs d
  g2 d
  g4 g fs e
  d2. d4
  e e fs d
  g2. r4
  \bar "|."
}

scoreARight = \relative c'' {
  \globalA
  % Music follows here.
  <b, d g>4 <b g> <c fs> e
  <d g>2. <b d>4
  <c e>2 <b d>
  <b d> b4( a)
  <b e g>2 <<{fs'4( e)}\\{c2}>>
  d2.( <b d>4)
  <c e>2 <b d>2
  <b d>2. r4
  g'8 a b4 g8 a b4
  a g <<{g fs}\\{c2}>>
  <d g> <c d fs>
  <b d g>2. fs'4
  g8 a b4 g8 a b4
  <<{a4 g}\\{e2}>><d fs>4 d
  <c e>2 <<{fs2}\\{d4 c}>>
  <b d g>2. r4
  fs'8( g) a4 a2
  g4 fs e2
  fs8 g a4 g fs
  g2 b
  fs8( g) a4 a2
  g4 fs e d~
  d c <b d>( <a c>)
  b1
  <<{g'2 fs4 e}\\{<b d>4 d c2}>>
  d2.( <b d>4)
  <c e>2 <b d>
  <b d>1
  b2 c 
  d1
  <c e>2 <b d>
  <b d>2. r4
}

scoreALeft = \relative c' {
  \globalA
  % Music follows here.
  g,4 b a c
  b2. g4
  c a d8 c b a
  g2 g'4 fs
  e g r a,
  b2. g4
  c a d8 c b a
  g4 d' g r
  g,2. g4
  c2 d
  b a
  g4 g b d
  g fs e d
  c2 d 
  c4 a d d,
  g d' g r
  d d' d, d'
  d, d' d, d'
  d, d' d, d'
  g, d' g, d'
  d, d' d, d'
  d, <ds c'> <e b'>2
  a, d
  g4 d g,2
  g4 b a c
  b2. g4
  c a d8 c b a
  g2 g'4 fs
  e g <<{a2~ a4 d, g2}\\{r4 g, b2. g4}>>
  c a d8( c b a
  g4) d' g r
}

scoreACelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
} { \clef bass \scoreACello }

scoreAPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreARight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreALeft }
>>

\bookpart {
\header {
  subtitle = "Rigadoon"
  subsubtitle = "NN"
  composer = "Henry Purcell"
  meter = "NN"
  piece = "NN"
  opus = "NN"
}
  \score {
    <<
      \scoreACelloPart
      \scoreAPianoPart
    >>
    \layout { }
    \midi { }
  }
}

globalB = {
  \key c \major
  \time 4/4
  \tempo "Allegro" 4=100
}

scoreBCello = \relative c {
  \globalB
  % Music follows here.
  
}

scoreBRight = \relative c'' {
  \globalB
  % Music follows here.
  
}

scoreBLeft = \relative c' {
  \globalB
  % Music follows here.
  
}

scoreBCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
} { \clef bass \scoreBCello }

scoreBPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreBRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreBLeft }
>>

\bookpart {
\header {
  subtitle = "Minuet in C"
  subsubtitle = "NN"
  composer = "Johann Sebastian Bach"
  meter = "NN"
  piece = "NN"
  opus = "NN"
}
  \score {
    <<
      \scoreBCelloPart
      \scoreBPianoPart
    >>
    \layout { }
    \midi { }
  }
}

globalC = {
  \key c \major
  \time 3/4
  \tempo "Grazioso" 4=108
}

scoreCCelloA = \relative c {
  \globalC
  % Music follows here.
  g'4-4\downbow g--\upbow( g--\upbow)
  g c8 b c4
  e, d8-0( f-2)
}

scoreCCelloB = \relative c {
  % Music follows here.
  d d d
}

scoreCRightA = \relative c'' {
  \globalC
  % Music follows here.
  <e, g>2 <d f>4
  r2. r r r r r r r r r
}

scoreCRightB = \relative c'' {
  % Music follows here.
  <b d>2
  
}

scoreCLeftA = \relative c' {
  \globalC
  % Music follows here.
  c,2 b4
  c
  r2. r r r r r r r r r
}

scoreCLeftB = \relative c' {
  % Music follows here.
  g,2
}

scoreCCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
} { \clef bass {\repeat volta 2 {\scoreCCelloA} \scoreCCelloB} }

scoreCPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
} {\repeat volta 2 {\scoreCRightA} \scoreCRightB }
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass {\repeat volta 2 {\scoreCLeftA} \scoreCLeftB} }
>>

scoreCCelloPartMidi = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
} { \clef bass {\repeat unfold 2 {\scoreCCelloA} \scoreCCelloB} }

scoreCPianoPartMidi = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
} {\repeat unfold 2 {\scoreCRightA} \scoreCRightB }
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass {\repeat unfold 2 {\scoreCLeftA} \scoreCLeftB} }
>>

\bookpart {
\header {
  subtitle = "Minuet in C"
  subsubtitle = "NN"
  composer = "Johann Sebastian Bach"
  meter = "NN"
  piece = "NN"
  opus = "NN"
}
  \score {
    <<
      \scoreCCelloPart
      \scoreCPianoPart
    >>
    \layout { }
%    \midi { }
  }
  \score {
    \articulate <<
    <<
      \scoreCCelloPartMidi
      \scoreCPianoPartMidi
    >>
    >>
%    \layout { }
    \midi { }
  }
}

globalD = {
  \key c \major
  \time 3/4
  \tempo "Allegro" 4=100
}

scoreDCelloA = \relative c {
  \globalD
  % Music follows here.
  c8---4\f e---1 g---4 c---2 d,---0 b'---1
  c4 c,\upbow c\upbow
  c8 e g c d, b'
  c4 c, c
  a' a a8 c
  g4 g g8 c
  f,4 g8 f e f 
  d2.
  c8 e g c d, b'
  c4 c, c
  c8 e g c d, b'
  c4 c, c
  a' g8 f e d
  g4 f8 e d c
  \tuplet 3/2 {d8( e f)} g,4 b
  c2.
}

scoreDRightA = \relative c'' {
  \globalD
  % Music follows here.
  <e, c'>2\f <d b'>4
  <<{c'2.}\\{c,8 e g c g e}>>
  <e c>2 <d b>4
  <<{c'2.}\\{c,8 e g c g e}>>
  <f a>2<f a>4
  <e g>2<e g>4
  <<{f g8 f e f}\\{d4 b c}>>
  d2.
  <e c'>2<d b'>4
  <<{c'2.}\\{c,8 e g c g e}>>
  <e c'>2<d b'>4
  <<{c'2.}\\{c,8 e g c g e}>>
  <f a c>2.
  <e g c>
  <f a d>4 g <f b>
  <e c'>2.
}

scoreDLeftA = \relative c' {
  \globalD
  % Music follows here.
  c,2 g4
  c,2.
  c'2 g4
  c,2.
  f4 c' f,
  e c' e,
  d g c,
  g'8 a b g a b
  c2 g4
  c,2.
  c'2 g4
  c,2.
  f4 a c
  e, g c
  f,2 g4
  c g c,
}

scoreDCelloB = \relative c {
  % Music follows here.
  c8 d e d c b
  c4 a a 
  c'8 b a c b a
  b4 e, e
  c'8 b a c b a
  b4 e, a
  \tuplet 3/2 {b8 c d} e,4 gs
  a gs8 a b4
  c c8 b a g
  a4 a8 g f e
  f4 f8 e d c
  b4 a8 b g4
  d g, g
  e' g g
  f' g8 f e f
  d2.
  c8 e g c d, b'
  c4 c, c
  c8 e g c d, b'
  c4 c, c
  a' g8 f e d 
  g4 f8 e d c 
  \tuplet 3/2 {d8 e f} e,4 g
  c2.
}

scoreDRightB = \relative c'' {
  % Music follows here.
  c,4 b e
  c a a 
  <c e a>2 <d f>4
  <<{e2.}\\{e8 gs b e b gs}>>
  <c, e a>2<d f>4
  <e gs>2<e a>4
  <<{a2 gs4}\\{f4 e2}>>
  <c e a>2.
  <e g c>
  <f a c>
  <f a d>2<f a d>4
  <f b>2.
  b8 g b g b g
  c g c g c g 
  <f d'>2<e c'>4
  <d b'>2.
  <e c'>2<d b'>4
  <<{c'2.}\\{c,8 e g c g e}>>
  <e c'>2<d b'>4
  <<{c'2.}\\{c,8 e g c g e}>>
  <f a c>2.
  <e g c>
  <f a d>4 g <f g b>4
  <e g c>2.
}

scoreDLeftB = \relative c' {
  % Music follows here.
  a,4 gs e
  a e a,
  c'2 d4
  e e, e
  c'2 d4
  e d c
  d e2
  a,2.
  e4 g c
  f, g a
  d, e f
  g d g,
  g'2 d'4
  g,2 c4
  b g c
  g8 a b g a b
  c2 g4
  c,2.
  c'2 g4
  c,2.
  f4 a c
  e, g c
  f, g g
  c g c,
}

scoreDCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
} { \clef bass {\repeat volta 2 {\scoreDCelloA} \repeat volta 2 {\scoreDCelloB} } }

scoreDPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } {\repeat volta 2 {\scoreDRightA} \repeat volta 2 {\scoreDRightB} }
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass {\repeat volta 2 {\scoreDLeftA} \repeat volta 2 {\scoreDLeftB}} }
>>

scoreDCelloPartMidi = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
} { \clef bass {\repeat unfold 2 {\scoreDCelloA} \repeat unfold 2 {\scoreDCelloB} } }

scoreDPianoPartMidi = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } {\repeat unfold 2 {\scoreDRightA} \repeat unfold 2 {\scoreDRightB} }
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass {\repeat unfold 2 {\scoreDLeftA} \repeat unfold 2 {\scoreDLeftB}} }
>>

\bookpart {
\header {
  subtitle = "Minuet No. 2"
  subsubtitle = "NN"
  composer = "Johann Sebastian Bach"
  meter = "NN"
  piece = "NN"
  opus = "NN"
}
  \score {
    <<
      \scoreDCelloPart
      \scoreDPianoPart
    >>
    \layout { }
%    \midi { }
  }
  \score {
    \articulate
    <<
    <<
      \scoreDCelloPart
      \scoreDPianoPart
    >>
    >>
%    \layout { }
    \midi { }
  }
}
