\version "2.22.2"

\header {
  title = "Heilig"
  composer = "Richard Proulx"
  subtitle = "Gotteslob"
  subsubtitle = "Eucharistie"
  meter = "4/4-Takt"
  arranger = "Sven Buschke"
  poet = "Liturgie"
  instrument = "org / mel"
  opus = "GL 190"
  piece = "Piece"
  tagline = "Sanctum est."
  copyright = "© Sven Buschke, 11. August 2022"
}

pieceSettings = {
  \key f \major
  \time 4/4
  \tempo 4 = 80
}

melody = \relative c' {\pieceSettings
  a'4 g bes a
  g4. a8
  f2 f4 f8 f a a g g
  f4 f2 g4
  a g bes a8  a
  g4.( a8) f4 f
  bes4. a8 g4 f
  c'2. c4
  d4. d8 a4 b
  c c2 f,4
  a g f e
  f f2 r4
  a g bes a
  g4. a8 f4 f
  bes4.( a8) g4 f
  c'2. c4
  d4. d8 a4 b
  c c2 f,4
  a g f e
  f f2.(
  f2.) r4
  \bar "|."
}

stropheEins = \lyricmode {
  \set fontSize = #-.5
  \set stanza = ""
  Hei -- lig, hei -- lig hei -- lig Gott, Herr al -- ler Mäch -- te und Ge -- wal -- ten.
  Er -- füllt sind Him -- mel und Er -- de von dei -- ner Herr -- lich -- keit.
  Ho -- san -- na in der Hö -- he. Ho -- san -- na in der Hö -- he.
  Hoch -- ge -- lobt sei, der da kommt im Na -- men des Herrn. Ho -- san -- na in der Hö -- he. Ho -- san -- na in der Hö -- he.
}

sopran = \relative c' {\pieceSettings
  \melody
}

alt = \relative c' {\pieceSettings
f4 d g f
f e f2
d4 c f4. e8
f4 d2 e4
f g f f
d cis d f
f2 d
e2. f4
f2 f
f4 e2 f4
d2 c
c2. r4
f4 d d f
d cis d f
d2 d
e2. g4
f2 e4 e(
e) e2 f4
d2 c
c1(
c2.)
}

tenor = \relative c {\pieceSettings
  c'4 g d' c
  d c a2
  bes4 c d bes
  a a2 c4
  c c d c
  g a a c
  d c g2
  g2. a4
  bes2 f
  g2. c4
  bes2 g
  bes4 a2 r4
  d g, g c
  g a a c
  g2 a4 b
  c2. c4
  a2 c4 b(
  b) a2 c4
  bes2 g
  bes4 a2.(
  a2.) r4
}

bass = \relative c {\pieceSettings
  f,4 bes g a
  bes c d c
  bes a d g,
  bes, d'2 c4
  f e d a
  bes a d a
  g a b2
  c2. f4
  bes,2 d c2. a4
  g2 c
  f,2. r4
  d' bes g a
  bes a d a
  g2 d'
  c2. e4
  d2 c4 fis,
  a2. a4
  g2 c
  f,1(
  f2.) r4
}


pedal = \relative c {\pieceSettings
  \bass
}

sheetmusic = {<<
  \new Staff = "m" \with { instrumentName = "Melodie" shortInstrumentName = "m" midiInstrument = "flute" } {\clef treble\new Voice = "mel" { \melody }}
  \new Lyrics \lyricsto "mel" \stropheEins
  \new StaffGroup = "or" \with { instrumentName = "Organ" shortInstrumentName = "o" } <<
    \new PianoStaff \with { instrumentName = "" shortInstrumentName = "" } <<
      \new Staff = "sa" \with { instrumentName = "" shortInstrumentName = "" midiInstrument = "voice oohs" } {\clef treble
        <<
        \new Voice { \voiceOne \sopran }
        \new Voice { \voiceTwo \alt }
        >>
      }
      \new Staff = "tb" \with { instrumentName = "" shortInstrumentName = "" midiInstrument = "trumpet" } {\clef bass
        <<
          \new Voice { \voiceThree \tenor }
          \new Voice { \voiceFour \bass }
        >>
      }
    >>
    \new Staff = "pd" \with { instrumentName = "" shortInstrumentName = "" midiInstrument = "church organ" } {\clef bass \new Voice { \pedal }}
  >>
              >>
}

clave = {\new DrumStaff <<
  \drummode {\pieceSettings
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
        hh8 cl hh cl hh cl
    } \\ {
      bd4 sn4 sn4
    } >>
  }
>>
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
  \sheetmusicmidi
  }
  \midi {}
}