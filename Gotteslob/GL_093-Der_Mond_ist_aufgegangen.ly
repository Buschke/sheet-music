\version "2.24.3"
\language "english"

\header {
  dedication = "A.L. für Weg zum C-Schein"
  title = "Der Mond ist aufgegangen"
  subsubtitle = "Gotteslob Nr. 93"
  instrument = "Orgel"
  composer = "M: Johann Abraham Peter Schulz 1790"
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: Matthias Claudius 1779"
  meter = ""
  piece = ""
  opus = "GL 93"
  copyright = \markup { "© Satz: 24.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key f \major
  \time 4/4
  \tempo "Andante" 4=100
}

cfA = {g f bf a g2 f4}
cfB = {a a d c bf2 a4}
cfCA = {a a bf a}
cfCB = {r4}
cfCC = {g4 f}

altA = {c4 a d c c2 a4}
altB = {c4 c f f d2 c4}
altCA = {c4 c d c}
altCB = {r4}
altCC = {c4 a}

tenorA = {e4 c f f e2 c4}
tenorB = {f4 f bf a f2 f4}
tenorCA = {f4 f f f}
tenorCB = {r4}
tenorCC = {e4 c}

bassA = {c4 f bf f c2 f4}
bassB = {f4 f bf f bf2 f4}
bassCA = {f4 f bf f}
bassCB = {r4}
bassCC = {c4 f}

sopranBCfA = {e4 f f e e2 f4}
sopranBCfB = {f4 f f g bf2 f4}
sopranBCfCA = {f4 f f f}
sopranBCfCB = {r4}
sopranBCfCC = {e4 f}

altBCfA = {bf4 a bf a bf2 a4}
altBCfB = {c4 c a c d2 c4}
altBCfCA = {c4 c bf c}
altBCfCB = {r4}
altBCfCC = {bf4 a}

tenorBCfA = {e4 c d c e2 c4}
tenorBCfB = {f4 f d e bf2 f'4}
tenorBCfCA = {f4 f d c}
tenorBCfCB = {r4}
tenorBCfCC = {e4 c}

verseAA = \lyricmode {Mond ist auf -- ge -- gan -- gen, }
verseBA = \lyricmode {gold -- nen Stern -- lein pran -- gen }
verseCA = \lyricmode {Him -- mel hell und }
verseDA = \lyricmode {klar }
verseAB = \lyricmode {Wald steht schwarz und schwei -- get }
verseBB = \lyricmode {aus den Wie -- sen stei -- get }
verseCB = \lyricmode {wei -- ße Ne -- bel }
verseDB = \lyricmode {wun -- der -- bar. }

chordsA = \chordmode {c4 f bf f c2 f4}
chordsB = \chordmode {f4 f bf f bf2 f4}
chordsCA = \chordmode {f4 f f bf}
chordsCB = \chordmode {s4}
chordsCC = \chordmode {c4 f}
chordsAll = \chordmode {\repeat volta 2 {\partial 4 f4\chordsA f4\chordsB f4\chordsCA \alternative {{c2\chordsCB}{c4\chordsCC}}}\bar "|."}

chordsBCfA = \chordmode {e4:dim/g f bf a:m e2:dim/g f4}
chordsBCfB = \chordmode {f4/a f/a d:m c bf2 f4/a}
chordsBCfCA = \chordmode {f4/a f/a bf f/a}
chordsBCfCB = \chordmode {s4}
chordsBCfCC = \chordmode {e4:dim/g f}

figBassA = \figuremode {<6>4 s s s <643>2 s4}
figBassB = \figuremode {s4 s s s <6234>2 s4}
figBassCA = \figuremode {s4 s s <6345>4}
figBassCB = \figuremode {<435>4}
figBassCC = \figuremode {s4 <2346>4}

figBCfBassA = \figuremode {<6>4 s s s <6>2 s4}
figBCfBassB = \figuremode {<6>4 <6> s s s2 <6>4}
figBCfBassCA = \figuremode {<6>4 <6> s <6>4}
figBCfBassCB = \figuremode {s4}
figBCfBassCC = \figuremode {<6>4 s}

% Intonation 1: solo, letzten 4 4stimmig
intonationISA = {}
intonationISB = {}
intonationISC = {}

intonationIAA = {}
intonationIAB = {}
intonationIAC = {}

intonationITA = {}
intonationITB = {}
intonationITC = {}

intonationIBA = {}
intonationIBB = {}
intonationIBC = {}

% Intonation 2: Fächerpolyphonie 1-2-3-4stimmig
intonationIISA = {}
intonationIISB = {}
intonationIISC = {}

intonationIIAA = {}
intonationIIAB = {}
intonationIIAC = {}

intonationIITA = {}
intonationIITB = {}
intonationIITC = {}

intonationIIBA = {}
intonationIIBB = {}
intonationIIBC = {}

% Intonation 3: Unisono, letzten 4 4stimmig
intonationIIISA = {}
intonationIIISB = {}
intonationIIISC = {}

intonationIIIAA = {}
intonationIIIAB = {}
intonationIIIAC = {}

intonationIIITA = {}
intonationIIITB = {}
intonationITIIC = {}

intonationIIIBA = {}
intonationIIIBB = {}
intonationIIIBC = {}

% Intonation 4: Bass CF, Fächerpolyphonie 1-2-3-4stimmig
intonationIVSA = {}
intonationIVSB = {}
intonationIVSC = {}

intonationIVAA = {}
intonationIVAB = {}
intonationIVAC = {}

intonationIVTA = {}
intonationIVTB = {}
intonationIVTC = {}

intonationIVBA = {}
intonationIVBB = {}
intonationIVBC = {}

% Dux 1 (CF: Sopran, S)
duxSA = \cfA
duxSB = \cfB
duxSC = {\cfCA g4 \cfCC}

duxRestA = {r4 r r r r2 r4}
duxRestB = {r4 r r r r2 r4}
duxRestC = {r4 r r r r r r}

% Comes 1 (CF: Tenor, T S (Bicinium), Quinttonart)
comesTA = {d4 c f e d2 c4} % {g f bf a g2 f4}
comesTB = {e4 e a f f2 e4} % {a a d c bf2 a4}
comesTC = {e4 e f e d d c} % {a a bf a g g f}

biciniumA = {bf4 e a c bf2 e,4}
biciniumB = {c4 c f, a a2 g4}
biciniumC = {g4 g a g f f e}

comesChordsA = \chordmode {g4 c f c g2 c4} %{ f4{c4 f bf f c2 f4} %}
comesChordsB = \chordmode {c4 c f f f2 c4} %{{f4 f bf f bf2}%}
comesChordsC = \chordmode {c4 c c f g g c} %{ f4{f4 f f bf} c4{c4 f} %}

% Codetta 1 (S T, Rückmodulation)
codettaISA = {d4 e a}
codettaISB = {d4 bf a}
codettaISC = {d4 e a}

codettaIVerseA = \lyricmode {da da da }
codettaIVerseB = \lyricmode {da da da }
codettaIVerseC = \lyricmode {da da da }

codettaITA = {bf4 c f}
codettaITB = {bf4 e f}
codettaITC = {bf4 c f}

codettaIRestA = {r4 r r}
codettaIRestB = {r4 r r}
codettaIRestC = {r4 r r}

codettaIChordsA = \chordmode {bf4 c f}
codettaIChordsB = \chordmode {bf4 e:dim/g f}
codettaIChordsC = \chordmode {d4:dim7/f c f}

% Dux 2 (CF: Bass, B S T)
duxBA = \cfA
duxBB = \cfB
duxBC = {\cfCA g4 \cfCC}

adDuxSA = {bf4 c d c bf2 c4}
adDuxSB = {c4 c f, e d2 c4}
adDuxSC = {fss4 f f f f f fff}

adDuxTA = {e4 a f e e2 a4}
adDuxTB = {f4 f a g f2 f4}
adDuxTC = {fss4 f f f f f fff}

duxBCfChordsA = \chordmode {\chordsBCfA}
duxBCfChordsB = \chordmode {\chordsBCfB}
duxBCfChordsC = \chordmode {\chordsBCfCA e4:dim/g\chordsBCfCC}

% Comes 2 (CF: Alt, A S T, Rückmodulation)
comesAA = \comesTA
comesAB = \comesTB
comesAC = \comesTC

adComesSA = {g4 g c a a2 g4}
adComesSB = {b4 b b b b2 b4}
adComesSC = {fss4 f f f f g fff}

adComesTA = {bf4 g c c bf2 g4}
adComesTB = {c'4 c f c c2 c4}
adComesTC = {fss4 g f f f f fff}

adComesBA = {g'4 c, f f g2 c4}
adComesBB = {c4 c f f f2 c4}
adComesBC = {gss4 f f f f f fff}

comesACfChordsA = \chordmode {\comesChordsA}
comesACfChordsB = \chordmode {\comesChordsB}
comesACfChordsC = \chordmode {\comesChordsC}


% Codetta 2 (S A T B, Rückmodulation)
codettaIISA = {f4 e f}
codettaIISB = {r4 r r}
codettaIISC = {r4 r r}

codettaIIAA = {bf4 g a}
codettaIIAB = {d4 bf c}
codettaIIAC = {r4 r r}

codettaIITA = {d,4 c c}
codettaIITB = {r4 r r}
codettaIITC = {r4 r r}

codettaIIBA = {bf4 c, f}
codettaIIBB = {bf'4 g f}
codettaIIBC = {bf4 c f}

codettaIIVerseA = \lyricmode {da da da }
codettaIIVerseB = \lyricmode {da da da }
codettaIIVerseC = \lyricmode {da da da }

codettaIIChordsA = \chordmode {bf4 c f}
codettaIIChordsB = \chordmode {bf4 e:dim/g f}
codettaIIChordsC = \chordmode {d4:dim7/f c f}

%%%%%%%%%%%%%%%%%%%

scoreAMelody = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2{\partial 4 f,4\cfA\breathe a4\cfB\breathe a4\cfCA\alternative{{g2\cfCB}{g4\cfCC}}}\bar "|."  
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  <<\repeat volta 2 {Der \verseAA die \verseBA am \verseCA \alternative {{\verseDA}{}}} \new Lyrics {\repeat volta 2 {Der \verseAB und \verseBB der \verseCB} \alternative {{""}{\verseDB}}}>>  
}

\bookpart {
  \header {subtitle = "CF"}
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
  \chordsAll\bar "|."
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

scoreBChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {\partial 4 f4\chordsBCfA f4/a\chordsBCfB f4/a\chordsBCfCA \alternative {{e2:dim/g\chordsBCfCB}{e4:dim/g\chordsBCfCC}}}\bar "|."
}

scoreBFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.
  \repeat volta 2 { \partial 4 <6>4\figBassA <6>4\figBassB <6>4\figBassCA \alternative {{<6>2\figBassCB}{<6>4\figBassCC} }}  
}

scoreBFigBassBassFiguresII = \figuremode {
  \global
  % Figures follow here.
  \repeat volta 2 { \partial 4 s4\figBCfBassA <6>4\figBCfBassB <6>4\figBCfBassCA \alternative {{<6>2\figBCfBassCB}{<6>4\figBCfBassCC} }}  
  
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
  \header {subtitle = "CF, mit Akkorden"}
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

scoreCSoprano = \relative c'' {
  \global
  % Music follows here.
  % Intonation 1: solo, letzten 4 4stimmig
  % Intonation 2: Fächerpolyphonie 1-2-3-4stimmig
  % Intonation 3: Unisono, letzten 4 4stimmig
  % Intonation 4: Bass CF, Fächerpolyphonie 1-2-3-4stimmig
  % CF-Satz
  \repeat volta 2{\partial 4 f,4\cfA\breathe a4\cfB\breathe a4\cfCA\alternative{{g2\cfCB}{g4\cfCC}}}\bar "|.|"
  % Dux-Comes
  % Dux 1 (CF: Sopran, S)
  % Comes 1 (CF: Tenor, T S (Bicinium), Quinttonart)
  % Codetta 1 (S T, Rückmodulation)
  % Dux 2 (CF: Bass, B S T)
  % Comes 2 (CF: Alt, A S T, Rückmodulation)
  % Codetta 2 (S A T B, Rückmodulation)
  % a
  \partial 4 %{Dux 1 a%}f4^"Dux S a" \duxSA \breathe %{Comes 1 a/ Bicinium a%} c4^"Bicinium a" \biciniumA \breathe %{Codetta 1 a%} e4^"Codetta 1 S a" \codettaISA \breathe %{Dux 2 b%} a4^"ad Dux B S a"\adDuxSA \breathe %{Comes 2 a%} e,^"ad Comes A S a" \adComesSA \breathe %{Codetta 2 a%}e4^"Codetta 2 S a"\codettaIISA\fermata
  % b
  \partial 4 %{Dux 1 b%}f4^"Dux S b" \duxSB \breathe %{Comes 1 b/ Bicinium b%}c4^"Bincinium b" \biciniumB \breathe %{Codetta 1 b%}c4^"Codetta 1 b"\codettaISB \breathe %{Dux 2 b%}c4^"ad Dux B S b"\adDuxSB \breathe %{Comes 2 b%} e^"ad Comes A S b" \adComesSB \breathe %{Codetta 2 b%}g4^"Codetta 2 S b"\codettaIISB\fermata
  % c
  \partial 4 %{Dux 1 c%}f4^"Dux S c" \duxSC \breathe %{Comes 1 c/ Bicinium c%}c4^"Bicinium c" \biciniumC \breathe %{Codetta 1 c%}c4^"Codetta 1 c"\codettaISC \breathe %{Dux 2 c%}s4^"ad Dux B S c"\adDuxSC \breathe %{Comes 2 c%} e^"ad Comes A S c" \adComesSC \breathe %{Codetta 2 c%}c4^"Codetta 2 S c"\codettaIISC\bar "|."
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  % Intonation 1: solo, letzten 4 4stimmig
  % Intonation 2: Fächerpolyphonie 1-2-3-4stimmig
  % Intonation 3: Unisono, letzten 4 4stimmig
  % Intonation 4: Bass CF, Fächerpolyphonie 1-2-3-4stimmig
  % CF-Satz
  \repeat volta 2 { \partial 4 a4 \altA \breathe c4 \altB \breathe c4 \altCA \alternative {{c2\altCB}{c4\altCC}}}\bar "|.|"
  % Dux-Comes
  % Dux 1 (CF: Sopran, S)
  % Comes 1 (CF: Tenor, T S (Bicinium), Quinttonart)
  % Codetta 1 (S T, Rückmodulation)
  % Dux 2 (CF: Bass, B S T)
  % Comes 2 (CF: Alt, A S T, Rückmodulation)
  % Codetta 2 (S A T B, Rückmodulation)
  % a
 \partial 4 %{Dux 1 a%}r4 \duxRestA \breathe %{Comes 1 a%}r4 \duxRestA \breathe %{Codetta 1 a%}r4\codettaIRestA \breathe %{Dux 2 a%}r4\duxRestA %{Comes 2 a%} c4^"Comes A a" \comesAA \breathe %{Codetta 2 a%}c4^"Codetta 2 A a"\codettaIIAA\fermata
 % b
 \partial 4 %{Dux 1 b%}r4 \duxRestB \breathe %{Comes 1 b%} r4\duxRestB \breathe %{Codetta 1 b%}r4\codettaIRestB \breathe %{Dux 2 b%}r4\duxRestA \breathe %{Comes 2 b%} e'^"Comes A b" \comesAB \breathe %{Codetta 2 b%}e4^"Codetta 2 A b"\codettaIIAB\fermata
 % c
 \partial 4 %{Dux 1 c%}r4 \duxRestC \breathe %{Comes 1 c%}r4 \duxRestC \breathe %{Codetta 1 c%}c4\codettaIRestC \breathe %{Dux 2 c%}r4\duxRestC \breathe %{Comes 2 c%} e^"Comes A c" \comesAC \breathe %{Codetta 2 c%}c4^"Codetta 2 A c"\codettaIIAC\bar "|."
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  % Intonation 1: solo, letzten 4 4stimmig
  % Intonation 2: Fächerpolyphonie 1-2-3-4stimmig
  % Intonation 3: Unisono, letzten 4 4stimmig
  % Intonation 4: Bass CF, Fächerpolyphonie 1-2-3-4stimmig
  % CF-Satz
  \repeat volta 2 { \partial 4 c,4 \tenorA \breathe f4 \tenorB \breathe f4 \tenorCA \alternative {{e2\tenorCB}{e4\tenorCC}}}\bar "|.|"
  % Dux-Comes
  % Dux 1 (CF: Sopran, S)
  % Comes 1 (CF: Tenor, T S (Bicinium), Quinttonart)
  % Codetta 1 (S T, Rückmodulation)
  % Dux 2 (CF: Bass, B S T)
  % Comes 2 (CF: Alt, A S T, Rückmodulation)
  % Codetta 2 (S A T B, Rückmodulation)
  % a
  \partial 4 %{Dux 1 a%}r4\duxRestA \breathe %{Comes 1 a/ Bicinium a%} c4^"Comes T a" \comesTA \breathe %{Codetta 1 a%} c4^"Codetta 1 T a"\codettaITA \breathe %{Dux 2 b%} c4^"ad Dux B T a"\adDuxTA \breathe %{Comes 2 a%} g^"ad Comes A T a" \adComesTA \breathe %{Codetta 2 a%}c4^"Codetta 2 B a"\codettaIITA\fermata
  % b
  \partial 4 %{Dux 1 b%}r4\duxRestB \breathe %{Comes 1 b/ Bicinium b%} e4^"Comes T a" \comesTB \breathe %{Codetta 1 a%} c4^"Codetta 1 T b"\codettaITB \breathe %{Dux 2 b%} f4^"ad Dux T B a"\adDuxTB %{Comes 2 a%} e^"ad Comes A B b" \adComesTB \breathe %{Codetta 2 a%}c4^"Codetta 2 T b"\codettaIITB\fermata
  % c
  \partial 4 %{Dux 1 b%}r4\duxRestB \breathe %{Comes 1 b/ Bicinium b%} c4^"Comes T a" \comesTB \breathe %{Codetta 1 a%} c4^"Codetta 1 T a"\codettaITC \breathe %{Dux 2 b%} a4^"ad Dux B T a"\adDuxTC \breathe %{Comes 2 a%} e^"ad Comes A B c" \adComesTC \breathe %{Codetta 2 a%}c4^"Codetta 2 B c"\codettaIITC\bar "|."
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  % Intonation 1: solo, letzten 4 4stimmig
  % Intonation 2: Fächerpolyphonie 1-2-3-4stimmig
  % Intonation 3: Unisono, letzten 4 4stimmig
  % Intonation 4: Bass CF, Fächerpolyphonie 1-2-3-4stimmig
  % CF-Satz
  \repeat volta 2 { \partial 4 f,4 \bassA \breathe f4 \bassB \breathe f4 \bassCA \alternative {{c2\bassCB}{c4\bassCC}}}\bar "|.|"
  % Dux-Comes
  % Dux 1 (CF: Sopran, S)
  % Comes 1 (CF: Tenor, T S (Bicinium), Quinttonart)
  % Codetta 1 (S T, Rückmodulation)
  % Dux 2 (CF: Bass, B S T)
  % Comes 2 (CF: Alt, A S T, Rückmodulation)
  % Codetta 2 (S A T B, Rückmodulation)
  % a
  \partial 4 %{Dux 1 a%}r4\duxRestA \breathe %{Comes 1 a/ Bicinium a%} r4\duxRestA \breathe %{Codetta 1 a%} r4 \codettaIRestA \breathe %{Dux 2 b%} f4^"Dux B a"\duxBA \breathe %{Comes 2 a%} c^"ad Comes A B a" \adComesBA \breathe %{Codetta 2 a%}c4^"Codetta 2 B a"\codettaIIBA\fermata
  % b
  \partial 4 %{Dux 1 b%}r4\duxRestB \breathe %{Comes 1 b/ Bicinium b%} r4\duxRestB \breathe %{Codetta 1 a%} r4 \codettaIRestA \breathe %{Dux 2 b%} a4^"Dux B b"\duxBB %{Comes 2 a%} c,^"ad Comes A B b" \adComesBB \breathe %{Codetta 2 a%}c4^"Codetta 2 B b"\codettaIIBB\fermata
  % c
  \partial 4 %{Dux 1 b%}r4\duxRestB \breathe %{Comes 1 b/ Bicinium b%} r4\duxRestC \breathe %{Codetta 1 a%} r4 \codettaIRestA \breathe %{Dux 2 b%} a4^"Dux B c"\duxBC \breathe %{Comes 2 a%} e^"ad Comes A B c" \adComesBC \breathe %{Codetta 2 a%}c4^"Codetta 2 B c"\codettaIIBC\bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse  
  Der \verseAB Der \verseAB Da \codettaIVerseA Der \verseAB Der \verseAB  Da \codettaIIVerseA
  und \verseBB und \verseBB Da \codettaIVerseB und \verseBB und \verseBB Da \codettaIIVerseB 
  der \verseCB \verseDB der \verseCB \verseDB Da \codettaIVerseC der \verseCB \verseDB der \verseCB \verseDB Da \codettaIIVerseC 
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
  \chordsAll\bar"|.|"
  % a
  \partial 4 f4\chordsA c4\comesChordsA c4\codettaIChordsA f4\duxBCfChordsA c4\comesACfChordsA c4\codettaIIChordsA
  % b
  \partial 4 f4\chordsB c4\comesChordsB c4\codettaIChordsB f4/a\duxBCfChordsB c4\comesACfChordsB c4\codettaIIChordsB
  % c
  \partial 4 f4\chordsCA c4\chordsCC c4\comesChordsC c4\codettaIChordsC f4/a\duxBCfChordsC c4\comesACfChordsC c4\codettaIIChordsC
}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.
  \scoreBBassFiguresIPart
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
  \header {subtitle = "CF im Sopran, Intonation und Dux-Comes"}
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
  \repeat volta 2 { \partial 4 a4 \altA \breathe c4 \altB \breathe c4 \altCA \alternative {{c2\altCB}{c4\altCC}}}\bar "|."  
}

scoreDAlto = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 { \partial 4 c,4 \tenorA \breathe f4 \tenorB \breathe f4 \tenorCA \alternative {{e2\tenorCB}{e4\tenorCC}}}\bar "|."  
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2{\partial 4 f,4\cfA\breathe a4\cfB\breathe a4\cfCA\alternative{{g2\cfCB}{g4\cfCC}}}\bar "|."  
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 { \partial 4 f,4 \bassA \breathe f4 \bassB \breathe f4 \bassCA \alternative {{c2\bassCB}{c4\bassCC}}}\bar "|."  
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
  \scoreBChordNamesLeadSheet
}

scoreDFigBass = \figuremode {
  \global
  % Figures follow here.
  \scoreBBassFiguresIPart
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
  \header {subtitle = "CF im Tenor"}
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
  \repeat volta 2 { \partial 4 f4\sopranBCfA\breathe f4\sopranBCfB\breathe f4 \sopranBCfCA\alternative {{e2\sopranBCfCB}{e4\sopranBCfCC}}}\bar "|."  
  
}

scoreEAlto = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 { \partial 4 a'4\altBCfA\breathe c4\altBCfB\breathe c4\altBCfCA \alternative {{bf2\altBCfCB}{bf4\altBCfCC}}}\bar "|."  
  
}

scoreETenor = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 { \partial 4 c4\tenorBCfA\breathe f4\tenorBCfB \breathe f4\tenorBCfCA\alternative {{e2\tenorBCfCB}{e4\tenorBCfCC}}}\bar "|."  
  
}

scoreEBass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2{\partial 4 f,4\cfA\breathe a4\cfB\breathe a4\cfCA\alternative{{g2\cfCB}{g4\cfCC}}}\bar "|."  
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
  \scoreBChordNamesChords
}

scoreEFigBass = \figuremode {
  \global
  % Figures follow here.
  \scoreBBassFiguresIIPart
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
  \header {subtitle = "CF im Bass"}
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
  \repeat volta 2 { \partial 4 a4 \altA \breathe c4 \altB \breathe c4 \altCA \alternative {{c2\altCB}{c4\altCC}}}\bar "|."  
}

scoreFAlto = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2{\partial 4 f,4\cfA\breathe a4\cfB\breathe a4\cfCA\alternative{{g2\cfCB}{g4\cfCC}}}\bar "|."  
}

scoreFTenor = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 { \partial 4 c,4 \tenorA \breathe f4 \tenorB \breathe f4 \tenorCA \alternative {{e2\tenorCB}{e4\tenorCC}}}\bar "|."  
}

scoreFBass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 { \partial 4 f,4 \bassA \breathe f4 \bassB \breathe f4 \bassCA \alternative {{c2\bassCB}{c4\bassCC}}}\bar "|."  
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
  \scoreBChordNamesLeadSheet
}

scoreFFigBass = \figuremode {
  \global
  % Figures follow here.
  \scoreBBassFiguresIPart
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
  \header {subtitle = "CF im Alt"}
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

