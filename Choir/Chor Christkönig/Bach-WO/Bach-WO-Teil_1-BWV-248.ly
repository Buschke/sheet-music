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

\include "Bach-WO-Noten_Texte-BWV-248.ly"

scoreATenorVoice = \scoreAATenorVoice

scoreAVerse = \scoreAAVerse

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

scoreBTenorVoice = \scoreABTenorVoice

scoreBVerse = \scoreABVerse

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

scoreCTenorVoice = \scoreACTenorVoice

scoreCVerse = \scoreACVerse

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
