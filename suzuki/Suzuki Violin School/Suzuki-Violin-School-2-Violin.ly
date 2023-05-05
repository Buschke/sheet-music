\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Violin School"
  subsubtitle = "Volume 2"
  instrument = "Violine"
  composer = ""
  arranger = \markup {"Fingering: " \with-url "https://buschke.com" "Sven Buschke"}
  poet = ""
  meter = ""
  piece = ""
  opus = ""
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 1 / A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key g \major
  \defaultTimeSignature
%  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreAViolin = \relative c'' {
  \globalA
  % Music follows here.
  d2\downbow\f b4.(c8) d2 g, a8(b c d) c4--(b--) a2. r4
  b8\downbow\<(c d e) d4--(d--) g2\> d c4\! b a4.(g8) g2. r4
  b8\mf(a b c) b4--(b--) a2 g c4 b a g f2. r4
  e'8\downbow(ds e fs) e4--(fs--) g2 e fs4 e8 d cs4.(d8) d2. r4
  d2\downbow\f b4.(c8) d2 g, a8(b c d) c4--(b--) a2.r4
  b8\downbow\<( c d e) d4--(d--) \!g2\> d c4\!_"rall." b a4.(g8) g2. r4\fermata
  \bar "|."
}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 2"
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
% Nummer 2 / B
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalB = {
  \key g \major
  \defaultTimeSignature
%  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreBViolin = \relative c'' {
  \global
  % Music follows here.
c
}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 2, Vol. 2"
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
% Nummer 3 / C
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \key g \major
  \defaultTimeSignature
%  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreCViolin = \relative c'' {
  \global
  % Music follows here.
c
}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 3, Vol. 2"
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
% Nummer 4 / D
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalD = {
  \key g \major
  \defaultTimeSignature
%  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreDViolin = \relative c'' {
  \global
  % Music follows here.
c
}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 4, Vol. 2"
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
% Nummer 5 / E
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalE = {
  \key g \major
  \defaultTimeSignature
%  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreEViolin = \relative c'' {
  \global
  % Music follows here.
c
}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 5, Vol. 2"
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
% Nummer 6 / F
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalF = {
  \key g \major
  \defaultTimeSignature
%  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreFViolin = \relative c'' {
  \global
  % Music follows here.
c
}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 6, Vol. 2"
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
% Nummer 7 / G
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalG = {
  \key g \major
  \defaultTimeSignature
%  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreGViolin = \relative c'' {
  \global
  % Music follows here.
c
}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 7, Vol. 2"
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
% Nummer 8 / H
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalH = {
  \key g \major
  \defaultTimeSignature
%  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreHViolin = \relative c'' {
  \global
  % Music follows here.
c
}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 8, Vol. 2"
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
% Nummer 9 / I
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalI = {
  \key g \major
  \defaultTimeSignature
%  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreIViolin = \relative c'' {
  \global
  % Music follows here.
c
}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 9, Vol. 2"
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
% Nummer 10 / J
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalJ = {
  \key g \major
  \defaultTimeSignature
%  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreJViolin = \relative c'' {
  \global
  % Music follows here.
c
}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 10, Vol. 2"
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
% Nummer 11 / K
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalK = {
  \key g \major
  \defaultTimeSignature
%  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreKViolin = \relative c'' {
  \global
  % Music follows here.
c
}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 11, Vol. 2"
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
% Nummer 12 / L
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalL = {
  \key g \major
  \defaultTimeSignature
%  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreLViolin = \relative c'' {
  \global
  % Music follows here.
c
}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 12, Vol. 2"
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
