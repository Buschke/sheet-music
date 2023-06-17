\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Style Electric Bass School"
  subsubtitle = "Volume 1"
  instrument = "E-Bass"
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

scoreAElectricBass = \relative c, {
  \global
  % Music follows here.
  c
}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "E-Bass"
      shortInstrumentName = "E.Bs."
    } <<
      \new Staff \with {
        midiInstrument = "electric bass (finger)"
      } { \clef "bass_8" \scoreAElectricBass }
      \new TabStaff \with {
        stringTunings = #bass-tuning
      } \scoreAElectricBass
    >>
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

scoreBElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } <<
      \new Staff \with {
        midiInstrument = "electric bass (finger)"
      } { \clef "bass_8" \scoreBElectricBass }
      \new TabStaff \with {
        stringTunings = #bass-tuning
      } \scoreBElectricBass
    >>
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

scoreCElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } <<
      \new Staff \with {
        midiInstrument = "electric bass (finger)"
      } { \clef "bass_8" \scoreCElectricBass }
      \new TabStaff \with {
        stringTunings = #bass-tuning
      } \scoreCElectricBass
    >>
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

scoreDElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } <<
      \new Staff \with {
        midiInstrument = "electric bass (finger)"
      } { \clef "bass_8" \scoreDElectricBass }
      \new TabStaff \with {
        stringTunings = #bass-tuning
      } \scoreDElectricBass
    >>
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

scoreEElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } <<
      \new Staff \with {
        midiInstrument = "electric bass (finger)"
      } { \clef "bass_8" \scoreEElectricBass }
      \new TabStaff \with {
        stringTunings = #bass-tuning
      } \scoreEElectricBass
    >>
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

scoreFElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } <<
      \new Staff \with {
        midiInstrument = "electric bass (finger)"
      } { \clef "bass_8" \scoreFElectricBass }
      \new TabStaff \with {
        stringTunings = #bass-tuning
      } \scoreFElectricBass
    >>
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

scoreGElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } <<
      \new Staff \with {
        midiInstrument = "electric bass (finger)"
      } { \clef "bass_8" \scoreGElectricBass }
      \new TabStaff \with {
        stringTunings = #bass-tuning
      } \scoreGElectricBass
    >>
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

scoreHElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } <<
      \new Staff \with {
        midiInstrument = "electric bass (finger)"
      } { \clef "bass_8" \scoreHElectricBass }
      \new TabStaff \with {
        stringTunings = #bass-tuning
      } \scoreHElectricBass
    >>
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

scoreIElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } <<
      \new Staff \with {
        midiInstrument = "electric bass (finger)"
      } { \clef "bass_8" \scoreIElectricBass }
      \new TabStaff \with {
        stringTunings = #bass-tuning
      } \scoreIElectricBass
    >>
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

scoreJElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } <<
      \new Staff \with {
        midiInstrument = "electric bass (finger)"
      } { \clef "bass_8" \scoreJElectricBass }
      \new TabStaff \with {
        stringTunings = #bass-tuning
      } \scoreJElectricBass
    >>
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

scoreKElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } <<
      \new Staff \with {
        midiInstrument = "electric bass (finger)"
      } { \clef "bass_8" \scoreKElectricBass }
      \new TabStaff \with {
        stringTunings = #bass-tuning
      } \scoreKElectricBass
    >>
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

scoreLElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } <<
      \new Staff \with {
        midiInstrument = "electric bass (finger)"
      } { \clef "bass_8" \scoreLElectricBass }
      \new TabStaff \with {
        stringTunings = #bass-tuning
      } \scoreLElectricBass
    >>
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

scoreMElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } <<
      \new Staff \with {
        midiInstrument = "electric bass (finger)"
      } { \clef "bass_8" \scoreMElectricBass }
      \new TabStaff \with {
        stringTunings = #bass-tuning
      } \scoreMElectricBass
    >>
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

scoreNElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } <<
      \new Staff \with {
        midiInstrument = "electric bass (finger)"
      } { \clef "bass_8" \scoreNElectricBass }
      \new TabStaff \with {
        stringTunings = #bass-tuning
      } \scoreNElectricBass
    >>
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

scoreOElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } <<
      \new Staff \with {
        midiInstrument = "electric bass (finger)"
      } { \clef "bass_8" \scoreOElectricBass }
      \new TabStaff \with {
        stringTunings = #bass-tuning
      } \scoreOElectricBass
    >>
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

scorePElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } <<
      \new Staff \with {
        midiInstrument = "electric bass (finger)"
      } { \clef "bass_8" \scorePElectricBass }
      \new TabStaff \with {
        stringTunings = #bass-tuning
      } \scorePElectricBass
    >>
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

scoreQElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } <<
      \new Staff \with {
        midiInstrument = "electric bass (finger)"
      } { \clef "bass_8" \scoreQElectricBass }
      \new TabStaff \with {
        stringTunings = #bass-tuning
      } \scoreQElectricBass
    >>
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

scoreRElectricBass = \relative c, {
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
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } <<
      \new Staff \with {
        midiInstrument = "electric bass (finger)"
      } { \clef "bass_8" \scoreRElectricBass }
      \new TabStaff \with {
        stringTunings = #bass-tuning
      } \scoreRElectricBass
    >>
    \layout { }
    \midi { }
  }
}
