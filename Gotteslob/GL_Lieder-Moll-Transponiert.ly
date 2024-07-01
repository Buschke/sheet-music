\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "Lieder in Moll, nachher auch transponiert"
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

global = {
  \time 4/4
  \tempo "Getragen" 4=100
}

globalA = {
  \key a \minor
  \global
}

scoreAMelody = \relative c'' {
  \globalA
  % Music follows here.
  \allNotesMinor
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  \allLyricsMinor
}

\bookpart {
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreAMelody }
    \addlyrics { \scoreAVerse }
    \layout { }
    \midi { }
  }
}

globalB = {
  \key e \minor
  \global
}

scoreBMelody = \relative c'' {
  \globalB
  % Music follows here.
  \transpose a e \scoreAMelody
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

\bookpart {
  \header { title = "Lieder in Dur, e-Moll"}
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreBMelody }
    \addlyrics { \scoreBVerse }
    \layout { }
    \midi { }
  }
}

globalC = {
  \key d \minor
  \global
}

scoreCMelody = \relative c'' {
  \globalC
  % Music follows here.
  \transpose a d \scoreAMelody  
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse  
}

\bookpart {
  \header { title = "Lieder in Dur, d-Moll"}
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreCMelody }
    \addlyrics { \scoreCVerse }
    \layout { }
    \midi { }
  }
}

globalD = {
  \key b \minor
  \global
}

scoreDMelody = \relative c'' {
  \globalD
  % Music follows here.
  \transpose a b \scoreAMelody
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse  
}

\bookpart {
  \header { title = "Lieder in Dur, h-Moll"}
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreDMelody }
    \addlyrics { \scoreDVerse }
    \layout { }
    \midi { }
  }
}

globalE = {
  \key g \minor
  \global
}

scoreEMelody = \relative c'' {
  \globalE
  % Music follows here.
  \transpose a g \scoreAMelody  
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse  
}

\bookpart {
  \header { title = "Lieder in Dur, g-Moll"}
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreEMelody }
    \addlyrics { \scoreEVerse }
    \layout { }
    \midi { }
  }
}

globalF = {
  \key fs \minor
  \global
}

scoreFMelody = \relative c'' {
  \globalF
  % Music follows here.
  \transpose a fs \scoreAMelody  
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse  
}

\bookpart {
  \header { title = "Lieder in Dur, fis-Moll"}
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreFMelody }
    \addlyrics { \scoreFVerse }
    \layout { }
    \midi { }
  }
}

globalG = {
  \key c \minor
  \global
}

scoreGMelody = \relative c'' {
  \globalG
  % Music follows here.
  \transpose a c \scoreAMelody
}

scoreGVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse  
}

\bookpart {
  \header { title = "Lieder in Dur, c-Moll"}
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreGMelody }
    \addlyrics { \scoreGVerse }
    \layout { }
    \midi { }
  }
}

globalH = {
  \key cs \minor
  \global
}

scoreHMelody = \relative c'' {
  \globalH
  % Music follows here.
  \transpose a cs \scoreAMelody  
}

scoreHVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse  
}

\bookpart {
  \header { title = "Lieder in Dur, cis-Moll"}
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreHMelody }
    \addlyrics { \scoreHVerse }
    \layout { }
    \midi { }
  }
}

globalI = {
  \key f \minor
  \global
}

scoreIMelody = \relative c'' {
  \globalI
  % Music follows here.
  \transpose a f \scoreAMelody
}

scoreIVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse  
}

\bookpart {
  \header { title = "Lieder in Dur, f-Moll"}
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreIMelody }
    \addlyrics { \scoreIVerse }
    \layout { }
    \midi { }
  }
}

globalJ = {
  \key gs \minor
  \global
}

scoreJMelody = \relative c'' {
  \globalJ
  % Music follows here.
  \transpose a gs \scoreAMelody  
}

scoreJVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse  
}

\bookpart {
  \header { title = "Lieder in Dur, gis-Moll"}
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreJMelody }
    \addlyrics { \scoreJVerse }
    \layout { }
    \midi { }
  }
}

globalK = {
  \key bf \minor
  \global
}

scoreKMelody = \relative c'' {
  \globalK
  % Music follows here.
  \transpose a bf \scoreAMelody  
}

scoreKVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse  
}

\bookpart {
  \header { title = "Lieder in Dur, b-Moll"}
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreKMelody }
    \addlyrics { \scoreKVerse }
    \layout { }
    \midi { }
  }
}

globalL = {
  \key ds \minor
  \global
}

scoreLMelody = \relative c'' {
  \globalL
  % Music follows here.
  \transpose a ds \scoreAMelody  
}

scoreLVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse  
}

\bookpart {
  \header { title = "Lieder in Dur, dis-Moll"}
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreLMelody }
    \addlyrics { \scoreLVerse }
    \layout { }
    \midi { }
  }
}

globalM = {
  \key ef \minor
  \global
}

scoreMMelody = \relative c'' {
  \globalM
  % Music follows here.
  \transpose a ef \scoreAMelody  
}

scoreMVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse  
}

\bookpart {
  \header { title = "Lieder in Dur, es-Moll"}
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreMMelody }
    \addlyrics { \scoreMVerse }
    \layout { }
    \midi { }
  }
}
