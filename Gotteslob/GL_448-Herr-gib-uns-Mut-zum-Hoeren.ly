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
  d4:min
  d:min d:min a:min a:min d2:min d4:min d4:min d4:min d:min g:min g:min d2.:min\breathe
  d4:min a2:min d:min g2.:min d4:min d:min a:min d:min a:min d2.:min   
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
  d4:m
  d:m/f d:m/f c:/e c d2:m d4:m d:m d:m/f d:m/f g:m g:m f2./a
  a4:m a2:m/c a:m g2.:m f4/a f cs:m/e d:m a:min/c d2.:m  
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
  f,4
  a a a e f2 f4
}

scoreCAltoB = \relative c {
  % Music follows here.
  f4 a a bf bf d2.\breathe
}

scoreCAltoC = \relative c' {
  % Music follows here.
  d4 e2 d bf2.\breathe
}

scoreCAltoD = \relative c' {
  % Music follows here.
  d4 a a f e f2.
}

scoreCTenorA = \relative c' {
  % Music follows here.
  \partial 4
  a,4
  d d c a a2 a4
}

scoreCTenorB = \relative c {
  % Music follows here.
  a4 d d d d f2.\breathe
}

scoreCTenorC = \relative c {
  % Music follows here.
  f4 a2 f d2.\breathe
}

scoreCTenorD = \relative c {
  % Music follows here.
  f4 d c a a a2.
}

scoreCBassA = \relative c {
  % Music follows here.
  \partial 4
  d,4
  d d a' a d,2 d4
}

scoreCBassB = \relative c, {
  % Music follows here.
  d4 d d g g d2.\breathe
}

scoreCBassC = \relative c, {
  % Music follows here.
  d4 a'2 d, g2.\breathe
}

scoreCBassD = \relative c, {
  % Music follows here.
  d4 d a' d, a' d,2.
}

scoreESopranoA = \relative c'' {
  % Music follows here.
  \partial 4
  d4
  d d c c a2 a4\breathe
}

scoreESopranoB = \relative c'' {
  % Music follows here.
  a4 d d d d f2.\breathe
}

scoreESopranoC = \relative c'' {
  % Music follows here.
  a4 a2 a bf2.
}

scoreESopranoD = \relative c'' {
  % Music follows here.
  f,4 c' cs d a a2.
}

scoreEAltoA = \relative c' {
  % Music follows here.
  \partial 4
  f4
  a a g e d2 d4
}

scoreEAltoB = \relative c' {
  % Music follows here.
  d4 a' a g g c2.\breathe
}

scoreEAltoC = \relative c' {
  % Music follows here.
  c,4 e2 c d2.
}

scoreEAltoD = \relative c' {
  % Music follows here.
  \partial 4
  c4 f e f e d2.
}

scoreETenorA = \relative c' {
  % Music follows here.
  \partial 4
  a4
  d f c g f2 f4
}

scoreETenorB = \relative c' {
  % Music follows here.
  f4 d' d bf bf f2.\breathe
}

scoreETenorC = \relative c' {
  % Music follows here.
  e4 a2 e g2.
}

scoreETenorD = \relative c' {
  % Music follows here.
  f4 a g a a f2.
}

scoreCBiciniumA = \relative c'' {
  c,4^"Bicinium 1a" e e d bf c2 c4\breathe
}

scoreCBiciniumB = \relative c'' {
  c4^"Bicinium 1b" e e d bf c2.\breathe
}

scoreCBiciniumC = \relative c'' {
  c4^"Bicinium 1c" bf2 c f2.\breathe
}

scoreCBiciniumD = \relative c'' {
  c4^"Bicinium 1d" e d c bf c2.\breathe
}

%%%

scoreCCodettaASopranoA = \relative c'' {
  c4^"Codetta 1a" c c c\breathe
}

scoreCCodettaASopranoB = \relative c'' {
  c4^"Codetta 1b" c c c\breathe
}

scoreCCodettaASopranoC = \relative c'' {
  c4^"Codetta 1c" c c c\breathe
}

scoreCCodettaASopranoD= \relative c'' {
  c4^"Codetta 1d" c c c\breathe
}

scoreCCodettaBSopranoA = \relative c'' {
  c4^"Codetta 2a" c c c\breathe
}

scoreCCodettaBSopranoB = \relative c'' {
  c4^"Codetta 2b" c c c\breathe
}

scoreCCodettaBSopranoC = \relative c'' {
  c4^"Codetta 2c" c c c\breathe
}

scoreCCodettaBSopranoD= \relative c'' {
  c4^"Codetta 2d" c c c\breathe
}

%%%%

scoreCCodettaAAltoA = \relative c'' {
  c4^"Codetta 1a" c c c\breathe
}

scoreCCodettaAAltoB = \relative c'' {
  c4^"Codetta 1b" c c c\breathe
}

scoreCCodettaAAltoC = \relative c'' {
  c4^"Codetta 1c" c c c\breathe
}

scoreCCodettaAAltoD= \relative c'' {
  c4^"Codetta 1d" c c c\breathe
}

scoreCCodettaBAltoA = \relative c'' {
  c4^"Codetta 2a" c c c\breathe
}

scoreCCodettaBAltoB = \relative c'' {
  c4^"Codetta 2b" c c c\breathe
}

scoreCCodettaBAltoC = \relative c'' {
  c4^"Codetta 2c" c c c\breathe
}

scoreCCodettaBAltoD= \relative c'' {
  c4^"Codetta 2d" c c c\breathe
}

%%%

scoreCCodettaATenorA = \relative c'' {
  c4^"Codetta 1a" c c c\breathe
}

scoreCCodettaATenorB = \relative c'' {
  c4^"Codetta 1b" c c c\breathe
}

scoreCCodettaATenorC = \relative c'' {
  c4^"Codetta 1c" c c c\breathe
}

scoreCCodettaATenorD= \relative c'' {
  c4^"Codetta 1d" c c c\breathe
}

scoreCCodettaBTenorA = \relative c'' {
  c4^"Codetta 2a" c c c\breathe
}

scoreCCodettaBTenorB = \relative c'' {
  c4^"Codetta 2b" c c c\breathe
}

scoreCCodettaBTenorC = \relative c'' {
  c4^"Codetta 2c" c c c\breathe
}

scoreCCodettaBTenorD= \relative c'' {
  c4^"Codetta 2d" c c c\breathe
}

%%%

scoreCCodettaABassA = \relative c'' {
  c4^"Codetta 1a" c c c\breathe
}

scoreCCodettaABassB = \relative c'' {
  c4^"Codetta 1b" c c c\breathe
}

scoreCCodettaABassC = \relative c'' {
  c4^"Codetta 1c" c c c\breathe
}

scoreCCodettaABassD= \relative c'' {
  c4^"Codetta 1d" c c c\breathe
}

scoreCCodettaBBassA = \relative c'' {
  c4^"Codetta 2a" c c c\breathe
}

scoreCCodettaBBassB = \relative c'' {
  c4^"Codetta 2b" c c c\breathe
}

scoreCCodettaBBassC = \relative c'' {
  c4^"Codetta 2c" c c c\breathe
}

scoreCCodettaBBassD= \relative c'' {
  c4^"Codetta 2d" c c c\breathe
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
  \transpose c c' \scoreCAltoA^"Dux 1b"
  \scoreCCodettaBSopranoA
  %
  \scoreACFB
  \scoreCBiciniumB
  \scoreCCodettaASopranoB
  \scoreESopranoB
  \transpose c c' \scoreCAltoB^"Dux 1c"
  \scoreCCodettaBSopranoB
  %
  \scoreACFC
  \scoreCBiciniumC
  \scoreCCodettaASopranoC
  \scoreESopranoC
  \transpose c c' \scoreCAltoC^"Dux 1d"
  \scoreCCodettaBSopranoC
  %
  \scoreACFD
  \scoreCBiciniumD
  \scoreCCodettaASopranoA
  \scoreESopranoD
  \transpose c c' \scoreCAltoD
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
  \transpose c g, \scoreACFA
  \scoreCCodettaBAltoA
  %
  \scoreARestB
  \scoreARestB
  \scoreCCodettaAAltoB
  \scoreARestB^"Comes 2b (noch nicht Pachelbel)"
  \transpose c g, \scoreACFB
  \scoreCCodettaBAltoB
  %
  \scoreARestC
  \scoreARestC
  \scoreCCodettaAAltoC
  \scoreARestC^"Comes 2c (noch nicht Pachelbel)"
  \transpose c g, \scoreACFC
  \scoreCCodettaBAltoC
  %
  \scoreARestD
  \scoreARestD
  \scoreCCodettaAAltoD
  \scoreARestD^"Comes 2d (noch nicht Pachelbel)"
  \transpose c g, \scoreACFD
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
  \transpose d a,, \scoreACFA
  \scoreCCodettaATenorA
  \transpose c c, \scoreETenorA
  \transpose c c' \scoreCTenorA
  \scoreCCodettaBTenorA
  %
  \scoreARestB^"Comes 1b"
  \transpose d a,, \scoreACFB
  \scoreCCodettaATenorB
  \transpose c c, \scoreETenorB
  \transpose c c' \scoreCTenorB
  \scoreCCodettaBTenorB
  %
  \scoreARestC^"Comes 1c"
  \transpose d a,, \scoreACFC
  \scoreCCodettaATenorC
  \transpose c c, \scoreETenorC
  \transpose c c' \scoreCTenorC
  \scoreCCodettaBTenorC
  %
  \scoreARestD^"Comes 1d"
  \transpose d a,, \scoreACFD
  \scoreCCodettaATenorD
  \transpose c c, \scoreETenorD
  \transpose c c' \scoreCTenorD
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
  \transpose c c,, \scoreACFA
  \scoreCBassA
  \scoreCCodettaBBassA
  %
  \scoreARestB
  \scoreARestB
  \scoreCCodettaABassB^"Dux 2b"
  \transpose c c,, \scoreACFB
  \scoreCBassB
  \scoreCCodettaBBassB
  %
  \scoreARestC
  \scoreARestC
  \scoreCCodettaABassC^"Dux 2c"
  \transpose c c,, \scoreACFC
  \scoreCBassC
  \scoreCCodettaBBassC
  %
  \scoreARestD
  \scoreARestD
  \scoreCCodettaABassD^"Dux 2d"
  \transpose c c,, \scoreACFD
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
  \transpose c c' \scoreCAltoChorale
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  \transpose c c' \scoreCTenorChorale
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  \transpose c c, \scoreAMelody
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
  d4
  d d c c a2 a4\breathe
}

scoreESopranoB = \relative c'' {
  % Music follows here.
  a4 d d d d f2.\breathe
}

scoreESopranoC = \relative c'' {
  % Music follows here.
  a4 a2 a bf2.\breathe
}

scoreESopranoD = \relative c'' {
  % Music follows here.
  f,4 c' cs d a a2.\breathe
}

scoreESoprano = \relative c'' {
  \global
  % Music follows here.
  \scoreESopranoA
  \scoreESopranoB
  \scoreESopranoC
  \scoreESopranoD
}

scoreEAltoA = \relative c' {
  % Music follows here.
  \partial 4
  f4
  a a g e d2 d4\breathe
}

scoreEAltoB = \relative c' {
  % Music follows here.
  d4 a' a g g c2.\breathe
}

scoreEAltoC = \relative c' {
  % Music follows here.
  c4 e2 c d2.\breathe
}

scoreEAltoD = \relative c' {
  % Music follows here.
  c4 f e f e d2.\breathe
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
  a4
  d f c g f2 f4\breathe
}

scoreETenorB = \relative c' {
  % Music follows here.
  f,4 d' d bf bf f2.\breathe
}

scoreETenorC = \relative c' {
  % Music follows here.
  e,4 a2 e g2.\breathe
}

scoreETenorD = \relative c' {
  % Music follows here.
  f,4 a g a a f2.\breathe
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
  \transpose c c,, \scoreAMelody
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
  \transpose c c' \scoreCAltoChorale
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