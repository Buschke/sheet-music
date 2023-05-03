\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Violin School"
  subsubtitle = "Volume 1"
  instrument = "Violine"
  composer = ""
  arranger = \markup {"Fingering: " \with-url "https://buschke.com" "Sven Buschke"}
  poet = ""
  meter = ""
  piece = ""
  opus = "No. 1"
  copyright = \markup {"© Fingering, 03.05.2023: " \with-url "https://buschke.com" "Sven Buschke"}
  tagline = ""
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreAViolin = \relative c'' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreAViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreBViolin = \relative c'' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreBViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreCViolin = \relative c'' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreCViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreDViolin = \relative c'' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreDViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreEViolin = \relative c'' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreEViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreFViolin = \relative c'' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreFViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreGViolin = \relative c'' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreGViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreHViolin = \relative c'' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreHViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreIViolin = \relative c'' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreIViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreJViolin = \relative c'' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreJViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreKViolin = \relative c'' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreKViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreLViolin = \relative c'' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreLViolin
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
  \time 3/4
  \tempo "Allegretto" 2.=66
}

scoreMViolin = \relative c'' {
  \globalM
  % Music follows here.
  \repeat volta 2 {
  d4\mf-.\downbow d-.(d-.) b a8 b g4 a d-.(c-.) b2 a4
  d c8 b a g e'4 c8 b a g f4 e8 d f4
  } \alternative { { g2. } { g2. } }
  \repeat volta 2 {
  b4\p\downbow e2 cs4 b8 c a4 d e fs e8 d cs b a4
  a'\downbow\mf g8 fs e d b'4\upbow g8 fs e d cs4 a cs d2.
  d4\p c8 b a4 b a8 b g4 c2 8 b a2.
  d4 c8 b a g e'4 c8 b a g f4 e8 d f4 g2.
  }
}

\bookpart {
\header {
  title = "Minuet 1"
  composer = "Johann Sebastian Bach"
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 13, Vol. 1"
  tagline = ""
}
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreMViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 14 / N
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalN = {
  \key g \major
  %\numericTimeSignature
  \time 3/4
  \tempo "Andantino" 2.=50
}

scoreNViolin = \relative c'' {
  \globalN
  % Music follows here.
  \repeat volta 2 {
  g8--\f\downbow b-- d-- g-- a,-- fs'-- g4-.-- g,-.(g-.)
  g8-- b-- d-- g-- a,-- fs'-- g4-.-- g,-.(g-.)
  e'-.-5 e-.-4 e8-3(g d4-.) d-. d8 g c,4 d8-4 c b c a2.
  g8--\f\downbow b-- d-- g-- a,-- fs'-- g4-.-- g,-.(g-.)
  g8-- b-- d-- g-- a,-- fs'-- g4-.-- g,-.(g-.)
  e'---5 d8 c b a d4---5 c8 b a g \tuplet 3/2 {a8(b c)} d,4-.(fs-.) g2.
  }
  \repeat volta 2 {
    g8-3\p\downbow a b a g fs g4 e-.(e-.)
    g'8 fs e g fs e fs4 b,-.(b-.) g'8 fs e g fs e fs4 b,-.(e-.) \tuplet 3/2 {fs8(g a)} b,4-.(ds-.) e ds8 e fs4
  g g8 fs e d e4 e8 d c b c4 c8 b a g fs4 e8 fs d4 a'\downbow(d,) d-. b'(d,) d-. c' d8 c b c a2.
  g8--\f\downbow b-- d-- g-- a,-- fs'-- g4-.-- g,-.(g-.)
  g8-- b-- d-- g-- a,-- fs'-- g4-.-- g,-.(g-.)
  e' d8 c b a d4 c8 b a g \tuplet 3/2 {a(b c)} d,4-.( fs-.) g2.
  }
}

\bookpart {
\header {
  title = "Minuet 2"
  composer = "Johann Sebastian Bach"
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 14, Vol. 1"
  tagline = ""
}
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreNViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 15 / O
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalO = {
  \key g \major
  \time 3/4
  \tempo "Allegretto" 2. = 66
%  \key c \major
%  \time 4/4
%  \tempo "Andante" 4=100
}

scoreOViolin = \relative c'' {
  \globalO
  % Music follows here.
        \repeat volta 2 {
        d4-3( g,8-3 a-4 b-1 c-2 d4-.-3) g,-.-3 g-.-3
        e'-4( c8-2 d-3 e-4 fs-1 g4-.-2) g,-.-3 g-.-3 c-2( d8-3 c-2 b-1 a-4 b4-1 c8-2 b-1 a-4 g-3
        fs4-2 g8-3 a-4 b-1 g-3 \acciaccatura b-1 a2.-4)
        d4-3( g,8-3 a-4 b-1 c-2 d4-.-3) g,-.-3 g-.-3 e'-4( c8-2 d-3 e-4 fs-1 g4-.-2) g,-.-3 g-.-3
        c-2\( d8-3 c-2 b-1 a-4 b4-1 c8-2 b-1 a-4 g-3 a4-4 b8-1 a-4 g-3 fs-3 g2.-3\)
        }
        \repeat volta 2 {
        b'4 g8 a b g a4 d,8 e fs d g4 e8 fs g d
        cs4 b8 cs a4 a8 b cs d e fs g4 fs e fs a, cs d2. d4 g,8 fs g4 e'4 g,8 fs g4 d' c b a8 g fs g a4 d,8 e fs g a b c4 b a b8 d g,4 fs g2.
        }
}

\bookpart {
\header {
  title = "Minuet 3"
  composer = "Johann Sebastian Bach"
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 15, Vol. 1"
}
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreOViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 16 / P
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalP = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scorePViolin = \relative c'' {
  \globalP
  % Music follows here.
c
}

\bookpart {
\header {
  title = "The Happy Farmer"
  composer = "Robert Schumann"
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 16, Vol. 1"
  tagline = ""
}
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scorePViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 17 / Q
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalQ = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreQViolin = \relative c'' {
  \global
  % Music follows here.
c
}

\bookpart {
\header {
  title = "Gavotte"
  composer = "F.J. Gossec"
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 17, Vol. 1"
  tagline = ""
}
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreQViolin
    \layout { }
    \midi { }
  }
}
