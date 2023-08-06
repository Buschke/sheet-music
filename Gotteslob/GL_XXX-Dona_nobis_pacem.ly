\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein und für das sonntägliche Ukraine-Friedensgebet"
  title = "Dona nobis pacem"
  subsubtitle = "Gotteslob Nr. XXX"
  instrument = "Orgel"
  composer = "M: Volksweise"
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: Volkslied"
  meter = ""
  piece = ""
  opus = "GL / EL "
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

global = {
  \key f \major
  \time 3/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    f8^"1. Stimme" c a'2 g8 c, bf'2 a4(g) f f e2
    d'4(c8 bf) a g c4.(bf8) a4 a8(g f4 e) f2.\fermata
    c'2.^"2. Stimme" c c4(bf) a a g2 d'4 d2 c4 c2 c8(bf a4) g f2.\fermata
    f^"3. Stimme" e f4.(g8) a bf c4 c,2
    bf'4 bf2 a4 a2 e8(g c4 e,) f2.
  }
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  c2. d a g f' f g, a
  f' f f c f f c a
  a g bf e, d' c g a2. 
}

scoreATenor = \relative c {
  \global
  % Music follows here.
  f2. g c, c bf' a g g
  a a a e bf' a e c
  c c d g, f' f c c2.   
}

scoreABass = \relative c, {
  \global
  % Music follows here.
  f2. g f c bf f' c f
  f f f c bf f' c f
  f c bf c bf f' c f
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Do -- _ na no -- _ bis pa -- cem, pa -- cem;
  do -- na _ no -- bis pa -- cem.
  Do -- na no -- bis pa -- cem,
  do -- na no -- bis pa -- _ cem.
  Do -- na no -- bis _ pa -- cem,
  do -- na no -- bis pa -- cem.
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  f2. g:m f c bf f c f
  f f f c bf f c f
  f c bf c bf f c f
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