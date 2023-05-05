\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Style Trumpet School"
  subsubtitle = "Volume 1"
  instrument = "Trumpet"
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
  \time 4/4
  \tempo "Allegro" 4=100
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

scoreATrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreATrumpetBb
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

scoreBTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreBTrumpetBb
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

scoreCTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreCTrumpetBb
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

scoreDTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreDTrumpetBb
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

scoreETrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreETrumpetBb
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

scoreFTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreFTrumpetBb
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

scoreGTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreGTrumpetBb
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

scoreHTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreHTrumpetBb
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

scoreITrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreITrumpetBb
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

scoreJTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreJTrumpetBb
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

scoreKTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreKTrumpetBb
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

scoreLTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreLTrumpetBb
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 13 / M
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalM = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreMTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreMTrumpetBb
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

scoreNTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreNTrumpetBb
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

scoreOTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreOTrumpetBb
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

scorePTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scorePTrumpetBb
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

scoreQTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreQTrumpetBb
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 18 / R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalR = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreRTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 1"
  tagline = ""
}
\score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreRTrumpetBb
    \layout { }
    \midi { }
  }
}
