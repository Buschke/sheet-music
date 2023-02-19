\version "2.22.1"
\language "deutsch"

\header {
  title = "Fuga IX"
  subtitle = "Wohltemperiertes Klavier II"
  composer = "Johann Sebastian Bach"
  opus = "BWV 878"
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {\clef "treble" \key e \major \time 2/1 \tempo 2 = 60
      <<
        \relative c' {
      r1
      }
      \\
      \relative c' {
      r1
      }
      >>
    }
    \new Staff = "left" {\clef "bass" \key e \major 
      <<
        \relative c {
      
      }
      \\
      \relative c {
      e1 fis2 a gis fis e4 dis8 cis dis4 h e fis gis ais h8 fis h2 a4~ a gis8 fis gis2~ gis= fis= gis= a=4 h8 a gis4 fis e dis
      cis1 h2 fis gis2. e4 a2. fis4 h1 d' g <h d> g <h d g> <a fis' g> g g d' <g, a h c> <g d'> g e' <c d e fis> g'~ h2
      
      }
      >>
    }
  >>
  
  \layout {}
  \midi {}
}