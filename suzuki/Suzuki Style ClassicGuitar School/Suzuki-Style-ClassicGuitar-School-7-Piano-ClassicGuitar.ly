\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Style Classic Guitar School"
  subsubtitle = "Volume 1"
  instrument = "Konzertgitarre und Piano"
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

scoreARight = \relative c'' {
  \global
  % Music follows here.

}

scoreALeft = \relative c' {
  \global
  % Music follows here.

}

scoreAClassicalGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Klassische Gitarre"
  shortInstrumentName = "Git."
} <<
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreAClassicalGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreAClassicalGuitar
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
      \scoreAClassicalGuitarPart
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreBClassicalGuitar = \relative c' {
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

scoreBClassicalGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Klassische Gitarre"
  shortInstrumentName = "Git."
} <<
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreBClassicalGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreBClassicalGuitar
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
      \scoreBClassicalGuitarPart
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreCClassicalGuitar = \relative c' {
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

scoreCClassicalGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Klassische Gitarre"
  shortInstrumentName = "Git."
} <<
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreCClassicalGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreCClassicalGuitar
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
      \scoreCClassicalGuitarPart
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreDClassicalGuitar = \relative c' {
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

scoreDClassicalGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Klassische Gitarre"
  shortInstrumentName = "Git."
} <<
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreDClassicalGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreDClassicalGuitar
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
      \scoreDClassicalGuitarPart
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreEClassicalGuitar = \relative c' {
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

scoreEClassicalGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Klassische Gitarre"
  shortInstrumentName = "Git."
} <<
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreEClassicalGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreEClassicalGuitar
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
      \scoreEClassicalGuitarPart
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreFClassicalGuitar = \relative c' {
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

scoreFClassicalGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Klassische Gitarre"
  shortInstrumentName = "Git."
} <<
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreFClassicalGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreFClassicalGuitar
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
      \scoreFClassicalGuitarPart
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreGClassicalGuitar = \relative c' {
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

scoreGClassicalGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Klassische Gitarre"
  shortInstrumentName = "Git."
} <<
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreGClassicalGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreGClassicalGuitar
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
      \scoreGClassicalGuitarPart
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreHClassicalGuitar = \relative c' {
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

scoreHClassicalGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Klassische Gitarre"
  shortInstrumentName = "Git."
} <<
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreHClassicalGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreHClassicalGuitar
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
      \scoreHClassicalGuitarPart
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreIClassicalGuitar = \relative c' {
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

scoreIClassicalGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Klassische Gitarre"
  shortInstrumentName = "Git."
} <<
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreIClassicalGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreIClassicalGuitar
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
      \scoreIClassicalGuitarPart
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreJClassicalGuitar = \relative c' {
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

scoreJClassicalGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Klassische Gitarre"
  shortInstrumentName = "Git."
} <<
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreJClassicalGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreJClassicalGuitar
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
      \scoreJClassicalGuitarPart
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreKClassicalGuitar = \relative c' {
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

scoreKClassicalGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Klassische Gitarre"
  shortInstrumentName = "Git."
} <<
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreKClassicalGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreKClassicalGuitar
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
      \scoreKClassicalGuitarPart
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreLClassicalGuitar = \relative c' {
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

scoreLClassicalGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Klassische Gitarre"
  shortInstrumentName = "Git."
} <<
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreLClassicalGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreLClassicalGuitar
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
      \scoreLClassicalGuitarPart
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreMClassicalGuitar = \relative c' {
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

scoreMClassicalGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Klassische Gitarre"
  shortInstrumentName = "Git."
} <<
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreMClassicalGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreMClassicalGuitar
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
      \scoreMClassicalGuitarPart
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreNClassicalGuitar = \relative c' {
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

scoreNClassicalGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Klassische Gitarre"
  shortInstrumentName = "Git."
} <<
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreNClassicalGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreNClassicalGuitar
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
      \scoreNClassicalGuitarPart
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreOClassicalGuitar = \relative c' {
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

scoreOClassicalGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Klassische Gitarre"
  shortInstrumentName = "Git."
} <<
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreOClassicalGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreOClassicalGuitar
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
      \scoreOClassicalGuitarPart
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scorePClassicalGuitar = \relative c' {
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

scorePClassicalGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Klassische Gitarre"
  shortInstrumentName = "Git."
} <<
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scorePClassicalGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scorePClassicalGuitar
>>

scorePPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scorePRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scorePLeft }
>>

\bookpart {
  \score {
    <<
      \scorePClassicalGuitarPart
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreQClassicalGuitar = \relative c' {
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

scoreQClassicalGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Klassische Gitarre"
  shortInstrumentName = "Git."
} <<
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreQClassicalGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreQClassicalGuitar
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
      \scoreQClassicalGuitarPart
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreRClassicalGuitar = \relative c' {
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

scoreRClassicalGuitarPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Klassische Gitarre"
  shortInstrumentName = "Git."
} <<
  \new Staff \with {
    midiInstrument = "acoustic guitar (nylon)"
    \magnifyStaff #5/7
  } { \clef "treble_8" \scoreRClassicalGuitar }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
    \magnifyStaff #5/7
  } \scoreRClassicalGuitar
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
      \scoreRClassicalGuitarPart
      \scoreRPianoPart
    >>
    \layout { }
    \midi { }
  }
}
