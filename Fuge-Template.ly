\version "2.22.2"
\language "deutsch"

\header {
  title = "Fuge XIV"
  subtitle = "Fis-Moll, Wohltemperiertes Klavier I"
  composer = "Johann Sebastian Bach"
  opus = "BWV 859"
}

mKey = {\key fis \minor}
mTime = 6/4
mTempo = {\tempo 4 = 120}
preambleUp = {\clef treble \mKey \time \mTime \mTempo}
preambleDown = {\clef bass \mKey \time \mTime \mTempo}

sNotes = {
  r1. | r |  r |  r |  r | % 1
  r | r | r |  r |  r |  % 6
  r | r | r |  r |  r |  % 11
  r | r | r |  r |  r |  % 16
  r | r | r |  r |  r |  % 21
  r | r | r |  r |  r |  % 26
  r | r | r |  r |  r |  % 31
  r | r | r |  r |  r |  % 36
  \bar "|."
}
aNotes = {
  r1. | r |  r |  r |  r | % 1
  r | r | r |  r |  r |  % 6
  r | r | r |  r |  r |  % 11
  r | r | r |  r |  r |  % 16
  r | r | r |  r |  r |  % 21
  r | r | r |  r |  r |  % 26
  r | r | r |  r |  r |  % 31
  r | r | r |  r |  r |  % 36
  \bar "|."
}
tNotes = {
  r1. | r |  r |  r |  r | % 1
  r | r | r |  r |  r |  % 6
  r | r | r |  r |  r |  % 11
  r | r | r |  r |  r |  % 16
  r | r | r |  r |  r |  % 21
  r | r | r |  r |  r |  % 26
  r | r | r |  r |  r |  % 31
  r | r | r |  r |  r |  % 36
  \bar "|."
}
bNotes = {
  r1. | r |  r |  r |  r | % 1
  r | r | r |  r |  r |  % 6
  r | r | r |  r |  r |  % 11
  r | r | r |  r |  r |  % 16
  r | r | r |  r |  r |  % 21
  r | r | r |  r |  r |  % 26
  r | r | r |  r |  r |  % 31
  r | r | r |  r |  r |  % 36
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
  <<
   \new Voice = "t" { \voiceThree \tNotes }
    \\
   \new Voice = "b" { \voiceFour \bNotes }
  >>
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
  <<
    \new Voice { \voiceThree \tNotes }
    \\
    \new Voice { \voiceFour \bNotes }
  >>
}
  >>
  \midi { }
}