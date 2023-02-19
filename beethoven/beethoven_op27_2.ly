\version "2.22.2"
\language "deutsch"


\header {
  title = "Klaviersonate \"Mondschein\" "
  subtitle = "Nr. 14: Cis-Moll"
  composer = "Ludwig van Beethoven"
  opus = "Op. 27 Nr. 2"
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      \clef "treble" \key cis \minor \time 2/2
      \relative c' {
        \tuplet 3/2 {gis8-1\pp( cis-2 e-4)} \tuplet 3/2 {gis,8( cis e)} \tuplet 3/2 {gis,8( cis e)} \tuplet 3/2 {gis,8( cis e)}  | 
      }
    }
    \new Staff = "left" {
      \clef "bass" \key cis \minor
      \relative c {
        <cis cis,>1
      }
    }
  >>
}