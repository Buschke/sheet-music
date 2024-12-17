\version "2.24.4"
\language "english"

\header {
  dedication = "Dedicatum Giovanni Pierluigi da Palestrina"
  title = "Triofuga pro Organo"
  subtitle = "Ex Missa Papae Marcelli (Fuga ante litteram)"
  subsubtitle = "Inspiratum a missa celeberrima Palestrina"
  instrument = "Organum"
  composer = \markup {\with-url "https://buschke.com" "Sven Buschke"}
  arranger = "Op. 1"
  poet = "Ex Palestrina"
  meter = "Ex Missa Pape Marcelli"
  piece = "Kyrie"
  opus = "A"
  copyright = \markup {\with-url "https://buschke.com" "© Sven Buschke, VI Decembris MMXXIV"}
  tagline = "Harmoniae Sacrae Resonantia"
}

globalKyrie = {
  \key c \major
  \time 2/1
  \tempo "Andante" 4=100
}

rightKyrie = \relative c'' {
  \globalKyrie
  % Music follows here.
  R1*10
  R1*10
  d1. d2 d1 g2. f4 e2 d e1~e2 d c1 d r
}

leftKyrie = \relative c' {
  \globalKyrie
  % Music follows here.
  R1*10 
  d,1. d2 d1 g2. f4 e2 d e1~e2 d c1 d r
  d2 f4. g8 a1 b2 c4 d e2. d4 c1 b2 a g1 f2 r
  c4 d e2 f4. g8 a1 b2 c4 d e2. d4 c1 b2 a g1 f r
}

pedalKyrie = \relative c {
  \globalKyrie
  % Music follows here.
  d1. d2 d1 g2. f4 e2 d e1~e2 d c1 d r
  f1. f2 f1 a2. g4 f2 e f1~f2 e d1 e r
d2 f4. g8 a1 b2 c4 d e2. d4 c1 b2 a g1 f2 r
  f4 g a2 b4. c8 d1 e2 f4 g a2. g4 f1 e2 d c1 b r%  g4 a b c | d2 c4 b | a2 g4 f | e2 d4 c
}

globalGloria = {
  \key c \major
  \time 2/2
  \tempo "Andante" 4=100
}

rightGloria = \relative c'' {
  \globalGloria
  % Music follows here.
  R1*4
  R1*4
  g4 a b c | d2 c4 b | a2 g4 f | e2 d4 c
}

leftGloria = \relative c' {
  \globalGloria
  % Music follows here.
  R1*4
  g4 a b c | d2 c4 b | a2 g4 f | e2 d4 c
}

pedalGloria = \relative c {
  \globalGloria
  % Music follows here.
  g4 a b c | d2 c4 b | a2 g4 f | e2 d4 c
  g4 a b c | d2 c4 b | a2 g4 f | e2 d4 c

}

\score {
  \header {
    piece = "Kyrie"
    opus = "Fuga I"
  }
  <<
    \new PianoStaff \with {
      instrumentName = "Organum"
    } <<
      \new Staff = "right" \with {
        midiInstrument = "church organ"
      } \rightKyrie
      \new Staff = "left" \with {
        midiInstrument = "church organ"
      } { \clef bass \leftKyrie }
    >>
    \new Staff = "pedal" \with {
      midiInstrument = "church organ"
    } { \clef bass \pedalKyrie }
  >>
  \layout { }
  \midi { }
}

\score {
  \header {
    piece = "Gloria"
    opus = "Fuga II"
  }
  <<
    \new PianoStaff \with {
      instrumentName = "Organum"
    } <<
      \new Staff = "right" \with {
        midiInstrument = "church organ"
      } \rightGloria
      \new Staff = "left" \with {
        midiInstrument = "church organ"
      } { \clef bass \leftGloria }
    >>
    \new Staff = "pedal" \with {
      midiInstrument = "church organ"
    } { \clef bass \pedalGloria }
  >>
  \layout { }
  \midi { }
}