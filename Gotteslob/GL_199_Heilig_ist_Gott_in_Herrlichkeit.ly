\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Heilig ist Gott in Herrlichkeit"
  subsubtitle = "Gotteslob Nr. 199"
  instrument = "Orgel"
  composer = "M: Caspar Ulenberg 1582"
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: Nach dem Sanktus"
  meter = ""
  piece = ""
  opus = "GL 199"
  copyright = \markup { "© Satz: 08.02.2024" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

global = {
  \key g \major
  \time 2/2
  \tempo "Andante" 2=40
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  g2 g4 g e fs g e d2 r2
  g2 a4 b a g a a g2 r
  g c a b4 a g fs e2 d r
  d' c4 b a d c2 b a r
  c b4 a g a b c a2 g1
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  b2 b4 b g a b g g2 r
  b d4 d d b d d b2 r
  b e d d4 d b a g2 g r
  g' e4 d d g e2 d d r
  e d4 d b d d e d2 b1
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  d,2 d4 d c d d c b2 r
  d fs4 g fs d fs fs d2 r
  d g fs g4 fs d d c2 b r
  b' g4 g fs b g2 g fs r
  g g4 fs d fs g g fs2 d1
}

scoreABass = \relative c {
  \global
  % Music follows here.
  g2 g4 g e fs g e d2 r2
  g2 a4 b a g a a g2 r
  g c a b4 a g fs e2 d r
  d' c4 b a d c2 b a r
  c b4 a g a b c a2 g1
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Hei -- lig ist Gott in Herr -- lich -- keit;
  sein Ruhm er -- füllt die Him -- mel weit.
  Lob -- sin -- get, ju -- belt ihm. Ho -- san -- na.
  Preis ihm, der kommt in uns -- re Zeit.
  Lob -- sin -- get, ju -- belt ihm. Ho -- san -- na
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  g2 g4 g c d g c g2 s
  g d4 g d g d d g2 s
  g c d g4 d g d c2 g s
  g c4 g d g c2 g d s
  c g4 d g d g c d2 g1
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
  b2 b4 b g a b g g2 r
  b d4 d d b d d b2 r
  b e d d4 d b a g2 g r
  g' e4 d d g e2 d d r
  e d4 d b d d e d2 b1
  \bar "|."
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  d2 d4 d c d d c b2 r
  d fs4 g fs d fs fs d2 r
  d g fs g4 fs d d c2 b r
  b' g4 g fs b g2 g fs r
  g g4 fs d fs g g fs2 d1
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  g2 g4 g e fs g e d2 r2
  g2 a4 b a g a a g2 r
  g c a b4 a g fs e2 d r
  d' c4 b a d c2 b a r
  c b4 a g a b c a2 g1
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  g2 g4 g e fs g e d2 r2
  g2 a4 b a g a a g2 r
  g c a b4 a g fs e2 d r
  d' c4 b a d c2 b a r
  c b4 a g a b c a2 g1
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  Hei -- lig ist Gott in Herr -- lich -- keit;
  sein Ruhm er -- füllt die Him -- mel weit.
  Lob -- sin -- get, ju -- belt ihm. Ho -- san -- na.
  Preis ihm, der kommt in uns -- re Zeit.
  Lob -- sin -- get, ju -- belt ihm. Ho -- san -- na
}

scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  g2 g4 g c d g c g2 s
  g d4 g d g d d g2 s
  g c d g4 d g d c2 g s
  g c4 g d g c2 g d s
  c g4 d g d g c d2 g1
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
  g2 g4 g g a g g a2 r2
  g2 fs4 g a b a a b2 r
  b c d d4 c d d c2 d r
  d e4 d c d e2 d e r
  c d4 c d c d c a2 d1
  \bar "|."
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  b2 b4 b c d b c d2 r
  b a4 d c d c c d2 r
  d e d d4 fs g fs g2 fs r
  fs g4 g fs fs g2 g a r
  e g4 fs g fs g e fs2 g1   
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  d,2 d4 d g d d c fs2 r
  d fs4 d fs g fs fs g2 r
  g g fs g4 a b a c2 a r
  a c4 d c a c2 d c r
  g g4 a b a b g c2 b1    
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  g2 g4 g e fs g e d2 r2
  g2 a4 b a g a a g2 r
  g c a b4 a g fs e2 d r
  d' c4 b a d c2 b a r
  c b4 a g a b c a2 g1
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  Hei -- lig ist Gott in Herr -- lich -- keit;
  sein Ruhm er -- füllt die Him -- mel weit.
  Lob -- sin -- get, ju -- belt ihm. Ho -- san -- na.
  Preis ihm, der kommt in uns -- re Zeit.
  Lob -- sin -- get, ju -- belt ihm. Ho -- san -- na
}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  g2 g4 g c:6 d:6 g c:6 d2 s
  g f4:6 g:6 fs:dim g fs:dim fs:dim g2 s
  g c d:6 g4:6 fs:dim g d c2:6 d s
  d c4 g:6 fs:dim d c2 g:6 a:min s
  c g4:6 fs:dim g fs:dim g:6 c fs2:dim g1
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
%  \scoreCChordNames
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
  b2 b4 b g a b g g2 r
  b d4 d d b d d b2 r
  b e d d4 d b a g2 g r
  g' e4 d d g e2 d d r
  e d4 d b d d e d2 b1
  \bar "|."
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  g'2 g4 g e fs g e d2 r2
  g2 a4 b a g a a g2 r
  g c a b4 a g fs e2 d r
  d' c4 b a d c2 b a r
  c b4 a g a b c a2 g1
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  d,2 d4 d c d d c b2 r
  d fs4 g fs d fs fs d2 r
  d g fs g4 fs d d c2 b r
  b' g4 g fs b g2 g fs r
  g g4 fs d fs g g fs2 d1
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  g2 g4 g e fs g e d2 r2
  g2 a4 b a g a a g2 r
  g c a b4 a g fs e2 d r
  d' c4 b a d c2 b a r
  c b4 a g a b c a2 g1
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  Hei -- lig ist Gott in Herr -- lich -- keit;
  sein Ruhm er -- füllt die Him -- mel weit.
  Lob -- sin -- get, ju -- belt ihm. Ho -- san -- na.
  Preis ihm, der kommt in uns -- re Zeit.
  Lob -- sin -- get, ju -- belt ihm. Ho -- san -- na
}

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  g2 g4 g c d g c g2 s
  g d4 g d g d d g2 s
  g c d g4 d g d c2 g s
  g c4 g d g c2 g d s
  c g4 d g d g c d2 g1
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