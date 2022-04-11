\version "2.20.0"

\header {
  title = "E Bass Lesson # 2"
  subtitle = "Laird Baird"
  subsubtitle = "Walking Bass"
  composer = " Charlie Parker"
  poet = "Teddy Kotick"
  piece = "Swing"
  tagline = \markup {
      "11.04.2022 - Version 1.0 - www.electricbass.ch"
  }
}

notes = \relative {
  \key f \major
  \time 4/4
  \tempo 4 = 152

    bes,4 d, bes d
  | % 2
  a e' d a'
  | % 3
  d, g a, d
  | % 4
  f, f bes d
  | % 5
  ees f g bes
  | % 6
  ees, ees aes aes
  | % 7
  d, d g g
  | % 8
  des des ges ges
  | % 9
  c, d ees e
  | % 10
  f g g b
  | % 11
  bes bes d d
  | % 12
  c f, g a
  | % 13
  bes f d bes
  | % 14
  a e' a, d
  | % 15
  g d des ges
  | % 16
  f c' bes d,
  | % 17
  ees g bes des
  | % 18
  des g, bes des
  | % 19
  c d g, d'
  | % 20
  des ges, bes des
  | % 21
  c d ees g,
  | % 22
  f g g c
  | % 23
  bes d aes des
  | % 24
  c g f a,
  | % 25
  bes d f g
  | % 26
  a e a, d
  | % 27
  g d des ges
  | % 28
  f c' bes d,
  | % 29
  ees f g bes
  | % 30
  ees bes c ees
  | % 31
  d f bes, f'
  | % 32
  des ges, bes des
  | % 33
  c g ees c
  | % 34
  f a, f a
  | % 35
  bes d g b,
  | % 36
  c g' f a,
  | % 37

}

\score {
  \new StaffGroup <<
    \new ChordNames {
      \transpose c' c \chordmode {
        \set Staff.midiInstrument = #"bright acoustic"
        \set Staff.midiPanPosition = #0.2
        bes1:dim a2:m7 d:7 g:m7 c:7 f:m7 bes:7
        es1:7 es2:m7 as:7 d:m7 g:7 des:m7 ges:7
        c1:m7 f:7 bes2:dim g:7 c:m7 f:7
        bes1:dim a2:m7 d:7 g:m7 c:7 f:m7 bes:7
        es1:7 es2:m7 as:7 d:m7 g:7 des:m7 ges:7
        c1:m7 f:7 bes2:dim g:7 c:m7 f:7
        bes1:dim a2:m7 d:7 g:m7 c:7 f:m7 bes:7
        es1:7 es2:m7 as:7 d:m7 g:7 des:m7 ges:7
        c1:m7 f:7 bes2:dim g:7 c:m7 f:7
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