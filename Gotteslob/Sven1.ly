\version "2.22.2"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "To Sven"
  title = "Wachet Auf"
  subtitle = "Gottesdienst"
  subsubtitle = "Eucharistie"
  instrument = "Organ"
  composer = "Sven Buschke"
  arranger = "Sven Buschke"
  poet = "Sven Buschke"
  meter = "3/4-Takt"
  piece = "1"
  opus = "GL 554"
  copyright = "© Sven Buschke,"
  tagline = "Classic rocks"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key f \major
  \numericTimeSignature
  \time 3/4
  \partial 4
  \tempo "Andante" 4=100
}

chordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c f g
}

melody = \relative c'' {
  \global
  % Music follows here.
  c d e
}

accRight = \relative c' {
  \global
  % Music follows here.
  d e f g
}

accLeft = \relative c {
  \global
  % Music follows here.
  a g e c
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Wie soll es da -- mit nur wei -- ter -- ge --hen.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Gu -- ten Tag
}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  Viel -- leicht
}

rightOne = \relative c'' {
  \global
  % Music follows here.
  c e g
}

rightTwo = \relative c'' {
  \global
  % Music follows here.
  c
}

leftOne = \relative c' {
  \global
  % Music follows here.
  g e a f
}

leftTwo = \relative c' {
  \global
  % Music follows here.
  g a f
}

pedal = \relative c {
  \global
  % Music follows here.
  d f
}

leadSheetPart = <<
  \new ChordNames \chordNames
  \new FretBoards \chordNames
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "melody" \with {
        \consists "Ambitus_engraver"
      } { \voiceOne \melody }
      \new Voice { \voiceTwo \accRight }
    >>
    \new Lyrics \lyricsto "melody" \verseOne
    \new Lyrics \lyricsto "melody" \verseTwo
    \new Lyrics \lyricsto "melody" \verseThree
    \new Staff { \clef bass \accLeft }
  >>
>>

organPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } << \rightOne \\ \rightTwo >>
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass << \leftOne \\ \leftTwo >> }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \pedal }
>>

\score {
  <<
    \leadSheetPart
    \organPart
  >>
  \layout { }
  \midi { }
}
