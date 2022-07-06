\version "2.22.2"

\header {
  title = "HGDoA 04 - Salutatio"
  subtitle = "Hauptgottesdienst ohne Feier des Heiligen Abendmahles"
  composer = "HGDoA"
  arranger = "Sven Buschke"
  opus = "HGDoA 04"
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
  f4 f f d f
 \bar "|"
f f f d f
  %\bar ";"
  %\bar "!"
  \bar "||"
}

strophe = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "L:"
Der Herr sei mit euch!
  \set stanza = "G:"
Und mit dei -- nem Geist
}

soprano = \relative c' {
  \global
  \cadenzaOn
  f4 f f d f
 \bar "|"
f f f d f

  \bar "||"
}

alto = \relative c' {
  \global
  \cadenzaOn
  f4 f f d f
 \bar "|"
f f f d f

  \bar "||"
}

tenor = \relative c {
  \global
  \cadenzaOn
  f4 f f d f
 \bar "|"
f f f d f

  \bar "||"
}

bass = \relative c {
  \global
  \cadenzaOn
  f4 f f d f
 \bar "|"
f f f d f

  \bar "||"
}

pedal = \relative c {
  \global
  \cadenzaOn
  f4 f f d f
 \bar "|"
f f f d f

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