\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "Missa Brevis in B-Dur - Johannismesse"
  subtitle = ""
  subsubtitle = "Kleine Orgelmesse"
  instrument = "Tenor"
  composer = "M: Joseph Haydn, 1732-1809"
  arranger = "Bearbeitet: F. Habel"
  poet = "T: Liturgie"
  meter = "Satz: Sven Buschke"
  piece = "Ausgabe: Anton Böhm"
  opus = "Opus: Hob. XII:7"
  copyright = ""
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Kyrie
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key bf \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreATenorVoice = \relative c' {
  \globalA
  \dynamicUp
  % Music follows here.
  bf4.\p bf8  bf4. bf8 bf4 a16(bf) c8 d(c) bf4
  r1 r2 d8.\f f16 f4
  r2 c8. f16 f4
  r4 r8 c c4 c8 r
  r2 c8. c16 c8 c c4(bf2) a8 a d4(c) c r
  f8.\p f16 f8 f f4(e) f r r2
  c2\f c4 r8 f
  f4 e8 e f4 f, c' f8 f16(ef) d4 \afterGrace ef {c8}
  c4 c8 c c4 d8 ef16(f)
  g8.(ef16) c8 c c4 c
  d\p bf bf4. bf8 bf4 a16(bf) c8 d(c) c4
  ef8.\f ef16 ef4 d8. d16 d8 d d4(c2) bf8 bf
  bf4(a) bf r
  f'8. f16 f4 f8. f16 f8 f f2 f4 r
  r2 r8 bf,\f c(ef) d4 r r2
  \bar "|."
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Ky -- ri --e, e --lei --son, e -- lei --son.
  Ky -- ri --e, Ky -- ri --e, e --lei --son, Ky -- ri --e, e -- lei --son, e -- lei --son.
  Ky -- ri --e, e -- lei --son.
  Chri -- ste, e --lei --son, e -- lei --son.
  Chri -- ste, e --lei --son,
  Chri -- ste, e --lei --son, e -- lei --son, e -- lei --son,
  Ky -- ri --e, e --lei --son, e -- lei --son.
  Ky -- ri --e, Ky -- ri --e, e --lei --son, e -- lei --son.
  Ky -- ri --e, Ky -- ri --e, e --lei --son, e -- lei --son.
}

\bookpart {
  \header {
    subtitle = "Kyrie"
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreATenorVoice }
    \addlyrics { \scoreAVerse }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Gloria
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalB = {
  \key bf \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Allegro" 4=100
}

scoreBTenorVoice = \relative c' {
  \globalB
  \dynamicUp
  % Music follows here.
  bf8\f 8 8 8 8 8
  a8. a16 a4 a8 bf
  c2 c4
  d f8 f f f
  g4 ef8 ef g g16 g
  f4 f8 f f f
  c4 c8 c16 c d8 bf
  bf4(a) a(c4.) c8 c4
  f f8 f f f d d d4. d8  c4. c8 c4
  d(c bf) a a a8 a c4 c c8 c bf4 bf bf8 bf bf4 bf8 bf bf bf bf4 g' g8 g f4 f f8 f ef4(d) c bf r r
  r2. r r
  r4 f'2(g4 ef) c d16(ef d ef) f2 ef8 ef16 ef d4(c) bf r4 r\fermata
  \bar "||"
  \time 3/4
  \tempo "Adagio" 4=70
  r2.
  r
  r4 r bf\f c bf r
  g' f ef ef d r d2 d4 e2 e4
  r ef ef d2 c4 bf2(a4) g r r
  r2. r r
  r4 r bf\f c bf r
  d\p d d d d r
  f4.\f f8 f4 d2 d4
  ef2 ef4
  f2 ef4 ef2(d4) c r r
  r2. r r
  r4 r ef d ef r8 ef
  c4. c8 bf4 bf a r
  d2\f d4 e2 e4
  r ef ef d2 c4 bf2(a4) g r r\fermata
  \bar "||"
  \time 3/4
  \tempo "Allegro" 4=100
  r4 bf4. bf8
  a2 a8(bf) c2 c4 d f f g2 g4
  f8. f16 f4 d c c d8(bf) bf4. a8 a4
  c2. f d c
  d4(c bf) a r a
  c2 c4 bf4. bf8 8 8
  bf4 bf8 8 8 8
  bf4(g') g f2 f4
  ef(d c) bf r r
  r2. r r
  r4 f'2\p(g4 ef) c d16(ef d ef) f2 ef4(d c) bf
  r c\f d r a bf r r
  \bar "|."
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  % Glória in ex -- cél -- sis Deo
  Et in ter -- ra pax ho -- mí -- ni -- bus bo -- næ vo -- lun -- tá -- tis.
  Lau -- dá -- mus te,
  be -- ne -- dí -- ci -- mus te,
  ad -- o -- rá -- mus te,
  glo -- ri -- fi -- cá -- mus te,
  grá -- ti -- as á -- gi -- mus ti -- bi pro -- pter mag -- nam gló -- ri -- am tu -- am,
  Dó -- mi -- ne De -- us, Rex cæ -- lé -- stis,
  De -- us Pa -- ter om -- ní -- po -- tens.
  Dó -- mi -- ne Fi -- li U -- ni -- gé -- ni -- te.
  %   Ie -- su Chris -- te,
  %   Dó -- mi -- ne De -- us, Ag -- nus Dei, Fí -- li -- us Pa -- tris,
  A -- gnus De -- i, Fi -- li -- us Pa -- tris.
  Qui tol -- lis pec -- cá -- ta mun -- di,
  mi -- se -- ré -- re mi -- se -- ré -- re no -- bis.
  Qui tol -- lis pec -- cá -- ta mun -- di,
  sú --sci -- pe de -- pre -- ca -- ti -- ó -- nem no -- stram.
  Qui se -- des ad déx -- te -- ram Pa -- tris,
  mi -- se -- ré -- re, mi -- se -- ré -- re no -- bis.
  Quó -- ni -- am tu so -- lus Sanc -- tus.
  Tu so -- lus Dó -- mi -- nus,
  tu so -- lus Al -- tís -- si -- mus,
  Ie -- su, Ie -- su Chri -- ste.
  Cum San -- cto Spí -- ri -- tu,
  in gló -- ri -- a De -- i Pa -- tris.
  A -- men, a -- men,
  a -- men, a -- men, a -- men,
  a -- men, a -- men.
}

\bookpart {
  \header {
    subtitle = "Gloria"
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreBTenorVoice }
    \addlyrics { \scoreBVerse }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Credo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \key bf \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Allegro" 4=100
}

scoreCTenorVoice = \relative c' {
  \globalC
  \dynamicUp
  % Music follows here.
  r1
  r2 bf8\f 8 c c16 c
  d8 ef d g f ef16 d ef8. ef16
  d4 r r2
  c4. c8 c4 c, r1
  d'4 c c8 bf a g f d' c d16 d c4 c c r r2
  r1
  r1
  r2 bf4 c
  d8(ef) d g f ef16(d) ef4 d r r c8 c c8. c16 c8 c c4 c, r2 r4 r8 f' d4 c8 c c(bf a) g f d' c d c c16 c c4 c r r2 r r8 c d(c16 bf)
  \time 3/4
  \tempo "Adagio" 4 = 46
  a4 f'\p f8 f f2.(f2) a,4 bf4 4 4 bf2.(bf2) bf4 4 bf2 b4. b8 b4 c b r
  ef4. ef8 d c c8. b16 b4 r ef4. ef8 d c c8. b16 b4 g ef c ef'8(c) af2 ef4 c2 c4 fs4 r fs g2. a g2 f4 ef2 r4
  r2. r r r r
  b'
  b bf(a2) bf4 a2 bf4 c(bf) a g r r
  r2.
  r4 d\p d d2 d4
  \bar "||"
  \tempo "Allegro" 4=80
  d d'\f d8 d d2 d4 d4. d8 d4 d bf bf c4. c8 c4 c c c8 c bf4 bf bf a2 a4 bf g' e c d c d(c2) c4 r
  f, f4. f8 f f bf bf g4 e f f8 f f f 
  bf4(g) e f f r8 f bf4(g) e f r r
  c'2\f c4 bf bf bf bf2 bf4 bf(g') g f f f ef(d c)
  bf r d8 d d4. d8 d4 d2 d4 d4. d8 d4 d8 d d4 bf c c c8 c c4 c c8 c bf4 bf bf a a a8 a bf4 g' e c d c d8 d c4 c a f f c'2 c4
  bf2 bf4 a2. bf4 g' e c d c d8 d c2 f,4 r8 f f f f4 f f bf8. bf16 g4 e f8 f f f f f bf8. bf16 g4 e f8. f16 f8 f f f bf4 g e8 e f2 c'4 c c c8 c bf4 bf bf8 bf bf2 bf4 bf(g') g f8 f f4 f ef8 ef d4(c) bf r r 
  r2. r r 
  r4 f'2
  g4 ef c d16(c bf ef) f2 ef4(d) c bf r c\f d r a bf r r
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  %   Cre -- do in un -- um De -- um,
  %   Pa -- trem om -- ni -- potén -- tem,
  %   fac -- tórem cæ -- li et terræ,
  Vi -- si -- bí -- li -- um ó -- mni -- um et in -- vi -- si -- bí -- li -- um.
  Ie -- sum Chris -- tum
  Et ex Pa -- tre na -- tum an -- te óm -- ni -- a sǽ -- cu -- la.
  De -- um ve -- rum de De -- o ve -- ro.
  Con -- sub -- stan -- ti -- á -- lem Pa -- tri.
  Qui pro -- pter nos hó -- mi -- nes et pro -- pter no -- stram sa -- lú -- tem
  de coe -- lis.
  Et in -- car -- ná -- tus est,
  in -- car -- ná -- tus est
  de Spí -- ri -- tu San -- cto
  ex Ma -- rí -- a Vír -- gi -- ne,
  ex Ma -- rí -- a Vír -- gi -- ne:
  et ho -- mo, et ho -- mo fac -- tus est.
  et ho -- mo fac -- tus est.
  pas -- sus
  pas -- sus
  et se -- púl -- tus est,
  et se -- púl -- tus est.
  Et re -- sur -- ré -- xit tér -- ti -- a di -- e, se -- cún -- dum Scrip -- tú -- ras.
  Et as -- cén -- dit in coe -- lum, se -- det ad déx -- te -- ram Pa -- tris.
  Et í -- te -- rum ven -- tú -- rus est cum gló -- ri -- a,
  iu -- di -- cá -- re vi -- vos et mór -- tu -- os.
  Cui -- us reg -- ni non e -- rit fi -- nis,
  non e -- rit fi -- nis.
  Et in Spí -- ri -- tum San -- ctum, Dó -- mi -- num et vi -- vi -- fi -- cán -- tem:
  qui ex Pa -- tre Fi -- li -- ó -- que pro -- cé -- dit.
  Qui cum Pa -- tre et Fí -- li -- o si -- mul ad -- o -- rá -- tur et con -- glo -- ri -- fi -- cá -- tur:
  qui lo -- cú -- tus est per pro -- phé -- tas.
  Et un -- am, sanc -- tam, ca -- thó -- li -- cam et a -- po -- stó -- li -- cam Ec -- clé -- si -- am.
  Con -- fí -- te -- or u -- num ba -- ptís -- ma in re -- mis -- si -- ó -- nem pec -- ca -- tó -- rum.
  Et ex -- spéc -- to re -- sur -- re -- cti -- ó -- nem mor -- tu -- ó -- rum.
  Et vit -- am ven -- tú -- ri sǽ -- cu -- li. A -- men, a -- men.
}

\bookpart {
  \header {
    subtitle = "Credo"
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreCTenorVoice }
    \addlyrics { \scoreCVerse }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sanctus
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalD = {
  \key bf \major
  %   \numericTimeSignature
  \time 6/8
  \tempo "Andante" 4=100
}

scoreDTenorVoice = \relative c' {
  \globalD
  \dynamicUp
  % Music follows here.
  r4 r8\f f4.
  d r8 ef ef d8. d16 e8 f(ef) c
  bf4.(ef4) c8 bf d d c8. d16 c8 r ef ef d8. c16 b8 c4 c8 b c16(d) c8 c(d) ef d(g f ef4 d8 c4) c8 b4 r8 r4 r8 ef ef ef ef c b c c r r4 r8 d d d d bf a
  bf bf r r4 r8 c8. c16 bf8 bf a r bf8. bf16 bf8 a a r bf8. bf16 bf8 a a r
  r4 r8 bf4. a8(f') ef ef(d) c d4( c8 bf4 c8) f,4 r8 r4 r8
  r2. r4 r8 ef'4. d8(g f ef d c) bf g' ef d4(c8) bf4 r8 r4 r8
  r4 r8 ef4.\p d8(g f ef d c) bf g'\f ef d4(c8) bf4 r8 r4 r8
  \bar "|." 
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  Sanc -- tus, Sanc -- tus, Do -- mi -- nus De -- us Sa -- ba -- oth.
  Sanc -- tus, Do -- mi -- nus, Sanc -- tus, Do -- mi -- nus
  De -- us Sa -- ba -- oth, De -- us Sa -- ba -- oth.
  Ple -- ni sunt cae -- li et ter -- ra,
  ple -- ni sunt cae -- li et ter -- ra
  glo -- ri -- a tu -- a,
  glo -- ri -- a tu -- a,
  glo -- ri -- a tu -- a.
  Ho -- san -- na in ex -- cel -- sis,
  ho -- san -- na in ex -- cel -- sis.
  Ho -- san -- na in ex -- cel -- sis.
}

\bookpart {
  \header {
    subtitle = "Sanctus"
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreDTenorVoice }
    \addlyrics { \scoreDVerse }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Benedictus
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalE = {
  \key ef \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreETenorVoice = \relative c' {
  \globalE
  \dynamicUp
  % Music follows here.
  \compressMMRests R1*56
  r4 r8 
  \key bf \major
  \time 6/8
  \partial 4.
  r4 r8
  r2.
  r4 r8 bf4.\f a8(f') ef ef(d) c d4(c8 bf4 c8) f,4 r8 r4 r8 r2.
  r4 r8 ef'4. d8(g f ef d c) bf g' ef d4(c8) bf4 r8 r4 r8
  r4 r8 ef4.\p d8(g f ef d c) bf
  g'\f ef d4(c8) bf4 r8 r4 r8
  \bar "|."
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  Ho -- san -- na in ex -- cel -- sis.
  Ho -- san -- na in ex -- cel -- sis.
  Ho -- san -- na in ex -- cel -- sis.
}

\bookpart {
  \header {
    subtitle = "Benedictus"
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreETenorVoice }
    \addlyrics { \scoreEVerse }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Agnus Dei
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalF = {
  \key bf \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=100
}

scoreFTenorVoice = \relative c' {
  \globalF
  \dynamicUp
  % Music follows here.
  r2. r
  r4 r bf c bf r
  g' f ef ef d r
  d2\f d4 e2 e4 r ef c d2 c4 bf2(a4) g r r r2. r r
  r4 r bf c bf r d d d d d r r f\f f d2 d4 r ef ef f2 ef4 ef2(d4)
  c r r
  r2. r r
  r4 r ef\f d ef r c\p c bf bf a r
  bf2 bf4 bf2 bf4 bf2(a4) bf r r r2.
  r8 a(bf) a d c bf4(c2) f,4 r r r2.
  r8 d'(f) ef d c  bf2 d4
  ef(g8 f ef d c ef d c bf a) g4 r r 
  c2 bf4 g(f ef) d4 r r
  d'2\ff d4 c2. bf2 r4
  r2. r r8 f'\p(ef) d c bf a4(bf8 c) d4 ef(d c) bf r r d2\f d4 c2. bf2 r4 r2. r
  r8 f'\pp(ef) d c bf a4(bf8 c) d4 ef(d c) bf r r r2. r r f'2.\pp d2 r4 r2.
  \bar "|."
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  Qui tol -- lis pec -- ca -- ta mun -- di, mi -- se -- re -- re, mi -- se -- re -- re  no -- bis.
  Qui tol -- lis pec -- ca -- ta mun -- di, mi -- se -- re -- re, mi -- se -- re -- re no -- bis.
  Qui tol -- lis pec -- ca -- ta mun -- di, do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis pa -- cem, pa -- cem,
  do -- na no -- bis, do -- na no -- bis pa -- cem, pa -- cem, pa -- cem.
}

\bookpart {
  \header {
    subtitle = "Agnus Dei"
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreFTenorVoice }
    \addlyrics { \scoreFVerse }
    \layout { }
    \midi { }
  }
}
