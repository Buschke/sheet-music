\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = "Ab Nr. 84"
  subtitle = "Orgelschule"
  subsubtitle = "2. Pedalspiel"
  instrument = "Orgel"
  composer = "Josef Schildknecht"
  arranger = ""
  poet = "Fingerings: Sven Buschke"
  meter = ""
  piece = ""
  opus = ""
%  copyright = "© Fingerings: 20.02.2023, Sven Buschke"
 copyright = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line {    } \line { \small \line { \tiny © Fingerings: 19.02.2023, Sven Buschke   } }  } }
%  tagline = ""
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line {    } \line { \small \line { \tiny © Fingerings: 19.02.2023, Sven Buschke   } }  } }
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 85
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreARight = \relative c'' {
  \globalA
  % Music follows here.
  % Nr. 84
  r2^"84." e,-4|
  f e~|
  e d4 c|
  b c a b|
  c1
  \bar "|.|"
  % Nr. 85
  \time 4/4
  e4-3^"85." g f e|
  d1|
  c4 d e f|
  e d c2
  \bar "|.|"
  % Nr. 86
  \key e \minor
  \time 2/2
  e2-1^"86." b'|
  g4-1 a8 b c2|
  b4-1 e2-3 ds4|
  e g fs ds|
  e1
  \bar "|.|"
  % Nr. 87
  \key c \major
  \time 4/4
  <e,-1 c'-5>2^"87." <f b>|
  <e a> <f-2 g-3>|
  <e a> <f-2 b-54>|
  <e c>1
  \bar "|.|"
  % Nr. 88
  \time 4/4
  <<{c'2^"88." d c g~ g1~ g}\\{e2 f e d e d c1}>>
  \bar "|.|"
  % Nr. 89
  \time 2/2
  <<{c'2^"89." b d c a b c1}\\{e,1 f2 g e d e1}>>
  \bar "|.|"
  % Nr. 90
  \break
  \key d \major
  \time 4/4
  <<{a1~^"90." a2 r r4 g-3 a2 g r r4 e-3 fs e a-5 fs-3 d-1 e8-3 fs g2-5 fs-4 e4-3 fs8 e d2}\\{fs2-3g fs r r4 e-1 fs2 e r r4 cs2.-2 d1-1~ d4 cs2-2 d4-1 b a~ a2 }>>
  %fs2-3 g fs r 4 g-2 c2 b r 4 a2.-2~ 2 b~ b as4 b g2 fs
  \bar "|.|"
  \break
  % Nr. 91
  \key g \major
  \time 4/4
  <<{d1'-5^"91." b4 c d2-5 a4-3 b c2 g4-2 a b-4 d-5 a1-4 g}\\{b2-3 a b fs4-2 g-1 fs2-2 e4 fs d2-1 g-21~ 4 fs-2 e-1 fs-2 g1}>>
  \bar "|.|"
  % Nr. 92
  \key a \major
  \time 4/4
  <<{a'2-5^"92." e-34 fs1 e-5~ 2-21 a,-3 b-5 fs-4 gs-5 a-5~4-1 fs gs a a1}\\{cs4-2 d-1 e a, d-3 cs-2 b-12 a gs-2 fs gs e a gs-3 fs-2 e-12 d-1 cs -2 b-1 as-2 b-1 fs'-4 e-3 cs-2 d1 cs}>>
  \bar "|."
}

scoreALeft = \relative c' {
  \globalA
  % Music follows here.
  % Nr. 84
  r2 g-2|
  a g~|
  g f~|
  f1|
  e
  % Nr. 85
  g4-2 e a g|
  f a g f|
  e g2 a4|
  g4. f8 e2
  % Nr. 86
  \key e \minor
  g2-3 f|
  g2. d4|
  g2 a|
  g4 e b' a|
  g1
  % Nr. 87
  \key c \major
  g1-4~|
  2 b|
  c f,|
  g1
  % Nr. 88
  g1-1~ 2 f e f e1
  % Nr. 89
  g1 f2 e~ e f g1
  % Nr. 90
  \break
  \key d \major
  d'2-2 e d r r4 b-2 c2 b r r4 a2.-2~ a2 b~ b as4 b g2 fs
  % Nr. 91
  \key g \major
  g'2.-1 fs4 e2 d-1~ d c b4 c d2 c a4 c b1
  % Nr. 92
  \key a \major
  r1 r1 b2-1 e,-4~ e fs-1~ fs d~d cs b e~ e1
}

scoreAPedal = \relative c {
  \globalA
  % Music follows here.
  % Nr. 84
  c1\ltoe~|
  c|
  d\rtoe~|
  d|
  c
  % Nr. 85
  c1\rtoe~|
  c2 b\ltoe|
  c4 b c2~|
  4 b c2|
  % Nr. 86
  \key e \minor
  e2\rtoe ds|
  e d|
  e c~|
  4 e ds fs|
  e1
  % Nr. 87
  \key c \major
  c2\ltoe d|
  c d|
  c d|
  c1
  % Nr. 88
  c2\rtoe b c b c b c1
  % Nr. 89
  c2 e d e c d c1
  % Nr. 90
  \break
  \key d \major
  d2.\rtoe cs4 d8 cs e d fs4 d e2. ds4 e8 ds fs e g4 e a1 fs2 g  e fs4 d e cs d2
  % Nr. 91
  \key g \major
  g2\rtoe d e b d a b g d'1 g,
  % Nr. 92
  \key a \major
  a2\ltoe cs b d~ 1 cs2 fs b,1 e~ e a,
}

\bookpart {
\header {
  title = "Ab Nr. 84"
  opus = "Nr. 84 ff."
%   tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line {    } \line { \small \line { \tiny © Fingerings: 19.02.2023, Sven Buschke   } }  } }

}
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = "Organ"
        shortInstrumentName = "Org."
      } <<
        \new Staff = "right" \with {
          midiInstrument = "church organ"
        } \scoreARight
        \new Staff = "left" \with {
          midiInstrument = "church organ"
        } { \clef bass \scoreALeft }
      >>
      \new Staff = "pedal" \with {
        midiInstrument = "church organ"
      } { \clef bass \scoreAPedal }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 86
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

scoreBRight = \relative c'' {
  \global
  % Music follows here.

}

scoreBLeft = \relative c' {
  \global
  % Music follows here.

}

scoreBPedal = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = "Organ"
        shortInstrumentName = "Org."
      } <<
        \new Staff = "right" \with {
          midiInstrument = "church organ"
        } \scoreBRight
        \new Staff = "left" \with {
          midiInstrument = "church organ"
        } { \clef bass \scoreBLeft }
      >>
      \new Staff = "pedal" \with {
        midiInstrument = "church organ"
      } { \clef bass \scoreBPedal }
    >>
    \layout { }
    \midi { }
  }
}

scoreCRight = \relative c'' {
  \global
  % Music follows here.

}

scoreCLeft = \relative c' {
  \global
  % Music follows here.

}

scoreCPedal = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = "Organ"
        shortInstrumentName = "Org."
      } <<
        \new Staff = "right" \with {
          midiInstrument = "church organ"
        } \scoreCRight
        \new Staff = "left" \with {
          midiInstrument = "church organ"
        } { \clef bass \scoreCLeft }
      >>
      \new Staff = "pedal" \with {
        midiInstrument = "church organ"
      } { \clef bass \scoreCPedal }
    >>
    \layout { }
    \midi { }
  }
}

scoreDRight = \relative c'' {
  \global
  % Music follows here.

}

scoreDLeft = \relative c' {
  \global
  % Music follows here.

}

scoreDPedal = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = "Organ"
        shortInstrumentName = "Org."
      } <<
        \new Staff = "right" \with {
          midiInstrument = "church organ"
        } \scoreDRight
        \new Staff = "left" \with {
          midiInstrument = "church organ"
        } { \clef bass \scoreDLeft }
      >>
      \new Staff = "pedal" \with {
        midiInstrument = "church organ"
      } { \clef bass \scoreDPedal }
    >>
    \layout { }
    \midi { }
  }
}

scoreERight = \relative c'' {
  \global
  % Music follows here.

}

scoreELeft = \relative c' {
  \global
  % Music follows here.

}

scoreEPedal = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = "Organ"
        shortInstrumentName = "Org."
      } <<
        \new Staff = "right" \with {
          midiInstrument = "church organ"
        } \scoreERight
        \new Staff = "left" \with {
          midiInstrument = "church organ"
        } { \clef bass \scoreELeft }
      >>
      \new Staff = "pedal" \with {
        midiInstrument = "church organ"
      } { \clef bass \scoreEPedal }
    >>
    \layout { }
    \midi { }
  }
}

scoreFRight = \relative c'' {
  \global
  % Music follows here.

}

scoreFLeft = \relative c' {
  \global
  % Music follows here.

}

scoreFPedal = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = "Organ"
        shortInstrumentName = "Org."
      } <<
        \new Staff = "right" \with {
          midiInstrument = "church organ"
        } \scoreFRight
        \new Staff = "left" \with {
          midiInstrument = "church organ"
        } { \clef bass \scoreFLeft }
      >>
      \new Staff = "pedal" \with {
        midiInstrument = "church organ"
      } { \clef bass \scoreFPedal }
    >>
    \layout { }
    \midi { }
  }
}

scoreGRight = \relative c'' {
  \global
  % Music follows here.

}

scoreGLeft = \relative c' {
  \global
  % Music follows here.

}

scoreGPedal = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = "Organ"
        shortInstrumentName = "Org."
      } <<
        \new Staff = "right" \with {
          midiInstrument = "church organ"
        } \scoreGRight
        \new Staff = "left" \with {
          midiInstrument = "church organ"
        } { \clef bass \scoreGLeft }
      >>
      \new Staff = "pedal" \with {
        midiInstrument = "church organ"
      } { \clef bass \scoreGPedal }
    >>
    \layout { }
    \midi { }
  }
}

scoreHRight = \relative c'' {
  \global
  % Music follows here.

}

scoreHLeft = \relative c' {
  \global
  % Music follows here.

}

scoreHPedal = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = "Organ"
        shortInstrumentName = "Org."
      } <<
        \new Staff = "right" \with {
          midiInstrument = "church organ"
        } \scoreHRight
        \new Staff = "left" \with {
          midiInstrument = "church organ"
        } { \clef bass \scoreHLeft }
      >>
      \new Staff = "pedal" \with {
        midiInstrument = "church organ"
      } { \clef bass \scoreHPedal }
    >>
    \layout { }
    \midi { }
  }
}

scoreIRight = \relative c'' {
  \global
  % Music follows here.

}

scoreILeft = \relative c' {
  \global
  % Music follows here.

}

scoreIPedal = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = "Organ"
        shortInstrumentName = "Org."
      } <<
        \new Staff = "right" \with {
          midiInstrument = "church organ"
        } \scoreIRight
        \new Staff = "left" \with {
          midiInstrument = "church organ"
        } { \clef bass \scoreILeft }
      >>
      \new Staff = "pedal" \with {
        midiInstrument = "church organ"
      } { \clef bass \scoreIPedal }
    >>
    \layout { }
    \midi { }
  }
}

scoreJRight = \relative c'' {
  \global
  % Music follows here.

}

scoreJLeft = \relative c' {
  \global
  % Music follows here.

}

scoreJPedal = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = "Organ"
        shortInstrumentName = "Org."
      } <<
        \new Staff = "right" \with {
          midiInstrument = "church organ"
        } \scoreJRight
        \new Staff = "left" \with {
          midiInstrument = "church organ"
        } { \clef bass \scoreJLeft }
      >>
      \new Staff = "pedal" \with {
        midiInstrument = "church organ"
      } { \clef bass \scoreJPedal }
    >>
    \layout { }
    \midi { }
  }
}

scoreKRight = \relative c'' {
  \global
  % Music follows here.

}

scoreKLeft = \relative c' {
  \global
  % Music follows here.

}

scoreKPedal = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = "Organ"
        shortInstrumentName = "Org."
      } <<
        \new Staff = "right" \with {
          midiInstrument = "church organ"
        } \scoreKRight
        \new Staff = "left" \with {
          midiInstrument = "church organ"
        } { \clef bass \scoreKLeft }
      >>
      \new Staff = "pedal" \with {
        midiInstrument = "church organ"
      } { \clef bass \scoreKPedal }
    >>
    \layout { }
    \midi { }
  }
}

scoreLRight = \relative c'' {
  \global
  % Music follows here.

}

scoreLLeft = \relative c' {
  \global
  % Music follows here.

}

scoreLPedal = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = "Organ"
        shortInstrumentName = "Org."
      } <<
        \new Staff = "right" \with {
          midiInstrument = "church organ"
        } \scoreLRight
        \new Staff = "left" \with {
          midiInstrument = "church organ"
        } { \clef bass \scoreLLeft }
      >>
      \new Staff = "pedal" \with {
        midiInstrument = "church organ"
      } { \clef bass \scoreLPedal }
    >>
    \layout { }
    \midi { }
  }
}

scoreMRight = \relative c'' {
  \global
  % Music follows here.

}

scoreMLeft = \relative c' {
  \global
  % Music follows here.

}

scoreMPedal = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = "Organ"
        shortInstrumentName = "Org."
      } <<
        \new Staff = "right" \with {
          midiInstrument = "church organ"
        } \scoreMRight
        \new Staff = "left" \with {
          midiInstrument = "church organ"
        } { \clef bass \scoreMLeft }
      >>
      \new Staff = "pedal" \with {
        midiInstrument = "church organ"
      } { \clef bass \scoreMPedal }
    >>
    \layout { }
    \midi { }
  }
}

scoreNRight = \relative c'' {
  \global
  % Music follows here.

}

scoreNLeft = \relative c' {
  \global
  % Music follows here.

}

scoreNPedal = \relative c {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = "Organ"
        shortInstrumentName = "Org."
      } <<
        \new Staff = "right" \with {
          midiInstrument = "church organ"
        } \scoreNRight
        \new Staff = "left" \with {
          midiInstrument = "church organ"
        } { \clef bass \scoreNLeft }
      >>
      \new Staff = "pedal" \with {
        midiInstrument = "church organ"
      } { \clef bass \scoreNPedal }
    >>
    \layout { }
    \midi { }
  }
}
