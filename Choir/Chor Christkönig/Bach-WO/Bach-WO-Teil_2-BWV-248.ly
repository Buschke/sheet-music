\version "2.24.3"
\language "english"

\header {
  dedication = ""
  subtitle = \markup {\with-url "https://de.wikipedia.org/wiki/Weihnachtsoratorium_(Bach)" "Weihnachtsoratorium" ", 2. Teil"}
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

scoreATenorVoice = \scoreBATenorVoice

scoreAVerse = \scoreBAVerse

\bookpart {
  \header {
    title = "Brich an, o schönes Morgenlicht"
    subsubtitle = "12. Choral, G-Dur"
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

scoreBTenorVoice = \scoreBBTenorVoice

scoreBVerse = \scoreBBVerse

\bookpart {
  \header {
    title = "Schaut hin, dort liegt im finstern Stall"
    subsubtitle = "17. Choral, C-Dur"
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

scoreCTenorVoice = \scoreBCTenorVoice

scoreCVerse = \scoreBCVerse

\bookpart {
  \header {
    title = "Ehre sei Gott in der Höhe"
    subsubtitle = "21. Chor"
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

scoreDTenorVoice = \scoreBDTenorVoice

scoreDVerse = \scoreBDVerse

\bookpart {
  \header {
    title = "Wir singen dir in deinem Herr"
    subsubtitle = "23. Choral, G-Dur"
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreDTenorVoice }
    \addlyrics { \scoreDVerse }
    \layout { }
    \midi { }
  }
}
