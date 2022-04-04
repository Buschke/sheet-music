\version "2.22.2"
\language "deutsch"

\header {
  title = "Inventio 8"
  subtitle = "Inventionen & Sinfonien"
  composer = "Johann Sebastian Bach"
  opus = "BWV 779"
}

mKey = {\key f \major}
mTime = 3/4
mTempo = {\tempo 4 = 116}
preambleUp = {\clef treble \mKey \time \mTime \mTempo}
preambleDown = {\clef bass \mKey \time \mTime \mTempo}

upperNotes = {
  r8 f a f c' f, | f' e16 d c d c b a b a g  | f8 a c a f' c | % 1
  a'16 c b c a c b c a c b c | f, a g a f a g a f a g a | d, f e f d f e f d f e f | % 4
  h,8 g d' h f' d | g16 a g f e f e d c d c b | a8 d16 c h c h a g a g f | % 7
  e f e d c8 c'16 h c8 e, | f c' e, c' d, h' | c4 r4 r | % 10
  r8 c e c g' c, | c' h16 a g a g f e f e d | c b c a' c, a' b, a' c, a' a, a' | % 13
  b,8 g b g d' g, | g' f16 es d es d c b c b a | g8 b d b g' d | % 16
  b' cis, b' cis, b' cis, | d a f' d a' f | g16 f g b c, b' d, b' e, b' c, b' | % 19
  f16 e f a h, a' cis, a' d, a' h, a' | e d e g a, g' h, g' cis, g' a, g' | f8 d b d g, f' | % 22
  e c a c f, es' | d16 f es f d f es f d f es f | b, d c d b d c d b d c d | % 25
  g, b a b g b a b g b a b | e,8 c g' e b' g | c16 d c b a b a g f g f es | % 28
  d8 g16 f e f e d c d c b | a b a g f8 f'16 e f8 a, | b f' a, f' g, e' | <a, c f>4 r4 r \fermata | % 31
  \bar "|."
}
lowerNotes = {
  r2. | r8 f a f c' f,  | f' e16 d c d c b a b a g | % 1
  f8 a c a f' c | \clef treble a'16 c b c a c b c a c b c | f, a g a f a g a f a g a | % 4
  d, f e f d f e f d f e f | \clef bass h,8 g c g e' c | f16 g f e d e d c h c h a | % 7
  g8 c16 h a h a g f g f e | d e d c g' f e f g8 g, | r8 c e c g' c, | % 10
  c' h16 a g a g f e f e d | c8 e g e c' g | es' fis, es' fis, es' fis, | % 13
  g f16 es d es d c b c b a | g8 g' b g d g | g' f16 es d es d c b c b a | % 16
  g f g e' g, e' f, e' g, e' e, e' | f, e f d' f, d' e, d' f, d' d, d' | b8 g e g c, e | % 19
  a f d f h, d | g e cis e a, cis | d,16 d' c d g, d' a d b d g, d' |  % 22
  c, c' b c f, c' g c a c f, c' | b8 d f d b' f | d'16 f es f d f es f d f es f | % 25
  b, d c d b d c d b d c d | g, b a b g b a b g b a b | e,8 c f c a' f | % 28
  b16 c b a g a g f e d e d | c8 f16 e d e d c b c b a | g a g f c' b a b c8 c, | f4 r4 r \fermata | % 31
  \bar "|." 
}


upper = \relative c' {
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