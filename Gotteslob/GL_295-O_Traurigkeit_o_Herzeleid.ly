#(ly:set-option 'compile-scheme-code)
\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = \markup {\with-url #"https://imslp.hk/files/imglnks/euimg/d/d7/IMSLP823419-PMLP1279695-bachNBAIII,2.2otraurigkeit,oherzeliedBWV404anhang.pdf" "O Traurigkeit, o Herzeleid!"}
  subtitle = ""
  subsubtitle = ""
  instrument = "Orgel / Chor"
  composer = "M: Mainz / Würzburg 1628"
  arranger = \markup {"Satz: " \with-url #"https://buschke.com" "Sven Buschke"}
  poet = \markup {"T: " \with-url #"https://de.wikipedia.org/wiki/Friedrich_Spee" "Friedrich Spee" ", 1628"}
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

#(define (average a b c) (/ (+ a b c) 3 ))
twelve = 12
twentyFour = #(* 2 twelve)

cfA = {b2 g4 e fs2 r4 ds e e ds2 r4}
cfB = {b4 b b c b a2 g}
cfC = {fs4 g a b a g fs2}
cfD = {e4 fs g a fs2 e}
cfAll = {\cfA \breathe \relative c'' {\cfB} \breathe \cfC \breathe \cfD}

scoreAMelody = \relative c'' {
  \global
  % Music follows here.
  \breathe^"CF"
  \cfAll \bar "|."
}

verseA = \lyricmode {Trau -- rig -- keit, o Her -- ze -- leid
}
verseB = \lyricmode {das denn nicht zu kla -- gen:
}
verseC = \lyricmode {des Va -- ters ei -- nigs Kind
}
verseD = \lyricmode {zum Grab ge -- tra -- gen.
}
verseCodettaA = \lyricmode {Da da da da
}
verseCodettaB = \lyricmode {\verseCodettaA}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  O \verseA Ist \verseB Gott \verseC wird \verseD
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

chordsA = \chordmode {e2:m e4:m e4:m d2:m s4 b4 e:m a:m d2:m s4}
chordsB = \chordmode {e4:m e:m e:m a:m e:m a2:m e:m}
chordsC = \chordmode {b4 e:m a:m e:m a:m e:m b2}
chordsD = \chordmode {e4:m b e:m a:m b2 e:m}
chordsAll = \chordmode {\chordsA \chordsB \chordsC \chordsD}
chordsCodettaA = \chordmode {a4:m b e:m}
chordsCodettaB = \chordmode {\chordsCodettaA}

scoreBChordNamesLeadSheet = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \chordsA \chordsB
  \chordsC \chordsD

}

scoreBMelody = \relative c'' {
  \global
  % Music follows here.
  \breathe^"CF"
  \cfAll \bar "|."
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

chordsBassA = \chordmode {b2 e4:m/g e d2/fs s4 b4/ds e e b2/ds s4}
chordsBassB = \chordmode {b4 b b a/cs b a2:m e:m/g}
chordsBassC = \chordmode {d4:m e:m/g a:m b a:m e:m/g ds2:min/fs}
chordsBassD = \chordmode {e4:m d/fs e:m/g a:m d2/fs e2:m}
chordsBassAll = \chordmode { \chordsBassA \chordsBassB \chordsBassC \chordsBassD}

scoreBChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \chordsBassAll  
}

bassFigIA = \figuremode {s2 s4 s4 s2 s4 s s s s2 s4}
bassFigIB = \figuremode {s4 s s s s s2 s}
bassFigIC = \figuremode {s4 s s s s s s2}
bassFigID = \figuremode {s4 s s s s2 s}
bassFigCodettaA = \figuremode {s4 s s s}
bassFigCodettaB = \figuremode {\bassFigCodettaA}
bassFigIAll = \figuremode {\bassFigIA \bassFigIB \bassFigIC \bassFigID}

scoreBFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.
  \bassFigIAll
}

bassFigIIA = \figuremode {s2 <6>4 s <6>2 s4 <6> s s <6>2 s4}
bassFigIIB = \figuremode {s4 s s <6> s s2 <6>}
bassFigIIC = \figuremode {s4 <6> s s s <6> <6>2}
bassFigIID = \figuremode {s4 <6> <6> s <6>2 s}
bassFigIIAll = \figuremode {\bassFigIIA \bassFigIIB \bassFigIIC \bassFigIID}

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

bCfSA = {d2 e4 e4 d2 r4 b4 b b b2 r4}
bCfSB = {b4 b b a d e2 e}
bCfSC = {d4 e e d e e4 ds2}
bCfSD = {e4 d e e d2 e}
bCfSAll = {\bCfSA \breathe \bCfSB \breathe \bCfSC \breathe \bCfSD}

duxSA = \relative c'' {\cfA}
duxSB = \relative c'' {\cfB}
duxSC = \relative c' {\cfC}
duxSD = \relative c'' {\cfD}

biciniumSA = \transpose e b {d'2 b4 g a2 r4 fs g g fs2 r4}
biciniumSB = \transpose e b' {d4 d d e d c2 b,}
biciniumSC = \transpose e b {a4 b c' d' c' b a2}
biciniumSD = \transpose e b {g4 a b c a2 g}

codettaISA = \relative c'' {e4 ds e}
codettaISB = \codettaISA
codettaISC = \relative c' {e4 ds e}
codettaISD = \relative c' {e4 ds e}

bDuxSA = \bCfSA
bDuxSB = \relative c'' {\bCfSB}
bDuxSC = \bCfSC
bDuxSD = \bCfSD

codettaIISA = \codettaISA
codettaIISB = \codettaIISA
codettaIISC = \codettaIISA
codettaIISD = \codettaIISA

altoA = {e2 b4 g a2 r4 fs g a fs2 r4}
altoB = {e4 e e e e c2 b}
altoC = {b4 b c e c b b2}
altoD = {g4 b b c b2 g}
altoAll = {\altoA \breathe \relative c' { \altoB} \breathe \altoC \altoD}

aComesSA = \transpose e b' \altoA
aComesSB = \transpose e b' \altoB
aComesSC = \transpose e b {b4 b c' e' c' b b2}
aComesSD = \transpose e b {g4 b b c' b2 g}

bCfAA = {fs2 g4 g a2 r4 fs4 e e fs2 r4}
bCfAB = {d4 d d e fs a2 b}
bCfAC = {fs4 b a fs a b fs2}
bCfAD = {g4 fs b a fs2 g}
bCfAAll = {\bCfAA \breathe \bCfAB \breathe \bCfAC \breathe \bCfAD}

duxRestA = {r4 r r2 r4 r r r r2 r4}
duxRestB = {r4 r r r r2 r}
duxRestC = {r4 r r r r r2}
duxRestD = {r4 r r r2 r}

codettaIRestA = {r4 r r}
codettaIRestB = \codettaIRestA
codettaIRestC = \codettaIRestA
codettaIRestD = \codettaIRestA

comesAA = \transpose e b \cfA
comesAB = \transpose e b {b4 b b c' b a2 g}
comesAC = \transpose e b \cfC
comesAD = \transpose e b \cfD

codettaAA = \relative c'' {a4 fs g}
codettaAB = \codettaAA
codettaAC = \codettaAA
codettaAD = \codettaAA

tenorA = {g2 e4 b d2 r4 b4 b c d2 r4}
tenorB = {g4 g g a g e2 e}
tenorC = {d4 e e g e e d2}
tenorD = {b4 d e e d2 b}
tenorAll = {\tenorA \breathe \tenorB \breathe \tenorC \tenorD}

#(define (average a b c) (/ (+a b c) 3))

% Tonumfang Sopran, Alt, Tenor, Bariton, Bass 
%\fixed c {\clef treble c'32^\markup{"Tonumfang SATBaB" \with-url #"https://en.wikipedia.org/wiki/Vocal_range" "Wiki"} c''' f f'' \clef bass \tuplet 3/2 {  c c'' a, } \tuplet 3/2 {  a' e, e'} }
bCfTA = {b2 e4 b d2 r4 b4 g g b2 r4}
bCfTB = {fs4 fs fs a b c2 e}
bCfTC = {a,4 e' c d c e a,2}
bCfTD = {b4 a e c' a2 b}
bCfTAll = {\bCfTA \breathe \bCfTB \breathe \bCfTC \breathe \bCfTD}

comesTA = \transpose e b {b2 g4 e fs2 r4 ds e e ds2 r4}
comesTB = \transpose e b, {b4 b b c' b a2 g}
comesTC = \transpose e b \cfC
comesTD = \transpose e b \cfD

codettaITA = {c4 b b}
codettaITB = \codettaITA
codettaITC = \codettaITA
codettaITD = \codettaITA

bDuxTA = \bCfTA
bDuxTB = \relative c {\bCfTB}
bDuxTC = \bCfTC
bDuxTD = \bCfTD

aComesTA = \transpose e b \tenorA
aComesTB = \transpose e b \tenorB
aComesTC = \transpose e b \tenorC
aComesTD = \transpose e b, {b4 d' e' e' d'2 b}

codettaIITA = \codettaITA
codettaIITB = \codettaIITA
codettaIITC = \codettaIITA
codettaIITD = \relative c' {\codettaITA}

bassA = {e2 e4 e d2 r4 b'4 e, a d,2 r4}
bassB = {e4 e e a e a2 e}
bassC = {b'4 e, a e a e b'2}
bassD = {e,4 b' e, a b2 e,}
bassAll = {\bassA \breathe \bassB \breathe \bassC \bassD}

duxBA = \relative c {\cfA}
duxBB = \relative c {\cfB}
duxBC = \cfC
duxBD = \cfD

aComesBA = \transpose e b, {e2 e4 e d2 r4 b4 e a d2 r4}
aComesBB = \transpose e b, \bassB
aComesBC = \transpose e b,, {b4 e' a e' a e' b2}
aComesBD = \transpose e b, {e4 b, e a, b,2 e}

codettaIIBA = {a4 b e,}
codettaIIBB = \relative c {\codettaIIBA}
codettaIIBC = \codettaIIBA
codettaIIBD = \codettaIIBA

scoreCSoprano = \relative c'' {
  \global
  % Music follows here.
  \breathe^"S" \cfAll
  % Part a
  \bar "||"^"Dux S a" \duxSA \breathe^"Bicinium S a" \biciniumSA \breathe^"Codetta I S a" cs4 \codettaISA \breathe^"ad B Dux S a" \bDuxSA \breathe^"ad A Comes S a" \aComesSA \breathe^"Codetta II S a" cs'4 \codettaIISA 
% Part b
\bar "||"^"Dux S b" \duxSB \breathe^"Bicinium S b" \biciniumSB \breathe^"Codetta I S b" e,4 \codettaISB \breathe^"ad B Dux S b" \bDuxSB \breathe^"ad A Comes S b" \aComesSB \breathe^"Codetta II S b" fs'4 \codettaIISB
% Part c
\bar "||"^"Dux S c" \duxSC \breathe^"Bicinium S c" \biciniumSC \breathe^"Codetta I S c" e,4 \codettaISC \breathe^"ad B Dux S c" \bDuxSC \breathe^"ad A Comes S c" \aComesSC \breathe^"Codetta II S c" fs4 \codettaIISC
% Part d
\bar "||"^"Dux S d" \duxSD \breathe^"Bicinium S d" \biciniumSD \breathe^"Codetta I S d" d4 \codettaISD \breathe^"ad B Dux S d" \bDuxSD \breathe^"ad A Comes S d" \aComesSD \breathe^"Codetta II S d" d4 \codettaIISD
\bar "|."
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  \breathe^"A"
  \altoAll \bar "||"^"A"
    % Part a
  r2 \duxRestA \breathe r2 \duxRestA \breathe r4 \codettaIRestA \breathe r2 \duxRestA \breathe^"Comes A a" \comesAA \breathe^"Codetta II A a" a4 \codettaAA \bar "||"^"A"
    % Part b
  r4 \duxRestB \breathe r4 \duxRestB \breathe r4 \codettaIRestB \breathe r4 \duxRestB \breathe^"Comes A b" \comesAB \breathe^"Codetta II A b" d4 \codettaAB \bar "||"^"A"
    % Part c
  r4 \duxRestC \breathe r4 \duxRestC \breathe r4 \codettaIRestC \breathe r4 \duxRestC \breathe^"Comes A c" \comesAC \breathe^"Codetta II A c" cs4 \codettaAC \bar "||"^"A"
  % Part d
  r4 \duxRestD \breathe r4 \duxRestD \breathe r4 \codettaIRestD \breathe r4 \duxRestD \breathe^"Comes A d" \comesAD \breathe^"Codetta II A d" b4 \codettaAD 
  \bar "|."
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  \breathe^"T"
  \tenorAll \bar "||"^"T"
    % Part a
  r2 \duxRestA \breathe^"Comes T a" \comesTA \breathe^"Codetta I T a" as'4 \codettaITA \breathe^"ad B Dux T a" \bDuxTA \breathe^"ad A Comes T a" \aComesTA \breathe^"Codetta II T a" a4 \codettaIITA \bar "||"^"T"
      % Part b
  r4 \duxRestB \breathe^"Comes T b" \comesTB \breathe^"Codetta I T b" cs4 \codettaITB \breathe^"ad B Dux T b" \bDuxTB \breathe^"ad A Comes T b" \aComesTB \breathe^"Codetta II T b" b4 \codettaIITB \bar "||"^"T"
      % Part c
  r4 \duxRestC \breathe^"Comes T c" \comesTC \breathe^"Codetta I T c" cs4 \codettaITC \breathe^"ad B Dux T c" \bDuxTC \breathe^"ad A Comes T c" \aComesTC \breathe^"Codetta II T c" a'4 \codettaIITC \bar "||"^"T"
  % Part d
  r4 \duxRestD \breathe^"Comes T d" \comesTD \breathe^"Codetta I T d" b4 \codettaITD \breathe^"ad B Dux T d" \bDuxTD \breathe^"ad A Comes T d" \aComesTD \breathe^"Codetta II T d" fs4 \codettaIITD
  \bar "|."
}

scoreCBass = \relative c, {
  \global
  % Music follows here.
  \breathe^"B"
  \bassAll \bar "||"^"B"
      % Part a

  r2 \duxRestA \breathe r2 \duxRestA \breathe r4 \codettaIRestA \breathe^"Dux B a" \duxBA \breathe^"ad A Comes B a" \aComesBA \breathe^"Codetta II B a" fs4 \codettaIIBA \bar "||"^"B"
      % Part b
  r4 \duxRestB \breathe r4 \duxRestB \breathe r4 \codettaIRestB \breathe^"Dux B b" \duxBB \breathe^"ad A Comes B b" \aComesBB \breathe^"Codetta II B b" b'4 \codettaIIBB \bar "||"^"B"
      % Part c
  r4 \duxRestC \breathe r4 \duxRestC \breathe r4 \codettaIRestC \breathe^"Dux B c" \duxBC \breathe^"ad A Comes B c" \aComesBC \breathe^"Codetta II B c" fs4 \codettaIIBC \bar "||"^"B"
  % Part d
  r4 \duxRestD \breathe r4 \duxRestD \breathe r4 \codettaIRestD \breathe^"Dux B d" \duxBD \breathe^"ad A Comes B d" \aComesBD \breathe^"Codetta II B d" fs4 \codettaIIBD
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
  O \verseA O \verseA \verseCodettaA O \verseA O \verseA  \verseCodettaB
  Ist \verseB Ist \verseB \verseCodettaA Ist \verseB Ist \verseB  \verseCodettaB
  Gott \verseC Gott \verseC \verseCodettaA Gott \verseC Gott \verseC \verseCodettaB
  wird \verseD wird \verseD \verseCodettaA wird \verseD wird \verseD  \verseCodettaB
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
  \chordsD \transpose e b \chordsD fs4 \chordsCodettaA \chordsBassD \transpose e b \chordsD fs4 \chordsCodettaB  \bar "|."
}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.
  \bassFigIAll \bar "||"
  \bassFigIA \bassFigIA \bassFigCodettaA \bassFigIIA \bassFigIA \bassFigCodettaB
  \bassFigIB \bassFigIB \bassFigCodettaA \bassFigIIB \bassFigIB \bassFigCodettaB
  \bassFigIC \bassFigIC \bassFigCodettaA \bassFigIIC \bassFigIC \bassFigCodettaB
  \bassFigID \bassFigID \bassFigCodettaA \bassFigIID \bassFigID \bassFigCodettaB  \bar "|."
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
  \breathe^"S" \altoA \breathe \relative c'' { \altoB} \breathe \altoC \altoD
}

scoreDAlto = \relative c'' {
  \global
  % Music follows here.
  \breathe^"A" \tenorAll
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  \breathe^"T"
  \cfA \breathe \relative c {\cfB} \breathe \cfC \breathe \cfD
  \bar "|."
}

scoreDBass = \relative c, {
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

scoreEAlto = \relative c' {
  \global
  % Music follows here.
  \breathe^"A" \bCfAAll
}

scoreETenor = \relative c' {
  \global
  % Music follows here.
  \breathe^"T" \bCfTAll
  
}

scoreEBass = \relative c {
  \global
  % Music follows here.
  \breathe^"B"
  \cfA \breathe \relative c {\cfB} \breathe \cfC \breathe \cfD
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
  \breathe^"S" \altoA \breathe \relative c'' { \altoB} \breathe \altoC \altoD
}

scoreFAlto = \relative c'' {
  \global
  % Music follows here.
  \breathe^"A" \cfAll
  \bar "|."
}

scoreFTenor = \relative c'' {
  \global
  % Music follows here.
  \breathe^"T" \tenorAll
}

scoreFBass = \relative c, {
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

