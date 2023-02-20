\version "2.24.1"
\language "english"

\header {
  dedication = "NN"
  title = "Nr. 85"
  subtitle = "Orgelschule"
  subsubtitle = "2. Pedalspiel"
  instrument = "Orgel"
  composer = "Josef Schildknecht"
  arranger = "Fingerings: Sven Buschke"
  poet = ""
  meter = ""
  piece = ""
  opus = ""
%  copyright = "© Fingerings: 20.02.2023, Sven Buschke"
 copyright = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line {    } \line { \small \line { \tiny © Fingerings: 19.02.2023, Sven Buschke   } }  } }
%  tagline = ""
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line {    } \line { \small \line { \tiny © Fingerings: 19.02.2023, Sven Buschke   } }  } }
}

\paper {
  #(set-paper-size "a4" 'landscape)
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
  e,-3 g f e|
  d1|
  c4 d e f|
  e d c2
  \bar "|."
  \key f \major
  \time 3/4
  r4^"Nr. 86" r r
}

scoreALeft = \relative c' {
  \globalA
  % Music follows here.
  g4-2 e a g|
  f a g f|
  e g2 a4|
  g4. f8 e2
  \bar "|."
  r4 r r
}

scoreAPedal = \relative c {
  \globalA
  % Music follows here.
  c1\rtoe~|
  c2 b\ltoe|
  c4 b c2~|
  4 b c2|
  \bar "|."
  r4 r r
}

\bookpart {
\header {
  title = "Nr. 85"
  opus = "Nr. 85"
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
