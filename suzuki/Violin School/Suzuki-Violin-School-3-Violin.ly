\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Violin School"
  subsubtitle = "Volume 3"
  instrument = "Violine"
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
  \key g \major
  \defaultTimeSignature
%  \numericTimeSignature
  \time 4/4
  \tempo "Maestoso" 4=100
}

scoreAViolin = \relative c'' {
  \global
  % Music follows here.

}

\bookpart {
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

}

\bookpart {
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

}

\bookpart {
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

}

\bookpart {
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

}

\bookpart {
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

}

\bookpart {
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

}

\bookpart {
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

}

\bookpart {
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

}

\bookpart {
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

}

\bookpart {
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

}

\bookpart {
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

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 3"
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
