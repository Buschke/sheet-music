\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Violin School"
  subsubtitle = "Volume 2"
  instrument = "Violine und Piano"
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
  \defaultTimeSignature
%  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreAViolin = \relative c'' {
  \globalA
  % Music follows here.
  d2\downbow
}

scoreARight = \relative c'' {
  \globalA
  % Music follows here.

}

scoreALeft = \relative c' {
  \globalA
  % Music follows here.

}

scoreAViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
} \scoreAViolin

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
  \score {
    <<
      \scoreAViolinPart
      \scoreAPianoPart
    >>
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

scoreBRight = \relative c'' {
  \global
  % Music follows here.

}

scoreBLeft = \relative c' {
  \global
  % Music follows here.

}

scoreBViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
} \scoreBViolin

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
  \score {
    <<
      \scoreBViolinPart
      \scoreBPianoPart
    >>
    \layout { }
    \midi { }
  }
}

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
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
} \scoreCViolin

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
  \score {
    <<
      \scoreCViolinPart
      \scoreCPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreDViolin = \relative c'' {
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

scoreDViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
} \scoreDViolin

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
  \score {
    <<
      \scoreDViolinPart
      \scoreDPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreEViolin = \relative c'' {
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

scoreEViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
} \scoreEViolin

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
  \score {
    <<
      \scoreEViolinPart
      \scoreEPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreFViolin = \relative c'' {
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

scoreFViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
} \scoreFViolin

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
  \score {
    <<
      \scoreFViolinPart
      \scoreFPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreGViolin = \relative c'' {
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

scoreGViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
} \scoreGViolin

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
  \score {
    <<
      \scoreGViolinPart
      \scoreGPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreHViolin = \relative c'' {
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

scoreHViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
} \scoreHViolin

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
  \score {
    <<
      \scoreHViolinPart
      \scoreHPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreIViolin = \relative c'' {
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

scoreIViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
} \scoreIViolin

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
  \score {
    <<
      \scoreIViolinPart
      \scoreIPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreJViolin = \relative c'' {
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

scoreJViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
} \scoreJViolin

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
  \score {
    <<
      \scoreJViolinPart
      \scoreJPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreKViolin = \relative c'' {
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

scoreKViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
} \scoreKViolin

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
  \score {
    <<
      \scoreKViolinPart
      \scoreKPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreLViolin = \relative c'' {
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

scoreLViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
} \scoreLViolin

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
  \score {
    <<
      \scoreLViolinPart
      \scoreLPianoPart
    >>
    \layout { }
    \midi { }
  }
}
