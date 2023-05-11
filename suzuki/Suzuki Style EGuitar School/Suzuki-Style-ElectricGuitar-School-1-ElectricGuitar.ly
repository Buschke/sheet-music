\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Style Electric Guitar School"
  subsubtitle = "Volume 1"
  instrument = "E-Gitarre und Piano"
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
% Nummer 1 / A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreAElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } <<
      \new Staff \with {
        midiInstrument = "electric guitar (clean)"
      } { \clef "treble_8" \scoreAElectricGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreAElectricGuitar
    >>
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

scoreBElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } <<
      \new Staff \with {
        midiInstrument = "electric guitar (clean)"
      } { \clef "treble_8" \scoreBElectricGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreBElectricGuitar
    >>
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

scoreCElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } <<
      \new Staff \with {
        midiInstrument = "electric guitar (clean)"
      } { \clef "treble_8" \scoreCElectricGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreCElectricGuitar
    >>
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

scoreDElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } <<
      \new Staff \with {
        midiInstrument = "electric guitar (clean)"
      } { \clef "treble_8" \scoreDElectricGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreDElectricGuitar
    >>
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

scoreEElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } <<
      \new Staff \with {
        midiInstrument = "electric guitar (clean)"
      } { \clef "treble_8" \scoreEElectricGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreEElectricGuitar
    >>
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

scoreFElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } <<
      \new Staff \with {
        midiInstrument = "electric guitar (clean)"
      } { \clef "treble_8" \scoreFElectricGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreFElectricGuitar
    >>
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

scoreGElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } <<
      \new Staff \with {
        midiInstrument = "electric guitar (clean)"
      } { \clef "treble_8" \scoreGElectricGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreGElectricGuitar
    >>
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

scoreHElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } <<
      \new Staff \with {
        midiInstrument = "electric guitar (clean)"
      } { \clef "treble_8" \scoreHElectricGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreHElectricGuitar
    >>
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

scoreIElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } <<
      \new Staff \with {
        midiInstrument = "electric guitar (clean)"
      } { \clef "treble_8" \scoreIElectricGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreIElectricGuitar
    >>
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

scoreJElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } <<
      \new Staff \with {
        midiInstrument = "electric guitar (clean)"
      } { \clef "treble_8" \scoreJElectricGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreJElectricGuitar
    >>
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

scoreKElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } <<
      \new Staff \with {
        midiInstrument = "electric guitar (clean)"
      } { \clef "treble_8" \scoreKElectricGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreKElectricGuitar
    >>
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

scoreLElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } <<
      \new Staff \with {
        midiInstrument = "electric guitar (clean)"
      } { \clef "treble_8" \scoreLElectricGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreLElectricGuitar
    >>
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

scoreMElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } <<
      \new Staff \with {
        midiInstrument = "electric guitar (clean)"
      } { \clef "treble_8" \scoreMElectricGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreMElectricGuitar
    >>
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

scoreNElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } <<
      \new Staff \with {
        midiInstrument = "electric guitar (clean)"
      } { \clef "treble_8" \scoreNElectricGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreNElectricGuitar
    >>
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

scoreOElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } <<
      \new Staff \with {
        midiInstrument = "electric guitar (clean)"
      } { \clef "treble_8" \scoreOElectricGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreOElectricGuitar
    >>
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

scorePElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } <<
      \new Staff \with {
        midiInstrument = "electric guitar (clean)"
      } { \clef "treble_8" \scorePElectricGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scorePElectricGuitar
    >>
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

scoreQElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } <<
      \new Staff \with {
        midiInstrument = "electric guitar (clean)"
      } { \clef "treble_8" \scoreQElectricGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreQElectricGuitar
    >>
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

scoreRElectricGuitar = \relative c' {
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
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } <<
      \new Staff \with {
        midiInstrument = "electric guitar (clean)"
      } { \clef "treble_8" \scoreRElectricGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreRElectricGuitar
    >>
    \layout { }
    \midi { }
  }
}
