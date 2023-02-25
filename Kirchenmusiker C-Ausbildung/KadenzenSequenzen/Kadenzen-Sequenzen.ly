\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = "Kadenzen, Sequenzen ..."
  subtitle = ""
  subsubtitle = ""
  instrument = ""
  composer = ""
  arranger = "Fingerings: Sven Buschke"
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  copyright = "© 24.02.2023, Sven Buschke"
  tagline = ""
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

soprano = \relative c'' {
  \global
  % Music follows here.
  c4^"I IV V 8^-EL" c b c
  \bar "||"
  e^"3^" f d e
  \bar "||"
  g^"5^" f d e
  \bar "||"
  c4^"8^-WL" c b c
  \bar "||"
  e^"3^" f d e
  \bar "||"
  g^"5^" f d e
  \bar "|.|"
  c^"Kadenz - Weite Lage"
  \bar "|.|"
  c^"Sequenz"
  \bar "|.|"
  c^"Quintpendel"
  \bar "|."
}

alto = \relative c' {
  \global
  % Music follows here.
  g' a g g
}

tenor = \relative c' {
  \global
  % Music follows here.
  e f d e
}

bass = \relative c {
  \global
  % Music follows here.
  c f g c,|
  c f g c,|
  c f g c,|
  c f g c,|
  c f g c,|
}

verse = \lyricmode {
  % Lyrics follow here.

}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \soprano }
     \new Staff = "alto" \new Voice = "alto" { \alto }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "bass" \new Voice = "bass" { \bass }
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

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Soprano" "Alto" }
      shortInstrumentName = \markup \center-column { "S." "A." }
    } <<
      \new Voice = "soprano" \with {
        \consists "Ambitus_engraver"
      } { \voiceOne \soprano }
      \new Voice = "alto" \with {
        \consists "Ambitus_engraver"
        \override Ambitus #'X-offset = #2.0
      } { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Tenor" "Bass" }
      shortInstrumentName = \markup \center-column { "T." "B." }
    } <<
      \clef bass
      \new Voice = "tenor" \with {
        \consists "Ambitus_engraver"
      } { \voiceOne \tenor }
      \new Voice = "bass" \with {
        \consists "Ambitus_engraver"
        \override Ambitus #'X-offset = #2.0
      } { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi { }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "soprano sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \verse
    \midi { }
  }
}

