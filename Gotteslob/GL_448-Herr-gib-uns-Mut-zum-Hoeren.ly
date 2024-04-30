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
  \key d \minor
  \time 2/2
  \tempo "Andante" 4=50
}

scoreACFA = \relative c'' {
  % Music follows here.
  \partial 4
  d,4
  f f e c d2 d4\breathe
}

scoreARestA = \relative c'' {
  \partial 4
  r4
  r1 r2.
}

scoreACFB = \relative c' {
  % Music follows here.
  d4 f f g g a2.\breathe
}

scoreARestB = \relative c' {
  r4 r1 r2.
}

scoreACFC = \relative c'' {
  % Music follows here.
  a4 c2 a g2.\breathe
}

scoreARestC = \relative c'' {
  r4 r1 r2.
}

scoreACFD = \relative c'' {
  % Music follows here.
  a4 f e d c d2.
}

scoreARestD = \relative c'' {
  r4 r1 r2.
}

scoreAAltoA = \relative c' {
  % Music follows here.
  \partial 4
  f,4
  a a a e f2 f4
}

scoreAAltoB = \relative c {
  % Music follows here.
  f4 a a bf bf d2.\breathe
}

scoreAAltoC = \relative c' {
  % Music follows here.
  d4 e2 d bf2.\breathe
}

scoreAAltoD = \relative c' {
  % Music follows here.
  d4 a a f e f2.
}

scoreATenorA = \relative c' {
  % Music follows here.
  \partial 4
  a,4
  d d c a a2 a4
}

scoreATenorB = \relative c {
  % Music follows here.
  a4 d d d d f2.\breathe
}

scoreATenorC = \relative c {
  % Music follows here.
  f4 a2 f d2.\breathe
}

scoreATenorD = \relative c {
  % Music follows here.
  f4 d c a a a2.
}

scoreABassA = \relative c {
  % Music follows here.
  \partial 4
  d,4
  d d a' a d,2 d4
}

scoreABassB = \relative c, {
  % Music follows here.
  d4 d d g g d2.\breathe
}

scoreABassC = \relative c, {
  % Music follows here.
  d4 a'2 d, g2.\breathe
}

scoreABassD = \relative c, {
  % Music follows here.
  d4 d a' d, a' d,2.
}

scoreCSopranoA = \relative c'' {
  % Music follows here.
  \partial 4
  d4
  d d c c a2 a4\breathe
}

scoreCSopranoB = \relative c'' {
  % Music follows here.
  a4 d d d d f2.\breathe
}

scoreCSopranoC = \relative c'' {
  % Music follows here.
  a4 a2 a bf2.
}

scoreCSopranoD = \relative c'' {
  % Music follows here.
  f,4 c' cs d a a2.
}

scoreCAltoA = \relative c' {
  % Music follows here.
  \partial 4
  f4
  a a g e d2 d4
}

scoreCAltoB = \relative c' {
  % Music follows here.
  d4 a' a g g c2.\breathe
}

scoreCAltoC = \relative c' {
  % Music follows here.
  c,4 e2 c d2.
}

scoreCAltoD = \relative c' {
  % Music follows here.
  \partial 4
  c4 f e f e d2.
}

scoreCTenorA = \relative c' {
  % Music follows here.
  \partial 4
  a4
  d f c g f2 f4
}

scoreCTenorB = \relative c' {
  % Music follows here.
  f4 d' d bf bf f2.\breathe
}

scoreCTenorC = \relative c' {
  % Music follows here.
  e4 a2 e g2.
}

scoreCTenorD = \relative c' {
  % Music follows here.
  f4 a g a a f2.
}

scoreABiciniumA = \relative c'' {
  c,4^"Bicinium a" e e d bf c2 c4\breathe
}

scoreABiciniumB = \relative c'' {
  c4^"Bicinium b" e e d bf c2.\breathe
}

scoreABiciniumC = \relative c'' {
  c4^"Bicinium c" bf2 c f2.\breathe
}

scoreABiciniumD = \relative c'' {
  c4^"Bicinium d" e d c bf c2.\breathe
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
  \transpose c c' \scoreAAltoA^"Dux 1b"
  \scoreACFB
  \scoreABiciniumB
  \scoreCSopranoB
  \transpose c c' \scoreAAltoB^"Dux 1c"
  \scoreACFC
  \scoreABiciniumC
  \scoreCSopranoC
  \transpose c c' \scoreAAltoC^"Dux 1d"
  \scoreACFD
  \scoreABiciniumD
  \scoreCSopranoD
  \transpose c c' \scoreAAltoD
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
  \transpose d a,, \scoreACFA
  \transpose c c, \scoreCTenorA
  \transpose c c' \scoreATenorA
  \scoreARestB^"Comes b"
  \transpose d a,, \scoreACFB
  \transpose c c, \scoreCTenorB
  \transpose c c' \scoreATenorB
  \scoreARestC^"Comes c"
  \transpose d a,, \scoreACFC
  \transpose c c, \scoreCTenorC
  \transpose c c' \scoreATenorC
  \scoreARestD^"Comes d"
  \transpose d a,, \scoreACFD
  \transpose c c, \scoreCTenorD
  \transpose c c' \scoreATenorD
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
  \transpose c c,, \scoreACFA
  \scoreABassA
  \scoreARestB
  \scoreARestB^"Dux 2b"
  \transpose c c,, \scoreACFB
  \scoreABassB
  \scoreARestC
  \scoreARestC^"Dux 2c"
  \transpose c c,, \scoreACFC
  \scoreABassC
  \scoreARestD
  \scoreARestD^"Dux 2d"
  \transpose c c,, \scoreACFD
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
  d4:min
  d:min d:min a:min a:min d2:min d4:min d4:min d4:min d:min g:min g:min d2.:min\breathe
  d4:min a2:min d:min g2.:min d4:min d:min a:min d:min a:min d2.:min
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
  \transpose c c' \scoreAAlto
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  \transpose c c' \scoreATenor
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  \transpose c c, \scoreASoprano
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
  d4
  d d c c a2 a4\breathe
}

scoreCSopranoB = \relative c'' {
  % Music follows here.
  a4 d d d d f2.\breathe
}

scoreCSopranoC = \relative c'' {
  % Music follows here.
  a4 a2 a bf2.\breathe
}

scoreCSopranoD = \relative c'' {
  % Music follows here.
  f,4 c' cs d a a2.\breathe
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

scoreCAltoA = \relative c' {
  % Music follows here.
  \partial 4
  f4
  a a g e d2 d4\breathe
}

scoreCAltoB = \relative c' {
  % Music follows here.
  d4 a' a g g c2.\breathe
}

scoreCAltoC = \relative c' {
  % Music follows here.
  c4 e2 c d2.\breathe
}

scoreCAltoD = \relative c' {
  % Music follows here.
  c4 f e f e d2.\breathe
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
  a4
  d f c g f2 f4\breathe
}

scoreCTenorB = \relative c' {
  % Music follows here.
  f,4 d' d bf bf f2.\breathe
}

scoreCTenorC = \relative c' {
  % Music follows here.
  e4 a2 e g2.\breathe
}

scoreCTenorD = \relative c' {
  % Music follows here.
  f,4 a g a a f2.\breathe
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
  \transpose c c, \scoreACFB
  \transpose c c, \scoreCTenorB
  \scoreARestC
  \scoreARestC^"Dux 2c"
  \transpose c c, \scoreACFC
  \transpose c c, \scoreCTenorC
  \scoreARestD
  \scoreARestD^"Dux 2d"
  \transpose c c, \scoreACFD
  \transpose c c \scoreCTenorD
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  \transpose c c,, \scoreACFA
  \transpose c c,, \scoreACFB
  \transpose c c,, \scoreACFC
  \transpose c c,, \scoreACFD
  \bar "||"^"Dux 1a"
  \transpose c c,, \scoreACFA
  c,4^"Bicinium" e e d bf c2 c4\breathe
  \transpose c c,, \scoreCSopranoA
  \transpose c c, \scoreAAltoA^"Dux 1b"
  \transpose c c,, \scoreACFB
  c'4^"Bicinium" e e d bf c2.
  \transpose c c,, \scoreCSopranoB
  \transpose c c, \scoreAAltoB^"Dux 1c"
  \transpose c c,, \scoreACFC
  c,4^"Bicinium" bf2 c f2.
  \transpose c c,, \scoreCSopranoC
  \transpose c c, \scoreAAltoC^"Dux 1d"
  \transpose c c,, \scoreACFD
  c'4^"Bicinium" e d c bf c2 c4
  \transpose c c,, \scoreCSopranoD
  \transpose c c, \scoreAAltoD
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
  d4:m
  d:m/f d:m/f c:/e c d2:m d4:m d:m d:m/f d:m/f g:m g:m f2./a
  a4:m a2:m/c a:m g2.:m f4/a f cs:m/e d:m a:min/c d2.:m
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
  \transpose c c' \scoreAAltoA
  \transpose c c' \scoreAAltoB
  \transpose c c' \scoreAAltoC
  \transpose c c' \scoreAAltoD
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
  \transpose c c, \scoreABiciniumB
  \scoreCAltoB
  \scoreAAltoB^"Dux 1c"
  \scoreACFC
  \transpose c c, \scoreABiciniumC
  \scoreCAltoC
  \scoreAAltoC^"Dux 1d"
  \scoreACFD
  \transpose c c, \scoreABiciniumD
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
  \transpose d a, \scoreACFA
  \scoreCTenorA
  \scoreATenorA
  \scoreARestB^"Comes b"
  \transpose d a, \scoreACFB
  \scoreCTenorB
  \scoreATenorB
  \scoreARestC^"Comes c"
  \transpose d a,, \scoreACFC
  \transpose c c, \scoreCTenorC
  \scoreATenorC
  \scoreARestD^"Comes d"
  \transpose d a,, \scoreACFD
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
  \transpose c c,, \scoreACFA
  \scoreABassA
  \scoreARestB
  \scoreARestB^"Dux 2b"
  \transpose c c,, \scoreACFB
  \scoreABassB
  \scoreARestC
  \scoreARestC^"Dux 2c"
  \transpose c c,, \scoreACFC
  \scoreABassC
  \scoreARestD
  \scoreARestD^"Dux 2d"
  \transpose c c,, \scoreACFD
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