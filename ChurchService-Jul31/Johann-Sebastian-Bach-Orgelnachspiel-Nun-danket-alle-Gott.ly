\header {
  title = "Orgelnachspiel - Nun danket alle Gott"
  subtitle = "Schübler Choral"
  composer = "Johann Sebastian Bach"
  arranger = "Sven Buschke"
  opus = "BWV 657"
  copyright = "Public Domain"
  tagline = ""
}

global = {
  \key g \major
  \time 3/2
  \tempo 2 = 65
}

preambleUp = {\clef treble \global}
preambleDown = {\clef bass \global}
preamblePedal={\clef bass \global}

soprano = \relative c' {
  \global
  \partial 2
  g'2 g fis4 e2 g4 a2 g g
  g a4 fis2 d4 g2 fis fis g g4 a2 b4
  a2 a b c b4 a2 g4 a2 g
}

alto = \relative c' {
  \global
  \partial 2
  g'2 g fis4 e2 g4 a2 g g
  g a4 fis2 d4 g2 fis fis g g4 a2 b4
  a2 a b c b4 a2 g4 a2 g
}

tenor = \relative c {
  \global
  \partial 2
  g'2 g fis4 e2 g4 a2 g g
  g a4 fis2 d4 g2 fis fis g g4 a2 b4
  a2 a b c b4 a2 g4 a2 g
}

bass = \relative c {
  \global
  \partial 2
  g'2 g fis4 e2 g4 a2 g g
  g a4 fis2 d4 g2 fis fis g g4 a2 b4
  a2 a b c b4 a2 g4 a2 g
}

pedal = \relative c {
  \global
  \partial 2
  g'2 g fis4 e2 g4 a2 g g
  g a4 fis2 d4 g2 fis fis g g4 a2 b4
  a2 a b c b4 a2 g4 a2 g
}


\score {
  <<
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
  \layout {
    %    \context {
    %     \Staff
    %    \remove "Time_signature_engraver"
    %     \remove "Bar_engraver"
    %   }
  }
  \midi {}
}