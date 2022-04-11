\version "2.20.0"

\header {
  title = "E Bass Lesson # 2"
  subtitle = "Come as You Are"
  subsubtitle = "Bass Riff"
  composer = "Sven Buschke"
  piece = "Grunge"
  tagline = \markup {
      "11.04.2022 - Version 1.0 - www.electricbass.ch"
  }
}

notes = \relative {
  \key as \major
  \time 4/4
  \tempo 4 = 120
    f,4 as8 f as f f e | es bes' es, es4 bes'8 es, e
}

\score {
  \new StaffGroup <<
    \new ChordNames {
      \transpose c' c \chordmode {
        \set Staff.midiInstrument = #"bright acoustic"
        \set Staff.midiPanPosition = #0.2
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