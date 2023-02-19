\language "deutsch"

\header {
  title = "Inventio Nr. 8 "
  composer = "Johann Sebastian Bach"
  opus = "BWV 779"
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      \clef "treble" \key f \major \time 3/4 \tempo 4 = 132
      \relative c' {
        r8\mf f-. a-.-2 f-. c'-.-3 f,-. f'->-. e16 d c d-4 c b a b-4 a g f8 a-2 c\< a f' c-1 a'16->\f-2 c b c a c b c a c b c f,->-1 a-4 g a f-2 a g\dim a f a g a d,->-1 f-4 e f d-2 f e f d f e f h,8-.\mf-1 g-.-2 d'-. h-. f'-. d-. g16\cresc a g f e f e d c d c b a8 d16 c h c h a g a g f e f e d c8 c'16 h c8 e, f\f c' e, c' d, h' c4 r\mf r
        r8 c e c g' c, c' h16 a g\> a g f e f e d c\p b c a' c, a' b, a' c, a' a, a'
        b,8 g h g d' g, g' f16 es d es d c b c b a g8 b d b g' d b' des, b' des, b' des, d a f' d a' f g16 f g b c, b' d, b' e, b' c, b' f e f a h, a' cis, a' d, a' h, a' e d e g a, g' h, g' des g a, f'8 g d b d g, f' e c a c f, es'
        d16 f es f d f es f d f es f b, d c d b d c d b d c d g, b a b g b a b g b a b e,8 c g' e b' g c16 d c b a b a g f g f es d8 g16 f e f e d c d c b a b a g f8 f'16 e f8 a b f' a, f' g, e' <a, c f>4 r r
      } 
    }
    \new Staff = "left" {
      \clef "bass" \key f \major

      \relative c {
        r2. r8 f-. a-.-4 f-. c'-. f,-. f'->-. e16 d c d c b a b a g f8-. a-. c-. a-. f'-. c-. \clef "treble" a'16-> c b c a c b c a c b c f, a g a f a g a f a g a d, f e f d f e f d f e f 
        \clef "bass" h,8-. g-. c-. g-. e'-. c-. f16 g f e d e d c h c h a g8 c16 h a h a g f g f e d e d c g' f e f g8 g,r c-. e-. c-. g'-. c,-. c'->-. h16 a g a g f e f e d c8-. e-. g-. e-. c'-. g-. es'->-. fis, es' fis, es' fis,
          g f16 es d es d c b c b a g8 g' b g d' g, g' f16 es d es d c b c b a g f g e' g, e' f, e' g, e' e, e' f, e f d' f, d' e, d' f, d' d, d' b8 g e g c e a, f d f h, d g e cis e a, cis d,16 d' c d g, d' a d b d g, d' c, c' b c f, c' g c a c f, c' b8 d f d b' f d'16 f es f d f es f d f es f b, d c d b d c d b d c d g, b a b g b a b g b a b e,8 c f c a' f b16 c b a g a g f e f e d c8 f16 e d e d c b c b a g a g f c' b a b c8 c, f4r r \bar "|."     

      }

    }
  >>

  \layout {}
  \midi {}
}