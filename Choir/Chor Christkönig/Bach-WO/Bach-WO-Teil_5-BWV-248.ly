\version "2.24.2"
\language "english"

\header {
  dedication = ""
  title = "Ehre sei dir Gott, gesungen"
  subtitle = "Weihnachtsoratorium, 5. Teil"
  subsubtitle = "Nr. 43 Coro"
  instrument = "Tenor"
  composer = "Johann Sebastian Bach"
  arranger = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "BWV 248"
  copyright = "Satz: Sven Buschke"
  tagline = ""
}

\paper {
  #(set-paper-size "a4")

}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
}

\include "Bach-WO-Noten_Texte-BWV-248.ly"

scoreATenorVoice = \scoreEATenorVoice

scoreAVerse = \scoreEAVerse

\bookpart {
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

scoreBTenorVoice = \scoreEBTenorVoice

scoreBVerse = \scoreEBVerse

\bookpart {
  \header {
    title = "Wo ist der neugeborne König der Juden"
    subsubtitle = "45. Chor"}
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

scoreCTenorVoice = \scoreECTenorVoice

scoreCVerse = \scoreECVerse

\bookpart {
  \header {
    title = "Dein Glanz all Finsternis verzehrt"
    subsubtitle = "46. Choral"}
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

scoreDTenorVoice = \scoreEDTenorVoice

scoreDVerse = \scoreEDVerse

\bookpart {
  \header {
    title = "Zwar ist solche Herzenstube wohl kein schöner Fürstensaal"
    subsubtitle = "53. Choral"}
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

% \bookpart {
%   \header {
%     title = "WO 5. Teil"
%     subsubtitle = "BWV 248"}
%   \score {
%     \header { opus = "43. Coro"}
%     \new Staff \with {
%       instrumentName = "Tenor"
%       shortInstrumentName = "T."
%       midiInstrument = "choir aahs"
%       \consists "Ambitus_engraver"
%     } { \clef "treble_8" \scoreATenorVoice }
%     \addlyrics { \scoreAVerse }
%     \layout { }
%     \midi { }
%   }
%   \score {
%     \header { opus = "45. Chor"}
%     \new Staff \with {
%       instrumentName = "Tenor"
%       shortInstrumentName = "T."
%       midiInstrument = "choir aahs"
%       \consists "Ambitus_engraver"
%     } { \clef "treble_8" \scoreBTenorVoice }
%     \addlyrics { \scoreBVerse }
%     \layout { }
%     \midi { }
%   }
%   \score {
%     \header { opus = "46. Choral"}
%     \new Staff \with {
%       instrumentName = "Tenor"
%       shortInstrumentName = "T."
%       midiInstrument = "choir aahs"
%       \consists "Ambitus_engraver"
%     } { \clef "treble_8" \scoreCTenorVoice }
%     \addlyrics { \scoreCVerse }
%     \layout { }
%     \midi { }
%   }
%   \score {
%     \header { opus = "53. Choral"}
%     \new Staff \with {
%       instrumentName = "Tenor"
%       shortInstrumentName = "T."
%       midiInstrument = "choir aahs"
%       \consists "Ambitus_engraver"
%     } { \clef "treble_8" \scoreDTenorVoice }
%     \addlyrics { \scoreDVerse }
%     \layout { }
%     \midi { }
%   }
% }