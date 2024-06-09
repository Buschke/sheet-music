\version "2.24.3"
\language "english"

\header {
  dedication = ""
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

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
}

\include "Bach-WO-Noten_Texte-BWV-248.ly"


\bookpart {
  \header {
      subtitle = \markup {\with-url "https://de.wikipedia.org/wiki/Weihnachtsoratorium_(Bach)" "Weihnachtsoratorium" ", 1. Teil"}
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreAATenorVoice }
    \addlyrics { \scoreAAVerse }
    \layout { }
    \midi { }
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreABTenorVoice }
    \addlyrics { \scoreABVerse }
    \layout { }
    \midi { }
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreACTenorVoice }
    \addlyrics { \scoreACVerse }
    \layout { }
    \midi { }
  }
}

\bookpart {
  \header {
      subtitle = \markup {\with-url "https://de.wikipedia.org/wiki/Weihnachtsoratorium_(Bach)" "Weihnachtsoratorium" ", 2. Teil"}
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreBATenorVoice }
    \addlyrics { \scoreBAVerse }
    \layout { }
    \midi { }
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreBBTenorVoice }
    \addlyrics { \scoreBBVerse }
    \layout { }
    \midi { }
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreBCTenorVoice }
    \addlyrics { \scoreBCVerse }
    \layout { }
    \midi { }
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreBDTenorVoice }
    \addlyrics { \scoreBDVerse }
    \layout { }
    \midi { }
  }
}

\bookpart {
  \header {
      subtitle = \markup {\with-url "https://de.wikipedia.org/wiki/Weihnachtsoratorium_(Bach)" "Weihnachtsoratorium" ", 3. Teil"}
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreCATenorVoice }
    \addlyrics { \scoreCAVerse }
    \layout { }
    \midi { }
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreCBTenorVoice }
    \addlyrics { \scoreCBVerse }
    \layout { }
    \midi { }
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreCCTenorVoice }
    \addlyrics { \scoreCCVerse }
    \layout { }
    \midi { }
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreCDTenorVoice }
    \addlyrics { \scoreCDVerse }
    \layout { }
    \midi { }
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreCETenorVoice }
    \addlyrics { \scoreCEVerse }
    \layout { }
    \midi { }
  }
}

\bookpart {
  \header {
      subtitle = \markup {\with-url "https://de.wikipedia.org/wiki/Weihnachtsoratorium_(Bach)" "Weihnachtsoratorium" ", 4. Teil"}
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreDATenorVoice }
    \addlyrics { \scoreDAVerse }
    \layout { }
    \midi { }
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreDBTenorVoice }
    \addlyrics { \scoreDBVerse }
    \layout { }
    \midi { }
  }
}

\bookpart {
  \header {
      subtitle = \markup {\with-url "https://de.wikipedia.org/wiki/Weihnachtsoratorium_(Bach)" "Weihnachtsoratorium" ", 5. Teil"}
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreEATenorVoice }
    \addlyrics { \scoreEAVerse }
    \layout { }
    \midi { }
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreEBTenorVoice }
    \addlyrics { \scoreEBVerse }
    \layout { }
    \midi { }
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreECTenorVoice }
    \addlyrics { \scoreECVerse }
    \layout { }
    \midi { }
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreEDTenorVoice }
    \addlyrics { \scoreEDVerse }
    \layout { }
    \midi { }
  }
}

\bookpart {
  \header {
      subtitle = \markup {\with-url "https://de.wikipedia.org/wiki/Weihnachtsoratorium_(Bach)" "Weihnachtsoratorium" ", 6. Teil"}
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreFATenorVoice }
    \addlyrics { \scoreFAVerse }
    \layout { }
    \midi { }
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreFBTenorVoice }
    \addlyrics { \scoreFBVerse }
    \layout { }
    \midi { }
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreFCTenorVoice }
    \addlyrics { \scoreFCVerse }
    \layout { }
    \midi { }
  }
}
