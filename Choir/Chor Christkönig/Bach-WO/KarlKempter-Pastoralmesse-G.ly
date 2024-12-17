\version "2.24.4"
\language "english"

\header {
  dedication = ""
  title = "Pastoralmesse in G-Dur"
  subtitle = ""
  subsubtitle = ""
  instrument = ""
  composer = "Karl Kempter"
  arranger = "Op. 24"
  poet = ""
  meter = ""
  piece = ""
%  opus = "Op. 24"
  copyright = ""
  tagline = ""
}

\layout {
  \context {
    \Score
    \compressEmptyMeasures
  }
}

global = {
  \key g \major
  \time 4/4
  \tempo 4=100
}

globalKyrie = {
  \key g \major
  \time 6/8
  \tempo "Andante con moto" 4.=90
}

tenorKyrieVoice = \relative c' {
  \globalKyrie
  \dynamicUp
  \clef tenor
  % Music follows here.
  \compressEmptyMeasures R2.*6 \expandEmptyMeasures \compressEmptyMeasures R2.*2
  b4 b8 b4 b8 d4 d8 g,4 r8
  R2.*4
  b4 b8 b4 e8 d4 d8 d4(b8)\breathe
  b4 b8 b4 e8 d4 c8 b4 r8
  R2.*4 \expandEmptyMeasures \compressEmptyMeasures R2.*6
  d4(bf8) g4 r8 r2.
  ef'2.\f(c4.) c4 c8 af2.\>(a!4.)\p c b8 r4 r4.
  R2.*3
  g4 g8 g4 g8 g4 g8 b4.\breathe b4 b8 b4 b8 c4 c8 b4 r8 r2.
  d4.\f~d8(b) g d4 r8 r4 d'8 d4.~d8 b g\breathe
  b4 b8 b4 e8 d4 d8 d4(b8)\breathe
  b4 b8 b4 e8 d4 c8 b4 r8
  R2.*5 r2.^\markup { \italic "rit." }
  r4 d,8 d4 d8 d2.\fermata\bar "|."
}

globalGloria = {
  \key g \major
  \time 4/4
  \tempo "Allegro" 4=130
}

tenorGloriaVoice = \relative c' {
  \globalGloria
  \dynamicUp
  \clef tenor
  % Music follows here.
  R1*2
  d4\f d8 d d4 e d cs c(d) b r r2 r1 d4 d8 d d4 cs d d c(a) b r r2 R1*2
  r2 r4 d,\p d4. d8 d2 a'2. a4
  b2 d a(c) b4 r r2
  r4 b\f ds fs e r r2 R1*2
  r4 d,2\p d4 e2 e e4\breathe e\f c' c c2(b d2.) a4 b r r2 R1*3
  r4 d,2\p d4 a'2 a b4. b8 d2 a(c) bf r R1*2
  ef2\f ef4 ef d2 d4 r ef2 r4 ef d2 d4 r ef2 f g f f1 e2. e4 f2 r
  R1*8
  d2\f d4 d ef2 ef4 r ef2. ef4
  d2 bf4 r g2 g4 g4 bf1(a) bf2 r R1*5 \expandEmptyMeasures \compressEmptyMeasures R1*14
  df4. df8 df2 df4 df df df c2. c4 c2 c
  r2 df\f df df4 df c4. c8 c2 ef c R1*10
  r4 d8. d16 d4 e d cs c(d) b r r2 r1 r4 d8. d16 d4 cs d d c a g r r2
  R1*3
  r2 r4 d\p a'2 a4 a b4. c8 d4 r a a c2 b4 r r2 r4 b\f ds fs e b a b a d8 d cs4(e) d r r2 r4 d, d d8 d e2 e r4 e c' c8 c c2 b4(g) c(b a d) g, r r2 R1*2 r2 r4 d\p^\markup { \italic "dolce" } 
  d4. d8 d2 a'2. a4 b2 d a1 g4 r r2 d2\pp d d1~d d\fermata\bar "|."
}

globalCredo = {
  \key g \major
  \time 2/2
  \tempo "Allegro moderato" 2=70
}

tenorCredoVoice = \relative c' {
  \globalCredo
  \dynamicUp
  \clef tenor
  % Music follows here.
  R1*8
  b1\f b2. b4 c2 b b(a) b r r1 r2 b~b g d' d4 d g2 d4\breathe
  g, b2 b c c4 c d1 e2\breathe
  e,4 e e4. e8 c2 c'4. c8 g2\breathe
  c4 b c d e2 a,4(c) b r r2
  R1*17
  e2\f e4 e e2 e\breathe
  e e4 e e4. e8 e2\breathe
  e2. e4 e2 e4 e f2 f f f\breathe
  d2.\p^\markup { \italic "dolce" } d4 d2 d d b\breathe
  d d d2. d4 d2 d d b\breathe
  d d\< d d4 d c2 a b r\! r1
  r2 cs\f cs cs4 cs cs2. cs4 cs2\breathe
  d d d d d4 d d1 b2\breathe
  g c1 e2\breathe
  c e1 e2 e c1~c b2 r R1*6 r1\fermata \bar "||" \key c \minor r1
  R1*11
  g4.\f g8 g4 g f4. af8 c4 c d2 d4\breathe
  bf bf2 ef4\breathe g8.(f16) ef4.. d16 c4 c b2 c4 r r1
  r4 g8. g16 g4 g\bar "||" \key g \major \time 2/2 g r r2 R1*5
  b1
  b c2 b4 b b2(a) b4 r r2 r1 r2 b~b g\breathe
  d' d4 d g4. d8 d2\breathe
  b\f b4 b c4. c8 c2 d1~d e4 r e2 e4. e8 e4 e e2 e e e e4. e8 e2 e4 e c c f2 f4 f4 ef4. ef8 ef2\breathe
  ef ef ef ef4 ef ef2 ef ef1
  d2 r d d d4. d8 d2 d d d4. d8 d2 d4 d d d d2 d\breathe
  d d d d d4. d8 d2 d d d d R1*7
  r2 b\f b2. bf4 bf2 cs d d,\breathe
  d' d d4. d8 d2
  d d g1 d
  r4 e\f e e e2 e\breathe
  e e4 e e4. e8 e2 r4 e e e e4. e8 e4 e d2. d4 d2 r
  R1*7
  r2 d4 d d2. d4 d2 d c2. c4 c2 bf R1*3
  r2 d\f d d4 d d2 d e ds4(fs) e2 r R1*2 r2\breathe
  b\p~b c\breathe
  b1~b2 c\breathe
  b^\markup { \italic "rit." }~b g~g d\fermata\bar "|."
}

globalSanctus = {
  \key g \major
  \time 6/8
  \tempo "Andante" 4.=90
}

tenorSanctusVoice = \relative c' {
  \globalSanctus
  \dynamicUp
  \clef tenor
  % Music follows here.
  R2.*2 c2.\p~c b4 r8 r4. r2.
  d4.(cs) d4 r8 r4. d8 d b b4 b8 g4 g8 a8. a16 a8\breathe
  e'8 e e e fs g e4. c b8 b d c(a d) \bar "||"
  \time 4/4 b4 r\tempo "Allegro" 4 = 120 d2 d4 d r d b4. b8 b4 b g g r2 R1*4
  r2 d'\f d4 d r d b4. b8 b4 b g g r2 r1 r2 r4 g'\f
   e d c c c1 b4 r r2\bar "|."
}

globalBenedictus = {
  \key d \major
  \time 6/8
  \tempo "Andante quasi Allegretto" 4.=140
}

tenorBenedictusVoice = \relative c' {
  \globalBenedictus
  \dynamicUp
  \clef tenor
  % Music follows here.
  R2.*2 \expandEmptyMeasures \compressEmptyMeasures R2.*8
  a4\f a8 a a a d4. a8 r a a a a a4 a8 a4 r8 r4.
  a8\f fs d' a fs d' a4. fs8 r fs e a b cs e, b' a4 r8 r4.
  R2.*6
  f'4\f f8 f f f c4. c8 r c bf4. b8 r b a4. a4 a8 a4.\p gs g~g4 r8
  R2.*4
  a8 fs d' a fs d' a4. fs8 r a
  b b b e cs cs d4 r8 r4 a8 a2. a4 r8 a4 a8 a2. a4 r8 r4 d8 d2.~d a4 r8 a4 a8 a2.\pp^\markup { \italic "rit." }~a d,4 r8 r4. r2.\fermata\bar "|."
}

globalAgnusDei = {
  \key g \minor
  \time 4/4
  \tempo "Andante ostenuto" 4=80
}

tenorAgnusDeiVoice = \relative c' {
  \globalAgnusDei
  \dynamicUp
  \clef tenor
  % Music follows here.
  R1*3 \expandEmptyMeasures \compressEmptyMeasures R1*18 \expandEmptyMeasures \compressEmptyMeasures R1*2
  bf2 d ef4.(d8) c4 c c c8 c bf4 d d(cs) d r r1 a2 a4 r\bar "||"\key g \major
  R1*8
  d4 d d d d4.(c8) b4 r R1*2 f'4 e8 r f4 e8 r d2(cs c4 b2 a4) g r r2 b2(c4 a) g\breathe
  b2 g4 b2(c) b4 r r2 R1*3 \bar "|."
}



verseKyrie = \lyricmode {
  % Lyrics follow here.
  Ky -- ri -- e, e -- le -- i -- son.
  Ky -- ri -- e, e -- le -- i -- son.
  Ky -- ri -- e, e -- le -- i -- son.
  Chris -- te, Chris -- te e -- le -- i -- son.
  Ky -- ri -- e, e -- le -- i -- son.
  Ky -- ri -- e, e -- le -- i -- son.
  Ky -- ri -- e, e -- le -- i -- son.
  Ky -- ri -- e, e -- le -- i -- son.
  Ky -- ri -- e, e -- le -- i -- son,
  e -- le -- i -- son.
}

verseGloria = \lyricmode {
  % Lyrics follow here.
  Glo -- ri -- a in ex -- cel -- sis De -- o
  Glo -- ri -- a in ex -- cel -- sis De -- o
  ho -- mi -- ni -- bus bo -- nae vo -- lun -- ta -- tis.
  Lau -- da -- mus te, ad -- o -- ra -- mus te, glo -- ri -- fi -- ca -- mus te.
  pro -- pter ma -- gnam glo -- ri -- am tu -- am.
  Do -- mi -- ne De -- us, Rex coe -- les -- tis, De -- us Pa -- ter o -- mni -- po -- tens.
  Do -- mi -- ne De -- us, A -- gnus De -- i, Fi -- li -- us Pa -- tris.
  sus -- ci -- pe de -- pre -- ca -- ti -- o -- nem no -- stram.
  Qui se -- des ad dex -- te -- ram Pa -- tris,
  Quo -- ni -- am tu so -- lus san -- ctus, Quo -- ni -- am tu so -- lus Do -- mi -- nus, tu so -- lus Al -- tis -- si -- mus, Je -- su Chris -- te.
  Cum Sanc -- to Spi -- ri -- tu in glo -- ri -- a Pa -- tris.
  in glo -- ri -- a De -- i
  in glo -- ri -- a De -- i Pa -- tris. 
  ho -- mi -- ni -- bus bo -- nae vo -- lun -- ta -- tis.
  A -- men, A -- men.
}

verseCredo = \lyricmode {
  % Lyrics follow here.
  Cre -- do in un -- um De -- um, Pa -- trem om -- ni -- po -- ten -- tem, fac -- to -- rem co -- eli et ter -- rae, vi -- si -- bi -- li -- um om -- ni -- um et in -- vi -- si -- bi -- li -- um.
  De -- um de De -- o, lu -- men de lu -- mi -- ne, De -- um ver -- um de De -- o ve -- ro, ge -- ni -- tum, non fac -- tum, con -- sub -- stan -- ti -- a -- lem Pa -- tri: per quem om -- ni -- a fac -- ta sunt.
  Qui pro -- pter nos ho -- mi -- nes et pro -- pter no -- stram sa -- lu -- tem de -- scen -- dit, de -- scen -- dit de co -- elis.
  Cru -- ci -- fi -- xus e -- ti -- am pro no -- bis, pro no -- bis  sub Pon -- ti -- o Pi -- la -- to; et se -- pul -- tus est.
  Et a -- scen -- dit in coe -- lum. Se -- det, se -- det ad dex -- te -- ram, se -- det ad dex -- te -- ram Pa -- tris.
  Et i -- te -- rum ven -- tu -- rus est cum glo -- ri -- a, ju -- di -- ca -- re vi -- vos et mor -- tu -- os, cu -- jus re -- gni non e -- rit fi -- nis.
  Et in Spi -- ri -- tum Sanc -- tum, Do -- mi -- num et vi -- vi -- fi -- can -- tem: qui ex Pa -- tre Fi -- li -- o -- que pro -- ce -- dit.
  et con -- glo -- ri -- fi -- ca -- tur: qui lo -- cu -- tus est per Pro -- phe -- tas.
  Et un -- am, sanc -- tam, sanc -- tam, ca -- tho -- li -- cam et a -- po -- sto -- li -- cam ec -- cle -- si -- am.
  Et ex -- spec -- to re -- sur -- rec -- ti -- o -- nem et vi -- tam ven -- tu -- ri sae -- cu -- li. A -- men. A -- men. A _ -- men.
}

verseSanctus = \lyricmode {
  % Lyrics follow here.
  Sanc -- tus, sanc -- tus, Do -- mi -- nus De -- us, De -- us Sa -- ba -- oth.
  Ple -- ni sunt co -- eli et ter -- ra glo -- ri -- a tu -- a.
  Ho -- san -- na, ho -- san -- na in ex -- cel -- sis.
  Ho -- san -- na, ho -- san -- na in ex -- cel -- sis.
  Ho -- san -- na in ex -- cel -- sis.
}

verseBenedictus = \lyricmode {
  % Lyrics follow here.
  Be -- ne -- dic -- tus qui ve -- nit in no -- mi -- ne Do -- mi -- ni.
  Be _ -- ne -- dic -- tus qui ve -- nit in no -- mi -- ne Do _ -- mi -- ni.
  Be -- ne -- dic -- tus qui ve -- nit, qui ve -- nit in no -- mi -- ne Do -- mi -- ni.
  Be _ -- ne -- dic -- tus qui ve -- nit in no -- mi -- ne Do _ -- mi -- ni.
  Ho -- san -- na in ex -- cel -- sis.
  Ho -- san -- na in ex -- cel -- sis.
}

verseAgnusDei = \lyricmode {
  % Lyrics follow here.
  Ag -- nus De -- i, qui tol -- lis pec -- ca -- ta mun -- di,
  do -- na
  do -- na no -- bis pa -- cem.
  do -- na no -- bis pa -- cem.
  pa -- cem,   do -- na pa -- cem.
}

\score {
\header {
  opus = "Kyrie"
}
  \new Staff \with {
    instrumentName = "Tenor"
    midiInstrument = "choir aahs"
    \consists "Ambitus_engraver"
  } { \clef "treble_8" \tenorKyrieVoice }
  \addlyrics { \verseKyrie }
  \layout { }
  \midi { }
}
\score {
\header {
  opus = "Gloria"
}  
  \new Staff \with {
    instrumentName = "Tenor"
    midiInstrument = "choir aahs"
    \consists "Ambitus_engraver"
  } { \clef "treble_8" \tenorGloriaVoice }
  \addlyrics { \verseGloria }
  \layout { }
  \midi { }
}
\score {
\header {
  opus = "Credo"
}
  \new Staff \with {
    instrumentName = "Tenor"
    midiInstrument = "choir aahs"
    \consists "Ambitus_engraver"
  } { \clef "treble_8" \tenorCredoVoice }
  \addlyrics { \verseCredo }
  \layout { }
  \midi { }
}
\score {
\header {
  opus = "Sanctus"
}
  \new Staff \with {
    instrumentName = "Tenor"
    midiInstrument = "choir aahs"
    \consists "Ambitus_engraver"
  } { \clef "treble_8" \tenorSanctusVoice }
  \addlyrics { \verseSanctus }
  \layout { }
  \midi { }
}
\score {
\header {
  opus = "Benedictus"
}
  \new Staff \with {
    instrumentName = "Tenor"
    midiInstrument = "choir aahs"
    \consists "Ambitus_engraver"
  } { \clef "treble_8" \tenorBenedictusVoice }
  \addlyrics { \verseBenedictus }
  \layout { }
  \midi { }
}
\score {
\header {
  opus = "Agnus Dei"
}
  \new Staff \with {
    instrumentName = "Tenor"
    midiInstrument = "choir aahs"
    \consists "Ambitus_engraver"
  } { \clef "treble_8" \tenorAgnusDeiVoice }
  \addlyrics { \verseAgnusDei }
  \layout { }
  \midi { }
}