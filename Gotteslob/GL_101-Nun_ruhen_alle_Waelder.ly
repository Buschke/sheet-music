\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "Meinem Lehrer Andreas Lang gewidment, für die Begleitung hin zum C-Schein"
  title = "Nun ruhen alle Wälder"
  subsubtitle = "Gotteslob Nr. 101"
  instrument = "Orgel"
  composer = "M: Heinrich Isaac 1495 u.a."
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: Paul Gerhardt 1647"
  meter = ""
  piece = ""
  opus = "GL 101"
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
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
  \partial 4
  a4
  f g a c bf2 a4\breathe
  a c c g a f2 e4\breathe
  e f g a a g2.\breathe
  a4 f g a c bf2 a4\breathe
  a c c g a f2 e4\breathe
  c f g a bf a g f
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  \partial 4
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  \partial 4
}

scoreABass = \relative c {
  \global
  % Music follows here.
  \partial 4
  f,4
  f c f f bf2 f4
  f f f c f f2 a4
  g f c f f c2.
  f4 f c f f bf2 f4
  f f f c f f2 c4
  c f c f bf f c f
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Nun ru -- hen al -- le Wäl -- der,
  Vieh, Men -- schen, Städt und Fel -- der,
  es schläft die gan -- ze Welt;
  ihr aber, mei -- ne Sin -- nen,
  auf, auf, ihr sollt be -- gin -- nen,
  was eu -- rem Schöp -- fer wohl -- ge -- fällt.
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \partial 4
  f4
  f c f f bf2 f4
  f f f c f f2 a4:m
  e:dim/g f c f f c2.
  f4 f c f f bf2 f4
  f f f c f f2 c4
  c f c f bf f c f
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
  a4
  f g a c bf2 a4\breathe
  a c c g a f2 e4\breathe
  e f g a a g2.\breathe
  a4 f g a c bf2 a4\breathe
  a c c g a f2 e4\breathe
  c f g a bf a g f
  \bar "|."
}

scoreBBass = \relative c {
  \global
  % Music follows here.

}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  Wo bist du, Son -- ne, blie -- ben?
  Die Nacht hat dich ver -- trie -- ben,
  die Nacht, des Ta -- ges Feind.
  Fahr hin; ein and -- re Son -- ne,
  mein Je -- sus, mei -- ne Won -- ne,
  gar hell in mei -- nem Her -- zen scheint.
}

scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \partial 4
  f4
  f c f f bf2 f4
  f f f c f f2 a4:m
  e:dim/g f c f f c2.
  f4 f c f f bf2 f4
  f f f c f f2 c4
  c f c f bf f c f
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
  a4
  f g a c bf2 a4\breathe
  a c c g a f2 e4\breathe
  e f g a a g2.\breathe
  a4 f g a c bf2 a4\breathe
  a c c g a f2 e4\breathe
  c f g a bf a g f
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  Der Tag ist nun ver -- gan -- gen,
  die güld -- nen Stern -- lein pran -- gen
  am blau -- en Him -- mels -- saal;
  al -- so werd ich auch ste -- hen,
  wenn mich wird hei -- ßen ge -- hen
  mein Gott aus die -- sem Jam -- mer -- tal.
}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \partial 4
  f4
  f c f f bf2 f4
  f f f c f f2 a4:m
  e:dim/g f c f f c2.
  f4 f c f f bf2 f4
  f f f c f f2 c4
  c f c f bf f c f
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
  a4
  f g a c bf2 a4\breathe
  a c c g a f2 e4\breathe
  e f g a a g2.\breathe
  a4 f g a c bf2 a4\breathe
  a c c g a f2 e4\breathe
  c f g a bf a g f
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
  Der Leib eilt nun zur Ru -- he,
  legt ab das Kleid und Schu -- he,
  das Bild der Sterb -- lich -- keit;
  die zieh ich aus, da -- ge -- gen
  wird Chris -- tus mir an -- le -- gen
  den Rock der Ehr und Herr -- lich -- keit.
}

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \partial 4
  f4
  f c f f bf2 f4
  f f f c f f2 a4:m
  e:dim/g f c f f c2.
  f4 f c f f bf2 f4
  f f f c f f2 c4
  c f c f bf f c f
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