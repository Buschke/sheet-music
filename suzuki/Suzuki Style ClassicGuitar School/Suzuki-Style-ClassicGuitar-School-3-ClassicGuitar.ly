\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Style Classic Guitar School"
  subsubtitle = "Volume 1"
  instrument = "Konzertgitarre"
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
  \tempo "Andnate" 4=100
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

scoreAClassicalGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Klassische Gitarre"
      shortInstrumentName = "Git."
    } <<
      \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
      } { \clef "treble_8" \scoreAClassicalGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreAClassicalGuitar
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

scoreBClassicalGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Klassische Gitarre"
      shortInstrumentName = "Git."
    } <<
      \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
      } { \clef "treble_8" \scoreBClassicalGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreBClassicalGuitar
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

scoreCClassicalGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Klassische Gitarre"
      shortInstrumentName = "Git."
    } <<
      \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
      } { \clef "treble_8" \scoreCClassicalGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreCClassicalGuitar
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

scoreDClassicalGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Klassische Gitarre"
      shortInstrumentName = "Git."
    } <<
      \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
      } { \clef "treble_8" \scoreDClassicalGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreDClassicalGuitar
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

scoreEClassicalGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Klassische Gitarre"
      shortInstrumentName = "Git."
    } <<
      \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
      } { \clef "treble_8" \scoreEClassicalGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreEClassicalGuitar
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

scoreFClassicalGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Klassische Gitarre"
      shortInstrumentName = "Git."
    } <<
      \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
      } { \clef "treble_8" \scoreFClassicalGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreFClassicalGuitar
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

scoreGClassicalGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Klassische Gitarre"
      shortInstrumentName = "Git."
    } <<
      \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
      } { \clef "treble_8" \scoreGClassicalGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreGClassicalGuitar
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

scoreHClassicalGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Klassische Gitarre"
      shortInstrumentName = "Git."
    } <<
      \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
      } { \clef "treble_8" \scoreHClassicalGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreHClassicalGuitar
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

scoreIClassicalGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Klassische Gitarre"
      shortInstrumentName = "Git."
    } <<
      \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
      } { \clef "treble_8" \scoreIClassicalGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreIClassicalGuitar
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

scoreJClassicalGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Klassische Gitarre"
      shortInstrumentName = "Git."
    } <<
      \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
      } { \clef "treble_8" \scoreJClassicalGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreJClassicalGuitar
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

scoreKClassicalGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Klassische Gitarre"
      shortInstrumentName = "Git."
    } <<
      \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
      } { \clef "treble_8" \scoreKClassicalGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreKClassicalGuitar
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

scoreLClassicalGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Klassische Gitarre"
      shortInstrumentName = "Git."
    } <<
      \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
      } { \clef "treble_8" \scoreLClassicalGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreLClassicalGuitar
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

scoreMClassicalGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Klassische Gitarre"
      shortInstrumentName = "Git."
    } <<
      \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
      } { \clef "treble_8" \scoreMClassicalGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreMClassicalGuitar
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

scoreNClassicalGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Klassische Gitarre"
      shortInstrumentName = "Git."
    } <<
      \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
      } { \clef "treble_8" \scoreNClassicalGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreNClassicalGuitar
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

scoreOClassicalGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Klassische Gitarre"
      shortInstrumentName = "Git."
    } <<
      \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
      } { \clef "treble_8" \scoreOClassicalGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreOClassicalGuitar
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

scorePClassicalGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Klassische Gitarre"
      shortInstrumentName = "Git."
    } <<
      \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
      } { \clef "treble_8" \scorePClassicalGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scorePClassicalGuitar
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

scoreQClassicalGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Klassische Gitarre"
      shortInstrumentName = "Git."
    } <<
      \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
      } { \clef "treble_8" \scoreQClassicalGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreQClassicalGuitar
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

scoreRClassicalGuitar = \relative c' {
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
      instrumentName = "Klassische Gitarre"
      shortInstrumentName = "Git."
    } <<
      \new Staff \with {
        midiInstrument = "acoustic guitar (nylon)"
      } { \clef "treble_8" \scoreRClassicalGuitar }
      \new TabStaff \with {
        stringTunings = #guitar-tuning
      } \scoreRClassicalGuitar
    >>
    \layout { }
    \midi { }
  }
}
