\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "O Traurigkeit, o Herzeleid!"
  subtitle = ""
  subsubtitle = ""
  instrument = "Orgel / Chor"
  composer = "M: Mainz / Würzburg 1628"
  arranger = \markup {"Satz: " \with-url #"https://buschke.com" "Sven Buschke"}
  poet = "T: Friedrich Spee, 1628"
  meter = ""
  piece = ""
  opus = "GL 295"
  copyright = \markup {"Satz: © 16.05.2024" \with-url #"https://buschke.com" "Sven Buschke"}
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key e \minor
  \time 2/2
  \tempo "Andante" 4=100
}

cfAMOne = {
  % first: b2
  g4 e fs2 r4
}

cfRestA = {
  %first r2
  r4 s s2 s4}

cfB = {
  ds e e ds2 r4
}

cfRestB = {r4 s s s2 s4}

cfC = {
  b'4 b b c b a2 g\breathe
}

cfRestC = {r4 s s s s s2 s\breathe}

cfD = {
  fs4 g a b a g fs2
}

cfRestD= {r4 s s s s s s2}

cfE = {
  e4 fs g a fs2 e
}

cfRestE = {r4 r r r r2 r}

cfAllMOne = {
  \cfAMOne
  \cfB
  \cfC
  \cfD
  \cfE  
}

% cfAll = {
%   \cfA
%   \cfB
%   \cfC
%   \cfD
%   \cfE
% }

scoreAMelody = \relative c'' {
  \global
  % Music follows here.
  b2
  \cfAllMOne
  \bar "|."
}

verseAMOne = \lyricmode {
  Trau -- rig -- keit
}
verseB= \lyricmode {
  o Her -- ze -- leid!
}

verseC = \lyricmode {
  Ist das denn nicht zu kla -- gen:
}

verseD = \lyricmode {
  Gott des Va -- ters ei -- nigs Kind
}

verseE = \lyricmode {
  wird zum Grab ge -- tra -- gen.
}

verseAllMOne = \lyricmode {
  \verseAMOne
  \verseB
  \verseC
  \verseD
  \verseE  
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  O
  \verseAllMOne
}

\bookpart {
  \header {
    subtitle = "Cantus Firmus (C.F.)"
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

chordsAMOne = \chordmode {
  % first: e2:m
  e4:m e4:m d2:m s4
}

chordsB = \chordmode {
  b4 e:m a:m d2:m s4
}

chordsC = \chordmode {
  e4:m e:m e:m a:m e:m a2:m e:m\breathe
}

chordsD = \chordmode {
  b4 e:m a:m e:m a:m e:m b2
}

chordsE = \chordmode {
  e4:m b e:m a:m b2 e:m
}

chordsAllMOne = {
  \chordsAMOne
  \chordsB
  \chordsC
  \chordsD
  \chordsE
}

chordsBassAMOne = \chordmode {
  % first: b2
  e4:m/g e d2/fs s4
}

chordsBassB = \chordmode {
  b4/ds e e b2/ds s4
}

chordsBassC = \chordmode {
  b4 b b a/cs b a2:m e:m/g\breathe
}

chordsBassD = \chordmode {
  d4:m e:m/g a:m b a:m e:m/g ds2:min/fs
}

chordsBassE = \chordmode {
  e4:m d/fs e:m/g a:m d2/fs e2:m
}

chordsBaseAllMOne = {
  \chordsBassAMOne
  \chordsBassB
  \chordsBassC
  \chordsBassD
  \chordsBassE
}

scoreBChordNamesLeadSheet = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  e2:m 
  \chordsAllMOne
  \bar "|."
}

scoreBMelody = \relative c'' {
  \global
  % Music follows here.
  b2
  \cfAllMOne
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  O
  \verseAllMOne
}

scoreBChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  b2
  \chordsBaseAllMOne
  \bar "|."
}

scoreBLeadSheetPart = <<
  \new ChordNames \scoreBChordNamesLeadSheet
  \new Staff { \scoreBMelody }
  \addlyrics { \scoreBVerse }
>>

scoreBChordsPart = \new ChordNames \scoreBChordNamesChords

\bookpart {
  \header {
    subtitle = "Cantus Firmus (C.F.) und Akkorde"
  }
  \score {
    <<
      \scoreBLeadSheetPart
      \scoreBChordsPart
    >>
    \layout { }
    \midi { }
  }
}

biciniumA = { fs4 d e2 r4\breathe}
biciniumB = { c d d c2 r4\breathe}
biciniumC = { fs4 d e2 r4\breathe}
biciniumD = { fs4 d e2 r4\breathe}
biciniumE = { fs4 d e2 r4\breathe}

codettaOneSA = {fs4 c ds e\breathe}
codettaOneSC = {fss4 c ds e\breathe}
codettaOneSD = {fss4 c ds e\breathe}
codettaOneSE = {fss4 c ds e\breathe}
codettaOneTA = {d4 a b g\breathe}
codettaOneTC = {d4 a b g\breathe}
codettaOneTD = {d4 a b g\breathe}
codettaOneTE = {d4 a b g\breathe}

codettaTwoSA = {cs,4 e' fs g\breathe}
codettaTwoSC = {cs,4 e' fs g\breathe}
codettaTwoSD = {cs,4 e' fs g\breathe}
codettaTwoSE = {cs,4 e' fs g\breathe}

codettaTwoAA = {as4 a' b b\breathe}
codettaTwoAC = {css4 e e e\breathe}
codettaTwoAD = {css4 e e e\breathe}
codettaTwoAE = {css4 e e e\breathe}

codettaTwoTA = {a4 c ds e\breathe}
codettaTwoBA = {a'4 a b e,\breathe}

codettaTwoBA = {css4 e e e\breathe}
codettaTwoBC = {css4 e e e\breathe}
codettaTwoBD = {css4 e e e\breathe}
codettaTwoBE = {css4 e e e\breathe}

codettaVerseOneA = \lyricmode {
  Da da da da
}
codettaVerseOneB = \codettaVerseOneA
codettaVerseOneC = \codettaVerseOneA
codettaVerseOneD = \codettaVerseOneA
codettaVerseOneE = \codettaVerseOneA
codettaVerseTwoA = \codettaVerseOneA
codettaVerseTwoA = \codettaVerseOneA
codettaVerseTwoB = \codettaVerseOneA
codettaVerseTwoC = \codettaVerseOneA
codettaVerseTwoD = \codettaVerseOneA
codettaVerseTwoE = \codettaVerseOneA

% codettaOneB = \codettaOneA
% codettaTwoB = \codettaTwoA
% 
% codettaOneC = \codettaOneA
% codettaTwoB = \codettaTwoA
% 
% codettaOneD = \codettaOneA
% codettaTwoB = \codettaTwoA
% 
% codettaOneE = \codettaOneA
% codettaTwoB = \codettaTwoA

codettaBicA = {df f4 c c c\breathe}

codettaBicB = {\codettaBicA}

codettaBicC = {\codettaBicA}

codettaBicD = {\codettaBicA}

codettaBicE = {\codettaBicA}

codettaRestA = {s4 s s s}

codettaRestB = {\codettaRestA}

codettaRestC = {\codettaRestA}

codettaRestD = {\codettaRestA}

codettaRestE = {\codettaRestA}

altoA = {
  %first e2
  b4 g a2 r4
}

altoB = {
  fs g a fs2 r4
}

altoC = {
  e'4 e e e e c2 b\breathe 
}

altoD = {
  b4b c e c b b2
}

altoE = {
  g4 b b c b2 g
}

tenorA= {
  %first: g2
  e4 b d2 r4
}

tenorB = {
  b4 b c d2 r4 
}

tenorC = {
  g4 g g a g e2 e\breathe
}

tenorD = {
  d4 e e g e e d2
}

tenorE = {
  b4 d e e d2 b
}

sopranBassCFA = {
  % First: d2
  e4 e4 d2 r4
}

sopranBassCFB = {
  b4 b b b2 r4
}

sopranBassCFC = {
  b4 b b a d e2 e\breathe
}

sopranBassCFD = {
  d4 e e d e e4 ds2
}

sopranBassCFE = {
  e4 d e e d2 e
}

tenorBassCFA = {
  % First: b2
  e4 b d2 r4
}

tenorBassCFB = {
  b4 g g b2 r4
}

tenorBassCFC = {
  fs4 fs fs a b c2 e\breathe
}

tenorBassCFD = {
  a,4 e' c d c e a,2
}

tenorBassCFE = {
  b4 a e c' a2 b
}

bassA = {
  %first: e2
  e4 e d2 r4
}

bassB = {
  b'4 e, a d,2 r4
}

bassC = {
  e4 e e a e a2 e\breathe
}

bassD = {
  b'4 e, a e a e b'2
}

bassE = {
  e,4 b' e, a b2 e,
}

adDuxTwoSA = {d'2 \sopranBassCFA \sopranBassCFB}
adDuxTwoSC = {d'2 \sopranBassCFA \sopranBassCFB}
adDuxTwoSD = {d'2 \sopranBassCFA \sopranBassCFB}
adDuxTwoSE = {d'2 \sopranBassCFA \sopranBassCFB}

adComesTwoSA = \transpose e b {e'2 \altoA \altoB}
adComesTwoSC = \transpose e b {e'2 \altoA \altoB}
adComesTwoSD = \transpose e b {e'2 \altoA \altoB}
adComesTwoSE = \transpose e b {e'2 \altoA \altoB}

adDuxTwoTA = {b2 \tenorBassCFA \tenorBassCFB}
adDuxTwoTC = {b2 \tenorBassCFA \tenorBassCFB}
adDuxTwoTD = {b2 \tenorBassCFA \tenorBassCFB}
adDuxTwoTE = {b2 \tenorBassCFA \tenorBassCFB}

comesTwoAA = \transpose e b {b2 \cfAMOne \cfB}
comesTwoAC = \transpose e b {b2 \cfAMOne \cfB}
comesTwoAD = \transpose e b {b2 \cfAMOne \cfB}
comesTwoAE = \transpose e b {b2 \cfAMOne \cfB}

adComesTwoTA = \transpose e b {g2 e4 b, d2 r4 b,4 b, c d2 r4}
adComesTwoTC = \transpose e b {g2 e4 b, d2 r4 b,4 b, c d2 r4}
adComesTwoTD = \transpose e b {g2 e4 b, d2 r4 b,4 b, c d2 r4}
adComesTwoTE = \transpose e b {g2 e4 b, d2 r4 b,4 b, c d2 r4}

adComesTwoBA = \transpose e b, {e2 \bassA b,4 e a, d2 r4}
adComesTwoBC = \transpose e b, {e2 \bassA b,4 e a, d2 r4}
adComesTwoBD = \transpose e b, {e2 \bassA b,4 e a, d2 r4}
adComesTwoBE = \transpose e b, {e2 \bassA b,4 e a, d2 r4}

scoreCSoprano = \relative c'' {
  \global
  % Music follows here.
  b2 \cfAllMOne r2\fermata \bar "||"
  % Part a, b
  b'2^"Dux 1ab S" \cfAMOne \cfB \breathe a'2^"Bicinium 1ab ST" \biciniumA \biciniumB \breathe^"Codetta 1ab ST" \codettaOneSA \breathe^"ad Dux 2ab BST" \adDuxTwoSA \breathe^"Ad Comes 2ab SATB" \adComesTwoSA \breathe^"Codetta 2ab SATB" \codettaTwoSA
  % Part c
  \fermata^"Dux 1c S"
  \cfC \breathe a'2^"Bicinium 1b ST" \biciniumC \breathe^"Codetta 1c ST" \codettaOneSC \breathe^"ad Dux 2c BST" \adDuxTwoSC \breathe^"Ad Comes 2c SATB" \adComesTwoSC \breathe^"Codetta 2c SATB" \codettaTwoSC
  % Part d
  \fermata^"Dux 1d S"
  \cfD \breathe a'2^"Bicinium 1d ST" \biciniumD \breathe^"Codetta 1d ST" \codettaOneSD \breathe^"ad Dux 2d BST" \adDuxTwoSD \breathe^"Ad Comes 2d SATB" \adComesTwoSD \breathe^"Codetta 2d SATB" \codettaTwoSD
  % Part e
  \fermata^"Dux 1e S"
  \cfE \breathe a'2^"Bicinium 1e ST" \biciniumE \breathe^"Codetta 1e ST" \codettaOneSE \breathe^"ad Dux 2e BST" \adDuxTwoSE \breathe^"Ad Comes 2e SATB" \adComesTwoSE \breathe^"Codetta 2e SATB" \codettaTwoSE
}

altoAll = {
  \altoA
  \altoB
  \altoC
  \altoD
  \altoE
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  e2 \altoAll r2\fermata \bar "||"
  % Part a, b
  r2 \cfRestA \cfRestB \breathe r2 \cfRestA \cfRestB \breathe \codettaRestA \breathe r2 \cfRestA \cfRestB \breathe^"Comes 2ab ASTB" \comesTwoAA \breathe^"Codetta 2ab ASTB" \codettaTwoAA
  % Part c
  \fermata
  \cfRestC \breathe \cfRestC \breathe \codettaRestC \breathe \cfRestC \breathe^"Comes 2c ASTB" \comesTwoAC \breathe^"Codetta 2c ASTB" \codettaTwoAC  
  % Part d
  \fermata
  \cfRestD \breathe \cfRestD \breathe \codettaRestD \breathe \cfRestD \breathe^"Comes 2d ASTB" \comesTwoAD \breathe^"Codetta 2d ASTB" \codettaTwoAD  
  % Part e
  \fermata
  \cfRestE \breathe \cfRestE \breathe \codettaRestE \breathe \cfRestE \breathe^"Comes 2e ASTB" \comesTwoAE \breathe^"Codetta 2e ASTB" \codettaTwoAE  
}

tenorAll = {
  \tenorA
  \tenorB
  \tenorC
  \tenorD
  \tenorE
}

comesA = {
  %first fs
  
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  g2 \tenorAll r2\fermata \bar "||"
  % Part a, b
  r2 \cfRestA \cfRestB \breathe fs''2^"Comes 1a TS" \transpose e b {b2 \cfAMOne \cfB} \breathe^"Codetta 1a ST" \codettaOneTA \breathe^"ad Dux 2a BST" \adDuxTwoTA \breathe^"Ad Comes 2a TSAB" \adComesTwoTA \breathe^"Codetta 2a TSAB" \codettaTwoTA
  % Part c
  \cfRestC \breathe fs''2^"Comes 1c TS" \transpose e b \cfC \breathe^"Codetta 1c ST" \codettaOneTC \breathe^"ad Dux 2c BST" \adDuxTwoTC \breathe^"Ad Comes 2c TSAB" \adComesTwoTC \breathe^"Codetta 2c TSAB" \codettaTwoTC
  % Part d
  \cfRestD \breathe fs''2^"Comes 1d TS" \transpose e b \cfD \breathe^"Codetta 1d ST" \codettaOneTD \breathe^"ad Dux 2d BST" \adDuxTwoTD \breathe^"Ad Comes 2d TSAB" \adComesTwoTD \breathe^"Codetta 2d TSAB" \codettaTwoTD
  % Part e
  \cfRestE \breathe fs''2^"Comes 1e TS" \transpose e b \cfE \breathe^"Codetta 1e ST" \codettaOneTE \breathe^"ad Dux 2e BST" \adDuxTwoTE \breathe^"Ad Comes 2e TSAB" \adComesTwoTE \breathe^"Codetta 2e TSAB" \codettaTwoTE
}

bassAll = {
  \bassA
  \bassB
  \bassC
  \bassD
  \bassE
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  e,2 \bassAll r2\fermata \bar "||"
  % Part a, b
  r2 \cfRestA \cfRestB \breathe r2 \cfRestA \cfRestB \breathe \codettaRestA \breathe b'2^"Dux 2a BST" \cfAMOne \cfB \breathe^"Ad Comes 2a BAST" \adComesTwoBA\breathe^"Codetta 2a BSAT" \codettaTwoBA
  % Part c
  \cfRestC \breathe \cfRestC \breathe \codettaRestC \breathe b'2^"Dux 2c BST" \cfC \breathe^"Ad Comes 2c BAST" \adComesTwoBC \breathe^"Codetta 2c BSAT" \codettaTwoBC
  % Part d
  \cfRestD \breathe \cfRestD \breathe \codettaRestD \breathe b'2^"Dux 2d BST" \cfD \breathe^"Ad Comes 2d BAST" \adComesTwoBD \breathe^"Codetta 2d BSAT" \codettaTwoBD
  % Part e
  \cfRestE \breathe \cfRestE \breathe \codettaRestE \breathe b'2^"Dux 2e BST" \cfE \breathe^"Ad Comes 2e BAST" \adComesTwoBE \breathe^"Codetta 2e BSAT" \codettaTwoBE
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  O \verseAllMOne
  O \verseAMOne \verseB
  O \verseAMOne \verseB \codettaVerseOneA
  O \verseAMOne \verseB
  O \verseAMOne \verseB \codettaVerseTwoA
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
  e2:m \chordsAllMOne s2\bar "||"
  e2:m \chordsAMOne \chordsB \transpose e b { e2:m \chordsAMOne \chordsB }
  % Codetta 1a
  d4:m a:m b e:m
  b2:m \chordsBassAMOne \chordsBassB \transpose e b {b2:m \chordsBassAMOne \chordsBassB}
}

figAMOne = \figuremode {
  %first: <6>2
  <5 3>4 s4 s2 s4
}

figB = \figuremode {
 s4 s s s2 s4  
}

figC = \figuremode {
  s4 s s s s s2 s
}

figD = \figuremode {
  s4 s s s s s s2
}

figE = \figuremode {
  s4 s s s s2 s
}

figAllMOne = {
  \figAMOne
  \figB
  \figC
  \figD
  \figE
}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.
  <5 3>2
  \figAllMOne s2 \bar "||"
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
    subtitle = "C.F. im Sopran, Dux & Comes"
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
  e2 \altoAll \bar "|."
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  g'2 \tenorAll \bar "||."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  b2 \cfAllMOne \bar "|."
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  e,2 \bassAll \bar "|."  
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  O
  \verseAllMOne
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
  e2:m 
  \chordsAllMOne
  \bar "|."
}

scoreDFigBass = \figuremode {
  \global
  % Figures follow here.
  <5 3>2
  \figAllMOne
  \bar "|."

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
    subtitle = "C.F. im Tenor"
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

sopranBassCFAll = {
  \sopranBassCFA
  \sopranBassCFB
  \sopranBassCFC
  \sopranBassCFD
  \sopranBassCFE
}

scoreESoprano = \relative c'' {
  \global
  % Music follows here.
   d2 \sopranBassCFAll \bar "|."
}

altoBassCFA = {
  g4 g a2 r4
}

altoBassCFB = {
  fs4 e e fs2 r4
}

altoBassCFC = {
  d4 d d e fs a2 b\breathe
}

altoBassCFD = {
  fs4 b a fs a b fs2
}

altoBassCFE = {
  g4 fs b a fs2 g
}

altoBassCFAll = {
  \altoBassCFA
  \altoBassCFB
  \altoBassCFC
  \altoBassCFD
  \altoBassCFE
}

scoreEAlto = \relative c' {
  \global
  % Music follows here.
  fs2 \altoBassCFAll \bar "|."
}

tenorBassCFAll = {
  \tenorBassCFA
  \tenorBassCFB
  \tenorBassCFC
  \tenorBassCFD
  \tenorBassCFE
}

scoreETenor = \relative c' {
  \global
  % Music follows here.
  b2 \tenorBassCFAll \bar "|."
}

scoreEBass = \relative c {
  \global
  % Music follows here.
  b2 \cfAllMOne \bar "|."
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  O
  \verseAllMOne
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
  b2:m 
  \chordsBaseAllMOne
  \bar "|."
}

scoreEFigBass = \figuremode {
  \global
  % Figures follow here.
  <5 3>2 
  \figAllMOne
  \bar "|."

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
    subtitle = "C.F. im Bass"
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
  e2 \altoAll \bar "|."
}

scoreFAlto = \relative c' {
  \global
  % Music follows here.
  b'2 \cfAllMOne \bar "|."
}

scoreFTenor = \relative c' {
  \global
  % Music follows here.
  g'2 \tenorAll \bar "||."
}

scoreFBass = \relative c {
  \global
  % Music follows here.
  e,2 \bassAll \bar "|."
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  O
  \verseAllMOne
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
  e2:m 
  \chordsAllMOne
  \bar "|."
}

scoreFFigBass = \figuremode {
  \global
  % Figures follow here.
  <5 3>2
  \figAllMOne
  \bar "|."
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
    subtitle = "C.F. im Alt"
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

