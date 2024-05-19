\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "Harmonisierung Tonleiter in Intervallen"
  subsubtitle = "Weite Lage, soweit möglich"
  instrument = "Orgel"
  composer = "M: Natur"
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: Solmization"
  meter = ""
  piece = ""
  opus = ""
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

\include "WeiteLageTonleitern.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%
% C-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

%notes: see "WeiteLageTonleitern.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%
% a-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

%notes: see "WeiteLageTonleitern.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%
% G-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \transpose c g \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreCSoprano = \relative c'' {
  \globalC
  % Music follows here.
  \transpose c g \scoreASoprano
}

scoreCAlto = \relative c' {
  \globalC
  % Music follows here.
  \transpose c g \scoreAAlto
}

scoreCTenor = \relative c' {
  \globalC
  % Music follows here.
  \transpose c g \scoreATenor
}

scoreCBass = \relative c {
  \globalC
  % Music follows here.
  \transpose c g \scoreABass
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreCChordNames = \chordmode {
  \globalC
  % Chords follow here.
  \transpose c g \scoreAChordNames
}

scoreCFigBass = \figuremode {
  \globalC
  % Figures follow here.
  \scoreAFigBass
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
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreCAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
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
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreCBass }
  >>
>>

scoreCChordsPart = \new ChordNames \scoreCChordNames

scoreCBassFiguresPart = \new FiguredBass \scoreCFigBass

\bookpart {
  \header {
    subtitle = "G-Dur"
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

%%%%%%%%%%%%%%%%%%%%%%%%%
% e-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalD = {
  \transpose a e \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
}

scoreDSoprano = \relative c'' {
  \globalD
  % Music follows here.
  \transpose a e \scoreBSoprano
}

scoreDAlto = \relative c' {
  \globalD
  % Music follows here.
  \transpose a e \scoreBAlto
}

scoreDTenor = \relative c' {
  \globalD
  % Music follows here.
  \transpose a e \scoreBTenor
}

scoreDBass = \relative c {
  \globalD
  % Music follows here.
  \transpose a e \scoreBBass
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreDChordNames = \chordmode {
  \globalD
  % Chords follow here.
  \transpose a e \scoreBChordNames
}

scoreDFigBass = \figuremode {
  \globalD
  % Figures follow here.
  \scoreBFigBass
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
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreDAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
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
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreDBass }
  >>
>>

scoreDChordsPart = \new ChordNames \scoreDChordNames

scoreDBassFiguresPart = \new FiguredBass \scoreDFigBass

\bookpart {
  \header {
    subtitle = "e-Moll"
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

%%%%%%%%%%%%%%%%%%%%%%%%%
% F-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalE = {
  \transpose c f \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreESoprano = \relative c'' {
  \globalE
  % Music follows here.
  \transpose c f \scoreASoprano
}

scoreEAlto = \relative c' {
  \globalE
  % Music follows here.
  \transpose c f \scoreAAlto
}

scoreETenor = \relative c' {
  \globalE
  % Music follows here.
  \transpose c f \scoreATenor
}

scoreEBass = \relative c {
  \globalE
  % Music follows here.
  \transpose c f \scoreABass
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreEChordNames = \chordmode {
  \globalE
  % Chords follow here.
  \transpose c g \scoreAChordNames
}

scoreEFigBass = \figuremode {
  \globalE
  % Figures follow here.
  \scoreAFigBass
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
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreEAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
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
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreEBass }
  >>
>>

scoreEChordsPart = \new ChordNames \scoreEChordNames

scoreEBassFiguresPart = \new FiguredBass \scoreEFigBass

\bookpart {
  \header {
    subtitle = "F-Dur"
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

%%%%%%%%%%%%%%%%%%%%%%%%%
% d-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalF = {
  \transpose a d\key a \minor
  \time 4/4
  \tempo "Andante" 4=100
}

scoreFSoprano = \relative c'' {
  \globalF
  % Music follows here.
  \transpose a d' \scoreBSoprano
}

scoreFAlto = \relative c' {
  \globalF
  % Music follows here.
  \transpose a d' \scoreBAlto
}

scoreFTenor = \relative c' {
  \globalF
  % Music follows here.
  \transpose a d' \scoreBTenor
}

scoreFBass = \relative c {
  \globalF
  % Music follows here.
  \transpose a d' \scoreBBass
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreFChordNames = \chordmode {
  \globalF
  % Chords follow here.
  \transpose a d \scoreBChordNames
}

scoreFFigBass = \figuremode {
  \globalF
  % Figures follow here.
  \scoreBFigBass
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
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreFAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
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
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreFBass }
  >>
>>

scoreFChordsPart = \new ChordNames \scoreFChordNames

scoreFBassFiguresPart = \new FiguredBass \scoreFFigBass

\bookpart {
  \header {
    subtitle = "d-Moll"
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

%%%%%%%%%%%%%%%%%%%%%%%%%
% D-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalG = {
  \transpose c d \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreGSoprano = \relative c'' {
  \globalG
  % Music follows here.
  \transpose c d \scoreASoprano
}

scoreGAlto = \relative c' {
  \globalG
  % Music follows here.
  \transpose c d \scoreAAlto
}

scoreGTenor = \relative c' {
  \globalG
  % Music follows here.
  \transpose c d \scoreATenor
}

scoreGBass = \relative c {
  \globalG
  % Music follows here.
  \transpose c d \scoreABass
}

scoreGVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreGChordNames = \chordmode {
  \globalG
  % Chords follow here.
  \transpose c d \scoreAChordNames
}

scoreGFigBass = \figuremode {
  \globalG
  % Figures follow here.
  \scoreAFigBass
}

scoreGChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreGSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreGAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreGVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreGTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreGBass }
  >>
>>

scoreGChordsPart = \new ChordNames \scoreGChordNames

scoreGBassFiguresPart = \new FiguredBass \scoreGFigBass

\bookpart {
  \header {
    subtitle = "D-Dur"
  }
  \score {
    <<
      \scoreGChoirPart
      \scoreGChordsPart
      \scoreGBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% h-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalH = {
  \transpose a b \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
}

scoreHSoprano = \relative c'' {
  \globalH
  % Music follows here.
  \transpose a b \scoreBSoprano
}

scoreHAlto = \relative c' {
  \globalH
  % Music follows here.
  \transpose a b \scoreBAlto
}

scoreHTenor = \relative c' {
  \globalH
  % Music follows here.
  \transpose a b \scoreBTenor
}

scoreHBass = \relative c {
  \globalH
  % Music follows here.
  \transpose a b \scoreBBass
}

scoreHVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreHChordNames = \chordmode {
  \globalH
  % Chords follow here.
  \transpose a b \scoreBChordNames
}

scoreHFigBass = \figuremode {
  \globalH
  % Figures follow here.
  \scoreBFigBass
}

scoreHChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreHSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreHAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreHVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreHTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreHBass }
  >>
>>

scoreHChordsPart = \new ChordNames \scoreHChordNames

scoreHBassFiguresPart = \new FiguredBass \scoreHFigBass

\bookpart {
  \header {
    subtitle = "h-Moll"
  }
  \score {
    <<
      \scoreHChoirPart
      \scoreHChordsPart
      \scoreHBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% B-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalI = {
  \transpose c bf \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreISoprano = \relative c'' {
  \globalI
  % Music follows here.
  \transpose c bf \scoreASoprano
}

scoreIAlto = \relative c' {
  \globalI
  % Music follows here.
  \transpose c bf \scoreAAlto
}

scoreITenor = \relative c' {
  \globalI
  % Music follows here.
  \transpose c bf \scoreATenor
}

scoreIBass = \relative c {
  \globalI
  % Music follows here.
  \transpose c bf \scoreABass
}

scoreIVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreIChordNames = \chordmode {
  \globalI
  % Chords follow here.
  \transpose c bf \scoreAChordNames
}

scoreIFigBass = \figuremode {
  \globalI
  % Figures follow here.
  \scoreAFigBass
}

scoreIChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreISoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreIAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreIVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreITenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreIBass }
  >>
>>

scoreIChordsPart = \new ChordNames \scoreIChordNames

scoreIBassFiguresPart = \new FiguredBass \scoreIFigBass

\bookpart {
  \header {
    subtitle = "B-Dur"
  }
  \score {
    <<
      \scoreIChoirPart
      \scoreIChordsPart
      \scoreIBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% g-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalJ = {
  \transpose a g \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
}

scoreJSoprano = \relative c'' {
  \globalJ
  % Music follows here.
  \transpose a g \scoreBSoprano
}

scoreJAlto = \relative c' {
  \globalJ
  % Music follows here.
  \transpose a g \scoreBAlto
}

scoreJTenor = \relative c' {
  \globalJ
  % Music follows here.
  \transpose a g \scoreBTenor
}

scoreJBass = \relative c {
  \globalJ
  % Music follows here.
  \transpose a g \scoreBBass
}

scoreJVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreJChordNames = \chordmode {
  \globalJ
  % Chords follow here.
  \transpose a g \scoreBChordNames
}

scoreJFigBass = \figuremode {
  \globalJ
  % Figures follow here.
  \scoreBFigBass
}

scoreJChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreJSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreJAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreJVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreJTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreJBass }
  >>
>>

scoreJChordsPart = \new ChordNames \scoreJChordNames

scoreJBassFiguresPart = \new FiguredBass \scoreJFigBass

\bookpart {
  \header {
    subtitle = "g-Moll"
  }
  \score {
    <<
      \scoreJChoirPart
      \scoreJChordsPart
      \scoreJBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% A-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalK = {
  \transpose c a \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreKSoprano = \relative c'' {
  \globalK
  % Music follows here.
  \transpose c a \scoreASoprano
}

scoreKAlto = \relative c' {
  \globalK
  % Music follows here.
  \transpose c a \scoreAAlto
}

scoreKTenor = \relative c' {
  \globalK
  % Music follows here.
  \transpose c a \scoreATenor
}

scoreKBass = \relative c {
  \globalK
  % Music follows here.
  \transpose c a \scoreABass
}

scoreKVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreKChordNames = \chordmode {
  \globalK
  % Chords follow here.
  \transpose c a \scoreAChordNames
}

scoreKFigBass = \figuremode {
  \globalK
  % Figures follow here.
  \scoreAFigBass
}

scoreKChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreKSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreKAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreKVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreKTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreKBass }
  >>
>>

scoreKChordsPart = \new ChordNames \scoreKChordNames

scoreKBassFiguresPart = \new FiguredBass \scoreKFigBass

\bookpart {
  \header {
    subtitle = "A-Dur"
  }
  \score {
    <<
      \scoreKChoirPart
      \scoreKChordsPart
      \scoreKBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% fis-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalL = {
  \transpose a fs \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
}

scoreLSoprano = \relative c'' {
  \globalL
  % Music follows here.
  \transpose a fs \scoreBSoprano
}

scoreLAlto = \relative c' {
  \globalL
  % Music follows here.
  \transpose a fs \scoreBAlto
}

scoreLTenor = \relative c' {
  \globalL
  % Music follows here.
  \transpose a fs \scoreBTenor
}

scoreLBass = \relative c {
  \globalL
  % Music follows here.
  \transpose a fs \scoreBBass
}

scoreLVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreLChordNames = \chordmode {
  \globalL
  % Chords follow here.
  \transpose a fs \scoreBChordNames
}

scoreLFigBass = \figuremode {
  \globalL
  % Figures follow here.
  \scoreBFigBass
}

scoreLChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreLSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreLAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreLVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreLTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreLBass }
  >>
>>

scoreLChordsPart = \new ChordNames \scoreLChordNames

scoreLBassFiguresPart = \new FiguredBass \scoreLFigBass

\bookpart {
  \header {
    subtitle = "fis-Moll"
  }
  \score {
    <<
      \scoreLChoirPart
      \scoreLChordsPart
      \scoreLBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% Es-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalM = {
  \transpose c ef \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreMSoprano = \relative c'' {
  \globalM
  % Music follows here.
  \transpose c ef \scoreASoprano
}

scoreMAlto = \relative c' {
  \globalM
  % Music follows here.
  \transpose c ef \scoreAAlto
}

scoreMTenor = \relative c' {
  \globalM
  % Music follows here.
  \transpose c ef \scoreATenor
}

scoreMBass = \relative c {
  \globalM
  % Music follows here.
  \transpose c ef \scoreABass
}

scoreMVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreMChordNames = \chordmode {
  \globalM
  % Chords follow here.
  \transpose c ef \scoreAChordNames
}

scoreMFigBass = \figuremode {
  \globalM
  % Figures follow here.
  \scoreAFigBass
}

scoreMChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreMSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreMAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreMVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreMTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreMBass }
  >>
>>

scoreMChordsPart = \new ChordNames \scoreMChordNames

scoreMBassFiguresPart = \new FiguredBass \scoreMFigBass

\bookpart {
  \header {
    subtitle = "Es-Dur"
  }
  \score {
    <<
      \scoreMChoirPart
      \scoreMChordsPart
      \scoreMBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% c-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalN = {
  \transpose a c \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
}

scoreNSoprano = \relative c'' {
  \globalN
  % Music follows here.
  \transpose a c \scoreBSoprano
}

scoreNAlto = \relative c' {
  \globalN
  % Music follows here.
  \transpose a c \scoreBAlto
}

scoreNTenor = \relative c' {
  \globalN
  % Music follows here.
  \transpose a c \scoreBTenor
}

scoreNBass = \relative c {
  \globalN
  % Music follows here.
  \transpose a c \scoreBBass
}

scoreNVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreNChordNames = \chordmode {
  \globalN
  % Chords follow here.
  \transpose a c \scoreBChordNames
}

scoreNFigBass = \figuremode {
  \globalN
  % Figures follow here.
  \scoreBFigBass
}

scoreNChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreNSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreNAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreNVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreNTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreNBass }
  >>
>>

scoreNChordsPart = \new ChordNames \scoreNChordNames

scoreNBassFiguresPart = \new FiguredBass \scoreNFigBass

\bookpart {
  \header {
    subtitle = "c-Moll"
  }
  \score {
    <<
      \scoreNChoirPart
      \scoreNChordsPart
      \scoreNBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% E-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalO = {
  \transpose c e \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreOSoprano = \relative c'' {
  \globalO
  % Music follows here.
  \transpose c e \scoreASoprano
}

scoreOAlto = \relative c' {
  \globalO
  % Music follows here.
  \transpose c e \scoreAAlto
}

scoreOTenor = \relative c' {
  \globalO
  % Music follows here.
  \transpose c e \scoreATenor
}

scoreOBass = \relative c {
  \globalO
  % Music follows here.
  \transpose c e \scoreABass
}

scoreOVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreOChordNames = \chordmode {
  \globalO
  % Chords follow here.
  \transpose c e \scoreAChordNames
}

scoreOFigBass = \figuremode {
  \globalO
  % Figures follow here.
  \scoreAFigBass
}

scoreOChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreOSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreOAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreOVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreOTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreOBass }
  >>
>>

scoreOChordsPart = \new ChordNames \scoreOChordNames

scoreOBassFiguresPart = \new FiguredBass \scoreOFigBass

\bookpart {
  \header {
    subtitle = "E-Dur"
  }
  \score {
    <<
      \scoreOChoirPart
      \scoreOChordsPart
      \scoreOBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% cis-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalP = {
  \transpose a cs \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
}

scorePSoprano = \relative c'' {
  \globalP
  % Music follows here.
  \transpose a cs \scoreBSoprano
}

scorePAlto = \relative c' {
  \globalP
  % Music follows here.
  \transpose a cs \scoreBAlto
}

scorePTenor = \relative c' {
  \globalP
  % Music follows here.
  \transpose a cs \scoreBTenor
}

scorePBass = \relative c {
  \globalP
  % Music follows here.
  \transpose a cs \scoreBBass
}

scorePVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scorePChordNames = \chordmode {
  \globalP
  % Chords follow here.
  \transpose a cs \scoreBChordNames
}

scorePFigBass = \figuremode {
  \globalP
  % Figures follow here.
  \scoreBFigBass
}

scorePChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scorePSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scorePAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scorePVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scorePTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scorePBass }
  >>
>>

scorePChordsPart = \new ChordNames \scorePChordNames

scorePBassFiguresPart = \new FiguredBass \scorePFigBass

\bookpart {
  \header {
    subtitle = "cis-Moll"
  }
  \score {
    <<
      \scorePChoirPart
      \scorePChordsPart
      \scorePBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% As-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalQ = {
  \transpose c af \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreQSoprano = \relative c'' {
  \globalQ
  % Music follows here.
  \transpose c af \scoreASoprano
}

scoreQAlto = \relative c' {
  \globalQ
  % Music follows here.
  \transpose c af \scoreAAlto
}

scoreQTenor = \relative c' {
  \globalQ
  % Music follows here.
  \transpose c af \scoreATenor
}

scoreQBass = \relative c {
  \globalQ
  % Music follows here.
  \transpose c af \scoreABass
}

scoreQVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreQChordNames = \chordmode {
  \globalQ
  % Chords follow here.
  \transpose c af \scoreAChordNames
}

scoreQFigBass = \figuremode {
  \globalQ
  % Figures follow here.
  \scoreAFigBass
}

scoreQChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreQSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreQAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreQVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreQTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreQBass }
  >>
>>

scoreQChordsPart = \new ChordNames \scoreQChordNames

scoreQBassFiguresPart = \new FiguredBass \scoreQFigBass

\bookpart {
  \header {
    subtitle = "As-Dur"
  }
  \score {
    <<
      \scoreQChoirPart
      \scoreQChordsPart
      \scoreQBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% f-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalR = {
  \transpose a f \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
}

scoreRSoprano = \relative c'' {
  \globalR
  % Music follows here.
  \transpose a f \scoreBSoprano
}

scoreRAlto = \relative c' {
  \globalR
  % Music follows here.
  \transpose a f \scoreBAlto
}

scoreRTenor = \relative c' {
  \globalR
  % Music follows here.
  \transpose a f \scoreBTenor
}

scoreRBass = \relative c {
  \globalR
  % Music follows here.
  \transpose a f \scoreBBass
}

scoreRVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreRChordNames = \chordmode {
  \globalR
  % Chords follow here.
  \transpose a f \scoreBChordNames
}

scoreRFigBass = \figuremode {
  \globalR
  % Figures follow here.
  \scoreBFigBass
}

scoreRChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreRSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreRAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreRVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreRTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreRBass }
  >>
>>

scoreRChordsPart = \new ChordNames \scoreRChordNames

scoreRBassFiguresPart = \new FiguredBass \scoreRFigBass

\bookpart {
  \header {
    subtitle = "f-Moll"
  }
  \score {
    <<
      \scoreRChoirPart
      \scoreRChordsPart
      \scoreRBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% H-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalS = {
  \transpose c b \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreSSoprano = \relative c'' {
  \globalS
  % Music follows here.
  \transpose c b \scoreASoprano
}

scoreSAlto = \relative c' {
  \globalS
  % Music follows here.
  \transpose c b \scoreAAlto
}

scoreSTenor = \relative c' {
  \globalS
  % Music follows here.
  \transpose c b \scoreATenor
}

scoreSBass = \relative c {
  \globalS
  % Music follows here.
  \transpose c b \scoreABass
}

scoreSVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreSChordNames = \chordmode {
  \globalS
  % Chords follow here.
  \transpose c b \scoreAChordNames
}

scoreSFigBass = \figuremode {
  \globalS
  % Figures follow here.
  \scoreAFigBass
}

scoreSChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreSSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreSAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreSVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreSTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreSBass }
  >>
>>

scoreSChordsPart = \new ChordNames \scoreSChordNames

scoreSBassFiguresPart = \new FiguredBass \scoreSFigBass

\bookpart {
  \header {
    subtitle = "H-Dur"
  }
  \score {
    <<
      \scoreSChoirPart
      \scoreSChordsPart
      \scoreSBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% gis-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalT = {
  \transpose a gs \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
}

scoreTSoprano = \relative c'' {
  \globalT
  % Music follows here.
  \transpose a gs \scoreBSoprano
}

scoreTAlto = \relative c' {
  \globalT
  % Music follows here.
  \transpose a gs \scoreBAlto
}

scoreTTenor = \relative c' {
  \globalT
  % Music follows here.
  \transpose a gs \scoreBTenor
}

scoreTBass = \relative c {
  \globalT
  % Music follows here.
  \transpose a gs \scoreBBass
}

scoreTVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreTChordNames = \chordmode {
  \globalT
  % Chords follow here.
  \transpose a gs \scoreBChordNames
}

scoreTFigBass = \figuremode {
  \globalT
  % Figures follow here.
  \scoreBFigBass
}

scoreTChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreTSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreTAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreTVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreTTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreTBass }
  >>
>>

scoreTChordsPart = \new ChordNames \scoreTChordNames

scoreTBassFiguresPart = \new FiguredBass \scoreTFigBass

\bookpart {
  \header {
    subtitle = "gis-Moll"
  }
  \score {
    <<
      \scoreTChoirPart
      \scoreTChordsPart
      \scoreTBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% Des-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalU = {
  \transpose c df \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreUSoprano = \relative c'' {
  \globalU
  % Music follows here.
  \transpose c df \scoreASoprano
}

scoreUAlto = \relative c' {
  \globalU
  % Music follows here.
  \transpose c df \scoreAAlto
}

scoreUTenor = \relative c' {
  \globalU
  % Music follows here.
  \transpose c df \scoreATenor
}

scoreUBass = \relative c {
  \globalU
  % Music follows here.
  \transpose c df \scoreABass
}

scoreUVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreUChordNames = \chordmode {
  \globalU
  % Chords follow here.
  \transpose c df \scoreAChordNames
}

scoreUFigBass = \figuremode {
  \globalU
  % Figures follow here.
  \scoreAFigBass
}

scoreUChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreUSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreUAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreUVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreUTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreUBass }
  >>
>>

scoreUChordsPart = \new ChordNames \scoreUChordNames

scoreUBassFiguresPart = \new FiguredBass \scoreUFigBass

\bookpart {
  \header {
    subtitle = "Des-Dur"
  }
  \score {
    <<
      \scoreUChoirPart
      \scoreUChordsPart
      \scoreUBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% b-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalV = {
  \transpose a bf \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
}

scoreVSoprano = \relative c'' {
  \globalV
  % Music follows here.
  \transpose a bf \scoreBSoprano
}

scoreVAlto = \relative c' {
  \globalV
  % Music follows here.
  \transpose a bf \scoreBAlto
}

scoreVTenor = \relative c' {
  \globalV
  % Music follows here.
  \transpose a bf \scoreBTenor
}

scoreVBass = \relative c {
  \globalV
  % Music follows here.
  \transpose a bf \scoreBBass
}

scoreVVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreVChordNames = \chordmode {
  \globalV
  % Chords follow here.
  \transpose a bf \scoreBChordNames
}

scoreVFigBass = \figuremode {
  \globalV
  % Figures follow here.
  \scoreBFigBass
}

scoreVChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreVSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreVAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreVVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreVTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreVBass }
  >>
>>

scoreVChordsPart = \new ChordNames \scoreVChordNames

scoreVBassFiguresPart = \new FiguredBass \scoreVFigBass

\bookpart {
  \header {
    subtitle = "b-Moll"
  }
  \score {
    <<
      \scoreVChoirPart
      \scoreVChordsPart
      \scoreVBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% Fis-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalW = {
  \transpose c fs \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreWSoprano = \relative c'' {
  \globalW
  % Music follows here.
  \transpose c fs \scoreASoprano
}

scoreWAlto = \relative c' {
  \globalW
  % Music follows here.
  \transpose c fs \scoreAAlto
}

scoreWTenor = \relative c' {
  \globalW
  % Music follows here.
  \transpose c fs \scoreATenor
}

scoreWBass = \relative c {
  \globalW
  % Music follows here.
  \transpose c fs \scoreABass
}

scoreWVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreWChordNames = \chordmode {
  \globalW
  % Chords follow here.
  \transpose c fs \scoreAChordNames
}

scoreWFigBass = \figuremode {
  \globalW
  % Figures follow here.
  \scoreAFigBass
}

scoreWChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreWSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreWAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreWVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreWTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreWBass }
  >>
>>

scoreWChordsPart = \new ChordNames \scoreWChordNames

scoreWBassFiguresPart = \new FiguredBass \scoreWFigBass

\bookpart {
  \header {
    subtitle = "Fis-Dur"
  }
  \score {
    <<
      \scoreWChoirPart
      \scoreWChordsPart
      \scoreWBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% a-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalX = {
  \transpose a ds \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
}

scoreXSoprano = \relative c'' {
  \globalX
  % Music follows here.
  \transpose a ds \scoreBSoprano
}

scoreXAlto = \relative c' {
  \globalX
  % Music follows here.
  \transpose a ds \scoreBAlto
}

scoreXTenor = \relative c' {
  \globalX
  % Music follows here.
  \transpose a ds \scoreBTenor
}

scoreXBass = \relative c {
  \globalX
  % Music follows here.
  \transpose a ds \scoreBBass
}

scoreXVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreXChordNames = \chordmode {
  \globalX
  % Chords follow here.
  \transpose a ds \scoreBChordNames
}

scoreXFigBass = \figuremode {
  \globalX
  % Figures follow here.
  \scoreBFigBass
}

scoreXChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreXSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreXAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreXVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreXTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreXBass }
  >>
>>

scoreXChordsPart = \new ChordNames \scoreXChordNames

scoreXBassFiguresPart = \new FiguredBass \scoreXFigBass

\bookpart {
  \header {
    subtitle = "dis-Moll"
  }
  \score {
    <<
      \scoreXChoirPart
      \scoreXChordsPart
      \scoreXBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% Ges-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalY = {
  \transpose c gf \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreYSoprano = \relative c'' {
  \globalY
  % Music follows here.
  \transpose c gf \scoreASoprano
}

scoreYAlto = \relative c' {
  \globalY
  % Music follows here.
  \transpose c gf \scoreAAlto
}

scoreYTenor = \relative c' {
  \globalY
  % Music follows here.
  \transpose c gf \scoreATenor
}

scoreYBass = \relative c {
  \globalY
  % Music follows here.
  \transpose c gf \scoreABass
}

scoreYVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreYChordNames = \chordmode {
  \globalY
  % Chords follow here.
  \transpose c gf \scoreAChordNames
}

scoreYFigBass = \figuremode {
  \globalY
  % Figures follow here.
  \scoreAFigBass
}

scoreYChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreYSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreYAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreYVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreYTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreYBass }
  >>
>>

scoreYChordsPart = \new ChordNames \scoreYChordNames

scoreYBassFiguresPart = \new FiguredBass \scoreYFigBass

\bookpart {
  \header {
    subtitle = "Ges-Dur"
  }
  \score {
    <<
      \scoreYChoirPart
      \scoreYChordsPart
      \scoreYBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% es-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalZ = {
  \transpose a ef \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
}

scoreZSoprano = \relative c'' {
  \globalZ
  % Music follows here.
  \transpose a ef \scoreBSoprano
}

scoreZAlto = \relative c' {
  \globalZ
  % Music follows here.
  \transpose a ef \scoreBAlto
}

scoreZTenor = \relative c' {
  \globalZ
  % Music follows here.
  \transpose a ef \scoreBTenor
}

scoreZBass = \relative c {
  \globalZ
  % Music follows here.
  \transpose a ef \scoreBBass
}

scoreZVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreZChordNames = \chordmode {
  \globalZ
  % Chords follow here.
  \transpose a ef \scoreBChordNames
}

scoreZFigBass = \figuremode {
  \globalZ
  % Figures follow here.
  \scoreBFigBass
}

scoreZChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreZSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreZAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreZVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreZTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreZBass }
  >>
>>

scoreZChordsPart = \new ChordNames \scoreZChordNames

scoreZBassFiguresPart = \new FiguredBass \scoreZFigBass

\bookpart {
  \header {
    subtitle = "es-Moll"
  }
  \score {
    <<
      \scoreZChoirPart
      \scoreZChordsPart
      \scoreZBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}
