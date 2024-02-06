\version "2.24.3"
\language "english"

\header {
  dedication = "NN"
  title = "Improvisier-Muster"
  subtitle = "NN"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "NN"
  arranger = "NN"
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

global = {
  \key g \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreAChordNamesLeadSheet = \chordmode {
  \global
  % Chords follow here.
  
}

scoreAMelody = \relative c'' {
  \global
  % Music follows here.
  a4 b a g a a g2
}

scoreAVerseLeadSheet = \lyricmode {
  % Lyrics follow here.
  
}

scoreASopranoVoiceI = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.
  a8 g16 a b8 c16 b a8 b16 a g8 fs16 g a8 b16 a a8 g16 a g2
}

scoreAVerseSopranoVoiceI = \lyricmode {
  % Lyrics follow here.
  
}

scoreASopranoVoiceII = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.
  a8 g a b a b a g a b b d g,2 
}

scoreAVerseSopranoVoiceII = \lyricmode {
  % Lyrics follow here.
  
}

scoreASopranoVoiceIII = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.
  a16 e fs g a c b a g b a g g b a g a e fs g a b c d g,2 
}

scoreAVerseSopranoVoiceIII = \lyricmode {
  % Lyrics follow here.
  
}

scoreASopranoVoiceIV = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.
  \tuplet 3/2 { a8 fs d } \tuplet 3/2 { a' fs d } \tuplet 3/2 { a' fs d } \tuplet 3/2 { fs d b } \tuplet 3/2 { a' fs d } \tuplet 3/2 { a' fs d } g2
}

scoreAVerseSopranoVoiceIV = \lyricmode {
  % Lyrics follow here.
  
}

scoreASopranoVoiceV = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.
  a16 d, fs a a d, fs a a d, fs a g b, d g a d, fs a d c b a g2
}

scoreAVerseSopranoVoiceV = \lyricmode {
  % Lyrics follow here.
  
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  a4 b a b a a b2
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  fs4 g fs g fs fs g2
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  d4 d d d d d d2
}

scoreABass = \relative c {
  \global
  % Music follows here.
  d,4 g d g d d g2
}

scoreASopranoVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreAAltoVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreATenorVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreABassVerse = \lyricmode {
  % Lyrics follow here.
  
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

scoreAChordNamesChords = \chordmode {
  \global
  % Chords follow here.
  d4 g d g d d g2
}

scoreAFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreALeadSheetPart = <<
  \new ChordNames \scoreAChordNamesLeadSheet
  \new Staff \with {
         instrumentName = "Melody"
  shortInstrumentName = "M."
  midiInstrument = "choir aahs"
    \consists "Ambitus_engraver"
  } { \scoreAMelody }
  \addlyrics { \scoreAVerseLeadSheet }
>>

scoreASopranoVoiceIPart = \new Staff \with {
  instrumentName = "Impro I"
  shortInstrumentName = "I. I"
  midiInstrument = "church organ"
  \consists "Ambitus_engraver"
} { \scoreASopranoVoiceI }
\addlyrics { \scoreAVerseSopranoVoiceI }

scoreASopranoVoiceIIPart = \new Staff \with {
  instrumentName = "Impro II"
  shortInstrumentName = "I. II"
  midiInstrument = "church organ"
  \consists "Ambitus_engraver"
} { \scoreASopranoVoiceII }
\addlyrics { \scoreAVerseSopranoVoiceII }

scoreASopranoVoiceIIIPart = \new Staff \with {
  instrumentName = "Impro III"
  shortInstrumentName = "I. III"
  midiInstrument = "church organ"
  \consists "Ambitus_engraver"
} { \scoreASopranoVoiceIII }
\addlyrics { \scoreAVerseSopranoVoiceIII }

scoreASopranoVoiceIVPart = \new Staff \with {
  instrumentName = "Impro IV"
  shortInstrumentName = "I. IV"
  midiInstrument = "church organ"
  \consists "Ambitus_engraver"
} { \scoreASopranoVoiceIV }
\addlyrics { \scoreAVerseSopranoVoiceIV }

scoreASopranoVoiceVPart = \new Staff \with {
  instrumentName = "Impro V"
  shortInstrumentName = "I. V"
  midiInstrument = "church organ"
  \consists "Ambitus_engraver"
} { \scoreASopranoVoiceV }
\addlyrics { \scoreAVerseSopranoVoiceV }

scoreAChoirPart = \new ChoirStaff <<
  \new Staff = "sa" \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
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
    alignAboveContext = "sa"
    \override VerticalAxisGroup #'staff-affinity = #DOWN
  } \lyricsto "soprano" \scoreASopranoVerse
  \new Lyrics \lyricsto "alto" \scoreAAltoVerse
  \new Staff = "tb" \with {
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
  \new Lyrics \with {
    alignAboveContext = "tb"
    \override VerticalAxisGroup #'staff-affinity = #DOWN
  } \lyricsto "tenor" \scoreATenorVerse
  \new Lyrics \lyricsto "bass" \scoreABassVerse
>>

scoreAChordsPart = \new ChordNames \scoreAChordNamesChords

scoreABassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreAFigBass

\score {
  <<
    \scoreALeadSheetPart
    \scoreASopranoVoiceIPart
    \scoreASopranoVoiceIIPart
    \scoreASopranoVoiceIIIPart
    \scoreASopranoVoiceIVPart
    \scoreASopranoVoiceVPart
    \scoreAChoirPart
    \scoreAChordsPart
    \scoreABassFiguresPart
  >>
  \layout { }
  \midi { }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreARehearsalMidi "soprano" "soprano sax" \scoreASopranoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreARehearsalMidi "alto" "soprano sax" \scoreAAltoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreARehearsalMidi "tenor" "tenor sax" \scoreATenorVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreARehearsalMidi "bass" "tenor sax" \scoreABassVerse
    \midi { }
  }
}

