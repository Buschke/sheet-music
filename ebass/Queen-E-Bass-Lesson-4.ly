\version "2.20.0"

\header {
  title = "E Bass Lesson # 4"
  subtitle = "Another One Bites the Dust"
  subsubtitle = "Bass Riff"
  composer = " Queen"
  piece = "Rock"
  tagline = \markup {
      "11.04.2022 - Version 1.0 - www.electricbass.ch"
  }
}

notes = \relative {
  \key g \major
  \time 4/4
  \tempo 4 = 102
  e,,8\f r e r e r r r16 e |
  e8 e g e16 a r4 r8 a16 g
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