\version "2.20.0"

\header {
  title = "E Bass Lesson # 1"
  subtitle = "Walking Bass"
  subsubtitle = "Jazz Blues in F"
  composer = "Sven Buschke"
  piece = "Swing"
  tagline = \markup {
      "11.04.2022 - Version 1.0 - www.electricbass.ch"
  }
}

notes = \relative {
  \key f \major
  \time 4/4
  \tempo 4 = 120
  f,, g gis a | bes as g ges | f a c es | f a c ces | \break
  bes as g ges | f d b as | f a c cis | d e f fis | \break
  g a bes b | c bes a g | f cis d f | g des c e, |
}

\score {
  \new StaffGroup <<
    \new ChordNames {
      \transpose c' c \chordmode {
        \set Staff.midiInstrument = #"bright acoustic"
        \set Staff.midiPanPosition = #0.2
        f1:7 bes:7 f:7 f:7 |
        bes:7 b:dim7 f:7 d:7 |
        g:m7 c:7 f2:7 d:7 g:m7 c:7 \bar "|."
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