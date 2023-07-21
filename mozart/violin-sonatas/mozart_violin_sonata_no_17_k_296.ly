\version "2.24.1"

\header {
  dedication = ""
  title = "Violinsonate Nr. 17"
  subtitle = "C-Dur"
  subsubtitle = "n"
  instrument = "Klavier und Geige"
  composer = "Wolfgang Amadeus Mozart"
  arranger = "Satz: Sven Buschke"
  poet = "n"
  meter = "n"
  piece = "n"
  opus = "KV 296"
  copyright = "n"
  tagline = "n"
}

global = {
  \key c \major
  \time 4/4
  \tempo "Andante"
}

scoreAViolin = \relative c'' {
  \global
  % Music follows here.
  c
}

scoreARight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreALeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreAViolinPart = \new Staff \with {
  instrumentName = "Violin"
  midiInstrument = "violin"
} \scoreAViolin

scoreAPianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreARight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreALeft }
>>

scoreBViolin = \relative c'' {
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

scoreBViolinPart = \new Staff \with {
  instrumentName = "Violin"
  midiInstrument = "violin"
} \scoreBViolin

scoreBPianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreBRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreBLeft }
>>

scoreCViolin = \relative c'' {
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

scoreCViolinPart = \new Staff \with {
  instrumentName = "Violin"
  midiInstrument = "violin"
} \scoreCViolin

scoreCPianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreCRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreCLeft }
>>

\book {
  \bookOutputSuffix "Piano_Violine"
  \bookpart {
    \score {
      <<
        \scoreAViolinPart
        \scoreAPianoPart
      >>
      \layout { }
      \midi {
        \tempo 4=100
      }
    }
  }
  \bookpart {
    \score {
      <<
        \scoreBViolinPart
        \scoreBPianoPart
      >>
      \layout { }
      \midi {
        \tempo 4=100
      }
    }
  }
  \bookpart {
    \score {
      <<
        \scoreCViolinPart
        \scoreCPianoPart
      >>
      \layout { }
      \midi {
        \tempo 4=100
      }
    }
  }
}

scoreDViolin = \relative c'' {
%   \global
  % Music follows here.
    \scoreAViolin
}

scoreEViolin = \relative c'' {
  \global
  % Music follows here.
  
}

scoreFViolin = \relative c'' {
  \global
  % Music follows here.
  
}

\book {
  \bookOutputSuffix "Violine"
  \bookpart {
    \score {
      \new Staff \with {
        instrumentName = "Violin"
        midiInstrument = "violin"
      } \scoreDViolin
      \layout { }
      \midi {
        \tempo 4=100
      }
    }
  }
  \bookpart {
    \score {
      \new Staff \with {
        instrumentName = "Violin"
        midiInstrument = "violin"
      } \scoreEViolin
      \layout { }
      \midi {
        \tempo 4=100
      }
    }
  }
  \bookpart {
    \score {
      \new Staff \with {
        instrumentName = "Violin"
        midiInstrument = "violin"
      } \scoreFViolin
      \layout { }
      \midi {
        \tempo 4=100
      }
    }
  }
}
