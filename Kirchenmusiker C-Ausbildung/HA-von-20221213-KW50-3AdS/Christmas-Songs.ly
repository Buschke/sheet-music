\version "2.22.2"
\language "english"

\header {
  dedication = "To Jesus Christ"
  title = "NN"
  subtitle = "Christmas Songs"
  subsubtitle = "Harmonisierte Weihnachtslieder"
  instrument = "Choir / Organ"
  composer = "Diverse"
  arranger = "Arrangemnet: Sven Buschke"
  poet = "Diverse"
  meter = "NN"
  piece = "NN"
  opus = "NN"
  copyright = "Sven Buschke"
  tagline = "Jesus Christ is born."
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EG
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4=92
}

scoreASoprano = \relative c'' {
  \globalA
  % Music follows here.
  c4
}

scoreAAlto = \relative c' {
  \globalA
  % Music follows here.
  e4
}

scoreATenor = \relative c' {
  \globalA
  % Music follows here.
  g4
}

scoreABass = \relative c {
  \globalA
  % Music follows here.
  c4
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Macht hoch die Tür
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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 92 4)
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
  \globalA
  % Figures follow here.

}

scoreAChoirPart = \new ChoirStaff <<
  \new Staff \with {
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

scoreABassFiguresPart = \new FiguredBass \scoreAFigBass

claveA = \new DrumStaff {
  \drummode {\globalA
    <<\repeat unfold 4 { hh8 cl }\\ { bd4 sn sn sn } >>
  }
}

scoreA =     <<
      \scoreAChoirPart
      \scoreABassFiguresPart
    >>

\bookpart {
\header {
  title = "Macht hoch die T"
  composer = "M: "
  poet = "T: "
  meter = "Tonart: dorisch"
  piece = "Besonderheiten: keine"
  opus = "EG 1"
}
  \score {
    {
%      \claveA
      \scoreA
    }
    \layout { }
  }
  \score {
    {
      \claveA
      \scoreA
    }
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

