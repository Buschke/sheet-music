\version "2.22.2"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "Pro Deo"
  title = "Zu dir, o Gott"
  subtitle = "Gotteslob, 20. Sonntag im Jahreskreis"
  subsubtitle = "Einzug"
  instrument = "Orgel"
  composer = "Caspar Ulenberg"
  arranger = "Sven Buschke"
  poet = "Heinrich Bone, Ps 25"
  meter = "1582, 1851"
  piece = "1-2 (ö)"
  opus = "GL 142"
  copyright = "© Sven Buschke, 14. August 2022"
  tagline = "Tibi o deus"
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
  \tempo "Andante" 4=100
}

chordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  f2 f4 f c4 bf f2 c f f c4 c c f bf2 f r
  c2 bf4 f c c f bf c2
  c bf4 f c f

}

melody = \relative c'' {
  \global
  % Music follows here.
  f,2 f4 f g f a2 g f \breathe
  f c'4 c g a bf2 a r
  c bf4 a g e f d c2 \breathe
  c d4 f g a g2 f r
  g a4 c bf g a a g2 \breathe
  bf a 4 g f e d d c2
  f g a c4 a g2 f
  \bar "|."
}

accRight = \relative c' {
  \global
  % Music follows here.
  \chordNames
}

accRightSet = \relative c' {
 \global
  % Music follows here.
  <f a c>2 <f a c>4 <f a c> g f a2 g f \breathe
  f c'4 c g a bf2 a r
  c bf4 a g e f d c2 \breathe
  c d4 f g a g2 f r
  g a4 c bf g a a g2 \breathe
  bf a 4 g f e d d c2
  f g a c4 a g2 f
}

accLeft = \relative c {
  \global
  % Music follows here.
  f2 f4 f c bf a2 c f f c4 c c f bf2 f r
  c bf4 f c c f bf
}

figBass = \figuremode {
  < _ >2 < _ >4 < _ > < 6 4 >
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Zu dir, o Gott, er -- he -- ben wir
  die See -- le mit Ver -- trau -- en.
  Dein Volk er -- freu -- et sich in dir,
  wollst gnä -- dig nie -- der -- schau -- en.
  Lass leuch -- ten, Herr, dein An -- ge -- sicht,
  er -- füll uns mit der Gna -- de Licht
  und schenk uns dein Er -- bar -- men.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Herr, zei -- ge uns die We -- ge dein
  und lehr uns dei -- ne Pfa -- de.
  Ganz na -- he lass dein Wort uns sein
  voll Wahr -- heit und voll Gna -- de.
  Nimm du hin -- weg der Sün -- de Schuld,
  mit uns -- rer Schach -- heit hab Ge -- duld
  und schenk uns dein Er -- bar -- men.
}

rightOne = \relative c'' {
  \global
  % Music follows here.
  \melody
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
  \accLeft
}

pedal = \relative c {
  \global
  % Music follows here.
  \leftTwo
}

leadSheetPart = <<
  \new Staff   \new Voice = "melody" \with {
        \consists "Ambitus_engraver"
      } {  \melody }
    \new Lyrics \lyricsto "melody" \verseOne
    \new Lyrics \lyricsto "melody" \verseTwo
  \new ChordNames \chordNames
  \new FretBoards \chordNames
  \new ChoirStaff <<
    \new Staff
      \accRight
    \new ChordNames \accRightSet
    \new FretBoards \accRightSet
    \new Staff \accRightSet

    \new Staff { \clef bass << \accLeft \new FiguredBass { \figBass } >>}
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
