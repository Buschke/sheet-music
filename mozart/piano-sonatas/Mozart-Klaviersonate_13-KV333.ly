\version "2.22.2"
\language "english"

\header {
  dedication = "NN"
  title = "Klaviersonate Nr. 13"
  subtitle = "Es-Dur"
  subsubtitle = "NN"
  instrument = "Klavier"
  composer = "Wolfgang Amadeus Mozart"
  arranger = "Sven Buschke"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "KV 333"
  copyright = "© Sven Buschke, 18. August 2022"
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
  \key ef \major
  \numericTimeSignature
  \time 3/4
  \tempo "Anante cantabile" 4=56
}

right = \relative c'' {
  \global
  % Music follows here.
  <g-2 bf-4>4\mp( <f af>8-\markup {\italic dolce} <ef-1 g-2> <af-3 c-5> <g bf> )
  <g bf>4( <f af>\< <ef g>)
  e\f-2\>( f8-1 c'\mp-5 bf16 af g f)
  <g, ef'>4->-5( <f d'-4>16) r32 bf-2( d-4 c-1 ef-3 d-1 f-3\< ef g-4 f-1 af-3 g-1 bf-3 af)
  << {\acciaccatura c8( bf8.)( c32\> bf af16\mp g f-2 ef) } | {g4\f} >>
  g'16->-5( d-2 ef c)
  bf4->-3(
%  af8.\trill\< g32 af
  bf32\trill\< af bf af bf af g32 af
  g16\f-.) ef'-4( d df
  b\>) d32-3( c-.) bf-3( c-.) g-3( f-.\mp) <<{ef4.-2( g16-4 f ef4\p)} \\ {s4. d8 ef4}>>

}

left = \relative c' {
  \global
  % Music follows here.
  ef,2-3 r4
  ef-5( f\< g)
  <bf-2 df-1>\f\>( <af-3 c-1>)\mp r
  a,16->-3( bf c bf) bf4-3 r4
  <ef, ef'>-- r <ef'_5 c'~> <f_4 c'>
  <bf-4 d-2>( <c ef>8) r
  <af, af'>4
  << {g'4-2( af)} || {bf,2-5} >>
  ef16-4\pp(
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
