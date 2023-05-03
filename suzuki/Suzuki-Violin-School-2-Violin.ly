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
