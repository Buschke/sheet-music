\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "Lieder in F-Dur"
  subtitle = ""
  subsubtitle = "Gotteslob, zur Harmonisierung"
  instrument = "Orgel / Chor"
  composer = "M: diverse"
  arranger = \markup {"Satz: " \with-url "https://buschke.com" "Sven Buschke"}
  poet = "T: diverse"
  meter = ""
  piece = ""
  opus = ""
  copyright = \markup {"© Satz, 11.06.2024: " \with-url "https://buschke.com" "Sven Buschke"}
  tagline = "best of Gotteslob"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key f \major
  \tempo "Getragen" 4=100
}

% GL 93, EG 482
mondAufgegangen = {
  \time 4/4
  \repeat volta 2 {
    \partial 4
    f,4^"Der Mond ist aufgegangen, GL 93, EG 482"
    g f bf a g2 f4\breathe
    a a a d c bf2 a4\breathe
    a a a bf a
    \alternative {{g2 r4}{g g f}}
  }
  \bar "|.|"
}

% GL 101, EG 477
nunRuhenWaelder = {
  \time 4/4
  \partial 4
  a4^"Nun ruhen alle Wälder, GL 101, EG 477"
  f g a c bf2 a4\breathe
  a c c g a f2 e4\breathe
  e f g a a g2.\breathe
  a4 f g a c bf2 a4\breathe
  a c c g a f2 e4\breathe
  c f g a bf  \partial 2. a g f\bar "|.|"
}

% GL 139, EG
lammGottes = {
  \time 4/4
  \repeat volta 2 { f4^"Lamm Gottes, GL 139" g(a) a2\breathe a4 g a bf a g f g a2\breathe a4 c bf a g2 a }
  f4 g(a) a2\breathe
  a4 g a bf a g f g a2\breathe
  a4 c bf a g2 \partial 2 f\bar "|.|"
}

% GL 170, EG 179
alleinGottInDerHoehSeiEhr = {
  \time 3/1
  \repeat volta 2 {
    \partial 4
    f4^"Allein Gott in der Höh' sei Ehr, GL 170, EG 179" a2 bf4 c2 bf4 a2 g4 a2\breathe
    a4 a2 g4 bf(a) g f2(e4) f2
  } f4 f2 g4 bf bf a g2 f4 g2\breathe
  g4 a2 bf4 c2 bf4 a2 g4 a2\breathe
  f4 g2 bf4 a2 g4 f2(e4) f2\bar "|.|"
}

% GL 208, EG 190.2
christeDuLammGottes = {
  \time 4/4
  \repeat volta 2 { f4^"Christ, du Lamm Gottes, GL 208, EG 190.2" g a a bf2 a\breathe a4 g a bf c bf a2 r4 a g f a2 g }
  f4 g a a bf2 a\breathe a4 g a bf c bf a2\breathe a4 a g f a2 g f4( g a bf a g) f2(g4~) g2.\bar "|."
}

% GL 223, EG 17
wirSagenEuchAnDenLiebenAdvent = {
  \time 3/4
  \repeat volta 2 {
    \partial 4
    a4^"Wir sagen euch an den lieben Advent, GL 223, EG 17" a f g a2 f4 g4. f8 e4 f2 r4 a a bf c2 a4 g2 g4 a2
  }
  r4 c c g a f r c' c g a2 r4 f2 a4 g4. f8 e4 f2.~ f2\bar "|.|"
}

adesteFideles = {
  \time 2/2
  \partial 4
  f4^"Adeste Fideles, GL 242, EG x" f2 c4 f g2 c, a'4 g a bf a2 g4\breathe
  f f2 e4 d e(f) g a8 f e2(d4.) c8 c2. r4 c'2 bf4 a bf2 a  g4 a f g e(d) c\breathe
  f f e f g f2 c4 a' a g a bf a2 g4\breathe
  c bf a g f e2 f4(bf) a2(g4.) f8 f2 r4\bar "|.|"
}

% GL , EG
inDulciJubilo = {
  \time 6/4
  \partial 4
  f4^"In dulci jubilo, GL 253"
  f2 f4 a2 bf4 c2(d4 c2) c4 f,2 f4 a2 bf4 c2(d4 c2) r4
  c2 d4 c2 bf4 a2. f2 f4 g2 g4 a2 g4 f2(g4 a2)\breathe
  a4 c2 d4 c2 bf4 a2. f2 f4 g2 g4 a2 g4 f2(g4 a2) r4
  d,2 d4 e2 e4 f2.(c'2) r4 a2 a4 g2 g4 f2.~f2 s4\bar "|.|"
}

% GL 348, EG x
nunBittenWirDenHeiligenGeist = {
  \time 2/2
  f2^"Nun bitten wir den Heiligen Geist, GL 348, EG x" g4 g f2 d4 c d f f2\breathe
  a4 c d c a f d f f2\breathe
  a4 a a g a2 f4 f g g a2 f\breathe
  g4 g a2 f d g4 g f2 d c\breathe
  d4 e f2 f1\bar "|.|"
}

% GL 365, EG 697
meineHoffnungUndMeineFreude = {
  \time 3/4
  \repeat volta 2 {
    \partial 4
    f8^"Meine Hoffnung und meine Freude, GL 365, EG 697" g
    a4 a8 a g f d4 c\breathe
    f8 g a4. a8 f4 g2\breathe
    c,8 c d4. d8 \tuplet 3/2 { e d e } f4.\breathe
    f8 g g a4 a8 a d bf g4.\breathe
    g8 c a f4 f8 d f e \partial 2 f2
  }
}

% GL 380, EG 331
grosserGottWirLobenDich = {
  \time 3/4
  \repeat volta 2 {
    f2^"Großer Gott, wir loben dich, GL 380, EG 697" f4 f(e) f g(a) g f2 r4
    a2 a4 a(g) f c'(bf) a a g r
  }
  g2 a4 bf2 a4 a2 bf4 c2 r4
  d2 d4 c(bf) a bf(a) g f2.\bar "|.|"
}

% GL 392, EG 316
lobeDenHerrnDenMaechtigenKoenigDerEhren = {
  \time 9/4
  \repeat volta 2 {
    \partial 2.
    f4^"Lobe den Herren, GL 392, EG 316" f c' a4. g8 f4 e d c d e f g2. f
  } c'4 c c d2. a4 bf c c4. bf8 a4 g2.\breathe
  c,4 d e f g a g2. f r\bar "|.|"
}

% GL 487, EG 265
nunSingeLobDuChristenheit = {
  \time 2/1
  f2^"Nun singe Lob, du Christenheit, GL 487, EG 265" d4 c f2 g a4 a g2 r4
  a c bf a2 g f1\breathe
  c'2 a4 c d2 c bf4 a g2 r4
  c4 f, bf a2 g f1\bar "|.|"
}

% GL 502, EG
naeherMeinGottZuDir = {
  \time 4/4
  a2^"Näher, mein Gott, zu dir, GL 502" g4 f f4. d8 d2 c f4 a g2. r4
  a2 g4 f f4. d8 d2 c4(f) e g f2. r4
  c'2 d4 c c4. a8 c2 c d4 c c4. a8 g2\breathe
  a g4 f f4. d8 d2 c4(f) e g f1\bar "|.|"
}

% GL 543, EG 295
wohlDenenDieDaWandeln = {
  \time 2/2
  \repeat volta 2 {
    \partial 4
    c4^"Wohl denen, die da wandeln, GL 543, EG 295"
    f g a c bf2 a4 g f g a g8 f g2 r4
  } \partial 4
  g
  g g a g f g e d f g a bf a2 g\breathe
  c bf4 g a2 g f2.\bar "|."
}

scoreAMelody = \relative c'' {
  \global
  % Music follows here.
  \mondAufgegangen % GL 93, EG 482
  \nunRuhenWaelder % GL , EG
  \lammGottes % GL , EG
  \alleinGottInDerHoehSeiEhr % GL , EG
  \christeDuLammGottes % GL 208, EG 190.2
  \wirSagenEuchAnDenLiebenAdvent % GL 223, EG 17
  \adesteFideles % GL 242, EG x
  \inDulciJubilo % GL 253, EG x
  \nunBittenWirDenHeiligenGeist % GL 348, EG x
  \meineHoffnungUndMeineFreude % GL 365, EG 697
  \grosserGottWirLobenDich % GL 380, EG 331
  \lobeDenHerrnDenMaechtigenKoenigDerEhren % GL 392, EG 316
  \nunSingeLobDuChristenheit % GL , EG
  \naeherMeinGottZuDir % GL , EG
  \wohlDenenDieDaWandeln % GL 543, EG 295
}

% GL 93, EG 482
mondAufgegangenAV = \lyricmode {Der Mond ist auf -- ge -- gan -- gen, die gold -- nen Stern -- lein pran -- gen am Him -- mel hell und klar \repeat unfold 1 { \skip 1 \skip 1 \skip 1 }}

mondAufgegangenBV = \lyricmode {Der Wald steht schwarz ud schwei -- get und aus den Wie -- sen stei -- get der wei -- ße Ne -- bel \repeat unfold 1 { \skip 1 } wun -- der -- bar }

% GL 101, EG 477
nunRuhenWaelderV = \lyricmode {
  Nun ru -- hen al -- le Wäl -- der,
  Vieh, Men -- schen, Städt und Fel -- der,
  es schläft die gan -- ze Welt;
  ihr a -- ber, mei -- ne Sin -- nen,
  auf, auf, ihr sollt be -- gin -- nen,
  was eu -- rem Schöp -- fer wohl -- ge -- fällt.
}

% GL 139
lammGottesV = \lyricmode {
  Lamm Got -- tes, du nimmst hin -- weg die Sün -- de der Welt,
  er -- bar -- me dich un -- ser.
  Lamm Got -- tes, du nimmst hin -- weg die Sün -- de der Welt,
  gib uns dei -- nen Frie -- den.
}

% GL 170, EG 179
alleinGottInDerHoehSeiEhrV = \lyricmode {
  <<{Al -- lein Gott in der Höh sei Ehr und Dank für sei -- ne Gna -- de, } \new Lyrics {dar -- um dass nun und nim -- mer -- mehr uns rüh -- ren kann kein Scha -- de. }>> Ein Wohl -- ge -- fall -- en Gott an uns hat; nun ist groß Fried ohn Un -- ter -- lass, all Fehd hat nun ein En -- de.
}

% GL 208, EG 190.2
christeDuLammGottesV = \lyricmode {
  Chris -- te, du Lamm Got -- tes, der du trägst die Sünd der Welt, er -- barm dich un -- ser. Chris -- te, du Lamm Got -- tes, der du trägst die Sünd der Welt, gib uns dei -- nen Frie -- den. A -- men.
}

% GL 223, EG 17
wirSagenEuchAnDenLiebenAdventV = \lyricmode {
  <<
    {
      Wir sa -- gen euch an den lie -- ben Ad -- vent
      Se -- het, die ers -- te Ker -- ze brennt
    } \new Lyrics {
      Wir sa -- gen euch an eine hei -- li -- ge Zeit
      Ma -- chet dem Herrn den Weg be -- reit
    }
  >>
  Freut euch, ihr Chris -- ten!
  Freu -- et euch sehr!
  Schon ist na -- he der Herr
}

% GL 242, EG x
adesteFidelesV = \lyricmode {
  A -- des -- te fi -- de -- les
  Lae -- ti tri -- um -- phan -- tes
  Ve -- ni -- te, ve -- ni -- te in _ Beth -- le -- hem
  Na -- tum vi -- de -- te
  Re -- gem an -- ge -- lo -- rum
  Ve -- ni -- te ad -- o -- re -- mus
  Ve -- ni -- te ad -- o -- re -- mus
  Ve -- ni -- te ad -- o -- re -- mu
  Do -- mi -- num
}

% GL 253
inDulciJubiloV = \lyricmode {
  In dul -- ci ju -- bi -- lo,
  nun sin -- get und seid froh!
  Uns -- res Her -- zens Won -- ne,
  liegt in prae -- se -- pi -- o
  und leuch -- tet als die Son -- ne
  ma -- tris in gre -- mi -- o.
  Al -- pha es et O.
  Al -- pha es et O.
}

nunBittenWirDenHeiligenGeistV = \lyricmode {
  Nun bit -- ten wir den Hei -- li -- gen Geist um den rech -- ten Glau -- ben al -- ler -- meist, dass er uns
  be -- hü -- te an un -- serm En -- de, wenn wir heim -- fahrn aus die -- sem E -- len -- de. Ky -- ri -- e -- leis.
}

meineHoffnungUndMeineFreudeV = \lyricmode {
  Mei -- ne Hoff -- nung und mei -- ne Freu -- de,
  mei -- ne Stär -- ke, mein Licht:
  Chris -- tus mei -- ne Zu _ -- ver -- sicht,
  auf dich ver -- trau ich und fürcht mich nicht,
  auf dich ver -- trau ich und fürcht mich nicht
}

grosserGottWirLobenDichV = \lyricmode {
  <<
    {
      Gro -- ßer Gott, wir lo -- ben dich;
      Herr, wir prei -- sen dei -- ne Stär -- ke.
    }
    \new Lyrics {
      Vor dir neigt die Er -- de sich
      und be -- wun -- dert dei -- ne Wer -- ke.
    }
  >>
  Wie du warst vor al -- ler Zeit,
  so bleibst du in E -- wig -- keit.
}

lobeDenHerrnDenMaechtigenKoenigDerEhrenV = \lyricmode {
  <<
    {Lo -- be den Her -- ren, den mäch -- ti -- gen Kö -- nig der Eh -- ren, }
    \new Lyrics {lob ihn, o See -- le, ver -- eint mit den himm -- li -- schen Chö -- ren. }
  >>
  Kom -- met zu -- hauf,
  Psal -- ter und Har -- fe, wacht auf,
  las -- set den Lob -- ge -- sang hö -- ren!
}

nunSingeLobDuChristenheitV = \lyricmode {
  Nun sin -- ge Lob, du Chris -- ten -- heit, dem Va -- ter, Sohn und Geist, der al -- ler -- orts und al -- le -- zeit sich gü -- tig uns er -- weist,
}

naeherMeinGottZuDirV = \lyricmode {
  Nä -- her, mein Gott, zu dir, nä -- her zu dir!
  Drückt mich auch Kum -- mer hier, dro -- het man mir,
  soll doch trotz Kreuz und Pein dies mei -- ne Lo -- sung sein:
  Nä -- her, mein Gott, zu dir,
  nä -- her zu dir!
}

wohlDenenDieDaWandelnV = \lyricmode {
  <<
    {
      Wohl de -- nen, die da wan -- deln
      vor Gott in Hei -- lig _ -- keit,
    } \new Lyrics
    {
      nach sei -- nem Wor -- te han -- deln
      und le -- ben al -- le _ -- zeit.
    }
  >>
  Die recht von Her -- zen su -- chen Gott
  und sei -- ner Wei -- sung fol -- gen,
  sind stets bei ihm in Gnad.
}

allLyrics = {
  \mondAufgegangenAV
  \nunRuhenWaelderV
  \lammGottesV
  \alleinGottInDerHoehSeiEhrV
  \christeDuLammGottesV
  \wirSagenEuchAnDenLiebenAdventV
  \adesteFidelesV
  \inDulciJubiloV
  \nunBittenWirDenHeiligenGeistV
  \meineHoffnungUndMeineFreudeV
  \grosserGottWirLobenDichV
  \lobeDenHerrnDenMaechtigenKoenigDerEhrenV
  \nunSingeLobDuChristenheitV
  \naeherMeinGottZuDirV
  \wohlDenenDieDaWandelnV
}

\bookpart {
  \header {
    subtitle = "nur CF"
  }
  \score {
    <<
      \new Staff \with {
          midiInstrument = "choir aahs"
      }{
        \new Voice = "melody" {
          \relative c' {
            \scoreAMelody
          }
        }
      }
      \new Lyrics = "a"
      \context Lyrics = "a" {
        \lyricsto "melody" {
          \allLyrics
        }
      }
      \new Lyrics = "b"
      \context Lyrics = "b" {
        \lyricsto "melody" {
          \mondAufgegangenBV
        }
      }
    >>
    \layout { }
    \midi { }
  }
}

mondAufgegangenAC = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4
    f4 c f bf f c2 f4\breathe
    \override ChordName.color = #red d:m d:m d:m \revert ChordName.color bf f bf2 f4\breathe
    f f f bf f
    \alternative {{c2 s4}{c c f}}
  }
}
nunRuhenWaelderC = \chordmode {
  \partial 4
  f4
  f c f c bf2 f4\breathe
  f f f c f f2 e4:dim/g\breathe
  e:dim/g f c f f c2.\breathe
  f4 f c f f bf2 f4\breathe
  f f f c f f2 e4:dim/g
  f f c f bf f c f
}
lammGottesC = \chordmode {
  f1
}
alleinGottInDerHoehSeiEhrC = \chordmode {
  f1
}
christeDuLammGottesC = \chordmode {
  f1
}
wirSagenEuchAnDenLiebenAdventC = \chordmode {
  f1
}
adesteFidelesC = \chordmode {
  f1
}
inDulciJubiloC = \chordmode {
  f1
}
nunBittenWirDenHeiligenGeistC = \chordmode {
  f1
}
meineHoffnungUndMeineFreudeC = \chordmode {
  f1
}
grosserGottWirLobenDichC = \chordmode {
  f1
}
lobeDenHerrnDenMaechtigenKoenigDerEhrenC = \chordmode {
  f1
}
nunSingeLobDuChristenheitC = \chordmode {
  f1
}
naeherMeinGottZuDirC = \chordmode {
  f1
}
wohlDenenDieDaWandelnC = \chordmode {
}

allChords = {
  \mondAufgegangenAC
  \nunRuhenWaelderC
  \lammGottesC
  \alleinGottInDerHoehSeiEhrC
  \christeDuLammGottesC
  \wirSagenEuchAnDenLiebenAdventC
  \adesteFidelesC
  \inDulciJubiloC
  \nunBittenWirDenHeiligenGeistC
  \meineHoffnungUndMeineFreudeC
  \grosserGottWirLobenDichC
  \lobeDenHerrnDenMaechtigenKoenigDerEhrenC
  \nunSingeLobDuChristenheitC
  \naeherMeinGottZuDirC
  \wohlDenenDieDaWandelnC
}

mondAufgegangenABF = \figuremode {
  \repeat volta 2 {
    \partial 4
    s4 s s s s s2 s4\breathe
    s s s s s s2 s4\breathe
    s s s s s
    \alternative {{s2 s4}{s4 s s}}
  }
}
nunRuhenWaelderBF = \figuremode {
  \partial 4
  <5>4
  s s s s s2 s4\breathe
  s s s s s s2 s4\breathe
  s s s s s s2.\breathe
  s4 s s s s s2 s4\breathe
  s s s s s s2 s4\breathe
  s s s s s s s s
}
lammGottesBF = \figuremode {
  <5>4
}
alleinGottInDerHoehSeiEhrBF = \figuremode {
  <5>4
}
christeDuLammGottesBF = \figuremode {
  <5>4
}
wirSagenEuchAnDenLiebenAdventBF = \figuremode {
  <5>4
}
adesteFidelesBF = \figuremode {
  <5>4
}
inDulciJubiloBF = \figuremode {
  <5>4
}
nunBittenWirDenHeiligenGeistBF = \figuremode {
  <5>4
}
meineHoffnungUndMeineFreudeBF = \figuremode {
  <5>4
}
grosserGottWirLobenDichBF = \figuremode {
  <5>4
}
lobeDenHerrnDenMaechtigenKoenigDerEhrenBF = \figuremode {
  <5>4
}
nunSingeLobDuChristenheitBF = \figuremode {
  <5>4
}
naeherMeinGottZuDirBF = \figuremode {
  <5>4
}
wohlDenenDieDaWandelnBF = \figuremode {
  <5>4
}

allBassFigs = {
  \mondAufgegangenABF
  \nunRuhenWaelderBF
  \lammGottesBF
  \alleinGottInDerHoehSeiEhrBF
  \christeDuLammGottesBF
  \wirSagenEuchAnDenLiebenAdventBF
  \adesteFidelesBF
  \inDulciJubiloBF
  \nunBittenWirDenHeiligenGeistBF
  \meineHoffnungUndMeineFreudeBF
  \grosserGottWirLobenDichBF
  \lobeDenHerrnDenMaechtigenKoenigDerEhrenBF
  \nunSingeLobDuChristenheitBF
  \naeherMeinGottZuDirBF
  \wohlDenenDieDaWandelnBF
}

mondAufgegangenACII = \chordmode {
  \time 4/4
  \repeat volta 2 {
    \partial 4
    f4 e:dim/g f g:m7/bf f/a e2:dim/g f4\breathe
    f/a f/a f/a d:m c g2:m7/bf f4/a\breathe
    f/a f/a f/a g:m7/bf f/a
    \alternative {{e2:dim/g s4}{e4:dim/g e:dim/g f}}
  }
}
nunRuhenWaelderCII = \chordmode {
  \partial 4
  f4/a
  f e:dim/g f/a c g2:m7/bf f4/a\breathe
  f/a c c e:dim/g f/a f2 c4/e\breathe
  c/e f e:dim/g f/a f/a e2.:dim/g\breathe
  f4/a f e:dim/g f/a c g2:m7/bf f4/a\breathe
  f/a c c e:dim/g f/a f2 c4/e\breathe
  c f e:dim/g f/a g:m7/bf f/a e:dim/g f
}
lammGottesCII = \chordmode {
  \repeat volta 2 {
    f4 e:dim/g f/a f2/a\breathe
    f4/a e:dim/g f/a g:m7/bf f/a e:dim/g f e:dim/g f2/a\breathe
    f4/a c g:m7/bf f/a e2:dim/g f/a
  }
  \partial 4
  f4
  e:dim/g f/a f2/a\breathe
  f4/a e:dim/g f/a g:m7/bf f/a e:dim/g f e:dim/g f2/a\breathe
  f4/a c g:m7/bf f/a e2:dim/g f
}
alleinGottInDerHoehSeiEhrCII = \chordmode {
  \repeat volta 2 {
    \partial 4
    f4
    f2/a g4:m7/bf c2 g4:m7/bf f2/a e4:dim/g f2/a\breathe
    f4/a f2/a e4:dim/g g:m7/bf f/a e:dim/g f2 c4/e f2
  } \partial 4
  f4 f2 e4:dim/g g:m7/bf g:m7/bf f/a e2:dim/g f4 e2:dim/g\breathe
  e4:dim/g f2/a g4:m7/bf c2 g4:m7/bf
}
christeDuLammGottesCII = \chordmode {
  f1
}
wirSagenEuchAnDenLiebenAdventCII = \chordmode {
  f1
}
adesteFidelesCII = \chordmode {
  f1
}
inDulciJubiloCII = \chordmode {
  f1
}
nunBittenWirDenHeiligenGeistCII = \chordmode {
  f1
}
meineHoffnungUndMeineFreudeCII = \chordmode {
  f1
}
grosserGottWirLobenDichCII = \chordmode {
  f1
}
lobeDenHerrnDenMaechtigenKoenigDerEhrenCII = \chordmode {
  f1
}
nunSingeLobDuChristenheitCII = \chordmode {
  f1
}
naeherMeinGottZuDirCII = \chordmode {
  f1
}
wohlDenenDieDaWandelnCII = \chordmode {
  f1
}


allChordsII = {
  \mondAufgegangenACII
  \nunRuhenWaelderCII
  \lammGottesCII
  \alleinGottInDerHoehSeiEhrCII
  \christeDuLammGottesCII
  \wirSagenEuchAnDenLiebenAdventCII
  \adesteFidelesCII
  \inDulciJubiloCII
  \nunBittenWirDenHeiligenGeistCII
  \meineHoffnungUndMeineFreudeCII
  \grosserGottWirLobenDichCII
  \lobeDenHerrnDenMaechtigenKoenigDerEhrenCII
  \nunSingeLobDuChristenheitCII
  \naeherMeinGottZuDirCII
  \wohlDenenDieDaWandelnCII
}

mondAufgegangenABFII = \figuremode {
  \repeat volta 2 {
    \partial 4
    s4 <6> s <6 4 3> <6> <6>2 s4\breathe
    <6> <6> <6> s s <6 4 3>2 <6>4\breathe
    <6> <6> <6> <6 4 3> <6>
    \alternative {{<6>2 s4}{<6>4 <6> s}}
  }
}
nunRuhenWaelderBFII = \figuremode {
  <5>4
}
lammGottesBFII = \figuremode {
  <5>4
}
alleinGottInDerHoehSeiEhrBFII = \figuremode {
  <5>4
}
christeDuLammGottesBFII = \figuremode {
  <5>4
}
wirSagenEuchAnDenLiebenAdventBFII = \figuremode {
  <5>4
}
adesteFidelesBFII = \figuremode {
  <5>4
}
inDulciJubiloBFII = \figuremode {
  <5>4
}
nunBittenWirDenHeiligenGeistBFII = \figuremode {
  <5>4
}
meineHoffnungUndMeineFreudeBFII = \figuremode {
  <5>4
}
grosserGottWirLobenDichBFII = \figuremode {
  <5>4
}
lobeDenHerrnDenMaechtigenKoenigDerEhrenBFII = \figuremode {
  <5>4
}
nunSingeLobDuChristenheitBFII = \figuremode {
  <5>4
}
naeherMeinGottZuDirBFII = \figuremode {
  <5>4
}
wohlDenenDieDaWandelnBFII = \figuremode {
  <5>4
}

allBassFigsII = {
  \mondAufgegangenABFII
  \nunRuhenWaelderBFII
  \lammGottesBFII
  \alleinGottInDerHoehSeiEhrBFII
  \christeDuLammGottesBFII
  \wirSagenEuchAnDenLiebenAdventBFII
  \adesteFidelesBFII
  \inDulciJubiloBFII
  \nunBittenWirDenHeiligenGeistBFII
  \meineHoffnungUndMeineFreudeBFII
  \grosserGottWirLobenDichBFII
  \lobeDenHerrnDenMaechtigenKoenigDerEhrenBFII
  \nunSingeLobDuChristenheitBFII
  \naeherMeinGottZuDirBFII
  \wohlDenenDieDaWandelnBFII
}

\bookpart {
  \header {
    subtitle = "mit Akkorden und bezifferten Bass"
  }
  \score {
    <<
      \new ChordNames \allChords
      \new FiguredBass \allBassFigs
      \new Staff \with {
        midiInstrument = "choir aahs"
      } {
        \new Voice = "melody" {
          \relative c' {
            \scoreAMelody
          }
        }
      }
      \new Lyrics = "a"
      \context Lyrics = "a" {
        \lyricsto "melody" {
          \allLyrics
        }
      }
      \new Lyrics = "b"
      \context Lyrics = "b" {
        \lyricsto "melody" {
          \mondAufgegangenBV
        }
      }
      \new ChordNames \allChordsII
      \new FiguredBass \allBassFigsII
    >>
    \layout { }
  }
  \score {
    \unfoldRepeats {
    <<
      \new ChordNames \allChords
      \new FiguredBass \allBassFigs
      \new Staff \with {
        midiInstrument = "choir aahs"
      } {
        \new Voice = "melody" {
          \relative c' {
            \scoreAMelody
          }
        }
      }
      \new Lyrics = "a"
      \context Lyrics = "a" {
        \lyricsto "melody" {
          \allLyrics
        }
      }
      \new Lyrics = "b"
      \context Lyrics = "b" {
        \lyricsto "melody" {
          \mondAufgegangenBV
        }
      }
%      \new ChordNames \allChordsII
%      \new FiguredBass \allBassFigsII
    >>
    }
    \midi { }
  }
  \score {
    \unfoldRepeats {
    <<
%      \new ChordNames \allChords
%      \new FiguredBass \allBassFigs
      \new Staff \with {
        midiInstrument = "choir aahs"
      } {
        \new Voice = "melody" {
          \relative c' {
            \scoreAMelody
          }
        }
      }
      \new Lyrics = "a"
      \context Lyrics = "a" {
        \lyricsto "melody" {
          \allLyrics
        }
      }
      \new Lyrics = "b"
      \context Lyrics = "b" {
        \lyricsto "melody" {
          \mondAufgegangenBV
        }
      }
      \new ChordNames \allChordsII
      \new FiguredBass \allBassFigsII
    >>
    }
    \midi { }
  }
}