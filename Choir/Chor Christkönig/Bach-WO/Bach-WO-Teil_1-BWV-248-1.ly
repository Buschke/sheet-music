\version "2.24.3"
\language "english"

\header {
  dedication = ""
  subtitle = \markup {\with-url "https://de.wikipedia.org/wiki/Weihnachtsoratorium_(Bach)" "Weihnachtsoratorium" ", 1. Teil"}
  instrument = "Tenor"
  composer = \markup {\with-url "https://de.wikipedia.org/wiki/Johann_Sebastian_Bach" "Johann Sebastian Bach"}
  arranger = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "BWV 248"
  copyright = \markup {"Satz: " \with-url "https://buschke.com" "Sven Buschke"}
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

globalAA = {
  \key d \major
  \time 3/8
  \tempo "Vivace" 8=120
}

scoreATenorVoice = \relative c' {
  \globalAA
  \dynamicUp
  \compressEmptyMeasures
  % Music follows here.
  R4.*32
  d8 d d d a r
  
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Jauch -- zet, fro -- lok -- ket,
}

\bookpart {
  \header {
    title = \markup {\with-url "https://de.wikipedia.org/wiki/T%C3%B6net,_ihr_Pauken!_Erschallet,_Trompeten!" "Jauchzet, frohlocket"}
    subsubtitle = "1. Coro, D-Dur"
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreATenorVoice }
    \addlyrics { \scoreAVerse }
    \layout { }
    \midi { }
  }
}

globalAB = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4=60
}

scoreBTenorVoice = \relative c' {
  \globalAB
  \dynamicUp
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    gs4
    a b c8(d) g,4 a8(gs a4) gs\fermata
    gs a8 b c4 f e8 d c2.
  }
  \partial 4
  e4
  d8 c b4 a8(g) f(g) a4(g8 f) g4\fermata
  c
  c8(d) e4 d8(cs) d(gs,) a2.\fermata
  a4 g8 a b4 c8 d e4 e(d) d\fermata
  c c8(b) b(a) a4 g8 a b4(a gs)\fermata
  \bar "|."
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  Wie soll ich dich emp -- fan -- gen
}

\bookpart {
  \header {
    title = "Wie soll ich dich empfangen"
    subsubtitle = "5. Choral, E-Phrygisch"
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreBTenorVoice }
    \addlyrics { \scoreBVerse }
    \layout { }
    \midi { }
  }
}

globalC = {
  \key d \major
  \time 4/4
  \tempo "Andante" 4=60
}

scoreCTenorVoice = \relative c' {
  \globalC
  \dynamicUp
  % Music follows here.
  \partial 4
  fs4
  
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  Ach mein herz -- lie -- bes Je -- su -- lein,  
}

\bookpart {
  \header {
    title = "Ach mein herzliebes Jesulein"
    subsubtitle = "9. Choral, D-Dur"
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreCTenorVoice }
    \addlyrics { \scoreCVerse }
    \layout { }
    \midi { }
  }
}
