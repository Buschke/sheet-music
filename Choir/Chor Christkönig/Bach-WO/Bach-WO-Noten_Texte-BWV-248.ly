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
  \repeat segno 2 {
    R4.*32^"Nr. 1 Chor"
  d8^"A" d d d a r r4. r8 r a a d16 a fs d a'8 a r r fs' d
  r r d d a r r4. d8^"B" d d d cs16 b cs d
  e8 e e e d16 cs d8 d d d d d e a,16 b cs8 d e a,16 b b16.\trill(a64 b cs8)^"C" cs ds
  e e d d g g fs fs r r a,16 b b16.\trill(a64 b cs8) e gs a a, a'
  g c, c b(a g fs) d r r a'16 cs b16.\trill(a64 b cs8) e b b b r b e g
  g^"D"(as, b e) as, as b fs cs' fs fs d~d b fs' b, b b
  b a b e4 e8 fs a, cs b b ds e e b
  a a r d^"E" b e fs16(e d cs b a e'8) d d
  cs b e cs4 r8
  d^"F" d d d a r
  r1.
  r8 r a a d16 a fs d a'8 a r
  r fs' d r r d d a r r1.
  d8 d d d cs16 b cs d e8 e e e8 d16 cs d8 d d d d d e a,16 b cs8 d e4 r8
  r^"G" b16 cs cs16.\trill(b64 cs d8) cs b a a a' a e b b d r r
  d16 e e16.\trill(d64 e64 fs8) fs e e b e a,
  a16 b b16.\trill(a64 b) cs16 d e8 a, r
  g16 a a16.\trill(g64 a b8) b e a, d16 cs d8 e e e fs^"H" ds e fs ds ds e b b b e g
  g e b e cs e e d e a,4 d8 d b fs' e b b a a e' d a r g e a b16 a g fs e d a'8. d16 cs8 a d e fs4.\fermata
  fs8^"I"\mf e16 d cs b cs8 fs fs
  fs b, e e16 d e fs e fs d cs b8 r e d16 cs b a gs8 a16 b cs b as8 b r g' fs16 e d cs b8 cs16 d e8~e a, r r4.
  e'8 d16 cs b a b8 b e e d16 cs d8(d) cs16 b cs8 d^"K" a r
  e' d16 cs b a d cs d8 d d16 cs b a b cs
  d4.~d8 e g fs16 g fs e d fs e fs e d cs8~cs b16 as b8 e16 d cs b cs as b8 b r
  cs d16 cs b as b8 fs'16 g fs e d e cs e d cs b8 cs b d e cs d d r r4. R4.*14
  fs8^"L"\f d fs e gs, gs e' e e e e r e e e e e e fs a, a a fs' e d16 cs b cs d8 e16 fs g fs e g fs8 fs, cs' b gs cs es fs d cs b cs cs cs cs a4 a8
  \volta 2 \fine
  \bar "|."
  }
}

scoreAAVerse = \lyricmode {
  % Lyrics follow here.
  Jauch -- zet, froh -- lo -- cket, auf, prei -- set _ die _ Ta -- ge,
  Jauch -- zet, froh -- lo -- cket,
  Jauch -- zet, froh -- lo -- cket, _
  auf, _ prei -- set _ die Ta _ -- ge,
  Rüh -- met, was heu -- te der Höchs _ -- te ge -- tan,
  Las _ _ -- set das Za -- gen, ver -- ban -- net die Kla -- ge,
  Las _ _ -- set das Za -- gen, ver -- ban -- net die Kla -- ge,
  Las _ _ -- set das Za -- gen,
  Las -- set das Za -- gen,
  ver -- ban -- net die Kla -- ge,
  Las -- set das Za -- gen,
  ver -- ban -- net die Kla -- ge,
  Las -- set das Za -- gen,
  ver -- ban -- net die Kla -- ge,
  Stim -- met voll Jauch -- zen und Fröh -- lich -- keit an.
  Jauch -- zet, froh -- lo -- cket, auf, prei -- set _ die _ Ta -- ge,
  Jauch -- zet, froh -- lo -- cket, 
  Jauch -- zet, froh -- lo -- cket, _ auf, _
  prei -- set die Ta _ _ -- ge, rüh -- met, was heu -- te der Höch _ -- ste ge -- tan!
  Las _ _ -- set das Za -- gen, ver -- ban -- net die Kla -- ge,
  las _ _ -- set das Za -- gen, ver -- ban -- net die Kla -- ge,
  las _ _ -- set das Za -- gen, ver -- ban -- net die Kla -- ge,
  las _ _ -- set das Za -- gen, ver -- ban -- net die Kla _ -- ge,
  las -- set das Za -- gen, ver -- ban -- net die Kla -- ge,
  las -- set das Za -- gen, ver -- ban -- net die Kla -- ge,
  stim -- met voll Jauch _ _ _ _ _ _ -- zen und Fröh -- lich -- keit an!
  Die -- net _ dem _ Höchs -- ten mit herr -- li -- chen Chö _ _ _ _ _ _ _ -- ren,
  die -- net _ dem _ Höchs _ _ _ _ _ -- ten,
  die -- net _ dem _ Höchs _ _ _ -- ten,
  die -- net _ dem _ Höchs -- ten mit herr _ _ _ -- li _ -- chen Chö -- ren,
  die -- net _ dem _ Höchs _ -- ten mit herr _ _ _ _ _ _ -- li -- chen Chö _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -- ren,
  die -- net _ dem _ Höchs _ _ _ _ _ _ _ _ _ _ _ -- ten mit herr -- li -- chen Chö -- ren!
  Lasst uns den Na -- men des Herr -- schers ver -- eh -- ren.
  lasst uns den Na -- men des Herr -- schers ver -- eh _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ -- ren,
  lasst uns den Na -- men des Herr -- schers ver -- eh -- ren.
}

globalAB = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4=60
}

scoreABTenorVoice = \relative c' {
  \globalAB
  \compressEmptyMeasures
  \dynamicUp
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    gs4^"Nr. 5 Choral"
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
  <<
    {
      Wie soll ich dich emp -- fan -- gen
      Und wie _ be -- gegn' ich _ dir,
    } \new Lyrics {
      O al -- ler Welt Ver -- lan -- gen,
      O mei _ -- ner See -- len _ Zier,
      O Je _ -- su, Je -- su, set -- ze
      Mir selbst die Fa -- ckel bei,
      Da -- mit _ was dich _ er -- göt -- ze,
      Mir kund und wis -- send _ sei!
    }
  >>
}

globalAC = {
  \key d \major
  \time 4/4
  \tempo "Andante" 4=60
}

scoreACTenorVoice = \relative c' {
  \globalAC
  \compressEmptyMeasures
  \dynamicUp
  % Music follows here.
  \partial 4
  fs4^"Nr. 9 Choral"\mf
  e d cs d8 cs b a g4 a r r1
  r4 a d d cs c8 b a4 a a r r2
  r2 r4 a
  a gs a8 d cs b a cs fs e cs4 r r1 r4 d8(b) b(a) a(g) a4 g8 fs e4 a8(g) fs4 r r2 r1 r2 r4\fermata\bar "|."
}

scoreACVerse = \lyricmode {
  % Lyrics follow here.
  Ach, mein herz -- lie -- bes _ Je _ -- su -- lein,
  Mach dir ein rein sanft _ Bet -- te -- lein,
  Zu ruhn in mei _ -- nes _ Her _ -- zens _ Schrein,
  Dass ich nim -- mer ver _ -- ges -- se dein.
}

% Teil 2
globalBA = {
  \key g \major
  \time 4/4
  \tempo "Andante" 4=80
}

scoreBATenorVoice = \relative c' {
  \globalBA
  \compressEmptyMeasures
  \dynamicUp
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    b8^"Nr. 12 Choral"
    b8 c~ c d b a a4 a a\fermata
    b8(a) g(a) b(c) d4 d d4.(c8) b4\fermata
  }
  \partial 4
  d8(e)
  fs(e) d4 e fs b, e8(d) c4\fermata
  g8(a) b(c) d(e) c4 cs b b b\fermata
  d d g g,8(a) b4 e8(d e cs) d4\fermata
  d d8(c) c(b) b(a) g4 g8(fs16 e fs8) b4\fermata\bar "|."
}

scoreBAVerse = \lyricmode {
  % Lyrics follow here.
  <<{Brich an, _ o schö -- nes Mor -- gen -- licht, und lass den Him -- mel ta -- gen!} \new Lyrics {Du Hir -- ten --volk, er -- schre -- cke nicht, weil dir die En --gel sa -- gen:} >>
     dass die -- ses schwa -- che Knä -- be -- lein soll un -- ser Trost und Freu -- de sein, da -- zu den Sa -- tan zwin -- gen und letzt -- lich Frie -- den brin -- gen.
}

globalBB = {
  \key c \major
  \time 4/4
  \tempo "Langsam" 4=40
}

scoreBBTenorVoice = \relative c' {
  \globalBB
  \compressEmptyMeasures
  \dynamicUp
  % Music follows here.
  \partial 4
  e4^"Nr. 17 Choral"
  d4. c8 b4 c8 b a g f4 g\fermata
  a a8(b) c4 b8(a) g(a) bf4. a8 g4\fermata
  c8(b) a(g) f4 f g8(f) e(c) c'4 c\fermata
  e e8(b) c4 b a8(b) c(a) d,(g) e4\fermata\bar "|."
}

scoreBBVerse = \lyricmode {
  % Lyrics follow here.
  Schaut hin, dort liegt im _ fins _ -- tern Stall,
  des Herr -- schaft ge -- het ü -- ber -- all.\fermata
  Da Spei -- se vor -- mals sucht' ein Rind, da ru -- het jetzt der Jung -- fraun Kind.
}

globalBC = {
  \key g \major
  \time 4/4
  \tempo "Vivace" 2=80
}

scoreBCTenorVoice = \relative c' {
  \globalBC
  \compressEmptyMeasures
  \dynamicUp
  % Music follows here.
  b8^"Nr. 21 Chor" c d b c b c b16 c d8 c b a g4 c~ c b8 a g4 e'~e d8 cs b4 e8 d cs a fs' e16 d e2~e8 d16 cs d8 b e cs a a d4 a'8 a a a, d e16 fs e4. e8 d b a4
  a^"M" r b e~e d8 c b c d4~d c8 b a4 d~d8 c d b c16 e fs g fs8 e
  ds b e8 fs16 g fs2~fs8 e16 ds e8 ds16 e fs8 ds e b a a'4 fs8 b, c16 d e8 d c d16 c b8 c16 b a4 r
  b^"N" e2 d8 c b4 gs'8 e e d c4~c8 b a4 r2 a4 fs'2 e8 d cs b16 as b4. as16 gs as8 b16 cs d4. cs16 d e4 d8 d d4 cs8 cs cs4 b~b8 b as as b8. cs16 as4
  b^"O" r8 ds\p e4(fs8 e ds4 e2) d8 d b b e2(d4~d c b) b8 b a4 a8 f' bf,2(a g8f) e a a4 a r2
  r1^"P" r4 d8\f c b c d b e d16 c b8 e cs16 b cs d e d cs b a g a b cs8 a r4 d8 c b c d b e d16 cs b8 e cs16 b cs d e d cs b a4~a16 b cs a fs8 fs r d' d(g4) b,8 c^"Q" c c b a b c a d c16 b a8 d b16 a b c d c d b e d e fs g fs e d c b c d e d c b a g a b c b a g d' a d4 cs8
  d4 r8 d d e f d c b16 a g8 c e4. ds16 e fs4~fs16 g fs e ds cs ds e fs e ds cs
  b8 e16 fs ds4 e8 b e4~e4. e8 d c16 b a b c a d4~d16 e f d g4. b,8
  c4^"R" r a d~d c8 b a4 a~a g8 f e4 c'~c b8 a g e'4 d16 c
  d8 fs, g4. fs16 e fs8 g16 a b4. a16 b c4 b8 b b4 a8 a b c16 d e4~e8 a, a a g(e' d4)
  d8^"S" g,\p d'2 c4~c b2 a8 a d4 d8 g, e'2 d c4 c8 c d4 d r c8\f b a b c e d a d4~d16 e d c b2 bf4~bf a4. g8 a b16 c b1\fermata\bar "|."
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
  \compressEmptyMeasures
  \dynamicUp
  % Music follows here.
  \partial 4.
  d4.\ff^"Nr. 23 Choral"
  d d4(cs8) d4(c8) c4(b8) b4(a8) d4. d r
  r1.
  r4. d4. e fs4(g8) d4. d4(e8) a,4(b8) c8.(e16 ds8)
  e4. r4. r2.
  r2. r4. e e4(d8) c4. b4(cs8) d4. g,4(d'8) d4(cs8) fs4. r
  r1.
  r4. e e4(d8) d4(c8) c4(b8) c4(b8) c4(d8) e4(d8) b4. r r2. r1.\fermata\bar "|."
}

scoreBDVerse = \lyricmode {
  % Lyrics follow here.
  Wir sin -- gen dir in dei -- nem Herr
  aus al -- ler Kraft Lob, Preis und Ehr'.
  dass du, o lang' ge -- wünsch -- ter Gast,
  dich nun -- mehr ein -- ge -- stel --let hast.
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
  R4.*16^"Nr. 24 Chor"
  d8^"T" d d d fs16 e d cs d8 cs16 b a g fs8 e16 d a'8 a4.~a~a16 gs a b cs d e g fs e d cs d4.~d~d~d~d~d~d8 d d d4 a8
  a^"U" a a d fs d cs e b b e fs e b e a, cs16 b cs d e8 d a a fs' e d e e e e e fs e e e4 r8
  r^"V" r fs cs16 b a b cs d e8 a, a a4.
  R4.*16
  e'8^"W" e e cs d16 cs b a d8 e fs b, cs16 d e cs d4.~d~d16 cs d e fs g a8 a, gs a4.~a~a8 a a a4.~a~a8 a a a4.~a16 gs a8 e
  e'^"X" e e e cs cs cs a g d' g e d a a a d fs fs d d d e a, d b g' e a, d a e a a4 r8 r r d fs a g fs d16 cs d e fs4\fermata\bar "|."
}

scoreCAVerse = \lyricmode {
  % Lyrics follow here.
  Herr -- scher des Him -- mels, _ er _ -- höh -- re _ das _ Lal _ -- len,
  er hö _ _ _ _ _ _ _ _ _ _ _ _ -- re das Lal -- len,
  Herr -- scher des Him -- mels, er -- höh -- re das Lal _ -- len,
  lass dir die mat -- ten _ Ge _ --sän -- ge ge -- fal _ -- len, wenn dich dein Zi -- on mit Psal -- men er -- höht,
  mit Psal _ _ _ _ _ _ -- men er -- höht!
  Hö -- re der Her -- zen _ froh _ -- lo -- cken des Prei _ _ _ _ _ _ _ _ _ _ _ -- sen,
  der Her -- zen froh -- lo -- cken des Prei _ _ -- sen,
  Hö -- re der Her -- zen froh -- lo -- cken des Prei _ -- sen,
  wenn wir dir je -- tzo die Ehr -- furcht er -- wei _ -- sen, weil uns -- re Wohl -- fahrt be -- fe -- sti -get steht,
  be -- fe _ _ _ -- sti _ -- get _ steht.
}

globalCB = {
  \key a \major
  \time 3/4
  \tempo "Geschwind" 4=80
}

scoreCBTenorVoice = \relative c' {
  \globalCB
  \compressEmptyMeasures
  \dynamicUp
  % Music follows here.
  r4 a8\f^"Nr. 26 Chor" b cs d e4 e a, fs'2 fs4 e r a8 g fs e d4 d r cs8 d e fs gs4 gs r
  a,8^"Y" b cs d e4
  as,4. cs8 fs e d cs b cs d4 d r r a8 b cs d e d cs b e2~e8 ds cs b a4
  b^"Z" gs cs~cs8 b cs4. fs,8 cs' as b4 es8 fs gs4 cs, r r cs fs~fs8 e fs4. gs16 a gs4 gs, r8 fs b4 r r8 b e4 r8 cs a' cs, bs ds gs, gs gs'4 fs8 r r cs fs e ds4 r8 gs, a b cs cs16 bs cs8 ds bs4\bar "||"
  \time 4/4 cs4 r^"Nr. 27 Rezitativ" r2 R1*7\fermata\bar "|."
}

scoreCBVerse = \lyricmode {
  % Lyrics follow here.
  Las -- set uns nun ge -- hen gen Beth -- le -- hem,
  las -- set uns nun ge -- hen,
  las -- set uns nun ge -- hen,
  las -- set uns nun ge -- hen
  gen Beth -- le -- hem,
  gen Beth _ -- le -- hem
  las -- set uns nun ge _ -- hen,
  gen Beth _ _ _ -- le -- hem
  und die Ge -- schich -- te se _ -- hen,
  die Ge -- schich -- te,
  und die Ge -- schich -- te _ se -- hen,
  die da, die da ge -- sche --hen ist,
  die uns der Herr kund -- ge -- tan _ hat,
  die uns der Herr kund _ -- ge - tan hat.
}

globalCC = {
  \key d \major
  \time 4/4
  \tempo "Getragen" 4=60
}

scoreCCTenorVoice = \relative c' {
  \globalCC
  \compressEmptyMeasures
  \dynamicUp
  % Music follows here.
  \partial 4
  cs4^"Nr. 28 Choral" cs d8(cs) a(e) cs(e) a(d4) cs8 a2\fermata
  fs'4 e d e e8(fs4) e16(d) cs4\fermata
  a fs'8(e) e4 e e8(b) cs(e) b(a) gs4\fermata
  a8(fs) gs4 a gs a a8(gs) fs b cs(d e4 fs e2) d4~d cs8(b) cs4\fermata\bar "|."
}

scoreCCVerse = \lyricmode {
  % Lyrics follow here.
  Dies hat er al -- les uns ge -- tan,
  sein' groß Lieb zu zei -- gen an; des freu sich al -- le Chri -- sten -- heit, und dank ihm des in E -- wig _ -- keit. Ky -- rie -- leis!
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
  b4^"Nr. 33 Choral" c fs, g c c8 b e4(d) e2\fermata
  g8(f) e4 e2\fermata
  e4 d d2\fermata
  a4 b c d e(d8 c) b2\fermata
  c4 g fs g g8(f) g(a) g4(e') e2\fermata
  d8(c) b4 a2\fermata
  g8(a) b(g) d'2\fermata
  b8(c) d4 e8(fs) g4 d8(c16 b c4) b2\fermata\bar "|."
}

scoreCDVerse = \lyricmode {
  % Lyrics follow here.
  Ich will dich mit Fleiß be _ -- wah -- ren,
  ich will dir le -- ben hier, dir will ich ab -- fah -- ren.
  Mit dir will ich end -- lich schwe -- ben vol -- ler Freund, oh -- ne Zeit dort im an -- dern Le -- ben.
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
  a8^"Nr. 35 Choral" b
  cs4 cs8(b) a4\fermata
  b cs cs8(b) a4\fermata
  a b cs cs\fermata
  cs cs d d8(e16 fs) e8(d) cs4 b8(a) d(cs) cs(d) d(b gs cs) a4\fermata
  a b8(cs) ds4 cs\fermata
  cs fs, b b\fermata
  cs cs8(a) d4 d8(b) e4 e8(cs) fs(e) d(cs) ds4 cs8(gs cs b) a4\fermata\bar "|."
}

scoreCEVerse = \lyricmode {
  % Lyrics follow here.
  Seid _ froh die -- weil, seid froh, die -- weil dass eu -- er Heil ist hie ein Gott und auch ein Mensch ge -- bo -- ren, der wel -- cher ist der Herr und Christ in Da -- vids Stadt, von vie -- len aus -- er -- ko -- ren. 
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
  R4.*24^"Nr. 36 Chor"
  c4 d8 bf4 a8 c(d) ef f f r
  r4.*2 d8 ef f f(ef d c4) a8 f'4 c8
  bf(a g e' f) bf, c4 d8 bf4 a8 c(d) ef f f r f c4 f,8 a c
  c(bf) d c4. r4.^"A" r
  c4 bf8 c4 c8 c4 d8 a4 bf8
  a(bf) c
  d c16 d bf8 f'4 f8 e4.~e4 e8
  d4.~d c4.~c8 d e d4 r8
  c4^"B" c8 c b c c4 c8
  c4.~c~c~c~c~c~c8 b c d4.~d8 e f
  g4 a8 g f e g f bf, a c r c f d d c c e d f e4 r8
  R4.*15 r4.
  c4^"C" c8 g'4. a,8 bf d d4 cs8 d16 e f8 e d g f g g, bf e, d' cs a4^"D" a8 a4 a8 bf16 a bf c a c bf c d c b a
  g4 g8 g g g a16 g a bf g bf a bf c bf a g f8 e d g a g a4 a8 d, a' d bf8. a16 bf g a8 d16 cs d8 d cs4 d r8 r4. R4.*15
  d4^"E" d,8 g f e a g g g f g c4 b8 a d e d gs, a b4 b8 a^"F" c e a,4 a8 d16 cs d e cs e d e f e d c b8 g d' g, g g c16 b c d b d c d e d c b a8 c a a e' d bf d g, a4.~a8 b c d d c
  f e d c4 r8 c4^"G" d8 bf4 a8 r4. r
  c8 d ef f f r r4. r bf,4 c8 c d e c bf d c4 r8
  e^"H" f g g f e f e f~f e f g f e e f g a, bf c~c bf a g4 c8 c d e f4 f8 f f r
  d c d d4 d8 c4 c8 c4 r8
  e4^"I" f8 bf,4 a8 c4 bf8 c4 c8 r4. r4.
  a8 bf c d c16 d bf8 f'4 f8 e4.~e4 e8 d4.~d c~c8 d d c4 r8
  c4^"K" d8 d cs a f' ef ef f f r
  bf, c d d c bf a bf c~c bf a d ef f f ef d c d ef~ef d c bf4 g8 ef' c d bf4 d8 c e r c bf c bf c a d c bf a4 r8
  R4.*16\bar "|."
}

scoreDAVerse = \lyricmode {
  % Lyrics follow here.
  Fallt mit Dan -- ken, fallt mit Lo -- ben,
  fallt _ mit Dan -- ken, fallt mit Lo -- ben,
  fallt mit Dan -- ken, fallt mit Lo -- ben
  Vor des höchs _ -- ten Gna -- den -- thron!
  Fallt mit Lo -- ben, fallt mit Dan -- ken, 
  Fallt mit Lo -- ben, _ _ vor des Höch -- sten Gna -- _ den - Thron,
  fallt mit Dan _ -- ken, 
  fallt mit Lo _ _ _ _ -- ben,
  fallt mit Dan _ -- ken, 
  fallt _ mit Lo -- ben,
  vor _ des höch _ -- sten Gna -- _ den -- thron!
  Got -- tes Sohn
  will _ der Er -- den
  Hei _ _ -- land und _ Er -- lö  _ -- ser wer _ -- den,
  Hei -- land und _ Er -- lö  _ _ _ _ _ _ _ _ _ _ _ -- ser wer -- den,
  Er -- lö  _ _ _ _ _ _ _ _ _ _ _ _ _ -- ser wer _ -- den,
  Got -- tes Sohn
  dämpft der Fein _ _ _ _ -- de _ Wut und To -- ben.
  Got _ _ _ -- tes Sohn
  will der Er _ -- den
  Hei -- land und _ Er -- lö _ -- ser wer -- den,
  Hei _ -- land und Er -- lö _ _ _ _ _ _ _ _ _ _ _ _ _ -- ser wer -- den,
  Er -- lö _ _ _ _ _ _ _ _ _ _ _ _ _ -- ser wer _ -- den,
  Got _ -- tes Sohn
  dämpft der Fein -- de Wut und To _ -- ben.
  Fallt mit Dan -- ken,
  fallt _ mit Lo -- ben,
  vor des höch _ -- sten Gna -- _ den -- thron,
  fallt _ mit Dan _ _ _ _ _ _ -- ken, 
  fallt _ mit Lo _ _ _ _ _ _ -- ben,
  fallt mit Dan _ -- ken, 
  fallt mit Lo -- ben,  
  vor _ des Höch -- sten Gna -- den -- thron,
  fallt mit Dan -- ken, 
  fallt mit Lo -- ben,
  fallt _ mit Lo -- ben, _ _
  vor des Höch -- sten Gna _ _ -- den -- thron! 
  Fallt mit Dan _ -- ken, 
  fallt _ mit Lo -- ben,
  fallt _ mit Dan _ _ _ _ _ _ -- ken, 
  fallt _ mit Lo _ _ _ _ _ _ -- ben,
  fallt mit Dan _ -- ken, 
  fallt mit Lo -- ben,
  vor _ des Höch _ -- sten Gna -- den _ -- thron!
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
  R2.*1^"Nr. 42 Choral"
  \repeat volta 2 {
    R2.*3
    f4 c2 c4.(bf8) a4 bf2 a8(bf16 c) c4(bf8 a bf4) a2 r4 R2.*3
    f'4 d2 c8(bf a4) a d8 c c2 c2. r2.
  }
  R2.*4
  c2 e4 c2 bf4~bf a d8(c) bf4(a8 g a4) a2 r4
  R2.*3
  bf4.(g8) c4 c2 g4 f2 d'4 g,(c bf) a2 r4
  R2.*3 r2.\fermata\bar "|."
}

scoreDBVerse = \lyricmode {
  % Lyrics follow here.
  <<{Je -- sus rich -- te mein Be -- gin -- nen,
  Je -- sus blei -- be stets _ bei mir, } \new Lyrics {
  Je -- sus zäu -- me mir die Sin -- nen,
  Je -- sus sein nur mein _ Be -- gier, }>>
  Je -- sus sei mir in Ge -- dan -- ken,
  Je -- su, las -- se mich nicht wan -- ken.
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
  \repeat segno 2 {
    R2.*16^"Nr. 43 Chor"
  r2.^"K"
  r8 cs16(d e8) e fs16 e fs8 e r r4 r
  cs8 cs e cs b b cs cs16(b a8) r r4
  r8 gs16(a b8) b cs16(b) cs8 b b4 gs8 e e' e r r4 r
  e8^"L" e b e ds ds e4 b8 r r4
  r8 a16(b cs8) cs d16(cs) d8 e e(d) cs b a e' r r4 r
  e8 cs cs e e e e e16 d cs8 e4 cs8
  a^"M"(b16 cs d e) fs8 e d16(cs)
  b8 gs16 a b cs d8 d4~ d8
  cs16 b cs ds e8 fs e ds fs4 ds8 b ds
  e b16 a b8 e, d'16 cs d8 cs e4 cs8 a e'
  fs4~ fs16 e d cs b8 e e e,16(fs gs a) b8 b e e a,4 gs8 fs gs16 a
  b8^"N" ds4 fs,8 b fs' e4 r8 b4 d8 cs2.~
  cs8 cs16 b cs8 as fs as b fs'4 fs8 ds b fs ds'~ ds16 e fs gs a8 fs e2.~ e~ e2~ e16 ds cs b cs8 ds fs4 b, b8^"O" r a r e' r cs a'4 gs a16 gs fs8 fs e4 b b r r
  R2. * 3
  r2.^"P"
  r8 cs16(d e8 fs16 gs a8) cs, b e e e e e e e16(d cs8) r r4
  R2. * 3
  r8^"Q" a16(b cs8) d16 b cs8 a d cs d d4(cs16 d e8) a, e'16(d e4) e8 d r r4 r
  r8 gs,16 a b8 b b16 a b8 e, r r4 r r8 d'16 e fs8 fs fs16 e fs8 b, d16(cs b8) b b b
  b d16(cs b8) e fs gs e fs(e) d e fs e4 e8 r r4 r2.^"R"
  r4 r8 e4 cs8 a(b16 cs d e) fs8 e d16 cs b8 gs16(a b cs) d8 d4~ d8 cs16(b a b cs d e8) e
  e8(d16 cs d e) fs8 fs4~ fs8 e16(d cs8) d e d cs e4 cs8 a cs d d4 cs8 b e e2.^"S"~ e8 a,4 e'8 cs a fs'2.~ fs8 fs16(e fs8) ds b ds
  e b4 b8 gs e b' gs8. a16 b cs d8 b a2.~ a~ a2~ a16 gs fs e fs8 gs b4 e e8^"T" r d r a r fs(d'4 cs d16 cs
  b8) b a(e) e'(d) cs4\fermata r8
  e16(d cs8) b a(b cs) d cs cs cs4 r r r2. r4^"U" r8 fs, b4~ b8 fs'(e) a, b cs b4 r r
  r2. r4 r cs8 fs fs4. b,4 e8 e4. a,8 a a gs4 gs8 bs cs ds ds cs16(bs cs8) cs fs e16 ds e4 r r r2.
  r4^"V" r gs,8 a b4. e8 cs fs fs4 r r r2. r8 d4 cs8 b4~ b8 a16 gs a b cs8~ cs16 a b8 a4 r r  r2. r4^"W" r fs'8 d
  b e4 e8 e a, a fs b2~ b8 a gs cs fs, cs' cs fs,16(gs a8) a b a16 gs a4 r r
  \volta 2 \fine
  \bar "|."
  }
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
  d4^"Nr. 45 Chor und Rezitativ" r cs r8 as b4 r8 b e e ds e16 fs g8 g e e16 e e8 e r a, d d cs d16 e
  fs8 fs d d16 d d8 d e r
  fs4 r r2 r1 r r2 r8 b, b cs d d d e fs fs r d
  cs4 b8(a) e' e, r4
  r8 fs' fs gs a a g fs g g r e fs b, cs(es) cs4 r8 b4 d8 g fs fs fs16 e d8 cs cs a r4
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
  \compressEmptyMeasures
  % Music follows here.
  \partial 4
  cs8^"Nr. 46 Choral" d
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
  \compressEmptyMeasures
  % Music follows here.
  \repeat volta 2 {
    cs4^"Nr. 53 Choral" b a8(b) cs(d) e(b) b4 b8.(a16) g4\fermata
    b8 cs d e a,4 e a4. gs8 cs2
  }
  e4 e8(ds) e(d) cs(b) a(b) cs(ds) e4 e\fermata
  as,8(b) b4 a a a8 b gs d' cs b cs4\fermata
  \bar "|."
}

scoreEDVerse = \lyricmode {
  % Lyrics follow here.
  <<
    { Zwar ist sol -- che Her -- zens -- stu -- be wohl _ kein _ schö -- ner Fürs -- ten -- saal }\new Lyrics{
      Son -- dern ei -- ne fin -- stre Gru -- be;
      Doch _ so _ -- bald dein Gna -- den -- strahl
    }
  >>
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
  r8^"Nr. 54 Chor"
  R4. * 47
  r8^"A" r a d4 a8 e'4 a,8 fs' e16 fs g e g(fs e d) fs(d)
  fs(e d cs) e(cs) e(d cs b) d(b) e8 d16 cs b cs a4.~ a~ a8 cs e d(e16 d) e cs d8^"B" fs a~ a a,16 cs b a
  gs8 e gs a d4 e16 fs g e a8 d,16(e fs8) a, a e' e fs cs cs fs fs a, d4^"C" a8
  e'4 a,8 fs' e16 fs g e g(fs e d) fs(d) fs(e d cs) e(cs) e(d cs b) d(b) e8 d16 cs b cs a4.~ a~
  a8 cs e d4 cs8 d^"D" fs a a a, cs gs e gs a d e e16(fs g e) a8 d,16 e fs8 a,~
  a e' e fs cs cs fs a, r R4.*3^"E" r8 r gs a4 fs'8
  gs,4 e'8 fs, gs a gs16 fs gs a b8 e, e' e e16 d cs d e8 a, d cs d c16 b c d b8 r c
  c(b16 a) b8 b^"F" a g cs d e d4 d8~ d cs16 b cs8 d a a a a cs
  fs, d g a d, d'16 e fs8 g a e16(d cs b) cs8 d a e' d gs, b e fs e
  cs r r R4.*7^"G"
  r8 r b e4 e8 e cs16(d e8) as, b cs e16(d) fs(e d cs) fs(es) gs(fs e ds) gs4.~ gs16 fs a(gs fs es)
  fs8 cs es fs e16 ds e8 ds fs a a g16 fs e fs b,4^"H" b8 cs e g fs e16 d cs d e8 d fs
  b, r fs b4 b8 b gs16 a b8 e,(fs) gs a a e' fs(cs) fs fs(ds) fs fs(e) b
  b g fs e^"I" g b e cs e e(d) a a fs b b4.~b16 cs d8 e fs g fs
  d r r r4. r8 cs cs fs b, fs' d4 r8 R4.*3
  r8^"K" r d fs4 fs8 e4 e8 d4 cs8 d a r R4.*3
  r8 r a d4 a8 e'4 a,8 fs' e16 fs g e g^"L"(fs e d) fs(d)
  fs(e d cs) e(cs) e(d cs b) d(b) e8 d16 cs b cs
  a8 cs cs d4 d8 a cs e d4 cs8 a a r R4.*3^"M"
  r8 r b cs(fs16 e) d(cs) b8 e16 d cs b a8(d) cs b e4~ e8 d16 cs d8 d cs fs b, e16 d cs b
  a8(d) cs d4 e8 cs c4 b8 cs d cs16^"N" d e8 fs~ fs b, e~ e a, d g, a b
  e d e d d, g a d, d'16 e fs8 g a e a, cs d a e' d gs, b
  e fs e cs r r r4. r8^"0" b b e a, e' cs4 e8 a, r c fs, fs' ds
  ds(e) b b b b b r e, a e' cs cs(d) a a a a g^"P-XY" d' g
  fs b, fs' b, fs' g fs4 a,8 e'4 e8 e(cs) cs cs(d) e d4 fs,8
  bf d d e4 e8 d b e d r r d f16 e f8 f r r fs e16 d e8 fs4\fermata
  \bar "|."
}

scoreFAVerse = \lyricmode {
  % Lyrics follow here.
  Herr, wenn die stol -- zen Fein _ _ -- de _ schnau _ _ _ _ _ _ _ _ _ _ _ -- ben,
  die stol -- zen _ Fein _ _ _ _ _ _ _ -- de,
  Herr, wenn die stol _ _ _  -- zen Fein -- de schnau -- ben,
  die Fein _ -- de schnau -- ben,
  so gib, dass wir im fe _ _ -- sten _ Glau _ _ _ _ _ _ -- ben, _ im _ fe _ -- sten Glau -- ben, gib, _ dass wir _ im fe _ -- sten Glau -- ben, im fe -- sten Glau _ _ _ -- ben, im fe _ -- sten Glau -- ben
  nach dei -- ner Macht und Hül _ -- fe sehn, _ _ _ _ nach dei -- ner Macht _ _ _ _ und Hül -- fe sehn, _ _ _ _ _ nach
  dei -- ner Macht _ und Hül _ -- fe sehn, nach dei _ -- ner Macht _ und Hül -- fe,
  so gib, _ dass wir _ im _ fe _ -- sten Glau -- ben nach dei -- ner Macht _ und Hül _ -- fe sehn!
  Wir wo -- len dir al -- lein _ ver -- trau _ _ _ _ _ _ _ -- en, so kön -- nen _ _ wir _ den schar _ _ -- fen _ Klau -- en des Fein -- des un _ _ -- ver _ -- sehrt _  ent -- gehn.
  Wir wol -- len dir al _ _ -- lein ver -- trau -- en, wir wol -- len dir al -- lein ver --
  trau -- en, so kön _ -- nen wir _ den schar -- fen Klau -- en des Fein -- des un -- ver -- sehrt _ ent --
  gehn, un -- ver -- sehrt _ ent -- gehn.
  Herr, wenn die stol -- zen Fein -- de schnau -- ben,
  Herr, wenn die stol -- zen Fein _ _ -- de _ schnau _ _ _ _ _ _ _ _ _ _ _ -- ben, so gib, dass wir _ im fe -- sten Glau -- ben
  nach dei -- ner Macht _ _ und _ Hül -- fe sehn, nach dei _ -- ner Macht _ und Hül _ _ -- fe _
  sehn, so gib, dass wir im fe _ -- sten Glau _ _ _ -- ben nach dei -- ner Macht _ und
  Hül _ -- fe sehn, _ dass wir _ im _ fe _ -- sten Glau -- ben nach dei _ -- ner Macht _ und
  Hül _ -- fe sehn, dei -- ner Hül _ -- fe sehn, Herr, wenn die stol _ -- zen
  Fein -- de schnau -- ben, so gib, dass wir _ im fe -- sten Glau -- ben nach dei _ -- ner
  Macht _ und Hül _ -- fe sehn, so gib, dass wir im fe -- sten Glau -- ben
  nach dei -- ner Macht und Hü _ -- lfe sehn, nach dei _ -- ner Macht und Hül _ -- fe sehn!
}

globalFB = {
  \key g \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreFBTenorVoice = \relative c' {
  \globalFB
  \compressEmptyMeasures
  \dynamicUp
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    b4^"Nr. 59 Choral"
    b e e8(d) d4 e8(c) a(d) d4\fermata e d g,8(a) b(c) d4 d(c8 b) b4
  }
  \partial 4
  d
  d d8(c) b(c) fs,(b) b(a) a(g) fs4\fermata
  fs g8(a) b(c) b(a) g4 g fs8 e fs4\fermata
  e8 fs g4. a8 b(c) d4 d(c8 b) b4\fermata
  \bar "|."
}

scoreFBVerse = \lyricmode {
  % Lyrics follow here.
  \repeat volta 2 {
    <<
      {
        Ich steh an dei -- ner Krip -- pen hier,
        O Je -- su -- lein, mein Le -- ben,}{\new Lyrics{
          Ich kom -- me, bring und schen -- ke dir,
          Was du mir hast ge -- ge -- ben,

        }
      }
    >>
  }
  Nimm hin, es ist mein Geist und Sinn,
  Herz, Seel und Mut, nimm al -- les _ hin,
  und _ lass dir's wohl ge -- fal -- len.
}

globalFC = {
  \key d \major
  \time 4/4
}

scoreFCTenorVoice = \relative c' {
  \globalFC
  \compressEmptyMeasures
  \dynamicUp
  % Music follows here.
  \partial 4
  r4^"Nr. 64 Choral"
  r1
  \repeat volta 2 {
    R1*10
    r2 r4 a b8 cs d4 g, a b8(g e a) a4 r
    r1 r2 r4 fs' fs d8(fs) g(e) fs(cs) d4 r r2 r1
  }
  R1*2 r2 r4 e e d d e8 cs fs4.(b,8) fs'4 r r1 r4 d d d b b8(as) as4 r r1 r
  r2 r4 e' e4. b8 a4. a8 a(b gs4) a r
  R1*4 r2 r4 d d8 cs16 b a4 a a a1 R1*9 r2 r4\fermata
  \bar "|."
}

scoreFCVerse = \lyricmode {
  % Lyrics follow here.
  \repeat volta 2 {
    <<{Nun seid _ ihr wohl ge -- ro -- chen an eu -- rer Fein -- de Schar} \new Lyrics{denn Chris -- tus hat zer -- bro -- chen, was euch zu -- wi -- der war. }>> }
    Tod, Teu -- fel, Sünd und _ Höl -- le sind ganz und gar ge -- schwächt;
    bei Gott hat sei -- ne Stel -- le das mensch _ _ -- li  -- che Ge -- schlecht.
  }