\version "2.24.4"

\include "oll-core/package.ily"
\loadPackage lilypond-export

opts.exporter = #exportMusicXML

\header {
  dedication = "n"
  title = "n"
  subtitle = "n"
  subsubtitle = "n"
  instrument = "n"
  composer = "n"
  arranger = "n"
  poet = "n"
  meter = "n"
  piece = "n"
  opus = "n"
  copyright = "n"
  tagline = "n"
}

global = {
  \key c \major
  \time 4/4
  \tempo "Allegro"
}

right = \relative c'' {
  \global
  % Music follows here.
  c d e f g b
}

left = \relative c' {
  \global
  % Music follows here.
  c
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout {
    \FileExport #opts
  }
  \midi {
    \tempo 4=100
  }
}
