\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Ich will dich lieben, meine Stärke"
  subsubtitle = "Gotteslob Nr. 358"
  instrument = "Orgel"
  composer = "M: "
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: "
  meter = ""
  piece = ""
  opus = "GL 358 / EG "
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

global = {
  \key c \major
  \time 6/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  \partial 2.
  e,4 e g
  f2 d4 e2 c4 d2 d4 g g g c2 b4 a2 a4 g2.\breathe
  g4 a b c2 g4 a2 g8 f e2 d4 e e f g2 e4 d2 d4 c2.\breathe
  c'4 c c b2 b4 a2 a4 g2. e4 f g a4.(g8 f e d2) d4 c2.
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
}

scoreABass = \relative c {
  \global
  % Music follows here.
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Ich will dich lie -- ben, mei -- ne Stär -- ke,
  ich will dich lie -- ben, mei -- ne Zier,
  ich will dich lie -- ben mit dem _  Wer -- ke
  und im -- mer -- wäh -- ren -- der Be -- gier;
  ich will dich lie -- ben, schöns -- tes Licht,
  bis mir das Her -- ze bricht.
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
}

scoreAFigBass = \figuremode {
  \global
  % Figures follow here.
}

scoreAChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreASoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreAAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreAVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreATenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreABass }
  >>
>>

scoreAChordsPart = <<
  \new ChordNames \scoreAChordNames
%   \scoreAChordNames
%   \new FretBoards \scoreAChordNames
>>

scoreABassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreAFigBass

\bookpart {
  \header {
      subtitle = "Cantus firmus im Sopran"
  }
  \score {
    <<
      \scoreAChoirPart
      \scoreAChordsPart
      \scoreABassFiguresPart
    >>
    \layout { }
    \midi {
      \tempo 4=100
    }
  }
}

scoreBSoprano = \relative c'' {
  \global
  % Music follows here.
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
}

scoreBBass = \relative c {
  \global
  % Music follows here.
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
    Ich will dich lie -- ben, o mein Le -- ben,
  als mei -- nen al -- ler -- bes -- ten Freund;
  ich will dich lie -- ben und er -- he -- ben,
  so -- lan -- ge mich dein Glanz be -- scheint;
  ich will dich lie -- ben, Got -- tes Lamm,
  als mei -- nen Bräu -- ti -- gam.
}

scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
}

scoreBFigBass = \figuremode {
  \global
  % Figures follow here.
}

scoreBChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreBSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreBAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreBVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreBTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreBBass }
  >>
>>

scoreBChordsPart = <<
  \new ChordNames \scoreBChordNames
%   \scoreBChordNames
%   \new FretBoards \scoreBChordNames
>>

scoreBBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreBFigBass

\bookpart {
  \header {
      subtitle = "Cantus firmus im Tenor"
  }
  \score {
    <<
      \scoreBChoirPart
      \scoreBChordsPart
      \scoreBBassFiguresPart
    >>
    \layout { }
    \midi {
      \tempo 4=100
    }
  }
}

scoreCSoprano = \relative c'' {
  \global
  % Music follows here.
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
}

scoreCBass = \relative c {
  \global
  % Music follows here.
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
    Ach, dass ich dich so spät er -- kann -- te,
  du hoch -- ge -- lob -- te Schön -- heit du,
  dass ich nicht eher mein dich nann -- te,
  du höchs -- tes Gut und wah -- re Ruh;
  es ist mir leid, ich bin be -- trübt,
  dass ich so spät ge -- liebt.
}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.
}

scoreCChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreCSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreCAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreCVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreCTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreCBass }
  >>
>>

scoreCChordsPart = <<
  \new ChordNames \scoreCChordNames
%   \scoreCChordNames
%   \new FretBoards \scoreCChordNames
>>

scoreCBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreCFigBass

\bookpart {
  \header {
      subtitle = "Cantus firmus im Bass"
  }
  \score {
    <<
      \scoreCChoirPart
      \scoreCChordsPart
      \scoreCBassFiguresPart
    >>
    \layout { }
    \midi {
      \tempo 4=100
    }
  }
}

scoreDSoprano = \relative c'' {
  \global
  % Music follows here.
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
}

scoreDBass = \relative c {
  \global
  % Music follows here.
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  Ich lief ver -- irrt und war ver -- blen -- det,
  ich such -- te dich und fand dich nicht;
  ich hat -- te mich von dir ge -- wen -- det
  und lieb -- te das ge -- schaff -- ne Licht.
  Nun aber ist’s durch dich ge -- schehn,
  dass ich dich hab er -- sehn.
}

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
}

scoreDFigBass = \figuremode {
  \global
  % Figures follow here.
}

scoreDChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreDSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreDAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreDVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreDTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreDBass }
  >>
>>

scoreDChordsPart = <<
  \new ChordNames \scoreDChordNames
%   \scoreDChordNames
%   \new FretBoards \scoreDChordNames
>>

scoreDBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreDFigBass

\bookpart {
  \header {
      subtitle = "Cantus firmus im Alt"
  }
  \score {
    <<
      \scoreDChoirPart
      \scoreDChordsPart
      \scoreDBassFiguresPart
    >>
    \layout { }
    \midi {
      \tempo 4=100
    }
  }
}