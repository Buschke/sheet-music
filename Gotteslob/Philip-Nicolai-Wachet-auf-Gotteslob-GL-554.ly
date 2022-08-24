\version "2.22.2"

\header {
  title = "Wachet auf"
  subtitle = "Gotteslob"
  subsubtitle = "Lied"
  composer = "Philip Nicolai"
  poet = "Philip Nicolai"
  arranger = "Sven Buschke"
  meter = "1599"
  opus = "GL 554"
  piece = "1-3"
  instrument = "Organ"
  copyright = "© Sven Buschke"
  tagline = "Surgit"
}

pieceSettings = {
  \key bes \major
  \time 2/2
  \tempo 2 = 40
}

melody = \relative c' {\pieceSettings
  bes2 d f2. f4 f f g)f g2 f r4

}

lyricsOne = \lyricmode {
  \set stanza = "1."
  Wa -- chet auf
}

lyricsTwo = \lyricmode {
  \set stanza = "2."
  Zi -- on hört
}

lyricsThree = \lyricmode {
  \set stanza = "3."
  Glo -- ri --a
}

sopran = \relative c' {\pieceSettings
  \melody
}

alt = \relative c' {\pieceSettings
  bes2 d f2. f4 f f g)f g2 f r4

}

tenor = \relative c' {\pieceSettings
  bes2 d f2. f4 f f g)f g2 f r4

}

bass = \relative c' {\pieceSettings
  bes2 d f2. f4 f f g)f g2 f r4

}

pedal = \relative c' {\pieceSettings
  bes2 d f2. f4 f f g)f g2 f r4

}

clave = \new DrumStaff{\pieceSettings
  \drummode {
  <<
    { hh8 cl hh cl hh cl }
    { bd4 sn bd sn bd sn}

  >>
}
}

sheetmusic = {
  \new Staff = "m" \with { instrumentName = "Me" shortInstrumentName = "M" } {\clef treble \new Voice { \melody } }
  \new StaffGroup = "o" \with { instrumentName = "Or" shortInstrumentName = "O"} <<
    \new PianoStaff = "m" <<
      \new Staff = "sa" \with { midiInstrument = "voice oohs" } {\clef treble << \new Voice { \voiceOne \sopran } \new Voice { \voiceTwo \alt } >>}
      \new Staff = "tb" \with { midiInstrument = "violin" } {\clef bass << \new Voice { \voiceThree \tenor } \new Voice { \voiceFour \bass }
      >>}
    \new Staff = "p" \with { midiInstrument = "church organ" } {\clef bass \new Voice { \pedal } }
  >>
}

sheetmusicmidi = {
  \sheetmusic
}

\score {
  \sheetmusic
  \layout {}
}

\score {
  {
    \clave
    \sheetmusic
  }
  \midi {}
}
