\version "2.22.2"

\header {
  title = "HGDoA 03 - Gloria"
  subtitle = "Hauptgottesdienst ohne des Heiligen Abendmahles"
  composer = "HGDoA"
  arranger = "Sven Buschke"
  opus = "HGDoA 03 / EG 179"
  copyright = "© Sven Buschke, 5. Juli 2022"
  tagline = ""
}

pieceSettings = {
  \key f \major
  \time 3/2
  \tempo 2 = 40
}

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

preambleUp = {\clef treble \pieceSettings}
preambleDown = {\clef bass \pieceSettings}
preamblePedal={\clef bass \pieceSettings}

melody = \relative a' {\stemOff
  \pieceSettings
  \cadenzaOn
  c2 a4 bes c2 a4 g a bes g2 f
  %\bar ";"
  %\bar "!"
  \bar "||"
  \cadenzaOff
  \stemOn
  \repeat volta 2 {
  \partial 4  f4
  a2 bes4 c2 bes4
  a2 g4 a2  \breathe a4 a2 g4 bes( a) g %\bar "'"
  f2( e4) f2 }
  \partial 4 f4
  f2 g 4 bes2 a4 g2 f4 g2 \bar "'" g4 a2 bes4 c2 bes4 a2 g4 a2 f4 g2 bes4 a2 g4 f2( e4) \cadenzaOn f1
%  \bar ".|"
}

strophe = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "K:"
Eh -- re sei Gott in der Hö __ _ _ -- he!
  \set stanza = "G:"
<<
  {
    Al -- lein Gott in der Höh sei Ehr
und Dank für sei -- ne Gna-- de,
  }
\new Lyrics = "secondVerse"
\with { alignBelowContext = "firstVerse" } {
  \set associatedVoice = "m"
      dar -- um dass nun und nim -- mer --mehr uns rüh -- ren kann kein Scha -- de.
}
>>
      Ein Wohl -- ge --falln Gott an uns hat nun ist groß Fried ohn Un -- ter -- lass,
      all Fehd hat nun ein En -- de.
}


soprano = \relative c' {
  \pieceSettings
  \cadenzaOn
  s2 s4 s s2 s4 s s s s2 s
  \bar "||"
  \cadenzaOff
  \stemOn
  \repeat volta 2 {
  \partial 4  f4
  a2 bes4 c2 bes4
  a2 g4 a2 \bar "'" a4 a2 g4 bes( a) g
  f2( e4) f2 }
  \partial 4 f4
  f2 g 4 bes2 a4 g2 f4 g2 \bar "'" g4 a2 bes4 c2 bes4 a2 g4 a2 f4 g2 bes4 a2 g4 f2( e4) \cadenzaOn f1
  \bar "||"
}

alto = \relative c' {
  \pieceSettings
  \cadenzaOn
  s2 s4 s s2 s4 s s s s2 s
  \bar "||"
  \cadenzaOff
  \stemOn
  \repeat volta 2 {
  \partial 4  c4
  f2 f4 e2 d4
  f2 e4 f2 \breathe a4
  a2 g4 bes\( a\) g
  f2\( e4\) f2}
  \partial 4 c4
  d2 e4 g2 f4
  es2 c4 e2 \breathe d4
  f2 f4 e2 d4
  f2 d4 cis2
  a4 c2 bes4 c2 c4
  a bes c \cadenzaOn c1
}


tenor = \relative c {
  \pieceSettings
  \cadenzaOn
  s2 s4 s s2 s4 s s s s2 s
  \bar "||"
  \cadenzaOff
  \stemOn
  \repeat volta 2 {
  \partial 4  f4
  c'2 bes4 g2 g4
  c2. c2 \breathe a4
  d2 bes4 g f e
  f2 g4 a2
  %\bar "'"
}
  \partial 4 a4
  a2 c4 d2 d4
  bes2 a4 c2 \breathe bes4
  c2 bes4 g2 g4
  f2 g4 e2 \breathe f4
  e2 d4 f2 e4
  f2 g4 \cadenzaOn a1
}

bass = \relative c {
  \pieceSettings
  \cadenzaOn
  s2 s4 s s2 s4 s s s s2 s
  \bar "||"
  \cadenzaOff
  \stemOn
  \repeat volta 2 {
  \partial 4  f,4
  f'2 d4 c2 g4
  a bes c f,2 \breathe  f'4
  d2 g4 es f c
  d2 c4 f,2 }
  \partial 4 f'4
  d2 c4 g2 d'4
  es2 f4 c2 \breathe g'4
  f e d c2 g4
  d' c bes a2 \breathe d4
  c2 g4 a2 c4
  d2 c4
  \cadenzaOn
  f,1
}

pedal = \relative c {
  \pieceSettings
  \cadenzaOn
  s2 s4 s s2 s4 s s s s2 s
  \cadenzaOff
  \repeat volta 2 {
    \partial 4 s4
    s1. s s s1 s4
  }
  \partial 4 s4
  s1. s s s s s2 s4 \cadenzaOn s1
  \bar "|."
}



\markup \bold \underline "Registrierung"
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

clave = {\new DrumStaff <<
  \drummode {\pieceSettings
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
        hh4 cl hh cl 
    } \\ {
      bd4 sn4 bd4 sn4
    } >>
  }
>>
}

sheetmusic = {
  <<
    \new Voice = "m" << \preambleUp \melody >>
    \new Lyrics = "firstVerse" \lyricsto "m" \strophe
              \new StaffGroup = "org" \with { instrumentName = "org" shortInstrumentName = "or" } <<
    \new PianoStaff <<
      %\set PianoStaff.instrumentName = #"Piano  "
      \new Staff = "upper" \relative c' {
        \preambleUp
        <<
          \new Voice = "s" { \voiceOne \soprano }
          \\
          \new Voice ="a" { \voiceTwo \alto }
        >>
      }
      \new Staff = "lower" \relative c {
        \preambleDown
        <<
          \new Voice = "t" { \voiceThree \tenor }
          \\
          \new Voice = "b" { \voiceFour \bass }
        >>
      }
    >>
      \new Staff = "lower" \relative c {
        \preambleDown
        <<
          \new Voice = "p" { \pedal }
        >>
      }
    >>
  >>
}

sheetmusicmidi = {
  <<
    \new Voice = "m" << \preambleUp \melody >>
    \new Lyrics = "firstVerse" \lyricsto "m" \strophe
              \new StaffGroup = "org" \with { instrumentName = "org" shortInstrumentName = "or" } <<
    \new PianoStaff <<
      %\set PianoStaff.instrumentName = #"Piano  "
      \new Staff = "upper" \relative c' {
        \preambleUp
        <<
          \new Voice = "s" { \voiceOne \soprano }
          \\
          \new Voice ="a" { \voiceTwo \alto }
        >>
      }
      \new Staff = "lower" \relative c {
        \preambleDown
        <<
          \new Voice = "t" { \voiceThree \tenor }
          \\
          \new Voice = "b" { \voiceFour \bass }
        >>
      }
    >>
      \new Staff = "lower" \relative c {
        \preambleDown
        <<
          \new Voice = "p" { \pedal }
        >>
      }
    >>
  >>
}


\markup \bold \underline "Registrierung"
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
    %\clave
    \sheetmusic
  }
  \layout {     \context {
      \Staff
      \remove "Time_signature_engraver"
    }}
}

\score {
  {
    \clave
    \sheetmusicmidi
  }
  \midi {}
}