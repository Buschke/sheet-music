\version "2.22.2"

\header {
  title = "HGDoA 02 - Kyrie"
  subtitle = "Hauptgottesdienst ohne Feier des Heiligen Abendmahles"
  composer = "HGDoA"
  arranger = "Sven Buschke"
  opus = "HGDoA 02 / EG 178.2"
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
  s4 s s2 s1 \bar "||"
f4 c f g a g a f f \bar "|"
bes g a a g g \bar "|"
f g a bes a g f f  \bar "|"
g g c, d ees f f  \bar "|"
f f a bes c bes a bes c c \bar "|"
a c bes a g g f f
  %\bar ";"
  %\bar "!"
\bar "|."
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
Ky -- ri -- e _ e -- _ _ leis -- on, _
  \set stanza = "G:"
Herr, er -- barm dich ü -- ber uns. _
}

soprano = \relative c' {
  \global
  \cadenzaOn
  f4 c f2( f1)
  f4 c f\( g\) a\( g\) a f2
  bes4 g a a g2
  f4 g\( a\) bes\( a\) g f2
  g4 g c, d es f2
  f4 f a\( bes\) c\( bes a\) bes c2
  a4 c bes a g g f2
}

alto = \relative c' {
  \global
  \cadenzaOn
  s4 s4 s2 s1
  f1.( f2.)
  g2. f4 g2
  f2.( f2.) f2
  bes,4 d c( c1)
  f1( f2. f2.)
  f1( f4) e f4
}

tenor = \relative c {
  \global
  \cadenzaOn
  s4 s2 s4 c'1
  c1.( c2.)
  d1.
  d2. bes2 c2.
  g2. f4 g f2 c'1( c2.) d4 c2 c2 d4 c2( c2)
}

bass = \relative c {
  \global
  \cadenzaOn
  r4 c'2 bes4 f1
  f1.( f2.)
  g,4 bes d2 g
  d2. d2 f2.
  g,4 bes es d c f,2
  f'1( f2.)
  bes,4 f2
  f4 a bes f c'2 f,
}

pedal = \relative c {
  \global
  \cadenzaOn
  s4 s4 s2 s1
  \repeat unfold 9 {s4}
  \repeat unfold 8 {s4}
  \repeat unfold 7 {s4}
  \repeat unfold 9 {s4}
  \repeat unfold 9 {s4}
    \repeat unfold 6 {s4}
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