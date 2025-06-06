\version "2.24.4"

\header {
  dedication = ""
  title = "Lieder, Taufgottesdienst 3. August 2024"
  subtitle = "Stephanuskirche"
  subsubtitle = "EG"
  instrument = "Orgel"
  composer = ""
  arranger = \markup {"Arr: " \with-url "https://buschke.com" "Sven Buschke"}
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  copyright = \markup {"© Satz, 17.07.2024: " \with-url "https://buschke.com" "Sven Buschke"}
  tagline = "best of Gotteslob"
}

\include "../../Gotteslob/GL_Lieder-Dur-Moll_Noten.ly"

global = {
  \key f \major
  \time 4/4
  \tempo "Flott" 4=100
}

allNotesMajor = {
  % \mondAufgegangen % GL 93, EG 482, F-Dur
  % \nunRuhenWaelder % GL , EG, F-Dur
  % \lammGottes % GL , EG, F-Dur
  % \alleinGottInDerHoehSeiEhr % GL , EG, F-Dur
  % \christeDuLammGottes % GL 208, EG 190.2, F-Dur
  % \wirSagenEuchAnDenLiebenAdvent % GL 223, EG 17, F-Dur
  % \adesteFideles % GL 242, EG x, F-Dur
  % \inDulciJubilo % GL 253, EG x, F-Dur
  % \nunBittenWirDenHeiligenGeist % GL 348, EG x, F-Dur
  % \meineHoffnungUndMeineFreude % GL 365, EG 697, F-Dur
  % \grosserGottWirLobenDich % GL 380, EG 331, F-Dur
  \lobeDenHerrnDenMaechtigenKoenigDerEhren % GL 392, EG 316, F-Dur
  % \nunSingeLobDuChristenheit % GL , EG, F-Dur
  % \naeherMeinGottZuDir % GL , EG, F-Dur
  % \wohlDenenDieDaWandeln % GL 543, EG 295, F-Dur
  % \amazingGrace % SM 430, F-Dur
  % \america % M, F-Dur
  % \awayInAManger % , F-Dur
  % \goTellItOnTheMountains % SM 532, F-Dur
  % \harkTheHeraldAngelsSing % SM 558, F-Dur
  % \loHowARoseEerBlooming % , F-Dur
  % \thisIsMySong % , F-Dur
  % \toJesusChristOurSovereignKing % , F-Dur
  % \ubiCaritas % , F-Dur
  % \machtHochDieTuer % GL 218, EG, Es-Dur
  % \tochterZion % GL 228, EG, D-Dur
  % \vomHimmelHoch % GL 237, EG, C-Dur
  % \ohDuFroehliche % GL 238, EG, D-Dur
  % \esIstEinRosEntsprungen % GL 243, EG, Es-Dur
  % \lobtGottIhrChristenAlleGleich % GL 247, EG, Es-Dur
  % \ihrKinderleinKommet % GL 248, EG, C-Dur
  % \stilleNacht % GL 249, EG, B-Dur
  % \oMenschBeweinDeinSuendeGross % GL 267, EG, C-Dur
  % \wirWollenAlleFroehlichSein % GL, EG
  % \wieSchoenLeuchtetDerMorgenstern % GL, EG
  % \heilig % GL, EG
  % \wasGottTutDasIstWohlgetan % GL, EG
  % \wachetAufRuftUnsDieStimme % GL, EG
  % \bayernlied % GL, EG
  % \americaTheBeautiful % GL, EG
  %\transpose f c {\morgenLichtLeuchtet} % GL , EG 455, 1-3, C-Dur
  %\transpose f d {\sonneDerGerechtigkeit} % GL , EG 326, 1-2, 6-7, D-Dur
  %\transpose f ef {\nunDanketAlleGott} % GL , EG 321, 1-3, Es-Dur
  %\transpose f g {\lichtDerLiebeLebenslicht} % KAA 057, 1-3, G-Dur
  %\transpose f g {\kommHerrSegneUns} % GL , EG 170, 1-4, G-Dur
  \gottDerDuAllesLebenSchufst
  \ichBinGetauftAuDdeinenNamen
}

allLyricsMajor = {
  % \mondAufgegangenAV
  % \nunRuhenWaelderV
  % \lammGottesV
  % \alleinGottInDerHoehSeiEhrV
  % \christeDuLammGottesV
  % \wirSagenEuchAnDenLiebenAdventV
  % \adesteFidelesV
  % \inDulciJubiloV
  % \nunBittenWirDenHeiligenGeistV
  % \meineHoffnungUndMeineFreudeV
  % \grosserGottWirLobenDichV
   \lobeDenHerrnDenMaechtigenKoenigDerEhrenV
  % \nunSingeLobDuChristenheitV
  % \naeherMeinGottZuDirV
  % \wohlDenenDieDaWandelnV
  % \amazingGraceV
  % \americaV
  % \awayInAMangerV
  % \goTellItOnTheMountainsV
  % \harkTheHeraldAngelsSingV
  % \loHowARoseEerBloomingV
  % \thisIsMySongV
  % \toJesusChristOurSovereignKingV
  % \ubiCaritasV
  % \machtHochDieTuerV % GL 218, EG, Es-Dur
  % \tochterZionV % GL 228, EG, D-Dur
  % \vomHimmelHochV % GL 237, EG, C-Dur
  % \oDuFroehlicheV % GL 238, EG, D-Dur
  % \esIstEinRosEntsprungenV % GL 243, EG, Es-Dur
  % \lobtGottIhrChristenAlleGleichV % GL 247, EG, Es-Dur
  % \ihrKinderleinKommetV % GL 248, EG, C-Dur
  % \stilleNachtV % GL 249, EG, B-Dur
  % \oMenschBeweinDeinSuendeGrossV % GL 267, EG, C-Dur
  % \wirWollenAlleFroehlichSeinV % GL, EG
  % \wieSchoenLeuchtetDerMorgensternV % GL, EG
  % \heiligV % GL, EG
  % \wasGottTutDasIstWohlgetanV % GL, EG
  % \wachetAufRuftUnsDieStimmeV % GL, EG
  % \bayernliedV % GL, EG
  % \americaTheBeautifulV % GL, EG
  %\morgenLichtLeuchtetV % GL , EG 455, 1-3, C-Dur
  %\sonneDerGerechtigkeitV % GL , EG 326, 1-2, 6-7, D-Dur
  %\nunDanketAlleGottV % GL , EG 321, 1-3, Es-Dur
  %\lichtDerLiebeLebenslichtV % KAA 057, 1-3, G-Dur
  %\kommHerrSegneUnsV % GL , EG 170, 1-4, G-Dur
  \gottDerDuAllesLebenSchufstV
  \ichBinGetauftAuDdeinenNamenV
}

allLyricsMajorVTwo = {
  \lobeDenHerrnDenMaechtigenKoenigDerEhrenVTwo
  \gottDerDuAllesLebenSchufstVTwo
  \ichBinGetauftAuDdeinenNamenVTwo
}

allLyricsMajorVThree = {
  \lobeDenHerrnDenMaechtigenKoenigDerEhrenVFour

}

allLyricsMajorVFour = {
  \lobeDenHerrnDenMaechtigenKoenigDerEhrenVFour
  \gottDerDuAllesLebenSchufstVFour
}

scoreAMelody = \relative c'' {
  \global
  % Music follows here.
  \lobeDenHerrnDenMaechtigenKoenigDerEhren
}

scoreAVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  \lobeDenHerrnDenMaechtigenKoenigDerEhrenV
}

scoreAVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  \lobeDenHerrnDenMaechtigenKoenigDerEhrenVTwo
}

scoreAVerseThree = \lyricmode {
  \set stanza = "4."
  % Lyrics follow here.
  \lobeDenHerrnDenMaechtigenKoenigDerEhrenVFour
}

\bookpart {
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreAMelody }
    \addlyrics { \scoreAVerseOne }
    \addlyrics { \scoreAVerseTwo }
    \addlyrics { \scoreAVerseThree }
    \layout { }
    \midi { }
  }
}

scoreBMelody = \relative c'' {
  \global
  % Music follows here.
  \gottDerDuAllesLebenSchufst
}

scoreBVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  \gottDerDuAllesLebenSchufstV
}

scoreBVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  \gottDerDuAllesLebenSchufstVTwo
}

scoreBVerseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  \gottDerDuAllesLebenSchufstVThree
}

scoreBVerseFour = \lyricmode {
  \set stanza = "4."
  % Lyrics follow here.
  \gottDerDuAllesLebenSchufstVFour
}

\bookpart {
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreBMelody }
    \addlyrics { \scoreBVerseOne }
    \addlyrics { \scoreBVerseTwo }
    \addlyrics { \scoreBVerseThree }
    \addlyrics { \scoreBVerseFour }
    \layout { }
    \midi { }
  }
}

scoreCMelody = \relative c'' {
  \global
  % Music follows here.
  \ichBinGetauftAuDdeinenNamen
}

scoreCVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  \ichBinGetauftAuDdeinenNamenV
}

scoreCVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  \ichBinGetauftAuDdeinenNamenVTwo
}

scoreCVerseThree = \lyricmode {
  \set stanza = "4."
  % Lyrics follow here.
  \ichBinGetauftAuDdeinenNamenVFour
}

\bookpart {
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreCMelody }
    \addlyrics { \scoreCVerseOne }
    \addlyrics { \scoreCVerseTwo }
    \addlyrics { \scoreCVerseThree }
    \layout { }
    \midi { }
  }
}
