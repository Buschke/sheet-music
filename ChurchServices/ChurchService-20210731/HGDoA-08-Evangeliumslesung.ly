\version "2.22.2"

\header {
  title = "HGDoA 08 - Evangeliumslesung"
  subtitle = "Hauptgottesdienst ohne Feier des Heiligen Abendmahles"
  composer = "HGDoA"
  arranger = "Sven Buschke"
  opus = "HGDoA 08, EG 669.1"
  copyright = "© Sven Buschke, 5. Juli 2022"
  tagline = ""
}

global = {
  \key f \major
  \time 4/4
  \tempo 2 = 65
}

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

preambleUp = {\clef treble \global}
preambleDown = {\clef bass \global}
preamblePedal={\clef bass \global}

melody = \relative a' {\stemOff
  \global
  \cadenzaOn
  c,4 f g f bes a g g f f
  %\bar ";"
  %\bar "!"
  \bar "||"
}

strophe = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "G:"
  Lob sei dir, o Chri  -- _ _ _ ste! _
}

soprano = \relative c' {
  \global
  \cadenzaOn
  c4 f g f bes a g2 f2
  \bar "||"
}

alto = \relative c' {
  \global
  \cadenzaOn
  c4 d d2 d d f
}

tenor = \relative c {
  \global
  \cadenzaOn
  f4 a bes2 bes bes c
}

bass = \relative c {
  \global
  \cadenzaOn
  f4 d bes2 g bes f
}

pedal = \relative c {
  \global
  \cadenzaOn
  \repeat unfold 10 { s4 }
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
  \layout {     \context {
      \Staff
      \remove "Time_signature_engraver"
    }}
  \midi {}
}