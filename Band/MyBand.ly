\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "n"
  title = "n"
  subtitle = "n"
  subsubtitle = "n"
  instrument = "n"
  composer = "n"
  arranger = "n"
  poet = "n"
  meter = "n"
  piece = "n"
  opus = "n"
  copyright = "n"
  tagline = "n"
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

scoreAChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreAMelody = \relative c'' {
  \global
  % Music follows here.
  c
}

scoreAAccRight = \relative c' {
  \global
  % Music follows here.

}

scoreAAccLeft = \relative c {
  \global
  % Music follows here.

}

scoreAVerse = \lyricmode {
  % Lyrics follow here.

}

scoreAElectricGuitarI = \relative c' {
  \global
  % Music follows here.

}

scoreAElectricGuitarII = \relative c' {
  \global
  % Music follows here.

}

scoreAElectricBass = \relative c, {
  \global
  % Music follows here.

}

scoreADrum = \drummode {
  \global
  % Drums follow here.

}

scoreALeadSheetPart = <<
  \new ChordNames \scoreAChordNames
  \new FretBoards \scoreAChordNames
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "melody" \with {
        \consists "Ambitus_engraver"
      } { \voiceOne \scoreAMelody }
      \new Voice { \voiceTwo \scoreAAccRight }
    >>
    \new Lyrics \lyricsto "melody" \scoreAVerse
    \new Staff { \clef bass \scoreAAccLeft }
  >>
>>

scoreAElectricGuitarIPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar I"
  shortInstrumentName = "E.Gt. I"
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
  } { \clef "treble_8" \scoreAElectricGuitarI }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
  } \scoreAElectricGuitarI
>>

scoreAElectricGuitarIIPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar II"
  shortInstrumentName = "E.Gt. II"
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
  } { \clef "treble_8" \scoreAElectricGuitarII }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
  } \scoreAElectricGuitarII
>>

scoreAElectricBassPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric bass"
  shortInstrumentName = "E.Bs."
} <<
  \new Staff \with {
    midiInstrument = "electric bass (finger)"
  } { \clef "bass_8" \scoreAElectricBass }
  \new TabStaff \with {
    stringTunings = #bass-tuning
  } \scoreAElectricBass
>>

scoreADrumsPart = \new DrumStaff \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Drums"
  shortInstrumentName = "Dr."
} \scoreADrum

\bookpart {
  \score {
    <<
      \scoreALeadSheetPart
      \scoreAElectricGuitarIPart
      \scoreAElectricGuitarIIPart
      \scoreAElectricBassPart
      \scoreADrumsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreBChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreBMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreBAccRight = \relative c' {
  \global
  % Music follows here.

}

scoreBAccLeft = \relative c {
  \global
  % Music follows here.

}

scoreBVerse = \lyricmode {
  % Lyrics follow here.

}

scoreBElectricGuitarI = \relative c' {
  \global
  % Music follows here.

}

scoreBElectricGuitarII = \relative c' {
  \global
  % Music follows here.

}

scoreBElectricBass = \relative c, {
  \global
  % Music follows here.

}

scoreBDrum = \drummode {
  \global
  % Drums follow here.

}

scoreBLeadSheetPart = <<
  \new ChordNames \scoreBChordNames
  \new FretBoards \scoreBChordNames
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "melody" \with {
        \consists "Ambitus_engraver"
      } { \voiceOne \scoreBMelody }
      \new Voice { \voiceTwo \scoreBAccRight }
    >>
    \new Lyrics \lyricsto "melody" \scoreBVerse
    \new Staff { \clef bass \scoreBAccLeft }
  >>
>>

scoreBElectricGuitarIPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar I"
  shortInstrumentName = "E.Gt. I"
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
  } { \clef "treble_8" \scoreBElectricGuitarI }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
  } \scoreBElectricGuitarI
>>

scoreBElectricGuitarIIPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar II"
  shortInstrumentName = "E.Gt. II"
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
  } { \clef "treble_8" \scoreBElectricGuitarII }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
  } \scoreBElectricGuitarII
>>

scoreBElectricBassPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric bass"
  shortInstrumentName = "E.Bs."
} <<
  \new Staff \with {
    midiInstrument = "electric bass (finger)"
  } { \clef "bass_8" \scoreBElectricBass }
  \new TabStaff \with {
    stringTunings = #bass-tuning
  } \scoreBElectricBass
>>

scoreBDrumsPart = \new DrumStaff \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Drums"
  shortInstrumentName = "Dr."
} \scoreBDrum

\bookpart {
  \score {
    <<
      \scoreBLeadSheetPart
      \scoreBElectricGuitarIPart
      \scoreBElectricGuitarIIPart
      \scoreBElectricBassPart
      \scoreBDrumsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreCChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreCMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreCAccRight = \relative c' {
  \global
  % Music follows here.

}

scoreCAccLeft = \relative c {
  \global
  % Music follows here.

}

scoreCVerse = \lyricmode {
  % Lyrics follow here.

}

scoreCElectricGuitarI = \relative c' {
  \global
  % Music follows here.

}

scoreCElectricGuitarII = \relative c' {
  \global
  % Music follows here.

}

scoreCElectricBass = \relative c, {
  \global
  % Music follows here.

}

scoreCDrum = \drummode {
  \global
  % Drums follow here.

}

scoreCLeadSheetPart = <<
  \new ChordNames \scoreCChordNames
  \new FretBoards \scoreCChordNames
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "melody" \with {
        \consists "Ambitus_engraver"
      } { \voiceOne \scoreCMelody }
      \new Voice { \voiceTwo \scoreCAccRight }
    >>
    \new Lyrics \lyricsto "melody" \scoreCVerse
    \new Staff { \clef bass \scoreCAccLeft }
  >>
>>

scoreCElectricGuitarIPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar I"
  shortInstrumentName = "E.Gt. I"
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
  } { \clef "treble_8" \scoreCElectricGuitarI }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
  } \scoreCElectricGuitarI
>>

scoreCElectricGuitarIIPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric guitar II"
  shortInstrumentName = "E.Gt. II"
} <<
  \new Staff \with {
    midiInstrument = "electric guitar (clean)"
  } { \clef "treble_8" \scoreCElectricGuitarII }
  \new TabStaff \with {
    stringTunings = #guitar-tuning
  } \scoreCElectricGuitarII
>>

scoreCElectricBassPart = \new StaffGroup \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Electric bass"
  shortInstrumentName = "E.Bs."
} <<
  \new Staff \with {
    midiInstrument = "electric bass (finger)"
  } { \clef "bass_8" \scoreCElectricBass }
  \new TabStaff \with {
    stringTunings = #bass-tuning
  } \scoreCElectricBass
>>

scoreCDrumsPart = \new DrumStaff \with {
  \consists "Instrument_name_engraver"
  instrumentName = "Drums"
  shortInstrumentName = "Dr."
} \scoreCDrum

\bookpart {
  \score {
    <<
      \scoreCLeadSheetPart
      \scoreCElectricGuitarIPart
      \scoreCElectricGuitarIIPart
      \scoreCElectricBassPart
      \scoreCDrumsPart
    >>
    \layout { }
    \midi { }
  }
}
