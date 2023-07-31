\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "Meinem Lehrer Andreas Lang gewidment, für die Begleitung hin zum C-Schein"
  title = "Großer Gott wir loben dich"
  subsubtitle = "Gotteslob Nr.  380"
  instrument = "Orgel"
  composer = "M: Heinrich Bone 1852"
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: Ignaz Franz 1768"
  meter = ""
  piece = ""
  opus = "GL 380"
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

global = {
  \key c \major
  \time 3/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    c2 c4 c(b) c d(e) d c2 r4
    e2 e4 e(d) c g'(f) e e d r
  }
  d2 e4 f2 d4 e2 f4 g2 r4
  a2 a4 g(f) e f(e) d c2.
  \bar "|."
}

scoreAAlto = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    e2 e4 e4(d) e g(g) g e2 r4
    g2 g4 g(g) e  b'(a) g g g r
  }
  g2 g4 a2 g4 g2 a4 b2 r4
  c2 c4 c(a) g a(g) g e2.
}

scoreATenor = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    g2 g4 g(g) g b(c) b g2 r4
    c2 c4 c(b) g d'(c) c c b r
  }
  b2 c4 c2 b4 c2 c4 d2 r4
  f2 f4 e(c) c c(c) b g2.
}

scoreABass = \relative c, {
  \global
  % Music follows here.
  \repeat volta 2 {
    c2 c4 c4(g) c g(c) g c2 r4
    c2 c4 c(g) c c(f) c c g r4
  }
  g2 c4 f2 g4 c,2 f4 c2 r4
  f2 f4 c(f) c f(c) g c2.
}

scoreAVerseA = \lyricmode {
  % Lyrics follow here.
  Gro -- ßer Gott, wir lo -- ben dich,
  Herr, wir prei -- sen dei -- ne Stär -- ke.
}

scoreAVerseB = \lyricmode {
  % Lyrics follow here.
  Vor dir neigt die Er -- de sich
  und be -- wun -- dert dei -- ne Wer -- ke.
}

scoreAVerseC = \lyricmode {
  % Lyrics follow here.
  Wie du warst vor al -- ler Zeit,
  so bleibst du in Ewig -- keit.
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    c2 c4 c4(g) c g(c) g c2 s4
    c2 c4 c(g) c c(f) c c g s4
  }
  g2 c4 f2 g4 c2 f4 c2 s4
  f2 f4 c(f) c f(c) g c2.
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

scoreBSoprano = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    e2 e4 e(d) e g(g) g e2 r4
    g2 g4 g(g) e c'(a) g g g r
  }
  g2 g4 a2 g4 g2 a4 c2 r4
  c2 c4 c(a) g a(g) g e2.
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    g2 g4 g(g) g b(c) b g2 r4
    c2 c4 c(b) g e'(c) c c b r4
  }
  b2 b4 c2 b4 c2 c4 e2 r4
  f2 f4 e4(c) c c(c) b g2.
}

scoreBTenor = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    c2 c4 c(b) c d(e) d c2 r4
    e2 e4 e(d) c g'(f) e e d r
  }
  d2 e4 f2 d4 e2 f4 g2 r4
  a2 a4 g(f) e f(e) d c2.
  \bar "|."
}

scoreBBass = \relative c, {
  \global
  % Music follows here.
  \repeat volta 2 {
    c2 c4 c4(g) c g(c) g c2 r4
    c2 c4 c(g) c c(f) c c g r4
  }
  g2 c4 f2 g4 c,2 f4 c2 r4
  f2 f4 c(f) c f(c) g c2.
}

scoreBVerseA = \lyricmode {
  % Lyrics follow here.
  Al -- les, was dich prei -- sen kann,
  Che -- ru -- bim und Se -- ra -- phi -- nen,
}

scoreBVerseB = \lyricmode {
  % Lyrics follow here.
  stim -- men dir ein Lob -- lied an,
  al -- le En -- gel, die dir die -- nen,
}

scoreBVerseC = \lyricmode {
  % Lyrics follow here.
  ru -- fen dir stets oh -- ne Ruh:
  Hei -- lig, hei -- lig, hei -- lig! zu.
}

scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    c2 c4 c4(g) c g(c) g c2 s4
    c2 c4 c(g) c c(f) c c g s4
  }
  g2 c4 f2 g4 c2 f4 c2 s4
  f2 f4 c(f) c f(c) g c2.
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

scoreCSoprano = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    c'2 c4 c(d) c d(c) d c2 r4
    c2 c4 c(d) e e(f) c c f r
  }
  d2 c4 f2 d4 c2 f4 c2 r4
  f2 f4 d(f) c f(c) d e2.
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    e2 e4 e(d) e f(g) f g2 r4
    g2 g4 g(f) g b(a) g g a r
  }
  f2 g4 a2 f4 g2 a4 g2 r4
  c2 c4 g(a) g a(g) f g2.
}

scoreCTenor = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    g'2 g4 g4(g) g b(c) b c2 r4
    c2 c4 c(b) c e(c) c c d r4
  }
  b2 c4 c2 b4 c2 c4 c2 r4
  f2 f4 b,(c) c c(c) b c2.
}

scoreCBass = \relative c, {
  \global
  % Music follows here.
  \repeat volta 2 {
    c'2 c4 c(b) c d(e) d c2 r4
    e2 e4 e(d) c g'(f) e e d r
  }
  d2 e4 f2 d4 e2 f4 e2 r4
  a2 a4 g(f) e f(e) d c2.
  \bar "|."
}

scoreCVerseA = \lyricmode {
  % Lyrics follow here.
  Hei -- lig, Herr Gott Ze -- ba -- oth!
  Hei -- lig, Herr der Him -- mels -- hee -- re!
}

scoreCVerseB = \lyricmode {
  % Lyrics follow here.
  Star -- ker Hel -- fer in der Not!
  Him -- mel, Er -- de, Luft und Mee -- re
}

scoreCVerseC = \lyricmode {
  % Lyrics follow here.
  sind er -- füllt von dei -- nem Ruhm;
  al -- les ist dein Ei -- gen -- tum.
}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    c2 c4 c4(g/b) c b:dim/d(c/e) b:dim/d c2 s4
    c2/e c4/e c/e(b:dim/d) c e:m/g(f) c/e c/e d:m s4
  }
  b2:dim/d c4/e f2 b4:dim/d c2/e f4 c2/e s4
  f2/a f4/a g(f) c/e f(c/e) b:dim/d c2.
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
  \repeat volta 2 {
    g2 g4 g(g) g b(c) b g2 r4
    c2 c4 c(b) g e'(c) c c b r
  }
  b2 c4 c2 b4 c2 c4 e2 r4
  a2 a4 e(c) c c(c) b g2.
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    c2 c4 c(b) c d(e) d c2 r4
    e2 e4 e(d) c g'(f) e e d r
  }
  d2 e4 f2 d4 e2 f4 g2 r4
  a2 a4 g(f) e f(e) d c2.
  \bar "|."
}

scoreDTenor = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    e2 e4 e(d) e g(g) g4 e2 r4
    g2 g4 g(g) e c'(a) g g g r4
  }
  g2 g4 a2 g4 g2 a4 c2 r4
  f2 f4 c(a) g a(g) g e2.
}

scoreDBass = \relative c, {
  \global
  % Music follows here.
  \repeat volta 2 {
    c2 c4 c4(g) c g(c) g c2 r4
    c2 c4 c(g) c c(f) c c g r4
  }
  g2 c4 f2 g4 c,2 f4 c2 r4
  f2 f4 c(f) c f(c) g c2.
}

scoreDVerseA = \lyricmode {
  % Lyrics follow here.
  Der Apo -- stel heil -- ger Chor,
  der Pro -- phe -- ten heh -- re Men -- ge
}

scoreDVerseB = \lyricmode {
  % Lyrics follow here.
  schickt zu dei -- nem Thron em -- por
  neu -- e Lob- und Dank -- ge -- sän -- ge;
}

scoreDVerseC = \lyricmode {
  % Lyrics follow here.
  der Blut -- zeu -- gen lich -- te Schar
  lobt und preist dich im -- mer -- dar.
}

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    c2 c4 c4(g) c g(c) g c2 s4
    c2 c4 c(g) c c(f) c c g s4
  }
  g2 c4 f2 g4 c2 f4 c2 s4
  f2 f4 c(f) c f(c) g c2.
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