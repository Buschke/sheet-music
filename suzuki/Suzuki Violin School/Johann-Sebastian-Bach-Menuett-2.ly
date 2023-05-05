\version "2.22.1"
\language "deutsch"

\header {
   title = "Menuett 2"
   composer = "Johann Sebastian Bach"
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {\clef "treble" \key g \major \time 3/4 \tempo 2. = 66 
      \relative c' {
        \repeat volta 2 { 
        d'( g,8 a h c d4-.) g,-. g-. 
        e'( c8 d e fis g4-.) g,-. g-. c( d8 c h a h4 c8 h a g 
        fis4 g8 a h g \acciaccatura h a2.)
        d4( g,8 a h c d4-.) g,-. g-. e'( c8 d e fis g4-.) g,-. g-. 
        c\( d8 c h a h4 c8 h a g a4 h8 a g fis g2.\)
        }
        \repeat volta 2 {
        h'4 g8 a h g a4 d,8 e fis d g4 e8 fis g d 
        cis4 h8 cis a4 a8 h cis d e fis g4 fis e fis a, cis d2. d4 g,8 fis g4 e'4 g,8 fis g4 d' c h a8 g fis g a4 d,8 e fis g a h c4 h a h8 d g,4 fis <h, d g>2. 
        
        }
        
      }
    }
    \new Staff = "left" {\clef "bass" \key g \major
      <<\relative c {
        <h' d>2.
      }
      \\
      \relative c {
        g'2 a4 h2. c h a g d'4 h g d' d,8 c' h a h2 a4 g h g c2. h4 c8 h a g
        a2 fis4 g2 h4 c d d, g2 g,4
        g'2. fis e4 g e a2 a,4 a'2. h4 d cis d fis, a d d, c'
        h2 h4 c2 c4
        h a g d'2r4 d,2. e4 g fis g h, d g d g,
      }
      >>
    }
  >>
 \layout {}
 \midi {}
}