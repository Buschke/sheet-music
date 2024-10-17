\version "2.22.1"
\language "deutsch"

\header {
  title = "Minuet 3"
  subtitle = "Violin Part - Suzuki Violin School 1"
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

\score {
    \new Staff {\clef treble \global
      \violin
    }
  \layout {}
}
\score {
    \new Staff {\set Staff.midiInstrument = "string ensemble 1" \clef treble \global
      \violin
    }  \midi {}
}