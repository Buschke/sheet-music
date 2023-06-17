\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Cello School"
  subsubtitle = "Volume 1"
  instrument = "Cello"
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
  \key d \major
  \defaultTimeSignature
  %  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreACello = \relative c {
  \globalA
  % Music follows here.
  d4-.\downbow\f_\markup{\italic marcato} d-.\upbow a'-. a-. b-. b-. a2-- g4-. g-. fs-. fs-. e-. e-. d2
  a'4-. a-. g-. g-. fs-. fs-. e2-- a4-. a-. g-. g-. fs-. fs-. e2--
  d4-. d-. a'-. a-. b-. b-. a2-- g4-. g-. fs-. fs-. e-. e-. d2--
  \bar "|."
}

\bookpart {
  \header {
    title = "Twinkle, Twinkle, Little Star"
    composer = "Traditional"
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 1, Vol. 1"
    tagline = ""
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 2 / B
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalB = {
  \key g \major
  \defaultTimeSignature
  %  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 3 / C
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \key g \major
  \defaultTimeSignature
  %  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 4 / D
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalD = {
  \key g \major
  \defaultTimeSignature
  %  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 5 / E
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalE = {
  \key g \major
  \defaultTimeSignature
  %  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreECello = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Cello"
      shortInstrumentName = "Cl."
      midiInstrument = "cello"
    } { \clef bass \scoreECello }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 6 / F
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalF = {
  \key g \major
  \defaultTimeSignature
  %  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreFCello = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Cello"
      shortInstrumentName = "Cl."
      midiInstrument = "cello"
    } { \clef bass \scoreFCello }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 7 / G
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalG = {
  \key d \major
  %  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreGCello = \relative c {
  \globalG
  % Music follows here.
  \repeat volta 2 {
    d4.\f\downbow fs8\upbow a4 d b d8 b a2 g4. a8 fs4 d e2 d
    a'4\mf a g g fs a8 fs e2\> a4\p a g g fs a8 fs e2
    d4.\f fs8  a4 d b d8 b a2 g4. a8 fs4 d e2 d
  }
}

\bookpart {
  \header {
    title = "May Song"
    composer = "Folk Song"
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 7, Vol. 1"
    tagline = ""
  }
  \score {
    \new Staff \with {
      instrumentName = "Cello"
      shortInstrumentName = "Cl."
      midiInstrument = "cello"
    } { \clef bass \scoreGCello }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 8 / H
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalH = {
  \key g \major
  \defaultTimeSignature
  %  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreHCello = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Cello"
      shortInstrumentName = "Cl."
      midiInstrument = "cello"
    } { \clef bass \scoreHCello }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 9 / I
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalI = {
  \key g \major
  \defaultTimeSignature
  %  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreICello = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Cello"
      shortInstrumentName = "Cl."
      midiInstrument = "cello"
    } { \clef bass \scoreICello }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 10 / J
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalJ = {
  \key g \major
  \defaultTimeSignature
  %  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreJCello = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Cello"
      shortInstrumentName = "Cl."
      midiInstrument = "cello"
    } { \clef bass \scoreJCello }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 11 / K
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalK = {
  \key g \major
  \defaultTimeSignature
  %  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreKCello = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Cello"
      shortInstrumentName = "Cl."
      midiInstrument = "cello"
    } { \clef bass \scoreKCello }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 12 / L
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalL = {
  \key g \major
  \defaultTimeSignature
  %  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreLCello = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Cello"
      shortInstrumentName = "Cl."
      midiInstrument = "cello"
    } { \clef bass \scoreLCello }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 13 / M
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalM = {
  \key g \major
  \defaultTimeSignature
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

\bookpart {
  \header {
    title = "Rigadoon"
    composer = "Henry Purcell"
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 13, Vol. 1"
    tagline = ""
  }
  \score {
    \new Staff \with {
      instrumentName = "Cello"
      shortInstrumentName = "Cl."
      midiInstrument = "cello"
    } { \clef bass \scoreMCello }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 14 / N
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalN = {
  \key g \major
  \defaultTimeSignature
  %  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreNCello = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Cello"
      shortInstrumentName = "Cl."
      midiInstrument = "cello"
    } { \clef bass \scoreNCello }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 15 / O
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalO = {
  \key g \major
  \defaultTimeSignature
  %  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreOCello = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Cello"
      shortInstrumentName = "Cl."
      midiInstrument = "cello"
    } { \clef bass \scoreOCello }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 16 / P
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalP = {
  \key g \major
  \defaultTimeSignature
  %  \numericTimeSignature
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

\bookpart {
  \header {
    title = "Minuet in C"
    composer = "Johann Sebastian Bach"
    poet = "Bach: 21.03.1685-28.07.1750"
    meter = ""
    piece = ""
    opus = "Suzuki No. 16, Vol. 1"
    tagline = ""
  }
  \score {
    \new Staff \with {
      instrumentName = "Cello"
      shortInstrumentName = "Cl."
      midiInstrument = "cello"
    } { \clef bass \scorePCello }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 17 / Q
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalQ = {
  \key c \major
  \defaultTimeSignature
  %  \numericTimeSignature
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

\bookpart {
  \header {
    title = "Minuet No. 2"
    composer = "Johann Sebastian Bach"
    poet = "Bach: 21.03.1685-28.07.1750"
    meter = ""
    piece = ""
    opus = "Suzuki No. 17, Vol. 1"
    tagline = ""
  }
  \score {
    \new Staff \with {
      instrumentName = "Cello"
      shortInstrumentName = "Cl."
      midiInstrument = "cello"
    } { \clef bass \scoreQCello }
    \layout { }
    \midi { }
  }
}
