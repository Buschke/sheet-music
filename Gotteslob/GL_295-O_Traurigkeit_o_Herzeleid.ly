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
  b4 e:m a:m d2 s4
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

biciniumB = { fs4 d e2 r4\breathe}

biciniumC = { fs4 d e2 r4\breathe}

biciniumD = { fs4 d e2 r4\breathe}

biciniumE = { fs4 d e2 r4\breathe}

codettaOneA = {css4 e e e\breathe}
codettaTwoA = {css4 e e e\breathe}

codettaVerseOneA = \lyricmode {Da da da da}
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

codettaOneB = {\codettaOneA}
codettaTwoB = {\codettaTwoA}

codettaOneC = {\codettaOneA}
codettaTwoB = {\codettaTwoA}

codettaOneD = {\codettaOneA}
codettaTwoB = {\codettaTwoA}

codettaOneE = {\codettaOneA}
codettaTwoB = {\codettaTwoA}

codettaBicA = {df f4 c c c\breathe}

codettaBicB = {\codettaBicA}

codettaBicC = {\codettaBicA}

codettaBicD = {\codettaBicA}

codettaBicE = {\codettaBicA}

codettaRestA = {s4 s s s\breathe}

codettaRestB = {\codettaRestA}

codettaRestC = {\codettaRestA}

codettaRestD = {\codettaRestA}

codettaRestE = {\codettaRestA}

scoreCSoprano = \relative c'' {
  \global
  % Music follows here.
  b2 \cfAllMOne r2\fermata \bar "||"
  b'2^"Dux 1a S" \cfAMOne \cfB \breathe b2^"Bicinium 1a ST" \biciniumA \biciniumB \breathe b4^"Codetta 1a ST" \codettaOneA \breathe b2^"ad Dux 2a BST" css \breathe b2^"Ad Comes 2a ASTB"\breathe b4^"Codetta 2a SATB" b b b
%  b'2^"Dux 1a S" \cfAMOne\breathe a2^"Bicinium 1a ST" \biciniumA r4^"Codetta 1a ST" \codettaOneA r2^"fuer Dux 2a BST" r2^"fuer Comes 2a ASBT" c2^"Codetta 2a SATB" 
%  b'2^"Dux 1b" \cfB a2^"Bicinium 1b" \biciniumB r4^"Codetta 1a" \codettaOneA
}

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
  r2 \cfRestA \cfRestB \breathe r2 \cfRestA \cfRestB \breathe \codettaRestA \breathe r2 \cfRestA \breathe b2^"Ad Comes 2a ASTB"\breathe b4^"Codetta 2a SATB" b b b
%  r2 \cfRestA r2 \cfRestA \codettaRestA r2 \cfRestA b2^"Comes 2a" \transpose e b \cfAMOne c^"Codetta 2a" \codettaTwoA
%  \cfRestB
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
  r2 \cfRestA \cfRestB \breathe fs''2^"Comes 1a TS" \transpose e b \cfAMOne \transpose e b \cfB \breathe b4^"Codetta 1a ST" b b b\breathe b2^"ad Dux 2a BST" b b r4\breathe b2^"Ad Comes 2a ASTB"\breathe b4^"Codetta 2a SATB" b b b
%  r2 \cfRestA
%  
%  fs''2^"Comes 1a TS" \transpose e b \cfAMOne\breathe r4^"Codetta 1a ST"\codettaBicA r^"fuer Dux 2a BST" r1^"fuer Comes 2a ASTB" r r r1^"Codetta 2a SATB"
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
  r2 \cfRestA \cfRestB \breathe \cfRestA \cfRestB \breathe b4^"Codetta 1a ST" b b b \breathe b2^"Dux 2a BST" b b r4\breathe b2^"Ad Comes 2a ASTB"\breathe b4^"Codetta 2a SATB" b b b
%  r2 \cfRestA r2 \cfRestA \codettaRestA b'2^"Dux 2a" \cfAMOne r2 \cfRestA e2 \bassA\fermata
%  \cfRestB \cfRestB b'2^"Dux 2b" \cfB \cfRestB \bassB\fermata
%  \cfRestC \cfRestC b'2^"Dux 2c" \cfC \cfRestC \bassC\fermata
%  \cfRestD \cfRestD b'2^"Dux 2d" \cfD \cfRestD \bassD\fermata
%  \cfRestD \cfRestD b'2^"Dux 2e" \cfE \cfRestE \bassE\fermata
%  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  O \verseAllMOne
  O \verseAMOne \verseB
  O \verseAMOne \verseB
  O \verseAMOne \verseB
  O \verseAMOne \verseB
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
  e2:m 
  \chordsAllMOne s2\bar "||"
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

sopranBassCFA = {
  % First: b2
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

tenorBassCFA = {
  % First: 
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
  d2 \tenorBassCFAll \bar "|."
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

