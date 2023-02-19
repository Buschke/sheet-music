\language "deutsch"

\header {
  title = "Fuga 4 voci"
  subtitle = "Wohltemperiertes Klavier I"
  composer = "Johann Sebastian Bach"
  opus = "BWV 846"
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {\clef "treble" \key c \major \time 4/4
      <<
        \relative c' {r1 | r2 r8 g'-1 a h | c8.-4 d32-5 c h8 e a, d~ d16 e d c | h g a h c h c d e d e fis g8 h, | c a d16 c h a g8.\f g16 f e f g | a g a h c2 h4 | r8 c d e f g16 f e8 a, | d g~ g16 a g f e8 a~ a16 h a g |
        f2 e8 fis g4~ | 4 fis g16 f e d c d c h | a c h a g8 r r16 c h a gis 8 e' | d c16 h a gis a h c fis, gis a h8 a16 h | c8 f e d~ d c16 h h8. a16 | 4 r r2 | r2 r8 g a h | c d16 c h8 c d e f g16 f |
        e8 a d, g~ g16 a g f e8 a | d, b' a g16 f g f g e f g g f32 g a16 cis, d g e8. d16 d8 r r4 | r2 r 4 r8 g, | a h c d16 c h8 e a, d~ | d16 e d c h c d e f g a g f e d  c | h4 c8 d g, c4 h8 | c4 h8 b a d4 c8 | 
        d e f4~ f16 a g f e f e d | c2 r16 g32 a h16 c d e f8~ | f32 c d e f16 g a8. h16 c2 \bar "|." 
        }
        \\
       \relative {r8 c'-5\p d e f8.-2  g32 f e8 a | d, g~-2 g16 a g f e-4 f e d c-4 d c h | a8-5 fis' g4~ g8 fis16 e fis8 d | g f  e d c r r g'~ | g f16 e f4~ f16 f e8 d4 | c8 f r16 g f e f8 d g4~ |
       g r r2 | r1 | r8 g a h c8. d32 c h8 e | a, d~ d16 e d c h8 r r d, | e fis g8. a32 g fis8 h e, a~ | a16 h a gis fis8 f e d~ d16 e fis gis | a gis a h gis fis gis a h8 r r4 | r8 c, d e f g16 f e8 a | 
        d, g~ g16 a g f e8 e fis g~ | g fis gis a~ a g a h | c d16 c h8 e a, d~ d16 e d c | h8 g' cis, d e cis d e | a, r r e fis g a h16 a | g8 c fis, h~ h16 c h a g fis e d | e4 d~ d16 a' g f e g f a |
        g4~ g16 a b8 c4 d8 g, | g4. f8~ f e d4 | e8 a4 g8~ g f g a | b c16 b a8 d g, c~ c16 d c d a b a g f g f e d4~ d8. g16 | a4 r16 f' d8 <e g>2  }
      >>
    }
    \new Staff = "left" {\clef "bass" \key c \major \time 4/4
      <<
        \relative {r1 | r1 | r1 | r8 g a h c8. d32 c h8 e | a, d~ d16 e d c h8 c~ c b-1 | a-2 d g, c r16 a h c d4 | g, r8 g a h c d16 c | h8 e a, d~ d16 c d a h8 e~ | e4 d c16 h c d e d c h | 
        a g h c d c h a g4 r | r1 | r8 e fis gis a h16 a g8 c | fis, h~ h16 c h a gis8 a4 gis 8 | a4 r8 g a h c d16 c | h8 e a, d~ d g, d'4 | c8 a e'4 d8 r r4 | r8 a h cis d e16 d c8 f |
        g e~ e16 f e d cis8 r r4 | r8 a h cis d e16 d c8 fis | h, e~ e16 fis e d c2~ | c16 d c h a g a fis g8 h c d | e8. f32 e d8 g c, f~ f16 e d c | d4 e8 d~ 8 g, g4~ | g8 c, d e f8. g32f e8 a| d, g~ g16 a g f e d e f g a b g | a e f g a  h c a h2 | c1
        }
        \\
        \relative {r1 | r1 | r1 | r1 | r2 r8 c-5\f d-4 e-3 | f8.-4 g32 f e8 a d, g~ g16 a g f | e f e d c d c h a8 d a' fis | g16 a b g cis8 d a4 e | a16 h c d c h a g c8 r r4 |  r2 r8 g, a h c d16 c h8 e a, d~ d16 e d c | 
        d8 e4 d8 c f4 e8~ | e d4 e8 f e16 d e4 | a, r r2 | r8 g a h c d16 c h8 e | a, d~ d16 e d c h8 b a g | a fis' g e d4 e8 f | g a16 g f8 b e, a~ a16 h a g | f e f d g8 a d,2~ |  d16 e d c h a g fis e8 e' fis g~ |
        g a16 g fis 8 d g2~ | 2 a4 h8 c | d,16 a' g f e d c h c d e f g8 g, | c1~ | c1~ | c1~ | c
        }
      >>
    }
  >>
  
  \layout {}
  \midi {}
}