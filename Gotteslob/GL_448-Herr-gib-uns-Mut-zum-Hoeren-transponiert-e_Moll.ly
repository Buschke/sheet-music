\version "2.24.3"
\language "english"

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

\paper {
  #(set-paper-size "a4")
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

scoreAMelody = \relative c'' {
  \global
  % Music follows here.
  \scoreACFA
  \scoreACFB
  \scoreACFC
  \scoreACFD
  \bar "|."  
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
  \scoreAVerseA \scoreAVerseB \scoreAVerseC \scoreAVerseD
}

\bookpart {
  \header {
    subtitle = "Cantus Firmus"
  }
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreAMelody }
    \addlyrics { \scoreAVerse }
    \layout { }
    \midi { }
  }
}

scoreBChordNamesLeadSheet = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \partial 4
  e4:min
  e:min e:min b:min b:min e2:min e4:min e4:min e4:min e:min a:min a:min e2.:min\breathe
  e4:min b2:min e:min a2.:min e4:min e:min b:min e:min b:min e2.:min   
}

scoreBMelody = \relative c'' {
  \global
  % Music follows here.
  \scoreAMelody
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreBFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.
  
}

scoreBChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \partial 4
  e4:m
  e:m/g e:m/g d:/fs d e2:m e4:m e:m e:m/g e:m/g a:m a:m g2./b
  b4:m b2:m/d b:m a2.:m g4/b g ds:m/fs e:m b:min/d e2.:m  
}

scoreBFigBassBassFiguresII = \figuremode {
  \global
  % Figures follow here.
  
}

scoreBLeadSheetPart = <<
  \new ChordNames \scoreBChordNamesLeadSheet
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreBMelody }
  \addlyrics { \scoreBVerse }
>>

scoreBBassFiguresIPart = \new FiguredBass \scoreBFigBassBassFiguresI

scoreBChordsPart = \new ChordNames \scoreBChordNamesChords

scoreBBassFiguresIIPart = \new FiguredBass \scoreBFigBassBassFiguresII

\bookpart {
  \header {
    subtitle = "Cantus Firmus mit Akkorden und Generalbassbezifferung"
  }
  \score {
    <<
      \scoreBLeadSheetPart
      \scoreBBassFiguresIPart
      \scoreBChordsPart
      \scoreBBassFiguresIIPart
    >>
    \layout { }
    \midi { }
  }
}

scoreCAltoA = \relative c' {
  % Music follows here.
  \partial 4
  g4
  b b b fs g2 g4
}

scoreCAltoB = \relative c' {
  % Music follows here.
  g4 b b cs cs e2.\breathe
}

scoreCAltoC = \relative c' {
  % Music follows here.
  e4 fs2 e cs2.\breathe
}

scoreCAltoD = \relative c' {
  % Music follows here.
  e4 b b g fs g2.
}

scoreCTenorA = \relative c {
  % Music follows here.
  \partial 4
  b4
  e e d b b2 b4
}

scoreCTenorB = \relative c {
  % Music follows here.
  b4 e e e e g2.\breathe
}

scoreCTenorC = \relative c' {
  % Music follows here.
  g4 b2 g e2.\breathe
}

scoreCTenorD = \relative c' {
  % Music follows here.
  g4 e d b b b2.
}

scoreCBassA = \relative c, {
  % Music follows here.
  \partial 4
  e4
  e e b' b e,2 e4
}

scoreCBassB = \relative c, {
  % Music follows here.
  e4 e e a a e2.\breathe
}

scoreCBassC = \relative c, {
  % Music follows here.
  e4 b'2 e, a2.\breathe
}

scoreCBassD = \relative c, {
  % Music follows here.
  e4 e b' e, b' e,2.
}

scoreESopranoA = \relative c' {
  % Music follows here.
  \partial 4
  e4
  e e d d b2 b4\breathe
}

scoreESopranoB = \relative c'' {
  % Music follows here.
  b4 e e e e g2.\breathe
}

scoreESopranoC = \relative c'' {
  % Music follows here.
  b4 b2 b c2.
}

scoreESopranoD = \relative c'' {
  % Music follows here.
  g4 d' ds e b b2.
}

scoreEAltoA = \relative c'' {
  % Music follows here.
  \partial 4
  g4
  b b a fs e2 e4
}

scoreEAltoB = \relative c' {
  % Music follows here.
  e4 b' b a a d2.\breathe
}

scoreEAltoC = \relative c {
  % Music follows here.
  d4 fs2 d e2.
}

scoreEAltoD = \relative c' {
  % Music follows here.
  \partial 4
  d4 g fs g fs e2.
}

scoreETenorA = \relative c' {
  % Music follows here.
  \partial 4
  b4
  e g d a g2 g4
}

scoreETenorB = \relative c'' {
  % Music follows here.
  g4 e' e c c g2.\breathe
}

scoreETenorC = \relative c' {
  % Music follows here.
  fs4 b2 fs a2.
}

scoreETenorD = \relative c'' {
  % Music follows here.
  g4 b a b b g2.
}

scoreCBiciniumA = \relative c' {
  d4^"Bicinium 1a" fs fs e cs d2 d4\breathe
}

scoreCBiciniumB = \relative c'' {
  d4^"Bicinium 1b" fs fs e c d2.\breathe
}

scoreCBiciniumC = \relative c'' {
  d4^"Bicinium 1c" c2 d g2.\breathe
}

scoreCBiciniumD = \relative c'' {
  d4^"Bicinium 1d" fs e d c d2.\breathe
}

%%%

scoreCCodettaASopranoA = \relative c' {
  d4^"Codetta 1a" e ds e\breathe
}

scoreCCodettaASopranoB = \relative c'' {
  d4^"Codetta 1b" c b g\breathe
}

scoreCCodettaASopranoC = \relative c''' {
  g4^"Codetta 1c" a fs g\breathe
}

scoreCCodettaASopranoD= \relative c'' {
  d4^"Codetta 1d" d d d\breathe
}

scoreCCodettaBSopranoA = \relative c'' {
  g4^"Codetta 2a" a fs g\breathe
}

scoreCCodettaBSopranoB = \relative c'' {
  e4^"Codetta 2b" e ds e\breathe
}

scoreCCodettaBSopranoC = \relative c'' {
  cs4^"Codetta 2c" c b b\breathe
}

scoreCCodettaBSopranoD= \relative c'' {
  g4^"Codetta 2d" a fs g\breathe
}

%%%%

scoreCCodettaAAltoA = \relative c'' {
  r4 r r r\breathe
}

scoreCCodettaAAltoB = \relative c'' {
  r4 r r r\breathe
}

scoreCCodettaAAltoC = \relative c'' {
  r4 r r r\breathe
}

scoreCCodettaAAltoD= \relative c'' {
  r4 r r r\breathe
}

scoreCCodettaBAltoA = \relative c' {
  e4^"Codetta 2a" e ds e\breathe
}

scoreCCodettaBAltoB = \relative c' {
  fs4^"Codetta 2b" d e d\breathe
}

scoreCCodettaBAltoC = \relative c' {
  e4^"Codetta 2c" a fs g\breathe
}

scoreCCodettaBAltoD= \relative c' {
  d4^"Codetta 2d" e ds e\breathe
}

%%%

scoreCCodettaATenorA = \relative c {
  b4^"Codetta 1a" c b g\breathe
}

scoreCCodettaATenorB = \relative c {
  fs4^"Codetta 1b" e ds e\breathe
}

scoreCCodettaATenorC = \relative c {
  e4^"Codetta 1c" c ds e\breathe
}

scoreCCodettaATenorD= \relative c {
  d4^"Codetta 1d" d d d\breathe
}

scoreCCodettaBTenorA = \relative c' {
  b4^"Codetta 2a" c b b\breathe
}

scoreCCodettaBTenorB = \relative c'' {
  g4^"Codetta 2b" d d d\breathe
}

scoreCCodettaBTenorC = \relative c' {
  e4^"Codetta 2c" e ds e\breathe
}

scoreCCodettaBTenorD= \relative c' {
  b4^"Codetta 2d" c b b\breathe
}

%%%

scoreCCodettaABassA = \relative c'' {
  r4 r r r\breathe
}

scoreCCodettaABassB = \relative c'' {
  r4 r r r\breathe
}

scoreCCodettaABassC = \relative c'' {
  r4 r r r\breathe
}

scoreCCodettaABassD= \relative c'' {
  r4 r r r\breathe
}

scoreCCodettaBBassA = \relative c, {
  e4^"Codetta 2a" a b e,\breathe
}

scoreCCodettaBBassB = \relative c, {
  e4^"Codetta 2b" a b e,\breathe
}

scoreCCodettaBBassC = \relative c {
  a4^"Codetta 2c" a b e,\breathe
}

scoreCCodettaBBassD= \relative c, {
  e4^"Codetta 2d" a b e,\breathe
}

scoreCSoprano = \relative c'' {
  \global
  % Music follows here.
  \scoreAMelody
  \bar "||"^"Dux 1a"
  %
  \scoreACFA
  \scoreCBiciniumA
  \scoreCCodettaASopranoA
  \scoreESopranoA
  \transpose d d' \scoreCAltoA^"Dux 1b"
  \scoreCCodettaBSopranoA
  %
  \scoreACFB
  \scoreCBiciniumB
  \scoreCCodettaASopranoB
  \scoreESopranoB
  \transpose d d' \scoreCAltoB^"Dux 1c"
  \scoreCCodettaBSopranoB
  %
  \scoreACFC
  \scoreCBiciniumC
  \scoreCCodettaASopranoC
  \scoreESopranoC
  \transpose d d' \scoreCAltoC^"Dux 1d"
  \scoreCCodettaBSopranoC
  %
  \scoreACFD
  \scoreCBiciniumD
  \scoreCCodettaASopranoA
  \scoreESopranoD
  \transpose d d' \scoreCAltoD
  \scoreCCodettaBSopranoD
  \bar "|."
}

scoreCAltoChorale = \relative c' {
  % Music follows here.
  \scoreCAltoA
  \scoreCAltoB
  \scoreCAltoC
  \scoreCAltoD
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  \scoreCAltoChorale
  \bar "||"
  \scoreARestA
  \scoreARestA
  \scoreCCodettaAAltoA
  \scoreARestA^"Comes 2a (noch nicht Pachelbel)"
  \transpose d a, \scoreACFA
  \scoreCCodettaBAltoA
  %
  \scoreARestB
  \scoreARestB
  \scoreCCodettaAAltoB
  \scoreARestB^"Comes 2b (noch nicht Pachelbel)"
  \transpose d a, \scoreACFB
  \scoreCCodettaBAltoB
  %
  \scoreARestC
  \scoreARestC
  \scoreCCodettaAAltoC
  \scoreARestC^"Comes 2c (noch nicht Pachelbel)"
  \transpose d a, \scoreACFC
  \scoreCCodettaBAltoC
  %
  \scoreARestD
  \scoreARestD
  \scoreCCodettaAAltoD
  \scoreARestD^"Comes 2d (noch nicht Pachelbel)"
  \transpose d a, \scoreACFD
  \scoreCCodettaBAltoD
}

scoreCTenorChorale = \relative c' {
  % Music follows here.
  \scoreCTenorA
  \scoreCTenorB
  \scoreCTenorC
  \scoreCTenorD
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  \scoreCTenorChorale
  \bar "||"
  %
  \scoreARestA^"Comes 1a"
  \transpose e b,, \scoreACFA
  \scoreCCodettaATenorA
  \transpose d d, \scoreETenorA
  \transpose d d' \scoreCTenorA
  \scoreCCodettaBTenorA
  %
  \scoreARestB^"Comes 1b"
  \transpose e b,, \scoreACFB
  \scoreCCodettaATenorB
  \transpose d d, \scoreETenorB
  \transpose d d' \scoreCTenorB
  \scoreCCodettaBTenorB
  %
  \scoreARestC^"Comes 1c"
  \transpose e b,, \scoreACFC
  \scoreCCodettaATenorC
  \transpose d d, \scoreETenorC
  \transpose d d' \scoreCTenorC
  \scoreCCodettaBTenorC
  %
  \scoreARestD^"Comes 1d"
  \transpose e b,, \scoreACFD
  \scoreCCodettaATenorD
  \transpose d d, \scoreETenorD
  \transpose d d' \scoreCTenorD
  \scoreCCodettaBTenorD
}

scoreCBassChorale = \relative c {
  % Music follows here.
  \scoreCBassA
  \scoreCBassB
  \scoreCBassC
  \scoreCBassD
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  \scoreCBassChorale
  \bar "||"
  %
  \scoreARestA
  \scoreARestA
  \scoreCCodettaABassA^"Dux 2a"
  \transpose d d,, \scoreACFA
  \scoreCBassA
  \scoreCCodettaBBassA
  %
  \scoreARestB
  \scoreARestB
  \scoreCCodettaABassB^"Dux 2b"
  \transpose d d,, \scoreACFB
  \scoreCBassB
  \scoreCCodettaBBassB
  %
  \scoreARestC
  \scoreARestC
  \scoreCCodettaABassC^"Dux 2c"
  \transpose d d,, \scoreACFC
  \scoreCBassC
  \scoreCCodettaBBassC
  %
  \scoreARestD
  \scoreARestD
  \scoreCCodettaABassD^"Dux 2d"
  \transpose d d,, \scoreACFD
  \scoreCBassD
  \scoreCCodettaBBassD
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
  \scoreAVerseA \scoreAVerseA \scoreAVerseA \scoreAVerseA \scoreAVerseB \scoreAVerseB \scoreAVerseB \scoreAVerseB \scoreAVerseC \scoreAVerseC \scoreAVerseC \scoreAVerseC \scoreAVerseD \scoreAVerseD \scoreAVerseD \scoreAVerseD
}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  % \scorea
}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreCChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
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
    shortInstrumentName = \markup \center-column { "T." "B." }
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

scoreCChordsPart = \new ChordNames \scoreCChordNames

scoreCBassFiguresPart = \new FiguredBass \scoreCFigBass

\bookpart {
  \header {
    subtitle = "Cantus Firmus im Sopran, mit Dux-Comes"
  }
  \score {
    <<
      \scoreCChoirPart
      \scoreCChordsPart
      \scoreCBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

scoreDSoprano = \relative c'' {
  \global
  % Music follows here.
  \transpose d d' \scoreCAltoChorale
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  \transpose d d' \scoreCTenorChorale
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  \transpose d d, \scoreAMelody
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  \scoreCBassChorale
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
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
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
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
    shortInstrumentName = \markup \center-column { "T." "B." }
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

scoreDChordsPart = \new ChordNames \scoreDChordNames

scoreDBassFiguresPart = \new FiguredBass \scoreDFigBass

\bookpart {
  \header {
    subtitle = "Cantus Firmus im Tenor"
  }
  \score {
    <<
      \scoreDChoirPart
      \scoreDChordsPart
      \scoreDBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

scoreESopranoA = \relative c'' {
  % Music follows here.
  \partial 4
  e4
  e e d d b2 b4\breathe
}

scoreESopranoB = \relative c'' {
  % Music follows here.
  b4 e e e e g2.\breathe
}

scoreESopranoC = \relative c'' {
  % Music follows here.
  b4 b2 b c2.\breathe
}

scoreESopranoD = \relative c'' {
  % Music follows here.
  g4 d' ds e b b2.\breathe
}

scoreESoprano = \relative c'' {
  \global
  % Music follows here.
  \scoreESopranoA
  \scoreESopranoB
  \scoreESopranoC
  \scoreESopranoD
}

scoreEAltoA = \relative c'' {
  % Music follows here.
  \partial 4
  g4
  b b a fs e2 e4\breathe
}

scoreEAltoB = \relative c' {
  % Music follows here.
  e4 b' b a a d2.\breathe
}

scoreEAltoC = \relative c' {
  % Music follows here.
  d4 fs2 d e2.\breathe
}

scoreEAltoD = \relative c' {
  % Music follows here.
  d4 g fs g fs e2.\breathe
}

scoreEAlto = \relative c' {
  \global
  % Music follows here.
  \scoreEAltoA
  \scoreEAltoB
  \scoreEAltoC
  \scoreEAltoD
}

scoreETenorA = \relative c' {
  % Music follows here.
  \partial 4
  b4
  e g d a g2 g4\breathe
}

scoreETenorB = \relative c' {
  % Music follows here.
  g4 e' e c c g2.\breathe
}

scoreETenorC = \relative c {
  % Music follows here.
  fs4 b2 fs a2.\breathe
}

scoreETenorD = \relative c' {
  % Music follows here.
  g4 b a b b g2.\breathe
}

scoreETenor = \relative c' {
  \global
  % Music follows here.
  \scoreETenorA
  \scoreETenorB
  \scoreETenorC
  \scoreETenorD
}

scoreEBass = \relative c {
  \global
  % Music follows here.
  \transpose d d,, \scoreAMelody
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreEChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreEFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreEChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreESoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreEAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreEVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreETenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreEBass }
  >>
>>

scoreEChordsPart = \new ChordNames \scoreEChordNames

scoreEBassFiguresPart = \new FiguredBass \scoreEFigBass

\bookpart {
  \header {
    subtitle = "Cantus Firmus im Bass"
  }
  \score {
    <<
      \scoreEChoirPart
      \scoreEChordsPart
      \scoreEBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

scoreFSoprano = \relative c'' {
  \global
  % Music follows here.
  \transpose d d' \scoreCAltoChorale
}

scoreFAlto = \relative c' {
  \global
  % Music follows here.
  \scoreAMelody
}

scoreFTenor = \relative c' {
  \global
  % Music follows here.
  \scoreCTenorChorale
}

scoreFBass = \relative c {
  \global
  % Music follows here.
  \scoreCBassChorale
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreFChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreFFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreFChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreFSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreFAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreFVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreFTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreFBass }
  >>
>>

scoreFChordsPart = \new ChordNames \scoreFChordNames

scoreFBassFiguresPart = \new FiguredBass \scoreFFigBass

\bookpart {
  \header {
    subtitle = "Cantus Firmus im Alt"
  }
  \score {
    <<
      \scoreFChoirPart
      \scoreFChordsPart
      \scoreFBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}