\version "2.22.1"
\language "deutsch"

\header {
  title = "Menuett Nr. 1"
  subtitle = "plus Trio"
  composer = "W.A. Mozart"
  opus = "KV 1"
}

\score {
  \new PianoStaff <<
    \new Staff = "left" {
      \clef "treble" \key g \major \time 3/4 \tempo 4 = 120
      \repeat volta 1 {
        \relative {
          \partial 4
          h''8( g | h,4) c d | d( c) a'8( fis | a,4) h c c( h) h'8( g | e4) g8( e cis4) |
          e8( cis a g fis4) | \tuplet 3/2 { h8( a g } fis4) e | d2 
        }
      }
      \repeat volta 1 {\relative {\partial 4
                                  d''8(h | gis4) f' e | d( c) c8( a | fis4) e' d | c( h) e8( c | a4) c8( a fis4) | 
                                  d8( fis a c h4) | \tuplet 3/2 {e8( c a} g4) fis | g2
      }}
      \repeat volta 1 {\key c \major \relative {\partial 4
                                                c''8( g| e4) e d8( e) | e4( f) d'8( h | f4) f e8( d) | d4( e) e'16( d c h |
                                                a4) a' d,16( c h a | g4) g' d16( h a g | e'4 d) fis, | a( g)
      }}
      \repeat volta 1 {\relative {\partial 4
                                  g''8( e | cis) 8 4 d8( e) | e4( f) f8( d | h4) 4 c8( d) | 4( e) a16( g f e |
                                  d4) d' g,16( f e d | c4) c' g16( e d c | a'4 g) h, | d( c)
      }}
    }
    \new Staff = "right" {
      \clef "bass" \key g \major
      \relative {
        r | g a h | g( a) r | fis g a | a( g) r | g2 e4 | cis a d | g a a, | d d,}
      \relative {
        r | e d' c | h( a) a8( fis | d4) c' h | a( g) r | c2 a4 | fis d g | c d d, | g2
      }
      \key c \major
      <<
        \relative { s4 | g4 4 4 | g2 4 | 4 4 4 | g2 } 
        \\
        \relative { c8( e | c4) 4 h8( c) | c4( d) h8( d | h4) 4 4 | c2 }
      >>
      
      \relative {
        c'16( h a g | fis2) h16( a g fis | e2) h'4 | c d d, | g2
      }
      <<
        \relative { s4 | a4 4 4 | a2 4 | g4 4 4 | g2 } 
        \\
        \relative { e8( g | a4) g f8( e) | e4( d) d8( f | g4) f e8( d) | d4( c) }
      >>
      \relative { f'16( e d c | h2) e16( d c h | a2) e4 | f( g) g, | c2 }
    }
  >>
  \layout {}
  \midi {}
}