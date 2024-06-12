\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "Lieder in F-Dur"
  subtitle = ""
  subsubtitle = ""
  instrument = ""
  composer = ""
  arranger = ""
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  copyright = ""
  tagline = ""
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
  d,2 d4 e2 e4 f2.(c'2) r4 a2 a4 g2 g4 f2.~f2\bar "|.|"
}

% GL , EG
% GL , EG
% GL , EG
% GL , EG

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
  % GL , EG


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
  Do -- mi -- num }

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

\bookpart {
  \score {
    <<
      \new Staff {
        \time 4/4
        \new Voice = "melody" {
          \relative c' {
            \scoreAMelody
          }
        }
      }
      \new Lyrics = "a"
      \context Lyrics = "a" {
        \lyricsto "melody" {
          \mondAufgegangenAV
          \nunRuhenWaelderV
          \lammGottesV
          \alleinGottInDerHoehSeiEhrV
          \christeDuLammGottesV
          \wirSagenEuchAnDenLiebenAdventV
          \adesteFidelesV
          \inDulciJubiloV
        }
      }
      \new Lyrics = "b"
      \context Lyrics = "b" {
        \lyricsto "melody" {
          \mondAufgegangenBV
        }
      }
    >>
  }
}