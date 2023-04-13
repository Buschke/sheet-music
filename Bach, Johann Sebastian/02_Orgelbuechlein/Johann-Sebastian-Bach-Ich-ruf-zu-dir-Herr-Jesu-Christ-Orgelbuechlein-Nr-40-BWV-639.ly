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
  #(define licenseUrl "https://buschke.com")
  license = "© Fingerings: Sven Buschke, 19.02.2023"
  copyright = \markup { \rounded-box \pad-markup #0.5 \center-column { \line { \with-url #licenseUrl \license }  } }

%   copyright = "© Fingerings: Sven Buschke, 17.02.2023"
%   tagline = ""
% tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line {    } \line { \small \line { \tiny © Fingerings: 19.02.2023, Sven Buschke   } }  } }
tagline = ""
}

\paper {
  #(set-paper-size "a4")
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
  af-2 bf-3 af8.-2 g16-1 f8.-2 g16-1|
  af16-2^"Tremplement lié" bf-3 af-1 bf-2

  <<{bf8.\trill-2( af32-1 bf-2| c4-3\fermata)}\\{\magnifyMusic 0.63 {c32-3 bf-2 c-3 bf-2 c-3 bf-32   af32-1 bf-2|s4}}>>
%  bf8.\trill

%  af32-1 bf-2 c4-3\fermata

  c8.-1 df16-2|
  ef4-3
<< { \appoggiatura df16-2 c8.-1 bf16-3 af4-2}\\{\magnifyMusic 0.63{df32-2 c8-1 ~ c32 bf16-3 af4-2}}>>
     bf8-3 c-1|
}

rightB = \relative c'' {
  % Music follows here.

<<{s4 s16 s32 s32 {\magnifyMusic 0.63 {ef64-3 df-2 ef-3 df-2 r32 c-1 c4-1}}}\\{df4-2 ~ df16 ef32-3 f-4 df16\prall-2 c-1 c4-1\fermata}>>

%\magnifyMusic 0.63 {\tupl 3/2 {df32-2 ef-3 df-2}

%  df16\prall-2 c-1 c4-1\fermata
}

rightC = \relative c'' {
  % Music follows here.
  %\key c \minor
  <<{s4 s16 s32 s32 {\magnifyMusic 0.63 {ef64-3 df-2 ef-3 df-2 r32 c-1 c4-1}}}\\{df4-2 ~ df16 ef32-3 f-4 df16\prall-2 c-1 c4-1\fermata}>>

  %df4 ~ df16 ef32 f df16\prall c c4\fermata
  ef
}

rightD = \relative c'' {
  % Music follows here.
  f4 ef8 <<{}||{df32\prall c df16}>> c8 bf af bf|
  c4 bf af\fermata c|
  c c bf af|
  g2 f|
  af4 g f2|
  ef2. ef4
  af af bf bf|
  c2. df4|
  c bf af f8. g16|
  af4 g f\fermata
  \bar "|."
}

leftA = \relative c' {
  \global
  % Music follows here.
  \partial 4
  af16-4( c-2 f-1 e-2)|
  f16-1( c-2 af-3 f-5) g-4( bf-3 df-2 c-1) f,-5( af-3 c-1 bf-2) af-3 f-5 af-3 c-1|
  \clef treble
  f-2 e-3 f-1 af-2 g-1 f-2 e-3 f-2 e-1( c-2 g-5 bf-3) af-4( c-2 f-1 af-2)|
  g-1( ef-4 af-2 g-1) af-2 ef-4 f-3 gf-2 f-1( df-3 f-1 af-2) g-1( df-4 c gf'-2)|
}

leftB = \relative c' {
  % Music follows here.
  f16-1( bf,-5 df-3 f-1) bf-2( af-3 g-4 af-3) g-1 c,-3 e-1 bf-3|
}

leftC = \relative c' {
  % Music follows here.
  %\key c \minor
  f( bf, df f) bf( af g af) g( bf, af f') g,( df' af c)|
}

leftD = \relative c' {
  % Music follows here.
  af( c bf df) bf( df af' g) af(ef df g) c,( f af g)|
  af(ef af, gf') f( af, g df') c(af c ef) g(c, bf g')|
  a,(c f g) a( f ef a) df,(g af g) c,(f g f)|
  df(f g f) e( bf df c) af(c f e) f( c af f)|
  bf(f' g f) bf,(ef f ef) c ef f ef d g, b d|
  \clef bass
  g, c ef df g, bf df c ef, af c bf df bf ef, df'|
  f, af df c f, af c bf f af bf af g bf df c|
  \clef treble
  af c ef af ef bf' c bf a ef gf a, bf g' af, f'|
  \clef bass
  g, e' f ef f, df' ef df ef, c' df c bf f' g f|
  d f g f e df bf g a c f8
}

pedalA = \relative c {
  \global
  % Music follows here.
  \partial 4
  f,8\ltoe f\ltoe|
  f'\rtoe f\rtoe f\rtoe( e\ltoe) f\rtoe f\rtoe f\rtoe ef\rtoe|
  df8\rtoe 8\rtoe 8\rtoe 8\rtoe c\ltoe c\ltoe f\rtoe f\rtoe|
  c'\rtoe c\rtoe c\rtoe c\rtoe c\rtoe c\rtoe bf\rtoe a\rtoe|
}

pedalB = \relative c {
  % Music follows here.
  bf'\rtoe af\rtoe g\rtoe f\rtoe e\rtoe c\ltoe
}

pedalC = \relative c {
  % Music follows here.
  %\key c \minor
  bf'8 af g f e f c c
}

pedalD = \relative c {
  % Music follows here.
  df8 8 ef8 8 af ef f df|
  ef c df ef af, af e e|
  f f f' f f e f df|
  bf g c c df df df df|
  d d ef ef a, a b b|
  c c bf bf af af g g|
  f f ef ef df df ef ef|
  af af gf gf f f bf bf|
  bf af af g g f df' df|
  b b c c f,4
%
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
      } { \clef bass {\repeat volta 2 {\leftA} \alternative {{\leftB} {\leftC}} \leftD} }
    >>
    \new Staff = "pedal" \with {
      midiInstrument = "church organ"
    } { \clef bass {\repeat volta 2 {\pedalA} \alternative {{\pedalB} {\pedalC}} \pedalD} }
  >>
  \layout { }
  \midi { }
}
