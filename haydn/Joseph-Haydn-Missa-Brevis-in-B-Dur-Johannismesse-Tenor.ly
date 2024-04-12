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
  c4. c8 d4 bf a r
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
  r r c\f d r a bf r r
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
  \tempo "Andante" 4=100
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
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  %   Cre -- do in un -- um De -- um,
  %   Pa -- trem om -- ni -- potén -- tem,
  %   fac -- tórem cæ -- li et terræ,
  Vi -- si -- bí -- li -- um ó -- mni -- um et in -- vi -- si -- bí -- li -- um.
  Ie -- sum Chris -- tum
  Et in un -- um Dó -- mi -- num, Ie -- sum Chris -- tum,
  Fí -- li -- um Dei un -- igé -- ni -- tum,
  et ex Pa -- tre na -- tum an -- te óm -- nia sǽ -- cu -- la.
  De -- um de Deo, lu -- men de lú -- mi -- ne, De -- um ver -- um de Deo ve -- ro,
  gé -- ni -- tum, non fac -- tum, con -- sub -- stan -- tiálem Pa -- tri:
  per quem óm -- nia fac -- ta sunt.
  Qui propter nos hó -- mi -- nes et propter no -- stram sa -- lútem
  de -- scén -- dit de cæ -- lis.
  Et in -- carnátus est de Spíri -- tu Sanc -- to
  ex Ma -- ría Vír -- gi -- ne, et ho -- mo fac -- tus est.
  Cru -- cifí -- xus éti -- am pro no -- bis sub Pón -- tio Piláto;
  pas -- sus et sepúl -- tus est,
  et re -- s -- urré -- xit tér -- tia die, secún -- dum Scrip -- túras,
  et ascén -- dit in cælum, se -- det ad déx -- teram Pa -- tris.
  Et íte -- rum ventúrus est cum glória,
  iu -- dicá -- re vi -- vos et mór -- tu -- os,
  cui -- us reg -- ni non erit fi -- nis.
  Et in Spíri -- tum Sanc -- tum, Dó -- mi -- num et vi -- vi -- ficán -- tem:
  qui ex Pa -- tre Fi -- lióque procé -- dit.
  Qui cum Pa -- tre et Fí -- lio si -- mul ad -- orátur et conglo -- ri -- ficátur:
  qui locútus est per pro -- phétas.
  Et un -- am, sanc -- tam, ca -- thó -- li -- cam et apo -- stó -- li -- cam Ec -- clé -- si -- am.
  Con -- fíte -- or un -- um bap -- tís -- ma in re -- mis -- sió -- nem pec -- catórum.
  Et ex -- spéc -- to re -- s -- ur -- rec -- tió -- nem mor -- tuórum,
  et vit -- am ventúri sǽ -- cu -- li. Amen.
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
  \partial 2.
  r4 r8\f f4.
  d r8 ef ef d8. d16 e8 f(ef) c
  bf4.(ef4) c8 bf d d
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  Sanc -- tus, Sanc -- tus, Sanc -- tus Do -- mi -- nus De -- us Sa -- ba -- oth.
  Ple -- ni sunt cae -- li et ter -- ra glo -- ria tua.
  Ho -- san -- na in ex -- cel -- sis.
  Be -- ne -- dic -- tus qui ve -- nit in no -- mi -- ne Do -- mi -- ni.
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
  r1
  \time 6/8
  r4 r8
  r2.
  r4 r8 bf4.\f
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  Be -- ne -- dic -- tus qui ve -- nit in no -- mi -- ne Do -- mi -- ni.
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
  r4 r bf
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  Ag -- nus Dei, qui tol -- lis pec -- ca -- ta mun -- di, mi -- se -- re -- re no -- bis.
  Ag -- nus Dei, qui tol -- lis pec -- ca -- ta mun -- di, mi -- se -- re -- re no -- bis.
  Ag -- nus Dei, qui tol -- lis pec -- ca -- ta mun -- di, do -- na no -- bis pacem.
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
