\version "2.20.0"

\header {
  title = "E Bass Lesson # 3"
  subtitle = "Freddie Freeloader"
  subsubtitle = "Walking Bass"
  composer = " Miles Davis"
  arranger = "Paul Chambers"
  piece = "Jazz"
  tagline = \markup {
      "11.04.2022 - Version 1.0 - www.electricbass.ch"
  }
}

notes = \relative {
  \key bes \major
  \time 4/4
  \tempo 4 = 130
    bes,,4 d bes' a
  | % 2
  aes g c, b
  | % 3
  bes aes g ges
  | % 4
  f bes d f
  | % 5
  ees bes' c b
  | % 6
  bes g aes a
  | % 7
  bes aes aes g
  | % 8
  f e ees des
  | % 9
  c b bes a
  | % 10
  bes f'8 bes ees,4 g8 bes
  | % 11
  aes4 bes c g
  | % 12
  f des c a
  | % 13
  bes f' aes bes
  | % 14
  c b bes d
  | % 15
  ees d ees des
  | % 16
  d aes bes f
  | % 17
  g bes ees d
  | % 18
  c b bes g
  | % 19
  f ees d c
  | % 20
  bes aes g d'
  | % 21
  c g' f a,
  | % 22
  bes f' ees bes'
  | % 23
  aes bes c ges
  | % 24
  f d c b
  | % 25
  bes d' ees d
  | % 26
  bes f c f
  | % 27
  bes, f' d' ees
  | % 28
  d aes bes ees,
  | % 29
  ees bes' ees des
  | % 30
  g, bes ees, e
  | % 31
  f g aes a
  | % 32
  bes aes d, g
  | % 33
  c, b bes a
  | % 34
  bes' b c g
  | % 35
  aes c, des d
  | % 36
  ees aes a f
  | % 37
  bes d ees e
  | % 38
  f g aes g
  | % 39
  f e ees des
  | % 40
  d ees d bes
  | % 41
  ees des c b
  | % 42
  bes g f ees
  | % 43
  d c bes aes
  | % 44
  g des' \tuplet 3/2 { f8 f f } \tuplet 3/2 { f f f }
  | % 45
  c4 g' f a,
  | % 46
  bes f' ees bes'
  | % 47
  aes ees c ees
  | % 48
  f g aes a
  | % 49
}

\score {
  \new StaffGroup <<
    \new ChordNames {
      \transpose c' c \chordmode {
        \set Staff.midiInstrument = #"bright acoustic"
        \set Staff.midiPanPosition = #0.2
        bes\longa:7
        es\breve:7 bes:7
        f1:7 es:7 as\breve:7
        bes\longa:7 es\breve:7 bes:7
        f1:7 es:7 bes\breve:7
        bes\longa:7 es\breve:7 bes:7
        f1:7 es:7 as\breve:7
        bes\longa:7 es\breve:7 bes:7
        f1:7 es:7 bes\breve:7
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