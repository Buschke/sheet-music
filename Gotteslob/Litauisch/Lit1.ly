\version "2.22.2"
\language "english"

\header {
  dedication = "NN"
  title = "NN"
  subtitle = "NN"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "NN"
  arranger = "NN"
  poet = "NN"
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
  \key d \major
  \time 4/4
  \tempo "Andante" 4=100
}

right = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 {
    <fs, a d>2
  <a e' g>4 <fs a d>4 <e g cs> <d fs b> <d g b> <e a cs> <d g b> <d fs b> <e a cs>2 }

<d fs a>4 <cs, a' e' a> <cs a' e' a> <e g cs> <fs a d> <fs a d> <g b d> <ds fs b> <g b d> <a e' a>


}

left = \relative c' {
  \global
  % Music follows here.
  d,2 cs4 d a b g a
  d d a 2
  d4 e fs fs e a e2
  cs1 d 2 cs4 d
  a a g a
  d,1
}

pedal = \relative c {
  \global
  % Music follows here.
  \left

}

\score {
  <<
    \new PianoStaff \with {
      instrumentName = "Orgel"
      shortInstrumentName = "Org."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \right
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \left }
    >>
    \new Staff = "pedal" \with {
      midiInstrument = "church organ"
    } { \clef bass \pedal }
  >>
  \layout { }
  \midi { }
}

\score {

