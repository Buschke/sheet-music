#(ly:set-option 'compile-scheme-code)
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

verseA = \lyricmode {o Trös -- ter, Heil -- ger Geist
}
verseB = \lyricmode {das uns den Tag ver -- heißt,
}
verseC = \lyricmode {der uns mit Ga -- ben speist.
}
verseCodettaA = \lyricmode {Da da da da
}
verseCodettaB = \lyricmode {\verseCodettaA}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Komm, \verseA Licht, \verseB Quell, \verseC
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
chordsCodettaA = \chordmode {a4:m b e:m}
chordsCodettaB = \chordmode {\chordsCodettaA}

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

chordsBassA = \chordmode {e2:m g4 d2/fs g4/b a2:m g4 ds2.:dim/fs}
chordsBassB = \chordmode {ds2:dim/fs e4:m/g a2:m g4/b g/b a2:m g2./b}
chordsBassC = \chordmode {b2 e4:m/g ds2:dim/fs e4:m e:m b2/ds e2.:m}
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
bassFigCodettaA = \figuremode {s4 s s s}
bassFigCodettaB = \figuremode {\bassFigCodettaA}
bassFigIAll = \figuremode {\bassFigIA \bassFigIB \bassFigIC}

scoreBFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.
  \bassFigIAll
}

bassFigIIA = \figuremode {s2 s4 <6>2 s4 s2 s4 <6>2.}
bassFigIIB = \figuremode {<6>2 <6>4 s2 <6>4 <6> s2 <6>2.}
bassFigIIC = \figuremode {s2 <6>4 <6>2 s4 s4 <6>2 s2.}
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

bCfSA = {e2 d4 d2 d4 e2 g4 a2.}
bCfSB = {ds,2 e4 e2 d4 d4 e2 d2.}
bCfSC = {ds2 e4 ds2 e4 e b2 b2.}
bCfSAll = {\bCfSA \breathe \bCfSB \breathe \bCfSC}

duxSA = \cfA
duxSB = \cfB
duxSC = \cfC

biciniumSA = {\transpose e b {g2 b4 a2 d4 c2 b4 a2.}} 
biciniumSB = {\transpose e b {a2 b4 c2 d4 d c2 d2.}}
biciniumSC = {\transpose e b {d2 b4 a2 g4 g fs2 g2.}}

codettaISA = {a4 b e}
codettaISB = \codettaISA
codettaISC = \codettaISA

bDuxSA = \bCfSA
bDuxSB = \bCfSB
bDuxSC = \bCfSC

codettaIISA = \codettaISA
codettaIISB = \codettaIISA
codettaIISC = \codettaIISA

altoA = {g2 b4 b2 e4 c2 b4 b2.}
altoB = {b2 b4 c2 e4 e c2 e2.}
altoC = {e2 b4 b2 g4 g fs2 g2.}
altoAll = {\altoA \breathe \altoB \breathe \altoC}

aComesSA = \transpose e b \altoA
aComesSB = \transpose e b \altoB
aComesSC = \transpose e b \altoC

bCfAA = {g2 g4 a2 g4 a2 b4 ds2.}
bCfAB = {fs,2 b4 a2 g4 g a2 g2.}
bCfAC = {fs2 b4 a2 g4 g fs2 e2.}
bCfAAll = {\bCfAA \breathe \bCfAB \breathe \bCfAC}

duxRestA = {r4 r2 r4 r2 r4 r2.}
duxRestB = {r4 r2 r4 r r2 r2.}
duxRestC = {r4 r2 r4 r r2 r2.}

codettaIRestA = {r4 r r}
codettaIRestB = \codettaIRestA
codettaIRestC = \codettaIRestA

comesAA = \transpose e b \cfA
comesAB = \transpose e b \cfB
comesAC = \transpose e b \cfC

codettaAA = {c4 ds e }
codettaAB = \codettaAA
codettaAC = \codettaAA

tenorA = {b2 e4 d2 g4 e2 e4 d2.}
tenorB = {d2 e4 e2 g4 g e2 g2.}
tenorC = {g2 e4 d2 b4 b a2 b2.}
tenorAll = {\tenorA \breathe \tenorB \breathe \tenorC}

#(define (average a b c) (/ (+a b c) 3))

% Tonumfang Sopran, Alt, Tenor, Bariton, Bass 
%\fixed c {\clef treble c'32^\markup{"Tonumfang SATBaB" \with-url #"https://en.wikipedia.org/wiki/Vocal_range" "Wiki"} c''' f f'' \clef bass \tuplet 3/2 {  c c'' a, } \tuplet 3/2 {  a' e, e'} }
bCfTA = {b2 b4 d2 d4 c2 d4 fs2.}
bCfTB = {a,2 e'4 c2 d4 d c2 d2.}
bCfTC = {b2 e4 fs2 b,4 b b2 g2.}
bCfTAll = {\bCfTA \breathe \bCfTB \breathe \bCfTC}

comesTA = \transpose e b \cfA
comesTB = \transpose e b \cfB
comesTC = \transpose e b \cfC

codettaITA = {e4 fs e}
codettaITB = \codettaITA
codettaITC = \codettaITA

bDuxTA = \bCfTA
bDuxTB = \bCfTB
bDuxTC = \bCfTC

aComesTA = \transpose e b \tenorA
aComesTB = \transpose e b \tenorB
aComesTC = \transpose e b \tenorC

codettaIITA = \codettaITA
codettaIITB = \codettaIITA
codettaIITC = \codettaIITA

bassA = {e2 e4 b2 e4 a2 e4 b2.}
bassB = {b2 e4 a2 e4 e a2 e2.}
bassC = {e2 e4 b2 e4 e fs2 e2.}
bassAll = {\bassA \breathe \bassB \breathe \bassC}

duxBA = \cfA
duxBB = \cfB
duxBC = \cfC

aComesBA = \transpose e b \bassA
aComesBB = \transpose e b \bassB
aComesBC = \transpose e b \bassC

codettaIIBA = {a4 b e}
codettaIIBB = \codettaIIBA
codettaIIBC = \codettaIIBA

scoreCSoprano = \relative c' {
  \global
  % Music follows here.
  \breathe^"S" \scoreAMelody
  % Part a
  \bar "||"^"Dux S a" \duxSA \breathe^"Bicinium S a" \biciniumSA \breathe^"Codetta I S a" e4 \codettaISA \breathe^"ad B Dux S a" \bDuxSA \breathe^"ad A Comes S a" \aComesSA \breathe^"Codetta II S a" fs,4 \codettaIISA 
% Part b
\bar "||"^"Dux S b" \duxSB \breathe^"Bicinium S b" \biciniumSB \breathe^"Codetta I S b" e,4 \codettaISB \breathe^"ad B Dux S b" \bDuxSB \breathe^"ad A Comes S b" \aComesSB \breathe^"Codetta II S b" fs,4 \codettaIISB
% Part c
\bar "||"^"Dux S c" \duxSC \breathe^"Bicinium S c" \biciniumSC \breathe^"Codetta I S c" e,4 \codettaISC \breathe^"ad B Dux S c" \bDuxSC \breathe^"ad A Comes S c" \aComesSC \breathe^"Codetta II S c" fs4 \codettaIISC  \bar "|."
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  \breathe^"A"
  \altoAll \bar "||"^"A"
    % Part a
  r2 \duxRestA \breathe r2 \duxRestA \breathe r4 \codettaIRestA \breathe r2 \duxRestA \breathe^"Comes A a" \comesAA \breathe^"Codetta II A a" cs4 \codettaAA \bar "||"^"A"
    % Part b
  r2 \duxRestB \breathe r2 \duxRestB \breathe r4 \codettaIRestB \breathe r2 \duxRestB \breathe^"Comes A b" \comesAB \breathe^"Codetta II A b" cs4 \codettaAB \bar "||"^"A"
    % Part c
  r2 \duxRestC \breathe r2 \duxRestC \breathe r4 \codettaIRestC \breathe r2 \duxRestC \breathe^"Comes A c" \comesAC \breathe^"Codetta II A c" cs4 \codettaAC \bar "|."
}

scoreCTenor = \relative c {
  \global
  % Music follows here.
  \breathe^"T"
  \tenorAll \bar "||"^"T"
    % Part a
  r2 \duxRestA \breathe^"Comes T a" \comesTA \breathe^"Codetta I T a" cs'4 \codettaITA \breathe^"ad B Dux T a" \bDuxTA \breathe^"ad A Comes T a" \aComesTA \breathe^"Codetta II T a" a,4 \codettaIITA \bar "||"^"T"
      % Part b
  r2 \duxRestB \breathe^"Comes T b" \comesTB \breathe^"Codetta I T b" cs4 \codettaITB \breathe^"ad B Dux T b" \bDuxTB \breathe^"ad A Comes T b" \aComesTB \breathe^"Codetta II T b" a'4 \codettaIITB \bar "||"^"T"
      % Part c
  r2 \duxRestC \breathe^"Comes T c" \comesTC \breathe^"Codetta I T c" cs4 \codettaITC \breathe^"ad B Dux T c" \bDuxTC \breathe^"ad A Comes T c" \aComesTC \breathe^"Codetta II T c" a''4 \codettaIITC \bar "|."
}

scoreCBass = \relative c, {
  \global
  % Music follows here.
  \breathe^"B"
  \bassAll \bar "||"^"B"
      % Part a

  r2 \duxRestA \breathe r2 \duxRestA \breathe r4 \codettaIRestA \breathe^"Dux B a" \duxBA \breathe^"ad A Comes B a" \aComesBA \breathe^"Codetta II B a" fs4 \codettaIIBA \bar "||"^"B"
      % Part b
  r2 \duxRestB \breathe r2 \duxRestB \breathe r4 \codettaIRestB \breathe^"Dux B b" \duxBB \breathe^"ad A Comes B b" \aComesBB \breathe^"Codetta II B b" fs,4 \codettaIIBB \bar "||"^"B"
      % Part c
  r2 \duxRestC \breathe r2 \duxRestC \breathe r4 \codettaIRestC \breathe^"Dux B c" \duxBC \breathe^"ad A Comes B c" \aComesBC \breathe^"Codetta II B c" fs,4 \codettaIIBC \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
  Komm, \verseA Komm, \verseA \verseCodettaA Komm, \verseA Komm, \verseA \verseCodettaB
  Licht, \verseB Licht, \verseB \verseCodettaA Licht, \verseB Licht, \verseB \verseCodettaB
  Quell, \verseC Quell, \verseC \verseCodettaA Quell, \verseC Quell, \verseC \verseCodettaB
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
  \chordsAll \bar "||"
  \chordsA \transpose e b \chordsA fs4 \chordsCodettaA \chordsBassA \transpose e b \chordsA fs4 \chordsCodettaB
  \chordsB \transpose e b \chordsB fs4 \chordsCodettaA \chordsBassB \transpose e b \chordsB fs4 \chordsCodettaB
  \chordsC \transpose e b \chordsC fs4 \chordsCodettaA \chordsBassC \transpose e b \chordsC fs4 \chordsCodettaB
  \bar "|."
}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.
  \bassFigIAll \bar "||"
  \bassFigIA \bassFigIA \bassFigCodettaA \bassFigIIA \bassFigIA \bassFigCodettaB
  \bassFigIB \bassFigIB \bassFigCodettaA \bassFigIIB \bassFigIB \bassFigCodettaB
  \bassFigIC \bassFigIC \bassFigCodettaA \bassFigIIC \bassFigIC \bassFigCodettaB
  \bar "|."
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


scoreESoprano = \relative c'' {
  \global
  % Music follows here.
  \breathe^"S" \bCfSAll
}

scoreEAlto = \relative c'' {
  \global
  % Music follows here.
  \breathe^"A" \bCfAAll
}

scoreETenor = \relative c' {
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

