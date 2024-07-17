\version "2.24.2"
\language "english"


% GL 93, EG 482, F-Dur
mondAufgegangen = {
  \time 4/4
  \relative c' {
    \repeat volta 2 {
      \partial 4
      f4^"GL 93, EG 482, F-Dur"^"Der Mond ist aufgegangen"
      g f bf a g2 f4\breathe
      a a a d c bf2 a4\breathe
      a a a bf a
      \alternative {{g2 r4}{g g f}}
    }
    \bar "|.|"
  }
}

% GL 101, EG 477, F-Dur
nunRuhenWaelder = {
  \time 4/4
  \relative c'' {
    \partial 4
    a4^"GL 101, EG 477, F-Dur"^"Nun ruhen alle Wälder"
    f g a c bf2 a4\breathe
    a c c g a f2 e4\breathe
    e f g a a g2.\breathe
    a4 f g a c bf2 a4\breathe
    a c c g a f2 e4\breathe
    c f g a bf  \partial 2. a g f\bar "|.|"
  }
}

% GL 139, EG, F-Dur
lammGottes = {
  \time 4/4
  \relative c' {
    \repeat volta 2 { f4^"GL 139, F-Dur"^"Lamm Gottes" g(a) a2\breathe a4 g a bf a g f g a2\breathe a4 c bf a g2 a }
    f4 g(a) a2\breathe
    a4 g a bf a g f g a2\breathe
    a4 c bf a g2 \partial 2 f\bar "|.|"
  }
}

% GL 170, EG 179, F-Dur
alleinGottInDerHoehSeiEhr = {
  \time 3/1
  \relative c' {
    \repeat volta 2 {
      \partial 4
      f4^"GL 170, EG 179, F-Dur"^"Allein Gott in der Höh' sei Ehr" a2 bf4 c2 bf4 a2 g4 a2\breathe
      a4 a2 g4 bf(a) g f2(e4) f2
    } f4 f2 g4 bf bf a g2 f4 g2\breathe
    g4 a2 bf4 c2 bf4 a2 g4 a2\breathe
    f4 g2 bf4 a2 g4 f2(e4) f2\bar "|.|"
  }
}

% GL 208, EG 190.2, F-Dur
christeDuLammGottes = {
  \time 4/4
  \relative c' {
    \repeat volta 2 { f4^"GL 208, EG 190.2, F-Dur"^"Christ, du Lamm Gottes" g a a bf2 a\breathe a4 g a bf c bf a2 r4 a g f a2 g }
    f4 g a a bf2 a\breathe a4 g a bf c bf a2\breathe a4 a g f a2 g f4( g a bf a g) f2(g4~) g2.\bar "|."
  }
}

% GL 218, EG : Macht hoch die Tür, Es-Dur
machtHochDieTuer = {
  \transpose ef f {
    \key ef \major
    \time 6/4
    \relative c'' {
      \partial 4
      g4^"GL 218, EG, Es-Dur"^"Macht hoch die Tür"
      bf2 af4 g2 f4 ef(f) g f2
      bf4 af2 af4 g2 g4 f(ef) f ef2\breathe g4
      f2 f4 g(a) bf bf(c) a bf2 f4
      g2 f4 g(a) bf bf(c) a bf2\breathe
      bf4 c2 bf4 c2 bf4 c(bf) af g2
      bf4 c2 bf4 c2 bf4 c(bf) af g2\breathe
      bf4 ef,2 ef4 af2 g4 f2.~f2
      bf4 af2 g4 f(ef) f ef2.~ef2 s4\bar "|.|"
    }
  }
}

% GL 223, EG 17, F-Dur
wirSagenEuchAnDenLiebenAdvent = {
  \time 3/4
  \relative c'' {
    \repeat volta 2 {
      \partial 4
      a4^"GL 223, EG 17"^"Wir sagen euch an den lieben Advent" a f g a2 f4 g4. f8 e4 f2 r4 a a bf c2 a4 g2 g4 a2
    }
    r4 c c g a f r c' c g a2 r4 f2 a4 g4. f8 e4 f2.~ f2\bar "|.|"
  }
}

% GL 228, EG , D-Dur: Tochter Zion
tochterZion = {
  \transpose d f {
    \key d \major
    \time 2/2
    \relative c'' {
      a2^"GL 228, EG: , D-Dur"^"Tochter Zion" fs4.(g8) a2 d, e8(fs g a g4) fs e1\breathe
      fs8(g a b a4) a d2 a g4(fs e4.) d8 d1
      fs8(e fs g fs4) fs e2 d g4(fs e) d cs1\breathe
      d8(cs d e d4) d b'2 gs a4(b8a gs4.) a8 a1
      \bar "|.|"
    }
  }
}

% GL 237, EG , C-Dur: Vom Himmel hoch
vomHimmelHoch = {
  \transpose c f {
    \key c \major
    \time 4/4
    \relative c'' {
      \partial 4
      c4^"GL 231, EG x"^"Vom Himmel hoch"
      b a b g a b c\breathe
      c c g g e g f e\breathe
      e a a g b c a g\breathe
      c b a g g f8 e d4 c2\bar "|.|"
    }
  }
}

% GL 238, EG , D-Dur: Oh du fröhliche
ohDuFroehliche = {
  \transpose d f {
    \key d \major
    \time 4/4
    \relative c'' {
      a2 b a4. g8 fs4(g) a2 b a4. g8 fs4(g)\breathe
      a2 a b cs4 d cs2 b a1\breathe
      e4.(fs8) e4 fs g4.(a8) g2 fs4.(g8) fs4 g a4.(b8) a2\breathe
      d4(cs) b(a) d b a g fs2 e d1\bar "|.|"
    }
  }
}

% GL 243, EG , Es-Dur: Es ist ein Ros entsprungen
esIstEinRosEntsprungen = {
  \transpose ef f {
    \key ef \major
    \time 2/1
    \relative c'' {
      \repeat volta 2 {
        bf2^"GL 243, EG x"^"Es ist ein Ros entsprungen" bf4 bf c bf bf2 g\breathe
        af g4 f2 ef d4 ef2
      }
      r4 g f d ef c bf2 r4
      bf' bf bf c bf bf2 g\breathe
      af g4 f2 ef d4 ef1\bar "|.|"
    }
  }
}

% GL 247, EG , Es-Dur: Lobt Gott ihr Christen alle gleich
lobtGottIhrChristenAlleGleich = {
  \transpose ef f {
    \key ef \major
    \time 4/4
    \relative c' {
      \partial 4
      ef4^"GL 247, EG , Es-Dur"^"Lobt Gott ihr Christen alle gleich"
      bf' bf bf bf c bf8 af g4 g af bf c c bf2 r4 bf bf bf bf g bf af8 g f4 bf g
      f8 ef f4 f ef2 \breathe g
      bf4 af8 g f4 f ef2.\bar "|.|"
    }
  }
}

% GL 248, EG , C-Dur: Ihr Kinderlein kommet
ihrKinderleinKommet = {
  \transpose c f {
    \key c \major
    \time 2/4
    \relative c'' {
      \repeat volta 2 {
        \partial 8
        g8^"GL 248, EG , C-Dur"^"Ihr Kinderlein kommet"
        g4 e8 g g4 e8 g f4 d8 f e4 r8
      }
      e d4 d8 d f4 f8 f e4 e8 e a4 r8 a g4 g8 g c4 g8 e g4 f8 d c4 r8 s\bar "|.|"
    }
  }
}

% GL 249, EG , B-Dur: Stille Nacht
stilleNacht = {
  \transpose bf f {
    \key bf \major
    \time 6/8
    \relative c' {
      f8.^"GL 249, EG , B-Dur"^"Stille Nacht" g16 f8 d4.
      f8. g16 f8 d4.\breathe
      c'4 c8 a4. bf4 bf8 f4.\breathe
      g4 g8 bf8. a16 g8 f8. g16 f8 d4.\breathe
      g4 g8 bf8. a16 g8 f8. g16 f8 d4.\breathe
      c'4 c8 ef8. c16 a8 bf4.(d4.)\breathe
      bf8. f16 d8 f8. ef16 c8 bf4.~bf4 r8\bar "|.|"
    }
  }
}

% GL 267, EG , C-Dur: O Mensch bewein dein Sünde groß
oMenschBeweinDeinSuendeGross = {
  \transpose c f {
    \key c \major
    \time 2/1
    \relative c' {
      \repeat volta 2 {
        c2^"GL 267, EG , C-Dur"^"O Mensch bewein dein Sünde groß" c4 d e  c e f g2\breathe
        g2 f4 e d c e f g2\breathe
        a g4 f e c d2 c r
      }
      c'2 c4 c b g a a e2\breathe
      c' c4 c b g a a g2\breathe
      e g4 a g e f(g) e2 r
      d e4 f g4. f8 e4 e d2\breathe
      g a4 b c4. b8 a4 a g2\breathe
      c, d4 e f e d2 c1\bar "|.|"
    }
  }
}

% GL 326, EG , D-Dur: Wir wollen alle fröhlich sein
wirWollenAlleFroehlichSein = {
  \transpose d f {
    \key d \major
    \time 3/1
    \relative c' {
      \repeat volta 2 {
        \partial 4
        d4^"GL 326, EG , D-Dur"^"Wir wollen alle fröhlich sein"
        d2 fs4 a2 b4 a(fs) g a2\breathe
        d4 cs(b) cs d2 a4 a2 g4 fs2\breathe
        d4 e2 g4 fs e fs d(b) cs d2 s4
      }
    }
  }
}

% GL 357, EG , D-Dur: Wie schön leuchtet der Morgenstern
wieSchoenLeuchtetDerMorgenstern = {
  \transpose d f {
    \key d \major
    \time 2/1
    \relative c' {
      \repeat volta 2 {
        \repeat volta 2 {
          d2^"GL 357, EG , D-Dur"^"Wie schön leuchtet der Morgenstern" a' fs d a' b4 b a2 r4
          a b cs d2 cs b4 b a2 r4
          a b2 a4 g2 fs4 e2 d r
        }
        a'2 fs a fs\breathe
        fs4 fs e e fs fs e e fs fs e d\breathe
        d'2 a b a g4 fs e2 d1 s\bar "|.|"
      }
    }
  }
}

% GL 388, EG , Es-Dur: Heilig
heilig = {
  \transpose ef f {
    \key ef \major
    \time 3/4
    \relative c'' {
      g2^"GL 388, EG , Es-Dur"^"Heilig" g4 f2 g4 af2. g2.\breathe
      f2 f4 f2 g4 ef2.~ef2 r4
      g2 g4 f2 g4 af2. g2.\breathe
      f2 f4 f2 g4 ef2.~ ef4 r r
      bf'2 bf4 bf2 bf4 c2. af\breathe
      af2 bf4 g2 ef4 f2.~f4 r r
      g2 g4 f2 ef4 af2. g2.\breathe
      c2 f,4 f2 g4 ef2.~ef4 r r\bar "|.|"
    }
  }
}

% GL 416, EG : Was Gott tut, das ist wohlgetan
wasGottTutDasIstWohlgetan = {
  \transpose ef f {
    \key ef \major
    \time 4/4
    \relative c' {
      \repeat volta 2 {
        \partial 4
        bf4^"GL 416, EG"^"Was Gott tut, das ist wohlgetan"
        ef4 f g af bf4. af8 g4\breathe
        c bf af g8 f g4 f2 ef4
      }
      bf'4 c c f, f bf bf ef,\breathe
      g f ef d8 c d4 c2 bf4\breathe
      bf' af g f g8 af f2 ef4 s\bar "|.|"
    }
  }
}

% GL 554, EG , B-Dur: Wachet auf, ruft uns die Stimme
wachetAufRuftUnsDieStimme = {
  \transpose bf f {
    \key bf \major
    \time 2/1
    \relative c'' {
      \repeat volta 2 {
        bf2^"GL 554, EG , B-Dur"^"Wachet auf, ruft uns die Stimme" d f2. f4 f f g(f g2) f2 r4
        f bf f bf d c d c2 f, r4
        f bf f g d ef c d2 r
      }
      r4 f f2. ef4 d c bf2 r4
      f' f2. ef4 d c bf2 c4 d ef2 d\breathe
      f g4 a bf2 bf4 d c2 bf\breathe
      f bf4 f g d ef c bf2\bar "|.|"
    }
  }
}

% GL 889, EG , G-Dur: Bayernlied
bayernlied = {
  \transpose g f {
    \key g \major
    \time 4/4
    \relative c'' {
      \partial 2
      g4^"GL 889, EG , G-Dur"^"Bayernlied" b d4. d8 c4 b a g b g d4. d8 e4 d8 c b2\breathe
      d4 g g4. fs8 a4 c c b a g fs4. fs8 g4 e d2
      \repeat volta 2 {
        a'4 b c4. b8 a4 g g fs a b c4. b8 a4 g fs2\breathe
        d'4 c b4. a8 g4 fs e fs g a d,4. d8 e4 fs g2 s\bar "|.|"
      }
    }
  }
}

% 1234
% M 432, B-Dur: America the Beautiful
americaTheBeautiful = {
  \transpose bf f {
    \key bf \major
    \time 4/4
    \relative c' {
      \partial 4
      f4^"M 432, B-Dur"^"America the Beautiful"
      f4. d8 d4 f f4. c8 c4 d ef f g a f2. f4 f4. d8 d4 f f4. c8 c4 c' b c d g, c2. f,4 d'4. d8 c4 bf bf4. a8 a4 bf c a g f bf2. bf4 bf4. g8 g4 bf bf4. f8 f4 f g bf f c' bf2. s4\bar "|.|"
    }
  }
}

% GL , EG :, F-Dur
adesteFideles = {
  \time 2/2
  \relative c' {
    \partial 4
    f4^"GL 242, EG x"^"Adeste Fideles" f2 c4 f g2 c, a'4 g a bf a2 g4\breathe
    f f2 e4 d e(f) g a8 f e2(d4.) c8 c2. r4 c'2 bf4 a bf2 a  g4 a f g e(d) c\breathe
    f f e f g f2 c4 a' a g a bf a2 g4\breathe
    c bf a g f e2 f4(bf) a2(g4.) f8 f2 r4\bar "|.|"
  }
}

% GL , EG, F-Dur
inDulciJubilo = {
  \time 6/4
  \relative c' {
    \partial 4
    f4^"GL 253, EG , F-Dur"^"In dulci jubilo"
    f2 f4 a2 bf4 c2(d4 c2) c4 f,2 f4 a2 bf4 c2(d4 c2) r4
    c2 d4 c2 bf4 a2. f2 f4 g2 g4 a2 g4 f2(g4 a2)\breathe
    a4 c2 d4 c2 bf4 a2. f2 f4 g2 g4 a2 g4 f2(g4 a2) r4
    d,2 d4 e2 e4 f2.(c'2) r4 a2 a4 g2 g4 f2.~f2 s4\bar "|.|"
  }
}

% GL 348, EG x, F-Dur
nunBittenWirDenHeiligenGeist = {
  \time 2/2
  \relative c' {
    f2^"GL 348, EG x"^"Nun bitten wir den Heiligen Geist" g4 g f2 d4 c d f f2\breathe
    a4 c d c a f d f f2\breathe
    a4 a a g a2 f4 f g g a2 f\breathe
    g4 g a2 f d g4 g f2 d c\breathe
    d4 e f2 f1\bar "|.|"
  }
}

% GL 365, EG 697, F-Dur
meineHoffnungUndMeineFreude = {
  \time 3/4
  \relative c' {
    \repeat volta 2 {
      \partial 4
      f8^"GL 365, EG 697, F-Dur"^"Meine Hoffnung und meine Freude" g
      a4 a8 a g f d4 c\breathe
      f8 g a4. a8 f4 g2\breathe
      c,8 c d4. d8 \tuplet 3/2 { e d e } f4.\breathe
      f8 g g a4 a8 a d bf g4.\breathe
      g8 c a f4 f8 d f e \partial 2 f2
    }
  }
}

% GL 380, EG 331, F-Dur
grosserGottWirLobenDich = {
  \time 3/4
  \relative c' {
    \repeat volta 2 {
      f2^"GL 380, EG 331, F-Dur"^"Großer Gott, wir loben dich" f4 f(e) f g(a) g f2 r4
      a2 a4 a(g) f c'(bf) a a g r
    }
    g2 a4 bf2 g4 a2 bf4 c2 r4
    d2 d4 c(bf) a bf(a) g f2.\bar "|.|"
  }
}

% GL 392, EG 316, F-Dur
lobeDenHerrnDenMaechtigenKoenigDerEhren = {
  \time 9/4
  \relative c' {
    \repeat volta 2 {
      \partial 2.
      f4^"GL 392, EG 316"^"Lobe den Herren" f c' a4. g8 f4 e d c d e f g2. f
    } c'4 c c d2. a4 bf c c4. bf8 a4 g2.\breathe
    c,4 d e f g a g2. f r\bar "|.|"
  }
}

% GL 487, EG 265, F-Dur
nunSingeLobDuChristenheit = {
  \time 2/1
  \relative c' {
    f2^"GL 487, EG 265"^"Nun singe Lob, du Christenheit" d4 c f2 g a4 a g2 r4
    a c bf a2 g f1\breathe
    c'2 a4 c d2 c bf4 a g2 r4
    c4 f, bf a2 g f1\bar "|.|"
  }
}

% GL 502, EG, F-Dur
naeherMeinGottZuDir = {
  \time 4/4
  \relative c'' {
    a2^"GL 502"^"Näher, mein Gott, zu dir" g4 f f4. d8 d2 c f4 a g2. r4
    a2 g4 f f4. d8 d2 c4(f) e g f2. r4
    c'2 d4 c c4. a8 c2 c d4 c c4. a8 g2\breathe
    a g4 f f4. d8 d2 c4(f) e g f1\bar "|.|"
  }
}

% GL 543, EG 295, F-Dur
wohlDenenDieDaWandeln = {
  \time 2/2
  \relative c' {
    \repeat volta 2 {
      \partial 4
      c4^"GL 543, EG 295"^"Wohl denen, die da wandeln"
      f g a c bf2 a4 g f g a g8 f g2 r4
    } \partial 4
    g
    g g a g f g e d f g a bf a2 g\breathe
    c bf4 g a2 g f2.\bar "|."
  }
}

% SM 430, F-Dur
amazingGrace = {
  \time 3/4
  \relative c' {
    \partial 4
    c4^"SM 430"^"Amazing Grace"
    f2 a8(f) a2 g4 f2 d4 c2 c4 f2 a8(f) a2 g4 c2.~ c2 a4 c4.(a8) c(a) f2 c4 d4.(f8) f(d) c2 c4 f2 a8(f) a2 g4 f2.~f2\bar "|.|"
  }
}

% SM 431, F-Dur
america = {
  \time 3/4
  \relative c' {
    f4^"SM 431, F-Dur"^"America" f  g e4. f8 g4 a a bf a4. g8 f4 g f e f2. c'4 c c c4. bf8 a4 bf bf bf bf4. a8 g4 a bf8(a) g(f) a4. bf8 c4 d(bf) a4 g f2.\bar "|.|"
  }
}

% SM 447, F-Dur
awayInAManger = {
  \time 3/4
  \relative c' {
    \partial 4
    c4^"SM 447"^"Away in a Manger"
    f f g8(a) f4 f a8(bf) c4 c d bf2 g8(a) bf4 bf c a a f8(a) g4 d f e2 c4 f f g8(a) f4 f a8(bf) c4 c d bf2 g8(a) bf4 bf c a a f8(a) g4 d e \partial 2 f2\bar "|.|"
  }
}

% SM 532, F-Dur
goTellItOnTheMountains = {
  \time 4/4
  \relative c'' {
    a2^"SM 532"^"Go, Tell It on the Mountains" a8. g16 f8. d16 c2 f g8 g4 g8 f4 g a8(g) a(g) f2 a a8. g16 f8. d16 c2 f4 bf a a g8(f) g4 \partial 2. f2.\bar "|.|"
  }
}

% SM 558, F-Dur
harkTheHeraldAngelsSing = {
  \time 4/4
  \relative c' {
    c4^"SM 558"^"Hark! The Herald Angels Sing" f f4. e8 f4 a a(g) c c c4. bf8 a4 g a2
    c,4 f f4. e8 f4 a a(g) c g g4. e8 e4 d c2 c'4 c c f, bf a a(g) c c c f, bf a a(g) d' d d c bf a bf2 g4 a8(bf) c4. f,8 f4 g a2 d4. d8 d4 c bf a bf2 g4 a8(bf) c4. f,8 f4 g f2\bar "|.|"
  }
}

% SM 618, F-Dur
loHowARoseEerBlooming = {
  \time 3/1
  \relative c' {
    c'2^"SM 618"^"Lo, How a Rose E'er Blooming" c4 c d c c2 a bf a4 g2 f e4 f2 c' c4 c d c c2 a bf a4 g2 f e4 f2 r4 a g e f d c2 r4 c' c c d c c2 a bf a4 g2 f e4 f1\bar "|.|"
  }
}

% SM 792, F-Dur
thisIsMySong = {
  \time 4/4
  \relative c'' {
    \partial 2.
    a4^"SM 792"^"This Is My Song" g a
    bf2. a4 g a f4. g8 g4 a2.~a4 a g a bf2. a4 g a f4. g8 a1~a4 c c c d2. a4 a c c4. g8 g4 bf2.~ bf4 bf a g a2. f4 f g g4. a8 a1~a4 c c c d2. a4 a c c4. g8 g4 bf2.~bf4 bf a g a2. f4 f g g4. f8 f1~f4\bar "|.|"
  }
}

% SM 800, F-Dur
toJesusChristOurSovereignKing = {
  \time 4/4
  \relative c' {
    \partial 4
    c4^"SM 800"^"To Jesus Christ, Our Sovereign King"
    f g a8(bf) c4 bf a g a a f bf a g2 f4 c f g a8(bf) c4 bf a g a a f bf a g2 f c' c4 c d2 d bf a4 g c2 c c, f4 a c2 bf4 a g1 \partial 2. f2.\bar "|.|"
  }
}

% SM 805, F-Dur
ubiCaritas = {
  \time 2/4
  \relative c'' {
    a8^"SM 805"^"Ubi Caritas" a g g f4. f8 bf4(a) g2 a8 a g g f2 d8 d \tuplet 3/2 { e(d) e } f2\bar "|.|"
  }
}

% Eingangs-Lied: EG 455, 1-3, Morgenlicht leuchtet, C-Dur
morgenLichtLeuchtet = {
  \transpose c f {
  % \transpose f f {
    \key c \major
    \time 9/4
    \relative c' {
      \partial 2.
      c4^"Eingangs-Lied"^"EG 455, 1-3, C-Dur"^"Morgenlicht leuchtet" e g
      c2. d b4 a g a2. g\breathe
      c,4 d e g2. a f4 e c d2.~ d\breathe
      g4 e g c2. a g4 e c c2. d\breathe
      e4 d e g2. a d,4 e d c2.~ c\bar "|.|"
    }
  }
}

% Wochen-Lied: EG 321, 1-3, Nun danket alle Gott, Es-Dur
nunDanketAlleGott = {
  \transpose ef f {
  % \transpose f f {
    \key ef \major
    \time 4/4
    \relative c'' {
      \repeat volta 2 {
        \partial 4
        bf4^"Wochen-Lied"^"EG 321, 1-3, Es-Dur"^"Nun danket alle Gott"
        bf bf c c bf2 r4
        g a g f g f2 ef
      }
      f
      f f g g f2 r4
      f g bf bf a bf2 r4
      bf c bf af g af2 r4
      g f g f f ef2.\bar "|.|"
    }
  }
}

% Predigt-Lied: KAA 057, 1-3, Licht der Liebe, Lebenslicht, G-Dur
lichtDerLiebeLebenslicht = {
  \transpose g f {
  % \transpose f f {
    \key g \major
    \time 4/4
    \relative c' {
      \partial 4
      d4^"Predigt-Lied"^"KAA 057, 1-3, G-Dur"^"Licht der Liebe, Lebenslicht"
      g g8 fs e2 d8 e d c b4.\breathe
      g'8 g4 g a2 fs8 g fs e d2
      e4 fs g d b'4 a8 g~g4 r
      c4 c8 b4 b8 a g a2 r
      e4 fs g d b' a8 g~g4 r
      c b8 a4 a8 g fs \partial 2. g2 r4\bar "|.|"
    }
  }
}

% Schlussvers EG 170, 1-4, Komm, Herr, segne uns, G-Dur
kommHerrSegneUns = {
  \transpose g f {
  % \transpose f f {
    \key g \major
    \time 2/2
    \relative c'' {
      \repeat volta 2 { g2^"Schlussvers"^"EG 170, 1-4, G-Dur"^"Komm, Herr, segne uns" d g4 a b2 c4 b a g a2 g }
      d'4. d8 a4 b c1 b4 a g fs e2 fs\breathe
      g4. g8 a4 b c2 b d4 b a a g1\bar "|.|"
    }
  }
}

allNotesMajor = {
  \mondAufgegangen % GL 93, EG 482, F-Dur
  \nunRuhenWaelder % GL , EG, F-Dur
  \lammGottes % GL , EG, F-Dur
  \alleinGottInDerHoehSeiEhr % GL , EG, F-Dur
  \christeDuLammGottes % GL 208, EG 190.2, F-Dur
  \wirSagenEuchAnDenLiebenAdvent % GL 223, EG 17, F-Dur
  \adesteFideles % GL 242, EG x, F-Dur
  \inDulciJubilo % GL 253, EG x, F-Dur
  \nunBittenWirDenHeiligenGeist % GL 348, EG x, F-Dur
  \meineHoffnungUndMeineFreude % GL 365, EG 697, F-Dur
  \grosserGottWirLobenDich % GL 380, EG 331, F-Dur
  \lobeDenHerrnDenMaechtigenKoenigDerEhren % GL 392, EG 316, F-Dur
  \nunSingeLobDuChristenheit % GL , EG, F-Dur
  \naeherMeinGottZuDir % GL , EG, F-Dur
  \wohlDenenDieDaWandeln % GL 543, EG 295, F-Dur
  \amazingGrace % SM 430, F-Dur
  \america % M, F-Dur
  \awayInAManger % , F-Dur
  \goTellItOnTheMountains % SM 532, F-Dur
  \harkTheHeraldAngelsSing % SM 558, F-Dur
  \loHowARoseEerBlooming % , F-Dur
  \thisIsMySong % , F-Dur
  \toJesusChristOurSovereignKing % , F-Dur
  \ubiCaritas % , F-Dur
  \machtHochDieTuer % GL 218, EG, Es-Dur
  \tochterZion % GL 228, EG, D-Dur
  \vomHimmelHoch % GL 237, EG, C-Dur
  \ohDuFroehliche % GL 238, EG, D-Dur
  \esIstEinRosEntsprungen % GL 243, EG, Es-Dur
  \lobtGottIhrChristenAlleGleich % GL 247, EG, Es-Dur
  \ihrKinderleinKommet % GL 248, EG, C-Dur
  \stilleNacht % GL 249, EG, B-Dur
  \oMenschBeweinDeinSuendeGross % GL 267, EG, C-Dur
  \wirWollenAlleFroehlichSein % GL, EG
  \wieSchoenLeuchtetDerMorgenstern % GL, EG
  \heilig % GL, EG
  \wasGottTutDasIstWohlgetan % GL, EG
  \wachetAufRuftUnsDieStimme % GL, EG
  \bayernlied % GL, EG
  \americaTheBeautiful % GL, EG
  \morgenLichtLeuchtet % GL , EG 455, 1-3, C-Dur
  \nunDanketAlleGott % GL , EG 321, 1-3, Es-Dur
  \lichtDerLiebeLebenslicht % KAA 057, 1-3, G-Dur
  \kommHerrSegneUns % GL , EG 170, 1-4, G-Dur
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%% Lieder in Moll
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% GL 224, EG : Maria durch ein Dornwald ging, e-Moll
mariaDurchEinDornwaldGing = {
  \transpose e a {
    \key e \minor
    \time 4/4
    \relative c' {
      \partial 4
      b4^"GL 224, EG, F-Dur"^"Maria durch ein Dornwald ging, e-Moll" e e8 fs g4 b g fs8 e fs4 fs g g8 g a2 b r4
      g8 a b4. a8 b4 c8 b a4. g8 a4 b8 a g4 g8 fs g g a g fs4 fs8 e fs4 fs\breathe
      e4. fs8 g4 b g8 fs e2 r4
      \bar "|.|"
    }
  }
}

% GL 256, EG : Ich steh an deiner Krippe hier, a-Moll
ichStehAnDeinerKrippeHier = {
  \key a \minor
  \time 4/4
  \relative c'' {
    \partial 4
    \repeat volta 2 {
      e4^"GL 256, EG , a-Moll"^"Ich steh an deiner Krippe hier" a b c a g4. f8 e4\breathe
      g c,4. b8 c4 d e2 e4
    }
    g c g a g f4. g8 e4\breathe
    g c g a g f4. g8 e4\breathe
    e fs gs a8 c b a gs2 a4 s
    \bar "|.|"
  }
}

% GL 290, EG : Herzliebster Jesu, was hast du verbrochen, f-Moll
herzliebsterJesuWasHastDuVerbrochen = {
  \transpose f a {
    \key f \minor
    \time 2/2
    \relative c' {
      f2^"GL 290, EG , f-Moll"^"Herzliebster Jesu, was hast du verbrochen" f4 f ef2 c f4 g af af bf2 g\breathe
      g af4 bf c2 af df4 df c c bf2 af\breathe
      af g4 f ef2 c ef4 ef f ef df2 c\breathe
      c'bf4 af g2 f
    }\bar "|.|"
  }
}

% GL 295, EG : O Traurigkeit, o Herzeleid! e-Moll
oTraurigkeitOHerzeleid = {
  \transpose e a' {
    \key e \minor
    \relative c' {
      \time 2/2
      b2^"GL 295, EG , e-Moll"^"O Traurigkeit, o Herzeleid!" g4 e f2 r4
      ds e e d2 r4
      b' b b c b a2 g\breathe
      fs4 g a b a g fs2 e4 fs g a fs2 e
    }\bar "|.|"
  }
}

% GL 349, EG : Komm, o Tröster, Heilger Geist, e-Moll
kommOTroesterHeilgerGeist = {
  \transpose e a {
    \key e \minor
    \time 6/4
    \relative c' {
      \partial 2.
      e2^"GL 349, EG , e-Moll"^"Komm, o Tröster, Heilger Geist" g4 fs2 b4 a2 g4 fs2.\breathe
      fs2 g4 a2 b4 b a2 b2.\breathe
      b2 g4 fs2 e4 e ds2 e2.
    }\bar "|.|"
  }
}

% GL 418, EG : Befiehl du deine Wege, a-Moll, Kirchentonart
befiehlDuDeineWege = {
  \time 2/2
  \relative c' {
    \partial 4
    d4^"GL 418, EG , a-Moll, Kirchentonart"^"Befiehl du deine Wege" f e f g a2 a4 c b a a gs a2 r4
    \partial 4
    a4 b c d b c2 a4 a g f f e f2 r4
    a f g a g f2 e4 f g a f e d2.
    \bar "|.|"
  }
}

% GL 424, EG : Wer nur den lieben Gott lässt walten, g-Moll
werNurDenLiebenGotLaesstWalten = {
  \transpose g a {
    \key g \minor
    \time 4/4
    \relative c' {
      \repeat volta 2 {
        \partial 4
        d4^"GL 424, EG , g-Moll"^"Wer nur den lieben Gott lässt walten"
        g a bf a g a8 g fs4 d r
        f f ef d g g fs g2 r4
      }
      \partial 4
      a bf c d d c4. bf8 bf4\breathe
      d c bf a g8 a bf4 a g
    }\bar "|.|"
  }
}

% GL 448, EG : Herr, gib uns Mut zum Hören, d-Moll
herrGibUnsMutZumHoeren = {
  \transpose d a {
    \key d \minor
    \time 2/2
    \relative c' {
      \partial 4
      d4^"GL 448, EG ,d-Moll"^"Herr, gib uns Mut zum Hören" f f e c d2 d4 d f f g g a2.\breathe
      a4 c 2 a g2. a4 f e d c d2.
    }\bar "|.|"
  }
}

% M 471: Christ Jesus Lay in Death's Strong Bands, g-Moll
christJesusLayInDeathsStrongBands = {
  \transpose g a' {
    \key g \minor
    \time 4/4
    \relative c' {
      \partial 4
      g4^"M 471, g-Moll"^"Christ Jesus Lay in Death's Strong Bands"
      f g bf c bf a g g ef f g ef d2 c4 g'f g bf c bf a g g ef f g ef d2 c
      c4 ef f c ef f g g c bf c d bf a g g bf g bf f  ef(d) c2 g'4 f8(ef) d2 c2. s4
    }\bar "|.|"
  }
}

% M 514: El Dios de Paz, d-Moll
elDiosDePaz = {
  \transpose d a {
    \key d \minor
    \time 2/4
    \relative c'' {
      a4^"M 514, d-Moll"^"El Dios de Paz" a8 a d4 c f, g a a a a8 bf a4 g f e d2
      a'4 a8 a d4 c f, g a a bf a8 g f4 g8(f) e4 d a'2
      \repeat volta 2 {
        d,8(e) f g a2 bf8(a) bf d a2
        g4 g8 g f4 f e8 d e f d2
      }
    }
    \bar "|.|"
  }
}

% M 527: From All Thy Saints in Warfare, d-Moll
fromAllThySaintsInWarfare = {
  \transpose d a {
    \key d \minor
    \time 4/4
    \relative c' {
      \partial 4
      a'4^"M 527, d-Moll"^"From All Thy Saints in Warfare" g a d, e f(g) c bf8(a) g4. f8 d4 c d2.
      d8(e) f4 g a c8(a) d2 d4 c a c a g a2.
      d,8(e) f4 g a c8(a) d2 c4 a c c a g a2. a4
      g a d, e f(g) c bf8(a) g4. f8 d c d2.
    }\bar "|.|"
  }
}

% M 741: Savior of Nations, Come, g-Moll
saviorOfTheNationsCome = {
  \transpose g a {
    \key g \minor
    \time 4/4
    \relative c'' {
      g4^"M 741, g-Moll"^"Savior of Nations, Come" g f bf a8(g) a4 g2 g4 bf c4. bf8 c4 d bf2 bf4 c d bf c bf8(a) g2
      g4 g f bf a8(g) a4 g2
    }\bar "|.|"
  }
}

% M 781: The Glory of These Forty Days, e-Moll
theGloryOfTheseFortyDays = {
  \transpose e e {
    \key e \minor
    \time 4/4
    \relative c' {
      \partial 4
      e8^"M 781, e-Moll"^"The Glory of These Forty Days"(fs)
      g4 fs8(e) ds4 e8(fs) g4 fs e g a a b g a a b b c b8(c) d(c) b4 a8(g) a4 g b g a g fs e ds e
    }\bar "|.|"
  }
}

allNotesMinor = {
  \mariaDurchEinDornwaldGing
  \ichStehAnDeinerKrippeHier
  \herzliebsterJesuWasHastDuVerbrochen
  \oTraurigkeitOHerzeleid
  \kommOTroesterHeilgerGeist
  \befiehlDuDeineWege
  \werNurDenLiebenGotLaesstWalten
  \herrGibUnsMutZumHoeren
  \christJesusLayInDeathsStrongBands
  \elDiosDePaz
  \fromAllThySaintsInWarfare
  \saviorOfTheNationsCome
  \theGloryOfTheseFortyDays
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%% Lieder in Dur
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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

% GL 218, EG : Macht hoch die Tür
machtHochDieTuerV = \lyricmode {
  Macht hoch die Tür, die Tor macht weit;
  Es kommt der Herr der Herr -- lich -- keit,
  Ein Kö -- nig al -- ler Kö -- nig -- reich,
  Ein Hei -- land al -- ler Welt zu -- gleich,
  Der Heil und Le -- ben mit sich bringt;
  Der -- hal -- ben jauchzt, mit Freu -- den singt:
  Ge -- lo -- bet sei mein Gott,
  Mein Schöp -- fer reich von Rat.
}

% GL , EG : Tochter Zion
tochterZionV = \lyricmode {
  Toch -- ter Zi -- on, freu -- e dich, jauch -- ze laut, Je -- ru -- sa -- lem!
  Sieh, dein Kö -- nig kommt zu dir,
  ja, er kommt, der Frie -- de -- fürst.
}

% GL 237, EG : Vom Himmel hoch
vomHimmelHochV = \lyricmode {
  Vom Him -- mel hoch, da komm' ich her,
  ich bring' euch gu -- te neu -- e Mär,
  der gu -- ten Mär bring' ich so -- viel,
  da -- von ich sing'n und sa _ -- gen will.
}

% GL 238, EG : Oh du fröhliche
oDuFroehlicheV = \lyricmode {
  O du fröh -- li -- che, o du se -- li -- ge,
  gna -- den -- brin -- gen -- de Weih -- nachts -- zeit!
  Welt ging ver -- lo -- ren, Christ ist ge -- bo -- ren:
  Freu -- e, freu -- e dich, o Chris -- ten -- heit!
}

% GL 243, EG : Es ist ein Ros entsprungen
esIstEinRosEntsprungenV = \lyricmode {
  <<
    {
      Es ist ein Ros' ent -- sprun -- gen
      aus ei -- ner Wur -- zel zart,
    } \new Lyrics {
      wie uns die Al -- ten sun -- gen,
      von Jes -- se kam die Art
    }
  >>
  und hat ein Blüm -- lein 'bracht
  mit -- ten im kal -- ten Win -- ter,
  wohl zu der hal -- ben Nacht.
}

% GL , EG : Lobt Gott ihr Christen alle gleich
lobtGottIhrChristenAlleGleichV = \lyricmode {
  Lobt Gott, ihr Chris -- ten al -- le _ gleich,
  in sei -- nem höchs -- ten Thron,
  der heut schließt auf sein Him -- mel _ -- reich
  und schenkt uns _ sei -- nen Sohn,
  und schenkt uns _ sei -- nen Sohn.
}

% GL , EG : Ihr Kinderlein kommet
ihrKinderleinKommetV = \lyricmode {
  <<
    {Ihr Kin -- der -- lein, kom -- met, o kom -- met doch all! }
    \new Lyrics {Zur Krip -- pe her kom -- met in Beth -- le -- hem Stall. }
  >>
  Und seht, was in die -- ser hoch -- hei -- li -- gen Nacht
  der Va -- ter im Him -- mel für Freu -- de uns lacht.
}

% GL 249, EG : Stille Nacht
stilleNachtV = \lyricmode {
  Stil _ -- le Nacht, hei -- li -- ge Nacht,
  al -- les schläft, ein -- sam wacht,
  nur das trau -- te hoch -- hei -- li -- ge Paar,
  Hol -- der Kna -- be im lo -- ck -- igen Haar,
  schlaf in himm -- li -- scher Ruh,
  schla -- fe in himm -- li -- scher Ruh.
}

% GL , EG : O Mensch bewein dein Sünde groß
oMenschBeweinDeinSuendeGrossV = \lyricmode {
  <<
    {
      O Mensch, be -- wein dein Sün -- de groß,
      dar -- um Chris -- tus seins Va -- ters Schoß
      äu -- ßert und kam auf Er -- den;
    }
    \new Lyrics {
      von ei -- ner Jung -- frau rein und zart
      für uns er hier ge -- bo -- ren ward,
      er wollt der Mitt -- ler wer -- den.
    }
  >>
  Den To -- ten er das Le -- ben gab
  und tat da -- bei all Krank -- heit ab,
  bis sich die Zeit her -- dran -- ge,
  dass er für uns ge -- op -- fert würd,
  trüg uns -- rer Sün -- den schwe -- re Bürd
  wohl an dem Kreu -- ze lan -- ge.
}

% GL 326, EG : Wir wollen alle fröhlich sein
wirWollenAlleFroehlichSeinV = \lyricmode {
  <<
    {
      Wir wol -- len al -- le fröh -- lich sein
      in die -- ser ös -- ter -- li -- chen Zeit;
      denn un -- ser Heil _ hat Gott be -- reit?.
    }
    \new Lyrics {
      Hal -- le -- lu -- ja, Hal -- le -- lu -- ja, Hal -- le -- lu -- ja, Hal -- le -- lu -- ja,
      ge -- lobt sei Chris -- tus, Ma -- ri -- en Sohn.
    }
  >>
}

% GL 357, EG : Wie schön leuchtet der Morgenstern
wieSchoenLeuchtetDerMorgensternV = \lyricmode {
  <<
    {
      Wie schön leuch -- tet der Mor -- gen -- stern
      voll Gnad und Wahr -- heit von dem Herrn,
      uns herr -- lich auf -- ge -- gan -- gen.
    }
    \new Lyrics {
      Du Sohn Da -- vids aus Ja -- kobs Stamm,
      mein Kö -- nig und mein Bräu -- ti -- gam,
      du hältst mein Herz ge -- fan -- gen.
    }
  >>
  lieb -- lich,
  freund -- lich,
  schön und herr -- lich,
  groß und ehr -- lich,
  reich an Ga -- ben,
  hoch und sehr präch -- tig er -- ha -- ben.
}

% GL , EG : Heilig
heiligV = \lyricmode {
  Hei -- lig, hei -- lig, hei -- lig,
  hei -- lig ist der Herr!
  Hei -- lig, hei -- lig, hei -- lig,
  hei -- lig ist nur Er!
  Er, der nie be -- gon -- nen,
  Er, der im -- mer war,
  e -- wig ist und wal -- tet, sein wird im -- mer -- dar.
}

% GL 416, EG : Was Gott tut, das ist wohlgetan
wasGottTutDasIstWohlgetanV = \lyricmode {
  <<
    {
      Was Gott tut, das ist wohl -- ge -- tan,
      es bleibt ge -- recht _ sein Wil -- le;
    }
    \new Lyrics {
      wie er fängt sei -- ne Sa -- chen an,
      will ich ihm hal _ -- ten stil -- le.
    }
  >>
  Er ist mein Gott,
  der in der Not
  mich wohl weiß zu _ er -- hal -- ten;
  drum lass ich ihn nur _ wal -- ten.
}

% GL 554, EG : Wachet auf, ruft uns die Stimme
wachetAufRuftUnsDieStimmeV = \lyricmode {
  <<
    {
      Wa -- chet auf, ruft uns die Stim -- me
      Der Wäch -- ter sehr hoch auf der Zin -- ne,
      Wach auf, du Stadt Je -- ru -- sa -- lem!
    }
    \new Lyrics {
      Mit -- ter -- nacht heißt die -- se Stun -- de;
      Sie ru -- fen uns mit hel -- lem Mun -- de:
      Wo seid ihr klu -- gen Jung -- frau -- en?
      Wohl auf, der Bräut -- gam kömmt;
      Steht auf, die Lam -- pen nehmt! Al -- le -- lu -- ja!
      Macht euch be -- reit
      Zu der Hoch -- zeit,
      Ihr müs -- set ihm ent -- ge -- gen gehn!
    }
  >>
}

% GL 889, EG : Bayernlied
bayernliedV = \lyricmode {
  Gott mit dir, du Land der Bay -- ern, deut -- sche Er -- de, Va -- ter _ -- land!
  Ü -- ber dei -- nen wei -- ten Gau -- en ru -- he Sei -- ne Se -- gens -- hand!
  Er be -- hü -- te dei -- ne Flu -- ren, schir -- me dei -- ner Städ -- te Bau
  Und er -- hal -- te dir die Far -- ben Sei -- nes Him -- mels, weiß und blau!
}

% 1234
% M 432, B-Dur: America the Beautiful
americaTheBeautifulV = \lyricmode {
  O beau -- ti -- ful for spa -- cious skies,
  For am -- ber waves of grain,
  For pur -- ple moun -- tain maj -- es -- ties
  A -- bove the fruit -- ed plain!
  A -- mer -- i -- ca! A -- mer -- i -- ca!
  God shed His grace on thee
  And crown thy good with broth -- er -- hood
  From sea to shin -- ing sea!
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

amazingGraceV = \lyricmode {
  A -- maz -- ing grace, how sweet the sound
  That saved a wretch like me
  I once was lost, but now I'm found
  Was blind, but now I see
}

americaV = \lyricmode {
  My coun -- try tis of thee sweet land of lib -- er -- ty
  Of thee I sing land where my fa -- thers died
  Land of the pil -- grim's pride
  From ev -- ery moun -- tain side let free -- dom ring
}

awayInAMangerV = \lyricmode {
  A -- way in a man -- ger
  No crib for a bed
  The lit -- tle Lord Je -- sus
  Lay down His sweet head
  The stars in the bright sky
  Look down where He lay
  The lit -- tle Lord Je -- sus
  A -- sleep on the hay
}

% SM 532
goTellItOnTheMountainsV = \lyricmode {
  Go tell it on the moun -- tain, o -- ver the hills and ev -- 'ry -- where;
  go tell it on the moun -- tain, that Je -- sus Christ is born.
}

% SM 558
harkTheHeraldAngelsSingV = \lyricmode {
  Hark! The her -- ald an -- gels sing
  'Glo -- ry to the new -- born king;
  Peace on earth and mer -- cy mild,
  God and sin -- ners rec -- on -- ciled'
  Joy -- ful all ye na -- tions rise,
  Join the tri -- umph of the skies
  With th'an -- gel -- ic host pro -- claim
  'Christ is born in Beth -- le -- hem'
  Hark! The her -- ald an -- gels sing
  'Glo -- ry to the new  born king!'
}

% SM 618
loHowARoseEerBloomingV = \lyricmode {
  Lo, how a rose e'er bloom -- ing,
  From ten -- der stem hath sprung.
  Of Jes -- se's lin -- eage com -- ing,
  As men of old have sung;
  It came, a flow'r -- et bright,
  A -- mid the cold of win -- ter,
  When half spent was the night.
}

% SM 792
thisIsMySongV = \lyricmode {
  This is my song,
  O God of all the na -- tions,
  A song of peace for lands a -- far
  and mine.
  This is my home, the coun -- try
  where my heart is;
  Here are my hopes, my dreams,
  my ho -- ly shrine;
  But oth -- er hearts in oth -- er lands
  are beat -- ing
  With hopes and dreams as true
  and high as mine.
}

% SM 800
toJesusChristOurSovereignKingV = \lyricmode {
  To Je -- sus Christ, our Sov -- ’reign King,
  Who is the world’s sal -- va -- tion,
  All praise and hom -- age do we bring,
  And thanks and ad -- o -- ra -- tion.
  Christ Je -- sus Vic -- tor,
  Christ Je -- sus Ru -- ler!
  Christ Je -- sus, Lord and Re -- deem -- er!
}

% SM 805
ubiCaritasV = \lyricmode {
  U -- bi ca -- ri -- tas et a -- mor
  U -- bi ca -- ri -- tas, De -- us i -- bi est
}

% Eingangs-Lied: EG 455, 1-3, Morgenlicht leuchtet
morgenLichtLeuchtetV = \lyricmode {
  Mor -- gen -- licht leuch -- tet, rein wie am An -- fang. Früh -- lied der Am -- sel, Schöp -- fer -- lob klingt. Dank für die Lie -- der, Dank für den Mor -- gen, Dank für das Wort, dem bei -- des ent -- springt.
}

% Wochen-Lied: EG 321, 1-3, Nun danket alle Gott
nunDanketAlleGottV = \lyricmode {
  <<
    {
      Nun dan -- ket al -- le Gott
      mit Her -- zen, Mund und Hän -- den,
    } \new Lyrics
    {
      der gro -- ße Din -- ge tut
      an uns und al -- len En -- den,
    }
  >>
  der uns von Mut -- ter -- leib
  und Kin -- des -- bei -- nen an
  un -- zäh -- lig viel zu gut
  bis hier -- her hat ge -- tan.
}

% Predigt-Lied: KAA 057, 1-3, Licht der Liebe, Lebenslicht
lichtDerLiebeLebenslichtV = \lyricmode {
  Ein Licht geht uns auf in der Dun -- kel -- heit,
  Durch -- bricht die Nacht und er -- hellt die Zeit.
  Licht der Lie -- be, Le -- bens -- licht,
  Got -- tes Geist ver -- lässt uns nicht.
  Licht der Lie -- be, Le -- bens -- licht,
  Got -- tes Geist ver -- lässt uns nicht.
}

% Schlussvers EG 170, 1-4, Komm, Herr, segne uns
kommHerrSegneUnsV = \lyricmode {
  <<
    {Komm, Herr, seg -- ne uns, dass wir uns nicht tren -- nen, } \new Lyrics {
      son -- dern ü -- ber -- all uns zu dir be -- ken -- nen.
    }
  >>
  Nie sind wir al -- lein, stets sind wir die Dei -- nen.
  La -- chen o -- der Wei -- nen wird ge -- seg -- net sein.
}

allLyricsMajor = {
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
  \amazingGraceV
  \americaV
  \awayInAMangerV
  \goTellItOnTheMountainsV
  \harkTheHeraldAngelsSingV
  \loHowARoseEerBloomingV
  \thisIsMySongV
  \toJesusChristOurSovereignKingV
  \ubiCaritasV
  \machtHochDieTuerV % GL 218, EG, Es-Dur
  \tochterZionV % GL 228, EG, D-Dur
  \vomHimmelHochV % GL 237, EG, C-Dur
  \oDuFroehlicheV % GL 238, EG, D-Dur
  \esIstEinRosEntsprungenV % GL 243, EG, Es-Dur
  \lobtGottIhrChristenAlleGleichV % GL 247, EG, Es-Dur
  \ihrKinderleinKommetV % GL 248, EG, C-Dur
  \stilleNachtV % GL 249, EG, B-Dur
  \oMenschBeweinDeinSuendeGrossV % GL 267, EG, C-Dur
  \wirWollenAlleFroehlichSeinV % GL, EG
  \wieSchoenLeuchtetDerMorgensternV % GL, EG
  \heiligV % GL, EG
  \wasGottTutDasIstWohlgetanV % GL, EG
  \wachetAufRuftUnsDieStimmeV % GL, EG
  \bayernliedV % GL, EG
  \americaTheBeautifulV % GL, EG
  \morgenLichtLeuchtetV % GL , EG 455, 1-3, -Dur
  \nunDanketAlleGottV % GL , EG 321, 1-3, -Dur
  \lichtDerLiebeLebenslichtV % KAA 057, 1-3, -Dur
  \kommHerrSegneUnsV % GL , EG 170, 1-4, -Dur
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%% Lieder in Moll
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% GL 224, EG
mariaDurchEinDornwaldGingV = \lyricmode {
  Ma -- ri _ -- a durch ein Dorn -- wald _ ging, _
  Ky -- rie e -- lei -- son.
  Ma _ -- ri -- a durch ein _ Dorn -- wald ging,
  der _ hat _ in sie -- ben Jahrn kein Laub _ ge -- tra -- gen.
  Je -- sus und Ma -- ri _ -- a.
}

% GL 256, EG
ichStehAnDeinerKrippeHierV = \lyricmode {
  <<
    {
      Ich steh an dei -- ner Krip -- pen hier,
      o Je -- su, du mein Le -- ben;
    }
    \new Lyrics {
      ich kom -- me, bring und schen -- ke dir,
      was du mir hast ge -- ge -- ben.
    }
  >>
  Nimm hin, es ist mein Geist und Sinn,
  Herz, Seel und Mut, nimm al -- les hin
  und lass dir’s wohl _ -- ge _ -- fal -- len.
}

% GL 290
herzliebsterJesuWasHastDuVerbrochenV = \lyricmode {
  Herz -- liebs -- ter Je -- su, was hast Du ver -- bro -- chen,
  dass man ein solch scharf Ur -- teil hat ge -- spro -- chen?
  Was ist die Schuld, in was für Miss -- e -- ta -- ten
  bist Du ge -- ra -- ten?
}

%
oTraurigkeitOHerzeleidV = \lyricmode {
  O Trau -- rig -- keit,
  o Her -- ze -- leid!
  Ist das nicht zu be -- kla -- gen?
  Gott, des Va -- ter ei -- nig Kind,
  wird ins Grab ge -- tra -- gen.
}

%
kommOTroesterHeilgerGeistV = \lyricmode {
  Komm, o Trös -- ter, Heil -- ger Geist,
  Licht, das uns den Tag ver -- heißt,
  Quell, der uns mit Ga -- ben speist.
}

%
befiehlDuDeineWegeV = \lyricmode {
  <<
    {
      Be -- fiehl du dei -- ne We -- ge
      und was dein Her -- ze kränkt
    }
    \new Lyrics {
      der al -- ler -- treus -- ten Pfle -- ge
      des, der den Him -- mel lenkt.
    }
  >>
  Der Wol -- ken, Luft und Win -- den
  gibt We -- ge, Lauf und Bahn,
  der wird auch We -- ge fin -- den,
  da dein Fuß ge -- hen kann.
}

%
werNurDenLiebenGotLaesstWaltenV = \lyricmode {
  <<
    {
      Wer nur den lie -- ben Gott lässt _ wal -- ten
      Und hof -- fet auf Ihn al -- le -- zeit
    }
    \new Lyrics {
      Der wird Ihn wun -- der -- lich er _ -- hal -- ten
      In al -- ler Noht und Trau -- rig -- keit.
    }
  >>
  Wer Gott dem Al -- ler -- höchs -- ten traut
  Der hat auf kei -- nen _ Sand ge -- baut.
}

%
herrGibUnsMutZumHoerenV = \lyricmode {
  Herr, gib uns Mut zum Hö -- ren auf das, was du uns sagst.
  Wir dan -- ken dir, dass du es mit uns wagst.
}

%
christJesusLayInDeathsStrongBandsV = \lyricmode {
  Christ Je -- sus lay in death’s strong bands,
  for our of -- fens -- es giv -- en;
  but now at God’s right hand He stands
  and brings us light from heav -- en.
  There -- fore let us joy -- ful be
  and sing to God right thank -- ful -- ly
  loud songs of hal -- le -- lu -- jah.
  Hal -- le -- lu -- jah!
}

%
elDiosDePazV = \lyricmode {
  El Dios de paz, el Ver -- bo_e -- ter -- no,
  en nes -- tras al -- mas va_a mo -- rar;
  Él es la luz, ca -- mi -- no_y vi -- da,
  gra -- cia_y per -- dón pa -- ra_el mor -- tal.
  Ven, Sal -- va -- dor, ven sin tar -- dar,
  tu pue -- blo san -- to es -- pe -- ran -- do_es -- tá.
}

%
fromAllThySaintsInWarfareV = \lyricmode {
  From all Thy saints in war­ -- fare,
  For all Thy saints at rest,
  To Thee, O bless -- ­èd Je -- ­sus,
  All prais -- ­es be ad -- ­dressed;
  Thou, Lord, didst win the bat -- ­tle,
  That they might con -- ­quer­ors be;
  Their crowns of liv -- ­ing glo -- ­ry
  Are lit with rays from Thee.
}

%
saviorOfTheNationsComeV = \lyricmode {
  Sav -- ior of the na -- tions, come;
  vir -- gin's Son, make here Thy home!
  Mar -- vel now, O heav'n and earth,
  that the Lord chose such a birth.
}

%
theGloryOfTheseFortyDaysV = \lyricmode {
  The glo -- ry of these for -- ty days
  we cel -- e -- brate with songs of praise,
  for Christ, by whom all things were made,
  him -- self has fast -- ed and has prayed.
}

allLyricsMinor = {
  \mariaDurchEinDornwaldGingV
  \ichStehAnDeinerKrippeHierV
  \herzliebsterJesuWasHastDuVerbrochenV
  \oTraurigkeitOHerzeleidV
  \kommOTroesterHeilgerGeistV
  \befiehlDuDeineWegeV
  \werNurDenLiebenGotLaesstWaltenV
  \herrGibUnsMutZumHoerenV
  \christJesusLayInDeathsStrongBandsV
  \elDiosDePazV
  \fromAllThySaintsInWarfareV
  \saviorOfTheNationsComeV
  \theGloryOfTheseFortyDaysV
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