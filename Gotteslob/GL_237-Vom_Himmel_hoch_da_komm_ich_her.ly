\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"
\header {
  dedication = "Meinem Lehrer Andreas Lang gewidment, für die Begleitung hin zum C-Schein"
  title = "Vom Himmel hoch da komm ich her"
  subsubtitle = "Gotteslob Nr. 237"
  instrument = "Orgel"
  composer = "M: Martin Luther, 1539"
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: Martin Luther, 1535"
  meter = ""
  piece = ""
  opus = "GL 237"
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

global = {
  \key c \major
  \time 2/1
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  \partial 4
  c4
  b a b g a b c\breathe
  c c g g e g f e\breathe
  e a a g b c a g\breathe
  c b a g g f8 e d4 c2
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  \partial 4
  e4
  e c e b c d e
  e e c c g c a g
  g c c c d e c c
  e e c c c a8 g g4 e2
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  \partial 4
  g4
  g f g d f f g
  g g e e c e c c
  c f f e f g f e
  g g f e e c8 c b4 g2
}

scoreABass = \relative c {
  \global
  % Music follows here.
  \partial 4
  c,4
  e f e g f d c\breathe
  c c c c c c f c\breathe
  c f f c d c f c\breathe
  c e f c c f8 c g'4 c,2
}

scoreAVerseA = \lyricmode {
  % Lyrics follow here.
  Vom Him -- mel hoch da komm ich her,
  ich bring euch gu -- te neu -- e Mär;
  der gu -- ten Mär bring ich so viel,
  da -- von ich singn und sa -- _ gen will.
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
  \partial 4
  c4
  e:m f e:m g f b:dim/d c
  c c c c c c f c
  c f f c b:dim/d c f c
  c e:m f c c f8 c g4 c2
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
  \partial 4
  e4
  e c e b c d e
  e e c c g c a g
  g c c c d e c c
  e e c c c a8 g g4 e2
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  \partial 4
  g'4
  g f g d f f g
  g g e e c e c c
  c f f e f g f e
  g g f e e c8 c b4 g2
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  \partial 4
  c4
  b a b g a b c\breathe
  c c g g e g f e\breathe
  e a a g b c a g\breathe
  c b a g g f8 e d4 c2
  \bar "|."
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  \partial 4
  c,4
  e f e g f d c\breathe
  c c c c c c f c\breathe
  c f f c d c f c\breathe
  c e f c c f8 c g'4 c,2
}

scoreBVerseA = \lyricmode {
  % Lyrics follow here.
  Euch ist ein Kind -- lein heut ge -- born
  von ei -- ner Jung -- frau aus -- er -- korn,
  ein Kin -- de -- lein so zart und fein,
  das soll eu'r Freud und Won -- _ ne sein.
}

scoreBVerseB = \lyricmode {
  % Lyrics follow here.

}

scoreBVerseC = \lyricmode {
  % Lyrics follow here.

}

scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \partial 4
  c4
  e:m f e:m g f b:dim/d c
  c c c c c c f c
  c f f c b:dim/d c f c
  c e:m f c c f8 c g4 c2
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

scoreCSoprano = \relative c'' {
  \global
  % Music follows here.
  \partial 4
  e4
  e c e b c d e
  e e c c g c a g
  g c c c d e c c
  e e c c c a8 g g4 e2
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  \partial 4
  g'4
  g f g d f f g
  g g e e c e c c
  c f f e f g f e
  g g f e e c8 c b4 g2
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  \partial 4
  c4
  e f e g f d c\breathe
  c c c c c c f c\breathe
  c f f c d c f c\breathe
  c e f c c f8 c g'4 c,2
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  \partial 4
  c4
  b a b g a b c\breathe
  c c g g e g f e\breathe
  e a a g b c a g\breathe
  c b a g g f8 e d4 c2
  \bar "|."
}

scoreCVerseA = \lyricmode {
  % Lyrics follow here.
  Es ist der Herr Christ, un -- ser Gott,
  der will euch führn aus al -- ler Not,
  er will eur Hei -- land sel -- ber sein,
  von al -- len Sün -- den ma -- _ chen rein.
}

scoreCVerseB = \lyricmode {
  % Lyrics follow here.

}

scoreCVerseC = \lyricmode {
  % Lyrics follow here.

}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \partial 4
  c4
  e:m f e:m g f b:dim/d c
  c c c c c c f c
  c f f c b:dim/d c f c
  c e:m f c c f8 c g4 c2
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
  \partial 4
  g4
  g f g d f f g
  g g e e c e c c
  c f f e f g f e
  g g f e e c8 c b4 g2
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  \partial 4
  c4
  b a b g a b c\breathe
  c c g g e g f e\breathe
  e a a g b c a g\breathe
  c b a g g f8 e d4 c2
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  \partial 4
  e,4
  e c e b c d e
  e e c c g c a g
  g c c c d e c c
  e e c c c a8 g g4 e2
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  \partial 4
  c,4
  e f e g f d c\breathe
  c c c c c c f c\breathe
  c f f c d c f c\breathe
  c e f c c f8 c g'4 c,2
}

scoreDVerseA = \lyricmode {
  % Lyrics follow here.
  Er bringt euch al -- le Se -- lig -- keit,
  die Gott der Va -- ter hat be -- reit',
  dass ihr mit uns im Him -- mel -- reich
  sollt le -- ben nun und e -- _ wig -- lich.
}

scoreDVerseB = \lyricmode {
  % Lyrics follow here.

}

scoreDVerseC = \lyricmode {
  % Lyrics follow here.

}

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \partial 4
  c4
  e:m f e:m g f b:dim/d c
  c c c c c c f c
  c f f c b:dim/d c f c
  c e:m f c c f8 c g4 c2
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