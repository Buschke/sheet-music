\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "Meinem Lehrer Andreas Lang gewidment, auf dass es klappt mit dem C-Schein"
  title = ""
  subsubtitle = "Gotteslob Nr. 89"
  instrument = "Orgel"
  composer = "M: "
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: "
  meter = ""
  piece = ""
  opus = "GL 89"
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

global = {
  \key ef \major
  \time 2/2
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  \partial 4
  bf
  bf bf c(bf) bf2.\fermata
  g4 f g af4. g8 f2 g4\fermata
  ef8 ef d4 ef c8 d ef4 ef(d) ef\fermata
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
  Herr, blei -- be bei uns,
  denn es wird A -- bend wer -- den,
  und der Tag hat sich _ ge -- nei -- get. 
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
  \partial 4
  bf
  bf bf c(bf) bf2.\fermata
  g4 f g af4. g8 f2 g4\fermata
  ef8 ef d4 ef c8 d ef4 ef(d) ef\fermata
  \bar "|."  
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse  
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
  \partial 4
  bf
  bf bf c(bf) bf2.\fermata
  g4 f g af4. g8 f2 g4\fermata
  ef8 ef d4 ef c8 d ef4 ef(d) ef\fermata
  \bar "|."  
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
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
  \partial 4
  bf
  bf bf c(bf) bf2.\fermata
  g4 f g af4. g8 f2 g4\fermata
  ef8 ef d4 ef c8 d ef4 ef(d) ef\fermata
  \bar "|."  
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
  \scoreAVerse  
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