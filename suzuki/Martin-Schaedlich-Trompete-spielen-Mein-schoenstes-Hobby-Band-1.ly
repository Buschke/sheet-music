\version "2.22.2"
\language "english"

\header {
  dedication = "NN"
  title = "Trompete spielen"
  subtitle = "Mein schönstes Hobby"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "Martin Schädlich"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "Band 1"
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
  \key c \major
  \time 3/4
  \tempo "Andante" 4=100
}

globalAT = {
  \key bf \major
  \time 3/4
  \tempo "Andante" 4=100
}

scoreATrumpetBb = \relative c'' {
  \globalA
  % Music follows here.
  g4 e r
  g e r
  d c d
  c2 r4
  d d e
  f2 d4
  e e f
  g2 e4
  g2 e4
  g2 e4
  f e d
  c2 r4
  \bar "|."
  \bar "|."   
}

scoreATenorVoice = \relative c' {
  \globalAT
  \dynamicUp
  % Music follows here.
  \transpose c bf, {\scoreATrumpetBb}
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Ku -- ckuck, ku -- ckuck, ruft's aus dem Wald.
  Las -- set uns sin -- gen, tan -- zen und sprin -- gen!
  Früh -- ling, Früh -- ling wird es nun bald.  
}

scoreARight = \relative c'' {
  \globalAT
  % Music follows here.
  \transpose c bf {\scoreATrumpetBb}
}

scoreALeft = \relative c' {
  \globalAT
  % Music follows here.
  
}

scoreATrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
  midiInstrument = "trumpet"
} {\transposition bf \scoreATrumpetBb}

scoreATenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "trumpet"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreATenorVoice } 
\addlyrics { \scoreAVerse }

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
     \scoreATrumpetBbPart
     \scoreATenorVoicePart
     \scoreAPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreBTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.
  
}

scoreBTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreBRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreBLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreBTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
} \scoreBTrumpetBb

scoreBTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreBTenorVoice }
\addlyrics { \scoreBVerse }

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
      \scoreBTrumpetBbPart
      \scoreBTenorVoicePart
      \scoreBPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreCTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.
  
}

scoreCTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreCRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreCLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreCTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
} \scoreCTrumpetBb

scoreCTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreCTenorVoice }
\addlyrics { \scoreCVerse }

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
      \scoreCTrumpetBbPart
      \scoreCTenorVoicePart
      \scoreCPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreDTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.
  
}

scoreDTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreDRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreDLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreDTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
} \scoreDTrumpetBb

scoreDTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreDTenorVoice }
\addlyrics { \scoreDVerse }

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
      \scoreDTrumpetBbPart
      \scoreDTenorVoicePart
      \scoreDPianoPart
    >>
    \layout { }
    \midi { }
  }
}
