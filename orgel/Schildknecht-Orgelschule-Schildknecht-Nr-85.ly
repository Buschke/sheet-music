\version "2.24.0"
\language "english"

\header {
  dedication = "NN"
  title = "Orgelschule"
  subtitle = "Schildknecht"
  subsubtitle = "NN"
  instrument = "Organ"
  composer = "Schildknecht"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "Nr. 85"
  copyright = "© Fingerings: Sven Buschke, 06.02.2023"
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
  \tempo "NN" 4=100
}

globalA = {
  \key c \major
  \time 4/4
  \tempo "NN" 4=100
}

scoreARight = \relative c'' {
  \globalA
  % Music follows here.
  e,4-3 g f e|
  d1|
  c4 d e f|
  e d c2
  \bar "|."
}

scoreALeft = \relative c' {
  \globalA
  % Music follows here.
  g4-2 e a g|
  f a g f|
  e g2 a4|
  g2. f8 e2
}

scoreAPedal = \relative c {
  \globalA
  % Music follows here.
  c1~\rtoe|
  c2 b|\lheel
  c4 b c2~
  4 b c2
}

\bookpart {
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = "Orgel"
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
        instrumentName = "Orgel"
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
        instrumentName = "Orgel"
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
        instrumentName = "Orgel"
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
        instrumentName = "Orgel"
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

\bookpart {
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
