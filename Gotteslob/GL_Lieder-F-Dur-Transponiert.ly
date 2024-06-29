\version "2.24.2"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = ""
  title = "Lieder in F-Dur, nachher auch transponiert"
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

\include "GL_Lieder-F-Dur_Noten.ly"

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
}

global = {
%  \key c \major
  \time 4/4
  \tempo "Gemächlich" 4=100
}

globalA = {
  \key f \major
  \global
}

scoreAMelody = \relative c'' {
  \global
  % Music follows here.
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
  \amazingGrace % SM 430
  \america
  \awayInAManger
  \goTellItOnTheMountains % SM 532
  \harkTheHeraldAngelsSing % SM 558
  \loHowARoseEerBlooming
  \thisIsMySong
  \toJesusChristOurSovereignKing
  \ubiCaritas
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
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

globalB = {\key c \major
            \global}

scoreBMelody = \relative c'' {
  \globalB
  % Music follows here.
  \transpose f c \scoreAMelody
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

\bookpart {
  \header {title = "Lieder in F-Dur, transponiert nach C-Dur"}
  \score {
    <<
      \new Staff \with {
        midiInstrument = "choir aahs"
      }{
        \new Voice = "melody" {
          \relative c' {
            \scoreBMelody
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

allChordsB = \transpose f c \allChords
allChordsIIB = \transpose f c \allChordsII


\bookpart {
  \header {
    title = "Lieder in F-Dur, transponiert nach C-Dur"
    subtitle = "mit Akkorden und bezifferten Bass"
  }
  \score {
    <<
      \new ChordNames \allChordsB
      \new FiguredBass \allBassFigs
      \new Staff \with {
        midiInstrument = "choir aahs"
      } {
        \new Voice = "melody" {
          \relative c' {
            \scoreBMelody
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
      \new ChordNames \allChordsIIB
      \new FiguredBass \allBassFigsII
    >>
    \layout { }
  }
  \score {
    \unfoldRepeats {
      <<
        \new ChordNames \allChordsB
        \new FiguredBass \allBassFigs
        \new Staff \with {
          midiInstrument = "choir aahs"
        } {
          \new Voice = "melody" {
            \relative c' {
              \scoreBMelody
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
              \scoreBMelody
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
        \new ChordNames \allChordsIIB
        \new FiguredBass \allBassFigsII
      >>
    }
    \midi { }
  }
}

globalC = {\key g \major
            \global}

scoreCMelody = \relative c'' {
  \globalC
  % Music follows here.
  \transpose f g \scoreAMelody
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

\bookpart {
  \header {title = "Lieder in F-Dur, transponiert nach G-Dur"}
  \score {
    <<
      \new Staff \with {
        midiInstrument = "choir aahs"
      }{
        \new Voice = "melody" {
          \relative c' {
            \scoreCMelody
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

allChordsC = \transpose f g \allChords
allChordsIIC = \transpose f g \allChordsII

\bookpart {
  \header {
    title = "Lieder in F-Dur, transponiert nach G-Dur"
    subtitle = "mit Akkorden und bezifferten Bass"
  }
  \score {
    <<
      \new ChordNames \allChordsC
      \new FiguredBass \allBassFigs
      \new Staff \with {
        midiInstrument = "choir aahs"
      } {
        \new Voice = "melody" {
          \relative c' {
            \scoreCMelody
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
      \new ChordNames \allChordsIIC
      \new FiguredBass \allBassFigsII
    >>
    \layout { }
  }
  \score {
    \unfoldRepeats {
      <<
        \new ChordNames \allChordsC
        \new FiguredBass \allBassFigs
        \new Staff \with {
          midiInstrument = "choir aahs"
        } {
          \new Voice = "melody" {
            \relative c' {
              \scoreCMelody
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
              \scoreCMelody
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
        \new ChordNames \allChordsIIC
        \new FiguredBass \allBassFigsII
      >>
    }
    \midi { }
  }
}

globalD = {\key d \major
            \global}

scoreDMelody = \relative c'' {
  \globalD
  % Music follows here.
  \transpose f d \scoreAMelody
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

\bookpart {
  \header {title = "Lieder in F-Dur, transponiert nach D-Dur"}
  \score {
    <<
      \new Staff \with {
        midiInstrument = "choir aahs"
      }{
        \new Voice = "melody" {
          \relative c' {
            \scoreDMelody
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

allChordsD = \transpose f d \allChords
allChordsIID = \transpose f d \allChordsII

\bookpart {
  \header {
    title = "Lieder in F-Dur, transponiert nach D-Dur"
    subtitle = "mit Akkorden und bezifferten Bass"
  }
  \score {
    <<
      \new ChordNames \allChordsD
      \new FiguredBass \allBassFigs
      \new Staff \with {
        midiInstrument = "choir aahs"
      } {
        \new Voice = "melody" {
          \relative c' {
            \scoreDMelody
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
      \new ChordNames \allChordsIID
      \new FiguredBass \allBassFigsII
    >>
    \layout { }
  }
  \score {
    \unfoldRepeats {
      <<
        \new ChordNames \allChordsD
        \new FiguredBass \allBassFigs
        \new Staff \with {
          midiInstrument = "choir aahs"
        } {
          \new Voice = "melody" {
            \relative c' {
              \scoreDMelody
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
              \scoreDMelody
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
        \new ChordNames \allChordsIID
        \new FiguredBass \allBassFigsII
      >>
    }
    \midi { }
  }
}

globalE = {\key bf \major
            \global}

scoreEMelody = \relative c'' {
  \globalE
  % Music follows here.
  \transpose f bf \scoreAMelody
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.

}

\bookpart {
  \header {title = "Lieder in F-Dur, transponiert nach B-Dur"}
  \score {
    <<
      \new Staff \with {
        midiInstrument = "choir aahs"
      }{
        \new Voice = "melody" {
          \relative c' {
            \scoreEMelody
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

allChordsE = \transpose f bf \allChords
allChordsIIE = \transpose f bf \allChordsII

\bookpart {
  \header {
    title = "Lieder in F-Dur, transponiert nach B-Dur"
    subtitle = "mit Akkorden und bezifferten Bass"
  }
  \score {
    <<
      \new ChordNames \allChordsE
      \new FiguredBass \allBassFigs
      \new Staff \with {
        midiInstrument = "choir aahs"
      } {
        \new Voice = "melody" {
          \relative c' {
            \scoreEMelody
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
      \new ChordNames \allChordsIIE
      \new FiguredBass \allBassFigsII
    >>
    \layout { }
  }
  \score {
    \unfoldRepeats {
      <<
        \new ChordNames \allChordsE
        \new FiguredBass \allBassFigs
        \new Staff \with {
          midiInstrument = "choir aahs"
        } {
          \new Voice = "melody" {
            \relative c' {
              \scoreEMelody
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
              \scoreEMelody
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
        \new ChordNames \allChordsIIE
        \new FiguredBass \allBassFigsII
      >>
    }
    \midi { }
  }
}

globalF = {\key a \major
            \global}

scoreFMelody = \relative c'' {
  \globalF
  % Music follows here.
  \transpose f a \scoreAMelody
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

\bookpart {
  \header {title = "Lieder in F-Dur, transponiert nach A-Dur"}
  \score {
    <<
      \new Staff \with {
        midiInstrument = "choir aahs"
      }{
        \new Voice = "melody" {
          \relative c' {
            \scoreFMelody
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

allChordsF = \transpose f a \allChords
allChordsIIF = \transpose f a \allChordsII

\bookpart {
  \header {
    title = "Lieder in F-Dur, transponiert nach A-Dur"
    subtitle = "mit Akkorden und bezifferten Bass"
  }
  \score {
    <<
      \new ChordNames \allChordsF
      \new FiguredBass \allBassFigs
      \new Staff \with {
        midiInstrument = "choir aahs"
      } {
        \new Voice = "melody" {
          \relative c' {
            \scoreFMelody
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
      \new ChordNames \allChordsIIF
      \new FiguredBass \allBassFigsII
    >>
    \layout { }
  }
  \score {
    \unfoldRepeats {
      <<
        \new ChordNames \allChordsF
        \new FiguredBass \allBassFigs
        \new Staff \with {
          midiInstrument = "choir aahs"
        } {
          \new Voice = "melody" {
            \relative c' {
              \scoreFMelody
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
              \scoreFMelody
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
        \new ChordNames \allChordsIIF
        \new FiguredBass \allBassFigsII
      >>
    }
    \midi { }
  }
}

globalG = {\key ef \major
            \global}

scoreGMelody = \relative c'' {
  \globalG
  % Music follows here.
  \transpose f ef \scoreAMelody
}

scoreGVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

\bookpart {
  \header {title = "Lieder in F-Dur, transponiert nach Es-Dur"}
  \score {
    <<
      \new Staff \with {
        midiInstrument = "choir aahs"
      }{
        \new Voice = "melody" {
          \relative c' {
            \scoreGMelody
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

allChordsG = \transpose f ef \allChords
allChordsIIG = \transpose f ef \allChordsII

\bookpart {
  \header {
    title = "Lieder in F-Dur, transponiert nach Es-Dur"
    subtitle = "mit Akkorden und bezifferten Bass"
  }
  \score {
    <<
      \new ChordNames \allChordsG
      \new FiguredBass \allBassFigs
      \new Staff \with {
        midiInstrument = "choir aahs"
      } {
        \new Voice = "melody" {
          \relative c' {
            \scoreGMelody
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
      \new ChordNames \allChordsIIG
      \new FiguredBass \allBassFigsII
    >>
    \layout { }
  }
  \score {
    \unfoldRepeats {
      <<
        \new ChordNames \allChordsG
        \new FiguredBass \allBassFigs
        \new Staff \with {
          midiInstrument = "choir aahs"
        } {
          \new Voice = "melody" {
            \relative c' {
              \scoreGMelody
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
              \scoreGMelody
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
        \new ChordNames \allChordsIIG
        \new FiguredBass \allBassFigsII
      >>
    }
    \midi { }
  }
}

globalH = {\key e \major
            \global}

scoreHMelody = \relative c'' {
  \globalH
  % Music follows here.
  \transpose f e \scoreAMelody
}

scoreHVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

\bookpart {
  \header {title = "Lieder in F-Dur, transponiert nach E-Dur"}
  \score {
    <<
      \new Staff \with {
        midiInstrument = "choir aahs"
      }{
        \new Voice = "melody" {
          \relative c' {
            \scoreHMelody
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

allChordsH = \transpose f e \allChords
allChordsIIH = \transpose f e \allChordsII

\bookpart {
  \header {
    title = "Lieder in F-Dur, transponiert nach E-Dur"
    subtitle = "mit Akkorden und bezifferten Bass"
  }
  \score {
    <<
      \new ChordNames \allChordsE
      \new FiguredBass \allBassFigs
      \new Staff \with {
        midiInstrument = "choir aahs"
      } {
        \new Voice = "melody" {
          \relative c' {
            \scoreEMelody
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
      \new ChordNames \allChordsIIE
      \new FiguredBass \allBassFigsII
    >>
    \layout { }
  }
  \score {
    \unfoldRepeats {
      <<
        \new ChordNames \allChordsE
        \new FiguredBass \allBassFigs
        \new Staff \with {
          midiInstrument = "choir aahs"
        } {
          \new Voice = "melody" {
            \relative c' {
              \scoreEMelody
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
              \scoreEMelody
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
        \new ChordNames \allChordsIIE
        \new FiguredBass \allBassFigsII
      >>
    }
    \midi { }
  }
}

globalI = {\key af \major
            \global}

scoreIMelody = \relative c'' {
  \globalI
  % Music follows here.
  \transpose f af \scoreAMelody
}

scoreIVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

\bookpart {
  \header {title = "Lieder in F-Dur, transponiert nach As-Dur"}
  \score {
    <<
      \new Staff \with {
        midiInstrument = "choir aahs"
      }{
        \new Voice = "melody" {
          \relative c' {
            \scoreIMelody
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

allChordsI = \transpose f af \allChords
allChordsIII = \transpose f af \allChordsII

\bookpart {
  \header {
    title = "Lieder in F-Dur, transponiert nach As-Dur"
    subtitle = "mit Akkorden und bezifferten Bass"
  }
  \score {
    <<
      \new ChordNames \allChordsI
      \new FiguredBass \allBassFigs
      \new Staff \with {
        midiInstrument = "choir aahs"
      } {
        \new Voice = "melody" {
          \relative c' {
            \scoreIMelody
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
      \new ChordNames \allChordsIII
      \new FiguredBass \allBassFigsII
    >>
    \layout { }
  }
  \score {
    \unfoldRepeats {
      <<
        \new ChordNames \allChordsI
        \new FiguredBass \allBassFigs
        \new Staff \with {
          midiInstrument = "choir aahs"
        } {
          \new Voice = "melody" {
            \relative c' {
              \scoreIMelody
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
              \scoreIMelody
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
        \new ChordNames \allChordsIII
        \new FiguredBass \allBassFigsII
      >>
    }
    \midi { }
  }
}

globalJ = {\key b \major
            \global}

scoreJMelody = \relative c'' {
  \globalJ
  % Music follows here.
  \transpose f b \scoreAMelody
}

scoreJVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

\bookpart {
  \header {title = "Lieder in F-Dur, transponiert nach H-Dur"}
  \score {
    <<
      \new Staff \with {
        midiInstrument = "choir aahs"
      }{
        \new Voice = "melody" {
          \relative c' {
            \scoreJMelody
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

allChordsJ = \transpose f b \allChords
allChordsIIJ = \transpose f b \allChordsII

\bookpart {
  \header {
    title = "Lieder in F-Dur, transponiert nach H-Dur"
    subtitle = "mit Akkorden und bezifferten Bass"
  }
  \score {
    <<
      \new ChordNames \allChordsJ
      \new FiguredBass \allBassFigs
      \new Staff \with {
        midiInstrument = "choir aahs"
      } {
        \new Voice = "melody" {
          \relative c' {
            \scoreJMelody
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
      \new ChordNames \allChordsIIJ
      \new FiguredBass \allBassFigsII
    >>
    \layout { }
  }
  \score {
    \unfoldRepeats {
      <<
        \new ChordNames \allChordsC
        \new FiguredBass \allBassFigs
        \new Staff \with {
          midiInstrument = "choir aahs"
        } {
          \new Voice = "melody" {
            \relative c' {
              \scoreJMelody
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
              \scoreJMelody
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
        \new ChordNames \allChordsIIJ
        \new FiguredBass \allBassFigsII
      >>
    }
    \midi { }
  }
}

globalK = {\key df \major
            \global}

scoreKMelody = \relative c'' {
  \globalK
  % Music follows here.
  \transpose f df \scoreAMelody
}

scoreKVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

\bookpart {
  \header {title = "Lieder in F-Dur, transponiert nach Des-Dur"}
  \score {
    <<
      \new Staff \with {
        midiInstrument = "choir aahs"
      }{
        \new Voice = "melody" {
          \relative c' {
            \scoreKMelody
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

allChordsK = \transpose f df \allChords
allChordsIIK = \transpose f df \allChordsII

\bookpart {
  \header {
    title = "Lieder in F-Dur, transponiert nach Des-Dur"
    subtitle = "mit Akkorden und bezifferten Bass"
  }
  \score {
    <<
      \new ChordNames \allChordsK
      \new FiguredBass \allBassFigs
      \new Staff \with {
        midiInstrument = "choir aahs"
      } {
        \new Voice = "melody" {
          \relative c' {
            \scoreKMelody
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
      \new ChordNames \allChordsIIK
      \new FiguredBass \allBassFigsII
    >>
    \layout { }
  }
  \score {
    \unfoldRepeats {
      <<
        \new ChordNames \allChordsK
        \new FiguredBass \allBassFigs
        \new Staff \with {
          midiInstrument = "choir aahs"
        } {
          \new Voice = "melody" {
            \relative c' {
              \scoreKMelody
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
              \scoreKMelody
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
        \new ChordNames \allChordsIIK
        \new FiguredBass \allBassFigsII
      >>
    }
    \midi { }
  }
}

globalL = {\key fs \major
            \global}

scoreLMelody = \relative c'' {
  \globalL
  % Music follows here.
  \transpose f fs \scoreAMelody
}

scoreLVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

\bookpart {
  \header {title = "Lieder in F-Dur, transponiert nach Fis-Dur"}
  \score {
    <<
      \new Staff \with {
        midiInstrument = "choir aahs"
      }{
        \new Voice = "melody" {
          \relative c' {
            \scoreLMelody
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

allChordsL = \transpose f fs \allChords
allChordsIIL = \transpose f fs \allChordsII

\bookpart {
  \header {
    title = "Lieder in F-Dur, transponiert nach Fis-Dur"
    subtitle = "mit Akkorden und bezifferten Bass"
  }
  \score {
    <<
      \new ChordNames \allChordsL
      \new FiguredBass \allBassFigs
      \new Staff \with {
        midiInstrument = "choir aahs"
      } {
        \new Voice = "melody" {
          \relative c' {
            \scoreLMelody
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
      \new ChordNames \allChordsIIL
      \new FiguredBass \allBassFigsII
    >>
    \layout { }
  }
  \score {
    \unfoldRepeats {
      <<
        \new ChordNames \allChordsL
        \new FiguredBass \allBassFigs
        \new Staff \with {
          midiInstrument = "choir aahs"
        } {
          \new Voice = "melody" {
            \relative c' {
              \scoreLMelody
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
              \scoreCMelody
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
        \new ChordNames \allChordsIIL
        \new FiguredBass \allBassFigsII
      >>
    }
    \midi { }
  }
}

globalM = {\key gf \major
            \global}

scoreMMelody = \relative c'' {
  \globalM
  % Music follows here.
  \transpose f gf \scoreAMelody
}

scoreMVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

\bookpart {
  \header {title = "Lieder in F-Dur, transponiert nach Ges-Dur"}
  \score {
    <<
      \new Staff \with {
        midiInstrument = "choir aahs"
      }{
        \new Voice = "melody" {
          \relative c' {
            \scoreMMelody
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

allChordsM = \transpose f gf \allChords
allChordsIIM = \transpose f gf \allChordsII

\bookpart {
  \header {
    title = "Lieder in F-Dur, transponiert nach Ges-Dur"
    subtitle = "mit Akkorden und bezifferten Bass"
  }
  \score {
    <<
      \new ChordNames \allChordsM
      \new FiguredBass \allBassFigs
      \new Staff \with {
        midiInstrument = "choir aahs"
      } {
        \new Voice = "melody" {
          \relative c' {
            \scoreMMelody
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
      \new ChordNames \allChordsIIM
      \new FiguredBass \allBassFigsII
    >>
    \layout { }
  }
  \score {
    \unfoldRepeats {
      <<
        \new ChordNames \allChordsM
        \new FiguredBass \allBassFigs
        \new Staff \with {
          midiInstrument = "choir aahs"
        } {
          \new Voice = "melody" {
            \relative c' {
              \scoreLMelody
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
              \scoreMMelody
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
        \new ChordNames \allChordsIIM
        \new FiguredBass \allBassFigsII
      >>
    }
    \midi { }
  }
}

scoreNChordNamesLeadSheet = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreNMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreNVerse = \lyricmode {
  % Lyrics follow here.

}

scoreNFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.

}

scoreNChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreNFigBassBassFiguresII = \figuremode {
  \global
  % Figures follow here.

}

scoreNLeadSheetPart = <<
  \new ChordNames \scoreNChordNamesLeadSheet
  \new FretBoards \scoreNChordNamesLeadSheet
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreNMelody }
  \addlyrics { \scoreNVerse }
>>

scoreNBassFiguresIPart = \new FiguredBass \scoreNFigBassBassFiguresI

scoreNChordsPart = <<
  \new ChordNames \scoreNChordNamesChords
  \new FretBoards \scoreNChordNamesChords
>>

scoreNBassFiguresIIPart = \new FiguredBass \scoreNFigBassBassFiguresII

\bookpart {
  \score {
    <<
      \scoreNLeadSheetPart
      \scoreNBassFiguresIPart
      \scoreNChordsPart
      \scoreNBassFiguresIIPart
    >>
    \layout { }
    \midi { }
  }
}

scoreOChordNamesLeadSheet = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreOMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreOVerse = \lyricmode {
  % Lyrics follow here.

}

scoreOFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.

}

scoreOChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreOFigBassBassFiguresII = \figuremode {
  \global
  % Figures follow here.

}

scoreOLeadSheetPart = <<
  \new ChordNames \scoreOChordNamesLeadSheet
  \new FretBoards \scoreOChordNamesLeadSheet
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreOMelody }
  \addlyrics { \scoreOVerse }
>>

scoreOBassFiguresIPart = \new FiguredBass \scoreOFigBassBassFiguresI

scoreOChordsPart = <<
  \new ChordNames \scoreOChordNamesChords
  \new FretBoards \scoreOChordNamesChords
>>

scoreOBassFiguresIIPart = \new FiguredBass \scoreOFigBassBassFiguresII

\bookpart {
  \score {
    <<
      \scoreOLeadSheetPart
      \scoreOBassFiguresIPart
      \scoreOChordsPart
      \scoreOBassFiguresIIPart
    >>
    \layout { }
    \midi { }
  }
}

scorePChordNamesLeadSheet = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scorePMelody = \relative c'' {
  \global
  % Music follows here.

}

scorePVerse = \lyricmode {
  % Lyrics follow here.

}

scorePFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.

}

scorePChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scorePFigBassBassFiguresII = \figuremode {
  \global
  % Figures follow here.

}

scorePLeadSheetPart = <<
  \new ChordNames \scorePChordNamesLeadSheet
  \new FretBoards \scorePChordNamesLeadSheet
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scorePMelody }
  \addlyrics { \scorePVerse }
>>

scorePBassFiguresIPart = \new FiguredBass \scorePFigBassBassFiguresI

scorePChordsPart = <<
  \new ChordNames \scorePChordNamesChords
  \new FretBoards \scorePChordNamesChords
>>

scorePBassFiguresIIPart = \new FiguredBass \scorePFigBassBassFiguresII

\bookpart {
  \score {
    <<
      \scorePLeadSheetPart
      \scorePBassFiguresIPart
      \scorePChordsPart
      \scorePBassFiguresIIPart
    >>
    \layout { }
    \midi { }
  }
}

scoreQChordNamesLeadSheet = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreQMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreQVerse = \lyricmode {
  % Lyrics follow here.

}

scoreQFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.

}

scoreQChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreQFigBassBassFiguresII = \figuremode {
  \global
  % Figures follow here.

}

scoreQLeadSheetPart = <<
  \new ChordNames \scoreQChordNamesLeadSheet
  \new FretBoards \scoreQChordNamesLeadSheet
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreQMelody }
  \addlyrics { \scoreQVerse }
>>

scoreQBassFiguresIPart = \new FiguredBass \scoreQFigBassBassFiguresI

scoreQChordsPart = <<
  \new ChordNames \scoreQChordNamesChords
  \new FretBoards \scoreQChordNamesChords
>>

scoreQBassFiguresIIPart = \new FiguredBass \scoreQFigBassBassFiguresII

\bookpart {
  \score {
    <<
      \scoreQLeadSheetPart
      \scoreQBassFiguresIPart
      \scoreQChordsPart
      \scoreQBassFiguresIIPart
    >>
    \layout { }
    \midi { }
  }
}

scoreRChordNamesLeadSheet = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreRMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreRVerse = \lyricmode {
  % Lyrics follow here.

}

scoreRFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.

}

scoreRChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreRFigBassBassFiguresII = \figuremode {
  \global
  % Figures follow here.

}

scoreRLeadSheetPart = <<
  \new ChordNames \scoreRChordNamesLeadSheet
  \new FretBoards \scoreRChordNamesLeadSheet
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreRMelody }
  \addlyrics { \scoreRVerse }
>>

scoreRBassFiguresIPart = \new FiguredBass \scoreRFigBassBassFiguresI

scoreRChordsPart = <<
  \new ChordNames \scoreRChordNamesChords
  \new FretBoards \scoreRChordNamesChords
>>

scoreRBassFiguresIIPart = \new FiguredBass \scoreRFigBassBassFiguresII

\bookpart {
  \score {
    <<
      \scoreRLeadSheetPart
      \scoreRBassFiguresIPart
      \scoreRChordsPart
      \scoreRBassFiguresIIPart
    >>
    \layout { }
    \midi { }
  }
}

scoreSChordNamesLeadSheet = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreSMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreSVerse = \lyricmode {
  % Lyrics follow here.

}

scoreSFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.

}

scoreSChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreSFigBassBassFiguresII = \figuremode {
  \global
  % Figures follow here.

}

scoreSLeadSheetPart = <<
  \new ChordNames \scoreSChordNamesLeadSheet
  \new FretBoards \scoreSChordNamesLeadSheet
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreSMelody }
  \addlyrics { \scoreSVerse }
>>

scoreSBassFiguresIPart = \new FiguredBass \scoreSFigBassBassFiguresI

scoreSChordsPart = <<
  \new ChordNames \scoreSChordNamesChords
  \new FretBoards \scoreSChordNamesChords
>>

scoreSBassFiguresIIPart = \new FiguredBass \scoreSFigBassBassFiguresII

\bookpart {
  \score {
    <<
      \scoreSLeadSheetPart
      \scoreSBassFiguresIPart
      \scoreSChordsPart
      \scoreSBassFiguresIIPart
    >>
    \layout { }
    \midi { }
  }
}

scoreTChordNamesLeadSheet = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreTMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreTVerse = \lyricmode {
  % Lyrics follow here.

}

scoreTFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.

}

scoreTChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreTFigBassBassFiguresII = \figuremode {
  \global
  % Figures follow here.

}

scoreTLeadSheetPart = <<
  \new ChordNames \scoreTChordNamesLeadSheet
  \new FretBoards \scoreTChordNamesLeadSheet
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreTMelody }
  \addlyrics { \scoreTVerse }
>>

scoreTBassFiguresIPart = \new FiguredBass \scoreTFigBassBassFiguresI

scoreTChordsPart = <<
  \new ChordNames \scoreTChordNamesChords
  \new FretBoards \scoreTChordNamesChords
>>

scoreTBassFiguresIIPart = \new FiguredBass \scoreTFigBassBassFiguresII

\bookpart {
  \score {
    <<
      \scoreTLeadSheetPart
      \scoreTBassFiguresIPart
      \scoreTChordsPart
      \scoreTBassFiguresIIPart
    >>
    \layout { }
    \midi { }
  }
}

scoreUChordNamesLeadSheet = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreUMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreUVerse = \lyricmode {
  % Lyrics follow here.

}

scoreUFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.

}

scoreUChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreUFigBassBassFiguresII = \figuremode {
  \global
  % Figures follow here.

}

scoreULeadSheetPart = <<
  \new ChordNames \scoreUChordNamesLeadSheet
  \new FretBoards \scoreUChordNamesLeadSheet
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreUMelody }
  \addlyrics { \scoreUVerse }
>>

scoreUBassFiguresIPart = \new FiguredBass \scoreUFigBassBassFiguresI

scoreUChordsPart = <<
  \new ChordNames \scoreUChordNamesChords
  \new FretBoards \scoreUChordNamesChords
>>

scoreUBassFiguresIIPart = \new FiguredBass \scoreUFigBassBassFiguresII

\bookpart {
  \score {
    <<
      \scoreULeadSheetPart
      \scoreUBassFiguresIPart
      \scoreUChordsPart
      \scoreUBassFiguresIIPart
    >>
    \layout { }
    \midi { }
  }
}

scoreVChordNamesLeadSheet = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreVMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreVVerse = \lyricmode {
  % Lyrics follow here.

}

scoreVFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.

}

scoreVChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreVFigBassBassFiguresII = \figuremode {
  \global
  % Figures follow here.

}

scoreVLeadSheetPart = <<
  \new ChordNames \scoreVChordNamesLeadSheet
  \new FretBoards \scoreVChordNamesLeadSheet
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreVMelody }
  \addlyrics { \scoreVVerse }
>>

scoreVBassFiguresIPart = \new FiguredBass \scoreVFigBassBassFiguresI

scoreVChordsPart = <<
  \new ChordNames \scoreVChordNamesChords
  \new FretBoards \scoreVChordNamesChords
>>

scoreVBassFiguresIIPart = \new FiguredBass \scoreVFigBassBassFiguresII

\bookpart {
  \score {
    <<
      \scoreVLeadSheetPart
      \scoreVBassFiguresIPart
      \scoreVChordsPart
      \scoreVBassFiguresIIPart
    >>
    \layout { }
    \midi { }
  }
}

scoreWChordNamesLeadSheet = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreWMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreWVerse = \lyricmode {
  % Lyrics follow here.

}

scoreWFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.

}

scoreWChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreWFigBassBassFiguresII = \figuremode {
  \global
  % Figures follow here.

}

scoreWLeadSheetPart = <<
  \new ChordNames \scoreWChordNamesLeadSheet
  \new FretBoards \scoreWChordNamesLeadSheet
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreWMelody }
  \addlyrics { \scoreWVerse }
>>

scoreWBassFiguresIPart = \new FiguredBass \scoreWFigBassBassFiguresI

scoreWChordsPart = <<
  \new ChordNames \scoreWChordNamesChords
  \new FretBoards \scoreWChordNamesChords
>>

scoreWBassFiguresIIPart = \new FiguredBass \scoreWFigBassBassFiguresII

\bookpart {
  \score {
    <<
      \scoreWLeadSheetPart
      \scoreWBassFiguresIPart
      \scoreWChordsPart
      \scoreWBassFiguresIIPart
    >>
    \layout { }
    \midi { }
  }
}

scoreXChordNamesLeadSheet = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreXMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreXVerse = \lyricmode {
  % Lyrics follow here.

}

scoreXFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.

}

scoreXChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreXFigBassBassFiguresII = \figuremode {
  \global
  % Figures follow here.

}

scoreXLeadSheetPart = <<
  \new ChordNames \scoreXChordNamesLeadSheet
  \new FretBoards \scoreXChordNamesLeadSheet
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreXMelody }
  \addlyrics { \scoreXVerse }
>>

scoreXBassFiguresIPart = \new FiguredBass \scoreXFigBassBassFiguresI

scoreXChordsPart = <<
  \new ChordNames \scoreXChordNamesChords
  \new FretBoards \scoreXChordNamesChords
>>

scoreXBassFiguresIIPart = \new FiguredBass \scoreXFigBassBassFiguresII

\bookpart {
  \score {
    <<
      \scoreXLeadSheetPart
      \scoreXBassFiguresIPart
      \scoreXChordsPart
      \scoreXBassFiguresIIPart
    >>
    \layout { }
    \midi { }
  }
}

scoreYChordNamesLeadSheet = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreYMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreYVerse = \lyricmode {
  % Lyrics follow here.

}

scoreYFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.

}

scoreYChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreYFigBassBassFiguresII = \figuremode {
  \global
  % Figures follow here.

}

scoreYLeadSheetPart = <<
  \new ChordNames \scoreYChordNamesLeadSheet
  \new FretBoards \scoreYChordNamesLeadSheet
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreYMelody }
  \addlyrics { \scoreYVerse }
>>

scoreYBassFiguresIPart = \new FiguredBass \scoreYFigBassBassFiguresI

scoreYChordsPart = <<
  \new ChordNames \scoreYChordNamesChords
  \new FretBoards \scoreYChordNamesChords
>>

scoreYBassFiguresIIPart = \new FiguredBass \scoreYFigBassBassFiguresII

\bookpart {
  \score {
    <<
      \scoreYLeadSheetPart
      \scoreYBassFiguresIPart
      \scoreYChordsPart
      \scoreYBassFiguresIIPart
    >>
    \layout { }
    \midi { }
  }
}

scoreZChordNamesLeadSheet = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreZMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreZVerse = \lyricmode {
  % Lyrics follow here.

}

scoreZFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.

}

scoreZChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreZFigBassBassFiguresII = \figuremode {
  \global
  % Figures follow here.

}

scoreZLeadSheetPart = <<
  \new ChordNames \scoreZChordNamesLeadSheet
  \new FretBoards \scoreZChordNamesLeadSheet
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreZMelody }
  \addlyrics { \scoreZVerse }
>>

scoreZBassFiguresIPart = \new FiguredBass \scoreZFigBassBassFiguresI

scoreZChordsPart = <<
  \new ChordNames \scoreZChordNamesChords
  \new FretBoards \scoreZChordNamesChords
>>

scoreZBassFiguresIIPart = \new FiguredBass \scoreZFigBassBassFiguresII

\bookpart {
  \score {
    <<
      \scoreZLeadSheetPart
      \scoreZBassFiguresIPart
      \scoreZChordsPart
      \scoreZBassFiguresIIPart
    >>
    \layout { }
    \midi { }
  }
}
