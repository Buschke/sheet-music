\version "2.22.2"

\header {
  title = "HGDmA 06 - Halleluja - mit Halleluja-Vers"
  subtitle = "Hauptgottesdienst mit Feier des Heiligen Abendmahles"
  composer = "HGDmA"
  arranger = "Sven Buschke"
  opus = "HGDmA 06"
  copyright = "© Sven Buschke, 5. Juli 2022"
  tagline = ""
}

global = {
  \key c \major
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
  a g f g a g \bar "'"
  a c a g f  \bar "'"
  g a a g g g
  %\bar ";"
  %\bar "!"
  \bar "||"
}

strophe = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "G:"
Hal -- le _ -- lu _ -- ja, Hal -- le -- lu _ -- ja, Hal _ -- le -- lu -- ja. _
}

soprano = \relative c' {
  \global
  \cadenzaOn
  a g f g a g \bar "'"
  a c a g f  \bar "'"
  g a a g g g
  \bar "||"
}

alto = \relative c' {
  \global
  \cadenzaOn
  a g f g a g \bar "'"
  a c a g f  \bar "'"
  g a a g g g
  \bar "||"
}

tenor = \relative c {
  \global
  \cadenzaOn
  a g f g a g \bar "'"
  a c a g f  \bar "'"
  g a a g g g
  \bar "||"
}

bass = \relative c {
  \global
  \cadenzaOn
  a g f g a g \bar "'"
  a c a g f  \bar "'"
  g a a g g g
  \bar "||"
}

pedal = \relative c {
  \global
  \cadenzaOn
  a g f g a g \bar "'"
  a c a g f  \bar "'"
  g a a g g g
  \bar "||"
}


\score {
  <<
    \new Voice = "m" << \preambleUp \melody >>
    \new Lyrics \lyricsto "m" \strophe
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