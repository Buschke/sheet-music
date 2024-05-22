\version "2.24.3"
\language "english"

\header {
  dedication = "AL, Harmonisierungsübung für den C-Schein"
  title = \markup {\with-url #"https://de.wikipedia.org/wiki/Wer_nur_den_lieben_Gott_l%C3%A4%C3%9Ft_walten#:~:text=Wer%20nur%20den%20lieben%20Gott%20l%C3%A4%C3%9Ft%20walten%20ist%20ein%20Kirchenlied,es%20selbst%20als%20Trostlied%20bezeichnet." "Wer nur den lieben Gott lässt walten"}
  subtitle = ""
  subsubtitle = "Harmonisiert in SATB, inkl. Ritornell / Intonation und Dux / Comes"
  instrument = "Orgel / Chor"
  composer = \markup {"M: " \with-url #"https://de.wikipedia.org/wiki/Johann_Sebastian_Bach" "Johann Sebastian Bach" "um 1736/37"}
  arranger = \markup {"Satz: " \with-url #"https://buschke.com" "Sven Buschke"}
  poet = \markup {"T: " \with-url #"https://de.wikipedia.org/wiki/Georg_Neumark" "Johann Georg Neumark"}
  meter = \markup {"nach " \with-url #"https://de.wikipedia.org/wiki/Georg_Neumark" "Johann Georg Neumark" "1657"}
  piece = "EL im CF Alt, sonst WL"
  opus = "GL 424 ö"
  copyright = \markup {"© 21.05.2024, Satz: " \with-url #"https://buschke.com" "Sven Buschke"}
  tagline = "Ritornell noch ausgespart"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key g \minor
  \time 4/4
  \tempo "Andante" 4=100
}

cfA = {g4 a bf a g a8 g fs4 d r}
cfB = {f4 ef d g g fs g2 r4}
cfC = {bf c d d c4. bf8 bf4}
cfD = {c bf a g8 a bf4 a g}

verseAA = \lyricmode {
  nur den lie -- ben Gott lässt _ wal -- ten
}
verseBA = \lyricmode {
  hof -- fet auf ihn al -- le -- zeit
}
verseAB = \lyricmode {
  wird er wun -- der -- bar er _ -- hal -- ten
}
verseBB = \lyricmode {
  al -- ler Not und Trau -- rig -- keit
}
verseC = \lyricmode {
  Gott, dem Al -- ler -- höchs -- ten traut,
}
verseD = \lyricmode {
  hat auf kei -- nen _ Sand ge -- baut.
}

scoreAMelody = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 d,4^"CF" \cfA f4 \cfB } \partial 4 a4 \cfC \breathe d \cfD
  \bar "|."  
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  <<{Wer \verseAA und \verseBA} \new Lyrics{den \verseAB in \verseBB}>> Wer \verseC der \verseD
  \bar "|."  
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

chordsA = \chordmode {g4:m d:m g:m d:m g:m d8:m g:m d4 g:m s}
chordsB = \chordmode {d4:m c:m g:m g:m g:m d g2:m s4}
chordsC = \chordmode {g4:m c:m g:m g:m c4.:m g8:m g4:m}
chordsD = \chordmode {c4:m g:m d:m g8:m d:m g4:m d g:m}

bassChordsA = \chordmode {g4:m f/a bf f/a g:m f8/a g:m d4/fs g:m/bf s}
bassChordsB = \chordmode {f4 c:m/ef d:m g:m g:m d/fs g2:m s4}
bassChordsC = \chordmode {g4:m/bf c:m d:m d:m c4.:m g8:m/bf g4:m/bf}
bassChordsD = \chordmode {c4:m g:m/bf a:m g8:m a:m g4:m/bf fs:dim/a g:m}

bassFigIA = \figuremode {s4 s s s s s8 s s4 s s}
bassFigIB = \figuremode {s4 s s s s s s2 s4}
bassFigIC = \figuremode {s4 s s s s4. s8 s4}
bassFigID = \figuremode {s4 s s s8 s s4 s s}

bassFigIIA = \figuremode {s4 <6> s <6> s <6>8 s <6>4 <6> s}
bassFigIIB = \figuremode {s4 <6> s s s <6> s2 s4}
bassFigIIC = \figuremode {<6>4 s s s s4. <6>8 <6>4}
bassFigIID = \figuremode {s4 <6> s s8 s \partial 2. <6>4 s s}

scoreBChordNamesLeadSheet = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 { \partial 4 g4:m \chordsA d:m \chordsB } \partial 4 d:m \chordsC g:m \chordsD
  \bar "|."  
}

scoreBMelody = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 d,4^"CF" \cfA f4 \cfB } \partial 4 a4 \cfC \breathe d \cfD
  \bar "|."  
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  <<{Wer \verseAA und \verseBA} \new Lyrics{den \verseAB in \verseBB}>> Wer \verseC der \verseD
  \bar "|."  
}

scoreBChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 { \partial 4 d4:m \bassChordsA d4:m/fs \bassChordsB } \partial 4 a4:m \bassChordsC d4:m \bassChordsD
  \bar "|."  
}

scoreBFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.
  \repeat volta 2 { \partial 4 s4 \bassFigIA s4 \bassFigIB } \partial 4 s4 \bassFigIC s4 \bassFigID
  \bar "|."
}

scoreBFigBassBassFiguresII = \figuremode {
  \global
  % Figures follow here.
  \repeat volta 2 { \partial 4 s4 \bassFigIIA <6>4 \bassFigIIB } \partial 4 s4 \bassFigIIC s4 \bassFigIID
  \bar "|."
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

altoA = {bf4 d d d bf d8 bf a4 g r}
altoB = {a4 g g bf bf a bf2 r4}
altoC = {d4 ef g g ef4. d8 d4}
altoD = {ef4 d d bf8 d \partial 2. d4 d bf}

tenorA = {d4 f g f d f8 d d4 bf r}
tenorB = {d4 c bf d d d d2 r4}
tenorC = {g4 g bf bf g4. g8 g4}
tenorD = {g4 g f d8 f \partial 2. g4 fs d}

bassA = {g4 d g d g d8 g d4 g r}
bassB = {d4 c g' g g d g2 r4}
bassC = {g4 c g g c4. g8 g4}
bassD = {c4 g d g8 d \partial 2. g4 d g}

duxSA = \cfA
duxSB = \cfB
duxSC = \cfC
duxSD = \cfD

duxRestA = {r4 r r r r r8 r r4 r r}
duxRestB = {r4 r r r r r r2 r4}
duxRestC = {r4 r r r r4. r8 r4}
duxRestD = {r4 r r r8 r r4 r r}

duxSBassFigA = \figuremode {<6>4 s4 s s s <6>8 <6> <6>4 s4 s s2}
duxSBassFigB = \figuremode {}
duxSBassFigC = \figuremode {}
duxSBassFigD = \figuremode {}

comesTA = {d4 e f e d e8 d cs4 a r} % {g4 a bf a g a8 g fs4 d r}
comesTB = {c4 bf a d d cs d2 r4} % {f4 ef d g g fs g2 r4}
comesTC = {f4 g a a g4. f8 f4} % {bf c d d c4. bf8 bf4}
comesTD = {g4 f e d8 e f4 e d} % {c bf a g8 a bf4 a g}

biciniumA = {f4 g a g f g8 f e4 d r}
biciniumB = {e d c f f e f2 r4}
biciniumC = {d bf d d bf4. d8 d4}
biciniumD = {bf4 a g f8 g a4 g f}

comesTChordsA = \chordmode {d4:m a:m d:m a:m d:m a8:m d:m a4 d:m s} % {g4:m d:m g:m d:m g:m d8:m g:m d4 g:m s}
comesTChordsB = \chordmode {a4:m g:m d:m d:m d:m a d2:m s4} % {d4:m c:m g:m g:m g:m d g2:m s4}
comesTChordsC = \chordmode {d4:m g:m d:m d:m g4.:m d8:m d4:m} % {g4:m c:m g:m g:m c4.:m g8:m g4:m}
comesTChordsD = \chordmode {g4:m d:m a:m d8:m a:m d4:m a d:m} % {c4:m g:m d:m g8:m d:m g4:m d g:m}

comesTBassFigA = \figuremode {<6>4 s4 s s s <6>8 <6> <6>4 s s4}
comesTBassFigB = \figuremode {<6>4}
comesTBassFigC = \figuremode {<6>4}
comesTBassFigD = \figuremode {<6>4}

comesAChordsA = \chordmode {\comesTChordsA}
comesAChordsB = \chordmode {\comesTChordsB}
comesAChordsC = \chordmode {\comesTChordsC}
comesAChordsD = \chordmode {\comesTChordsD}

comesABassFigA = \figuremode {<6>4 s4 s s s <6>8 <6> <6>4 s s4}
comesABassFigB = \figuremode {<6>4}
comesABassFigC = \figuremode {<6>4}
comesABassFigD = \figuremode {<6>4}

codettaISA = {ef4 fs g2 r4}
codettaISB = {ef4 fs g2}
codettaISC = {ef4 fs g4}
codettaISD = {ef4 fs g}

codettaITA = {c4 d bf2 r4}
codettaITB = {c4 d bf2}
codettaITC = {c4 d bf}
codettaITD = {c4 d bf}

codettaRestA = {r4 r r2 r4}
codettaRestB = {r4 r r2}
codettaRestC = {r4 r r}
codettaRestD = {r4 r r}

codettaIVerseA = \lyricmode {da da da.
}
codettaIVerseB = \lyricmode {da da da.
}
codettaIVerseC = \lyricmode {da da da.
}
codettaIVerseD = \lyricmode {da da da.
}

codettaIChordsA = \chordmode {c4:m d g2.:m}
codettaIChordsB = \chordmode {c4:m d g2:m}
codettaIChordsC = \chordmode {c4:m d g:m}
codettaIChordsD = \chordmode {c4:m d g:m}

codettaIBassFigA = \figuremode {<6>4 s <6>2.}
codettaIBassFigB = \figuremode {<6>4 s <6>2.}
codettaIBassFigC = \figuremode {<6>4 s <6>2.}
codettaIBassFigD = \figuremode {<6>4 s <6>2.}

adDuxSA = {bf4 c d c bf c8 bf a4 g r}
adDuxSB = {a4 g a d d a d2 r4}
adDuxSC = {g4 g f f ef4. g8 g4}
adDuxSD = {ef4 g ef c8 c c4 c bf}

adDuxTA = {d4 f f f d f8 d d4 d r}
adDuxTB = {c4 c f bf bf d bf2 r4}
adDuxTC = {d4 ef a a g4. g8 g4}
adDuxTD = {g4 d' c bf8 c d4 a d}

duxBA = \cfA
duxBB = \cfB
duxBC = \cfC
duxBD = \cfD

duxBassChordsA = \chordmode {\bassChordsA}
duxBassChordsB = \chordmode {\bassChordsB}
duxBassChordsC = \chordmode {\bassChordsC}
duxBassChordsD = \chordmode {\bassChordsD}

duxBassFigA = \figuremode {\bassFigIIA}
duxBassFigB = \figuremode {\bassFigIIB}
duxBassFigC = \figuremode {\bassFigIIC}
duxBassFigD = \figuremode {\bassFigIID}

adComesASA = {f4 a a a f a8 f e4 d r} % {bf4 d d d bf d8 bf a4 g r}
adComesASB = {e4 d d f f e f2 r4}
adComesASC = {a4 bf d d bf4. a8 a4}
adComesASD = {bf4 a a f8 a a4 a a}

comesAA = \comesTA
comesAB = \comesTB
comesAC = \comesTC
comesAD = \comesTD

adComesTA = {a4 c d c a c8 a a4 f r}
adComesTB = {a4 g f a a a f2 r4}
adComesTC = {d4 d f f d4. d8 d4}
adComesTD = {d4 d c a8 c d4 c f}

adComesBA = {d4 a' d, a' d, a'8 d, a'4 d, r}
adComesBB = {a4 g d d d a' d,2 r4}
adComesBC = {d4 g d d g4. d8 d4}
adComesBD = {g4 d a' d, a' d, a'}

codettaIISA = {g4 fs g2}
codettaIISB = {g4 fs g2}
codettaIISC = {\partial 2. g4 fs g}
codettaIISD = {g4 fs g}

codettaIIAA = {ef'4 d d2}
codettaIIAB = {ef4 d d2}
codettaIIAC = {\partial 2. ef4 d d}
codettaIIAD = {ef4 d d}

codettaIITA = {c'4 a bf2}
codettaIITB = {c'4 a bf2}
codettaIITC = {\partial 2. c4 a bf}
codettaIITD = {c4 a bf}

codettaIIBA = {c4 d g2}
codettaIIBB = {c4 d g2}
codettaIIBC = {\partial 2. c4 d g}
codettaIIBD = {c4 d g}

codettaIIVerseA = \lyricmode {da da da.
}
codettaIIVerseB = \lyricmode {da da da.
}
codettaIIVerseC = \lyricmode {da da da.
}
codettaIIVerseD = \lyricmode {da da da.
}

codettaIIChordsA = \chordmode {c4:m d g2:m s2}
codettaIIChordsB = \chordmode {c4:m d g2:m}
codettaIIChordsC = \chordmode {\partial 2. c4:m d g:m}
codettaIIChordsD = \chordmode {c4:m d g:m}

codettaIIBassFigA = \figuremode {<6>4 s <6>2.}
codettaIIBassFigB = \figuremode {<6>4 s <6>2.}
codettaIIBassFigC = \figuremode {<6>4 s <6>2.}
codettaIIBassFigD = \figuremode {<6>4 s <6>2.}

scoreCSoprano = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 d,4^"CF" \cfA f4 \cfB } \partial 4 a4 \cfC \breathe d4 \cfD
  \bar "|.|"
  r2. d4^"Dux S a" \duxSA r2 c4^"Bicinium a" \biciniumA \breathe  d4^"Codetta 1 S a" \codettaISA a4^"ad Dux S a" \adDuxSA r2 d4^"ad Comes A S a" \adComesASA \breathe d4^"Codetta 2 S a" \codettaIISA r2
  \bar "||"
  r4 f4^"Dux S b" \duxSB r4 r4 e4^"Bicinium b" \biciniumB \breathe  f4^"Codetta 1 S b" \codettaISB r4 a4^"ad Dux S b" \adDuxSB r4 r4 c,4^"ad Comes A S b" \adComesASB \breathe f4^"Codetta 2 S b" \codettaIISB
  \bar "||"
  r2. d4^"Dux S c" \duxSC \breathe c4^"Bicinium c" \biciniumC \breathe d4^"Codetta 1 S c" \codettaISC \breathe  a4^"ad Dux S c" \adDuxSC a4^"ad Comes A S c" \adComesASC \breathe a4^"Codetta 2 S c" \codettaIISC
  \bar "||"
  \partial 4 d'4^"Dux S d" \duxSD c4^"Bicinium d" \biciniumD \breathe  f4^"Codetta 1 S d" \codettaISD a4^"ad Dux S d" \adDuxSD d'4^"ad Comes A S d" \adComesASD \breathe a4^"Codetta 2 S d" \codettaIISD
  \bar "|."
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 f,4 \altoA a4 \altoB } \partial 4 d4 \altoC \breathe g \altoD
  \bar "|.|"
  r2. r4 \duxRestA r2 r4 \duxRestA \breathe r4 \codettaRestA r4 \duxRestA r2 a4^"Comes A a" \comesAA \breathe a4^"Codetta 2 A a" \codettaIIAA r2
  \bar "||"
  r4 r4 \duxRestB r4 r4 r4 \duxRestB \breathe r4 \codettaRestB r4 r4 \duxRestB r4 r4 a4^"Comes A b" \comesAB \breathe d4^"Codetta 2 A b" \codettaIIAB
  \bar "||"
  r2. r4 \duxRestC \breathe r4 \duxRestC \breathe r4 \codettaRestC \breathe r4 \duxRestC e4^"Comes A c" \comesAC \breathe f4^"Codetta 2 A c" \codettaIIAC
  \bar "||"
  \partial 4 r4 \duxRestD r4 \duxRestD \breathe r4 \codettaRestD r4 \duxRestD a'4^"Comes A d" \comesAD \breathe d4^"Codetta 2 A d" \codettaIIAD
  \bar "|."
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 bf,4 \tenorA d4 \tenorB } \partial 4 f4 \tenorC \breathe bf \tenorD
  \bar "|.|"
  r2. r4 \duxRestA r2 a'4^"Comes T a" \comesTA a^"Codetta 1 T a" \breathe  \codettaITA f4^"ad Dux T a" \adDuxTA r2 f4^"ad Comes A T a" \adComesTA \breathe f^"Codetta 2 T a" \codettaIITA r2
  \bar "||"
  r4 r4 \duxRestB r4 r4 c4^"Comes T b" \comesTB \breathe d^"Codetta 1 T b" \codettaITB r4 f4^"ad Dux T a" \adDuxTB r4 r4 e,4^"ad Comes A T b" \adComesTB \breathe  f^"Codetta 2 T b" \codettaIITB
  \bar "||"
  r2. r4 \duxRestC \breathe e,4^"Comes T c" \comesTC \breathe f^"Codetta 1 T c" \codettaITC \breathe f'4^"ad Dux T a" \adDuxTC c4^"ad Comes A T c" \adComesTC \breathe d^"Codetta 2 T c" \codettaIITC
  \bar "||"
  \partial 4 r4 \duxRestD a4^"Comes T d" \comesTD \breathe d^"Codetta 1 T d" \codettaITD f'4^"ad Dux T a" \adDuxTD f4^"ad Comes A T d" \adComesTD \breathe f^"Codetta 2 T d" \codettaIITD
  \bar "|."
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 g4 \bassA d4 \bassB } \partial 4 d4 \bassC \breathe g4 \bassD
  \bar "|.|"
  r2. r4 \duxRestA r2 r4 \duxRestA \breathe r4 \codettaRestA d4^"Dux B a" \duxBA r2 d4^"ad Comes A B a" \adComesBA \breathe d4^"Codetta 2 B a" \codettaIIBA r2
  \bar "||"
  r4 r4 \duxRestB r4 r4 r4 \duxRestB \breathe r4 \codettaRestB r4 f4^"Dux B b" \duxBB r4 r4 a4^"ad Comes A B b" \adComesBB \breathe d4^"Codetta 2 B b" \codettaIIBB
  \bar "||"
  r2. r4 \duxRestC \breathe r4 \duxRestC \breathe r4 \codettaRestC \breathe d'4^"Dux B c" \duxBC a4^"ad Comes A B c" \adComesBC \breathe d4^"Codetta 2 B c" \codettaIIBC
  \bar "||"
  \partial 4 r4 \duxRestD r4 \duxRestD \breathe r4 \codettaRestD d4^"Dux B d" \duxBD d4^"ad Comes A B d" \adComesBD \breathe a4^"Codetta 2 B d" \codettaIIBD
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  <<{Wer \verseAA und \verseBA} \new Lyrics{den \verseAB in \verseBB}>> Wer \verseC der \verseD
  Wer \verseAA Wer \verseAA Da \codettaIVerseA Wer \verseAA Wer \verseAA Da \codettaIIVerseA
  und \verseBA und \verseBA Da \codettaIVerseA und \verseBA und \verseBA Da \codettaIVerseA
  Wer \verseC Wer \verseC Da \codettaIVerseA Wer \verseC Wer \verseC Da \codettaIVerseA
  der \verseD der \verseD Da \codettaIVerseA der \verseD der \verseD Da \codettaIVerseA
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
  \repeat volta 2 { \partial 4 g4:m \chordsA d4:m \chordsB } \partial 4 d4:m \chordsC g4:m \chordsD
  \bar "|.|"
  s2. g4:m \chordsA s2 d4:m \comesTChordsA d4:m \codettaIChordsA d4:m \duxBassChordsA s2 d4:m \comesAChordsA d4:m \codettaIIChordsA
  s4 d4:m \chordsB s4 s4 a4:m \comesTChordsB d4:m \codettaIChordsB s4 d4:m \duxBassChordsB s4 s4 a4:m \comesAChordsB d4:m \codettaIIChordsB
  s2. g4:m \chordsC a4:m \comesTChordsC d4:m \codettaIChordsC d4:m \duxBassChordsC a4:m \comesAChordsC d4:m \codettaIIChordsC
  \partial 4 g4:m \chordsD d4:m \comesTChordsD d4:m \codettaIChordsD d4:m \duxBassChordsD d4:m \comesAChordsD d4:m \codettaIIChordsD
}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.
  \repeat volta 2 { \partial 4 s4 \bassFigIA s4 \bassFigIB } \partial 4 s4 \bassFigIC s4 \bassFigID
  \bar "|.|"
  r2. <6>4 \duxSBassFigA <6>4 \comesTBassFigA <6>4 \codettaIBassFigA <6>4 \duxBassFigA <6>4 \comesABassFigA <6>4 \codettaIIBassFigA
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
  \header {subtitle = "CF im Sopran, inkl. Ritornell / Intonation und Dux / Comes"}
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
  \repeat volta 2 {\partial 4 f,4 \altoA a4 \altoB } \partial 4 d4 \altoC \breathe g \altoD
  \bar "|."
}

scoreDAlto = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 bf,4 \tenorA d4 \tenorB } \partial 4 f4 \tenorC \breathe bf \tenorD
  \bar "|."  
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 d,4^"CF" \cfA f4 \cfB } \partial 4 a4 \cfC \breathe d \cfD
  \bar "|."  
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 g4 \bassA d4 \bassB } \partial 4 d4 \bassC \breathe g4 \bassD
  \bar "|."  
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  <<{Wer \verseAA und \verseBA} \new Lyrics{den \verseAB in \verseBB}>> Wer \verseC der \verseD
  \bar "|."  
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
  \repeat volta 2 { \partial 4 g4:m \chordsA d:m \chordsB } \partial 4 d:m \chordsC g:m \chordsD
  \bar "|."  
}

scoreDFigBass = \figuremode {
  \global
  % Figures follow here.
  \repeat volta 2 { \partial 4 s4 \bassFigIA s4 \bassFigIB } \partial 4 s4 \bassFigIC s4 \bassFigID
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

bSA = {d4 f f f d f8 g d4 g r}
bSB = {c4 c d d d d d2 r4}
bSC = {g4 g a a g4. g8 g4}
bSD = {c4 g a g8 c g4 fs g}

bAA = {g4 c bf c g c8 bf fs4 d r}
bAB = {f4 g f g g a g2 r4}
bAC = {d4 c d d c4. d8 d4}
bAD = {ef4 c c bf8 ef d4 c bf}

bTA = {bf4 f' d f bf, f'8 d d4 g r}
bTB = {c4 c a bf bf d bf2 r4}
bTC = {g4 ef f f ef4. g8 g4}
bTD = {g4 g ef d8 a' g4 fs4 4}

scoreESoprano = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 { \partial 4 d4 \bSA c, \bSB } \partial 4 a \bSC \breathe a4 \bSD
}

scoreEAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 { \partial 4 f4 \bAA f4 \bAB } \partial 4 c,4 \bAC \breathe d4 \bAD
}

scoreETenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 { \partial 4 a4 \bTA c, \bTB } \partial 4 ef4 \bTC \breathe f,4 \bTD
}

scoreEBass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 d,4^"CF" \cfA f4 \cfB } \partial 4 a4 \cfC \breathe d \cfD
  \bar "|."  
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  <<{Wer \verseAA und \verseBA} \new Lyrics{den \verseAB in \verseBB}>> Wer \verseC der \verseD
  \bar "|."   
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
  \repeat volta 2 { \partial 4 d4:m \bassChordsA f4 \bassChordsB } \partial 4 a4:m \bassChordsC d4:m \bassChordsD
  \bar "|."  
}

scoreEFigBass = \figuremode {
  \global
  % Figures follow here.
  \repeat volta 2 { \partial 4 s4 \bassFigIIA s4 \bassFigIIB } \partial 4 s4 \bassFigIIC s4 \bassFigIID
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
  \repeat volta 2 {\partial 4 f,4 \altoA a4 \altoB } \partial 4 d4 \altoC \breathe g \altoD
  \bar "|."  
}

scoreFAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 d4^"CF" \cfA f4 \cfB } \partial 4 a4 \cfC \breathe d \cfD
  \bar "|."  
}

scoreFTenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 bf,4 \tenorA d4 \tenorB } \partial 4 f4 \tenorC \breathe bf \tenorD
  \bar "|."  
}

scoreFBass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 g4 \bassA d4 \bassB } \partial 4 d4 \bassC \breathe g4 \bassD
  \bar "|."  
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  <<{Wer \verseAA und \verseBA} \new Lyrics{den \verseAB in \verseBB}>> Wer \verseC der \verseD
  \bar "|."  
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
  \repeat volta 2 { \partial 4 g4:m \chordsA d:m \chordsB } \partial 4 d:m \chordsC g:m \chordsD
  \bar "|."  
}

scoreFFigBass = \figuremode {
  \global
  % Figures follow here.
  \repeat volta 2 { \partial 4 s4 \bassFigIA s4 \bassFigIB } \partial 4 s4 \bassFigIC s4 \bassFigID
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

