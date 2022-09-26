\version "2.22.2"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "Für Sandra"
  title = "Der Weg"
  subtitle = "NN"
  subsubtitle = "NN"
  instrument = "Orgel"
  composer = "Herber Grönemeyer"
  arranger = "Sven Buschke"
  poet = "Herber Grönemeyer"
  meter = "F-Dur"
  piece = "NN"
  opus = "Op. 1"
  copyright = "© Sven Buschke, 28. August 2022"
  tagline = "Der Weg ist gut"
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key f \major
  \time 2/2
  \tempo "Adagio" 4=72
}

chordNames = \chordmode {
  \global
  % Chords follow here.

}

melody = \relative c'' {
  \global
  % Music follows here.
  s1 s s s s s s s
  s4 s8
  f f g a c~
  c2
}

accRight = \relative c' {
  \global
  % Music follows here.
  <a c>4 f  <a c>4 f
}

accLeft = \relative c {
  \global
  % Music follows here.
  c
}

verse = \lyricmode {
  % Lyrics follow here.

}

right = \relative c'' {
  \global
  % Music follows here.
  <a c>4 f  <a c>4 f
}

left = \relative c' {
  \global
  % Music follows here.
  f,,1 f f~ f f f f~ f
  f'4 f <g bf> f
  c a c a
  <f' d'>	bf f2
  <a c>4 f2 bf4
  <a c> f <a c> f <a c> f <a c> f
  bf f <b d> f

}

pedal = \relative c {
  \global
  % Music follows here.
  \left
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
    \new Lyrics \lyricsto "melody" \verse
    \new Staff { \clef bass \accLeft }
  >>
>>

organPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \left }
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
