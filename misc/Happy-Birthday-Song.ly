\version "2.24.3"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "For my big 13"
  title = "Happy Birthday Song"
  subtitle = ""
  subsubtitle = ""
  instrument = "Organ of St. Patrick, New York City"
  composer = "M: Traditional"
  arranger = \markup { "arranged: " \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  poet = "T: Traditional"
  meter = ""
  piece = ""
  opus = ""
  copyright = "New York City, February 29, 2024"
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key a \major
  \time 4/4
  \tempo "Andante" 4=40
}

scoreASoprano = \relative c' {
  \global
  % Music follows here.
  \partial 4
  e8 e
  fs4 e a gs2\breathe
  e8 e
  fs4 e b' a2\breathe
  e8 e e'4 cs a8 a gs4 fs\breathe
  d'8 d cs4 a b a2
  \bar "|."   
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  \partial 4
  cs4
  d cs e e2
  cs4 d cs gs' e2
  cs4 b' a d, e d
  a' a fs gs e2    
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  \partial 4
  a4
  a a cs b2
  a4 a a e' cs2
  a4 e' e cs b a
  fs' e d e cs2    
}

scoreABass = \relative c {
  \global
  % Music follows here.
  \partial 4
  a4
  d a a e2
  a4 d a e a2
  a4 e a a e d
  d a d e a2     
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Hap -- py birth -- day to me,
  hap -- py birth -- day to me,
  hap -- py birth -- day, hap -- py birth -- day,
  hap -- py birth -- day to me!    
}

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

scoreAFigBass = \figuremode {
  \global
  % Figures follow here.
  \partial 4
}

scoreAChordNames = \chordmode {
  \global
  % Chords follow here.
  \partial 4
  a4 d a a e2
  a4 d a e a2
  a4 e a a a d
  d a d e a2      
}

scoreAChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreASoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreAAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreAVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreATenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreABass }
  >>
>>

scoreABassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreAFigBass

scoreAChordsPart = <<
  \new ChordNames \scoreAChordNames
  \new Voice \scoreAChordNames
%   \new FretBoards \scoreAChordNames
>>

\bookpart {
  \score {
    <<
      \scoreAChoirPart
      \scoreABassFiguresPart
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


scoreBChordNames = \chordmode {
  \global
  % Chords follow here.
  \scoreAChordNames
}

scoreBMelody = \relative c'' {
  \global
  % Music follows here.
  \scoreASoprano
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreBRight = \relative c'' {
  \global
  % Music follows here.
  \scoreASoprano
}

scoreBLeftOne = \relative c' {
  \global
  % Music follows here.
  \scoreAAlto
}

scoreBLeftTwo = \relative c' {
  \global
  % Music follows here.
  \scoreATenor
}

scoreBPedal = \relative c {
  \global
  % Music follows here.
  \scoreABass
}

scoreBFigBass = \figuremode {
  \global
  % Figures follow here.
  \scoreABassFiguresPart
}

scoreBLeadSheetPart = <<
  \new ChordNames \scoreBChordNames
%   \new FretBoards \scoreBChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreBMelody }
  \addlyrics { \scoreBVerse }
>>

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
    } { \clef bass << \scoreBLeftOne \\ \scoreBLeftTwo >> }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreBPedal }
>>

scoreBBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreBFigBass

\bookpart {
  \score {
    <<
      \scoreBLeadSheetPart
      \scoreBOrganPart
      \scoreBBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

scoreCChordNames = \chordmode {
  \global
  % Chords follow here.
  \scoreAChordNames
}

scoreCMelody = \relative c'' {
  \global
  % Music follows here.
  \scoreASoprano
}

scoreCAccRight = \relative c' {
  \global
  % Music follows here.
  <<\scoreASoprano||\scoreAAlto>>
}

scoreCAccLeft = \relative c {
  \global
  % Music follows here.
  \scoreABass
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreCBcMusic = \relative c {
  \global
  % Music follows here.
  \scoreABass
}

scoreCBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \scoreABassFiguresPart
}

scoreCLeadSheetPart = <<
  \new ChordNames \scoreCChordNames
%   \new FretBoards \scoreCChordNames
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

scoreCBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreCBcMusic }
  \new FiguredBass \scoreCBcFigures
>>

\bookpart {
  \score {
    <<
      \scoreCLeadSheetPart
      \scoreCBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}
