\version "2.22.2"
\language "deutsch"

\header {
  title = "Fuge I"
  subtitle = "C-Dur, Wohltemperiertes Klavier I"
  composer = "Johann Sebastian Bach"
  opus = "BWV 859"
}

mKey = {\key c \major}
mTime = 4/4
mTempo = {\tempo 8 = 116}
preambleUp = {\clef treble \mKey \time \mTime \mTempo}
preambleDown = {\clef bass \mKey \time \mTime \mTempo}

sNotes = {
  
  \bar "|."
}
aNotes = {
  r8 c8 d e f8. g32 f e8 a d, g g16 a g f e f e d c d c h a8 fis' g4 g8 fis16 e fis8 d % 1
  g f e d c r r g'~ g f16 e f4~ f16 f e8 d4 c8 f r16 g f e f8 d g4~ % 4
  g r r2 r1 r8 g a h c8. d32 c h8 e % 7
  a, d~ d16 e d c h8 r r d, e fis g8. a32 g fis8 d' e, a~ a16 h a gis fis8 f e d~ d16 e fis gis % 10
  a gis a h gis fis gis a h8 r r4 r8 c, d e f8. g32 f e8 a d, g~ g16 a g f e8 e fis g~ % 13
  g fis gis a a g a h c8. d32 c h8 e a, d~ d16 e d c h8 g' cis, d e cis d e % 16
  a, r r e fis g a8. h32 a g8 c fis, h~ h16 c h a r4 e4 d~ d16 a' g f e g f a % 19
  g4~ g16 a b8 c4 d8 g, g4. f8~ f e d4 e8 a4 g8~ g f g a % 22
  b8. c32 b a8 d g, c~ c16 d c b a b a g f g f e d4~ d8. g16 a4 r16 f'16 d8 <e g>2 \fermata %25 
  \bar "|."
}
tNotes = {
  
  \bar "|."
}
bNotes = {
  r1 r r % 1
  r r2 r8 c d e f8. g32 f e8 a d, g g16 a g f
  e f e d c d c h a8 d a' fis g16 a b g cis,8 d a'4 e a16 h c d c h a g c8 r r4
  r2 r8 g, a h c8. d32 c h8 e a, d d16 e d c h8 e4 d8 c f4 e8
  r2 r8 g, a h c8. d32 c h8 e a, d d16 e d c h8 e4 d8 c f4 e8
  e d4 e8 f e16 d e4 a, r r2 r8 g a h c8. d32 c h8 e
  a, d d16 e d c h8 ais a g a fis' g e d4 e8 f g8. a32 g f8 ais e a a16 ais a g
  f e f d g8 a d,2 d16 e d c h8 a g fis e
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