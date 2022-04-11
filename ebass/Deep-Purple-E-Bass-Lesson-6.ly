\version "2.20.0"

\header {
  title = "E Bass Lesson # 6"
  subtitle = "Smoke on the Water"
  subsubtitle = "Bass Riff"
  composer = "Deep Purple"
  piece = "Rock"
  tagline = \markup {
      "11.04.2022 - Version 1.0 - www.electricbass.ch"
  }
}

notes = \relative {
  \key c \major
  \time 4/4
  \tempo 4 = 120
  <d, g>4\f <f ais> <g c> r8 <d g>8
  r8 <f ais> r < gis cis> <g c>4 r
  <d g> <f ais> <g c> r8 <f ais> | r8 <d g>~ <d g>2.
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