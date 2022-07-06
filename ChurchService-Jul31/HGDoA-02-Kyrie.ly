\version "2.22.2"

\header {
  title = "HGDoA 02 - Kyrie"
  subtitle = "Hauptgottesdienst ohne Feier des Heiligen Abendmahles"
  composer = "HGDoA"
  arranger = "Sven Buschke"
  opus = "HGDoA 02"
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

melody = \relative a' {\stemOff
  \global
  \cadenzaOn
f4 c f g a g a f f \bar "|"
bes g a a g g \bar "|"
f g a bes a g f f  \bar "|"
g g c, d ees f f  \bar "|"
f f g a bes c bes a g bes c c  \bar "|"
a c bes a g g f f
  %\bar ";"
  %\bar "!"
  \bar "||"
}

strophe = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "K / Ch:"
Ky -- ri -- e _ e _ -- lei --son, _
  \set stanza = "G:"
Herr, er -- bar -- me dich, _
  \set stanza = "K / Ch:"
Chri -- ste _ e _ -- lei -- son, _
  \set stanza = "G:"
Chri -- ste, er -- bar -- me dich, _
  \set stanza = "K / Ch:"
Ky -- ri -- e _ e _ _ -- leis -- on, _
  \set stanza = "G:"
Herr, er -- barm dich ü -- ber uns. _
}

soprano = \relative c' {
  \global
  \cadenzaOn
f4 c f g a g a f f
bes g a a g g
f g a bes a g f f
g g c, d es f f f f g a bes c bes a g bes c c
a c bes a g g f f
  \bar "||"
}

alto = \relative c' {
  \global
  \cadenzaOn
f4 c f g a g a f f
bes g a a g g
f g a bes a g f f
g g c, d es f f f f g a bes c bes a g bes c c
a c bes a g g f f
  \bar "||"
}

tenor = \relative c {
  \global
  \cadenzaOn
f4 c f g a g a f f
bes g a a g g
f g a bes a g f f
g g c, d es f f f f g a bes c bes a g bes c c
a c bes a g g f f
  \bar "||"
}

bass = \relative c {
  \global
  \cadenzaOn
f4 c f g a g a f f
bes g a a g g
f g a bes a g f f
g g c, d es f f f f g a bes c bes a g bes c c
a c bes a g g f f
  \bar "||"
}

pedal = \relative c {
  \global
  \cadenzaOn
f4 c f g a g a f f
bes g a a g g
f g a bes a g f f
g g c, d es f f f f g a bes c bes a g bes c c
a c bes a g g f f
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