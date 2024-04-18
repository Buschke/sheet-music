\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"
\header {
  dedication = ""
  title = ""
  subsubtitle = "Gotteslob Nr. "
  instrument = "Orgel"
  composer = \markup {"M: " \with-url #"" ""}
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = \markup {\with-url #"" "T: " \with-url #"" ""}
  meter = \markup {\with-url #"" "Wikipedia-Link"}
  piece = ""
  opus = "GL  /  EG  ö"
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

global = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 { c }
  
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {  }
  
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {  }
  
}

scoreABass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {  }
  
}

scoreAVerseA = \lyricmode {
  % Lyrics follow here.

}

scoreAVerseB = \lyricmode {
  % Lyrics follow here.

}

scoreAVerseC = \lyricmode {
  % Lyrics follow here.

}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {  }
}

scoreAFigBass = \figuremode {
  \global
  % Figures follow here.
  \repeat volta 2 {  }
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
  } \lyricsto "soprano" {<<\scoreAVerseA \new Lyrics {\set associatedVoice = "soprano" \scoreAVerseB}>> \scoreAVerseC}
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
  \transpose c c' \scoreAAlto
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  \transpose c c' \scoreATenor
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  \transpose c c, \scoreASoprano
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  \scoreABass
}

scoreBVerseA = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseA
}

scoreBVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseB
}

scoreBVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseC
}

scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \scoreAChordNames
}

scoreBFigBass = \figuremode {
  \global
  % Figures follow here.
  \scoreAFigBass
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
  } \lyricsto "soprano" {<<\scoreBVerseA \new Lyrics {\set associatedVoice = "soprano" \scoreBVerseB}>> \scoreBVerseC}
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
  \repeat volta 2 {  }
  
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {  }
  
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {  }
  
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  \transpose c c, \scoreASoprano
}

scoreCVerseA = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseA
}

scoreCVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseB
}

scoreCVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseC
}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {  }
  
}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.
  \repeat volta 2 {  }
  
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
  } \lyricsto "soprano" {<<\scoreCVerseA \new Lyrics {\set associatedVoice = "soprano" \scoreCVerseB}>> \scoreCVerseC}
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
  \transpose c c'' \scoreATenor
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  \scoreASoprano
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  \transpose c c \scoreAAlto
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  \scoreABass
}

scoreDVerseA = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseA
}

scoreDVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseB
}

scoreDVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseC
}

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \scoreAChordNames
}

scoreDFigBass = \figuremode {
  \global
  % Figures follow here.
  \scoreAFigBass
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
  } \lyricsto "soprano" {<<\scoreDVerseA \new Lyrics {\set associatedVoice = "soprano" \scoreDVerseB}>> \scoreDVerseC}
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