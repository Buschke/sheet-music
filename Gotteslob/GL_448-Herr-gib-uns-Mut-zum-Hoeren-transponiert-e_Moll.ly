\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = ""
  title = "Herr, gib uns Mut zum Hören"
  subsubtitle = "Gotteslob Nr. 448"
  instrument = "Orgel"
  composer = \markup {"M: " \with-url #"https://de.wikipedia.org/wiki/Kurt_Rommel" "Kurt Rommel, 1963"}
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = \markup {\with-url #"" "T: " \with-url #"https://de.wikipedia.org/wiki/Kurt_Rommel" "Kurt Rommel, 1963"}
  meter = \markup {\with-url #"https://de.wikipedia.org/wiki/Herr,_gib_uns_Mut_zum_H%C3%B6ren" "Wikipedia-Link"}
  piece = ""
  opus = "GL 448 / EG 667 ö"
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

global = {
  \key e \minor
  \time 2/2
  \tempo "Andante" 4=50
}

scoreACFA = \relative c' {
  % Music follows here.
  \partial 4
  e4
  g g fs d e2 e4\breathe
}

scoreARestA = \relative c'' {
  \partial 4
  r4
  r1 r2.
}

scoreACFB = \relative c' {
  % Music follows here.
  e4 g g a a b2.\breathe
}

scoreARestB = \relative c' {
  r4 r1 r2.
}

scoreACFC = \relative c'' {
  % Music follows here.
  b4 d2 b a2.\breathe
}

scoreARestC = \relative c'' {
  r4 r1 r2.
}

scoreACFD = \relative c'' {
  % Music follows here.
  b4 g fs e d e2.
}

scoreARestD = \relative c'' {
  r4 r1 r2.
}

scoreAAltoA = \relative c' {
  % Music follows here.
  \partial 4
  g4
  b b b fs g2 g4
}

scoreAAltoB = \relative c' {
  % Music follows here.
  g4 b b c c e2.\breathe
}

scoreAAltoC = \relative c' {
  % Music follows here.
  e4 fs2 e c2.\breathe
}

scoreAAltoD = \relative c' {
  % Music follows here.
  e4 b b g fs g2.
}

scoreATenorA = \relative c {
  % Music follows here.
  \partial 4
  b4
  e e d b b2 b4
}

scoreATenorB = \relative c {
  % Music follows here.
  b4 e e e e g2.\breathe
}

scoreATenorC = \relative c' {
  % Music follows here.
  g4 b2 g e2.\breathe
}

scoreATenorD = \relative c' {
  % Music follows here.
  g4 e d b b b2.
}

scoreABassA = \relative c, {
  % Music follows here.
  \partial 4
  e4
  e e b' b e,2 e4
}

scoreABassB = \relative c, {
  % Music follows here.
  e4 e e a a e2.\breathe
}

scoreABassC = \relative c, {
  % Music follows here.
  e4 b'2 e, a2.\breathe
}

scoreABassD = \relative c, {
  % Music follows here.
  e4 e b' e, b' e,2.
}

scoreCSopranoA = \relative c'' {
  % Music follows here.
  \partial 4
  e4
  e e d d b2 b4\breathe
}

scoreCSopranoB = \relative c'' {
  % Music follows here.
  b4 e e e e g2.\breathe
}

scoreCSopranoC = \relative c'' {
  % Music follows here.
  b4 b2 b c2.
}

scoreCSopranoD = \relative c'' {
  % Music follows here.
  g4 d' ds e b b2.
}

scoreCAltoA = \relative c'' {
  % Music follows here.
  \partial 4
  g4
  b b a fs e2 e4
}

scoreCAltoB = \relative c' {
  % Music follows here.
  e4 b' b a a d2.\breathe
}

scoreCAltoC = \relative c {
  % Music follows here.
  d4 fs2 d e2.
}

scoreCAltoD = \relative c' {
  % Music follows here.
  \partial 4
  d4 g fs g fs e2.
}

scoreCTenorA = \relative c' {
  % Music follows here.
  \partial 4
  b4
  e g d a g2 g4
}

scoreCTenorB = \relative c'' {
  % Music follows here.
  g4 e' e c c g2.\breathe
}

scoreCTenorC = \relative c' {
  % Music follows here.
  fs4 b2 fs a2.
}

scoreCTenorD = \relative c'' {
  % Music follows here.
  g4 b a b b g2.
}

scoreABiciniumA = \relative c' {
  d4^"Bicinium a" fs fs e c d2 d4\breathe
}

scoreABiciniumB = \relative c'' {
  d4^"Bicinium b" fs fs e c d2.\breathe
}

scoreABiciniumC = \relative c'' {
  d4^"Bicinium c" c2 d g2.\breathe
}

scoreABiciniumD = \relative c'' {
  d4^"Bicinium d" fs e d c d2.\breathe
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  \scoreACFA
  \scoreACFB
  \scoreACFC
  \scoreACFD
  \bar "||"^"Dux 1a"
  \scoreACFA
  \scoreABiciniumA
  \scoreCSopranoA
  \transpose d d' \scoreAAltoA^"Dux 1b"
  \scoreACFB
  \scoreABiciniumB
  \scoreCSopranoB
  \transpose d d' \scoreAAltoB^"Dux 1c"
  \scoreACFC
  \scoreABiciniumC
  \scoreCSopranoC
  \transpose d d' \scoreAAltoC^"Dux 1d"
  \scoreACFD
  \scoreABiciniumD
  \scoreCSopranoD
  \transpose d d' \scoreAAltoD
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  \scoreAAltoA
  \scoreAAltoB
  \scoreAAltoC
  \scoreAAltoD
  \bar "||"
  \scoreARestA
  \scoreARestA
  \scoreARestA^"Dux 3a Pachelbel"
  \scoreACFA
  \scoreARestB
  \scoreARestB
  \scoreARestB^"Dux 3b Pachelbel"
  \scoreACFB
  \scoreARestC
  \scoreARestC
  \scoreARestC^"Dux 3c Pachelbel"
  \scoreACFC
  \scoreARestD
  \scoreARestD
  \scoreARestD^"Dux 3d Pachelbel"
  \scoreACFD
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  \scoreATenorA
  \scoreATenorB
  \scoreATenorC
  \scoreATenorD
  \bar "||"
  \scoreARestA^"Comes a"
  \transpose e b,, \scoreACFA
  \transpose d d, \scoreCTenorA
  \transpose d d' \scoreATenorA
  \scoreARestB^"Comes b"
  \transpose e b,, \scoreACFB
  \transpose d d, \scoreCTenorB
  \transpose d d' \scoreATenorB
  \scoreARestC^"Comes c"
  \transpose e b,, \scoreACFC
  \transpose d d, \scoreCTenorC
  \transpose d d' \scoreATenorC
  \scoreARestD^"Comes d"
  \transpose e b,, \scoreACFD
  \transpose d d, \scoreCTenorD
  \transpose d d' \scoreATenorD
}

scoreABass = \relative c {
  \global
  % Music follows here.
  \scoreABassA
  \scoreABassB
  \scoreABassC
  \scoreABassD
  \bar "||"
  \scoreARestA
  \scoreARestA^"Dux 2a"
  \transpose d d,, \scoreACFA
  \scoreABassA
  \scoreARestB
  \scoreARestB^"Dux 2b"
  \transpose d d,, \scoreACFB
  \scoreABassB
  \scoreARestC
  \scoreARestC^"Dux 2c"
  \transpose d d,, \scoreACFC
  \scoreABassC
  \scoreARestD
  \scoreARestD^"Dux 2d"
  \transpose d d,, \scoreACFD
  \scoreABassD
}

scoreAVerseA = \lyricmode {
  % Lyrics follow here.
  Herr, gib uns Mut zum Hö -- ren
}

scoreAVerseB = \lyricmode {
  % Lyrics follow here.
  auf das, was du uns sagst.
}

scoreAVerseC = \lyricmode {
  % Lyrics follow here.
  Wir dan -- ken dir,
}

scoreAVerseD = \lyricmode {
  % Lyrics follow here.
  dass du es mit uns wagst.
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseA \scoreAVerseB \scoreAVerseC \scoreAVerseD \scoreAVerseA \scoreAVerseA \scoreAVerseA \scoreAVerseA \scoreAVerseB \scoreAVerseB \scoreAVerseB \scoreAVerseB \scoreAVerseC \scoreAVerseC \scoreAVerseC \scoreAVerseC \scoreAVerseD \scoreAVerseD \scoreAVerseD \scoreAVerseD
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \partial 4
  e4:min
  e:min e:min b:min b:min e2:min e4:min e4:min e4:min e:min a:min a:min e2.:min\breathe
  e4:min b2:min e:min a2.:min e4:min e:min b:min e:min b:min e2.:min
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
  \transpose d d' \scoreAAlto
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  \transpose d d' \scoreATenor
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  \transpose d d, \scoreASoprano
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
  \scoreAChordNames
}

scoreBFigBass = \figuremode {
  \global
  % Figures follow here.
  \scoreAFigBass
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
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "tenor" \scoreBVerse
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

scoreCSopranoA = \relative c'' {
  % Music follows here.
  \partial 4
  e4
  e e d d b2 b4\breathe
}

scoreCSopranoB = \relative c'' {
  % Music follows here.
  b4 e e e e g2.\breathe
}

scoreCSopranoC = \relative c'' {
  % Music follows here.
  b4 b2 b c2.\breathe
}

scoreCSopranoD = \relative c'' {
  % Music follows here.
  g4 d' ds e b b2.\breathe
}

scoreCSoprano = \relative c'' {
  \global
  % Music follows here.
  \scoreCSopranoA
  \scoreCSopranoB
  \scoreCSopranoC
  \scoreCSopranoD
  \scoreARestA
  \scoreACFA
  \scoreCSopranoA
  \scoreCSopranoA
  \scoreARestB
  \scoreACFB
  \scoreCSopranoB
  \scoreCSopranoB
  \scoreARestC
  \scoreACFC
  \scoreCSopranoC
  \scoreCSopranoC
  \scoreARestD
  \scoreACFD
  \scoreCSopranoD
  \scoreCSopranoD
}

scoreCAltoA = \relative c'' {
  % Music follows here.
  \partial 4
  g4
  b b a fs e2 e4\breathe
}

scoreCAltoB = \relative c' {
  % Music follows here.
  e4 b' b a a d2.\breathe
}

scoreCAltoC = \relative c' {
  % Music follows here.
  d4 fs2 d e2.\breathe
}

scoreCAltoD = \relative c' {
  % Music follows here.
  d4 g fs g fs e2.\breathe
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  \scoreCAltoA
  \scoreCAltoB
  \scoreCAltoC
  \scoreCAltoD
  \scoreARestA
  \scoreARestA
  \scoreARestA
  \scoreCAltoA
  \scoreARestB
  \scoreARestB
  \scoreARestB
  \scoreCAltoB
  \scoreARestC
  \scoreARestC
  \scoreARestC
  \scoreCAltoC
  \scoreARestD
  \scoreARestD
  \scoreARestD
  \scoreCAltoD
}

scoreCTenorA = \relative c' {
  % Music follows here.
  \partial 4
  b4
  e g d a g2 g4\breathe
}

scoreCTenorB = \relative c' {
  % Music follows here.
  g4 e' e c c g2.\breathe
}

scoreCTenorC = \relative c' {
  % Music follows here.
  fs4 b2 fs a2.\breathe
}

scoreCTenorD = \relative c' {
  % Music follows here.
  g4 b a b b g2.\breathe
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  \scoreCTenorA
  \scoreCTenorB
  \scoreCTenorC
  \scoreCTenorD
  \scoreARestA
  \scoreARestA^"Dux 2a"
  \scoreACFA
  \scoreCTenorA
  \scoreARestB
  \scoreARestB^"Dux 2b"
  \transpose d d, \scoreACFB
  \transpose d d, \scoreCTenorB
  \scoreARestC
  \scoreARestC^"Dux 2c"
  \transpose d d, \scoreACFC
  \transpose d d, \scoreCTenorC
  \scoreARestD
  \scoreARestD^"Dux 2d"
  \transpose d d, \scoreACFD
  \transpose d d \scoreCTenorD
}

scoreCBass = \relative c, {
  \global
  % Music follows here.
  \transpose d d,, \scoreACFA
  \transpose d d,, \scoreACFB
  \transpose d d,, \scoreACFC
  \transpose d d,, \scoreACFD
  \bar "||"^"Dux 1a"
  \transpose d d,, \scoreACFA
  d4^"Bicinium" fs fs e c d2 d4\breathe
  \transpose d d,, \scoreCSopranoA
  \transpose d d, \scoreAAltoA^"Dux 1b"
  \transpose d d,, \scoreACFB
  d'4^"Bicinium" fs fs e c d2.
  \transpose d d,, \scoreCSopranoB
  \transpose d d, \scoreAAltoB^"Dux 1c"
  \transpose d d,, \scoreACFC
  d,4^"Bicinium" c2 d g2.
  \transpose d d,, \scoreCSopranoC
  \transpose d d, \scoreAAltoC^"Dux 1d"
  \transpose d d,, \scoreACFD
  d'4^"Bicinium" fs e d c d2 d4
  \transpose d d,, \scoreCSopranoD
  \transpose d d, \scoreAAltoD
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \partial 4
  e4:m
  e:m/g e:m/g d:/fs d e2:m e4:m e:m e:m/g e:m/g a:m a:m g2./b
  b4:m b2:m/d b:m a2.:m g4/b g ds:m/fs e:m b:min/d e2.:m
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
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "bass" \scoreCVerse
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
  \transpose d d' \scoreAAltoA
  \transpose d d' \scoreAAltoB
  \transpose d d' \scoreAAltoC
  \transpose d d' \scoreAAltoD
  \bar "||"
  \scoreARestA
  \scoreARestA
  \scoreARestA^"Dux 3a Pachelbel"
  \scoreACFA
  \scoreARestB
  \scoreARestB
  \scoreARestB^"Dux 3b Pachelbel"
  \scoreACFB
  \scoreARestC
  \scoreARestC
  \scoreARestC^"Dux 3c Pachelbel"
  \scoreACFC
  \scoreARestD
  \scoreARestD
  \scoreARestD^"Dux 3d Pachelbel"
  \scoreACFD
  \bar "|."
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  \scoreACFA
  \scoreACFB
  \scoreACFC
  \scoreACFD
  \bar "||"^"Dux 1a"
  \scoreACFA
  \scoreABiciniumA
  \scoreCAltoA
  \scoreAAltoA^"Dux 1b"
  \scoreACFB
  \transpose d d, \scoreABiciniumB
  \scoreCAltoB
  \scoreAAltoB^"Dux 1c"
  \scoreACFC
  \transpose d d, \scoreABiciniumC
  \scoreCAltoC
  \scoreAAltoC^"Dux 1d"
  \scoreACFD
  \transpose d d, \scoreABiciniumD
  \scoreCAltoD
  \scoreAAltoD
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  \scoreATenorA
  \scoreATenorB
  \scoreATenorC
  \scoreATenorD
  \bar "||"
  \scoreARestA^"Comes a"
  \transpose e b, \scoreACFA
  \scoreCTenorA
  \scoreATenorA
  \scoreARestB^"Comes b"
  \transpose e b, \scoreACFB
  \scoreCTenorB
  \scoreATenorB
  \scoreARestC^"Comes c"
  \transpose e b,, \scoreACFC
  \transpose d d, \scoreCTenorC
  \scoreATenorC
  \scoreARestD^"Comes d"
  \transpose e b,, \scoreACFD
  \scoreCTenorD
  \scoreATenorD
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  \scoreABassA
  \scoreABassB
  \scoreABassC
  \scoreABassD
  \bar "||"
  \scoreARestA
  \scoreARestA^"Dux 2a"
  \transpose d d,, \scoreACFA
  \scoreABassA
  \scoreARestB
  \scoreARestB^"Dux 2b"
  \transpose d d,, \scoreACFB
  \scoreABassB
  \scoreARestC
  \scoreARestC^"Dux 2c"
  \transpose d d,, \scoreACFC
  \scoreABassC
  \scoreARestD
  \scoreARestD^"Dux 2d"
  \transpose d d,, \scoreACFD
  \scoreABassD
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
  \scoreAFigBass
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
  } \lyricsto "alto" \scoreDVerse
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