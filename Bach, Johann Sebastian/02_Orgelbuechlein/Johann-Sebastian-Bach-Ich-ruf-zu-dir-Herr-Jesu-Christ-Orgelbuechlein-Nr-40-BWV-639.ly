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
  \key f \minor
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
  ef-2
}

rightD = \relative c'' {
  % Music follows here.
  f4-3 ef8-2 <<{{\magnifyMusic 0.63 {\tuplet 3/2 {ef64-3 df-2 ef-3} df-2 c-1 df16-2}}}\\{df32\prall c df16}>> c8-1 bf-3 af-2 bf-3|
  c4-4 bf-3 af-2\fermata c-5|
  c-5 c-5 bf-4 af-3|
  g2-2 f-1|
  af4-4 g-3 f2-2|
  ef2.-1 ef4-1
  af-3 af-3 bf-4 bf-3|
  c2.-4 df4-5|
  c-4 bf-3 af-2 f8.-1 g16-2|
  af4-3 g-2 f-1\fermata
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
  f-1( bf,-5 df-3 f-1) bf-2(af-3 g-4 af-2) g-1(bf,-4 af-5 f'-1) g,-5(df'-1 af-4 c-1)|
}

leftD = \relative c' {
  % Music follows here.
  af-4(c-2 bf-3 df-1) bf-5(df-3 af'-1 g-2) af-1(ef-3 df-4 g-1) c,-5(f-3 af-1 g-2)|
  af-1(ef-3 af,-5 gf'-2) f-1(af,-4 g-5 df'-1) c-2(af-4 c-1 ef-2) g-1(c,-3 bf-5 g'-1)|
  a,-5(c-3 f-1 g-2) a-1(f-3 ef-4 a-1) df,-5(g-1 af-2 g-1) c,-5(f-1 g-2 f-1)|
  df-5(f-1 g-2 f-1) e-2(bf-5 df-2 c-3) af-5(c-3 f-1 e-2) f-1(c-2 af-3 f-5)|
  bf-3(f'-1 g-2 f-1) bf,-5(ef-1 f-2 ef-1) c-3 ef-1 f-2 ef-1 d-2 g,-5 b-2 d-1|
  \clef bass
  g,-5 c-1 ef-2 df-3 g,-5 bf-1 df-2 c-1 ef,-5 af-3 c-1 bf-2 df-1 bf-2 ef,-5 df'-1|
  f,-5 af df-1 c f,-5 af-3 c-1 bf-2 f-5 af-2 bf-1 af-2 g-5 bf-3 df-2 c-1|
  \clef treble
  af-5 c-4 ef-3 af-2 ef-5 bf'-2 c-1 bf-2 a-1 ef-4 gf-1 a,-5 bf-4 g'-1 af,-5 f'-1|
  \clef bass
  g,-5 e'-2 f-1 ef-2 f,-5 df'-2 ef-1 df-2 ef,-5 c'-3 df-2 c-3 bf-5 f'-2 g-1 f-2|
  d-4 f-2 g-1 f-2 e-1 df-2 bf-3 g-5 a-4 c-2 f8-1
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
  bf'8\rtoe af\rtoe g\rtoe f\rtoe e\ltoe f\rtoe c\ltoe c\ltoe
}

pedalD = \relative c {
  % Music follows here.
  df8\ltoe 8\ltoe ef8\ltoe 8\ltoe af\rtoe ef\ltoe f\rtoe df\ltoe|
  ef\rtoe c\ltoe df\ltoe ef\rtoe af,\ltoe af\rtoe e\ltoe e\ltoe|
  f\rtoe f\ltoe f'\rtoe f\rtoe f\rtoe e\rtoe f\rtoe df\rtoe|
  bf\ltoe g\ltoe c\rtoe c\rtoe df\rtoe df\rtoe df\rtoe df\rtoe|
  d\rtoe d\rtoe ef\rtoe ef\rtoe a,\ltoe a\ltoe b\ltoe b\ltoe|
  c\ltoe c\ltoe bf\ltoe bf\ltoe af\ltoe af\ltoe g\ltoe g\ltoe|
  f\ltoe f\ltoe ef\ltoe ef\ltoe df\ltoe df\ltoe ef\ltoe ef\ltoe|
  af\ltoe af\ltoe gf\ltoe gf\ltoe f\ltoe f\ltoe bf\rtoe bf\rtoe|
  bf\rtoe af\ltoe af\ltoe g\ltoe g\ltoe f\ltoe df'\rtoe df\rtoe|
  b\rtoe b\rtoe c\rtoe c\rtoe f,4\ltoe
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
