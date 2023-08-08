\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Heilig"
  subsubtitle = "Gotteslob Nr. 193"
  instrument = "Orgel"
  composer = "M: Erhard Quack 1947"
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: Liturgie"
  meter = ""
  piece = ""
  opus = "GL 193"
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
  g2 a c4(a) g2\breathe
  a e4 d e f g g a2 g r4
  c, d f e(f) g f d2 e4 g a c b a g2 r4
  g e d e c d2 e r4
  g a c b(a) g2 a4 a b g a2 e4 f g2 r4
  g e(d) e g a2 g e4 c d2 e1
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  c2 c e4(c) c2
  c g4 g g a c c c2 c r4
  e, g a g(a) c a g2 g4 c c e d c c2 r4
  c g g g e g2 g r4
  c c e d(c) c2 c4 c d c c2 g4 a c2 r4
  c g(g) g c c2 c g4 e g2 g1
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  e,2 f g4(f) e2
  f c4 b c c e e f2 e r4
  c b c c(c) e c b2 c4 e f g g f e2 r4
  e c b c c b2 c r4
  e f g g(f) e2 f4 f g e f2 c4 c e2 r4
  e c(b) c e f2 e c4 g b2 c1
}

scoreABass = \relative c {
  \global
  % Music follows here.
  c,2 f c4(f) c2
  f c4 g' c, f c c f2 c r4
  c g' f c(f) c f g2 c,4 c f c g' f c2 r4
  c c g' c, c g'2 c, r4
  c f c g' f c2 f4 f g c, f2 c4 f c2 r4
  c c(g') c, c f2 c c4 c g'2 c,1
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Hei -- lig, hei -- lig, hei -- lig
  ist Gott, der Herr der Mäch -- te.
  Er -- füllt sind Him -- mel und Er -- de von sei -- ner Herr -- lich -- keit.
  Ho -- san -- na in der Hö -- he.
  Ge -- be -- ne -- deit sei, der da kommt im Na -- men des Herrn.
  Ho -- san -- na, Ho -- san -- na in der Hö -- he.
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c2 f c4(f) c2
  f c4 g c f c c f2 c s4
  c g f c(f) c f g2 c4 c f c g f c2 s4
  c c g c c g2 c s4
  c f c g f c2 f4 f g c f2 c4 f c2 s4
  c c(g) c c f2 c c4 c g2 c1
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
  c2 c e4(c) c2
  c g4 g g a c c c2 c r4
  e, g a g(a) c a g2 g4 c c e d c c2 r4
  c g g g e g2 g r4
  c c e d(c) c2 c4 c d c c2 g4 a c2 r4
  c g(g) g c c2 c g4 e g2 g1
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  e2 f g4(f) e2
  f c4 b c c e e f2 e r4
  c b c c(c) e c b2 c4 e f g g f e2 r4
  e c b c c b2 c r4
  e f g g(f) e2 f4 f g e f2 c4 c e2 r4
  e c(b) c e f2 e c4 g b2 c1
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  g2 a c4(a) g2\breathe
  a e4 d e f g g a2 g r4
  c, d f e(f) g f d2 e4 g a c b a g2 r4
  g e d e c d2 e r4
  g a c b(a) g2 a4 a b g a2 e4 f g2 r4
  g e(d) e g a2 g e4 c d2 e1
  \bar "|."
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  c,2 f c4(f) c2
  f c4 g' c, f c c f2 c r4
  c g' f c(f) c f g2 c,4 c f c g' f c2 r4
  c c g' c, c g'2 c, r4
  c f c g' f c2 f4 f g c, f2 c4 f c2 r4
  c c(g') c, c f2 c c4 c g'2 c,1
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c2 f c4(f) c2
  f c4 g c f c c f2 c s4
  c g f c(f) c f g2 c4 c f c g f c2 s4
  c c g c c g2 c s4
  c f c g f c2 f4 f g c f2 c4 f c2 s4
  c c(g) c c f2 c c4 c g2 c1
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
  b2 f g4(f) g2
  f c4 f g f g g f2 g r4
  e f a c(a) g a g2 g4 g f g g c, g'2 r4
  g c b c e d2 c r4
  d f, g g(c) g2 f4 f g g f2 c4 a' g2 r4
  g c,(f) c d f2 g c,4 e f2 c1
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  d2 c c4(c) b2
  c g4 b c c b b c2 b r4
  g b c g'(c,) b c d2 c4 b c c d c b2 r4
  b g' d g g f2 g r4
  g c, c d(c) b2 c4 c d b c2 g4 c b2 r4
  b g(b) g g c2 b g4 g b2 g1
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  g2 f e4(f) d2
  f c4 d e f d d f2 d r4
  c d f c'(f,) d f g2 g4 d f e g f d2 r4
  d c' f, c' c b2 c r4
  b f e g f d2 f4 f g d f2 g4 f d2 r4
  d c(d) c b f'2 d c4 c d2 c1
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  g2 a c4(a) g2\breathe
  a e4 d e f g g a2 g r4
  c, d f e(f) g f d2 e4 g a c b a g2 r4
  g e d e c d2 e r4
  g a c b(a) g2 a4 a b g a2 e4 f g2 r4
  g e(d) e g a2 g e4 c d2 e1
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
  g2 f/a c4(f/a) g2
  f/a c4/e b:dim/d c/e f g g f2/a g s4
  c b:dim/d f c/e(f) g f g2/b c4/e g f/a c g/b f/a g2 s4
  g c/e b:dim/d c/e c b2:dim/d c/e s4
  g f/a c g/b f/a g2 f4/a f/a g/b g f2/a c4/e f g2 s4
  g c/e(b:dim/d) c/e g f2/a g c4/e c b2:dim/d c1/e
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
  e,2 f g4(f) e2
  f c4 b c c e e f2 e r4
  c b c c(c) e c b2 c4 e f g g f e2 r4
  e c b c c b2 c r4
  e f g g(f) e2 f4 f g e f2 c4 c e2 r4
  e c(b) c e f2 e c4 g b2 c1
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  g2 a c4(a) g2\breathe
  a e4 d e f g g a2 g r4
  c, d f e(f) g f d2 e4 g a c b a g2 r4
  g e d e c d2 e r4
  g a c b(a) g2 a4 a b g a2 e4 f g2 r4
  g e(d) e g a2 g e4 c d2 e1
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  c2 c e4(c) c2
  c g4 g g a c c c2 c r4
  e, g a g(a) c a g2 g4 c c e d c c2 r4
  c g g g e g2 g r4
  c c e d(c) c2 c4 c d c c2 g4 a c2 r4
  c g(g) g c c2 c g4 e g2 g1
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  c,2 f c4(f) c2
  f c4 g' c, f c c f2 c r4
  c g' f c(f) c f g2 c,4 c f c g' f c2 r4
  c c g' c, c g'2 c, r4
  c f c g' f c2 f4 f g c, f2 c4 f c2 r4
  c c(g') c, c f2 c c4 c g'2 c,1
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c2 f c4(f) c2
  f c4 g c f c c f2 c s4
  c g f c(f) c f g2 c4 c f c g f c2 s4
  c c g c c g2 c s4
  c f c g f c2 f4 f g c f2 c4 f c2 s4
  c c(g) c c f2 c c4 c g2 c1
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