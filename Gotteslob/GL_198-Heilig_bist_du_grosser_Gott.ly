\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"
\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Heilig bist du, großer Gott"
  subsubtitle = "Gotteslob Nr. 198"
  instrument = "Orgel"
  composer = "M: Joseph Mohr 1877 / J.G.F Braun 1675"
  arranger = \markup { "Satz: " \with-url #"mailto:AnLang@ebmuc.de" "Andreas Lang" }
  poet = "T: Aachen 1867"
  meter = ""
  piece = ""
  opus = "GL 198"
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:AnLang@ebmuc.de" "Andreas Lang" }
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
  e,4 d c e g f e2 g4 g f e d d c2
  \repeat volta 2 { c'4 c b g a a g2 g4 g a a g(f) e2\breathe
  c4 e f g a a g2 f4 g e d8( c) d2 c}
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  c4 g g c d d c2 c4 c b c c b g2
  \repeat volta 2 {
    g'4 g g c, c c c2 c4 c c c c(d) c2
    g4 c c c c c c2 c4 e c c b2 g
  }
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  g4 d e g g g g2 g4 g g g a g e2
  \repeat volta 2 { c'4 c b c c c e,2 e4 e f f e(g) g2 e4 g a g f f e2 a4 c g g g2 e }
}

scoreABass = \relative c {
  \global
  % Music follows here.
  c4 b c c b b c2 e4 e d c f, g c2
  \repeat volta 2 { e4 e g e f f c2 c4 c f, f c'(b) c2 c4 c f e f f c2 f4 c c c g2 c }
}

scoreAVerseA = \lyricmode {
  % Lyrics follow here.
  Hei -- lig bist du, gro -- ßer Gott, hei -- lig, Herr, Gott Ze -- ba -- ot.
}

scoreAVerseB = \lyricmode {
  % Lyrics follow here.
  Zeu -- gen dei -- ner Herr -- lich -- keit Him -- mel sind und Er -- de.
  Lob und Preis durch al -- le Zeit, dir o Höchs -- ter, wer -- de.
}

scoreAVerseC = \lyricmode {
  % Lyrics follow here.
  Der da kommt vom ew -- gen Thron, er sei hoch ge -- prie -- sen.
  E -- wig sei dem Got -- tes -- sohn Ehr und Dank er -- wie -- sen.
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
}

scoreAFigBass = \figuremode {
  \global
  % Figures follow here.
  s4 <6> s s <6>
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
  } \lyricsto "soprano" {\scoreAVerseA <<\scoreAVerseB \new Lyrics {\set associatedVoice = "soprano" \scoreAVerseC}>>}
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
  c4 g g c d d c2 c4 c b c c b g2
  \repeat volta 2 {
    g'4 g g c, c c c2 c4 c c c c(d) c2
    g4 c c c c c c2 c4 e c c b2 g
  }
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  c4 g g c d d c2 c4 c b c c b g2
  \repeat volta 2 {
    g'4 g g c, c c c2 c4 c c c c(d) c2
    g4 c c c c c c2 c4 e c c b2 g
  }
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  e,4 d c e g f e2 g4 g f e d d c2
  \repeat volta 2 { c'4 c b g a a g2 g4 g a a g(f) e2\breathe
  c4 e f g a a g2 f4 g e d8( c) d2 c}
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  c4 b c c b b c2 e4 e d c f, g c2
  \repeat volta 2 { e4 e g e f f c2 c4 c f, f c'(b) c2 c4 c f e f f c2 f4 c c c g2 c }
}

scoreBVerseA = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseA
}

scoreBVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseB
}

scoreBVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseC
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
  } \lyricsto "soprano" {\scoreBVerseA <<\scoreBVerseB \new Lyrics {\set associatedVoice = "soprano" \scoreBVerseC}>>}
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
  c4 g g c d d c2 c4 c b c c b g2
  \repeat volta 2 {
    g'4 g g c, c c c2 c4 c c c c(d) c2
    g4 c c c c c c2 c4 e c c b2 g
  }
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  c4 g g c d d c2 c4 c b c c b g2
  \repeat volta 2 {
    g'4 g g c, c c c2 c4 c c c c(d) c2
    g4 c c c c c c2 c4 e c c b2 g
  }
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  c4 b c c b b c2 e4 e d c f, g c2
  \repeat volta 2 { e4 e g e f f c2 c4 c f, f c'(b) c2 c4 c f e f f c2 f4 c c c g2 c }
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  e,4 d c e g f e2 g4 g f e d d c2
  \repeat volta 2 { c'4 c b g a a g2 g4 g a a g(f) e2\breathe
  c4 e f g a a g2 f4 g e d8( c) d2 c}
}

scoreCVerseA = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseA
}

scoreCVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseB
}

scoreCVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseC
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
  } \lyricsto "soprano" {\scoreCVerseA <<\scoreCVerseB \new Lyrics {\set associatedVoice = "soprano" \scoreCVerseC}>>}
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
  c4 g g c d d c2 c4 c b c c b g2
  \repeat volta 2 {
    g'4 g g c, c c c2 c4 c c c c(d) c2
    g4 c c c c c c2 c4 e c c b2 g
  }
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  e4 d c e g f e2 g4 g f e d d c2
  \repeat volta 2 { c'4 c b g a a g2 g4 g a a g(f) e2\breathe
  c4 e f g a a g2 f4 g e d8( c) d2 c}
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  c4 g g c d d c2 c4 c b c c b g2
  \repeat volta 2 {
    g'4 g g c, c c c2 c4 c c c c(d) c2
    g4 c c c c c c2 c4 e c c b2 g
  }
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  c4 b c c b b c2 e4 e d c f, g c2
  \repeat volta 2 { e4 e g e f f c2 c4 c f, f c'(b) c2 c4 c f e f f c2 f4 c c c g2 c }
}

scoreDVerseA = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseA
}

scoreDVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseB
}

scoreDVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseC
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
  } \lyricsto "soprano" {\scoreDVerseA <<\scoreDVerseB \new Lyrics {\set associatedVoice = "soprano" \scoreDVerseC}>>}
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