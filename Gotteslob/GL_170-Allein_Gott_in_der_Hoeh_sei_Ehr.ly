\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Allein Gott in der Höh sei Ehr"
  subsubtitle = "Gotteslob Nr. 170"
  instrument = "Orgel"
  composer = "M: Nikolaus Decius, 1523"
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: Nikolaus Decius, 1523"
  meter = ""
  piece = ""
  opus = "GL 170"
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

global = {
  \key f \major
  \time 3/2
  \tempo "Andante" 4=50
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
    %      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)
    %      \override System.break-visibility = #end-of-line-invisible
  }
}


scoreASoprano = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    %     \partial 4
    f4
    a2 bf4 c2 bf4 a2 g4 a2\breathe
    a4 a2 g4 bf(a) g f2(e4) f
  }
  f4 f2 g4 bf bf a g2 f4 g2\breathe
  g4 a2 bf4 c2 bf4 a2 g4 a2\breathe
  f4 g2 bf4 a2 g4 f2(e4) f2
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    %   \partial 4
    a4 c2 d4 f2 d4 c2 c4 c2
    c4 c2 c4 d(c) c a2(g4) a
  }
  a4 a2 c4 d d c c2 a4 c2
  c4 c2 d4 f2 d4 c2 c4 c2
  a4 c2 d4 c2c4 a2(g4) a2
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    %   \partial 4
    c4 f2 f4 a2 f4 f2 e4 f2
    f4 f2 e4 f(f) e c2(bf4) c
  }
  c4 a2 e4 f f f e2 c4 e2
  e4 f2 f4 a2 f4 f2 e4 f2
  c4 e2 f4 f2 e4 c2(bf4) c2
}

scoreABass = \relative c, {
  \global
  % Music follows here.
  \repeat volta 2 {
    %     \partial 4
    f4
    f2 bf4 f2 bf4 f2 c'4 f,2
    f4 f2 c'4 bf(f) c' f,2(g4) f
  }
  f4 f2 c'4 bf bf f c'2 f,4 c'2
  c4 f,2 bf4 f2 bf4 f2 c'4 f,2
  f4 c'2 bf4 f2 c'4 f,2(g4) f2
}

scoreAVerseA = \lyricmode {
  % Lyrics follow here.
  Al -- lein Gott in der Höh
  sei Ehr und Dank für sei -- ne Gna -- de,
}

scoreAVerseB = \lyricmode {
  % Lyrics follow here.
  dar -- um, daß nun und nim -- mer -- mehr
  uns rüh -- ren kann kein Schan -- de.
}

scoreAVerseC = \lyricmode {
  % Lyrics follow here.
  Ein Wohl -- ge -- fal -- len Gott an uns hat,
  nun ist groß Fried ohn Un -- ter -- laß;
  all Fehd hat nun ein En -- de.
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    %     \partial 4
    f4
    f2 bf4 f2 bf4 f2 c4 f2
    f4 f2 c4 bf(f) c f2(e4:dim/g) f4
  }
  f4 f2 c4 bf bf f c2 f4 c2
  c4 f2 bf4 f2 bf4 f2 c4 f2
  f4 c2 bf4 f2 c4 f2(e4:dim/g) f2
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

scoreBSoprano = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 {
    %     \partial 4
    a4
    c2 d4 f2 d4 c2 c4 c2
    c4 c2 c4 d4(c) c a2(g4) a
  }
  a4 a2 c4 d d c c2 a4 c2
  c4 c2 d4 e2 d4 c2 c4 c2
  a4 c2 d4 c2 c4 a2(g4) a2
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    %     \partial 4
    c4
    f2 f4 a2 f4 f2 e4 f2
    f4 f2 e4 f(f) e c2(bf4) c
  }
  c4 c2 e4 f f f e2 c4 e2
  e4 f2 f4 a2 f4 f2 e4 f2
  c4 e2 f4 f2 e4 c2(bf4) c2
}

scoreBTenor = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    %     \partial 4
    f4
    a2 bf4 c2 bf4 a2 g4 a2\breathe
    a4 a2 g4 bf(a) g f2(e4) f
  }
  f4 f2 g4 bf bf a g2 f4 g2\breathe
  g4 a2 bf4 c2 bf4 a2 g4 a2\breathe
  f4 g2 bf4 a2 g4 f2(e4) f2
  \bar "|."
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    %     \partial 4
    f,4
    f2 bf4 f2 bf4 f2 c'4 f,2
    f4 f2 c'4 bf(f) c' f,2(g4) f
  }
  f4 f2 c'4 bf bf f c'2 f,4 c'2
  c4 f,2 bf4 f2 bf4 f2 c'4 f,2
  f4 c'2 bf4 f2 c'4 f,2(g4) f2
}

scoreBVerseA = \lyricmode {
  % Lyrics follow here.
  Wir lo -- ben Herr, und prei -- sen dich,
  für dei -- ne Ehr wir dan -- ken,
  daß du, Gott Va -- ter, ewig -- lich
  re -- gierst ohn al -- les Wan -- ken.
  Ganz un -- ge -- mes -- sen ist dei -- ne Macht;
  all -- zeit ge -- schieht, was du be -- dacht.
  Wohl uns des gu -- ten Her -- ren!
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
  \repeat volta 2 {
    %     \partial 4
    f4
    f2 bf4 f2 bf4 f2 c4 f2
    f4 f2 c4 bf(f) c f2(e4:dim/g) f4
  }
  f4 f2 c4 bf bf f c2 f4 c2
  c4 f2 bf4 f2 bf4 f2 c4 f2
  f4 c2 bf4 f2 c4 f2(e4:dim/g) f2
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
    a4 f2 d'4 c2 d4 f,2 g4 c2
    c4 c2 bf4 bf(c) bf a2(c4) a
  }
  a4 a2 g4 bf bf f g2 a4 bf2
  g4 f2 bf4 g2 bf4 f2 bf4 f2
  a4 g2 f4 f2 g4 a2(c,4) a'2
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    c4 c2 f4 e2 f4 c2 bf4 c2
    c4 c2 d4 f(c) d c2(g'4) c,
  }
  c4 c2 bf4 d d c bf2 c4 d2
  bf4 c2 d4 c2 d4 c2 d4 c2
  c4 bf2 bf4 c2 bf4 c2(g4) c2
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    %     \partial 4
    f,4
    f2 bf4 g2 bf4 f2 e4 f2
    f4 f2 g4 f(f) g f2(c'4) f,
  }
  f4 f2 d4 f f f d2 f4 g2
  e4 f2 f4 e2 f4 f2 g4 f2
  f4 d2 d4 f2 e4 f2(c4) f2
}

scoreCBass = \relative c, {
  \global
  % Music follows here.
  \repeat volta 2 {
    %     \partial 4
    f4
    a2 bf4 c2 bf4 a2 g4 a2\breathe
    a4 a2 g4 bf(a) g f2(e4) f
  }
  f4 f2 g4 bf bf a g2 f4 g2\breathe
  g4 a2 bf4 c2 bf4 a2 g4 a2\breathe
  f4 g2 bf4 a2 g4 f2(e4) f2
  \bar "|."
}

scoreCVerseA = \lyricmode {
  % Lyrics follow here.
  O Je -- sus Christ, Sohn ein -- ge -- born
  des al -- ler -- höchs -- ten Va -- ters,
}

scoreCVerseB = \lyricmode {
  % Lyrics follow here.
  Ver -- söh -- ner de -- rer, die ver -- lorn,
  du Stil -- ler un -- sers Ha -- ders,
}

scoreCVerseC = \lyricmode {
  % Lyrics follow here.
  Lamm Got -- tes, heil' -- ger Herr und Gott,
  nimm an die Bitt in uns -- rer Not,
  er -- barm dich un -- ser al -- ler!
}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    %     \partial 4
    f4
    f2/a bf4 c2 bf4 f2/a e4:dim/g f2/a
    f4/a f2/a g4:m bf(f/a) g:m f2(c4/e) f4
  }
  f4 f2 g4:m bf bf f/a g2:m f4 g2:m
  e4:dim/g f2/a bf4 c2 bf4 f2/a g4:m f2/a
  f4 g2:m bf4 f2/a e4:dim/g f2(c4/e) f2
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
  %   \partial 4
  \repeat volta 2 {
    c4 f2 f4 a2 f4 f2 e4 f2
    f4 f2 e4 f(f) e c2(bf4) c
  }
  c4 c2 e4 f f f e2 c4 e2
  e4 f2 f4 a2 f4 f2 e4 f2
  c4 e2 f4 f2 e4 c2(c4) c2
}

scoreDAlto = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    %     \partial 4
    f'4
    a2 bf4 c2 bf4 a2 g4 a2\breathe
    a4 a2 g4 bf(a) g f2(e4) f
  }
  f4 f2 g4 bf bf a g2 f4 g2\breathe
  g4 a2 bf4 c2 bf4 a2 g4 a2\breathe
  f4 g2 bf4 a2 g4 f2(e4) f2
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    a4 c2 d4 f2 d4 c2 c4 c2
    c4 c2 c4 d(c) c a2(g4) a
  }
  a4 a2 c4 d d c c2 a4 c2
  c4 c2 d4 c2 d4 f2 c4 c2
  a4 c2 d4 c2 c4 a2(g4) a2
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    %     \partial 4
    f,4
    f2 bf4 f2 bf4 f2 c'4 f,2
    f4 f2 c'4 bf(f) c' f,2(g4) f
  }
  f4 f2 c'4 bf bf f c'2 f,4 c'2
  c4 f,2 bf4 f2 bf4 f2 c'4 f,2
  f4 c'2 bf4 f2 c'4 f,2(c'4) f,2
}

scoreDVerseA = \lyricmode {
  % Lyrics follow here.
  O Heil'ger Geist, du höchs -- tes Gut,
  du al -- ler -- heil -- sams -- ter Trös -- ter,
  vor Teu -- fels G'walt fort -- an be -- hüt,
  die Je -- sus Christ er -- lö -- set
  durch gro -- ße Mar -- ter und bit -- tern Tod!
  Wend un -- sern Jam -- mer, uns -- re Not!
  Dar -- auf wir uns ver -- las -- sen.
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
  \repeat volta 2 {
    %     \partial 4
    f4
    f2 bf4 f2 bf4 f2 c4 f2
    f4 f2 c4 bf(f) c f2(e4:dim/g) f4
  }
  f4 f2 c4 bf bf f c2 f4 c2
  c4 f2 bf4 f2 bf4 f2 c4 f2
  f4 c2 bf4 f2 c4 f2(c4) f2
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
  } \lyricsto "soprano" {<<\scoreDVerseA \new Lyrics {\set associatedVoice = "soprano" \scoreDVerseB}>> \scoreAVerseC}
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