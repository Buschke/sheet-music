\version "2.22.2"

\header {
  title = "HGDmA 13 - Segen"
  subtitle = "Hauptgottesdienst mit Feier des Heiligen Abendmahles"
  composer = "HGDmA"
  arranger = "Sven Buschke"
  opus = "HGDmA 13"
  copyright = "© Sven Buschke, 5. Juli 2022"
  tagline = ""
}

global = {
  \key bes \major
  \time 4/4
  \tempo 2 = 65
}

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

preambleUp = {\clef treble \global}
preambleDown = {\clef bass \global}
preamblePedal={\clef bass \global}

melody = \relative a' {
  \stemOff
  \global
  \cadenzaOn
d, f bes g f f d d
  %\bar ";"
  %\bar "!"
  \bar "||"
}

strophe = \lyricmode {
  \set fontSize = #-.5

   \set stanza = "G:"
A -- men,
A -- men,
A -- _ men _
}

soprano = \relative c' {
  \global
  \cadenzaOn
d, f bes g f f d d
  \bar "||"
}

alto = \relative c' {
  \global
  \cadenzaOn
d, f bes g f f d d
  \bar "||"
}

tenor = \relative c {
  \global
  \cadenzaOn
d, f bes g f f d d
  \bar "||"
}

bass = \relative c {
  \global
  \cadenzaOn
d, f bes g f f d d
  \bar "||"
}

pedal = \relative c {
  \global
  \cadenzaOn
d, f bes g f f d d
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