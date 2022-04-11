\version "2.20.0"

\header {
  title = "E Bass Lesson # 5"
  subtitle = "Livin' On A Prayer"
  subsubtitle = "Bass Riff"
  composer = "Bon Jovi"
  piece = "Rock"
  tagline = \markup {
      "11.04.2022 - Version 1.0 - www.electricbass.ch"
  }
}

notes = \relative {
  \key g \major
  \time 4/4
  \tempo 4 = 118
  e,,8 e' b d e, e b' d
}

\score {
  \new StaffGroup <<
    \new ChordNames {
      \transpose c' c \chordmode {
        \set Staff.midiInstrument = #"bright acoustic"
        \set Staff.midiPanPosition = #0.2
        s\breve
        \bar "|."
      }
    }
    \new Staff \with {
      \omit StringNumber
    } {
      \clef "bass_8"
      \set Staff.midiInstrument = #"acoustic bass"
      \set Staff.midiPanPosition = #-0.2
      \numericTimeSignature
      \notes
    }
    \new TabStaff \with {
      stringTunings = #bass-tuning
    } {
      \clef moderntab
      \notes
    }
  >>
  \layout { }
  \midi { }
}