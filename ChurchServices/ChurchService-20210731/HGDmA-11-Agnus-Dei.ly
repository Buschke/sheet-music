\version "2.22.2"

\header {
  title = "HGDmA 11 - Agnus Dei"
  subtitle = "Hauptgottesdienst mit Feier des Heiligen Abendmahles"
  composer = "HGDmA"
  arranger = "Sven Buschke"
  opus = "HGDmA 11"
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

melody = \relative a' {
  \stemOff
  \global
  \cadenzaOn
  f4 g a a bes bes a \bar "'"
  a g a bes c c bes a \bar "'"
  a g f a a g \bar "'"
  f g a a bes bes a \bar "'"
  a g a bes c c bes a \bar "'"
  a g f a a g \bar "'"
  f g a a bes bes a \bar "'"
  a g a bes c c bes a \bar "'"
  a a g f a a g g \bar "'"
  f g a bes bes a g f g g
  %\bar ";"
  %\bar "!"
  \bar "||"
}

strophe = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "G:"
  Chri -- ste, du Lamm Got -- _ tes,
  der du trägst die Sünd _ der Welt,
  er -- barm dich un -- _ ser,
  Chri -- ste, du Lamm Got -- _ tes,
  der du trägst die Sünd _ der Welt,
  er -- barm dich un -- _ ser,
  Chri -- ste, du Lamm Got -- _ tes,
  der du trägst die Sünd _ der Welt,
  gib uns dei -- nen Frie -- _ den. _
  A -- _ _ _ _ _ _ _ men. _
}

soprano = \relative c' {
  \global
  \cadenzaOn
  f4 g a a bes bes a \bar "'"
  a g a bes c c bes a \bar "'"
  a g f a a g \bar "'"
  f g a a bes bes a \bar "'"
  a g a bes c c bes a \bar "'"
  a g f a a g \bar "'"
  f g a a bes bes a \bar "'"
  a g a bes c c bes a \bar "'"
  a a g f a a g g \bar "'"
  f g a bes bes a g f g g
  \bar "||"
}

alto = \relative c' {
  \global
  \cadenzaOn
  f4 g a a bes bes a \bar "'"
  a g a bes c c bes a \bar "'"
  a g f a a g \bar "'"
  f g a a bes bes a \bar "'"
  a g a bes c c bes a \bar "'"
  a g f a a g \bar "'"
  f g a a bes bes a \bar "'"
  a g a bes c c bes a \bar "'"
  a a g f a a g g \bar "'"
  f g a bes bes a g f g g
  \bar "||"
}

tenor = \relative c {
  \global
  \cadenzaOn
  f4 g a a bes bes a \bar "'"
  a g a bes c c bes a \bar "'"
  a g f a a g \bar "'"
  f g a a bes bes a \bar "'"
  a g a bes c c bes a \bar "'"
  a g f a a g \bar "'"
  f g a a bes bes a \bar "'"
  a g a bes c c bes a \bar "'"
  a a g f a a g g \bar "'"
  f g a bes bes a g f g g
  \bar "||"
}

bass = \relative c {
  \global
  \cadenzaOn
  f4 g a a bes bes a \bar "'"
  a g a bes c c bes a \bar "'"
  a g f a a g \bar "'"
  f g a a bes bes a \bar "'"
  a g a bes c c bes a \bar "'"
  a g f a a g \bar "'"
  f g a a bes bes a \bar "'"
  a g a bes c c bes a \bar "'"
  a a g f a a g g \bar "'"
  f g a bes bes a g f g g
  \bar "||"
}

pedal = \relative c {
  \global
  \cadenzaOn
  f4 g a a bes bes a \bar "'"
  a g a bes c c bes a \bar "'"
  a g f a a g \bar "'"
  f g a a bes bes a \bar "'"
  a g a bes c c bes a \bar "'"
  a g f a a g \bar "'"
  f g a a bes bes a \bar "'"
  a g a bes c c bes a \bar "'"
  a a g f a a g g \bar "'"
  f g a bes bes a g f g g
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