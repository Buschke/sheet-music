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
  copyright = "© Fingering Sven Buschke"
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

scoreLViolin = \relative c'' {
  \global
  % Music follows here.

}

\bookpart {
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

scoreMViolin = \relative c'' {
  \global
  % Music follows here.

}

\bookpart {
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

scoreNViolin = \relative c'' {
  \global
  % Music follows here.

}

\bookpart {
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
  \global
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
        cs4 b8 cs a4 a8 b cs d e fs g4 fs e fs a, cs d2. d4 g,8 fs g4 e'4 g,8 fs g4 d' c b a8 g fs g a4 d,8 e fs g a b c4 b a b8 d g,4 fs <b, d g>2.
        }
}

\bookpart {
\header {
  title = "Minuet 3"
  composer = "Johann Sebastian Bach"
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 15/1"
  copyright = "© Sven Buschke"
  tagline = ""
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

scorePViolin = \relative c'' {
  \global
  % Music follows here.

}

\bookpart {
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

scoreQViolin = \relative c'' {
  \global
  % Music follows here.

}

\bookpart {
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
