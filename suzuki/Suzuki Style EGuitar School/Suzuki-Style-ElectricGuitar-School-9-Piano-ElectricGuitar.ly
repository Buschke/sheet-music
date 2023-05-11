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
  \time 4/4
  \tempo "Andante" 4=100
}

scoreAElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

scoreARight = \relative c'' {
  \global
  % Music follows here.

}

scoreALeft = \relative c' {
  \global
  % Music follows here.

}

scoreAElectricGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar"
  shortInstrumentName = "E.Gt."
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreAElectricGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreAElectricGuitar
>>

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
      \scoreAElectricGuitarPart
      \scoreAPianoPart
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
  \time 4/4
  \tempo "Andante" 4=100
}

scoreBElectricGuitar = \relative c' {
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

scoreBElectricGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar"
  shortInstrumentName = "E.Gt."
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreBElectricGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreBElectricGuitar
>>

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
      \scoreBElectricGuitarPart
      \scoreBPianoPart
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
  \time 4/4
  \tempo "Andante" 4=100
}

scoreCElectricGuitar = \relative c' {
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

scoreCElectricGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar"
  shortInstrumentName = "E.Gt."
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreCElectricGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreCElectricGuitar
>>

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
      \scoreCElectricGuitarPart
      \scoreCPianoPart
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
  \time 4/4
  \tempo "Andante" 4=100
}

scoreDElectricGuitar = \relative c' {
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

scoreDElectricGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar"
  shortInstrumentName = "E.Gt."
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreDElectricGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreDElectricGuitar
>>

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
      \scoreDElectricGuitarPart
      \scoreDPianoPart
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
  \time 4/4
  \tempo "Andante" 4=100
}

scoreEElectricGuitar = \relative c' {
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

scoreEElectricGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar"
  shortInstrumentName = "E.Gt."
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreEElectricGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreEElectricGuitar
>>

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
      \scoreEElectricGuitarPart
      \scoreEPianoPart
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
  \time 4/4
  \tempo "Andante" 4=100
}

scoreFElectricGuitar = \relative c' {
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

scoreFElectricGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar"
  shortInstrumentName = "E.Gt."
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreFElectricGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreFElectricGuitar
>>

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
      \scoreFElectricGuitarPart
      \scoreFPianoPart
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
  \time 4/4
  \tempo "Andante" 4=100
}

scoreGElectricGuitar = \relative c' {
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

scoreGElectricGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar"
  shortInstrumentName = "E.Gt."
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreGElectricGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreGElectricGuitar
>>

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
      \scoreGElectricGuitarPart
      \scoreGPianoPart
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
  \time 4/4
  \tempo "Andante" 4=100
}

scoreHElectricGuitar = \relative c' {
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

scoreHElectricGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar"
  shortInstrumentName = "E.Gt."
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreHElectricGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreHElectricGuitar
>>

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
      \scoreHElectricGuitarPart
      \scoreHPianoPart
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
  \time 4/4
  \tempo "Andante" 4=100
}

scoreIElectricGuitar = \relative c' {
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

scoreIElectricGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar"
  shortInstrumentName = "E.Gt."
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreIElectricGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreIElectricGuitar
>>

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
      \scoreIElectricGuitarPart
      \scoreIPianoPart
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
  \time 4/4
  \tempo "Andante" 4=100
}

scoreJElectricGuitar = \relative c' {
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

scoreJElectricGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar"
  shortInstrumentName = "E.Gt."
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreJElectricGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreJElectricGuitar
>>

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
      \scoreJElectricGuitarPart
      \scoreJPianoPart
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
  \time 4/4
  \tempo "Andante" 4=100
}

scoreKElectricGuitar = \relative c' {
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

scoreKElectricGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar"
  shortInstrumentName = "E.Gt."
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreKElectricGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreKElectricGuitar
>>

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
      \scoreKElectricGuitarPart
      \scoreKPianoPart
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
  \time 4/4
  \tempo "Andante" 4=100
}

scoreLElectricGuitar = \relative c' {
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

scoreLElectricGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar"
  shortInstrumentName = "E.Gt."
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreLElectricGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreLElectricGuitar
>>

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
      \scoreLElectricGuitarPart
      \scoreLPianoPart
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
  \time 4/4
  \tempo "Andante" 4=100
}

scoreMElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

scoreMRight = \relative c'' {
  \global
  % Music follows here.

}

scoreMLeft = \relative c' {
  \global
  % Music follows here.

}

scoreMElectricGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar"
  shortInstrumentName = "E.Gt."
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreMElectricGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreMElectricGuitar
>>

scoreMPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreMRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreMLeft }
>>

\bookpart {
  \score {
    <<
      \scoreMElectricGuitarPart
      \scoreMPianoPart
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
  \time 4/4
  \tempo "Andante" 4=100
}

scoreNElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

scoreNRight = \relative c'' {
  \global
  % Music follows here.

}

scoreNLeft = \relative c' {
  \global
  % Music follows here.

}

scoreNElectricGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar"
  shortInstrumentName = "E.Gt."
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreNElectricGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreNElectricGuitar
>>

scoreNPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreNRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreNLeft }
>>

\bookpart {
  \score {
    <<
      \scoreNElectricGuitarPart
      \scoreNPianoPart
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
  \time 4/4
  \tempo "Andante" 4=100
}

scoreOElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

scoreORight = \relative c'' {
  \global
  % Music follows here.

}

scoreOLeft = \relative c' {
  \global
  % Music follows here.

}

scoreOElectricGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar"
  shortInstrumentName = "E.Gt."
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreOElectricGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreOElectricGuitar
>>

scoreOPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreORight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreOLeft }
>>

\bookpart {
  \score {
    <<
      \scoreOElectricGuitarPart
      \scoreOPianoPart
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
  \time 4/4
  \tempo "Andante" 4=100
}

scorePElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

scorePRight = \relative c'' {
  \global
  % Music follows here.

}

scorePLeft = \relative c' {
  \global
  % Music follows here.

}

scorePElectricGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar"
  shortInstrumentName = "E.Gt."
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scorePElectricGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scorePElectricGuitar
>>

scorePPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
    \magnifyStaff #5/7
  } \scorePRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
    \magnifyStaff #5/7
  } { \clef bass \scorePLeft }
>>

\bookpart {
  \score {
    <<
      \scorePElectricGuitarPart
      \scorePPianoPart
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
  \time 4/4
  \tempo "Andante" 4=100
}

scoreQElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

scoreQRight = \relative c'' {
  \global
  % Music follows here.

}

scoreQLeft = \relative c' {
  \global
  % Music follows here.

}

scoreQElectricGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar"
  shortInstrumentName = "E.Gt."
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreQElectricGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreQElectricGuitar
>>

scoreQPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreQRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreQLeft }
>>

\bookpart {
  \score {
    <<
      \scoreQElectricGuitarPart
      \scoreQPianoPart
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
  \time 4/4
  \tempo "Andante" 4=100
}

scoreRElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

scoreRRight = \relative c'' {
  \global
  % Music follows here.

}

scoreRLeft = \relative c' {
  \global
  % Music follows here.
}

scoreRElectricGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar"
  shortInstrumentName = "E.Gt."
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreRElectricGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreRElectricGuitar
>>

scoreRPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreRRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreRLeft }
>>

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
    <<
      \scoreRElectricGuitarPart
      \scoreRPianoPart
    >>
    \layout { }
    \midi { }
  }
}
