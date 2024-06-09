\version "2.24.3"
\language "english"

\header {
  dedication = ""
  subtitle = \markup {\with-url "https://de.wikipedia.org/wiki/Weihnachtsoratorium_(Bach)" "Weihnachtsoratorium" ", 3. Teil"}
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

scoreATenorVoice = \scoreCATenorVoice

scoreAVerse = \scoreCAVerse

\bookpart {
  \header {
    title = "Herrscher des Himmels, erhöhre das Lallen"
    subsubtitle = "24. Chor, D-Dur"
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

scoreBTenorVoice = \scoreCBTenorVoice

scoreBVerse = \scoreCBVerse

\bookpart {
  \header {
    title = "Lasset uns nun gehen nach Bethlehem"
    subsubtitle = ""
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

scoreCTenorVoice = \scoreCCTenorVoice

scoreCVerse = \scoreCCVerse

\bookpart {
  \header {
    title = "Dies hat er alles uns getan"
    subsubtitle = "28. Choral, D-Dur"
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

scoreDTenorVoice = \scoreCDTenorVoice

scoreDVerse = \scoreCDVerse

\bookpart {
  \header {
    title = "Ich will dich mit Fleiß bewahren"
    subsubtitle = "33. Choral, G-Dur"
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

scoreETenorVoice = \scoreCETenorVoice

scoreEVerse = \scoreCEVerse

\bookpart {
  \header {
    title = "Seid froh dieweil"
    subsubtitle = "35. Choral, A-Dur"
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreETenorVoice }
    \addlyrics { \scoreEVerse }
    \layout { }
    \midi { }
  }
}
