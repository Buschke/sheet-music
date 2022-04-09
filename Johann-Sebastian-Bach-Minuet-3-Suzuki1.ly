\version "2.22.1"
\language "deutsch"

\header {
  title = "Minuet 3"
  subtitle = "Suzuki Violin School 1"
  composer = "Johann Sebastian Bach"
  tagline = ""
  copyright = "Public Domain"
}

global = {
  \key g \major
  \time 3/4
  \tempo 2. = 66
}

violin = \relative c' {
  \repeat volta 1 {
  d'4\downbow\mf g,8( a) h c | d4 g,-.( g-.) | e' c8( d) e fis | g4-. g,-.( g-.) | c d8( c) h a | h4 c8( h) a g |
  fis4 g8( a) h g | \grace h( a2.) | d4--\downbow g,8( a) h c | d4 g,-.( g-.) | e' c8( d) e fis | g4 g,-.( g-.) |
  c d8( c) h a | h4 c8( h) a g | a4 h8( a) g fis | g2. |
  }
  \repeat volta 1 {
    h'4\f\downbow g8( a) h g | a4 d,8( e) fis d |
    g4 e8( fis) g d | cis4 d8 cis a4 | a8( h) cis d e fis | g4 fis e | fis a,-.( cis-.) | d2.\> | d4\p\downbow g,8 fis g4 |
    e'4 g,8 fis g4 | d' c-.( h-.) | a8( g) fis g a4 | d,8\<( e) fis g a h | c4\f h a | h8( d) g,4(\>-. fis-.) | g2.\mf
  }
}

upper = \relative c' {
  \repeat volta 1 {
  d'4-5(\p g,8 a h c | d4) g,-. g-. | e'-3( c8 d e fis | g4-.) g,-. g-. | c-4\( d8 c h a | h4 c8 h a g |
  fis4-2 g8-1 a h g | \grace h( a2.)\) | d4-5( g,8 a h c | d4-.) g,-. g-. | e'-3( c8 d e fis | g4-.) g,-. g-. |
  c-4( d8 c h a | h4 c8 h a g | a4 h8 a g fis-2 | g2.-1) |
  }
  \repeat volta 1 {
    h'4\mf( g8 a h g | a4-4 d,8-1 e fis d |
    g4-4 e8 fis g d-1 | cis4-3\> d8 cis a4) | a8-1\p\<( h cis-3 d-1 e fis | g4-4\mf) fis e | fis a,-1-. cis-3-. | d2.-4\> | d4-5\p( g,8-1 fis-2 g4-1) |
    e'4( g,8 fis g4) | d'-5( c h | a8 g-1 fis-2 g-3 a4) | d,8-1\<( e-3 fis g-1 a h | c4\mf-.) h-. a-. | h8( d g,4-1)\>-. fis-.-2 | <h, d g >2.\mp
  }
}

lower = \relative c {
  \repeat volta 1{
  <<
    {
      <h' d>2.
    }
    {
      g2 a4
    }
  >> |
  h2. | c | h | a | g |
  d'4-1 h-3 g-5 | d' d,8-5 c'-1 h a | h2 a4 | g-4 h g | c2.-1 | h4-2 c8 h a g-4 |
  a2-1 fis4-3 | g2-2 h4-1 | c-2 d d, | g2-1 g,4
  }
  \repeat volta 1 {
    g'2.-1 | fis | e4-3 g e | a2-1 a,4-5 | a'2. | h4-3 d-1 cis | d fis,-.-4 a-.-2 | d-1( d,-5 c'-1) |
    <<
      {
        r4 d2-1 | r4 e2-1 |
      }
      \\
      {
        h2-3 h4 | c2-2 c4 |
      }
    >>
  h-3 a g | d'2 r4 |
  <<
    {
      r4 r fis,-3
    }
    \\
    {
      d2.
    }
  >>
  e4-. g-. fis-. | g-1( g,-.) d'-. | g-. d-.-2 g,-.
  }
}

\score {
  <<
    \new Staff {\clef treble \global
      \violin
    }
    \new PianoStaff <<
      \new Staff {\clef treble \global
        \upper
      }
      \new Staff {\clef bass \global
        \lower
      }
    >>
  >>
  \layout {}
}
\score {
  <<
    \new Staff {\clef treble \global
      \violin
    }
    \new PianoStaff <<
      \new Staff {\clef treble \global
        \violin
      }
      \new Staff {\clef bass \global
        \lower
      }
    >>
  >>
  \midi {}
}