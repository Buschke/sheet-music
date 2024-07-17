\version "2.24.2"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = ""
  title = "Lieder in Dur, nachher auch transponiert"
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

\include "GL_Lieder-Dur-Moll_Noten.ly"

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
}

global = {
  \time 4/4
  \tempo "Gemächlich" 4=100
}

globalA = {
%  \key f \major
  \global
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
  % \lobeDenHerrnDenMaechtigenKoenigDerEhren % GL 392, EG 316, F-Dur
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
  \morgenLichtLeuchtet % GL , EG 455, 1-3, -Dur
  \nunDanketAlleGott % GL , EG 321, 1-3, -Dur
  \lichtDerLiebeLebenslicht % KAA 057, 1-3, -Dur
  \kommHerrSegneUns % GL , EG 170, 1-4, -Dur
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
  % \lobeDenHerrnDenMaechtigenKoenigDerEhrenV
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
  \morgenLichtLeuchtetV % GL , EG 455, 1-3, -Dur
  \nunDanketAlleGottV % GL , EG 321, 1-3, -Dur
  \lichtDerLiebeLebenslichtV % KAA 057, 1-3, -Dur
  \kommHerrSegneUnsV % GL , EG 170, 1-4, -Dur
}

scoreAMelody = \relative c'' {
  \globalA
  % Music follows here.
  \allNotesMajor
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  \allLyricsMajor
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
          \allLyricsMajor
        }
      }
      \new Lyrics = "b"
      \context Lyrics = "b" {
        \lyricsto "melody" {
%          \mondAufgegangenBV
        }
      }
    >>
    \layout { }
    \midi { }
  }
}
