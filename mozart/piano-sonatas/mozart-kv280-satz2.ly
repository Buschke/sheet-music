\version "2.22.2"
\language "english"

\header {
  dedication = "NN"
  title = "Klaviersonate Nr. 2"
  subtitle = "f-Moll"
  subsubtitle = "NN"
  instrument = "Klavier"
  composer = "Wolfgang Amadeus Mozart"
  arranger = "Sven Buschke"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "KV 280"
  copyright = "© Sven Buschke"
  tagline = "Mozart rocks!"
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
  \key f \minor
  \numericTimeSignature
  \time 6/8
  \tempo "Adagio" 4=40
  %\tempo "Adagio" 4=56
}

right = \relative c'' {
  \global
  % Music follows here.
  df32\f-2\trill( c df c df c df16 c8) c4( f8)
  %c8.\f-2\trill( df16 c8) c4( f8)
  << {f4.-5~ f8( ef df)} \\ {g,8.( af16 g8) g r r} >>
  << {c4.-5~ c4.} \\
     {<e, g>4.~ <e g>8
     ( <f-1 af-3> <g bf>)
     }
  >>
}

left = \relative c' {
  \global
  % Music follows here.
  <f, af>4 r8 r4 r8
  <bf-3 df-2>4.~ <bf df>8 r r
  c8.-3( df16 c8) c4.
}

\score {
  \new PianoStaff \with {
    instrumentName = "Klavier"
    shortInstrumentName = "Kl."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi { }
}
