\version "2.22.2"
\language "deutsch"

\header {
  dedication = "NN"
  title = "Kirchenmusiker C-Ausbildung"
  subtitle = "Harmonisieren Lieder Gotteslob"
  subsubtitle = "Hausaufgaben KW 43-2022"
  instrument = "Orgel"
  composer = "Sven Buschke"
  arranger = "Unterricht bei: Andreas Lang"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "NN"
  copyright = "NN"
  tagline = "NN"
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

scoreATenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  c
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Ein
}

scoreARight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreALeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreAPedal = \relative c {
  \global
  % Music follows here.
  
}

scoreAChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreAFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreATenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreATenorVoice }
\addlyrics { \scoreAVerse }

scoreAOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreARight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreALeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreAPedal }
>>

scoreAChordsPart = \new ChordNames \scoreAChordNames

scoreABassFiguresPart = \new FiguredBass \scoreAFigBass

\bookpart {
  \score {
    <<
      \scoreATenorVoicePart
      \scoreAOrganPart
      \scoreAChordsPart
      \scoreABassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

scoreBTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreBRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreBLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreBPedal = \relative c {
  \global
  % Music follows here.
  
}

scoreBChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreBFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreBTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreBTenorVoice }
\addlyrics { \scoreBVerse }

scoreBOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreBRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreBLeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreBPedal }
>>

scoreBChordsPart = \new ChordNames \scoreBChordNames

scoreBBassFiguresPart = \new FiguredBass \scoreBFigBass

\bookpart {
  \score {
    <<
      \scoreBTenorVoicePart
      \scoreBOrganPart
      \scoreBChordsPart
      \scoreBBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

scoreCTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreCRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreCLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreCPedal = \relative c {
  \global
  % Music follows here.
  
}

scoreCChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreCTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreCTenorVoice }
\addlyrics { \scoreCVerse }

scoreCOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreCRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreCLeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreCPedal }
>>

scoreCChordsPart = \new ChordNames \scoreCChordNames

scoreCBassFiguresPart = \new FiguredBass \scoreCFigBass

\bookpart {
  \score {
    <<
      \scoreCTenorVoicePart
      \scoreCOrganPart
      \scoreCChordsPart
      \scoreCBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

scoreDTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreDRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreDLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreDPedal = \relative c {
  \global
  % Music follows here.
  
}

scoreDChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreDFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreDTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreDTenorVoice }
\addlyrics { \scoreDVerse }

scoreDOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreDRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreDLeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreDPedal }
>>

scoreDChordsPart = \new ChordNames \scoreDChordNames

scoreDBassFiguresPart = \new FiguredBass \scoreDFigBass

\bookpart {
  \score {
    <<
      \scoreDTenorVoicePart
      \scoreDOrganPart
      \scoreDChordsPart
      \scoreDBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

scoreETenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreERight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreELeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreEPedal = \relative c {
  \global
  % Music follows here.
  
}

scoreEChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreEFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreETenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreETenorVoice }
\addlyrics { \scoreEVerse }

scoreEOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreERight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreELeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreEPedal }
>>

scoreEChordsPart = \new ChordNames \scoreEChordNames

scoreEBassFiguresPart = \new FiguredBass \scoreEFigBass

\bookpart {
  \score {
    <<
      \scoreETenorVoicePart
      \scoreEOrganPart
      \scoreEChordsPart
      \scoreEBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

scoreFTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreFRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreFLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreFPedal = \relative c {
  \global
  % Music follows here.
  
}

scoreFChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreFFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreFTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreFTenorVoice }
\addlyrics { \scoreFVerse }

scoreFOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreFRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreFLeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreFPedal }
>>

scoreFChordsPart = \new ChordNames \scoreFChordNames

scoreFBassFiguresPart = \new FiguredBass \scoreFFigBass

\bookpart {
  \score {
    <<
      \scoreFTenorVoicePart
      \scoreFOrganPart
      \scoreFChordsPart
      \scoreFBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

scoreGTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreGVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreGRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreGLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreGPedal = \relative c {
  \global
  % Music follows here.
  
}

scoreGChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreGFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreGTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreGTenorVoice }
\addlyrics { \scoreGVerse }

scoreGOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreGRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreGLeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreGPedal }
>>

scoreGChordsPart = \new ChordNames \scoreGChordNames

scoreGBassFiguresPart = \new FiguredBass \scoreGFigBass

\bookpart {
  \score {
    <<
      \scoreGTenorVoicePart
      \scoreGOrganPart
      \scoreGChordsPart
      \scoreGBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

scoreHTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreHVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreHRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreHLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreHPedal = \relative c {
  \global
  % Music follows here.
  
}

scoreHChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreHFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreHTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreHTenorVoice }
\addlyrics { \scoreHVerse }

scoreHOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreHRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreHLeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreHPedal }
>>

scoreHChordsPart = \new ChordNames \scoreHChordNames

scoreHBassFiguresPart = \new FiguredBass \scoreHFigBass

\bookpart {
  \score {
    <<
      \scoreHTenorVoicePart
      \scoreHOrganPart
      \scoreHChordsPart
      \scoreHBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

scoreITenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreIVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreIRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreILeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreIPedal = \relative c {
  \global
  % Music follows here.
  
}

scoreIChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreIFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreITenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreITenorVoice }
\addlyrics { \scoreIVerse }

scoreIOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreIRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreILeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreIPedal }
>>

scoreIChordsPart = \new ChordNames \scoreIChordNames

scoreIBassFiguresPart = \new FiguredBass \scoreIFigBass

\bookpart {
  \score {
    <<
      \scoreITenorVoicePart
      \scoreIOrganPart
      \scoreIChordsPart
      \scoreIBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

scoreJTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreJVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreJRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreJLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreJPedal = \relative c {
  \global
  % Music follows here.
  
}

scoreJChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreJFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreJTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreJTenorVoice }
\addlyrics { \scoreJVerse }

scoreJOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreJRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreJLeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreJPedal }
>>

scoreJChordsPart = \new ChordNames \scoreJChordNames

scoreJBassFiguresPart = \new FiguredBass \scoreJFigBass

\bookpart {
  \score {
    <<
      \scoreJTenorVoicePart
      \scoreJOrganPart
      \scoreJChordsPart
      \scoreJBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}
