\version "2.22.2"

\header {
  title = "HGDmA 10 - Sanctus"
  subtitle = "Hauptgottesdienst mit Feier des Heiligen Abendmahles"
  composer = "HGDmA"
  arranger = "Sven Buschke"
  opus = "HGDmA 10"
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

melody = \relative a' {
  \stemOff
  \global
  \cadenzaOn
  c, e f g g a g \bar "|"
  g e f g f g \bar "|"
  g g c, f e d d c  \bar "|"
  e e d e e c d c  \bar "|"
  g' g a g a g a b c \bar "|"
  g f g c, f e d c c \bar "|"
  c' c a b g a b c c c a g a g \bar "|"
  g f g c, f e g e d c c
  %\bar ";"
  %\bar "!"
  \bar "||"
}

strophe = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "L:"
  Hei -- lig ist Gott der Va -- ter,
  hei -- lig ist Gott der Sohn,
  hei -- lig ist Gott der Heil -- ge Geist.
  Er ist der Her -- re Ze -- ba -- oth.
  Al  -- le Welt ist sei -- ner Eh -- ren voll.
  Ho -- si -- an -- na in der Hö -- he. _
  Ge -- lo -- bet sei, der da _ kommt im Na -- men des Her -- ren!
  Ho -- si -- an -- na in der Hö _ _ -- he! _
}

soprano = \relative c' {
  \global
  \cadenzaOn
  c, e f g g a g \bar "|"
  g e f g f g \bar "|"
  g g c, f e d d c  \bar "|"
  e e d e e c d c  \bar "|"
  g' g a g a g a b c \bar "|"
  g f g c, f e d c c \bar "|"
  c' c a b g a b c c c a g a g \bar "|"
  g f g c, f e g e d c c
  \bar "||"
}

alto = \relative c' {
  \global
  \cadenzaOn
  c, e f g g a g \bar "|"
  g e f g f g \bar "|"
  g g c, f e d d c  \bar "|"
  e e d e e c d c  \bar "|"
  g' g a g a g a b c \bar "|"
  g f g c, f e d c c \bar "|"
  c' c a b g a b c c c a g a g \bar "|"
  g f g c, f e g e d c c
  \bar "||"
}

tenor = \relative c {
  \global
  \cadenzaOn
  c, e f g g a g \bar "|"
  g e f g f g \bar "|"
  g g c, f e d d c  \bar "|"
  e e d e e c d c  \bar "|"
  g' g a g a g a b c \bar "|"
  g f g c, f e d c c \bar "|"
  c' c a b g a b c c c a g a g \bar "|"
  g f g c, f e g e d c c
  \bar "||"
}

bass = \relative c {
  \global
  \cadenzaOn
  c, e f g g a g \bar "|"
  g e f g f g \bar "|"
  g g c, f e d d c  \bar "|"
  e e d e e c d c  \bar "|"
  g' g a g a g a b c \bar "|"
  g f g c, f e d c c \bar "|"
  c' c a b g a b c c c a g a g \bar "|"
  g f g c, f e g e d c c
  \bar "||"
}

pedal = \relative c {
  \global
  \cadenzaOn
  c, e f g g a g \bar "|"
  g e f g f g \bar "|"
  g g c, f e d d c  \bar "|"
  e e d e e c d c  \bar "|"
  g' g a g a g a b c \bar "|"
  g f g c, f e d c c \bar "|"
  c' c a b g a b c c c a g a g \bar "|"
  g f g c, f e g e d c c
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