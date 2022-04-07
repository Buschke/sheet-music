%\version "2.22.2"
%\language "deutsch"

\header {
  title = "WC 2 - Fuge 1"
  subtitle = "C-Dur, Wohltemperiertes Clavier 2"
  composer = "Johann Sebastian Bach"
  opus = "BWV 846"
  copyright = "Public Domain"
  tagline = ""
}

global = {
  \key c \major
  \time 4/4
  \tempo 4 = 120}


preambleUp = {\clef treble \global}
preambleDown = {\clef bass \global}

soprano = {
c
  \bar "|."
}
alto = {
g
  \bar "|."
}
tenor = {
e
  \bar "|."
}
bass = {
c
  \bar "|."
}



\score {
  \new PianoStaff <<
    %\set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \relative c' {\preambleUp
  <<
  \new Voice = "s" { \voiceOne \soprano }
  \\
  \new Voice ="a" { \voiceTwo \alto }
  >>
}
    \new Staff = "lower" \relative c {\preambleDown
  <<
   \new Voice = "t" { \voiceThree \tenor }
    \\
   \new Voice = "b" { \voiceFour \bass }
  >>
}
  >>
  \layout { }
}

\score {
  \new PianoStaff <<
   \new Staff = "upper" \relative c' {\preambleUp
  <<
  \new Voice { \voiceOne \soprano }
  \\
  \new Voice { \voiceTwo \alto }
  >>
}
    \new Staff = "lower" \relative c {\preambleDown
  <<
    \new Voice { \voiceThree \tenor }
    \\
    \new Voice { \voiceFour \bass }
  >>
}
  >>
  \midi { }
}