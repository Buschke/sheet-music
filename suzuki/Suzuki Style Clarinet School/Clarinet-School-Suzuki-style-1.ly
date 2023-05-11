\version "2.22.2"
\language "english"

\header {
  dedication = "NN"
  title = "Clarinet School, Suzuki style"
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
  \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

globalA = {
  \key bf \major
  \time 3/4
  \tempo "Allegretto" 4=100
}

scoreAClarinet = \relative c'' {
  \globalA
  \transposition bf
  % Music follows here.
  \partial 4
  f-.\mf|
  ef( d) ef-.|
  d( c) a(|
  bf ef d)|
  d( c) c-.|
  d-. e-\cresc fs-.|
  g4.( a8 bf4)|
  c,4.( d8 e4)|
  f r r|
  c8\p( d e f g e)|
  f4 r r|
  c8( d e f g e)|
  f4 r r
}

scoreARight = \relative c'' {
  \globalA
  % Music follows here.
  \partial 4
  r4|
  <d,  f>2.\mf <ef f>
}

scoreALeft = \relative c' {
  \globalA
  % Music follows here.
  \partial 4
  r4|
  bf2.|
  c|
  d4( c bf)|
  f'2 a,,4-.|

}

scoreAClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
  \magnifyStaff #5/7
} \scoreAClarinet

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
\header {
  dedication = "For Sven"
  title = "Minuetto"
  subtitle = "from Divertimento No. 1"
  subsubtitle = "Clarinet School, Suzuki style"
  instrument = "NN"
  composer = "Wolfgang Amadeus Mozart"
  arranger = "Transcription for Clarinet and piano: Peter Wastall"
  poet = "Fingerings: Sven Buschke"
  meter = "Allegretto"
  piece = "originally for 2 clarinets and bassoon"
  opus = "K. "
  copyright = "© Fingerings: Sven Buschke, 04.02.2023, rest: Boosey & Hawkes Music Publishers Ltd, 1983"
  tagline = "Rock Me Amadeus"
}

  \score {
    <<
      \scoreAClarinetPart
      \scoreAPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreBClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

scoreBRight = \relative c'' {
  \global
  % Music follows here.

}

scoreBLeft = \relative c' {
  \global
  % Music follows here.

}

scoreBClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreBClarinet

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
    <<
      \scoreBClarinetPart
      \scoreBPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreCClarinet = \relative c'' {
  \global
  \transposition bf
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

scoreCClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreCClarinet

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
      \scoreCClarinetPart
      \scoreCPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreDClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

scoreDRight = \relative c'' {
  \global
  % Music follows here.

}

scoreDLeft = \relative c' {
  \global
  % Music follows here.

}

scoreDClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreDClarinet

scoreDPianoPart = \new PianoStaff \with {
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

\bookpart {
  \score {
    <<
      \scoreDClarinetPart
      \scoreDPianoPart
    >>
    \layout { }
    \midi { }
  }
}
