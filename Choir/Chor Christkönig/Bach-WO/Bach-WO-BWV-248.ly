\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "Herr, wenn die stolzen Feinde schnauben"
  subtitle = "Weihnachtsoratorium, 6. Teil"
  subsubtitle = "Nr. 54 Coro"
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

\include "Bach-WO-Teil_5-BWV-248.ly"

\paper {
  #(set-paper-size "a4")
}

global = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

tenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  c
}

verse = \lyricmode {
  % Lyrics follow here.

}

\score {
  \new Staff \with {
    instrumentName = "Tenor"
    shortInstrumentName = "T."
    midiInstrument = "choir aahs"
    \consists "Ambitus_engraver"
  } { \clef "treble_8" \tenorVoice }
  \addlyrics { \verse }
  \layout { }
  \midi { }
}
