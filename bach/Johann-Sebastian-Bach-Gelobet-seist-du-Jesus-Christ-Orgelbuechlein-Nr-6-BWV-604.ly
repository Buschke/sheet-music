\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = "Gelobet seist du, Jesus Christ"
  subtitle = "Orgelbüchlein Nr. 6"
  subsubtitle = ""
  instrument = "Orgel"
  composer = "Johann Sebastian Bach"
  arranger = "Fingerings: Sven Buschke"
  poet = ""
  meter = ""
  piece = ""
  opus = "BWV 604"
  copyright = "© 19.02.2023 Sven Buschke (Fingerings)"
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

right = \relative c'' {
  \global
  % Music follows here.
  \partial 2
  g2|
  g4~ g16 a f g a4 g8. a16|
  b8 c c4 c4.\fermata c16 d|
  b8.\prall c16 d4 e d8. c16|
  b4 a g\fermata g|
  c4 b8. c16 d4 a|
  g8 fs e4 d\fermata d|
  a' a a b|
  c8 b a4 g8. a16 b4|
  a2\fermata g4 g|
  g g g2~|
  g2\fermata
  \bar "|."
}

leftOne = \relative c' {
  \global
  % Music follows here.
  \clef treble
  \partial 2
  b8. c16 d4|
  e4~ e16 e d8 c8. d16 r e fs8|
  g8. a16 r a b8 r16 g8. r16 g8.|
  g4~ g8. f16 e8. g16~ g g fs8|
  g4~ 16 g  fs8 r16 d8 f16 e4~|
  e16 e fs8 g4~ 16 fs g8~ g fs|
  \clef bass
  d4~ 16 d cs8 d16 a g8 fs8. g16|
  a8. b16 cs8 e r16 d c8 b d|
  e4~ 8 d16 c~c b c8 d4~|
  d16 8.~ 4 8. 16 c8. b16|
  c2~ 8 8~16 d a8|
  b2\fermata
  \bar "|."
}

leftTwo = \relative c' {
  \global
  % Music follows here.
  \clef treble
  \partial 2
  r16 g a8 b4|
  b c8. bf16 r  a b8 c4|
  r16 d e8 f8. 16~8 e16 d e4|
  d~ 16 c b8~ 16 g c e a,4|
  g8 b e d16 c~8 b c g|
  a8. ds16 e g, a8 b8. c16 d4|
  \clef bass
  d8. c16 b8 a16 g fs8. e16 r d e8|
  r16 fs g8 r16 a8 g16 f8. 16 g4~|
  4~16 g fs8 g8. fs16 g4~|
  8 fs16 e fs4 r16 g f8 r16 e d8|
  e2~16 8 16 d8. c16|
  d2\fermata
  \bar "|."
}

pedal = \relative c {
  \global
  % Music follows here.
  \partial 2
  r4 r16 g' g, f'|
  e e e, d' c4 f,8 f' e c|
  g' fs g g, c2|
  r16 g g' a, b8 g c a d d,|
  r16 e e' b c a d8 g,4 r16 c c, b'|
  a8 a' e4 d4 r16 d d, c'|
  b b' b, a' g8 a d,4 d,|
  d' a8 cs d4 r16 g g, f'|
  e e e, d' c8 d e4 r16 b g' c,|
  d4 r16 d d, c' b4 c8 g|
  r16 c, c' d, e e' e, ds g2~|
  g2\fermata
  \bar "|."
}

\score {
  <<
    \new PianoStaff \with {
      instrumentName = "Organ"
      shortInstrumentName = "Org."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "church organ"
      } \right
      \new Staff = "left" \with {
        midiInstrument = "church organ"
      } { \clef bass << \leftOne \\ \leftTwo >> }
    >>
    \new Staff = "pedal" \with {
      midiInstrument = "church organ"
    } { \clef bass \pedal }
  >>
  \layout { }
  \midi { }
}
