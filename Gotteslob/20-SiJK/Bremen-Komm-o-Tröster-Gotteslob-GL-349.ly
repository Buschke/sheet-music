\version "2.22.2"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "Pro Deo"
  title = "Komm, o Tröster"
  subtitle = "Gotteslob"
  subsubtitle = "Gabenbereitung"
  instrument = "Orgel"
  composer = "Bremen"
  arranger = "Sven Buschke"
  poet = "Maria Luise Thurmair, Stephen Langton"
  meter = "1639, 1200 (Veni Sance Spiritus)"
  piece = "5 Strophen"
  opus = "GL 349"
  copyright = "© Sven Buschke, 14. August 2022"
  tagline = "Veni, consolator!"
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
  \key g \major
  \numericTimeSignature
  \time 6/4
  \partial 2.
  \tempo "Maestoso" 4=88
}

chordNames = \chordmode {
  \global
  \semiGermanChords
  % Chords follow here.

}

melody = \relative c'' {
  \global
  % Music follows here.

}

accRight = \relative c' {
  \global
  % Music follows here.

}

accLeft = \relative c {
  \global
  % Music follows here.

}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.

}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.

}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.

}

verseFour = \lyricmode {
  \set stanza = "4."
  % Lyrics follow here.

}

verseFive = \lyricmode {
  \set stanza = "5."
  % Lyrics follow here.

}

rightOne = \relative c'' {
  \global
  % Music follows here.

}

rightTwo = \relative c'' {
  \global
  % Music follows here.

}

leftOne = \relative c' {
  \global
  % Music follows here.

}

leftTwo = \relative c' {
  \global
  % Music follows here.

}

pedal = \relative c {
  \global
  % Music follows here.

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
    \new Lyrics \lyricsto "melody" \verseFour
    \new Lyrics \lyricsto "melody" \verseFive
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
