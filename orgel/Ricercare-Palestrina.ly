\version "2.24.4"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = ""
  subsubtitle = ""
  instrument = ""
  composer = "G. F. da Palestrina"
  arranger = ""
  poet = "Ricercare"
  meter = ""
  piece = ""
  opus = ""
  copyright = ""
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key c \major
  \time 2/1
  \tempo "Largo" 4=100
}

right = \relative c'' {
  \global
  % Music follows here.
  r\breve r r r1 e, d2 c f1 e2 a1 g2 f e d c
  b1 a2 gs b c2. b4 a2~a gs a1 e' r e d2 c f1 e2 a~
  a g f e d c b1 a4 b c d e c d e f1 e2 a, r\breve r2 a2. b4 c d
  e2 c d e~e4d c2 b a b1 a2 c~c4 d e f g2 e fs g1 fs2 g4f e d e1
  d2 c1 b2 c1 r2 a4 b c d e2 f g a4 g f e f1 e2 d e1 f\breve e\bar "|."
}

left = \relative c' {
  \global
  % Music follows here.
  b1 a2 g c1 b r2 e1 d2 c1. b2 a g a b c1 b r2 c b a
  d1 c2 b d e a,4 b c a b1 c~c2 b a g c1 b2 e~e d c2. b4
  a2 b2. a4 c2 b a gs1 a\breve r2 a2. b4 c d e2 c d e a, c2. b4 a2
  g a b c~c4 b a2 gs a~a gs a1 r2 g2~g4 a b c d2 b c d g,1 c
  b2 e d1 c2 a~a4 b c d e2 c d e a,1 d c2 a b c d a d1 cs\breve\bar "|."
}

pedal = \relative c {
  \global
  % Music follows here.
  r\breve r1 e d2 c f1 e2 a1 g2 f e d1 c2. d4 e1 a, r
  r1 r2 e' d c f1 e r2 a2~a g f e4 d c d e f g2 a d,1 a'2. g4
  f2 e d c d1 e a, r2 d~d4 e f g a2 f g a d, a'~a4 g f e f1
  c r2 a2~a4 b c d e2 c d e a,2. b4 c2. d4 e1 r\breve r2 c2~c4 d e f 
  g2 e f g a1 a,~a r r2 d2~d4 e f g a2 f g a d,\breve a\bar "|."
}

\score {
  <<
    \new PianoStaff  <<
      \new Staff = "right" \with {
        midiInstrument = "church organ"
      } \right
      \new Staff = "left" \with {
        midiInstrument = "church organ"
      } { \clef bass \left }
    >>
    \new Staff = "pedal" \with {
      midiInstrument = "church organ"
    } { \clef bass \pedal }
  >>
  \layout { }
  \midi { }
}
