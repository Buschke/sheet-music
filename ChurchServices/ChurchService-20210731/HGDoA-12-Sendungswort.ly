\version "2.22.2"

\header {
  title = "HGDoA 12 - Sendungswort (Ton angeben)"
  subtitle = "Hauptgottesdienst ohne Feier des Heiligen Abendmahles"
  composer = "HGDoA"
  arranger = "Sven Buschke"
  opus = "HGDoA 12, EG 677.2"
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
    s4 s s s1
f4 g a f g( a) bes( a) g( f) f f  \bar "|"
f( g a) f g( a bes a) g( f) f f
  %\bar ";"
  %\bar "!"
  \bar "||"
}

strophe = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "L:"
 Ge -- het hin im Frie -- den des Herrn! _
   \set stanza = "G:"
Gott sei Lob und Dank! _
}

soprano = \relative c' {
  \global
  \cadenzaOn
  c4 d f \bar "|"
  f1 \bar "||"
f4 g a f g( a) bes( a) g( f) f2   \bar "|"
f4( g a) f g( a bes a) g( f) f2
}

alto = \relative c' {
  \global
  \cadenzaOn
  r4 bes2
  c1
  d2 c es d d c
  d2. c4 es2 f d c
}

tenor = \relative c {
  \global
  \cadenzaOn
  s4 s s s1
  s2. s4 s2 s s s
  a'2. a4 bes2( bes) bes a
}

bass = \relative c {
  \global
  \cadenzaOn
  r4 bes'2
  f1
  f2. f4 es2 bes bes f'
  d2. f4 es2 d bes f
}

pedal = \relative c {
  \global
  \cadenzaOn
  \repeat unfold 24 { s4 }
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