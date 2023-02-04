\version "2.22.2"
\language "deutsch"

\header {
  title = "Wohltemperierte Klavier II"
  subtitle = "Nr. 22: B-Moll"
  composer = "Johann Sebastian Bach"
  opus = "BWV 891"
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      \clef "treble" \key b \minor \time 3/2
      <<
        \relative c' {
          r1. | r1. | r1. | r1. |  | f2-1 g r4 as |

        }
        \\
        \relative c' {
          b2 c r4 des | es a, b2 r4 c-3 | des8 b c des es c des es f des es f | ges es f4 r ges c,-4 des8 es | des4 a b h c2 |
        }
      >>
    }
    \new Staff = "left" {
      \clef "bass" \key b \minor
      <<
        \relative c' {
          r1. | r1. | r1. | r1. | r1. |
        }
        \\
        \relative c' {
          r1. | r1. | r1. | r1. | r1. |
        }
      >>
    }
  >>
  \layout {}
  \midi {}
}