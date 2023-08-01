\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Wachet auf, ruft uns die Stimme"
  subsubtitle = "Evangelisches Gesangbuch Nr. 147"
  instrument = "Orgel"
  composer = "M: Philipp Nicolai, 1599"
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: Philipp Nicolai, 1599"
  meter = ""
  piece = ""
  opus = "EG 147"
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

global = {
  \key c \major
  \time 4/1
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  c,2 e g2. g4 g g a(g a2) g r4
  g c g c e d e d2 g, r4
  g c g a e f d c2 r2
  c e g2. g4 g g a(g a2) g r4
  g c g c e d e d2 g, r4
  g c g a e f d c2 r4
  g' g2. f4 e d c2 r4 g' g2. f4 e d c2\breathe
  d4 e f2 e\breathe
  g a4 b c2 c4 e d2 c\breathe
  g c4 g a e f d c1
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  e,2 g c2. c4 c c c(c c2) c r4
  c e c e g g g g2 c, r4
  c e c c g a g e2 r2
  e g c2. c4 c c c( c c2) c r4
  c e c e g g g g2 c, r4
  c e c c g a g e2 r4
  c' c2. a4 g g e2 r4
  c' c2. a4 g g e2
  g4 g a2 g
  c c4 d e2 e4 g g2 e
  c e4 c c g a g e1
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  g,2c e2. e4 e e f(e f2) e r4
  e g e g c b c b2 e, r4
  e4 g e f c c b g2 r2
  g c e2. e4 e e f(e f2) e r4
  e g e g c b c b2 e, r4
  e g e f c c b g2 r4
  e' e2. c4 c b g2 r4
  e' e2. c4 c b g2
  b4 c c2 c
  e f4 f g2 g4 c b2 g
  e g4 e f c c b g1
}

scoreABass = \relative c {
  \global
  % Music follows here.
  c,2 c c2. c4 c c f(c f2) c r4
  c c c c c g' c, g'2 c, r4
  c c c f c f g c,2 r2
  c c c2. c4 c c f(c f2) c r4
  c c c c c g' c, g'2 c, r4
  c c c f c f g c,2 r4
  c c2. f4 c g' c,2 r4
  c c2. f4 c g' c,2
  g'4 c, f2 c
  c f4 d c2 c4 c g'2 c,
  c c4 c f c f g c,1
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Wa -- chet auf«, ruft uns die Stim -- me der Wäch -- ter sehr hoch auf der Zin -- ne, »wach auf, du Stadt Je -- ru -- sa -- lem! Mit -- ter -- nacht heißt die -- se Stun -- de«; sie ru -- fen uns mit hel -- lem Mun -- de: »Wo seid ihr klu -- gen Jung -- frau -- en? Wohl -- auf, der Bräut' -- gam kommt, steht auf, die Lam -- pen nehmt! Hal -- le -- lu -- ja! Macht euch be -- reit zu der Hoch -- zeit, ihr müs -- set ihm ent -- ge -- gen -- gehn!«
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c2 c c2. c4 c c f(c f2) c s4
  c c c c c g c g2 c s4
  c c c f c f g c2 s2
  c c c2. c4 c c f(c f2) c s4
  c c c c c g c g2 c s4
  c c c f c f g c2 s4
  c c2. f4 c g c2 s4
  c c2. f4 c g c2
  g4 c f2 c
  c f4 b:dim/d c2 c4 c g2 c
  c c4 c f c f g c1
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
  e,2 g c2. c4 c c c(c c2) c r4
  c e c e g g g g2 c, r4
  c e c c g a g e2 r2
  e g c2. c4 c c c( c c2) c r4
  c e c e g g g g2 c, r4
  c e c c g a g e2 r4
  c' c2. a4 g g e2 r4
  c' c2. a4 g g e2
  g4 g a2 g
  c c4 d e2 e4 g g2 e
  c e4 c c g a g e1
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  g2c e2. e4 e e f(e f2) e r4
  e g e g c b c b2 e, r4
  e4 g e f c c b g2 r2
  g c e2. e4 e e f(e f2) e r4
  e g e g c b c b2 e, r4
  e g e f c c b g2 r4
  e' e2. c4 c b g2 r4
  e' e2. c4 c b g2
  b4 c c2 c
  e f4 f g2 g4 c b2 g
  e g4 e f c c b g1
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  c,2 e g2. g4 g g a(g a2) g r4
  g c g c e d e d2 g, r4
  g c g a e f d c2 r2
  c e g2. g4 g g a(g a2) g r4
  g c g c e d e d2 g, r4
  g c g a e f d c2 r4
  g' g2. f4 e d c2 r4 g' g2. f4 e d c2\breathe
  d4 e f2 e\breathe
  g a4 b c2 c4 e d2 c\breathe
  g c4 g a e f d c1
  \bar "|."
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  c,2 c c2. c4 c c f(c f2) c r4
  c c c c c g' c, g'2 c, r4
  c c c f c f g c,2 r2
  c c c2. c4 c c f(c f2) c r4
  c c c c c g' c, g'2 c, r4
  c c c f c f g c,2 r4
  c c2. f4 c g' c,2 r4
  c c2. f4 c g' c,2
  g'4 c, f2 c
  c f4 d c2 c4 c g'2 c,
  c c4 c f c f g c,1
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  Zi -- on hört die Wäch -- ter sin -- gen, das Herz tut ihr vor Freu -- de sprin -- gen, sie wa -- chet und steht ei -- lend auf. Ihr Freund kommt vom Him -- mel präch -- tig, von Gna -- den stark, von Wahr -- heit mäch -- tig, ihr Licht wird hell, ihr Stern geht auf. Nun komm, du wer -- te Kron, Herr Je -- su, Got -- tes Sohn! Ho -- si -- a -- n -- na! Wir fol -- gen all zum Freu -- den -- saal und hal -- ten mit das Abend -- mahl.
}

scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c2 c c2. c4 c c f(c f2) c s4
  c c c c c g c g2 c s4
  c c c f c f g c2 s2
  c c c2. c4 c c f(c f2) c s4
  c c c c c g c g2 c s4
  c c c f c f g c2 s4
  c c2. f4 c g c2 s4
  c c2. f4 c g c2
  g4 c f2 c
  c f4 b:dim/d c2 c4 c g2 c
  c c4 c f c f g c1
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
  e2 c g'2. g4 g g f(g f2) g r4
  g g g g c, d e d2 d r4
  d4 e d f g f d e2 r2
  e c d2. d4 d d f(g f2) g r4
  g e g e c d c d2 d r4
  e e e f c c b g2 r4
  e' e2. c4 c b g2 r4
  e' e2. c4 c b g2
  b4 c c2 c
  e f4 f g2 g4 c b2 g
  e g4 e f c c b g1
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  g'2 g b2. b4 b b c(b c2) b r4
  b c b c g f g f2 g r4
  g g g c c a f g2 r2
  g g g2. g4 g g c(b c2) b r4
  b g b g g f g f2 g r4
  g g c c g a g e2 r4
  c' c2. a4 g g e2 r4
  c' c2. a4 g g e2
  g4 g a2 g
  c c4 d e2 e4 g g2 e
  c e4 c c g a g e1
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  c2 c d2. d4 d d f(d f2) d r4
  c e d e c b c a2 b r4
  b c b f' c c b c2 r2
  c c b2. b4 b b f'(d f2) d r4
  d c d c c b c a2 b r4
  b c b f c f g c,2 r4
  c c2. f4 c g' c,2 r4
  c c2. f4 c g' c,2
  g'4 c, f2 c
  c f4 d c2 c4 c g'2 c,
  c c4 c f c f g c,1
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  c,2 e g2. g4 g g a(g a2) g r4
  g c g c e d e d2 g, r4
  g c g a e f d c2 r2
  c e g2. g4 g g a(g a2) g r4
  g c g c e d e d2 g, r4
  g c g a e f d c2 r4
  g' g2. f4 e d c2 r4 g' g2. f4 e d c2\breathe
  d4 e f2 e\breathe
  g a4 b c2 c4 e d2 c\breathe
  g c4 g a e f d c1
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  Glo -- ria sei dir ge -- sun -- gen mit Men -- schen– und mit En -- gel -- zun -- gen, mit Ha -- r -- fen und mit Zim -- beln schön. Von zwölf Per -- len sind die To -- re an dei -- ner Stadt; wir stehn im Cho -- re der En -- gel hoch um dei -- nen Thron. Kein Aug hat je ge -- spürt, kein Ohr hat mehr ge -- hört sol -- che Freu -- de. Des jauch -- zen wir und sin -- gen dir das Hal -- le -- lu -- ja für und für.
}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c2 c/e g2. g4 g g f/a(g f2/a) g s4
  g c g c c/e b:dim/d c/e d2:m g s4
  g c g f/a c/e f b:dim/d c2 s2
  c c/e g2. g4 g g f/a(g f2/a) g s4
  g c g c c/e b:dim/d c/e d2:m g s4
  g c g f/a c/e f b:dim/d c2 s4
  g g2. f4 c/e b:dim/d c2 s4
  g g2. f4 c/e b:dim/d c2
  b4:dim/d c/e f2 c/e
  g f4/a b:dim/d c2 c4 c/e b2:dim/d c
  g c4 g f/a c/e f b:dim/d c1
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
  g2c e2. e4 e e f(e f2) e r4
  e g e g c b c b2 e, r4
  e4 g e f c c b g2 r2
  g c e2. e4 e e f(e f2) e r4
  e g e g c b c b2 e, r4
  e g e f c c b g2 r4
  e' e2. c4 c b g2 r4
  e' e2. c4 c b g2
  b4 c c2 c
  e f4 f g2 g4 c b2 g
  e g4 e f c c b g1
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  c2 e g2. g4 g g a(g a2) g r4
  g c g c e d e d2 g, r4
  g c g a e f d c2 r2
  c e g2. g4 g g a(g a2) g r4
  g c g c e d e d2 g, r4
  g c g a e f d c2 r4
  g' g2. f4 e d c2 r4 g' g2. f4 e d c2\breathe
  d4 e f2 e\breathe
  g a4 b c2 c4 e d2 c\breathe
  g c4 g a e f d c1
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  e,2 g c2. c4 c c c(c c2) c r4
  c e c e g g g g2 c, r4
  c e c c g a g e2 r2
  e g c2. c4 c c c( c c2) c r4
  c e c e g g g g2 c, r4
  c e c c g a g e2 r4
  c' c2. a4 g g e2 r4
  c' c2. a4 g g e2
  g4 g a2 g
  c c4 d e2 e4 g g2 e
  c e4 c c g a g e1
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  c,2 c c2. c4 c c f(c f2) c r4
  c c c c c g' c, g'2 c, r4
  c c c f c f g c,2 r2
  c c c2. c4 c c f(c f2) c r4
  c c c c c g' c, g'2 c, r4
  c c c f c f g c,2 r4
  c c2. f4 c g' c,2 r4
  c c2. f4 c g' c,2
  g'4 c, f2 c
  c f4 d c2 c4 c g'2 c,
  c c4 c f c f g c,1
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c2 c c2. c4 c c f(c f2) c s4
  c c c c c g c g2 c s4
  c c c f c f g c2 s2
  c c c2. c4 c c f(c f2) c s4
  c c c c c g c g2 c s4
  c c c f c f g c2 s4
  c c2. f4 c g c2 s4
  c c2. f4 c g c2
  g4 c f2 c
  c f4 b:dim/d c2 c4 c g2 c
  c c4 c f c f g c1
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