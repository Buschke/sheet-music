\version "2.22.2"
\language "deutsch"

\header {
  title = "Sinfonia 1"
  subtitle = "Inventionen und Sinfonien"
  composer = "Johann Sebastian Bach"
  opus = "BWV 787"
}

mKey = {\key c \major}
mTime = 4/4
mTempo = {\tempo 4 = 120}
preambleUp = {\clef treble \mKey \time \mTime \mTempo}
preambleDown = {\clef bass \mKey \time \mTime \mTempo}

sNotes = {
  r1 | r1 | % 1
  r1 | r1 | % 3
  r1 | r1 | % 5
  r1 | r1 | % 7
  r1 | r1 | % 9
  r1 | r1 | % 11
  r1 | r1 | % 13
  r1 | r1 | % 15
  r1 | r1 | % 17
  r1 | r1 | r1 | % 19
  \bar "|."
}
aNotes = {
  r1 | r1 | % 1
  r1 | r1 | % 3
  r1 | r1 | % 5
  r1 | r1 | % 7
  r1 | r1 | % 9
  r1 | r1 | % 11
  r1 | r1 | % 13
  r1 | r1 | % 15
  r1 | r1 | % 17
  r1 | r1 | r1 | % 19
  \bar "|."
}
bNotes = {
  c1 | r1 | % 1
  r1 | r1 | % 3
  r1 | r1 | % 5
  r1 | r1 | % 7
  r1 | r1 | % 9
  r1 | r1 | % 11
  r1 | r1 | % 13
  r1 | r1 | % 15
  r1 | r1 | % 17
  r1 | r1 | r1 | % 19
  \bar "|."
}



\score {
  \new PianoStaff <<
    %\set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \relative c' {\preambleUp
  <<
  \new Voice = "s" { \voiceOne \sNotes }
  \\
  \new Voice ="a" { \voiceTwo \aNotes }
  >>
}
    \new Staff = "lower" \relative c {\preambleDown
   \new Voice = "b" { \voiceThree \bNotes }
}
  >>
  \layout { }
}

\score {
  \new PianoStaff <<
   \new Staff = "upper" \relative c' {\preambleUp
  <<
  \new Voice { \voiceOne \sNotes }
  \\
  \new Voice { \voiceTwo \aNotes }
  >>
}
    \new Staff = "lower" \relative c {\preambleDown
    \new Voice { \voiceThree \bNotes }
}
  >>
  \midi { }
}