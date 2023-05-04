\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Cello School"
  subsubtitle = "Volume 1"
  instrument = "Cello und Piano"
  composer = ""
  arranger = \markup {"Fingering: " \with-url "https://buschke.com" "Sven Buschke"}
  poet = ""
  meter = ""
  piece = ""
  opus = "No. 1"
  copyright = \markup {"© Fingering, 03.05.2023: " \with-url "https://buschke.com" "Sven Buschke"}
%  tagline = ""
  % Remove default LilyPond tagline
  tagline = ##f
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 1 / A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreACello = \relative c {
  \globalA
  % Music follows here.
}

scoreARight = \relative c'' {
  \globalA
  % Music follows here.
}

scoreALeft = \relative c' {
  \globalA
  % Music follows here.
}

scoreACelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
  \magnifyStaff #5/7
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
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 1"
  tagline = ""
}  \score {
    <<
      \scoreACelloPart
      \scoreAPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 2 / B
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalB = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreBCello = \relative c {
  \global
  % Music follows here.

}

scoreBRight = \relative c'' {
  \global
  % Music follows here.

}

scoreBLeft = \relative c' {
  \global
  % Music follows here.

}

scoreBCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
  \magnifyStaff #5/7
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
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}  \score {
    <<
      \scoreBCelloPart
      \scoreBPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 3 / C
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreCCello = \relative c {
  \global
  % Music follows here.

}

scoreCRight = \relative c'' {
  \global
  % Music follows here.

}

scoreCLeft = \relative c' {
  \global
  % Music follows here.

}

scoreCCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
  \magnifyStaff #5/7
} { \clef bass \scoreCCello }

scoreCPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreCRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreCLeft }
>>

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}  \score {
    <<
      \scoreCCelloPart
      \scoreCPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 4 / D
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalD = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreDCello = \relative c {
  \global
  % Music follows here.

}

scoreDRight = \relative c'' {
  \global
  % Music follows here.

}

scoreDLeft = \relative c' {
  \global
  % Music follows here.

}

scoreDCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
  \magnifyStaff #5/7
} { \clef bass \scoreDCello }

scoreDPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreDRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreDLeft }
>>

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}  \score {
    <<
      \scoreDCelloPart
      \scoreDPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 5 / E
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalE = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreECello = \relative c {
  \global
  % Music follows here.

}

scoreERight = \relative c'' {
  \global
  % Music follows here.

}

scoreELeft = \relative c' {
  \global
  % Music follows here.

}

scoreECelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
  \magnifyStaff #5/7
} { \clef bass \scoreECello }

scoreEPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreERight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreELeft }
>>

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}  \score {
    <<
      \scoreECelloPart
      \scoreEPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 6 / F
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalF = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreFCello = \relative c {
  \global
  % Music follows here.

}

scoreFRight = \relative c'' {
  \global
  % Music follows here.

}

scoreFLeft = \relative c' {
  \global
  % Music follows here.

}

scoreFCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
  \magnifyStaff #5/7
} { \clef bass \scoreFCello }

scoreFPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreFRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreFLeft }
>>

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}  \score {
    <<
      \scoreFCelloPart
      \scoreFPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 7 / G
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalG = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreGCello = \relative c {
  \global
  % Music follows here.

}

scoreGRight = \relative c'' {
  \global
  % Music follows here.

}

scoreGLeft = \relative c' {
  \global
  % Music follows here.

}

scoreGCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
  \magnifyStaff #5/7
} { \clef bass \scoreGCello }

scoreGPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreGRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreGLeft }
>>

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}  \score {
    <<
      \scoreGCelloPart
      \scoreGPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 8 / H
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalH = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreHCello = \relative c {
  \global
  % Music follows here.

}

scoreHRight = \relative c'' {
  \global
  % Music follows here.

}

scoreHLeft = \relative c' {
  \global
  % Music follows here.

}

scoreHCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
  \magnifyStaff #5/7
} { \clef bass \scoreHCello }

scoreHPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreHRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreHLeft }
>>

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}  \score {
    <<
      \scoreHCelloPart
      \scoreHPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 9 / I
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalI = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreICello = \relative c {
  \global
  % Music follows here.

}

scoreIRight = \relative c'' {
  \global
  % Music follows here.

}

scoreILeft = \relative c' {
  \global
  % Music follows here.

}

scoreICelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
  \magnifyStaff #5/7
} { \clef bass \scoreICello }

scoreIPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreIRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreILeft }
>>

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}  \score {
    <<
      \scoreICelloPart
      \scoreIPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 10 / J
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalJ = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreJCello = \relative c {
  \global
  % Music follows here.

}

scoreJRight = \relative c'' {
  \global
  % Music follows here.

}

scoreJLeft = \relative c' {
  \global
  % Music follows here.

}

scoreJCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
  \magnifyStaff #5/7
} { \clef bass \scoreJCello }

scoreJPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreJRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreJLeft }
>>

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}  \score {
    <<
      \scoreJCelloPart
      \scoreJPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 11 / K
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalK = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreKCello = \relative c {
  \global
  % Music follows here.

}

scoreKRight = \relative c'' {
  \global
  % Music follows here.

}

scoreKLeft = \relative c' {
  \global
  % Music follows here.

}

scoreKCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
  \magnifyStaff #5/7
} { \clef bass \scoreKCello }

scoreKPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreKRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreKLeft }
>>

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}  \score {
    <<
      \scoreKCelloPart
      \scoreKPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 12 / L
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalL = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreLCello = \relative c {
  \global
  % Music follows here.

}

scoreLRight = \relative c'' {
  \global
  % Music follows here.

}

scoreLLeft = \relative c' {
  \global
  % Music follows here.

}

scoreLCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
  \magnifyStaff #5/7
} { \clef bass \scoreLCello }

scoreLPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreLRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreLLeft }
>>

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}  \score {
    <<
      \scoreLCelloPart
      \scoreLPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 13 / M
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalM = {
  \key g \major
%  \numericTimeSignature
  \time 2/2
  \tempo "Allegro" 2=100
}

scoreMCello = \relative c {
  \globalM
  % Music follows here.
  g'4\downbow-4 g fs-3 e-1
  d2.-0 d4
  e-1 e fs d
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

scoreMRight = \relative c'' {
  \globalM
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

scoreMLeft = \relative c' {
  \globalM
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

scoreMCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
  \magnifyStaff #5/7
} { \clef bass \scoreMCello }

scoreMPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreMRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreMLeft }
>>

\bookpart {
\header {
  title = "Rigadoon"
  composer = "Henry Purcell"
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 13, Vol. 1"
  tagline = ""
}  \score {
    <<
      \scoreMCelloPart
      \scoreMPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 14 / N
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalN = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreNCello = \relative c {
  \global
  % Music follows here.

}

scoreNRight = \relative c'' {
  \global
  % Music follows here.

}

scoreNLeft = \relative c' {
  \global
  % Music follows here.

}

scoreNCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
  \magnifyStaff #5/7
} { \clef bass \scoreNCello }

scoreNPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreNRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreNLeft }
>>

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 15, Vol. 1"
  tagline = ""
}  \score {
    <<
      \scoreNCelloPart
      \scoreNPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 15 / O
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalO = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreOCello = \relative c {
  \global
  % Music follows here.

}

scoreORight = \relative c'' {
  \global
  % Music follows here.

}

scoreOLeft = \relative c' {
  \global
  % Music follows here.

}

scoreOCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
  \magnifyStaff #5/7
} { \clef bass \scoreOCello }

scoreOPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreORight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreOLeft }
>>

\bookpart {
\header {
  title = "The Happy Farmer"
  composer = "Robert Schumann"
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 15, Vol. 1"
  tagline = ""
}  \score {
    <<
      \scoreOCelloPart
      \scoreOPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 16 / P
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalP = {
  \key c \major
  %7\numericTimeSignature
  \time 3/4
  \tempo "Grazioso" 4=100
}

scorePCello = \relative c {
  \globalP
  % Music follows here.
  \repeat volta 2 {
  g'4-4\downbow g--\upbow( g--\upbow)
  g c8 b c4
  e, d8-0( f-2) e d |
  e4 d8 e c4 |
  a' a a |
  a g8 f e d
  g4 f8 e d e |
  c2.
  }
  \repeat volta 2 {
  d4 d d |
  d g8 fs g4 |
  d e f |
  e d8 e c4 |
  c' c c |
  c8 b a g fs e |
  d4 g fs |
  g2 r4 |
  c f, f |
  f a8 g f4 |
  d' f, f |
  e8 g f e d4 |
  g g g |
  g a8 b c4 |
  e,8 g f e d e |
  c2.
  }
}

scorePRight = \relative c'' {
  \globalP
  % Music follows here.
  \repeat volta 2 {
  <e, g>2 <d f>4
  <c e>2. |
  <c g>2 <d g>4 |
  <e g>2. |
  <c a'>2. |
  <c a'>2 <d b'>4 |
  <g c>a <f b> |
  <e c'>2.
  }
  \repeat volta 2 {
  <b d>2<c d>4 |
  d2. |
  d4 e <b f'> |
  <c e> d c |
  <c a'>2. |
  <<{a'2.}\\{c,4 d fs}>> |
  <<{g2 fs4}\\{d4 e c}>> |
  <b g'>2. |
  <c f>2 c'4 |
  <f, d'>2. |
  <d g>2 d'4|
  <g, e'>2 <f d'>4 |
  <g c>2 <f b>4 |
  <e c'> <g e'>8 <f d'> <e c'>4~ |
  <e c'> <f a> <d b'> |
  <e c'>2.
  }
}

scorePLeft = \relative c' {
  \globalP
  % Music follows here.
  \repeat volta 2 {
    c,2 b4
  c c8 d e f |
  e2 b4 |
  c d e |
  f2. |
  f, |
  e4 f g |
  c8 g e g c,4
  }
  \repeat volta 2 {
  g'2 a4 |
  b2. |
  b4 c g |
  c, d e |
  a2. |
  fs2 d4 |
  b' c d |
  g8 d b d g,4 |
  a2. |
  a'8 d f, a d,4 |
  b2. |
  c2 d4 |
  e2 d4 |
  c2. |
  g'2 g,4 |
  c,2.

  }
}

scorePCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
  \magnifyStaff #5/7
} { \clef bass \scorePCello }

scorePPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scorePRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scorePLeft }
>>

\bookpart {
\header {
  title = "Minuet in C"
  composer = "Johann Sebastian Bach"
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 16, Vol. 1"
  tagline = ""
}  \score {
    <<
      \scorePCelloPart
      \scorePPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 17 / Q
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalQ = {
  \key c \major
  %\numericTimeSignature
  \time 3/4
  \tempo "Allegro" 4=100
}

scoreQCello = \relative c {
  \globalQ
  % Music follows here.
  \repeat volta 2 {
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
 \repeat volta 2 {
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
}

scoreQRight = \relative c'' {
  \globalQ
  % Music follows here.
  \repeat volta 2 {
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
  \repeat volta 2 {
  c4 b e
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
}

scoreQLeft = \relative c' {
  \globalQ
  % Music follows here.
  \repeat volta 2 {
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
  \repeat volta 2 {
  a'4 gs e
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
}

scoreQCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
  \magnifyStaff #5/7
} { \clef bass \scoreQCello }

scoreQPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreQRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreQLeft }
>>

\bookpart {
\header {
  title = "Minuet No. 2"
  composer = "Johann Sebastian Bach"
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}
\score {
    <<
      \scoreQCelloPart
      \scoreQPianoPart
    >>
    \layout { }
    \midi { }
  }
}
