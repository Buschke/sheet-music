\version "2.22.2"
\language "english"
\include "articulate.ly"

\header {
  dedication = "NN"
  title = "Violinsonate Nr. 6, G-Dur"
  subtitle = "2. Satz"
  subsubtitle = "g-Moll"
  instrument = "Violine, Piano"
  composer = "Ludwig van Beethoven"
  arranger = "Fingersatz: Sven Buschke"
  poet = "NA"
  meter = "Tempo di Minuetto"
  piece = "G-Moll"
  opus = "Op. 30 Nr. 3"
  copyright = "(c) Fingersatz: Sven Buschke, 13. Oktober 2022"
  tagline = "Roll over Beethoven"
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
  \partial 4
  \tempo "Tempo di Minuetto, ma molto moderato e grazioso." 4=72
}

scoreAViolin = \relative c'' {
  \global
  % Music follows here.
  c c
}

scoreARight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreALeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreAViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
} \scoreAViolin

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
  \score {
    <<
      \scoreAViolinPart
      \scoreAPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreBViolin = \relative c'' {
  \global
  % Music follows here.
  r4
  f,\p( d bf)~
  bf( g bf)~
  bf( ef) ef8( af16 g)
  g4( ef g)
  f( d f)(~ f8
  d ef4) <c ef>~
  <c ef>8 c4( bf8 af bf)
  g4 r g'(
  af~ af8. f16 bf8. d,16)
  ef2 f8( af16 g)
  g2 af8\trill(\appoggiatura {g16 af} c16 bf)
  
}

scoreBRight = \relative c'' {
  \global
  % Music follows here.
  g4\p(
  af~ af8. f16 bf8. d,16
  ef2) f8( af16 g)
  g2 af8\trill(\appoggiatura {g16 a} c16 g 
  bf2) ef16( d) c( bf)
  bf2
  \appoggiatura {bf16} af8( g16 af)
  \appoggiatura {g16 af bf} af4( g)
  f8\trill( \appoggiatura {e16 f} af16 c)
  c8( ef,4.)
  %\reverseturn
%  <<{d4 } { g8. f16} >>
g
ef4 r r
  \clef bass
  \tuplet 3/2 {r8 f,( bf)} \tuplet 3/2 {r8 <d, f>( bf')} \tuplet 3/2 {r8 <d, f>( bf')}
  \tuplet 3/2 {r8 <ef, g>( bf')} \tuplet 3/2 {r8 <ef, g>( bf')} \tuplet 3/2 {r8 <ef, g>( bf')}
  \tuplet 3/2 {r8 <g bf>( ef')} \tuplet 3/2 {r8 <g, bf>( ef')} \tuplet 3/2 {r8 <af, c>( ef')}
  \tuplet 3/2 {r8 <g, bf>( ef')} \tuplet 3/2 {r8 bf( ef)} \tuplet 3/2 {r8 g,( bf)}
}

scoreBLeft = \relative c' {
  \global
  % Music follows here.
  r4
  bf,( bf' af
  g ef d
  ef df c8 af)
  ef'4( g ef
  d bf b
  c c,) <af' f'>(
  <a fs'> <bf g'>) <bf, bf'>
  ef ef' r
  bf,( bf' af
  g ef d
  ef ef'8 df c af)
  <ef ef'>(
}

scoreBViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
} \scoreBViolin

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
  \score {
    \articulate
    <<
    <<
      \scoreBViolinPart
      \scoreBPianoPart
    >>
    >>
    \layout { }
    \midi { }
  }
}

scoreCViolin = \relative c'' {
  \global
  % Music follows here.
  
}

scoreCRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreCLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreCViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
} \scoreCViolin

scoreCPianoPart = \new PianoStaff \with {
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

\bookpart {
  \score {
    <<
      \scoreCViolinPart
      \scoreCPianoPart
    >>
    \layout { }
 
  \score {
    \articulate <<
    <<
      \scoreCViolinPart
      \scoreCPianoPart
    >>
    >>
    \midi { }
  }
}