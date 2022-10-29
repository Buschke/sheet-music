\version "2.22.2"
\language "english"

\header {
  dedication = "NN"
  title = "Kirchenmusiker C-Ausbildung"
  subtitle = "Vom Himmel hoch"
  subsubtitle = "Trioübungen, Hausaufgaben KW 43-2022"
  instrument = "Orgel"
  composer = "Johann Sebastian Bach"
  arranger = "Unterricht bei: Andreas Lang"
  poet = "Satz: Sven Buschke"
  meter = "NN"
  piece = "NN"
  opus = "NN"
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
  \key d \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreARight = \relative c'' {
  \globalA
  % Music follows here.
  r8 d cs b cs4 a |
  r1
}

scoreALeft = \relative c' {
  \globalA
  % Music follows here.
  r1 r r r r
  d |
  cs2 b |
  cs a |
  |b cs |
  d1 |
  r r
  r2 d |
  d a |
  a fs |
  fs g |
  fs1
}

scoreAPedal = \relative c {
  \globalA
  % Music follows here.
  r1 |
  r2 d |
  cs b |
  cs b |
  b cs |
  d4 g fs8 e d4 |
  a'4. cs,8 d4 e |
  a, g fs2 |
  g4 e a2 |
  d4 fs, g fs8 e |
  d2 fs8 g a4 |
  b cs d g8 e |
  fs4 fs, b2 |
  fs4 g2 fs8 e |
  d2. d'4 |
  ds2 e |
  as, b4 fs |
  b2 fs'4 as, |
  b d e g, |
  a8 fs g a d4 b |
  g2 gs4 e |
  a1 |
  d4 a e'4. d8 |
  cs4 d a2 |
  d,4 e fs8 g a4 |
  b cs d e |
  fs8 d fs fs, b4 e |
  a,4. cs8 d4 e8 d |
  c4 d g4. fs8 |
  e a, d4 g, a8 g |
  fs2 e |
  d1~ |
  d4 r r2
  \bar "|."
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

\bookpart {
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

\bookpart {
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
