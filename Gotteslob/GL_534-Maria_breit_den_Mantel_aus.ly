\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Maria, breit den Mantel aus"
  subsubtitle = "Gotteslob Nr. 534"
  instrument = "Orgel"
  composer = "M: nach Innsbruck 1640"
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: nach Innsbruck 1640"
  meter = ""
  piece = ""
  opus = "GL 534 / EG "
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

global = {
  \key g \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  \partial 4
  g
  g4. g8 e fs g4 a8 b a4 g g a b g e fs8 g a4 g\breathe
  g a b a b c b a b c a b g fs8 g a4 g\breathe
  g a b a b c2 b4 g a c b8 a g4 a2 g4
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  \partial 4
  b4
  b4. b8 g a b4 d8 d d4 b b d d b g a8 b d4 b b
  d d d d e d d d e d d b a8 b d4 b
  b d d d d e2 d4 b d e d8 d b4 d2 b4
}

scoreATenor = \relative c {
  \global
  % Music follows here.
  \partial 4
  d
  d4. d8 c d d4 fs8 g fs4 d d fs g d c d8 d fs4 d
  d fs g fs g g g fs g g fs g d d8 d fs4 d
  d fs g fs g g2 g4 d fs g g8 fs d4 fs2 d4
}

scoreABass = \relative c {
  \global
  % Music follows here.
  \partial 4
  g4
  g4. g8 c, d g4 d8 g d4 g g d g g c, d8 g d4 g\breathe
  g d g d g c, g' d g c, d g g d8 g d4 g\breathe
  g d g d g c,2 g'4 g d c g'8 d g4 d2 g4
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Ma -- ri -- a, breit _ den Man -- _ tel aus,
  mach Schirm und Schild für uns _ dar -- aus;
  lass uns dar -- un -- ter si -- cher stehn,
  bis al -- le Stürm vo -- rü -- _ ber -- gehn.
  Pa -- tro -- nin vol -- ler Gü -- te,
  Uns al -- le -- zeit _ be -- hü -- te.
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \partial 4
  g
  g4. g8 c d g4 d8 g d4 g g d g g c d8 g d4 g
  g d g d g c g d g c d g g d8 g d4 g
  g d g d g c2 g4 g d c g8 d g4 d2 g4
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
  \partial 4
  b4
  b4. b8 g a b4 d8 d d4 b b d d b g a8 b d4 b\breathe
  b d d d d e d d d e d d b a8 b d4 b\breathe
  b d d d d e2 d4 b d e d8 d b4 d2 b4
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  \partial 4
  d
  d4. d8 c d d4 fs8 g fs4 d d fs g d c d8 d fs4 d
  d fs g fs g g g fs g g fs g d d8 d fs4 d
  d fs g fs g g2 g4 d fs g g8 fs d4 fs2 d4
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  \partial 4
  g
  g4. g8 e fs g4 a8 b a4 g g a b g e fs8 g a4 g\breathe
  g a b a b c b a b c a b g fs8 g a4 g\breathe
  g a b a b c2 b4 g a c b8 a g4 a2 g4
  \bar "|."
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  \partial 4
  g4
  g4. g8 c, d g4 d8 g d4 g g d g g c, d8 g d4 g\breathe
  g d g d g c, g' d g c, d g g d8 g d4 g\breathe
  g d g d g c,2 g'4 g d c g'8 d g4 d2 g4
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  Dein Man -- tel ist _ sehr weit _ und breit,
  er deckt die gan -- ze Chris -- _ ten -- heit,
  er deckt die wei -- te, wei -- te Welt,
  ist al -- ler Zu -- flucht und _ Ge -- zelt.
  Pa -- tro -- nin vol -- ler Gü -- te,
  Uns al -- le -- zeit _ be -- hü -- te.
}

scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \partial 4
  g
  g4. g8 c d g4 d8 g d4 g g d g g c d8 g d4 g
  g d g d g c g d g c d g g d8 g d4 g
  g d g d g c2 g4 g d c g8 d g4 d2 g4
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
  \partial 4
  b4
  b4. b8 c d b4 a8 g a4 b b a g b c d8 b a4 b b
  a g a g g g a g g a g b d8 b a4 b
  b a g a g g2 g4 b a c g8 a b4 a2 b4
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  \partial 4
  d
  d4. d8 g a d,4 c8 d c4 d d c d d g a8 d, c4 d
  d c d c d c d c d c c d d a'8 d, c4 d
  d c d c d c2 d4 d c e d8 c d4 c2 d4
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  \partial 4
  g4
  g4. g8 c d g,4 fs8 g fs4 g g fs g g c d8 g, fs4 g\breathe
  g fs g fs g e g fs g e fs g g d'8 g, fs4 g\breathe
  g fs g fs g e2 g4 g fs g g8 fs g4 fs2 g4
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  \partial 4
  g
  g4. g8 e fs g4 a8 b a4 g g a b g e fs8 g a4 g\breathe
  g a b a b c b a b c a b g fs8 g a4 g\breathe
  g a b a b c2 b4 g a c b8 a g4 a2 g4
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  Ma -- ri -- a, hilf _ der Chris -- _ ten -- heit,
  dein Hilf er -- zeig uns al -- _ le -- zeit;
  komm uns zu Hilf in al -- lem Streit,
  ver -- jag die Feind all _ von uns weit.
  Pa -- tro -- nin vol -- ler Gü -- te,
  uns al -- le -- zeit _ be -- hü -- te.
}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \partial 4
  g
  g4. g8 c/e d/fs g4 fs8:dim/a g/b fs4:dim/a g g fs:dim/a g/b g c/e d8/fs g fs4:dim/a g
  g fs:dim/a g/b fs:dim/a g/b c g/b fs:dim/a g/b c fs:dim/a g/b g d8/fs g fs4:dim/a g
  g fs:dim/a g/b fs:dim/a g/b c2 g4/b g fs:dim/a c g8/b fs:dim/a g4 fs2:dim/a g4
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

scoreDSoprano = \relative c' {
  \global
  % Music follows here.
  \partial 4
  d
  d4. d8 c d d4 fs8 g fs4 d d fs g d c d8 d fs4 d
  d fs g fs g g g fs g g fs g d d8 d fs4 d
  d fs g fs g g2 g4 d fs g g8 fs d4 fs2 d4
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  \partial 4
  g
  g4. g8 e fs g4 a8 b a4 g g a b g e fs8 g a4 g\breathe
  g a b a b c b a b c a b g fs8 g a4 g\breathe
  g a b a b c2 b4 g a c b8 a g4 a2 g4
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  \partial 4
  b4
  b4. b8 g a b4 d8 d d4 b b d d b g a8 b d4 b b
  d d d d e d d d e d d b a8 b d4 b
  b d d d d e2 d4 b d e d8 d b4 d2 b4
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  \partial 4
  g4
  g4. g8 c, d g4 d8 g d4 g g d g g c, d8 g d4 g\breathe
  g d g d g c, g' d g c, d g g d8 g d4 g\breathe
  g d g d g c,2 g'4 g d c g'8 d g4 d2 g4
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  O Mut -- ter der _ Barm -- her -- _ zig -- keit,
  Den Man -- tel über uns aus -- _ breit;
  Uns all dar -- un -- ter wohl be -- wahr
  Zu je -- der Zeit in al -- ler _ Ge -- fahr.
  Pa -- tro -- nin vol -- ler Gü -- te,
  uns al -- le -- zeit _ be -- hü -- te.
}

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \partial 4
  g
  g4. g8 c d g4 d8 g d4 g g d g g c d8 g d4 g
  g d g d g c g d g c d g g d8 g d4 g
  g d g d g c2 g4 g d c g8 d g4 d2 g4
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