\version "2.22.2"
\language "deutsch"

\header {
  title = "Inventio"
  subtitle = ""
  composer = "Johann Sebastian Bach"
  opus = "BWV 1"
}

mKey = {\key f \major}
mTime = 4/4
mTempo = {\tempo 4 = 120}
preambleUp = {\clef treble \mKey \time \mTime \mTempo}
preambleDown = {\clef bass \mKey \time \mTime \mTempo}

upperNotes = {
  a4 b c d
}
lowerNotes = {
  a2 c
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