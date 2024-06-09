\version "2.24.3"
\language "english"

% Teil 1
globalAA = {
  \key d \major
  \time 3/8
  \tempo "Vivace" 8=120
}

scoreAATenorVoice = \relative c' {
  \globalAA
  \dynamicUp
  \compressEmptyMeasures
  % Music follows here.
  R4.*32
  d8 d d d a r

}

scoreAAVerse = \lyricmode {
  % Lyrics follow here.
  Jauch -- zet, fro -- lok -- ket,
}

globalAB = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4=60
}

scoreABTenorVoice = \relative c' {
  \globalAB
  \dynamicUp
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    gs4
    a b c8(d) g,4 a8(gs a4) gs\fermata
    gs a8 b c4 f e8 d c2.
  }
  \partial 4
  e4
  d8 c b4 a8(g) f(g) a4(g8 f) g4\fermata
  c
  c8(d) e4 d8(cs) d(gs,) a2.\fermata
  a4 g8 a b4 c8 d e4 e(d) d\fermata
  c c8(b) b(a) a4 g8 a b4(a gs)\fermata
  \bar "|."
}

scoreABVerse = \lyricmode {
  % Lyrics follow here.
  Wie soll ich dich emp -- fan -- gen
}

globalAC = {
  \key d \major
  \time 4/4
  \tempo "Andante" 4=60
}

scoreACTenorVoice = \relative c' {
  \globalAC
  \dynamicUp
  % Music follows here.
  \partial 4
  fs4

}

scoreACVerse = \lyricmode {
  % Lyrics follow here.
  Ach mein herz -- lie -- bes Je -- su -- lein,
}

% Teil 2
globalBA = {
  \key g \major
  \time 4/4
  \tempo "Andante" 4=80
}

scoreBATenorVoice = \relative c' {
  \globalBA
  \dynamicUp
  % Music follows here.
  \partial 4
  b8
  b8 c~ c d b a a4 a a\fermata
}

scoreBAVerse = \lyricmode {
  % Lyrics follow here.
  Brich an, _ o schö -- nes Mor -- gen -- licht
}

globalBB = {
  \key c \major
  \time 4/4
  \tempo "Langsam" 4=40
}

scoreBBTenorVoice = \relative c' {
  \globalBB
  \dynamicUp
  % Music follows here.
  \partial 4
  e4
  d4. c8 b4 c8 b a g f4 g\fermata
}

scoreBBVerse = \lyricmode {
  % Lyrics follow here.
  Schaut hin, dort liegt im _ fins _ -- tern Stall
}

globalBC = {
  \key g \major
  \time 2/2
  \tempo "Vivace" 2=80
}

scoreBCTenorVoice = \relative c' {
  \globalBC
  \dynamicUp
  % Music follows here.
  b8 c d b c b c b16 c d8 c b a g4 c~ c b8 a g4 e'~ e
}

scoreBCVerse = \lyricmode {
  % Lyrics follow here.
  Eh -- re sei Gott in der Hö -- he
}

globalBD = {
  \key g \major
  \time 12/8
  \tempo "Andante" 4.=40
}

scoreBDTenorVoice = \relative c' {
  \globalBD
  \dynamicUp
  % Music follows here.
  \partial 4.
  d4.
  a4. b4(a8) a4. g g4(c8) b(a8) b4. r
}

scoreBDVerse = \lyricmode {
  % Lyrics follow here.
  Wir sin -- gen dir in dei -- nem Herr
}

% Teil 3
globalCA = {
  \key d \major
  \time 3/8
  \tempo "Schnell" 8=130
}

scoreCATenorVoice = \relative c' {
  \globalCA
  \compressEmptyMeasures
  \dynamicUp
  % Music follows here.
  R4.*16
  d8 d d d fs16 e d cs d8
}

scoreCAVerse = \lyricmode {
  % Lyrics follow here.
  Herrscher des Himmels, erhöhre das Lallen
}

globalCB = {
  \key a \major
  \time 3/4
  \tempo "Geschwind" 4=80
}

scoreCBTenorVoice = \relative c' {
  \globalCB
  \dynamicUp
  % Music follows here.
  r4 a8 b cs d e4 e a fs2 fs4 e r
}

scoreCBVerse = \lyricmode {
  % Lyrics follow here.
  Las -- set uns nun ge -- hen nach Beth -- le -- hem
}

globalCC = {
  \key d \major
  \time 4/4
  \tempo "Getragen" 4=60
}

scoreCCTenorVoice = \relative c' {
  \globalCC
  \dynamicUp
  % Music follows here.
  \partial 4
  cs4 cs d8 cs a(e) cs(e) a(d4) cs8 a2\fermata
}

scoreCCVerse = \lyricmode {
  % Lyrics follow here.
  Dies hat er al -- les uns ge -- tan
}

globalCD = {
  \key g \major
  \time 4/4
  \tempo "Ruhig" 4=50
}

scoreCDTenorVoice = \relative c' {
  \globalCD
  \dynamicUp
  % Music follows here.
  b4 c fs, g c c8 b e4(d) e2\fermata
}

scoreCDVerse = \lyricmode {
  % Lyrics follow here.
  Ich will dich mit Fleiß be _ -- wah -- ren
}

globalCE = {
  \key a \major
  \time 4/4
  \tempo "Fröhlich" 4=70
}

scoreCETenorVoice = \relative c' {
  \globalCE
  \dynamicUp
  % Music follows here.
  \partial 4
  a8 b
  cs4 cs8 b a4\fermata
}

scoreCEVerse = \lyricmode {
  % Lyrics follow here.
  Seid _ froh die _ -- weil
}

% Teil 4
globalDA = {
  \key f \major
  \time 3/8
  \tempo "Gemächlich" 8=60
}

scoreDATenorVoice = \relative c' {
  \globalDA
  \compressEmptyMeasures
  \dynamicUp
  % Music follows here.
  R4.*26
  c4 d8 bf4 a8 c(d) ef f f r
}

scoreDAVerse = \lyricmode {
  % Lyrics follow here.
  Fallt mit Dan -- ken, fallt mit Lo -- ben
}

globalDB = {
  \key f \major
  \time 3/4
  \tempo "Getragen" 4=50
}

scoreDBTenorVoice = \relative c' {
  \globalDB
  \compressEmptyMeasures
  \dynamicUp
  % Music follows here.
  R2.*1
  \repeat volta 2 { R2.*3
  f4 c2 c4.(bf8) a4 bf2 a8(bf16 c) c4(bf8 a bf4) a2 r4 R2.*3
  f'4
  }
}

scoreDBVerse = \lyricmode {
  % Lyrics follow here.
  Jesu richte mein Beginnen
}

% Teil 5
globalEA = {
  \key a \major
  \time 3/4
  \tempo "Vivace" 4=100
}

scoreEATenorVoice = \relative c' {
  \compressEmptyMeasures
  \globalEA
  \dynamicUp
  % Music follows here.
  R2. * 16
  r2.
  r8 cs16(d e8) e fs16 e fs8 e r r4 r
  cs8 cs e cs b b cs cs16(b a8) r r4
  r8 gs16(a b8) b cs16(b) cs8 b b4 gs8 e e' e r r4 r
  e8 e b e ds ds e4 b8 r r4
  r8 a16(b cs8) cs d16(cs) d8 e e(d) cs b a e' r r4 r
  e8 cs cs e e e e e16 d cs8 e4 cs8
  a(b16 cs d e) fs8 e d16(cs)
  b8 gs16 a b cs d8 d4~ d8
  cs16 b cs ds e8 fs e ds fs4 ds8 b ds
  e b16 a b8 e, d'16 cs d8 cs e4 cs8 a e'
  fs4~ fs16 e d cs b8 e e e,16(fs gs a) b8 b e e a,4 g8 fs g16 a
  b8 ds4 fs,8 b fs' e4 r8 b4 d8 cs2.~
  cs8 cs16 b cs8 as fs as b fs'4 fs8 ds b fs ds'~ ds16 e fs g a8 fs e2.~ e~ e2~ e16 ds cs b cs8 ds fs4 b, b8 r a r e' r cs a'4 gs a16 gs fs8 fs e4 b b r r
  R2. * 3
  r2.
  r8 cs16(d e8 fs16 gs a8) cs, b e e e e e e e16(d cs8) r r4
  R2. * 3
  r8 a16(b cs8) d16 b cs8 a d cs d d4(cs16 d e8) a, e'16(d e4) e8 d r r4 r
  r8 gs,16 a b8 b b16 a b8 e, r r4 r r8 d'16 e fs8 fs fs16 e fs8 b, d16(cs b8) b b b
  b d16(cs b8) e fs gs e fs(e) d e fs e4 e8 r r4 r2.
  r4 r8 e4 cs8 a(b16 cs d e) fs8 e d16 cs b8 gs16(a b cs) d8 d4~ d8 cs16(b a b cs d e8) e
  e8(d16 cs d e) fs8 fs4~ fs8 e16(d cs8) d e d cs e4 cs8 a cs d d4 cs8 b e e2.~ e8 a,4 e'8 cs a fs'2.~ fs8 fs16(e fs8) ds b ds
  e b4 b8 gs e b' gs8. a16 b cs d8 b a2.~ a~ a2~ a16 gs fs e fs8 gs b4 e e8 r d r a r fs(d'4 cs d16 cs
  b8) b a(e) e'(d) cs4\fermata r8
  e16(d cs8) b a(b cs) d cs cs cs4 r r r2. r4 r8 fs, b4~ b8 fs'(e) a, b cs b4 r r
  r2. r4 r cs8 fs fs4. b,4 e8 e4. a,8 a a gs4 gs8 bs cs ds ds cs16(bs cs8) cs fs e16 ds e4 r r r2.
  r4 r gs,8 a b4. e8 cs fs fs4 r r r2. r8 d4 cs8 b4~ b8 a16 gs a b cs8~ cs16 a b8 a4 r r  r2. r4 r fs'8 d
  b e4 e8 e a, a fs b2~ b8 a gs cs fs, cs' cs fs,16(gs a8) a b a16 gs a4 r r
  \bar "|."
}

scoreEAVerse = \lyricmode {
  % Lyrics follow here.
  Eh -- re sei _ dir, Gott, Eh -- re sei dir, Gott, ge -- sun -- gen,
  Eh -- re sei dir, Gott, Eh -- re sei dir, Gott,
  Eh -- re sei dir, Gott, ge -- sun -- gen,
  Eh -- re sei dir, Gott, Eh -- re sei dir, Gott,
  Eh -- re sei dir, Gott, ge -- sun -- gen _ _,
  dir sei Lob und Dank be -- reit',
  Lob _ _ _ und Dank, Lob _ _ _ und Dank be -- reit',
  dir sei Lob und Dank, Lob _ _ und Dank _ be -- reit',
  dir sei Lob und Dank _ _ _ _ be _ -- reit',
  Lob und Dank be -- reit',
  Lob und Dank be -- reit',
  dir sei Lob und Dank, dir sei Lob, Lob _ _ und Dank be --reit',
  dir sei Lob und Dank, Lob _ _ _ _ und Dank, _ _ _ _
  und Dank be -- reit', dir sei Lob _ _ _ _ _ und Dank be -- reit';
  Eh -- re, Eh -- re sei dir, Gott, ge -- sun -- gen,
  dir sei _ Lob und Dank, dir sei Lob und Dank be -- reit',
  Eh _ _ -- re sei _ dir, Gott, Eh _ _ -- re sei _ dir, Gott, Eh -- re sei dir, Gott, Eh -- re sei dir, Gott, sei dir, Gott, ge -- sun -- gen,
  dir sei Lob und Dank be _ -- reit', Lob und Dank, Lob und
  Dank be -- reit', Lob und Dank be -- reit', dir sei Lob und Dank, Lob und Dank be --reit', dir sei Lob und Dank, Lob und Dank be --
  reit' dir sei Lob und Dank, Lob _ _ _ _ und Dank,  _ _ _ _ und Dank be -- reit', dir sei Lob und Dank be -- reit',
  Dich er -- he -- bet al -- le Welt,
  weil dir un -- ser Wohl ge -- fällt,
  weil an -- heut un -- ser al -- ler Wunsch ge -- lun -- gen, weil uns dein Se -- gen so herr -- lich er -- freut;
  dich er -- he -- bet al -- le Welt,
  weil dir un -- ser _ Wohl _ _ _ ge -- fällt,
  weil an -- heut un -- ser al -- ler Wunsch ge -- lun _ -- gen, weil uns dein Se -- gen so herr -- lich er -- freut.
}

globalEB = {
  \key d \major
  \time 4/4
}

scoreEBTenorVoice = \relative c' {
  \globalEB
  \dynamicUp
  \compressEmptyMeasures
  % Music follows here.
  \partial 2
  d4 r cs r8 as b4 r8 b e e ds e16 fs g8 g e e16 e e8 e r a, d d cs d16 e
  fs8 fs d d16 d d8 d e r
  fs4 r r2 r1 r r2 r8 b, b cs d d d e fs fs r d
  cs4 b8(a) e' e, r4
  r8 fs' fs gs a a g fs g g r e fs b, cs(es) cs4 r8 b~ b d g fs fs fs16 e d8 cs cs a r4
  a8 g fs(g) a a a gs a4 a8 cs d a d4~
  d8 fs e ds e(cs) d(fs) b,2 cs4 r
  R1 * 10
  \bar "|."
}

scoreEBVerse = \lyricmode {
  % Lyrics follow here.
  Wo, wo, wo, wo, wo ist der neu -- ge _ -- bor -- ne Kö -- nig der Jü -- den
  wo ist der neu -- ge _ -- bor -- ne Kö -- nig der Jü -- den? wo,
  wo?
  Wir ha -- ben sei -- nen Stern ge -- se -- hen im Mor -- gen -- lan -- de
  Wir ha -- ben sei -- nen Stern ge -- se -- hen im Mor -- gen -- lan -- de
  sei -- nen Stern ge -- se -- hen im Mor -- gen -- lan -- de
  und sind kom -- men, ihn an -- zu -- be -- ten, ihn an -- zu -- be _ -- ten, ihn an -- zu -- be -- ten.
}

globalEC = {
  \key a \major
  \time 4/4
}

scoreECTenorVoice = \relative c' {
  \globalEC
  \dynamicUp
  % Music follows here.
  \partial 4
  cs8 d
  e4 d8 cs b4(a b) a8 g a4 e'8 d cs2\fermata
  r4 a a gs b8(a) b4 b8(e4) ds8 e4\fermata
  e fs fs fs e e8\((d) e(ds)\) e4\fermata
  e d8(c) d(e) fs4\fermata
  fs8 e d4 e a,\fermata
  a b cs8 ds e2~ e8 cs a cs fs d b e cs2.\fermata
  \bar "|."
}

scoreECVerse = \lyricmode {
  % Lyrics follow here.
  Dein _ Glanz all _ Fin -- ster _ -- nis ver _ -- zehrt,
  die trü -- be Nacht in Licht ver -- kehrt,
  Leit uns auf dei -- nen We _ -- gen,
  dass dein Ge -- sicht
  und _ herr -- lichs Licht
  wir e -- wig _ schau _ _ -- en mö _ _ _ -- gen.
}

globalED = {
  \key a \major
  \time 4/4
}

scoreEDTenorVoice = \relative c' {
  \globalED
  \dynamicUp
  % Music follows here.
  \repeat volta 2 {
    cs4 b a8(b) cs(d) e(b) b4 b8.(a16) g4\fermata
    b8 cs d e a,4 e a4. gs8 cs2
  }
  e4 e8(ds) e(d) cs(b) a(b) cs(ds) e4 e\fermata
  as,8(b) b4 a a a8 b gs d' cs b cs4\fermata
  \bar "|."
}

scoreEDVerse = \lyricmode {
  % Lyrics follow here.
  <<{ Zwar ist sol -- che Her -- zens -- stu -- be wohl _ kein _ schö -- ner Fürs -- ten -- saal }\new Lyrics{Son -- dern ei -- ne fin -- stre Gru -- be;
  Doch _ so _ -- bald dein Gna -- den -- strahl }>>
  In den -- sel -- ben nur wird blin -- ken,
  wird es vol -- ler Son _ -- nen _ dün _ -- ken.
}

% Teil 6
globalFA = {
  \key d \major
  \time 3/8
  \tempo "Vivace" 4=100
}

scoreFATenorVoice = \relative c' {
  \globalFA
  \compressEmptyMeasures
  \dynamicUp
  % Music follows here.
  \partial 8
  r8
  R4. * 47
  r8 r a d4 a8 e'4 a,8 fs' e16 fs g e g(fs e d) fs(d)
  e(d cs b) d(b) e8 d16 cs b cs a4.~ a~ a8 cs e d(e16 d) e cs d8 fs a~ a a,16 cs b a
  gs8 e gs a d4 e16 fs g e a8 d,16(e fs8) a, a e' e fs cs cs fs fs a, d4 a8
  e'4 a,8 fs' e16 fs g e g(fs e d) fs(d) fs(e d cs) e(cs) e(d cs b) d(b) e8 d16 cs b cs a4.~ a~
  a8 cs e d4 cs8 d fs a a a, cs gs e gs a d e e16(fs g e) a8 d,16 e fs8 a,~
  a e' e fs cs cs fs a, r R4.*3 r8 r gs a4 fs'8
  gs,4 e'8 fs, gs a gs16 fs gs a b8 e, e' e e16 d cs d e8 a, d cs d c16 b c d b8 r c
  c(b16 a) b8 b a g cs d e d4 d8~ d cs16 b cs8 d a a a a cs
  fs, d g a d, d'16 e fs8 g a e16(d cs b) cs8 d a e' d gs, b e fs e
  cs r r R4.*7
  r8 r b e4 e8 e cs16(d e8) as, b cs e16(d) fs(e d cs) fs(es) gs(fs e ds) gs4.~ gs16 fs a(gs fs es)
  fs8 cs es fs e16 ds e8 ds fs a a g16 fs e fs b,4 b8 cs e g fs e16 d cs d e8 d fs
  b, r fs b4 b8 b gs16 a b8 e,(fs) gs a a e' fs(cs) fs fs(ds) fs fs(e) b
  b g fs e g b e cs e e(d) a a fs b b4.~ b16 cs d8 e fs g fs
  d r r r2. r8 cs cs fs b, fs' d4 r8 R4.*3
  r8 r d fs4 fs8 e4 e8 d4 cs8 d a r R4.*3^"d"
    r8 r a d4 a8 e'4 a,8 fs' e16 fs g e g(fs e d) fs(d)
  e(d cs b) d(b) e8 d16 cs b cs
  a8 cs cs d4 d8 a cs e d4 cs8 a a r R4.*3
  r8 r b cs(fs16 e) d(cs) a8(d) cs b e4~ e8 d16 cs d8 d cs fs b, e16 d cs b
  a8(d) cs d4 e8 cs c4 b8 cs d cs16 d e8 fs~ fs b, e~ e a, d g, a b
  e d e d d, g a d, d'16 e fs8 g a e a, cs d a e' d gs, b
  e fs e cs r r r4. r8 b b e a, e' cs4 e8 a, r c fs, fs' ds
  ds(e) b b b b b r e, a e' cs cs(d) a a a a g d' g
  fs b, fs' b, fs' g fs4 a,8 e'4 e8 e(cs) cs cs(d) e d4 fs,8
  bf d d e4 e8 d b e d r r d f16 e f8 f r r fs e16 d e8 fs4\fermata
  \bar "|."
}

scoreFAVerse = \lyricmode {
  % Lyrics follow here.
  Herr, wenn die stol -- zen Fein _ _ -- de _ schnau _ _ _ _ _ _ _ _ _ -- ben,
  die stol -- zen _ Fein _ _ _ _ _ _ _ -- de,
  Herr, wenn die stol _ _ _  -- zen Fein -- de schnau -- ben,
    die Fein _ -- de schnau -- ben,
    so gib, dass wir im fe _ -- sten Glau _ _ _ _ _ _ _ _ -- ben, _ im _ fe _ -- sten Glau -- ben, gib, _ dass wir _ im fe _ -- sten Glau -- ben, im fe -- sten Glau _ _ _ -- ben, im fe _ -- sten Glau -- ben
    XXXXXXXXXXnach dei -- ner Macht und Hül -- fe sehn, nach dei -- ner Macht und Hül -- fe sehn, nach
    dei -- ner Macht und Hül -- fe sehn, nach dei -- ner Macht und Hül -- fe, so
    gib, dass wir im fe -- sten Glau -- ben nach dei -- ner Macht und Hül -- fe sehn!oneonesix
  Wir wo -- len dir al -- lein ver -- trau -- en, so kön -- nen wir den schar -- fen Klau -- en des Fein -- des un -- ver -- sehrt ent -- gehn;
  wir wol -- len dir al -- lein ver -- trau -- en, wir wol -- len dir al -- lein ver --
  trau -- en, so kön -- nen wir den schar -- fen Klau -- en des Fein -- des un -- ver -- sehrt ent --
  gehn, un -- ver -- sehrt ent -- gehn.
  Herr, wenn die stol -- zen Fein -- de schnau -- ben,
  Herr, wenn die stol -- zen Fein -- de schnau -- ben, so gib, dass wir im fe -- sten Glau -- ben
  nach dei -- ner Macht und Hül -- fe sehn, nach dei -- ner Macht und Hül -- fe
  sehn, so gib, dass wir im fe -- sten Glau -- ben nach dei -- ner Macht und
  Hül -- fe sehn, dass wir im fe -- sten Glau -- ben nach dei -- ner Macht und
  Hül -- fe sehn, dei -- ner Hül -- fe sehn, Herr, wenn die stol -- zen
  Fein -- de schnau -- ben, so gib, dass wir im fe -- sten Glau -- ben nach dei -- ner
  Macht und Hül -- fe sehn, so gib, dass wir im fe -- sten Glau -- ben
  nach dei -- ner Macht und Hü -- lfe sehn, nach dei -- ner Macht und Hül -- fe sehn!
}

globalFB = {
  \key g \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreFBTenorVoice = \relative c' {
  \globalFB
  \dynamicUp
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    b4
    b e e8(d) d4 e8(c) a(d) d4\fermata e d g,8(a) b(c) d4 d(c8 b) b4
  }
  \partial 4
  d
  d d8(c) b(c) fs,(b) b(a) a(g) fs4\fermata
  fs g8(a) b(c) b(a) g4 g fs8 e fs4\fermata
  e8 fs g4. a8 b(c) d4~ d(c8 b) b4\fermata
  \bar "|."
}

scoreFBVerse = \lyricmode {
  % Lyrics follow here.
  \repeat volta 2 { <<{Ich steh an dei -- ner Krip -- pen hier, o Je -- su -- lein, mein Le -- ben;}{\new Lyrics{ich kom -- me}}>> }
                       Nimm hin
}

globalFC = {
  \key d \major
  \time 4/4
}

scoreFCTenorVoice = \relative c' {
  \globalFC
  \dynamicUp
  % Music follows here.
  \partial 4
  r4
  r1
  \repeat volta 2 { R1*10
  r2 r4 a b8 cs d4 g, a b8(g e a) a4 r
  r1 r2 r4 fs' fs d8(fs) g(e) fs(cs) d4 r r2 r1
  }
  R1*2 r2 r4 e e d d e8 cs fs4.(b,) fs4 r r1 r4 d' d d b b8(as) as4 r r1 r
  r2 r4 e' e4. b8 a4. a8 a(b gs4) a r
  R1*4 r2 r4 d d8 cs16 b a4 a a a1 R1*9 r2 r4\fermata
  \bar "|."
}

scoreFCVerse = \lyricmode {
  % Lyrics follow here.
  \repeat volta 2 { <<{Nun seid _ ihr wohl ge -- ro -- chen an eu -- rer Fein -- de Schar} \new Lyrics{denn Chris -- tus hat zer -- bro -- chen, was euch zu -- wi -- der war. }>> }
                    Tod, Teu -- fel, Sünd und Höl -- le sind ganz und gar ge -- schwächt;
                    bei Gott hat sei -- ne Stel -- le das mensch -- li -- che Ge -- schlecht.
}