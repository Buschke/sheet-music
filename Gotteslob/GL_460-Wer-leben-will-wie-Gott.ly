\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = ""
  title = "Wer leben will wie Gott"
  subsubtitle = "Gotteslob Nr. 460"
  instrument = "Orgel"
  composer = "M: Flämische Melodie, 1856"
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: Huub Oosterhuis, 1965 "
  meter = "Übersetzung: Johannes Bergsma 1969"
  piece = "bei: Charles Edmond Henri de Coussermaker"
  opus = "GL / EG 460 / ö"
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

global = {
  \key e \minor
  \time 6/8
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 8
    e,8
    e4 fs8 g4 a8 b4 b8 a(b) a g4(fs8) e
  }
  \partial 8
  fs,
  g4 fs8 e4 fs8 g4 fs8 e4\breathe
  \repeat volta 2 {
    \partial 8
    b'8
    b4 b8 a4 b8 g4(fs8) e4
  }
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 8
    g8
    g4 b8 b4 c8 e4 e8 c(e) c b4(b8) g
  }
  \partial 8
  b8
  b4 b8 g4 b8 b4 b8 g4
  \repeat volta 2 {
    \partial 8
    e'8
    e4 e8 c4 d8 b4(b8) g4
  }
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 8
    b,8
    b4 d8 e4 e8 g4 g8 e8 g e e4(ds8) b
  }
  \partial 8
  d8 e4 d8 b4 d8 e4 ds8 b4
  \repeat volta 2 {
    \partial 8
    g'8 g4 g8 e4 fs8 e4(ds8) b4
  }
}

scoreABass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 8
    e,8
    e4 b'8 e,4 a8 e4 e8 a8 e a e4 b'8 e,
  }
  \partial 8
  b' e,4 b'8 e,4 b'8 e,4 b'8 e,4
  \repeat volta 2 {
    \partial 8
    e8 e4 e8 a4 b8 e4 b8 e,4
  }
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Wer le -- ben will wie Gott auf die -- ser Er -- de,
  muss ster -- ben wie ein Wei -- zen -- korn,
  muss ster -- ben, um zu le -- ben.
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    \partial 8
    e8:min
    e4:min b8:min e4:min a8:min e4:min e8:min a8:min e:min a:min e4:min b8 e:min
  }
  \partial 8
  b:min e4:min b8:min e4:min b8:min e4:min b8:min e4:min
  \repeat volta 2 {
    \partial 8
    e8:min e4:min e8:min a4:min b8:min e4:min b8 e4:min
  }
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
  \transpose e e' \scoreAAlto
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  \transpose e e' \scoreATenor
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  \transpose a a, \scoreASoprano
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  \scoreABass
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
  \repeat volta 2 {
    \partial 8
    e8
    e4 d8 e4 a8 fs4 fs8 a8 fs a e4(d8) e8
  }
  \partial 8
  d8
  e4 d8 e4 d8 e4 d8 e4
  \repeat volta 2 {
    \partial 8
    d8 d4 d8 e4 d8 e4(d8) e4
  }
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 8
    g'8
    g4 fs8 b4 c8 b4 b8 c8 b c b4(fs8) g8
  }
  \partial 8
  fs8
  g4 fs8 g4 fs8 b4 fs8 g4
  \repeat volta 2 {
    \partial 8
    fs8
    fs4 fs8 a4 fs8 b4(fs8) g4
  }
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 8
    b8
    b4 a8 e'4 e8 d4 b8 e8 d e e4(a,8) b8
  }
  \partial 8
  a8
  e4 a8 e4 a8 e4 a8 b4
  \repeat volta 2 {
    \partial 8
    b8
    b4 b8 c4 b8 e4(a,8) b4
  } 
}

scoreCBass = \relative c {
  \global
  % Music follows here.
    \transpose a a, \scoreASoprano
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    \partial 8
    e8:min
    e4:min d8 e4:min/g a8:min b4:min b8:min a8:min b:min a:min e4:min/g d8 e:min
  }
  \partial 8
  d:min e4:min/g d8 e4:min d8 e4:min/g d8 e4:min
  \repeat volta 2 {
    \partial 8
    b8:min b4:min b8:min a4:min b8:min e4:min/g d8 e4:min
  }

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
  \transpose e e'' \scoreATenor
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  \transpose a a \scoreASoprano
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  \transpose e e \scoreAAlto
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  \scoreABass
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
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