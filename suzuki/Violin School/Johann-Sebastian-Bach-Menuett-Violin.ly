\version "2.22.2"
\language "deutsch"

\header {
  title = "Menuett"
  subtitle = "Violin Part"
  composer = "Johann Sebastian Bach"
}

global = {
  \clef "treble" \key g \major \time 3/4 \tempo 2. = 66
}

music = \new Staff {
      \relative c' {\global
        \repeat volta 2 {
        d'-3( g,8-3 a-4 h-1 c-2 d4-.-3) g,-.-3 g-.-3
        e'-4( c8-2 d-3 e-4 fis-1 g4-.-2) g,-.-3 g-.-3 c-2( d8-3 c-2 h-1 a-4 h4-1 c8-2 h-1 a-4 g-3
        fis4-2 g8-3 a-4 h-1 g-3 \acciaccatura h-1 a2.-4)
        d4-3( g,8-3 a-4 h-1 c-2 d4-.-3) g,-.-3 g-.-3 e'-4( c8-2 d-3 e-4 fis-1 g4-.-2) g,-.-3 g-.-3
        c-2\( d8-3 c-2 h-1 a-4 h4-1 c8-2 h-1 a-4 g-3 a4-4 h8-1 a-4 g-3 fis-3 g2.-3\)
        }
        \repeat volta 2 {
        h'4 g8 a h g a4 d,8 e fis d g4 e8 fis g d
        cis4 h8 cis a4 a8 h cis d e fis g4 fis e fis a, cis d2. d4 g,8 fis g4 e'4 g,8 fis g4 d' c h a8 g fis g a4 d,8 e fis g a h c4 h a h8 d g,4 fis <h, d g>2.

        }
      }
}

\score {
  \music
  \layout {}
  \midi {}
}
