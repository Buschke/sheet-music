\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "Meinem Lehrer Andreas Lang gewidment, auf dass es klappt mit dem C-Schein"
  title = "Näher, mein Gott zu dir"
  subsubtitle = ""
  instrument = "Orgel"
  composer = "M:  Lowell Mason 1859"
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: Erhardt Friedrich Wunderlich 1875"
  meter = ""
  piece = "nach Sarah F. Adams 'Nearer, my God, to thee', London 1841"
  opus = "GL 502"
  copyright = \markup { "© Satz: 01.08.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

global = {
  \key f \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  a2 g4 f f4. d8 d2 c f4 a g2. r4
  a2 g4 f f4. d8 d2 c4(f) e g f2. r4
  c'2 d4 c c4. a8 c2 c d4 c c4. a8 g2\breathe
  a2 g4 f f4. d8 d2 c4(f) e g f1
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  c2 c4 a a4. f8 f2 f a4 c c2. r4
  c2 c4 a a4. f8 f2 f4(a) a c a2. r4
  f'2 f4 f f4. c8 f2 f f4 f f4. c8 c2
  c2 c4 a a4. f8 f2 e4(a) a c a1
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  f,2 e4  c c4. bf8 bf2 a2 c4 f e2. r4
  f2 e4 c c4. bf8 bf2 a4(c) c e c2. r4
  a'2 bf4 a a4. f8 a2 a bf4 a a4. f8 e2
  f2 e4 c c4. bf8 bf2 a4(c) c e c1
}

scoreABass = \relative c {
  \global
  % Music follows here.
  f,2 c4 f f4. bf8 bf2 f2 f4 f4 c2. s4
  f2 c4 f f4. bf8 bf2 f4(f) a c f,2. s4
  f2 bf4 f f4. f8 f2 f bf4 f f4. f8 c2
  f c4 f f4. bf8 bf2 f4(f) a c f,1
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Nä -- her, mein Gott, zu dir, nä -- her zu dir!
  Drückt mich auch Kum -- mer hier, dro -- het man mir,
  soll doch trotz Kreuz und Pein dies mei -- ne Lo -- sung sein:
  Nä -- her, mein Gott, zu dir, nä -- her zu dir.
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  f2 c4 f f4. bf8 bf2 f2 f4 f4 c2. s4
  f2 c4 f f4. bf8 bf2 f4(f) a:m c f2. s4
  f2 bf4 f f4. f8 f2 f bf4 f f4. f8 c2
  f c4 f f4. bf8 bf2 f4(f) a:m c f1
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
  c2 c4 a a4. f8 f2 f a4 c c2. r4
  c2 c4 a a4. f8 f2 f4(a) a c a2. r4
  f'2 f4 f f4. c8 f2 f f4 f f4. c8 c2
  c2 c4 a a4. f8 f2 e4(a) a c a1
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  f2 e4  c c4. bf8 bf2 a2 c4 f e2. r4
  f2 e4 c c4. bf8 bf2 a4(c) c e c2. r4
  a'2 bf4 a a4. f8 a2 a bf4 a a4. f8 e2
  f2 e4 c c4. bf8 bf2 a4(c) c e c1
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  a2 g4 f f4. d8 d2 c f4 a g2. r4
  a2 g4 f f4. d8 d2 c4(f) e g f2. r4
  c'2 d4 c c4. a8 c2 c d4 c c4. a8 g2\breathe
  a2 g4 f f4. d8 d2 c4(f) e g f1
  \bar "|."
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  f,2 c4 f f4. bf8 bf2 f2 f4 f4 c2. s4
  f2 c4 f f4. bf8 bf2 f4(f) a c f,2. s4
  f2 bf4 f f4. f8 f2 f bf4 f f4. f8 c2
  f c4 f f4. bf8 bf2 f4(f) a c f,1
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  Bricht mir, wie Ja -- kob dort, Nacht auch her -- ein,
  find ich zum Ruheort nur einen Stein;
  ist selbst im Trau -- me hier mein Seh -- nen für und für:
  Nä -- her, mein Gott, zu dir, nä -- her zu dir!
}

scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  f2 c4 f f4. bf8 bf2 f2 f4 f4 c2. s4
  f2 c4 f f4. bf8 bf2 f4(f) a:m c f2. s4
  f2 bf4 f f4. f8 f2 f bf4 f f4. f8 c2
  f c4 f f4. bf8 bf2 f4(f) a:m c f1
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
  f,2 c4 f f4. bf8 bf2 f2 f4 f4 c2. s4
  f2 c4 f f4. bf8 bf2 f4(f) a c f,2. s4
  f2 bf4 f f4. f8 f2 f bf4 f f4. f8 c2
  f c4 f f4. bf8 bf2 f4(f) a c f,1
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  a2 g4 f f4. d8 d2 c f4 a g2. r4
  a2 g4 f f4. d8 d2 c4(f) e g f2. r4
  c'2 d4 c c4. a8 c2 c d4 c c4. a8 g2\breathe
  a2 g4 f f4. d8 d2 c4(f) e g f1
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  Geht auch die schma -- le Bahn auf -- wärts gar steil,
  führt sie doch him -- mel -- an zu mei -- nem Heil.
  En -- gel, so licht und schön, win -- ken aus sel -- gen Höhn:
  Nä -- her, mein Gott, zu dir, nä -- her zu dir.
}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  f2 c4 f f4. bf8 bf2 f2 f4 f4 c2. s4
  f2 c4 f f4. bf8 bf2 f4(f) a:m c f2. s4
  f2 bf4 f f4. f8 f2 f bf4 f f4. f8 c2
  f c4 f f4. bf8 bf2 f4(f) a:m c f1
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
  f2 e4  c c4. bf8 bf2 a2 c4 f e2. r4
  f2 e4 c c4. bf8 bf2 a4(c) c e c2. r4
  a'2 bf4 a a4. f8 a2 a bf4 a a4. f8 e2
  f2 e4 c c4. bf8 bf2 a4(c) c e c1
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  a'2 g4 f f4. d8 d2 c f4 a g2. r4
  a2 g4 f f4. d8 d2 c4(f) e g f2. r4
  c'2 d4 c c4. a8 c2 c d4 c c4. a8 g2\breathe
  a2 g4 f f4. d8 d2 c4(f) e g f1
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  c2 c4 a a4. f8 f2 f a4 c c2. r4
  c2 c4 a a4. f8 f2 f4(a) a c a2. r4
  f'2 f4 f f4. c8 f2 f f4 f f4. c8 c2
  c2 c4 a a4. f8 f2 e4(a) a c a1
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  f,2 c4 f f4. bf8 bf2 f2 f4 f4 c2. s4
  f2 c4 f f4. bf8 bf2 f4(f) a c f,2. s4
  f2 bf4 f f4. f8 f2 f bf4 f f4. f8 c2
  f c4 f f4. bf8 bf2 f4(f) a c f,1
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  Ist dann die Nacht vor -- bei, leuch -- tet die Sonn,
  weih ich mich dir aufs neu vor dei -- nem Thron;
  baue mein Be -- thel dir und jauchz mit Freu -- den hier:
  Nä -- her, mein Gott, zu dir, nä -- her zu dir!
}

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  f2 c4 f f4. bf8 bf2 f2 f4 f4 c2. s4
  f2 c4 f f4. bf8 bf2 f4(f) a:m c f2. s4
  f2 bf4 f f4. f8 f2 f bf4 f f4. f8 c2
  f c4 f f4. bf8 bf2 f4(f) a:m c f1
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