\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "NN"
  subtitle = "Matthäus-Passion"
  subsubtitle = "Choräle"
  instrument = "Chor und BC"
  composer = "Johann Sebastian Bach"
  arranger = "Sven Buschke"
  poet = ""
  meter = ""
  piece = ""
  opus = "BWV 244"
  copyright = ""
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreAMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreAChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreAMelody }
      \addlyrics { \scoreAVerse }
    >>
    \layout { }
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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
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
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreBSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreBVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
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
    shortInstrumentName = "B.C."
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


scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreCMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreCChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreCMelody }
      \addlyrics { \scoreCVerse }
    >>
    \layout { }
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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
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
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreDSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreDVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
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
    shortInstrumentName = "B.C."
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


scoreEChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreEMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreEChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreEMelody }
      \addlyrics { \scoreEVerse }
    >>
    \layout { }
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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
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
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreFSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreFVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
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
    shortInstrumentName = "B.C."
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


scoreGChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreGMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreGVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreGChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreGMelody }
      \addlyrics { \scoreGVerse }
    >>
    \layout { }
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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
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
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreHSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreHVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
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
    shortInstrumentName = "B.C."
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


scoreIChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreIMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreIVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreIChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreIMelody }
      \addlyrics { \scoreIVerse }
    >>
    \layout { }
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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
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
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreJSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreJVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
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
    shortInstrumentName = "B.C."
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


scoreKChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreKMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreKVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreKChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreKMelody }
      \addlyrics { \scoreKVerse }
    >>
    \layout { }
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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
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
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreLSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreLVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
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
    shortInstrumentName = "B.C."
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


scoreMChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreMMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreMVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreMChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreMMelody }
      \addlyrics { \scoreMVerse }
    >>
    \layout { }
    \midi { }
  }
}

scoreNSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreNAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreNTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreNBass = \relative c {
  \global
  % Music follows here.
  
}

scoreNVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreNPianoReduction = \new PianoStaff \with {
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
      \scoreNSoprano \\
      \scoreNAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreNTenor \\
      \scoreNBass
    >>
  }
>>

scoreNRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreNSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreNAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreNTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreNBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreNBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreNBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreNChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreNChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreNSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreNVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreNAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreNVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreNTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreNVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreNBass
    }
  >>
  \scoreNPianoReduction
>>

scoreNBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreNBcMusic }
  \new FiguredBass \scoreNBcFigures
>>

scoreNChordsPart = \new ChordNames \scoreNChordNames

\bookpart {
  \score {
    <<
      \scoreNChoirPart
      \scoreNBassoContinuoPart
      \scoreNChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreNRehearsalMidi "soprano" "soprano sax" \scoreNVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreNRehearsalMidi "alto" "soprano sax" \scoreNVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreNRehearsalMidi "tenor" "tenor sax" \scoreNVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreNRehearsalMidi "bass" "tenor sax" \scoreNVerse
    \midi { }
  }
}


scoreOChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreOMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreOVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreOChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreOMelody }
      \addlyrics { \scoreOVerse }
    >>
    \layout { }
    \midi { }
  }
}

scorePSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scorePAlto = \relative c' {
  \global
  % Music follows here.
  
}

scorePTenor = \relative c' {
  \global
  % Music follows here.
  
}

scorePBass = \relative c {
  \global
  % Music follows here.
  
}

scorePVerse = \lyricmode {
  % Lyrics follow here.
  
}

scorePPianoReduction = \new PianoStaff \with {
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
      \scorePSoprano \\
      \scorePAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scorePTenor \\
      \scorePBass
    >>
  }
>>

scorePRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scorePSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scorePAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scorePTenor }
     \new Staff = "bass" \new Voice = "bass" { \scorePBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scorePBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scorePBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scorePChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scorePChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scorePSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scorePVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scorePAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scorePVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scorePTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scorePVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scorePBass
    }
  >>
  \scorePPianoReduction
>>

scorePBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scorePBcMusic }
  \new FiguredBass \scorePBcFigures
>>

scorePChordsPart = \new ChordNames \scorePChordNames

\bookpart {
  \score {
    <<
      \scorePChoirPart
      \scorePBassoContinuoPart
      \scorePChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scorePRehearsalMidi "soprano" "soprano sax" \scorePVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scorePRehearsalMidi "alto" "soprano sax" \scorePVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scorePRehearsalMidi "tenor" "tenor sax" \scorePVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scorePRehearsalMidi "bass" "tenor sax" \scorePVerse
    \midi { }
  }
}


scoreQChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreQMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreQVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreQChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreQMelody }
      \addlyrics { \scoreQVerse }
    >>
    \layout { }
    \midi { }
  }
}

scoreRSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreRAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreRTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreRBass = \relative c {
  \global
  % Music follows here.
  
}

scoreRVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreRPianoReduction = \new PianoStaff \with {
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
      \scoreRSoprano \\
      \scoreRAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreRTenor \\
      \scoreRBass
    >>
  }
>>

scoreRRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreRSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreRAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreRTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreRBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreRBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreRBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreRChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreRChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreRSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreRVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreRAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreRVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreRTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreRVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreRBass
    }
  >>
  \scoreRPianoReduction
>>

scoreRBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreRBcMusic }
  \new FiguredBass \scoreRBcFigures
>>

scoreRChordsPart = \new ChordNames \scoreRChordNames

\bookpart {
  \score {
    <<
      \scoreRChoirPart
      \scoreRBassoContinuoPart
      \scoreRChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreRRehearsalMidi "soprano" "soprano sax" \scoreRVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreRRehearsalMidi "alto" "soprano sax" \scoreRVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreRRehearsalMidi "tenor" "tenor sax" \scoreRVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreRRehearsalMidi "bass" "tenor sax" \scoreRVerse
    \midi { }
  }
}


scoreSChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreSMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreSVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreSChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreSMelody }
      \addlyrics { \scoreSVerse }
    >>
    \layout { }
    \midi { }
  }
}

scoreTSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreTAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreTTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreTBass = \relative c {
  \global
  % Music follows here.
  
}

scoreTVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreTPianoReduction = \new PianoStaff \with {
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
      \scoreTSoprano \\
      \scoreTAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreTTenor \\
      \scoreTBass
    >>
  }
>>

scoreTRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreTSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreTAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreTTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreTBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreTBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreTBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreTChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreTChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreTSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreTVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreTAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreTVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreTTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreTVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreTBass
    }
  >>
  \scoreTPianoReduction
>>

scoreTBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreTBcMusic }
  \new FiguredBass \scoreTBcFigures
>>

scoreTChordsPart = \new ChordNames \scoreTChordNames

\bookpart {
  \score {
    <<
      \scoreTChoirPart
      \scoreTBassoContinuoPart
      \scoreTChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreTRehearsalMidi "soprano" "soprano sax" \scoreTVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreTRehearsalMidi "alto" "soprano sax" \scoreTVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreTRehearsalMidi "tenor" "tenor sax" \scoreTVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreTRehearsalMidi "bass" "tenor sax" \scoreTVerse
    \midi { }
  }
}


scoreUChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreUMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreUVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreUChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreUMelody }
      \addlyrics { \scoreUVerse }
    >>
    \layout { }
    \midi { }
  }
}

scoreVSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreVAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreVTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreVBass = \relative c {
  \global
  % Music follows here.
  
}

scoreVVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreVPianoReduction = \new PianoStaff \with {
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
      \scoreVSoprano \\
      \scoreVAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreVTenor \\
      \scoreVBass
    >>
  }
>>

scoreVRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreVSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreVAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreVTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreVBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreVBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreVBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreVChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreVChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreVSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreVVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreVAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreVVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreVTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreVVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreVBass
    }
  >>
  \scoreVPianoReduction
>>

scoreVBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreVBcMusic }
  \new FiguredBass \scoreVBcFigures
>>

scoreVChordsPart = \new ChordNames \scoreVChordNames

\bookpart {
  \score {
    <<
      \scoreVChoirPart
      \scoreVBassoContinuoPart
      \scoreVChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreVRehearsalMidi "soprano" "soprano sax" \scoreVVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreVRehearsalMidi "alto" "soprano sax" \scoreVVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreVRehearsalMidi "tenor" "tenor sax" \scoreVVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreVRehearsalMidi "bass" "tenor sax" \scoreVVerse
    \midi { }
  }
}


scoreWChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreWMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreWVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreWChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreWMelody }
      \addlyrics { \scoreWVerse }
    >>
    \layout { }
    \midi { }
  }
}

scoreXSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreXAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreXTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreXBass = \relative c {
  \global
  % Music follows here.
  
}

scoreXVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreXPianoReduction = \new PianoStaff \with {
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
      \scoreXSoprano \\
      \scoreXAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreXTenor \\
      \scoreXBass
    >>
  }
>>

scoreXRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreXSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreXAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreXTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreXBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreXBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreXBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreXChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreXChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreXSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreXVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreXAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreXVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreXTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreXVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreXBass
    }
  >>
  \scoreXPianoReduction
>>

scoreXBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreXBcMusic }
  \new FiguredBass \scoreXBcFigures
>>

scoreXChordsPart = \new ChordNames \scoreXChordNames

\bookpart {
  \score {
    <<
      \scoreXChoirPart
      \scoreXBassoContinuoPart
      \scoreXChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreXRehearsalMidi "soprano" "soprano sax" \scoreXVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreXRehearsalMidi "alto" "soprano sax" \scoreXVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreXRehearsalMidi "tenor" "tenor sax" \scoreXVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreXRehearsalMidi "bass" "tenor sax" \scoreXVerse
    \midi { }
  }
}


scoreYChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreYMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreYVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreYChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreYMelody }
      \addlyrics { \scoreYVerse }
    >>
    \layout { }
    \midi { }
  }
}

scoreZSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreZAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreZTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreZBass = \relative c {
  \global
  % Music follows here.
  
}

scoreZVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreZPianoReduction = \new PianoStaff \with {
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
      \scoreZSoprano \\
      \scoreZAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreZTenor \\
      \scoreZBass
    >>
  }
>>

scoreZRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreZSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreZAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreZTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreZBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreZBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreZBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreZChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreZChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreZSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreZVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreZAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreZVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreZTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreZVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreZBass
    }
  >>
  \scoreZPianoReduction
>>

scoreZBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreZBcMusic }
  \new FiguredBass \scoreZBcFigures
>>

scoreZChordsPart = \new ChordNames \scoreZChordNames

\bookpart {
  \score {
    <<
      \scoreZChoirPart
      \scoreZBassoContinuoPart
      \scoreZChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreZRehearsalMidi "soprano" "soprano sax" \scoreZVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreZRehearsalMidi "alto" "soprano sax" \scoreZVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreZRehearsalMidi "tenor" "tenor sax" \scoreZVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreZRehearsalMidi "bass" "tenor sax" \scoreZVerse
    \midi { }
  }
}

