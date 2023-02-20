\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = "Faszination Orgelimprovisation"
  subtitle = ""
  subsubtitle = ""
  instrument = ""
  composer = "Franz Josef Stoiber"
  arranger = ""
  poet = "Fingerings: Sven Buschke"
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

global = {
  \key d \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreARight = \relative c'' {
  \global
  % Music follows here.
  \key d \major
  r8^"Quintpendel S. 34" d, fs a
  r cs, e a
  r d, fs a
  r d, g b
  <d, fs a>2 <cs e a>
  <d fs a>
  <d g b>
  <d fs a>1
  \bar "|.|"
  \key c \major
  c'8^"Quintfallsequenz Bach 2stimmig, S. 45" g c e d g d f e4 g b, g' c,8 e g bf a4 c, b8 d f a g4 g,
  \bar "||"
}

scoreALeft = \relative c' {
  \global
  % Music follows here.
  \key d \major
  <<{<d, fs a>2 <cs e a> <d fs a> <d g b> r8 d fs a
  r cs, e a
  r d, fs a
  r d, g b
  r d, fs a d,2
}\\{d2 a d g, d' a d g, d'1}>>
  % Quintfallsequenz Bach 2stimmig, S. 45
  \key c \major
  c4 c' b g c8 g c e d g, d' f e4 c f,8 a c  f d4 b c,8 e g c
}

\bookpart {
  \score {
    \new PianoStaff \with {
      instrumentName = "Orgel"
      shortInstrumentName = "Or."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scoreARight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreALeft }
    >>
    \layout { }
    \midi { }
  }
}

scoreBRight = \relative c'' {
  \global
  % Music follows here.

}

scoreBLeft = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new PianoStaff \with {
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

\bookpart {
  \score {
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scoreCRight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreCLeft }
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

\bookpart {
  \score {
    \new PianoStaff \with {
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

\bookpart {
  \score {
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scoreERight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreELeft }
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

\book {
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = "Orgel"
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

\book {
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = "Orgel"
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

\book {
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = "Orgel"
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

\book {
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = "Orgel"
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

\book {
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = "Orgel"
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
