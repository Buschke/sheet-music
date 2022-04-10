\language "deutsch"

\header {
  title = "Opening"
  subtitle = "Glassworks"
  composer = "Philip Glass"
  opus = "op. 1"
  copyright = "Public domain"
  tagline = ""
}

global = {
  \key c \minor
  \time 4/4
  \tempo 4 = 92
}


right = \relative c' {\clef treble \global
 \repeat volta 4 {
   \tuplet 3/2 {f8\p as f} \tuplet 3/2 {as f as} \tuplet 3/2 {f as f} \tuplet 3/2 {as f as}
   \tuplet 3/2 {c\< f, c'} \tuplet 3/2 {f, c' f,} \tuplet 3/2 {c' f, c'} \tuplet 3/2 {f, c' f,}
   \tuplet 3/2 {g\f c g} \tuplet 3/2 {c g c} \tuplet 3/2 {g c g} \tuplet 3/2 {c g c}
 }
 \alternative {
   {\tuplet 3/2 {as\> c as} \tuplet 3/2 {c as c} \tuplet 3/2 {as c as} \tuplet 3/2 {c as c}}
   {\tuplet 3/2 {g\p\> c g} \tuplet 3/2 {c g c} \tuplet 3/2 {g c g} \tuplet 3/2 {c g c}}
 }
 \repeat volta 4 {
   \tuplet 3/2 {c,\pp\< f c} \tuplet 3/2 {f c f} \tuplet 3/2 {c f c} \tuplet 3/2 {f c f}
   \tuplet 3/2 {d\f f d} \tuplet 3/2 {f d f} \tuplet 3/2 {d f d} \tuplet 3/2 {f d f}
   \tuplet 3/2 {b, es b} \tuplet 3/2 {es b es} \tuplet 3/2 {b es b} \tuplet 3/2 {es b es}
 }
 \alternative {
   {\tuplet 3/2 {c\> es c} \tuplet 3/2 {es c es} \tuplet 3/2 {c es c} \tuplet 3/2 {es c es}}
   {\tuplet 3/2 {b\p es b} \tuplet 3/2 {es b es} \tuplet 3/2 {b es b} \tuplet 3/2 {es b es}}
 }
 \repeat volta 3 {
   \tuplet 3/2 {d' f, d'} \tuplet 3/2 {f, d' f,} \tuplet 3/2 {d' f, d'} \tuplet 3/2 {f, d' f,}
   \tuplet 3/2 {as d as} \tuplet 3/2 {d as d} \tuplet 3/2 {as d as} \tuplet 3/2 {d as d}
   \tuplet 3/2 {es as, es'} \tuplet 3/2 {as, es' as,} \tuplet 3/2 {es' as, es'} \tuplet 3/2 {as, es' as,}
 }
 \alternative {
   {\tuplet 3/2 {es' as, es'} \tuplet 3/2 {as, es' as,} \tuplet 3/2 {es' as, es'} \tuplet 3/2 {as, es' as,}}
   {\tuplet 3/2 {es' as, es'} \tuplet 3/2 {as, es' as,} \tuplet 3/2 {es' as, es'} \tuplet 3/2 {as, es' as,}}
 }
 \repeat volta 3 {
   \tuplet 3/2 {d g, d'} \tuplet 3/2 {g, d' g,} \tuplet 3/2 {d' g, d'} \tuplet 3/2 {g, d' g,}
   \tuplet 3/2 {d' g, d'} \tuplet 3/2 {g, d' g,} \tuplet 3/2 {d' g, d'} \tuplet 3/2 {g, d' g,}
   \tuplet 3/2 {d' as d} \tuplet 3/2 {as d as} \tuplet 3/2 {d as d} \tuplet 3/2 {as d as}
 }
 \alternative {
   {\tuplet 3/2 {d b d} \tuplet 3/2 {b d b} \tuplet 3/2 {d b d} \tuplet 3/2 {b d b}}
   {\tuplet 3/2 {d b d} \tuplet 3/2 {b d b} \tuplet 3/2 {d b d} \tuplet 3/2 {b d b~}}
 }
 b1
 \bar "|."
}

left = \relative c {\clef bass \global
 \repeat volta 4 {
   <<{
     \repeat unfold 4 {as'8 c}
     \repeat unfold 4 {as8 c}
     \repeat unfold 4 {g8 b}
     }
     \\
     {
     f1~\sustainOn
     f\sustainOff\sustainOn
     es\sustainOff\sustainOn
     }
   >>}
 \alternative {
   <<{
     \repeat unfold 4 {g8 b}
     \repeat unfold 4 {g8 b}
     }
     \\
     {
     des,1\sustainOff\sustainOn
     b\sustainOff\sustainOn
     }
   >>}
 \repeat volta 4 {
   << {
     \repeat unfold 4 {f'8 as}
     \repeat unfold 4 {f as}
     \repeat unfold 4 {es g}
      }
      \\
      {
     c,1\sustainOff\sustainOn
     b\sustainOff\sustainOn
     b\sustainOff\sustainOn
     }
   >> }
 \alternative {
   <<
     {
     \repeat unfold 4 {es8 g}
     \repeat unfold 4 {es g}
     }
     \\
     {
     g,1\sustainOff\sustainOn
     g\sustainOff\sustainOn
     }
   >>}
 \repeat volta 3 {
   <<
     {
     \repeat unfold 4 {b'8 d}
     \repeat unfold 4 {b d}
     \repeat unfold 4 {c es}
     }
     \\
     {
     f,1~\sustainOff\sustainOn
     f\sustainOff\sustainOn
     as\sustainOff\sustainOn
     }
 >>}
 \alternative {
   <<{
     \repeat unfold 4 {c8 es}
     \repeat unfold 4 {c es}
     }
     \\
     {
     b1\sustainOff\sustainOn
     b2 as\sustainOff\sustainOn
     }
   >>}
 \repeat volta 3 {
   <<
     {
     \repeat unfold 4 {b8 d}
     \repeat unfold 4 {b d}
     \repeat unfold 4 {b d}
     }
     \\
     {
     g,1~\sustainOff\sustainOn
     g\sustainOff\sustainOn
     f\sustainOff\sustainOn
     }
   >>}
 \alternative {
   <<
     {
     \repeat unfold 4 {b8 d}
     \repeat unfold 4 {b d~}
     }
     \\
     {
     f,1\sustainOff\sustainOn
     f~\sustainOff\sustainOn
     }
   >>}
 {<<
   {
   d'
   }
   \\
   {
   f,\sustainOff
   }
   >>}
 \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" {
      \right
    }
    \new Staff = "lower" {
      \left
    }
  >>
  \layout {}
}

\score {
  \unfold
  \new PianoStaff <<
    \new Staff = "upper" {
      \right
    }
    \new Staff = "lower" {
      \left
    }
  >>
  \midi {}
}