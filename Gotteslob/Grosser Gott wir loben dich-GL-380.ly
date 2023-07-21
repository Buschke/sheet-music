\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "Meinem Lehrer Andreas Lang gewidment, auf dass es klappt mit dem C-Schein"
  title = "Großer Gott wie loben dich"
  subsubtitle = ""
  instrument = "Organ"
  composer = "M:  Wien, 1776, Heinrich Bone 1852"
  arranger = "Satz: Sven Buschke"
  poet = "T: Ignaz Franz, 1768, nach Te Deum (4. Jh)"
  meter = ""
  piece = ""
  opus = "GL 380"
  copyright = "Satz: Sven Buschke"
  tagline = "In allen vier CF-Lagen"
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
    a2 a4 a(g) f c'(bf) a a g r4
  }
  g2 a4 bf2 g4 a2 bf4 c2 r4
  d2 d4 c(bf) a bf(a) g f2.
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    a2 a4 a(g) a c(c) c a2 r4
    c2 c4 c(c) a f'(d) c c c r4
  }
  c2 c4 d2 c4 c2 d4 f2 r4
  f2 f4 f(d) c d(c) c a2.
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    c,2 c4 c4(bf) c e(f) e c2 r4
    f2 f4 f(e) c a'(f) f f e r
  }
  e2 f4 f2 e4 f2 f4 a2 r4
  d2 d4 a(f) f f(f)e d2.
}

scoreABass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    f,2 f4 f(g) f c'(f,) c' f,2 s4
    f2 f4 f(c) f f(bf) f f c'4 s4
  }
  c2 f,4 bf2 c,4 f2 bf4 f2 r4 bf2 bf4 f(bf) f bf(f) c f2.
}

scoreAVerseA =  \lyricmode {
  % Lyrics follow here.
  Gro -- ßer Gott wir lo -- ben dich
  Herr, wir prei -- sen dei -- ne Stär -- ke

}

scoreAVerseB =  \lyricmode {
  % Lyrics follow here.
    Vor dir neigt die Er -- de sich
    und be -- wun -- dert dei -- ne Wer -- ke.
}

scoreAVerseC =  \lyricmode {
  % Lyrics follow here.
    Wie du warst vor al -- ler Zeit,
    so bleibst du in E -- wig -- keit.
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    f2 f4 f(e:dim/g) f c(f) c f2 s4
    f2 f4 f(c) f f(bf) f f c4 s4
  }
  c2 f4 bf2 c4 f2 bf4 f2 s4 bf2 bf4 f(bf) f bf(f) c f2.
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
  } \lyricsto "soprano" { << \scoreAVerseA
                             \new Lyrics {
                               \set associatedVoice = "soprano" \scoreAVerseB
                             }
                          >>
                          \scoreAVerseC
  }
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
      subtitle = "Cantus Firmus im Sopran"
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
    a2 a4 a(g) a c(c) c a2 r4
    c2  c4 c(c) a f'(d) c c c r
  }
  c2 c4 d2 c4 c2 d4 f2 r4
  f2 f4 f(d) c d(c) c a2.
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    c2 c4 c(bf) c e(f) e c2 r4
    f2 f4 f(e) c a'(f) f f e r
  }
  e2 f4 f2 e4 f2 f4 a2 r4
  bf2 bf4 a(f) f f(f) e c2.
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    f,2 f4 f(e) f g(a) g f2 r4
    a2 a4 a(g) f c'(bf) a a g r4
  }
  g2 a4 bf2 g4 a2 bf4 c2 r4
  f2 f4 c(bf) a bf(a) g f2.
  \bar "|."
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    f,2 f4 f(g) f c'(f,) c' f,2 s4
    f2 f4 f(c') f, f(bf) f f c'4 s4
  }
  c2 f,4 bf2 c4 f,2 bf4 f2 r4 bf2 bf4 f(bf) f bf(f) c' f,2.
}

scoreBVerseA = \lyricmode {
  % Lyrics follow here.
Al -- les, was dich prei -- sen kann,
Ke -- ru -- bim und Se -- ra -- fi -- nen
}

scoreBVerseB = \lyricmode {
  % Lyrics follow here.
stim -- men dir ein Lob -- lied an
al -- le En -- gel, die dir die -- nen,
}

scoreBVerseC = \lyricmode {
  % Lyrics follow here.
ru -- fen dir stets oh -- ne Ruh
Hei -- lig, hei -- lig, hei -- lig zu
}

scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    f2 f4 f(e:dim/g) f c(f) c f2 s4
    f2 f4 f(c) f f(bf) f f c4 s4
  }
  c2 f4 bf2 c4 f2 bf4 f2 s4 bf2 bf4 f(bf) f bf(f) c f2.
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
  } \lyricsto "soprano" {<<\scoreBVerseA \new Lyrics { \set associatedVoice = "soprano" \scoreBVerseB}>> \scoreAVerseC}
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
      subtitle = "Cantus Firmus im Tenor"
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
  \repeat volta 2 {
    f,2 f4 f(e) f g(a) g f2 r4
    a2 a4 a(g) f c'(bf) a a g r4
  }
  g2 a4 bf2 g4 a2 bf4 c2 r4
  d2 d4 c(bf) a bf(a) g f2.
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
Hei -- lig, Herr Gott Zaba -- ot
Hei -- lig, Herr der Him -- mels -- hee -- re
Star -- ker Hel -- fer in der Not
Him -- mel, Er -- de, Luft und Mee -- re
sind er -- füllt von dei -- nem Ruhm
al -- les ist dein Ei -- gen -- tum.
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
  \header {
      subtitle = "Cantus Firmus im Bass"
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
  \repeat volta 2 {
    f2 f4 f(e) f g(a) g f2 r4
    a2 a4 a(g) f c'(bf) a a g r4
  }
  g2 a4 bf2 g4 a2 bf4 c2 r4
  d2 d4 c(bf) a bf(a) g f2.
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.

}

scoreDBass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    f,2 f4 f(g) f c'(f,) c' f,2 s4
    f2 f4 f(c) f f(bf) f f c'4 s4
  }
  c2 f,4 bf2 c,4 f2 bf4 f2 r4 bf2 bf4 f(bf) f bf(f) c f2.
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
Der Apo -- stel heil -- ger Chor,
der Pro -- phe -- ten heh -- re Men -- ge
schickt zu dei -- nem Thron em -- por
neue Lob- und Dank -- ge -- sän -- ge
der Blut -- zeu -- gen lich -- te Schar
lobt und preist dich im -- mer -- dar.
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
  \header {
      subtitle = "Cantus Firmus im Alt"
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