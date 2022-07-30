\version "2.22.2"

\header {
  title = "HGDoA 06 - Halleluja - mit Halleluja-Vers"
  subtitle = "Hauptgottesdienst ohne Feier des Heiligen Abendmahles"
  composer = "HGDoA"
  arranger = "Sven Buschke"
  opus = "HGDoA 06, EG 181.2"
  copyright = "© Sven Buschke, 5. Juli 2022"
  tagline = ""
}

pieceSettings = {
  \key c \major
  \time 4/4
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
  a g f g a g g \bar "'"
  a c a g f f \bar "'"
  g a a g g g
  %\bar ";"
  %\bar "!"
  \bar "||"
}

strophe = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "G:"
Hal -- le _ -- lu _ -- ja, _ Hal -- le -- lu _ -- ja, _ Hal _ -- le -- lu -- ja. _
}

soprano = \relative c' {
  \pieceSettings
  \cadenzaOn
  a' g f g a g2
  a c a
  g4 a a g g2
  \bar "||"
}

alto = \relative c' {
  \pieceSettings
  \cadenzaOn
  e4 d c d2 e2 c1
  a2
  c2. c4 d2
}

tenor = \relative c {
  \pieceSettings
  \cadenzaOn
  a4 bes a g f c'2
  e1 f2 e2 f4 e d2
}

bass = \relative c {
  \pieceSettings
  \cadenzaOn
  \repeat unfold 7 {s4}
  a2 c d2
  c4 a f c' g2
}

pedal = \relative c {
  \pieceSettings
  \cadenzaOn
  \repeat unfold 19 {s4}
}

sheetmusic = {
  <<
    \new Voice = "m" << \preambleUp \melody >>
    \new Lyrics \lyricsto "m" \strophe
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
    \new Lyrics \lyricsto "m" \strophe
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