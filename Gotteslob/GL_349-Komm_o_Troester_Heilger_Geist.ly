\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "Komm, o Tröster, Heilger Geist"
  subtitle = ""
  subsubtitle = "Harmonisierung Gotteslob-Lied 349, inkl. Dux-Comes und Intonation"
  instrument = "Orgel / Chor"
  composer = "M: Bremen 1639"
  arranger = \markup {"Satz: " \with-url #"https://buschke.com" "Sven Buschke"}
  poet = \markup {"T: " \with-url #"https://de.wikipedia.org/wiki/Maria_Luise_Thurmair" "Maria Luise Thurmair" ", 1970"}
  meter = \markup {"nach " \with-url #"https://de.wikipedia.org/wiki/Veni_Sancte_Spiritus" "Veni Sancte Spritus"}
  piece = \markup {\with-url #"https://de.wikipedia.org/wiki/Stephen_Langton" "Stephen Langton" ", 1200"}
  opus = "GL 349 ö"
  copyright = "Satz: Sven Buschke, 19.05.2024"
  tagline = "CF in SATB, sowie Dux-Comes in S"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key e \minor
  \time 6/4
  \tempo "Andante" 4=100
}

cfA = {e2 g4 fs2 b4 a2 g4 fs2.}
cfB = {fs2 g4 a2 b4 b a2 b2.}
cfC = {b2 g4 fs2 e4 e ds2 e2.}
cfAll = {\cfA \breathe \cfB \breathe \cfC }

scoreAMelody = \relative c' {
  \global
  % Music follows here.
  \partial 2. \cfAll \bar "|."
}

AVerseA = \lyricmode {Komm, o Trös -- ter, Heil -- ger Geist
}
AVerseB = \lyricmode {Licht, das uns den Tag ver -- heißt,
}
AVerseC = \lyricmode {Quell, der uns mit Ga -- ben speist.
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  \AVerseA \AVerseB \AVerseC
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

chordsA = \chordmode {e2:min e4:m b2 e4:m a2:m e4:m b2.}
chordsB = \chordmode {b2 e4:m a2:m e4:m e:m a2:m e2.:m}
chordsC = \chordmode {e2:m e4:m b2 e4:m e:m ds2:dim/fs e2.:m}
chordsAll = \chordmode {\chordsA \chordsB \chordsC}
scoreBChordNamesLeadSheet = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \chordsA
  \chordsB
  \chordsC
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

chordsBassA = \chordmode {e2:m e4:m/g ds2:min/fs g4/b a2:m e4:m/g ds2.:dim/fs}
chordsBassB = \chordmode {ds2:dim/fs e4:m/g a2:m g4/b g/b a2:m g2./b}
chordsBassC = \chordmode {g2/b e4:m/g ds2:dim/fs e4:m e:m b2/ds e2.:m}
chordsBassAll = \chordmode { \chordsBassA \chordsBassB \chordsBassC }

scoreBChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \chordsBassAll
}

bassFigIA = \figuremode {s2 s4 s2 s4 s2 s4 s2.}
bassFigIB = \figuremode {s2 s4 s2 s4 s4 s2 s2.}
bassFigIC = \figuremode {s2 s4 s2 s4 s4 <6>2 s2.}
bassFigIAll = \figuremode {\bassFigIA \bassFigIB \bassFigIC}

scoreBFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.
  \bassFigIAll
}

bassFigIIA = \figuremode {s2 <6>4 <6>2 <6>4 s2 <6>4 <6>2.}
bassFigIIB = \figuremode {<6>2 <6>4 s2 <6>4 <6> s2 <6>2.}
bassFigIIC = \figuremode {<6>2 <6>4 <6>2 s4 s4 <6>2 s2.}
bassFigIIAll = \figuremode {\bassFigIIA \bassFigIIB \bassFigIIC}

scoreBFigBassBassFiguresII = \figuremode {
  \global
  % Figures follow here.
  \bassFigIIAll
}

scoreBLeadSheetPart = <<
  \new ChordNames \scoreBChordNamesLeadSheet
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreBMelody }
  \addlyrics { \scoreBVerse }
>>

scoreBChordsPart = \new ChordNames \scoreBChordNamesChords

scoreBBassFiguresIPart = \new FiguredBass \scoreBFigBassBassFiguresI

scoreBBassFiguresIIPart = \new FiguredBass \scoreBFigBassBassFiguresII

\bookpart {
  \header {
    subtitle = "Cantus Firmus, mit Akkorden und Bassbezifferung"
  }  
  \score {
    <<
      \scoreBLeadSheetPart
      \scoreBChordsPart
      \scoreBBassFiguresIPart
      \scoreBBassFiguresIIPart
    >>
    \layout { }
    \midi { }
  }
}

bCfSA = {e2 e4 dss2 g4 a2 e4 dff2.}
bCfSB = {dff2 e4 e2 g4 g4 a2 g2.}
bCfSC = {g2 e4 dss2 e4 e b2 b2.}
bCfSAll = {\bCfSA \breathe \bCfSB \breathe \bCfSC}

duxSA = {\cfA}
duxSB = {}
duxSC = {}

biciniumSA = {css}
biciniumSB = {}
biciniumSC = {}

codettaISA = {css}
codettaISB = {}
codettaISC = {}

bDuxSA = {css}
bDuxSB = {}
bDuxSC = {}

aComesSA = {css}
aComesSB = {}
aComesSC = {}

codettaIISA = {css}
codettaIISB = {}
codettaIISC = {}

altoA = {g2 b4 b2 e4 c2 b4 b2.}
altoB = {b2 b4 c2 e4 e c2 e2.}
altoC = {e2 b4 b2 g4 g fs2 g2.}
altoAll = {\altoA \breathe \altoB \breathe \altoC}

bCfAA = {g2 b4 a2 d4 c2 b4 a2.}
bCfAB = {a2 b4 a2 d4 d c2 d2.}
bCfAC = {d2 b4 a2 g4 g fs2 e2.}
bCfAAll = {\bCfAA \breathe \bCfAB \breathe \bCfAC}

duxRestA = {}
duxRestB = {}
duxRestC = {}

codettaIRestA = {}
codettaIRestB = {}
codettaIRestC = {}

comesAA = {}
comesAB = {}
comesAC = {}

codettaAA = {}
codettaAB = {}
codettaAC = {}

tenorA = {b,2 e4 d2 g4 e2 e4 d2.}
tenorB = {d2 e4 e2 g4 g e2 g2.}
tenorC = {g2 e4 d2 b4 b a2 b2.}
tenorAll = {\tenorA \breathe \tenorB \breathe \tenorC}

bCfTA = {b2 e4 dss2 g4 e2 e4 ds2.}
bCfTB = {ds2 e4 c2 g'4 g e2 g2.}
bCfTC = {g2 e4 ds2 b4 b b2 g2.}
bCfTAll = {\bCfTA \breathe \bCfTB \breathe \bCfTC}

comesTA = {}
comesTB = {}
comesTC = {}

codettaITA = {}
codettaITB = {}
codettaITC = {}

bDuxTA = {}
bDuxTB = {}
bDuxTC = {}

aComesTA = {}
aComesTB = {}
aComesTC = {}

codettaIITA = {}
codettaIITB = {}
codettaIITC = {}

bassA = {e,2 e4 b2 e4 a2 e4 b2.}
bassB = {b2 e4 a2 e4 e a2 e2.}
bassC = {e2 e4 b2 e4 e fs2 e2.}
bassAll = {\bassA \breathe \bassB \breathe \bassC}

duxBA = {}
duxBB = {}
duxBC = {}

aComesBA = {}
aComesBB = {}
aComesBC = {}

codettaIIBA = {}
codettaIIBB = {}
codettaIIBC = {}

scoreCSoprano = \relative c'' {
  \global
  % Music follows here.
  \breathe^"S" \scoreAMelody
  \bar "||"^"Dux S a" \duxSA \breathe^"Bicinium b" \biciniumSA \breathe^"Codetta I S a" \codettaISA \breathe^"ad B Dux S a" \bDuxSA \breathe^"ad A Comes S a" \aComesSA \breathe^"Codetta II S a" \codettaIISA
  \bar "|."
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  \breathe^"A"
  \altoAll
%  \duxRestA \breathe \duxRestA \breathe \codettaIRestA \breathe \duxRestA \breathe \comesAA \breathe \codettaAA
%  \bar "|."
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  \breathe^"T"
  \tenorAll
%  \bar "|."
%  \duxRestA \breathe \comesTA \breathe \bDuxTA \breathe \aComesTA \breathe \codettaIITA
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  \breathe^"B"
  \bassAll
%  \bar "|."
%  \duxRestA \breathe \duxRestA \breathe \codettaIRestA \duxBA \breathe \aComesBA \breathe \codettaIIBA
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreCRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreCSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreCAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreCTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreCBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \chordsAll
}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.
  \bassFigIAll
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
    subtitle = "Cantus Firmus im Sopran, mit Intonation und Dux-Comes"
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

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreCRehearsalMidi "soprano" "soprano sax" \scoreCVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreCRehearsalMidi "alto" "soprano sax" \scoreCVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreCRehearsalMidi "tenor" "tenor sax" \scoreCVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreCRehearsalMidi "bass" "tenor sax" \scoreCVerse
    \midi { }
  }
}


scoreDSoprano = \relative c'' {
  \global
  % Music follows here.
  \breathe^"S" \altoAll
}

scoreDAlto = \relative c'' {
  \global
  % Music follows here.
  \breathe^"A" \tenorAll
}

scoreDTenor = \relative c {
  \global
  % Music follows here.
  \breathe^"T"
  \cfAll
  \bar "|."
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  \breathe^"B" \bassAll
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreDRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreDSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreDAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreDTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreDBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \chordsAll
}

scoreDFigBass = \figuremode {
  \global
  % Figures follow here.
  \bassFigIAll
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

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreDRehearsalMidi "soprano" "soprano sax" \scoreDVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreDRehearsalMidi "alto" "soprano sax" \scoreDVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreDRehearsalMidi "tenor" "tenor sax" \scoreDVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreDRehearsalMidi "bass" "tenor sax" \scoreDVerse
    \midi { }
  }
}


scoreESoprano = \relative c' {
  \global
  % Music follows here.
  \breathe^"S" \bCfSAll
}

scoreEAlto = \relative c' {
  \global
  % Music follows here.
  \breathe^"A" \bCfAAll
}

scoreETenor = \relative c {
  \global
  % Music follows here.
  \breathe^"T" \bCfTAll
  
}

scoreEBass = \relative c, {
  \global
  % Music follows here.
  \breathe^"B"
  \cfAll
  \bar "|."
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreERehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreESoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreEAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreETenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreEBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreEChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \chordsBassAll
}

scoreEFigBass = \figuremode {
  \global
  % Figures follow here.
  \bassFigIIAll
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

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreERehearsalMidi "soprano" "soprano sax" \scoreEVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreERehearsalMidi "alto" "soprano sax" \scoreEVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreERehearsalMidi "tenor" "tenor sax" \scoreEVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreERehearsalMidi "bass" "tenor sax" \scoreEVerse
    \midi { }
  }
}


scoreFSoprano = \relative c'' {
  \global
  % Music follows here.
  \breathe^"S" \altoAll
}

scoreFAlto = \relative c' {
  \global
  % Music follows here.
  \breathe^"A" \cfAll
  \bar "|."
}

scoreFTenor = \relative c' {
  \global
  % Music follows here.
  \breathe^"T" \tenorAll
}

scoreFBass = \relative c {
  \global
  % Music follows here.
  \breathe^"B" \bassAll
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreFRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreFSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreFAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreFTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreFBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreFChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \chordsAll
}

scoreFFigBass = \figuremode {
  \global
  % Figures follow here.
  \bassFigIAll
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

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreFRehearsalMidi "soprano" "soprano sax" \scoreFVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreFRehearsalMidi "alto" "soprano sax" \scoreFVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreFRehearsalMidi "tenor" "tenor sax" \scoreFVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreFRehearsalMidi "bass" "tenor sax" \scoreFVerse
    \midi { }
  }
}

