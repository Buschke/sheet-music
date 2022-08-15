\version "2.22.2"
\language "english"

\header {
  dedication = "NN"
  title = "Klaviersonate Nr. 1"
  subtitle = "2. Satz"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "Wolfgang Amadeus Mozart"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "KV 279"
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
  \key f \major
  \numericTimeSignature
  \time 3/4
  \partial 16
  \tempo "Andante" 4=100
}

right = \relative c'' {
  \global
  % Music follows here.
  f,16 c'4 c c bf' bf, r8 a \tuplet 3/2 {g( bf g) } \tuplet 3/2 { f( a f)} \tuplet 3/2 {e( g e)} bf''4 bf, r8 a
  \tuplet 3/2 { g( bf g)} \tuplet 3/2 {f( a f)} \tuplet 3/2 {e( g e) }
}

left = \relative c' {
  \global
  % Music follows here.
  r16
  \tuplet 3/2 { f,8( a c)} \tuplet 3/2 { g( bf c) } \tuplet 3/2 { f,( a c) }
  \tuplet 3/2 { e,( g c) } \tuplet 3/2 { c,( e g) } \tuplet 3/2 { f( a c) }
  \tuplet 3/2 { bf,( d g) } \tuplet 3/2 { c,( f a) } \tuplet 3/2 { c,( g' bf) }
  \tuplet 3/2 { d,( f bf) } \tuplet 3/2 { e,( g c) } \tuplet 3/2 { f,( a c) }
  \tuplet 3/2 { bf,( d g) } \tuplet 3/2 { c,( f a) } \tuplet 3/2 { c,( g' bf) }
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
