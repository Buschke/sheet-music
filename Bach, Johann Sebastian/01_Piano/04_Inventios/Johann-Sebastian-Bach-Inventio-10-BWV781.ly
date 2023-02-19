\version "2.22.2"
\language "deutsch"

\header {
  title = "Inventio 10"
  subtitle = "G-Dur, Inventionen Sinfonien"
  composer = "Johann Sebastian Bach"
  opus = "BWV 781"
}

mKey = {\key g \major}
mTime = 9/8
mTempo = {\tempo 4. = 60}
preambleUp = {\clef treble \mKey \time \mTime \mTempo}
preambleDown = {\clef bass \mKey \time \mTime \mTempo}

upperNotes = {
  g8 h d h g d' h g g' | fis4\prall d8 a' fis d a' fis d | g d h f' d h f' d h |
  e c a fis a c e d c | d h g e g h d c h c a fis d fis a c h a
  h c d e h g' e h g' a, h cis d a fis' d a fis' g,4.~\mordent g8 a g fis g e
  fis g fis e fis d a' h c h\mordent c h a h g e' fis g cis,\mordent d cis h cis a g' a h
  a g fis e fis d h d cis d4.\mordent r r8 r4 a8 cis e cis a e' cis a g' fis4.\mordent d r
  g,8 h d h g d' h g f' e c a a' e c a h c d h g g' d h g a h 
  c2.~\prall c4.~ c2.~\prall c4. h2.~\prall h4.~ 
  h2.~\prall h4.~ h8 e d c d h a h g a c h a h g fis g e
  fis4\prall d8 a'4\mordent fis8 d'4\mordent fis,8 g h d h g d' h g g' d fis a fis d a' fis d c'
  h a g fis g a d, g fis g fis e d c h a h c h a g fis g a d, g fis g d h g4. r4. \fermata
  \bar "|."
}
lowerNotes = {
r4. r r d8 fis a fis d a' fis d c' h4\prall g8 d' h g d' h g 
c e c a c a fis g a h d h g h g e fis g a c a fis a fis d e fis
g4.~\mordent g8 fis e d e cis fis4.~\mordent fis8 e d cis d h e fis g a e cis' a e cis'
d4.~\mordent d8 d, e fis e d g4.~\mordent g8 e fis g\mordent fis e a4.~ a8 g fis e d cis
d e fis g a h a4 a,8 d fis a fis d a' fis d d' cis4.\prall a r d,8 fis a fis d a' fis d c'
h4.\prall g r c,~\mordent c8 d e fis, g a h4.~\mordent h8 c d e, fis g
a c e a e c a h c d fis a d a fis d e fis g h d g d h g a h
e, g h e h g e fis g c,2.~\prall c4.~ c2.~ c4.~
c8 d fis a fis d c h a h g h d h g d' h g fis d fis a fis d a' fis d
g a h a h c h c d e,4.~ e4 e'8 fis e d g4\mordent h,8 e d c d4\mordent d,8 g4.~ g8  h d g4. \fermata
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