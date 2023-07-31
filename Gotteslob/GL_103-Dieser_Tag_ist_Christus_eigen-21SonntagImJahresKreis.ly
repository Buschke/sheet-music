\version "2.22.2"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "Pro Deo"
  title = "Dieser Tag ist Christus eigen"
  subtitle = "Gotteslob, 21. Sonntag im Jahreskreis"
  subsubtitle = "Einzug"
  instrument = "Orgel"
  composer = "Gilbert König"
  arranger = "Sven Buschke"
  poet = "Peter Gerloff"
  meter = "1939, 2004"
  piece = "3 Strophen"
  opus = "GL 103"
  copyright = "© Sven Buschke, 15. August 2022"
  tagline = "Hodie ad Christum pertinet"
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
  \numericTimeSignature
  \time 6/4
  \tempo "Maestoso" 2.=44
}

chordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  f2 c4 f2 c4 f c f c2 c4 bf2 c4 f2 f4 c2 f4 c2. f2 bf4 c2 f4
  bf c bf c2 f4 f2 c4 f2 f4 c f c f2.
}

melody_intonation = \relative c'' {
}

melody = \relative c'' {
  \global
  % Music follows here.
  f,2 g4 a2 c4
  a( g) f g2 c,4
  d2 e4 f2 f4 e2 f4 g2. \breathe
  a2 bf4 c2 f,4 bf( c) d c2 a4
  f2 g4 a2 a4 g( f) g f2.
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
  <f a' c f>2 <c c' e g>4 <f f' c a>2 <c g e c>4 <f c f a> <c c' e g> <f a c f> <c c' e g>2
  <c e g c>4 <bf f' bf d >2 <c g' c e>4 <f a c f>2 <f a c f>4 <c g c e>2 <f a c f>4 <c c' e g>2. <f c' f a>2
  <bf f d bf>4 <c g e c'>2 <f a' c f>4 <bf d f bf>4 <c e e c> <bf bf' f d'> <c g e c'>2 <f f' c a>4 <f a c f>2 <c c' e g>4 <f f' c a>2 <f f' c a>4 <c c' e g> <f a' c f> <c c' e g> <f a' c f>2.
}

accLeft = \relative c {
  \global
  % Music follows here.
  f2 c4 f2 c4 f c f c2 c4 bf2 c4 f2 f4 c2 f4 c2.
  f,2 bf4 c2 f,4 bf c bf c2 f,4 f2 c'4 f,2 f4 c' f, c' f,2.
}

accLeftFigBass = \figuremode {
  < T >2  < D >4 < T >2 < D >4 < T >4 < D >4 < T >4 < D >2 < D >4 < S >2 < D >4 < T >2 < T >4 < D >2 < T >4
  < D >2. < T >2 < S >4 < D >2 < T >4 < S >4 < D >4 < S >4 < D >2 < T >4 < T >2 < D >4 < T >2 < T >4 < D >4 < T >4 < D >4 < T >2.
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Die -- ser Tag ist Chri -- stus ei -- gen,
  und das er -- ste Mor -- gen -- licht
  will von sei -- nem Le --ben zeu -- gen,
  das die To -- des -- nacht durch -- bricht.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Wenn wir sein Ge -- dächt -- nis fei -- ern,
  Un -- ter -- gang und Auf -- er -- stehn,
  wird sich uns -- re Zeit er -- neu -- ern,
  wird er mensch -- lich mit uns gehn.
}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  Se -- gne, Herr, den Tag der Ta -- ge,
  dass die Welt dein Kom -- men spürt.
  Lö -- se Müh -- sal, Streit und Pla -- ge,
  dass für al -- le Sonn -- tag wird!
}

rightOne = \relative c'' {
  \global
  % Music follows here.
  \melody
}

rightTwo = \relative c'' {
  \global
  % Music follows here.
  c,2 e4 c2 e4 f e c e2 g,4
  bf2 c4 c2 c4 c2 c4 e2.
  f2 d4 e2 c4
  f4 e f e2 c4 c2 e4 c2 c4
  e c e c2.
}

leftOne = \relative c' {
  \global
  % Music follows here.
  a2 c4 a2 g4 c4 c a c2 e,4
  f2 g4 a2 a4 g2 a4 c2.
  c2 f,4 g2 a4 d4 g, bf g2
  f4 a2 c4 f,2 f4 c'4 a c a2.
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
  \new Staff =  "m" \new Voice = "melody" \with {  \consists "Ambitus_engraver" } { \melody }
  \new Lyrics \lyricsto "melody" \verseOne
  \new Lyrics \lyricsto "melody" \verseTwo
  \new Lyrics \lyricsto "melody" \verseThree
  \new ChoirStaff <<
    \new ChordNames \chordNames
    \new FretBoards \chordNames
    \new Staff \accRight
    \new ChordNames \accRightSet
    \new FretBoards \accRightSet
    \new Staff \accRightSet
    \new Staff { \clef bass << \new Voice = "b" \with { \consists "Ambitus_engraver"} { \accLeft } \new FiguredBass { \accLeftFigBass } >>}
  >>
>>

organPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } << \rightOne \\ \new Voice = "a" \with { \consists "Ambitus_engraver"} {\voiceTwo \rightTwo} >>
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass << \new Voice = "t" \with { \consists "Ambitus_engraver"} {\voiceThree \leftOne} \\ \leftTwo >> }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \pedal }
>>

clave = \new DrumStaff {
  \drummode {
    \global
    <<
      {\voiceOne \repeat unfold 6 {hh8 cl} } \\
      {\voiceTwo \repeat unfold 2 {bd4 sn sn} }
    >>
  }
}

\markup \bold \underline "Registrierung Intonation"
\markup fwnum =
\markup \override #'(font-features . ("ss01" "-kern"))
\number \etc

\markuplist \tiny {
  \override #'(padding . 2)
  \table
  #'(-1 -1 -1 -1 -1)
  {
    \underline { "Hauptwerk C-g''" "Positiv/Schwellwerk C-g''" "Rückpositiv  C-g''" "Pedal C-f'" "Spielhilfe"}
    "" "Gedackt 8'" "" "Subbass 16'" ""
    "" "Prästant 4'" "" "Choralbass 4'"  ""
    "" "Octave 2'" "" "Zinke 8'" ""
    "" "Cymbal 4fach 1'" "" "" ""
  }
}

\markup \bold \underline "Registrierung Choral"
\markup fwnum =
\markup \override #'(font-features . ("ss01" "-kern"))
\number \etc

\markuplist \tiny {
  \override #'(padding . 2)
  \table
  #'(-1 -1 -1 -1 -1)
  {
    \underline { "Hauptwerk C-g''" "Positiv/Schwellwerk C-g''" "Rückpositiv  C-g''" "Pedal C-f'" "Spielhilfe"}
    "" "Gedackt 8'" "" "Subbass 16'" ""
    "" "Prästant 4'" "" "Choralbass 4'"  ""
    "" "Octave 2'" "" "Zinke 8'" ""
    "" "Cymbal 4fach 1'" "" "" ""
  }
}

\score {
  {
    %   \clave
    <<
      \leadSheetPart
      \organPart
    >>
  }
  \layout { }
}

\score {
  {
    \clave
    \repeat unfold 3 {
    <<
      \leadSheetPart
      \organPart
    >>
    }
  }
  \midi{}
}
