\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A.L. für Weg zum C-Schein"
  title = "Der Mond ist aufgegangen"
  subsubtitle = "Gotteslob Nr. 93"
  instrument = "Orgel"
  composer = "M: Johann Abraham Peter Schulz 1790"
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: Matthias Claudius 1779"
  meter = ""
  piece = ""
  opus = "GL 93"
  copyright = \markup { "© Satz: 24.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

global = {
  \key f \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    f
    g f bf a g2 f4\breathe
    a a a d c bf2 a4\breathe
    a a a bf a
    \alternative { {g2 r4} {g4 g f}}
  }
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    a c a d c c2 a4
    c c c f f d2 c4
    c c c d c
  } \alternative {
    {c2 r4}
    {c4 c a}
  }
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    c,
    e c f f e2 c4
    f f f bf a f2 f4
    f f f f f
  } \alternative {
    {e2 r4}
    {e4 e c}
  }
}

scoreABass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    f,4
    c f bf f c2 f4
    f f f bf f bf2 f4
    f f f bf f
  } \alternative {
  {c2 r4}
  {c4 c f}
  }
}

scoreAVerseA = \lyricmode {
  % Lyrics follow here.
  Der Mond ist auf -- ge -- gan -- gen,
  die gold -- nen Stern -- lein pran -- gen
  am Him -- mel hell und klar:
}

scoreAVerseB = \lyricmode {
  % Lyrics follow here.
  Der Wald steht schwarz und schwei -- get
  und aus den Wie -- sen stei -- get
  der wei -- ße Ne -- bel
}

scoreAVerseC = \lyricmode {
  % Lyrics follow here.
  wun -- der -- bar.
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    \partial 4
    f4
    c f bf f c2 f4
    f f f bf f bf2 f4 f f f bf f
  } \alternative {
  {c2 s4}
  {c4 c f}
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
  \repeat volta 2 {
    \partial 4
    a4
    c a d c c2 a4
    c c c f f d2 c4 
    c c c d c
  } \alternative {
    {c2 r4}
    {c4 c a}
  }
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    c4
    e c f f e2 c4
    f f f a a f2 f4
    f f f f f
  } \alternative {
    {e2 r4}
    {e4 e c}
  }
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
 \repeat volta 2 {
    \partial 4
    f,4
    g f bf a g2 f4\breathe
    a a a d c bf2 a4\breathe
    a a a bf a
    \alternative { {g2 r4} {g4 g f}}
  }
  \bar "|."
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    f,4
    c f bf f c2 f4
    f f f d f bf2 f4
    f f f bf f
  } \alternative {
  {c2 r4}
  {c4 c f}
  }
}

scoreBVerseA = \lyricmode {
  % Lyrics follow here.
  Wie ist die Welt so stil -- le,
  und in der Dämm -- rung Hül -- le
  so trau -- lich und so hold!
%   Als ei -- ne stil -- le Kam -- mer,
%   Wo ihr des Ta -- ges Jam -- mer
%   Ver -- schla -- fen und ver -- ges -- sen sollt.
}

scoreBVerseB = \lyricmode {
  % Lyrics follow here.
  als ei -- ne stil -- le Kam -- mer,
  wo ihr des Ta -- ges Jam -- mer
  ver -- schla -- fen und ver --
}

scoreBVerseC = \lyricmode {
  % Lyrics follow here.
  ges -- sen sollt.
}

scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    \partial 4
    f4
    c f bf f c2 f4
    f f f d:m f bf2 f4 f f f bf f
  } \alternative {
  {c2 s4}
  {c4 c f}
  }
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
  \repeat volta 2 {
    \partial 4
    a
    e a d f, e2 c4
    f f f bf c g2 c4
    c c c d f,
  } \alternative {
    {e2 r4}
    {e4 e a}
  }
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    c4
    g d' f c bf2 f4
    c' c c f e d2 f4
    f f f f c
  } \alternative {
    {bf2 r4}
    {bf4 bf c}
  }
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    f,4
    e a bf f e2 c4
    f f f bf g g2 f4
    f f f bf f
  } \alternative {
  {e2 r4}
  {e4 e f}
  }
}

scoreCBass = \relative c {
  \global
  % Music follows here.
 \repeat volta 2 {
    \partial 4
    f,
    g f bf a g2 f4\breathe
    a a a d c bf2 a4\breathe
    a a a bf a
    \alternative { {g2 r4} {g4 g f}}
  }
  \bar "|."
}

scoreCVerseA = \lyricmode {
  % Lyrics follow here.
  Seht ihr den Mond dort ste -- hen?
  Er ist nur halb zu se -- hen,
  Und ist doch rund und schön.
  So sind wohl man -- che Sa -- chen,
  Die wir ge -- trost be -- la -- chen,
  Weil uns -- re Au -- gen sie nicht sehn.
}

scoreCVerseB = \lyricmode {
  % Lyrics follow here.
  Seht ihr den Mond dort ste -- hen?
  Er ist nur halb zu se -- hen,
  Und ist doch rund und schön.
  So sind wohl man -- che Sa -- chen,
  Die wir ge -- trost be -- la -- chen,
  Weil uns -- re Au -- gen sie nicht sehn.
}

scoreCVerseC = \lyricmode {
  % Lyrics follow here.
  Seht ihr den Mond dort ste -- hen?
  Er ist nur halb zu se -- hen,
  Und ist doch rund und schön.
  So sind wohl man -- che Sa -- chen,
  Die wir ge -- trost be -- la -- chen,
  Weil uns -- re Au -- gen sie nicht sehn.
}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    \partial 4
    f4
    e:m/g d:m/f bf f/a e2:m/g f4
    f/a f/a f/a bf/d c g2:m/bf f4/a f/a f/a f/a bf f/a
  } \alternative {
  {e2:m/g s4}
  {e4:m/g e:m/g f}
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
  } \lyricsto "soprano" {<<\scoreAVerseA \new Lyrics {\set associatedVoice = "soprano" \scoreAVerseB}>> \scoreAVerseC}
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
    \partial 4
    c4 e bf f' f e2 c4
    f f f bf f f2 f4
    f f f f f
  } \alternative {
    {e2 r4}
    {e4 e c}
  }
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
 \repeat volta 2 {
    \partial 4
    f
    g f bf a g2 f4\breathe
    a a a d a bf2 a4\breathe
    a a a bf a
    \alternative { {g2 r4} {g4 g f}}
  }
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    a4
    c bf d c c2 a4
    c c c f c d2 c4
    c c c d c
  } \alternative {
    {c2 r4}
    {c4 c a}
  }
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    f,4
    c d bf' f c2 f4
    f f f bf f bf2 f4
    f f f bf f
  } \alternative {
  {c2 r4}
  {c4 c f}
  }
}

scoreDVerseA = \lyricmode {
  % Lyrics follow here.
  Wir stol -- ze Men -- schen -- kin -- der
  sind ei -- tel ar -- me Sün -- der,
  und wis -- sen gar nicht viel.
}

scoreDVerseB = \lyricmode {
  % Lyrics follow here.
  Wir spin -- nen Luft -- ge -- spins -- te,
  und su -- chen vie -- le Küns -- te,
  und kom -- men wei -- ter
}

scoreDVerseC = \lyricmode {
  % Lyrics follow here.
  von dem Ziel.
}

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    \partial 4
    f4
    c bf/d bf f c2 f4
    f f f bf f bf2 f4 f f f bf f
  } \alternative {
  {c2 s4}
  {c4 c f}
  }
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