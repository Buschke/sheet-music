\version "2.22.2"
\language "deutsch"

\header {
  title = "Inventio 13"
  subtitle = "A-Moll, Inventionen Sinfonien"
  composer = "Johann Sebastian Bach"
  opus = "BWV 784"
}

mKey = {\key a \minor}
mTime = 4/4
mTempo = {\tempo 4 = 120}
preambleUp = {\clef treble \mKey \time \mTime \mTempo}
preambleDown = {\clef bass \mKey \time \mTime \mTempo}

upperNotes = {
  r1 | r1 | % 1
  r1 | r1 | % 3
  r1 | r1 | % 5
  r1 | r1 | % 7
  r1 | r1 | % 9
  r1 | r1 | r1 | % 11
  r1 | r1 | % 14
  r1 | r1 | % 16
  r1 | r1 | % 18
  r1 | r1 | % 20
  r1 | r1 | % 22
  r1 | r1 | % 24
  \bar "|."
}
lowerNotes = {
  r1 | r1 | % 1
  r1 | r1 | % 3
  r1 | r1 | % 5
  r1 | r1 | % 7
  r1 | r1 | % 9
  r1 | r1 | r1 | % 11
  r1 | r1 | % 14
  r1 | r1 | % 16
  r1 | r1 | % 18
  r1 | r1 | % 20
  r1 | r1 | % 22
  r1 | r1 | % 24
  \bar "|."
}


upper = \relative c'' {
  \preambleUp
 
 \upperNotes
}

lower = \relative c {
  \preambleDown

  \lowerNotes
}

\score {
  \new PianoStaff <<
    %\set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \midi { }
}