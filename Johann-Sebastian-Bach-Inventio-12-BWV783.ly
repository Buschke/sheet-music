\version "2.22.2"
\language "deutsch"

\header {
  title = "Inventio 12"
  subtitle = "A-Dur, Inventionen und Sinfonien"
  composer = "Johann Sebastian Bach"
  opus = "BWV 783"
}

mKey = {\key a \major}
mTime = 12/8
mTempo = {\tempo 4 = 120}
preambleUp = {\clef treble \mKey \time \mTime \mTempo}
preambleDown = {\clef bass \mKey \time \mTime \mTempo}

upperNotes = {
  a4\mordent a8 a4\mordent  a8 h2.~\upmordent | % 1
  h16 a h gis a h cis d cis d fis e d  cis a cis e a fis dis h dis fis a fis | gis a gis fis e dis cis dis e dis cis h a cis e cis a cis fis a cis a fis  | % 2
  r1. | r | % 4
  r1. | r | % 6
  r1. | r | % 8
  r1. | r | % 10
  r1. | r | % 12
  r1. | r | % 14
  r1. | r | % 16
  r1. | r | % 18
  r1. | a'8 e cis a16 d cis h e8~ e16\reverseturn fis cis8 h16\prall a a4.\fermata | % 20
  \bar "|."
}
lowerNotes = {
  a'16 h cis  h a gis fis gis  a gis fis e d fis a fis d fis h, d fis d h d | % 1
  r1. | r | % 2
  r1. | r | % 4
  r1. | r | % 6
  r1. | r | % 8
  r1. | r | % 10
  r1. | r | % 12
  r1. | r | % 14
  r1. | r | % 16
  r1. | r | % 18
  r1. | r | % 20
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