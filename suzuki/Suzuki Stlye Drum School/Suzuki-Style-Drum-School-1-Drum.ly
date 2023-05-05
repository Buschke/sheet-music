\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Style Drum School"
  subsubtitle = "Volume 1"
  instrument = "Schlagzeug"
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
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreADrum = \drummode {
  \global
  % Drums follow here.

}

\bookpart {
  \score {
    \new DrumStaff \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Schlagzeug"
      shortInstrumentName = "Schl."
    } \scoreADrum
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

scoreBDrum = \drummode {
  \global
  % Drums follow here.

}

\bookpart {
  \score {
    \new DrumStaff \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Schlagzeug"
      shortInstrumentName = "Schl."
    } \scoreBDrum
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

scoreCDrum = \drummode {
  \global
  % Drums follow here.

}

\bookpart {
  \score {
    \new DrumStaff \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Schlagzeug"
      shortInstrumentName = "Schl."
    } \scoreCDrum
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

scoreDDrum = \drummode {
  \global
  % Drums follow here.

}

\bookpart {
  \score {
    \new DrumStaff \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Schlagzeug"
      shortInstrumentName = "Schl."
    } \scoreDDrum
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

scoreEDrum = \drummode {
  \global
  % Drums follow here.

}

\bookpart {
  \score {
    \new DrumStaff \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Schlagzeug"
      shortInstrumentName = "Schl."
    } \scoreEDrum
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

scoreFDrum = \drummode {
  \global
  % Drums follow here.

}

\bookpart {
  \score {
    \new DrumStaff \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Schlagzeug"
      shortInstrumentName = "Schl."
    } \scoreFDrum
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

scoreGDrum = \drummode {
  \global
  % Drums follow here.

}

\bookpart {
  \score {
    \new DrumStaff \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Schlagzeug"
      shortInstrumentName = "Schl."
    } \scoreGDrum
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

scoreHDrum = \drummode {
  \global
  % Drums follow here.

}

\bookpart {
  \score {
    \new DrumStaff \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Schlagzeug"
      shortInstrumentName = "Schl."
    } \scoreHDrum
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

scoreIDrum = \drummode {
  \global
  % Drums follow here.

}

\bookpart {
  \score {
    \new DrumStaff \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Schlagzeug"
      shortInstrumentName = "Schl."
    } \scoreIDrum
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

scoreJDrum = \drummode {
  \global
  % Drums follow here.

}

\bookpart {
  \score {
    \new DrumStaff \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Schlagzeug"
      shortInstrumentName = "Schl."
    } \scoreJDrum
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

scoreKDrum = \drummode {
  \global
  % Drums follow here.

}

\bookpart {
  \score {
    \new DrumStaff \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Schlagzeug"
      shortInstrumentName = "Schl."
    } \scoreKDrum
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

scoreLDrum = \drummode {
  \global
  % Drums follow here.

}

\bookpart {
  \score {
    \new DrumStaff \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Schlagzeug"
      shortInstrumentName = "Schl."
    } \scoreLDrum
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

scoreMDrum = \drummode {
  \global
  % Drums follow here.

}

\bookpart {
  \score {
    \new DrumStaff \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Schlagzeug"
      shortInstrumentName = "Schl."
    } \scoreMDrum
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

scoreNDrum = \drummode {
  \global
  % Drums follow here.

}

\bookpart {
  \score {
    \new DrumStaff \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Schlagzeug"
      shortInstrumentName = "Schl."
    } \scoreNDrum
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

scoreODrum = \drummode {
  \global
  % Drums follow here.

}

\bookpart {
  \score {
    \new DrumStaff \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Schlagzeug"
      shortInstrumentName = "Schl."
    } \scoreODrum
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

scorePDrum = \drummode {
  \global
  % Drums follow here.

}

\bookpart {
  \score {
    \new DrumStaff \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Schlagzeug"
      shortInstrumentName = "Schl."
    } \scorePDrum
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

scoreQDrum = \drummode {
  \global
  % Drums follow here.

}

\bookpart {
  \score {
    \new DrumStaff \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Schlagzeug"
      shortInstrumentName = "Schl."
    } \scoreQDrum
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

scoreRDrum = \drummode {
  \global
  % Drums follow here.

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
    \new DrumStaff \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Schlagzeug"
      shortInstrumentName = "Schl."
    } \scoreRDrum
    \layout { }
    \midi { }
  }
}
