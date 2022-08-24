\version "2.22.2"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "To me"
  title = "Hoch sei gepriesen"
  subtitle = "Gotteslob"
  subsubtitle = "20. Sonntag im Jahreskreis"
  instrument = "Organ"
  composer = "Guillaume Franc"
  arranger = "Sven Buschke"
  poet = "Maria Luise Thurmair"
  meter = "1530"
  piece = "1-3"
  opus = "GL 384"
  copyright = "© Sven Buschke, 14. August 2022"
  tagline = "Princeps laudabitur"
}

global = {
  \key c \major
  \time 2/2
  \tempo "Andante" 4=100
}

chordNames = \chordmode {
  \global
  \semiGermanChords
  % Chords follow here.
  c1 g g g
  f g g c
}

melody = \relative c'' {
  \global
  % Music follows here.
  c,2 e4 f g2 c b a g \breathe
  g a4 g e2 e f4 e d2 c r2

  c2 e4 f g2 c b a g \breathe
  g a4 g e2 e f4 e d2 c r2
  c'2 b4 a g c b2 a g \breathe
  g d f  e4 d e f g2( a) g r2
  c, c4 d e c e2 f g \breathe
  g d f e4 g f e d2 c1
  \bar "|."
}

accRight = \relative c' {
  \global
  % Music follows here.
  <c, e g>1
}

accLeft = \relative c {
  \global
  % Music follows here.
  c1 g g g f g g c
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Hoch sei ge -- prei -- sen un -- ser Gott,
  der heim -- ge -- sucht sein Volk in Treu -- e
  der uns er -- löst aus Schuld und Not,
  auf dass sein Heil das Herz er -- freu -- e.
  Aus Da -- vids Stamm hat er  er-- weckt den Ret -- ter,
  den er uns ver -- hei -- ßen,
  dass uns der Fein -- de Hass
  nicht schreckt und wir in Frei -- heit ihn lob -- prei -- sen.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Hoch sei ge -- prie -- sen un -- ser Herr,
  der uns er -- wie -- sen sein Er -- bar -- men,
  der sei -- nen Bund von al --ters her
  auf e -- wig stif -- tet mit uns Ar -- men:
  Dass wir, von al -- ler Furcht be -- freit,
  ge -- recht und hei -- lig vor ihm le --ben,
  auf -- recht ihm die -- nen al -- le -- zeit
  und ihm al -- lein die Eh -- re ge -- ben.
}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  Hoch sei ge -- prie --sen un -ser Hirt,
  der uns mit sei -- nein star -- ken Ar -- men
  den sich -- ern Weg des Frie -- dens führt
  durch sei -- ne Lie -- be, sein Er -- bar -- men.
  Uns al -- le, die im fins -- tern Tal
  in Nacht und To -- des -- schat -- ten ge -- hen,
  hat heim -- ge --sucht mit sei --nem Strahl
  das Licht, der Auf --gang aus den Höh -- en.

}

rightOne = \relative c'' {
  \global
  % Music follows here.
  \melody
}

rightTwo = \relative c'' {
  \global
  % Music follows here.
  g,2 c d e g( g4) fs g2
  e f4 d c2 b c( c4) b g2 r
  g c d4 g( g) fs g2
  fs d
  e f4 d c2 b c( c4) b g2 r
  a' g4 f e fs g2( g4) fs d2
  c d d c b4 c c2 c b r
  g a4 b c2 c d d
  c d d  c c( c4) b g1

}

leftOne = \relative c' {
  \global
  % Music follows here.
  e,2 g d' c d d b
  c c4 b a 2 b a d e
}

leftTwo = \relative c' {
  \global
  % Music follows here.
  c,,2 c' b a b4 c d2 g,
  c f,4 g a 2 g f g c,
  c' a g a b4 c d g,
}

pedal = \relative c {
  \global
  % Music follows here.
  \leftTwo
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
    instrumentName = "Organ"
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
