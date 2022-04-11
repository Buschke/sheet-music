\version "2.20.0"

\header {
  title = "E Bass Lesson # 6"
  subtitle = "Day Tripper"
  subsubtitle = "Bass Riff"
  composer = "Beatles"
  piece = "Rock"
  tagline = \markup {
      "11.04.2022 - Version 1.0 - www.electricbass.ch"
  }
}

notes = \relative {
  \key bes \major
  \time 4/4
  \tempo 4 = 120
  g,,\f r8 bes b d g f
  f4 d8 a'4 d,8 f g
  \bar "|."
}

\score {
  \new StaffGroup <<
    \new ChordNames {
      \transpose c' c \chordmode {
        \set Staff.midiInstrument = #"bright acoustic"
        \set Staff.midiPanPosition = #0.2

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