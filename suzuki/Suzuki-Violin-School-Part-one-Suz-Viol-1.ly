\version "2.22.2"
\include "articulate.ly"
\language "english"

\header {
  dedication = "NN"
  title = "Suzuki Violin School"
  subtitle = "Part one"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "Suzuki"
  arranger = "Satz Sven Buschke"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "Suz. Viol. 1"
  copyright = "NN"
  tagline = "NN"
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

globalA = {
  \key g \major
  \time 3/4
  \tempo "Allegretto" 2.=66
}

scoreAViolinA = \relative c'' {
  \globalA
  % Music follows here.
  d4\mf-.\downbow d-.( d-.)
  b a8 b g4
  a d c
  b2 a4
  d c8 b a g
  e'4 c8 b a g
  fs4 e8 d fs4
}

scoreAViolinB = \relative c'' {
  g2.
}

scoreAViolinC = \relative c'' {
  g2.
}

scoreAViolinD = \relative c'' {
  b4 e2
  cs4 b8 cs a4
  d e fs
  e8 d cs b a4
  a' g8 fs e d
  b'4 g8 fs e d 
  cs4 a cs
  d2.
  d4 c8 b a4
  b a8 b g4
  c2 c8 b
  a2.
  d4 c8 b a g
  e'4 c8 b a g
  fs4 e8 d fs4
  g2.
}

scoreARightA = \relative c'' {
  \globalA
  % Music follows here.
  d4\mf-.\(( d-. d-.)
  b a8 b g4
  a d c
  b2 a4\)
  d c8 b a g
  e'4 c8 b a g
  fs4 e8 d fs4
}

scoreARightB = \relative c'' {
  g2.
}

scoreARightC = \relative c'' {
  g2.
}

scoreARightD = \relative c'' {
  b4 e2
  cs4 b8 cs a4
  d e fs
  e8 d cs b a4
  a' g8 fs e d
  b'4 g8 fs e d 
  cs4 a cs
  d2.
  d4 c8 b a4
  b a8 b g4
  c2 c8 b
  a2.
  d4 c8 b a g
  e'4 c8 b a g
  fs4 e8 d fs4
  g2.
}

scoreALeftA = \relative c' {
  \globalA
  % Music follows here.
  g4 fs d
  <<{g2.} \\ {r4 d g,}>>
  g' fs8 e fs d
  g4 g, d'8 c
  b4 r r
  c r r
  d2.(
}

scoreALeftB = \relative c'' {
  g,,4) b8 c d4
}

scoreALeftC = \relative c'' {
  g,,2.)
}

scoreALeftD = \relative c'' {
  g,2 e4
  a2.
  fs4 e d
  a2.
  fs'4 r r
  g r r
  a2( a,4
  d)
  d'8 c b a
  g2 fs4
  g2.
  a4 fs g
  d d, d'8 c
  b4 r r
  c r r
  d2 d,4
  g2.
}

scoreAViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
} {\repeat volta 2 {\scoreAViolinA |}
  \alternative {
    {\scoreAViolinB | }
    {\scoreAViolinC | }
} \repeat volta 2 {\scoreAViolinD }}

scoreAPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
} {\repeat volta 2 {\scoreARightA |}
  \alternative {
    {\scoreARightB | }
    {\scoreARightC | }
} \repeat volta 2 {\scoreARightD }}
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass {\repeat volta 2 {\scoreALeftA |}
  \alternative {
    {\scoreALeftB | }
    {\scoreALeftC | }
} \repeat volta 2 {\scoreALeftD }} }
>>

\bookpart {
\header {
  subsubtitle = "Minuet 1"
  composer = "Johann Sebastian Bach"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "Suz. Viol. 1"
}

  \score {
    <<
      \scoreAViolinPart
      \scoreAPianoPart
    >>
    \layout { }
    \midi { }
  }
}

globalB = {
  \key g \major
  \time 3/4
  \tempo "Andantino" 4=100
}

scoreBViolinA = \relative c'' {
  \globalB
  % Music follows here.
  g8 b d g a, fs'
  g4 g, g
  g8 b d g a, fs'
  g4 g, g
  e' e e8 g
  d4 d d8 g
  c,4 d8 c b c 
  a2.
  g8 b d g a, fs'
  g4 g, g
  g8 b d g a, fs'
  g4 g, g
  e' d8 c b a
  d4 c8 b a g 
  \tuplet 3/2 {a8 b c} d,4 fs
  g2.
}

scoreBViolinB = \relative c'' {
  % Music follows here.
  g8 a b a g fs
  g4 e e
  g'8 fs e g fs e
  fs4 b, b
  g'8 fs e g fs e 
  fs4 b, e
  \tuplet 3/2 {fs8 g a} b,4 ds
  e ds8 e fs4  
  g g8 fs e d
  e4 e8 d c b 
  c4 c8 b a g
  fs4 e8 fs d4
  a' d, d
  b' d, d
  c' d8 c b c
  a2.
  g8 b d g a, fs'
  g4 g, g
  g8 b d g a, fs'
  g4 g, g
  e' d8 c b a
  d4 c8 b a g
  \tuplet 3/2 {a8 b c} d,4 fs
  g2.
}

scoreBRightA = \relative c'' {
  \globalB
  % Music follows here.
  \scoreBViolinA
}

scoreBRightB = \relative c'' {
  % Music follows here.
  \scoreBViolinB
}

scoreBLeftA = \relative c' {
  \globalB
  % Music follows here.
  g2 d4
  g,8 b d g d b
  g2 d'4
  g,8 b d g d b
  c4 g' c,
  b g' b,
  a fs' g
  d8 e fs d e fs
  g2 d4
  g,8 b d g d b
  g2 d'4
  g,8 b d g d b
  c4 e g
  b, d g
  c,2 d4
  g d g,
}

scoreBLeftB = \relative c' {
  % Music follows here.
  e, ds b
  c b e,
  e' g b
  b,8 ds fs b fs ds
  e4 g b
  b, a' g
  a b b,
  e2.
  b4 d g
  c, d e
  a, b c
  d a d,
  fs'8 d fs d fs d
  g d g d g d
  fs4 d g
  d8 e fs d e fs
  g2 d4
  g,8 b d g d b
  g2 d'4
  g,8 b d g d b
  c4 e g
  b, d g
  c,2 d4
  g d g,
}

scoreBViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
} {\repeat volta 2 {\scoreBViolinA}
    \repeat volta 2 {\scoreBViolinB}}

scoreBPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } {\repeat volta 2 {\scoreBRightA}
    \repeat volta 2 {\scoreBRightB}}
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass {\repeat volta 2 {\scoreBLeftA}
    \repeat volta 2 {\scoreBLeftB}} }
>>



\bookpart {
\header {
  subsubtitle = "Minuet 2"
  composer = "Johann Sebastian Bach"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "Suz. Viol. 1"
}
  \score {
    <<
      \scoreBViolinPart
      \scoreBPianoPart
    >>
    \layout { }
    \midi { }
  }
}

globalC = {
  \key g \major
  \time 3/4
  \tempo "Allegretto" 2.=66
}

scoreCViolinA = \relative c'' {
  \globalC
  % Music follows here.
  d4 g,8 a b c
  d4 g, g
  e' c8 d e fs
  g4 g, g
  c d8 c b a
  b4 c8 b a g
  fs4 g8 a b g
  a2.
  d4 g,8 a b c
  d4 g, g
  e' c8 d e fs
  g4 g, g
  c d8 c b a 
  b4 c8 b a g
  a4 b8 a g fs
  g2.
}

scoreCViolinB = \relative c'' {
  % Music follows here.
  b'4 g8 a b g
  a4 d,8 e fs d
  g4 e8 fs g d
  cs4 b8 cs a4
  a8 b cs d e fs 
  g4 fs e
  fs a, cs 
  d2.
  d4 g,8 fs g4
  e' g,8 fs g4
  d' c b
  a8 g fs g a4
  d,8 e fs g a b 
  c4 b a
  b8 d g,4 fs
  g2.
}  

scoreCRightA = \relative c'' {
  \globalC
  % Music follows here.
  \scoreCViolinA
}

scoreCRightB = \relative c'' {
  % Music follows here.
  \scoreCViolinB
}

scoreCLeftA = \relative c' {
  \globalC
  % Music follows here.
  <g b d>2 a4
  b2.
  c
  b
  a
  g
  d'4 b g
  d' d,8 c' b a
  g2 a4
  g b g
  c2.
  b4 c8 b a g
  a2 fs4
  g2 b4
  c d d,
  g2 g,4
}

scoreCLeftB = \relative c' {
  % Music follows here.
  g2.
  fs
  e4 g e
  a2 a,4
  a'2.
  b4 d cs
  d fs, a
  d d, c'
  b2 b4
  c2 c4
  b a g
  d2 r4
  d2.
  e4 g fs
  g b, d
  g d g,
}

scoreCViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
} {\repeat volta 2 {\scoreCViolinA}
    \repeat volta 2 {\scoreCViolinB}}

scoreCPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } {\repeat volta 2 {\scoreCRightA}
    \repeat volta 2 {\scoreCRightB}}
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass {\repeat volta 2 {\scoreCLeftA}
    \repeat volta 2 {\scoreCLeftB}} }
>>

\bookpart {
\header {
  subsubtitle = "Minuet 3"
  composer = "Johann Sebastian Bach"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "Suz. Viol. 1"
}

  \score {
    <<
      \scoreCViolinPart
      \scoreCPianoPart
    >>
    \layout { }
    \midi { }
  }
}

globalD = {
  \key g \major
  \time 4/4
  \tempo "Allegro giocoso" 4=100
}

scoreDViolin = \relative c'' {
  \globalD
  % Music follows here.
  \partial 8
  d,8
  g4. b8 d4. g,8
  c e g e d4. b8
  c a d, c' b g d b'
  fs4 e d r8 d
  g4. b8 d4. g,8
  c e g e d4. b8
  c a d, c' b g d b'
  fs4 e d r8 d
  c'4. b8 a4. d,8
  c' b a g a4. d,8
  g4. b8 d4. g,8
  c e g e d4. b8
  c a d, c' b g d b'
  a4 fs g r8 d
  c'4. b8 a4. d,8
  c' b a g a4. d,8
  g4. b8 d4. g,8
  c e g e d4. b8
  c a d, c' b g d b'
  a4 fs g r8
  f a f'
  \bar "|."
}

scoreDRight = \relative c'' {
  \globalD
  % Music follows here.
  \partial 8
  r8
  r <d, g b><d g b> r r <g b d><g b d> r
  r <g c e><c e> r r <g b d><g b d> r
  r <fs c' d><fs c' d> r r <d g b><d g b> r
  r <d a'> r <g a cs> r <fs a d><fs a d>4
  r8 <d g b><d g b> r r <g b d><g b d> r
  r <g c e><c e> r r <g b d><g b d> r
  r <fs c' d><fs c' d> r r <d g b><d g b> r
  r <d a'> r <g a cs> r <fs a d><fs a d>4
  r8 <d fs><d fs> r r <c d><c d> r
  r d d cs r d d r
  r <b d> <b d> r r <g' b><g b> r
  r <g c> r <g c> r <g b><g b> r
  r <fs c' d><fs c' d> r r <d g b><d g b><d g b>
  r <e a> r < c d> r <b d g>< b d g>4
  r8 <d fs><d fs> r r <c d><c d> r
  r d d cs r d d r
  r <b d><b d> r r <g' b><g b> r
  r <g c> r <g c> r <g b><g b> r
  r <fs c' d><fs c' d>4 r8 <d g b><d g b><d g b>
  r <e a> r <c d> r <b d g><b d g>
}

scoreDLeft = \relative c' {
  \globalD
  % Music follows here.
  \partial 8
  d,8
  g4. b8 d4. g,8
  c e g e d4. b8
  c a d, c' b g d b'
  fs4 e d r8 d
  g4. b8 d4. g,8
  c e g e d4. b8
  c a d, c' b g d b'
  fs4 e d r8 d
  c'4. b8 a4. d,8
  c' b a g a4. d,8
  g4. b8 d4. g,8
  c e g e d4. b8
  c a d, c' b g d b'
  a4 fs g r8 d
  c'4. b8 a4. d,8
  c' b a g a4. d,8
  g4. b8 d4. g,8
  c e g e d4. b8
  c a d, c' b g d b'
  c,4 d g r8
  \bar "|."
}

scoreDViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
} \scoreDViolin

scoreDPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreDRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreDLeft }
>>

\bookpart {
\header {
  subsubtitle = "Happy Farmer"
  composer = "Robert Schumann"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "Suz. Viol. 1"
}
  \score {
    <<
      \scoreDViolinPart
      \scoreDPianoPart
    >>
    \layout { }
    \midi { }
  }
}
