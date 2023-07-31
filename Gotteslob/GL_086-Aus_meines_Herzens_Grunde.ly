\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"
\header {
  dedication = "Meinem Lehrer Andreas Lang gewidment, für die Begleitung hin zum C-Schein"
  title = "Aus meines Herzens Grunde"
  subsubtitle = "Gotteslob Nr. 86"
  instrument = "Orgel"
  composer = "M: Eisleben 1598"
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: Georg Niege 1585"
  meter = ""
  piece = ""
  opus = "GL 86"
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

global = {
  \key c \major
  \time 3/1
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    c4
    c2 g'4 e4.(d8) c4 b2(c4) d2 e4 g2 e4 d2 d4 c2.(c2)
  }
  e4 e2 g4 g4.(f8) e4 d2.(d2) c4 e2 d4 g2 d4 e2. c2\breathe
  e4 g2 f4 e4.(d8) c4 b2(c4) d2 e4 g2 e4 d2 d4 c2.(c2)
  \bar "|."
}

scoreAAlto = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e4
    e2 c'4  g4.(g8) e4 d2(e4) g2 g4 c2 g4 g2 g4 e2.(e2)
  }
  g4 g2 c4 c4.(a8) g4 g2.(g2) e4 g2 g4 b2 g4 g2. e2
  g4 c2 a4 g4.(g8) e4 d2(e4) g2 g4 c2 g4 g2 g4 e2.(e2)
}

scoreATenor = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    g4
    g2 e'4 c4.(b8) g4 g2(g4) b2 c4 e2 c4 b2 b4 g2.(g2)
  }
  c4 c2 e4 e4.(c8) c4 b2.(b2) g4 c2 b4 d2 b4 c2.g2
  c4 e2 c4 c4.(b8) g4 g2(g4) b2 c4 e2 c4 b2 b4 g2.(g2)
}

scoreABass = \relative c, {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    c4 c2 c4 c4.(g8) c4 g2(c4) g2 c4 c2 c4 g2 g4 c2.(c2)
  }
  c4 c2 c4 c4.(f8) c4 g2.(g2) c4 c2 g4 g2 g4 c2. c2\breathe
  c4 c2 f4 c4.(g8) c4 g2(c4) g2 c4 c2 c4 g2 g4 c2.(c2)
}

scoreAVerseA = \lyricmode {
  % Lyrics follow here.
  Aus mei -- nes Her -- zens Grun -- de
  Sag' ich dir Lob und Dank
}

scoreAVerseB = \lyricmode {
  % Lyrics follow here.
  In die -- ser Mor -- gen -- stun -- de,
  Da -- zu mein Le -- ben lang,
}

scoreAVerseC = \lyricmode {
  % Lyrics follow here.
  dir Gott, in dei -- nem Thron,
  Dir zu Preis, Lob und Eh -- ren
  Durch Chris -- tum, un -- sern Her -- ren,
  Dein'n ein -- ge -- bor -- nen Sohn,
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    \partial 4
    c4 c2 c4 c4.(g8) c4 g2(c4) g2 c4 c2 c4 g2 g4 c2.(c2)
  }
  c4 c2 c4 c4.(f8) c4 g2.(g2) c4 c2 g4 g2 g4 c2. c2
  c4 c2 f4 c4.(g8) c4 g2(c4) g2 c4 c2 c4 g2 g4 c2.(c2)
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

scoreBSoprano = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e4
    e2 c'4  g4.(g8) e4 d2(e4) g2 g4 c2 g4 g2 g4 e2.(e2)
  }
  g4 g2 c4 c4.(a8) g4 g2.(g2) e4 g2 g4 c2 g4 g2. e2\breathe
  g4 c2 a4 g4.(g8) e4 d2(e4) g2 g4 c2 g4 g2 g4 e2.(e2)
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    g4
    g2 e'4 c4.(b8) g4 g2(g4) b2 c4 e2 c4 b2 b4 g2.(g2)
  }
  c4 c2 e4 e4.(c8) c4 b2.(b2) g4 c2 b4 e2 b4 c2.g2
  c4 e2 c4 c4.(b8) g4 g2(g4) b2 c4 e2 c4 b2 b4 g2.(g2)
}

scoreBTenor = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    c4
    c2 g'4 e4.(d8) c4 b2(c4) d2 e4 g2 e4 d2 d4 c2.(c2)
  }
  e4 e2 g4 g4.(f8) e4 d2.(d2) c4 e2 d4 g2 d4 e2. c2\breathe
  e4 g2 f4 e4.(d8) c4 b2(c4) d2 e4 g2 e4 d2 d4 c2.(c2)
  \bar "|."
}

scoreBBass = \relative c, {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    c4 c2 c4 c4.(g8) c4 g2(c4) g2 c4 c2 c4 g2 g4 c2.(c2)
  }
  c4 c2 c4 c4.(f8) c4 g2.(g2) c4 c2 g4 c2 g4 c2. c2\breathe
  c4 c2 f4 c4.(g8) c4 g2(c4) g2 c4 c2 c4 g2 g4 c2.(c2)
}

scoreBVerseA = \lyricmode {
  % Lyrics follow here.
  dass du mich hast aus Gna -- den
  In der ver -- gang -- nen Nacht
  Vor G'fahr und al -- lem Scha -- den
  Be -- hü -- tet und be -- wacht.
  Ich bitt' de -- mü -- tig -- lich,
  Woll'st mir mein' Sünd' ver -- ge -- ben,
  Wo -- mit in die -- sem Le -- ben
  Ich hab' er -- zür -- net dich.
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
    \partial 4
    c4 c2 c4 c4.(g8) c4 g2(c4) g2 c4 c2 c4 g2 g4 c2.(c2)
  }
  c4 c2 c4 c4.(f8) c4 g2.(g2) c4 c2 g4 c2 g4 c2. c2
  c4 c2 f4 c4.(g8) c4 g2(c4) g2 c4 c2 c4 g2 g4 c2.(c2)
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
    \partial 4
    e4 e2 d4 e4.(d8) e4 g2(e4) d2 c4 g'2 c,4 d2 d4 e2.(e2)
  }
  e4 e2 g4 g4.(f8) c4 d2.(d2) e4 c2 d4 d2 d4 c2. e2\breathe
  c4 e2 f4 c4.(d8) e4 g2(c4) b2 c,4 d2 c4 d2 d4 e2.(e2)
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    g4
    g2 g4 g4.(f8) g4 d2(g4) f2 g4 b2 g4 fs2 fs4 g2.(g2)
  }
  g4 g2 b4 b4.(a8) g4 f2.(f2) g4 g2 f4 g2 f4 g2. g2
  g4 b2 a4 g4.(f8) g4 d'2(e4) d2 g,4 g2 g4 f2 f4 g2.(g2)

}

scoreCTenor = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    c4 c2 b4 c4.(b8) c4 g2(c4) b2 c4 d2 c4 b2 b4 c2.(c2)
  }
  c4 c2 d4 d4.(c8) c4 b2.(b2) c4 c2 a4 b2 b4 c2. c2\breathe
  c4 e2 c4 c4.(b8) c4 g'2(g4) f2 c4 b2 c4 b2 b4 c2.(c2)
}

scoreCBass = \relative c, {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    c4
    c2 g'4 e4.(d8) c4 b2(c4) d2 e4 g2 e4 d2 d4 c2.(c2)
  }
  e4 e2 g4 g4.(f8) e4 d2.(d2) c4 e2 d4 g2 d4 e2. c2\breathe
  e4 g2 f4 e4.(d8) c4 b2(c4) d2 e4 g2 e4 d2 d4 c2.(c2)
  \bar "|."
}

scoreCVerseA = \lyricmode {
  % Lyrics follow here.
  Gott will ich las -- sen ra -- ten,
  Denn er all' Ding' ver -- mag;
  Er seg -- ne mei -- ne Ta -- ten,
  Mein Vor -- neh -- men und Sach',
  Denn ich ihm heim -- ge -- stellt
  Mein'n Leib, mein' Seel', mein Le -- ben
  Und was er mir sonst ge -- ben.
  Er mach's, wie's ihm ge -- fällt.
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
  \repeat volta 2 {
    \partial 4
    c4 c2 g4 c4./e(b8:dim/d) c4 g2/b(c4) b2:dim/d c4/e g2 c4/e b2:dim/d b4:dim/d c2.(c2)
  }
  c4/e c2/e g4 g4.(f8) c4/e b2.:dim/d(b2:dim/d) c4 c2/e d4:m g2 b4:dim/d c2./e c2
  c4/e e2:m/g f4 c4./e(b8:dim/d) c4 g2/b(c4) b2:dim/d c4/e g2 c4/e b2:dim/d b4:dim/d c2.(c2)
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
    \partial 4
    g4
    g2 e'4 c4.(b8) g4 g2(g4) b2 c4 e2 c4 b2 b4 g2.(g2)
  }
  c4 c2 e4 e4.(c8) c4 b2.(b2) g4 c2 b4 d2 b4 c2.g2
  c4 e2 c4 c4.(b8) g4 g2(g4) b2 c4 e2 c4 b2 b4 g2.(g2)
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    c4
    c2 g'4 e4.(d8) c4 b2(c4) d2 e4 g2 e4 d2 d4 c2.(c2)
  }
  e4 e2 g4 g4.(f8) e4 d2.(d2) c4 e2 d4 g2 d4 e2. c2\breathe
  e4 g2 f4 e4.(d8) c4 b2(c4) d2 e4 g2 e4 d2 d4 c2.(c2)
  \bar "|."
}

scoreDTenor = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e4
    e2 c'4  g4.(g8) e4 d2(e4) g2 g4 c2 g4 g2 g4 e2.(e2)
  }
  g4 g2 c4 c4.(a8) g4 g2.(g2) e4 g2 g4 b2 g4 g2. e2
  g4 c2 a4 g4.(g8) e4 d2(e4) g2 g4 c2 g4 g2 g4 e2.(e2)
}

scoreDBass = \relative c, {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    c4 c2 c4 c4.(g8) c4 g2(c4) g2 c4 c2 c4 g2 g4 c2.(c2)
  }
  c4 c2 c4 c4.(f8) c4 g2.(g2) c4 c2 g4 c2 g4 c2. c2\breathe
  c4 c2 f4 c4.(g8) c4 g2(c4) g2 c4 c2 c4 g2 g4 c2.(c2)
}

scoreDVerseA = \lyricmode {
  % Lyrics follow here.
  Dar -- auf so sprech' ich A -- men
  Und zweif -- le nicht dar -- an,
}

scoreDVerseB = \lyricmode {
  % Lyrics follow here.
  Gott wird es all's zu -- sam -- men
  in Gna -- den seh -- en an,
}

scoreDVerseC = \lyricmode {
  % Lyrics follow here.
  und streck' nun aus mein' Hand,
  greif' an das Werk mit Freu -- den,
  da -- zu mich Gott be -- schei -- den
  in mein'm Be -- ruf und Stand.
}

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    \partial 4
    c4 c2 c4 c4.(g8) c4 g2(c4) g2 c4 c2 c4 g2 g4 c2.(c2)
  }
  c4 c2 c4 c4.(f8) c4 g2.(g2) c4 c2 g4 g2 g4 c2. c2
  c4 c2 f4 c4.(g8) c4 g2(c4) g2 c4 c2 c4 g2 g4 c2.(c2)
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