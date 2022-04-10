\version "2.22.1"
\language "deutsch"

\header {
  title = "Étude Ocean"
  subtitle = "c-Moll"
  composer = "Frédéric Chopin"
  opus = "op. 25 Nr. 12"
  copyright = "public domain"
  tagline = ""
}

global = {
  \key c \minor
  \time 2/2
%  \tempo "Allegro molto e con fuoco." 2 = 80
  \tempo "Allegro molto e con fuoco." 2 = 10
}

upper = \relative c' {
es,16-1 g-2 es'-5 es-1 g es'-5 es-1 g es' g, es-1 es-5 g, es es-5 g, | %1
d as' d d as' d d as' d as d, d as d, d as %2
f c' f f c' f f c' f c f, f c f, f c %3
es, g es' es g es' es g es' g, es es g, es es g, %4
d as' d d as' d d as' d as d, d as d, d as %5
c, as' es' es as es' es as es' as, es es as, es es as, %6
c, es c' c << {r16 c'4 b as g g f f8. } \\ {es16 c' es, c es b' es, c es as es c | d g d h des g des b c f c a h f' h, as } >>
es g es' es g es' es g es' g, es es g, es es g,
d as' d d as' d d as' d as d, d as d, d as
f c' f f c' f f c' f c f, f c f, f c
e, c' e e c' e e c' e c e, e c e, e c
as des as' as des as' as des as' des, as as des, as as des,
g, h g' g h g' g h g' h, g g h, g g h,
e, g e' e g e' e g e' e g e' g, e e g,
e e g, e e g, e g d g d' g, f g g' g,
e g e' e g e' e g e' e g e' g, e e g,
e e g, e e g, e g d g d' g, c, g' c g
d g d' d g d' d g d' d g d' g, d d g,
d d g, d d g, d g c, f c' f, c f a f
c f c' c f c' c f c' f, c c f, c c f,
c e c' c e c' c e c' e, c c e, c c e,
c es c' c es c' c es c' c es c' es, c c es,
c c es, c c es, c es b es b' es, des es es' es,

}

lower = \relative c {
c,16 g'-2 c-1 c-5 g' c c g' c g c,-5 c-1 g c, c-1 g
c, f c' c f c' c f c' f, c c f, c c f,
c as' c c as' c c as' c as c, c as c, c as
c, g' c c g' c c g' c g c, c g c, c g
c, f c' c f c' c f c' f, c c f, c c f,
c f h c f h c f h f c h f c h f
c g' c c g' c g c, g' c g c, g' c g c,
g' h g c, g' b g c, f a f c f as f c
c, g' c c g' c c g' c g c, c g c, c g
c, f c' c f c' c f c' f, c c f, c c f,
c as' c c as' c c as' c as c, c as c, c as
c, g' c c g' c c g' c g c, c g c, c g
f des' f f des' des f des' f des f, f des f, f des
g, d' f g d' f g d' f d g, d d g, d g,
c, g' c c g' c c g' c c g' c g c, c g
c, c g c, c g c, g' h g c, g' d' g, c, g'
c, g' c c g' c c g' c c g' c g c, c g
c, c g c, c g c, g' h g c, g' a g c, g'
c, g' h c g' h c g' h c g' h g c, h g
c, h g c, h g c, g' a f c f a f c f
c as' c c as' c c as' c as c, c as c, c as
c, g' c c g' c c g' c g c, c g c, c g

}

\score {
  \new PianoStaff <<
    \new Staff {\clef treble \global
      \upper
    }
    \new Staff {\clef bass \global
      \lower
    }
  >>
  \layout {}
}
\score {
  \new PianoStaff <<
    \new Staff {\clef treble \global
      \upper
    }
    \new Staff {\clef bass \global
      \lower
    }
  >>
  \midi {}
}