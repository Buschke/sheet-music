  \version "2.24.1"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "n"
  title = "n"
  subtitle = "n"
  subsubtitle = "n"
  instrument = "n"
  composer = "n"
  arranger = "n"
  poet = "n"
  meter = "n"
  piece = "n"
  opus = "GL 380"
  copyright = "n"
  tagline = "n"
}

global = {
  \key f \major
  \time 3/4
  \tempo "Andante"
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 {
    f,2 f4 f(e) f g(a) g f2 r4
    a2 a4 a(g) f c'(bf) a a g r
  }
  g2 a4 bf2 g4 a2 bf4 c2 r4
  d2 d4 c(bf) a bf(a) g f2.
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
Gro -- ßer Gott wir lo -- ben dich
Herr, wir prei -- sen dei -- ne Stär -- ke
Vor dir neigt die Er -- de sich
und be -- wun -- dert dei -- ne Wer -- ke.
Wie du warst vor al -- ler Zeit,
so bleibst du in Ewig -- keit.
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  f2
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
Alles, was dich preisen kann,
Kerubim und Serafinen
stimmen dir ein Loblied an
alle Engel, die dir dienen,
rufen dir stets ohne Ruh
"Heilig, heilig, heilig" zu
3. Heilig, Herr Gott Zabaot
Heilig, Herr der Himmelsheere
Starker Helfer in der Not
Himmel, Erde, Luft und Meere
sind erfüllt von deinem Ruhm
alles ist dein Eigentum.
4. Der Apostel heilger Chor,
der Propheten hehre Menge
schickt zu deinem Thron empor
neue Lob- und Dankgesänge
der Blutzeugen lichte Schar
lobt und preist dich immerdar.

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
  \new FretBoards \scoreBChordNames
>>

scoreBBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreBFigBass

\bookpart {
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
  \new FretBoards \scoreCChordNames
>>

scoreCBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreCFigBass

\bookpart {
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
  \new FretBoards \scoreDChordNames
>>

scoreDBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreDFigBass

\bookpart {
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