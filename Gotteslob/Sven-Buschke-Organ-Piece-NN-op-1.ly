\version "2.22.2"

\header {
  title = "Organ Piece"
  subtitle = "NN"
  subsubtitle = "NN2"
  composer = "Sven Buschke"
  arranger = "A Sven Buschke"
  poet = "SB"
  instrument = "Organ"
  meter = "4/4"
  opus = "op. 1"
  piece = "No. 1"
  tagline = "So long"
  copyright = "Yeah"
}

pieceSettings = {
  \key f \major
  \time 4/4
  \tempo 4 = 80
}

pedal = \relative c {\pieceSettings
  c
}

sheetmusic = {
  \new Staff = "ped" \with { midiInstrument = "church organ" instrumentName = "ped" shortInstrumentName = "d"} {\clef bass \new Voice \with { midiInstrument = "church organ" } { \pedal }}
}

\score {
  \sheetmusic
  \layout {}
}

\score {
  \sheetmusic
  \midi {}
}