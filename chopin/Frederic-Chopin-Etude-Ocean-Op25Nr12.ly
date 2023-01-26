\version "2.22.1"
\language "english"

\header {
  title = "Étude Ocean"
  subtitle = "c-Moll"
  composer = "Frédéric Chopin"
  arranger = "Fingering: Sven Buschke"
  opus = "op. 25 Nr. 12"
  copyright = "© Fingering: Sven Buschke, 27.01.2023"
  tagline = ""
}

global = {
  \key c \minor
  \time 2/2
%  \tempo "Allegro molto e con fuoco." 2 = 80
  \tempo "Allegro molto e con fuoco." 2 = 10
}

upper = \relative c' {
ef,16-1 g-2 \clef treble ef'-5 ef-1 g ef'-5 ef-1 g ef'-5 g, ef-1 ef-5 g, ef ef-5 g, | %1
d af' d d af' d d af'  d af d, d af d, d af| %2
f c' f f c' f f c' f c f, f c f, f c %3
ef, g ef' ef g ef' ef g ef' g, ef ef g, ef ef g, %4
d af' d d af' d d af' d af d, d af d, d \ottava #-1 af %5
c, af' \ottava #0 ef' ef af ef' ef af ef' af, ef ef af, ef ef af, %6
c, ef c' c << {r16 c'4 bf af g g f f8. } \\ {ef16 c' ef, c ef bf' ef, c ef af ef c | d g d b df g df bf c f c a b f' b, af } >>
ef g ef' ef g ef' ef g ef' g, ef ef g, ef ef g,
d af' d d af' d d af' d af d, d af d, d af
f c' f f c' f f c' f c f, f c f, f c
e, c' e e c' e e c' e c e, e c e, e c
af df af' af df af' af df af' df, af af df, af af df,
g, b g' g b g' g b g' b, g g b, g g b,
e, g e' e g e' e g \ottava #2 e' e g e' g, e e \ottava #0 g,
e e g, e e g, e g d g d' g, f g g' g,
e g e' e g e' e g e' e g e' g, e e g,
e e g, e e \ottava #-1 g, e g d g d' g, c, g' c g
d g d' d g \ottava #0 d' d g \ottava #1 d' d g d' g, d d g,
d d g, d d \ottava #-1 g, d g c, f c' f, c f a f
c f \ottava #0 c' c f c' c f c' f, c c f, c c f,
c e c' c e c' c e c' e, c c e, c c \ottava #-1 e,
c ef \ottava #0 c' c ef c' c ef \ottava #1 c' c ef c' ef, c c ef,
\ottava #0 c c ef, c c \ottava #-1 ef, c ef bf ef bf' ef, df ef ef' ef,|
c ef c' c ef \ottava #0 c' c ef \ottava #1 c' c ef c' ef, c c ef,|
\ottava #0 c c ef, c c \ottava #-1 ef, c ef bf ef bf'ef, af, ef' af ef|
bf ef bf' bf \ottava #0 ef bf' bf ef \ottava #1 bf' bf ef bf' ef, bf  bf ef,|
\ottava #0 bf bf ef, \ottava #-1 bf <<{bf4 r8 af r f}\\{bf16 ef, bf ef af, df af' df, af df f df}>>|
af df af' af \ottava #0 df af' af df af' df, af af df, \ottava #-1 af af df,|
\ottava #0 af c af' af c af' c, af fs, c' fs fs c' fs c fs,|
g, b g' g b g' g b g' b, g g b, g g b,|
af c af' af c af' af c af' c, af af c, af af c|
c f c' c f  c c f c' f, c c f, c c f,|




%af c af' af \ottava #0 c af' af c af' c, af af c, \ottava #-1 af af c,|
}

lower = \relative c {
c,16 g'-2 c-1 c-5 g' c c \ottava #1 g' c g \ottava #0 c,-5 c-1 g c, c-1 g
c, f c' c f c' c f c' f, c c f, c c f,
c af' c c af' c c af' c af c, c af c, c af
c, g' c c g' c c g' c g c, c g c, c g
c, f c' c f c' c f c' f, c c f, c c f,
c f b c f b c f b f c b f c b f
c g' c c g' c g c, g' c g c, g' c g c,
g' b g c, g' bf g c, f a f c f af f c
c, g' c c g' c c g' c g c, c g c, c g
c, f c' c f c' c f c' f, c c f, c c f,
c af' c c af' c c af' c af c, c af c, c af
c, g' c c g' c c g' c g c, c g c, c g
f df' f f df' df f df' f df f, f df f, f df
g, d' f g d' f g d' f d g, d d g, d g,
c, g' c c g' c c g' c c g' c g c, c g
c, c g c, c g c, g' b g c, g' d' g, c, g'
c, g' c c g' c c g' c c g' c g c, c g
c, c g c, c g c, g' b g c, g' a g c, g'
c, g' b c g' b c \ottava #2 g' b c g' b g c, b g
\ottava #0 c, b g c, b g c, g' a f c f a f c f
c af' c c af' c c af' c af c, c af c, c af
c, g' c c g' c c \ottava #1 g' c g c, c g \ottava #0  c, c g

}

clave = {\new DrumStaff <<
  \drummode {\global
    << {
         hh8 cl hh cl hh cl hh cl
    } \\ {
      bd4 sn4 sn4 sn
    } >>
  }
>>
}

scoreA = \new PianoStaff <<
    \new Staff {\clef treble \global
      \upper
    }
    \new Staff {\clef bass \global
      \lower
    }
  >>


\score {
%  {
%    \clave
    \scoreA
%  }
  \layout {}
}
\score {
  {
    \clave
    \scoreA
  }
  \midi {}
}
