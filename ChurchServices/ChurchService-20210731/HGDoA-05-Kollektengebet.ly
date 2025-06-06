\version "2.22.2"

\header {
  title = "HGDoA 05 - Kollektengebet"
  subtitle = "Hauptgottesdienst ohne Feier des Heiligen Abendmahles"
  composer = "HGDoA"
  arranger = "Sven Buschke"
  opus = "HGDoA 05"
  copyright = "© Sven Buschke, 5. Juli 2022"
  tagline = ""
}

pieceSettings = {
  \key c \major
  \time 4/4
  \tempo 2 = 65
}

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

preambleUp = {\clef treble \pieceSettings}
preambleDown = {\clef bass \pieceSettings}
preamblePedal={\clef bass \pieceSettings}

melody = \relative a' {\stemOff
  \pieceSettings
  \cadenzaOn
  f4 f f
  %\bar ";"
  %\bar "!"
  \bar "||"
}

strophe = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "G:"
A -- men. _
}

soprano = \relative c' {
  \pieceSettings
  \cadenzaOn
  f4 f f
  \bar "||"
}

alto = \relative c' {
  \pieceSettings
  \cadenzaOn
  c4 c c
  \bar "||"
}

tenor = \relative c {
  \pieceSettings
  \cadenzaOn
  a'4 a a  \bar "||"
}

bass = \relative c {
  \pieceSettings
  \cadenzaOn
  f4 f f
  \bar "||"
}

pedal = \relative c {
  \pieceSettings
  \cadenzaOn
  s4 s s
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