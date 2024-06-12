\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "Herr, wenn die stolzen Feinde schnauben"
  subtitle = "Weihnachtsoratorium, 6. Teil"
  subsubtitle = "Nr. 54 Chorus"
  instrument = "Tenor"
  composer = "Johann Sebastian Bach"
  arranger = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "BWV 248"
  copyright = "Satz: Sven Buschke"
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

\include "Bach-WO-Noten_Texte-BWV-248.ly"

scoreATenorVoice = \scoreFATenorVoice

scoreAVerse = \scoreFAVerse

\bookpart {
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

globalFB = {
  \key g \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreBTenorVoice = \scoreFBTenorVoice

scoreBVerse = \scoreFBVerse

\bookpart {
  \header {
    title = "Ich steh an deiner Krippen hier"
    subsubtitle = "Coro"
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

globalFC = {
  \key d \major
  \time 4/4
}

scoreCTenorVoice = \scoreFCTenorVoice

scoreCVerse = \scoreFCVerse

\bookpart {
  \header {
    title = "Nun seid ihr wohl gerochen"
    subsubtitle = "64. Choral, D-Dur"
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