\version "2.22.2"
\language "english"

\header {
  dedication = "To me"
  title = "Suzuki Cello 1"
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

global = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

globalA = {
  \key g \major
  \time 2/2
  \tempo "Allegro" 2=50
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
    \new Staff \with {
      instrumentName = "Cello"
      shortInstrumentName = "Cl."
      midiInstrument = "cello"
    } { \clef bass \scoreACello }
    \layout { }
    \midi { }
  }
}

scoreBCello = \relative c {
  \global
  % Music follows here.
  
}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Cello"
      shortInstrumentName = "Cl."
      midiInstrument = "cello"
    } { \clef bass \scoreBCello }
    \layout { }
    \midi { }
  }
}

scoreCCello = \relative c {
  \global
  % Music follows here.
  
}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Cello"
      shortInstrumentName = "Cl."
      midiInstrument = "cello"
    } { \clef bass \scoreCCello }
    \layout { }
    \midi { }
  }
}

scoreDCello = \relative c {
  \global
  % Music follows here.
  
}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Cello"
      shortInstrumentName = "Cl."
      midiInstrument = "cello"
    } { \clef bass \scoreDCello }
    \layout { }
    \midi { }
  }
}
