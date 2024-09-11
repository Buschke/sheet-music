\version "2.22.2"

\header {
  title = "HGDmA 09 - Dialog (Ton angeben)"
  subtitle = "Hauptgottesdienst mit Feier des Heiligen Abendmahles"
  composer = "HGDmA"
  arranger = "Sven Buschke"
  opus = "HGDmA 09"
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
  f4 g a f g a g g \bar "|"
  f g a f g a g \bar "|"
  a bes a g a g f \bar "|"
  a a bes a g a g f \bar "|"
  bes a a g a a a a g f g g \bar "|"
  bes a g a g g f
  %\bar ";"
  %\bar "!"
  \bar "||"
}

strophe = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "L:"
Der _ Herr sei _ mit euch. _
  \set stanza = "G:"
 und mit dei -- nem _ Gei -- ste.
    \set stanza = "L:"
Er -- he -- bet eu -- re Her -- zen.
  \set stanza = "G:"
Wir er -- he -- ben sie zum Herrn. _
  \set stanza = "L:"
  Las -- set uns dan _ -- ken dem Herrn, un -- serm Gott. _
    \set stanza = "G"
    Das ist wür -- dig und recht. _
}

soprano = \relative c' {
  \global
  \cadenzaOn
  r1 r  \bar "|"
  f4 g a f g a g \bar "|"
  r1 r2. \bar "|"
  a4 a bes a g a g f \bar "|"
  r1 r r \bar "|"
  bes4 a g a g g f
  \bar "||"
}

alto = \relative c' {
  \global
  \cadenzaOn
  r1 r \bar "|"
  f4 g a f g a g \bar "|"
  r1 r2. \bar "|"
  a4 a bes a g a g f \bar "|"
  r1 r r \bar "|"
  bes4 a g a g g f
  \bar "||"
}

tenor = \relative c {
  \global
  \cadenzaOn
  r1 r \bar "|"
  f4 g a f g a g \bar "|"
  r1 r2. \bar "|"
  a4 a bes a g a g f \bar "|"
  r1 r r  \bar "|"
  bes4 a g a g g f
  \bar "||"
}

bass = \relative c {
  \global
  \cadenzaOn
  r1 r \bar "|"
  f4 g a f g a g \bar "|"
  r1 r2. \bar "|"
  a4 a bes a g a g f \bar "|"
  r1 r r \bar "|"
  bes4 a g a g g f
  \bar "||"
}

pedal = \relative c {
  \global
  \cadenzaOn
  r1 r \bar "|"
  f4 g a f g a g \bar "|"
  r1 r2. \bar "|"
  a4 a bes a g a g f \bar "|"
  r1 r r \bar "|"
  bes4 a g a g g f
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