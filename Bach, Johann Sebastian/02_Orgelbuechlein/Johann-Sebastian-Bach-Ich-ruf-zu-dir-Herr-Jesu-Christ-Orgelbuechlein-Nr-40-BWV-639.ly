\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = "Ich ruf‘ zu dir, Herr Jesu Christ"
  subtitle = "Orgelbüchlein Nr. 40"
  subsubtitle = ""
  instrument = "Organ"
  composer = "Johann Sebastian Bach"
  arranger = ""
  poet = "Fingerings: Sven Buschke"
  meter = ""
  piece = ""
  opus = "BWV 639"
%   copyright = "© Fingerings: Sven Buschke, 17.02.2023"
%   tagline = ""
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line {    } \line { \small \line { \tiny © Fingerings: 19.02.2023, Sven Buschke   } }  } }
}

\paper {
  #(set-paper-size "a4" 'landscape)
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key c \minor
  \time 4/4
  \tempo "Andante" 4=100
}

rightA = \relative c'' {
  \global
  % Music follows here.
  \partial 4
  c4-4|
  af bf af8. g16 f8. g16|
  af16 bf af bf bf8.\trill af32 bf c4\fermata c8. df16|
  ef4 \appoggiatura df16 c8. bf16 af4 bf8 c|
}

rightB = \relative c'' {
  % Music follows here.
  df4 ~ df16 ef32 f df16\prall c c4\fermata
}

rightC = \relative c'' {
  % Music follows here.
  df4 ~ df16 ef32 f df16\prall c c4\fermata ef
}

rightD = \relative c'' {
  % Music follows here.
  f4 ef c af|
  c bf af c|
  c c bf af|
  g2 f|
  af4 g f2|
  ef2. ef4
  af af bf bf|
  c2~ c4 df|
  c bf af f8. g16|
  af4 g f
  \bar "|."
}

leftA = \relative c' {
  \global
  % Music follows here.
  \partial 4
  af16-4( c-2 f-1 e-2)|
  f16-1( c-2 af-3 f-5) g-4( bf-3 df-2 c-1) f,-5( af-3 c-1 bf) af f af c-1|
  \clef treble
  f-2 e-3 f-1 af-2 g-1 f e f e-1( c-2 g-5 bf-3) af-4( c-2 f-1 af-2)|
  g-1( ef-4 af-2 g-1) af-2 ef-4 f-3 gf-2 f-1( df-5 f-1 af-2) g-1( df-4 c gf'-2)|
}

leftB = \relative c' {
  % Music follows here.
  f16-1( bf,-5 df-3 f-1) bf-2( af-3 g-4 af-3) g-1 c,-3 e-1 bf-3|
}

leftC = \relative c' {
  % Music follows here.
  f( bf, df f) bf( af g af) g( bf, af f') g,( df' af c)|
}

leftD = \relative c' {
  % Music follows here.
  af4 bf4 af'4 c,4|%af bf af' c,|
  af'1| % f' f c g'|
  a,|% df c|
  df|% df e af, f'|
  bf|
  \clef bass
  g|
  f|
  \clef treble
  af|
  g|
  d'4 e a
}

pedalA = \relative c {
  \global
  % Music follows here.
  \partial 4
  f,8 f|
  f' f f\rtoe( e\ltoe) f f f ef|
  df8\rtoe 8 8 8 c c f f|
  c' c c c c c bf a|
}

pedalB = \relative c {
  % Music follows here.
  bf' af g f e c
}

pedalC = \relative c {
  % Music follows here.
  bf' af g f e f c c
}

pedalD = \relative c {
  % Music follows here.
  df8 8 ef8 8 af ef f df|
  ef4 df af e|
  f f' f f|
  bf,1|
  d|
  c|
  f,|
  af|
  bf|
  b4 c f
}

\score {
  <<
    \new PianoStaff \with {
      instrumentName = "Orgel"
      shortInstrumentName = "Org."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "church organ"
      } {\repeat volta 2 {\rightA}  \alternative {{\rightB} {\rightC}} \rightD }
      \new Staff = "left" \with {
        midiInstrument = "church organ"
      } { \clef bass {\repeat volta 2 {\leftA} \alternative {{\leftB}{\leftC}} \leftD} }
    >>
    \new Staff = "pedal" \with {
      midiInstrument = "church organ"
    } { \clef bass {\repeat volta 2 {\pedalA} \alternative {{\pedalB}{\pedalC}} \pedalD} }
  >>
  \layout { }
  \midi { }
}
