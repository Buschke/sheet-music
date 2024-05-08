\version "2.22.2"
\include "articulate.ly"
\language "english"

\header {
  dedication = ""
  title = "Suzuki Cello 1"
  subtitle = "Cello 1"
  subsubtitle = ""
  instrument = ""
  composer = "Suzuki"
  arranger = \markup {"Satz: " \with-url "https://buschke.com" "Sven Buschke"}
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  copyright = ""
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

globalA = {
  \key g \major
  \time 2/2
  \tempo "Allegro" 2=50
}

scoreACello = \relative c {
  \globalA
  % Music follows here.
  g'4 g fs e
  d2. d4
  e e fs d
  g2 d
  g4 g fs e
  d2. d4
  e e fs d
  g2. r4
  b8 c d4 b8 c d4
  c b a d,
  g2 a
  b2. r4
  b8 c d4 b8 c d4
  c b a d,
  e2 fs
  g2. r4
  a8 b c4 c2
  b4 a g2
  a8 b c4 b a
  b2 d
  a8 b c4 c2
  b4 a g b
  e,2 fs
  g2. r4
  g g fs e
  d2. d4
  e e fs d
  g2 d
  g4 g fs e
  d2. d4
  e e fs d
  g2. r4
  \bar "|."
}

scoreARight = \relative c'' {
  \globalA
  % Music follows here.
  <b, d g>4 <b g> <c fs> e
  <d g>2. <b d>4
  <c e>2 <b d>
  <b d> b4( a)
  <b e g>2 <<{fs'4( e)}\\{c2}>>
  d2.( <b d>4)
  <c e>2 <b d>2
  <b d>2. r4
  g'8 a b4 g8 a b4
  a g <<{g fs}\\{c2}>>
  <d g> <c d fs>
  <b d g>2. fs'4
  g8 a b4 g8 a b4
  <<{a4 g}\\{e2}>><d fs>4 d
  <c e>2 <<{fs2}\\{d4 c}>>
  <b d g>2. r4
  fs'8( g) a4 a2
  g4 fs e2
  fs8 g a4 g fs
  g2 b
  fs8( g) a4 a2
  g4 fs e d~
  d c <b d>( <a c>)
  b1
  <<{g'2 fs4 e}\\{<b d>4 d c2}>>
  d2.( <b d>4)
  <c e>2 <b d>
  <b d>1
  b2 c
  d1
  <c e>2 <b d>
  <b d>2. r4
}

scoreALeft = \relative c' {
  \globalA
  % Music follows here.
  g,4 b a c
  b2. g4
  c a d8 c b a
  g2 g'4 fs
  e g r a,
  b2. g4
  c a d8 c b a
  g4 d' g r
  g,2. g4
  c2 d
  b a
  g4 g b d
  g fs e d
  c2 d
  c4 a d d,
  g d' g r
  d d' d, d'
  d, d' d, d'
  d, d' d, d'
  g, d' g, d'
  d, d' d, d'
  d, <ds c'> <e b'>2
  a, d
  g4 d g,2
  g4 b a c
  b2. g4
  c a d8 c b a
  g2 g'4 fs
  e g <<{a2~ a4 d, g2}\\{r4 g, b2. g4}>>
  c a d8( c b a
  g4) d' g r
}

claveA = {\new DrumStaff <<
  \drummode {\globalA
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
         hh8 cl hh cl hh cl hh cl
%        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
    } \\ {
      bd4 sn4 sn4 sn4
    } >>
  }
>>
}

scoreACelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
} { \clef bass \scoreACello }

scoreAPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreARight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreALeft }
>>

\bookpart {
\header {
  subtitle = "Rigadoon"
  subsubtitle = ""
  composer = "Henry Purcell"
  meter = ""
  piece = ""
  opus = ""
}
  \score {
%    {
%      \claveA
      <<
        \scoreACelloPart
        \scoreAPianoPart
      >>
%    }
    \layout { }
%    \midi { }
  }
  \score {
    {
      \claveA
      <<
        \scoreACelloPart
        \scoreAPianoPart
      >>
    }
%    \layout { }
    \midi { }
  }
}

globalB = {
  \key c \major
  \time 4/4
  \tempo "Allegro" 4=100
}

scoreBCello = \relative c {
  \globalB
  % Music follows here.
  \partial 8
  g8 |
  c4.
}

scoreBRight = \relative c'' {
  \globalB
  % Music follows here.

}

scoreBLeft = \relative c' {
  \globalB
  % Music follows here.

}

scoreBCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
} { \clef bass \scoreBCello }

scoreBPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreBRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreBLeft }
>>

\bookpart {
\header {
  subtitle = "The Happy Farmer"
  subsubtitle = "NN"
  composer = "Robert Schumann"
  meter = "NN"
  piece = "NN"
  opus = "NN"
}
  \score {
    <<
      \scoreBCelloPart
      \scoreBPianoPart
    >>
    \layout { }
    \midi { }
  }
}

globalC = {
  \key c \major
  \time 3/4
  \tempo "Grazioso" 4=108
}

scoreCCelloA = \relative c {
  \globalC
  % Music follows here.
  g'4-4\downbow g--\upbow( g--\upbow)
  g c8 b c4
  e, d8-0( f-2) e d |
  e4 d8 e c4 |
  a' a a |
  a g8 f e d
  g4 f8 e d e |
  c2.
}

scoreCCelloB = \relative c {
  % Music follows here.
  d4 d d |
  d g8 fs g4 |
  d e f |
  e d8 e c4 |
  c' c c |
  c8 b a g fs e |
  d4 g fs |
  g2 r4 |
  c f, f |
  f a8 g f4 |
  d' f, f |
  e8 g f e d4 |
  g g g |
  g a8 b c4 |
  e,8 g f e d e |
  c2.

}

scoreCRightA = \relative c'' {
  \globalC
  % Music follows here.
  <e, g>2 <d f>4
  <c e>2. |
  <c g>2 <d g>4 |
  <e g>2. |
  <c a'>2. |
  <c a'>2 <d b'>4 |
  <g c>a <f b> |
  <e c'>2.
}

scoreCRightB = \relative c'' {
  % Music follows here.
  <b, d>2<c d>4 |
  d2. |
  d4 e <b f'> |
  <c e> d c |
  <c a'>2. |
  <<{a'2.}\\{c,4 d fs}>> |
  <<{g2 fs4}\\{d4 e c}>> |
  <b g'>2. |
  <c f>2 c'4 |
  <f, d'>2. |
  <d g>2 d'4|
  <g, e'>2 <f d'>4 |
  <g c>2 <f b>4 |
  <e c'> <g e'>8 <f d'> <e c'>4~ |
  <e c'> <f a> <d b'> |
  <e c'>2.
}

scoreCLeftA = \relative c' {
  \globalC
  % Music follows here.
  c,2 b4
  c c8 d e f |
  e2 b4 |
  c d e |
  f2. |
  f, |
  e4 f g |
  c8 g e g c,4
}

scoreCLeftB = \relative c' {
  % Music follows here.
  g,2 a4 |
  b2. |
  b4 c g |
  c, d e |
  a2. |
  fs2 d4 |
  b' c d |
  g8 d b d g,4 |
  a2. |
  a'8 d f, a d,4 |
  b2. |
  c2 d4 |
  e2 d4 |
  c2. |
  g'2 g,4 |
  c,2.
}

scoreCCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
} { \clef bass {\repeat volta 2 {\scoreCCelloA} \repeat volta 2 {\scoreCCelloB}} }

scoreCPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
} {\repeat volta 2 {\scoreCRightA} \repeat volta 2 {\scoreCRightB} }
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass {\repeat volta 2 {\scoreCLeftA} \repeat volta 2 {\scoreCLeftB}} }
>>

\bookpart {
\header {
  subtitle = "Minuet in C"
  subsubtitle = ""
  composer = "Johann Sebastian Bach"
  meter = ""
  piece = ""
  opus = ""
}
  \score {
%    \unfoldRepeats {
    <<
      \scoreCCelloPart
      \scoreCPianoPart
    >>
%    }
    \layout { }
%    \midi { }
  }
  \score {
    \unfoldRepeats {
    \articulate <<
    <<
      \scoreCCelloPart
      \scoreCPianoPart
    >>
    >>
    }
%    \layout { }
    \midi { }
  }
}

globalD = {
  \key c \major
  \time 3/4
  \tempo "Allegro" 4=50
}

scoreDCelloA = \relative c {
  \globalD
  % Music follows here.
  c8---4\f e---1 g---4 c---2 d,---0 b'---1
  c4 c,\upbow c\upbow
  c8 e g c d, b'
  c4 c, c
  a' a a8 c
  g4 g g8 c
  f,4 g8 f e f
  d2.
  c8 e g c d, b'
  c4 c, c
  c8 e g c d, b'
  c4 c, c
  a' g8 f e d
  g4 f8 e d c
  \tuplet 3/2 {d8( e f)} g,4 b
  c2.
}

scoreDRightA = \relative c'' {
  \globalD
  % Music follows here.
  <e, c'>2\f <d b'>4
  <<{c'2.}\\{c,8 e g c g e}>>
  <e c>2 <d b>4
  <<{c'2.}\\{c,8 e g c g e}>>
  <f a>2<f a>4
  <e g>2<e g>4
  <<{f g8 f e f}\\{d4 b c}>>
  d2.
  <e c'>2<d b'>4
  <<{c'2.}\\{c,8 e g c g e}>>
  <e c'>2<d b'>4
  <<{c'2.}\\{c,8 e g c g e}>>
  <f a c>2.
  <e g c>
  <f a d>4 g <f b>
  <e c'>2.
}

scoreDLeftA = \relative c' {
  \globalD
  % Music follows here.
  c,2 g4
  c,2.
  c'2 g4
  c,2.
  f4 c' f,
  e c' e,
  d g c,
  g'8 a b g a b
  c2 g4
  c,2.
  c'2 g4
  c,2.
  f4 a c
  e, g c
  f,2 g4
  c g c,
}

scoreDCelloB = \relative c {
  % Music follows here.
  c8 d e d c b
  c4 a a
  c'8 b a c b a
  b4 e, e
  c'8 b a c b a
  b4 e, a
  \tuplet 3/2 {b8 c d} e,4 gs
  a gs8 a b4
  c c8 b a g
  a4 a8 g f e
  f4 f8 e d c
  b4 a8 b g4
  d g, g
  e' g g
  f' g8 f e f
  d2.
  c8 e g c d, b'
  c4 c, c
  c8 e g c d, b'
  c4 c, c
  a' g8 f e d
  g4 f8 e d c
  \tuplet 3/2 {d8 e f} e,4 g
  c2.
}

scoreDRightB = \relative c'' {
  % Music follows here.
  c,4 b e
  c a a
  <c e a>2 <d f>4
  <<{e2.}\\{e8 gs b e b gs}>>
  <c, e a>2<d f>4
  <e gs>2<e a>4
  <<{a2 gs4}\\{f4 e2}>>
  <c e a>2.
  <e g c>
  <f a c>
  <f a d>2<f a d>4
  <f b>2.
  b8 g b g b g
  c g c g c g
  <f d'>2<e c'>4
  <d b'>2.
  <e c'>2<d b'>4
  <<{c'2.}\\{c,8 e g c g e}>>
  <e c'>2<d b'>4
  <<{c'2.}\\{c,8 e g c g e}>>
  <f a c>2.
  <e g c>
  <f a d>4 g <f g b>4
  <e g c>2.
}

scoreDLeftB = \relative c' {
  % Music follows here.
  a,4 gs e
  a e a,
  c'2 d4
  e e, e
  c'2 d4
  e d c
  d e2
  a,2.
  e4 g c
  f, g a
  d, e f
  g d g,
  g'2 d'4
  g,2 c4
  b g c
  g8 a b g a b
  c2 g4
  c,2.
  c'2 g4
  c,2.
  f4 a c
  e, g c
  f, g g
  c g c,
}

scoreDCelloPart = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
} { \clef bass {\repeat volta 2 {\scoreDCelloA} \repeat volta 2 {\scoreDCelloB} } }

scoreDPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } {\repeat volta 2 {\scoreDRightA} \repeat volta 2 {\scoreDRightB} }
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass {\repeat volta 2 {\scoreDLeftA} \repeat volta 2 {\scoreDLeftB}} }
>>

scoreDCelloPartMidi = \new Staff \with {
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
} { \clef bass {\repeat unfold 2 {\scoreDCelloA} \repeat unfold 2 {\scoreDCelloB} } }

scoreDPianoPartMidi = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } {\repeat unfold 2 {\scoreDRightA} \repeat unfold 2 {\scoreDRightB} }
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass {\repeat unfold 2 {\scoreDLeftA} \repeat unfold 2 {\scoreDLeftB}} }
>>

\bookpart {
\header {
  subtitle = "Minuet No. 2"
  subsubtitle = "NN"
  composer = "Johann Sebastian Bach"
  meter = "NN"
  piece = "NN"
  opus = "NN"
}
  \score {
    <<
      \scoreDCelloPart
      \scoreDPianoPart
    >>
    \layout { }
%    \midi { }
  }
  \score {
    \articulate
    <<
    <<
      \scoreDCelloPart
      \scoreDPianoPart
    >>
    >>
%    \layout { }
    \midi { }
  }
}
