\version "2.24.3"
\language "english"

\header {
  dedication = "NN"
  title = "NN"
  subtitle = "Johannespassion"
  subsubtitle = "Choräle"
  instrument = "N"
  composer = "Johann Sebastian Bach"
  arranger = "N"
  poet = "N"
  meter = "N"
  piece = "N"
  opus = "BWV 245"
  copyright = "N"
  tagline = "N"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreAAlto = \relative c' {
  \global
  % Music follows here.

}

scoreATenor = \relative c' {
  \global
  % Music follows here.

}

scoreABass = \relative c {
  \global
  % Music follows here.

}

scoreAVerse = \lyricmode {
  % Lyrics follow here.

}

scoreAPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreASoprano \\
      \scoreAAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreATenor \\
      \scoreABass
    >>
  }
>>

scoreARehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreASoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreAAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreATenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreABass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreABcMusic = \relative c {
  \global
  % Music follows here.

}

scoreABcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreAChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreASoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreAVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alto"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreAAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreAVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreATenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreAVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreABass
    }
  >>
  \scoreAPianoReduction
>>

scoreABassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.c."
    midiInstrument = "cello"
  } { \clef bass \scoreABcMusic }
  \new FiguredBass \scoreABcFigures
>>

scoreAChordsPart = \new ChordNames \scoreAChordNames

\bookpart {
  \score {
    <<
      \scoreAChoirPart
      \scoreABassoContinuoPart
      \scoreAChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreARehearsalMidi "soprano" "soprano sax" \scoreAVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreARehearsalMidi "alto" "soprano sax" \scoreAVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreARehearsalMidi "tenor" "tenor sax" \scoreAVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreARehearsalMidi "bass" "tenor sax" \scoreAVerse
    \midi { }
  }
}


scoreBSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreBAlto = \relative c' {
  \global
  % Music follows here.

}

scoreBTenor = \relative c' {
  \global
  % Music follows here.

}

scoreBBass = \relative c {
  \global
  % Music follows here.

}

scoreBVerse = \lyricmode {
  % Lyrics follow here.

}

scoreBPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreBSoprano \\
      \scoreBAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreBTenor \\
      \scoreBBass
    >>
  }
>>

scoreBRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreBSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreBAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreBTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreBBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreBBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreBBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreBChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreBSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreBVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alto"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreBAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreBVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreBTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreBVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreBBass
    }
  >>
  \scoreBPianoReduction
>>

scoreBBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.c."
    midiInstrument = "cello"
  } { \clef bass \scoreBBcMusic }
  \new FiguredBass \scoreBBcFigures
>>

scoreBChordsPart = \new ChordNames \scoreBChordNames

\bookpart {
  \score {
    <<
      \scoreBChoirPart
      \scoreBBassoContinuoPart
      \scoreBChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreBRehearsalMidi "soprano" "soprano sax" \scoreBVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreBRehearsalMidi "alto" "soprano sax" \scoreBVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreBRehearsalMidi "tenor" "tenor sax" \scoreBVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreBRehearsalMidi "bass" "tenor sax" \scoreBVerse
    \midi { }
  }
}


scoreCSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreCAlto = \relative c' {
  \global
  % Music follows here.

}

scoreCTenor = \relative c' {
  \global
  % Music follows here.

}

scoreCBass = \relative c {
  \global
  % Music follows here.

}

scoreCVerse = \lyricmode {
  % Lyrics follow here.

}

scoreCPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreCSoprano \\
      \scoreCAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreCTenor \\
      \scoreCBass
    >>
  }
>>

scoreCRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreCSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreCAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreCTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreCBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreCBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreCBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreCChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreCSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreCVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alto"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreCAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreCVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreCTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreCVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreCBass
    }
  >>
  \scoreCPianoReduction
>>

scoreCBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.c."
    midiInstrument = "cello"
  } { \clef bass \scoreCBcMusic }
  \new FiguredBass \scoreCBcFigures
>>

scoreCChordsPart = \new ChordNames \scoreCChordNames

\bookpart {
  \score {
    <<
      \scoreCChoirPart
      \scoreCBassoContinuoPart
      \scoreCChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreCRehearsalMidi "soprano" "soprano sax" \scoreCVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreCRehearsalMidi "alto" "soprano sax" \scoreCVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreCRehearsalMidi "tenor" "tenor sax" \scoreCVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreCRehearsalMidi "bass" "tenor sax" \scoreCVerse
    \midi { }
  }
}


scoreDSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreDAlto = \relative c' {
  \global
  % Music follows here.

}

scoreDTenor = \relative c' {
  \global
  % Music follows here.

}

scoreDBass = \relative c {
  \global
  % Music follows here.

}

scoreDVerse = \lyricmode {
  % Lyrics follow here.

}

scoreDPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreDSoprano \\
      \scoreDAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreDTenor \\
      \scoreDBass
    >>
  }
>>

scoreDRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreDSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreDAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreDTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreDBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreDBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreDBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreDChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreDSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreDVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alto"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreDAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreDVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreDTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreDVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreDBass
    }
  >>
  \scoreDPianoReduction
>>

scoreDBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.c."
    midiInstrument = "cello"
  } { \clef bass \scoreDBcMusic }
  \new FiguredBass \scoreDBcFigures
>>

scoreDChordsPart = \new ChordNames \scoreDChordNames

\bookpart {
  \score {
    <<
      \scoreDChoirPart
      \scoreDBassoContinuoPart
      \scoreDChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreDRehearsalMidi "soprano" "soprano sax" \scoreDVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreDRehearsalMidi "alto" "soprano sax" \scoreDVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreDRehearsalMidi "tenor" "tenor sax" \scoreDVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreDRehearsalMidi "bass" "tenor sax" \scoreDVerse
    \midi { }
  }
}


scoreESoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreEAlto = \relative c' {
  \global
  % Music follows here.

}

scoreETenor = \relative c' {
  \global
  % Music follows here.

}

scoreEBass = \relative c {
  \global
  % Music follows here.

}

scoreEVerse = \lyricmode {
  % Lyrics follow here.

}

scoreEPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreESoprano \\
      \scoreEAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreETenor \\
      \scoreEBass
    >>
  }
>>

scoreERehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreESoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreEAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreETenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreEBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreEBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreEBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreEChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreEChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreESoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreEVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alto"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreEAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreEVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreETenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreEVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreEBass
    }
  >>
  \scoreEPianoReduction
>>

scoreEBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.c."
    midiInstrument = "cello"
  } { \clef bass \scoreEBcMusic }
  \new FiguredBass \scoreEBcFigures
>>

scoreEChordsPart = \new ChordNames \scoreEChordNames

\bookpart {
  \score {
    <<
      \scoreEChoirPart
      \scoreEBassoContinuoPart
      \scoreEChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreERehearsalMidi "soprano" "soprano sax" \scoreEVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreERehearsalMidi "alto" "soprano sax" \scoreEVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreERehearsalMidi "tenor" "tenor sax" \scoreEVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreERehearsalMidi "bass" "tenor sax" \scoreEVerse
    \midi { }
  }
}


scoreFSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreFAlto = \relative c' {
  \global
  % Music follows here.

}

scoreFTenor = \relative c' {
  \global
  % Music follows here.

}

scoreFBass = \relative c {
  \global
  % Music follows here.

}

scoreFVerse = \lyricmode {
  % Lyrics follow here.

}

scoreFPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreFSoprano \\
      \scoreFAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreFTenor \\
      \scoreFBass
    >>
  }
>>

scoreFRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreFSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreFAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreFTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreFBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreFBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreFBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreFChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreFChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreFSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreFVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alto"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreFAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreFVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreFTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreFVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreFBass
    }
  >>
  \scoreFPianoReduction
>>

scoreFBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.c."
    midiInstrument = "cello"
  } { \clef bass \scoreFBcMusic }
  \new FiguredBass \scoreFBcFigures
>>

scoreFChordsPart = \new ChordNames \scoreFChordNames

\bookpart {
  \score {
    <<
      \scoreFChoirPart
      \scoreFBassoContinuoPart
      \scoreFChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreFRehearsalMidi "soprano" "soprano sax" \scoreFVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreFRehearsalMidi "alto" "soprano sax" \scoreFVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreFRehearsalMidi "tenor" "tenor sax" \scoreFVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreFRehearsalMidi "bass" "tenor sax" \scoreFVerse
    \midi { }
  }
}


scoreGSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreGAlto = \relative c' {
  \global
  % Music follows here.

}

scoreGTenor = \relative c' {
  \global
  % Music follows here.

}

scoreGBass = \relative c {
  \global
  % Music follows here.

}

scoreGVerse = \lyricmode {
  % Lyrics follow here.

}

scoreGPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreGSoprano \\
      \scoreGAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreGTenor \\
      \scoreGBass
    >>
  }
>>

scoreGRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreGSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreGAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreGTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreGBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreGBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreGBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreGChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreGChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreGSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreGVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alto"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreGAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreGVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreGTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreGVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreGBass
    }
  >>
  \scoreGPianoReduction
>>

scoreGBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.c."
    midiInstrument = "cello"
  } { \clef bass \scoreGBcMusic }
  \new FiguredBass \scoreGBcFigures
>>

scoreGChordsPart = \new ChordNames \scoreGChordNames

\bookpart {
  \score {
    <<
      \scoreGChoirPart
      \scoreGBassoContinuoPart
      \scoreGChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreGRehearsalMidi "soprano" "soprano sax" \scoreGVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreGRehearsalMidi "alto" "soprano sax" \scoreGVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreGRehearsalMidi "tenor" "tenor sax" \scoreGVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreGRehearsalMidi "bass" "tenor sax" \scoreGVerse
    \midi { }
  }
}


scoreHSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreHAlto = \relative c' {
  \global
  % Music follows here.

}

scoreHTenor = \relative c' {
  \global
  % Music follows here.

}

scoreHBass = \relative c {
  \global
  % Music follows here.

}

scoreHVerse = \lyricmode {
  % Lyrics follow here.

}

scoreHPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreHSoprano \\
      \scoreHAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreHTenor \\
      \scoreHBass
    >>
  }
>>

scoreHRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreHSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreHAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreHTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreHBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreHBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreHBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreHChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreHChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreHSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreHVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alto"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreHAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreHVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreHTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreHVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreHBass
    }
  >>
  \scoreHPianoReduction
>>

scoreHBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.c."
    midiInstrument = "cello"
  } { \clef bass \scoreHBcMusic }
  \new FiguredBass \scoreHBcFigures
>>

scoreHChordsPart = \new ChordNames \scoreHChordNames

\bookpart {
  \score {
    <<
      \scoreHChoirPart
      \scoreHBassoContinuoPart
      \scoreHChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreHRehearsalMidi "soprano" "soprano sax" \scoreHVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreHRehearsalMidi "alto" "soprano sax" \scoreHVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreHRehearsalMidi "tenor" "tenor sax" \scoreHVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreHRehearsalMidi "bass" "tenor sax" \scoreHVerse
    \midi { }
  }
}


scoreISoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreIAlto = \relative c' {
  \global
  % Music follows here.

}

scoreITenor = \relative c' {
  \global
  % Music follows here.

}

scoreIBass = \relative c {
  \global
  % Music follows here.

}

scoreIVerse = \lyricmode {
  % Lyrics follow here.

}

scoreIPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreISoprano \\
      \scoreIAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreITenor \\
      \scoreIBass
    >>
  }
>>

scoreIRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreISoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreIAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreITenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreIBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreIBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreIBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreIChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreIChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreISoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreIVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alto"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreIAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreIVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreITenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreIVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreIBass
    }
  >>
  \scoreIPianoReduction
>>

scoreIBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.c."
    midiInstrument = "cello"
  } { \clef bass \scoreIBcMusic }
  \new FiguredBass \scoreIBcFigures
>>

scoreIChordsPart = \new ChordNames \scoreIChordNames

\bookpart {
  \score {
    <<
      \scoreIChoirPart
      \scoreIBassoContinuoPart
      \scoreIChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreIRehearsalMidi "soprano" "soprano sax" \scoreIVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreIRehearsalMidi "alto" "soprano sax" \scoreIVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreIRehearsalMidi "tenor" "tenor sax" \scoreIVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreIRehearsalMidi "bass" "tenor sax" \scoreIVerse
    \midi { }
  }
}


scoreJSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreJAlto = \relative c' {
  \global
  % Music follows here.

}

scoreJTenor = \relative c' {
  \global
  % Music follows here.

}

scoreJBass = \relative c {
  \global
  % Music follows here.

}

scoreJVerse = \lyricmode {
  % Lyrics follow here.

}

scoreJPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreJSoprano \\
      \scoreJAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreJTenor \\
      \scoreJBass
    >>
  }
>>

scoreJRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreJSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreJAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreJTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreJBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreJBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreJBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreJChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreJChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreJSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreJVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alto"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreJAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreJVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreJTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreJVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreJBass
    }
  >>
  \scoreJPianoReduction
>>

scoreJBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.c."
    midiInstrument = "cello"
  } { \clef bass \scoreJBcMusic }
  \new FiguredBass \scoreJBcFigures
>>

scoreJChordsPart = \new ChordNames \scoreJChordNames

\bookpart {
  \score {
    <<
      \scoreJChoirPart
      \scoreJBassoContinuoPart
      \scoreJChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreJRehearsalMidi "soprano" "soprano sax" \scoreJVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreJRehearsalMidi "alto" "soprano sax" \scoreJVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreJRehearsalMidi "tenor" "tenor sax" \scoreJVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreJRehearsalMidi "bass" "tenor sax" \scoreJVerse
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalK = {
  \key ef \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreKSoprano = \relative c'' {
  \globalK
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    ef4
    d c bf af8(g) c4 c bf\fermata
    ef d c bf af8(g) c4 c bf\fermata
    bf c d ef8(f) g4 f(ef2 d4) ef2.
  }
  \partial 4
  ef4
  ef f ef8(d) c(d) ef4 ef d\fermata
  d ef f ef8(d) c(d) ef(g) f4 d\fermata
  g g g f ef ef d ef\fermata
  d ef d c bf bf a bf\fermata
  g' f ef d\fermata
  g af8(g) f4 g ef ef d ef\fermata
  ef ef ef f ef ef2. d4 ef2.\fermata
}

scoreKAlto = \relative c' {
  \globalK
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    bf'4
    bf g g f8(ef) ef4 af g\fermata
    g g8(f) ef(f) g(f) ef(d) ef(f) f4 g\fermata
    g af8(c) bf(af) g(f) ef4 f2(g4 af) g2.
  }
  \partial 4
  g4
  af af g4. g8
  f(g) a4 bf\fermata
  bf bf af g af bf c c\fermata
  c bf c c af g f g\fermata
  af g f8(bf) g4 g g f f\fermata
  ef f8(g16 af) g8(a) b4\fermata
  c c b8(c) g4 g gf8(f) f4 g\fermata
  g af af af g f2 f g2.\fermata
}

scoreKTenor = \relative c' {
  \globalK
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    g'4
    f ef d df c8(bf) c(d) ef4\fermata
    g,8(af) bf4 c8(d) ef4 af,8(bf) c(ef) d(c) d4\fermata
    ef ef8(af) g(f) ef(bf) df4 c2(bf) bf2.
  }
  \partial 4
  bf4
  c c c8(d) ef(d) c4 f f\fermata
  f bf, bf bf f' ef8(d) c4 f\fermata
  ef ef ef f f bf, bf bf\fermata
  f' bf,8(c) d4 ef d ef8(d) c4 d\fermata
  bf8(c) d4 ef8(c) g'4\fermata
  c, f8(ef) d(c) d4 c c bf bf\fermata
  df c8(d) ef4 bf bf c2 bf bf2.\fermata
  \bar "|."
}

scoreKBass = \relative c {
  \globalK
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    ef4
    bf' c g bf af af, ef'\fermata
    c g' af ef8(d) c(bf) af4 af' g\fermata
    ef af bf c8(d,) ef4 af,(a bf2) ef2.
  }
  \partial 4
  ef4 af8(g) f4 c c'8(bf) a(g) f4 bf\fermata
  bf8(af) g(f) ef(d) c4 f g a bf\fermata
  ef, ef'8(d) c(bf) af(bf) c(af) bf4 bf, ef\fermata
  f g8(a) bf(g) ef(f) g(ef) c4 f bf,\fermata
  ef bf'4 c g\fermata
  e f8(g) af4 b, c a' bf ef,\fermata
  ef af8(bf) c4 d, ef a,2 bf ef,2.\fermata
  \bar "|."
}

scoreKVerse = \lyricmode {
  % Lyrics follow here.
  Ach Herr, lass dein lieb En -- ge -- lein
  am letz -- ten End die See -- le mein
  in A -- bra -- hams Schoß tra -- gen,
}

scoreKVerseB = \lyricmode {
  % Lyrics follow here.
  den Leib in sein'm Schlaf -- käm -- mer -- lein
  gar sanft, ohn ein -- ge Qual und Pein,
  ruhn bis am jüngs -- ten Ta -- ge.
  Als -- denn vom Tod er -- we -- cke mich,
  dass mei -- ne Au -- gen se -- hen dich
  in al -- ler Freud, o Got -- tes Sohn,
  mein Hei -- land und Ge -- na -- den -- thron,
  Herr Je -- su Christ, er -- hö -- re mich, er -- hö -- re mich,
  ich will dich prei -- sen e -- wig -- lich.
}

scoreKVerseC = \lyricmode {
  % Lyrics follow here.
}

scoreKPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreKSoprano \\
      \scoreKAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreKTenor \\
      \scoreKBass
    >>
  }
>>

scoreKRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreKSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreKAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreKTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreKBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreKBcMusic = \relative c {
  \globalK
  % Music follows here.
  \scoreKBass
}

scoreKBcFigures = \figuremode {
  \globalK
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreKChordNames = \chordmode {
  \globalK
  \germanChords
  % Chords follow here.

}

scoreKChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreKSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" {
      <<
        \scoreKVerse	\new Lyrics {
          \set associatedVoice = "soprano" \scoreKVerseB
        }
      >> \scoreKVerseC
    }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alto"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreKAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" {
      <<
        \scoreKVerse	\new Lyrics {
          \set associatedVoice = "alto" \scoreKVerseB
        }
      >> \scoreKVerseC
    }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreKTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" {
      <<
        \scoreKVerse	\new Lyrics {
          \set associatedVoice = "tenor" \scoreKVerseB
        }
      >> \scoreKVerseC
    }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreKBass
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "bass" {
      <<
        \scoreKVerse	\new Lyrics {
          \set associatedVoice = "bass" \scoreKVerseB
        }
      >> \scoreKVerseC
    }
  >>
  \scoreKPianoReduction
>>

scoreKBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.c."
    midiInstrument = "cello"
  } { \clef bass \scoreKBcMusic }
  \new FiguredBass \scoreKBcFigures
>>

scoreKChordsPart = \new ChordNames \scoreKChordNames

\bookpart {
  \header {
    title = "Choral: Ach Herr, laß dein lieb Engelein"
  }
  \score {
    <<
      \scoreKChoirPart
      \scoreKBassoContinuoPart
      \scoreKChordsPart
    >>
    \layout { }
    %     \midi { }
  }
  \score {
    \unfoldRepeats {
      <<
        \scoreKChoirPart
        \scoreKBassoContinuoPart
        \scoreKChordsPart
      >>
    }
    %     \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreKRehearsalMidi "soprano" "soprano sax" \scoreKVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreKRehearsalMidi "alto" "soprano sax" \scoreKVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreKRehearsalMidi "tenor" "tenor sax" \scoreKVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreKRehearsalMidi "bass" "tenor sax" \scoreKVerse
    \midi { }
  }
}


scoreLSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreLAlto = \relative c' {
  \global
  % Music follows here.

}

scoreLTenor = \relative c' {
  \global
  % Music follows here.

}

scoreLBass = \relative c {
  \global
  % Music follows here.

}

scoreLVerse = \lyricmode {
  % Lyrics follow here.

}

scoreLPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreLSoprano \\
      \scoreLAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreLTenor \\
      \scoreLBass
    >>
  }
>>

scoreLRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreLSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreLAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreLTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreLBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreLBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreLBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreLChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreLChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreLSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreLVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alto"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreLAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreLVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreLTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreLVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreLBass
    }
  >>
  \scoreLPianoReduction
>>

scoreLBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.c."
    midiInstrument = "cello"
  } { \clef bass \scoreLBcMusic }
  \new FiguredBass \scoreLBcFigures
>>

scoreLChordsPart = \new ChordNames \scoreLChordNames

\bookpart {
  \score {
    <<
      \scoreLChoirPart
      \scoreLBassoContinuoPart
      \scoreLChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreLRehearsalMidi "soprano" "soprano sax" \scoreLVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreLRehearsalMidi "alto" "soprano sax" \scoreLVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreLRehearsalMidi "tenor" "tenor sax" \scoreLVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreLRehearsalMidi "bass" "tenor sax" \scoreLVerse
    \midi { }
  }
}


scoreMSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreMAlto = \relative c' {
  \global
  % Music follows here.

}

scoreMTenor = \relative c' {
  \global
  % Music follows here.

}

scoreMBass = \relative c {
  \global
  % Music follows here.

}

scoreMVerse = \lyricmode {
  % Lyrics follow here.

}

scoreMPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreMSoprano \\
      \scoreMAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreMTenor \\
      \scoreMBass
    >>
  }
>>

scoreMRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreMSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreMAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreMTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreMBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreMBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreMBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreMChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreMChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Soprano"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreMSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreMVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alto"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreMAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreMVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreMTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreMVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreMBass
    }
  >>
  \scoreMPianoReduction
>>

scoreMBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.c."
    midiInstrument = "cello"
  } { \clef bass \scoreMBcMusic }
  \new FiguredBass \scoreMBcFigures
>>

scoreMChordsPart = \new ChordNames \scoreMChordNames

\bookpart {
  \score {
    <<
      \scoreMChoirPart
      \scoreMBassoContinuoPart
      \scoreMChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreMRehearsalMidi "soprano" "soprano sax" \scoreMVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreMRehearsalMidi "alto" "soprano sax" \scoreMVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreMRehearsalMidi "tenor" "tenor sax" \scoreMVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreMRehearsalMidi "bass" "tenor sax" \scoreMVerse
    \midi { }
  }
}

