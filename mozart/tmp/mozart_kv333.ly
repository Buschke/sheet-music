\version "2.22.2"
\language"deutsch"

\header {
  title = "Klaviersonate"
  subtitle = "Nr. 13, B-Dur"
  composer = "Wolfgang Amadeus Mozart"
  opus = "KV 333"
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {\clef "treble" \key b \major \time 4/4
      \relative c' {\partial 4
      f'8 e16 d |  
      }
    }
    \new Staff = "left" {\clef "bass" \key b \major
      \relative c {
      r4
      }
    }
  >>
  \layout {}
  \midi {}
}