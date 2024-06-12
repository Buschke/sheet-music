\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "Lieder in F-Dur"
  subtitle = ""
  subsubtitle = ""
  instrument = ""
  composer = ""
  arranger = ""
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  copyright = ""
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key f \major
  \tempo "Getragen" 4=100
}

% GL 93, EG 482
mondAufgegangen = {
  \time 4/4
  \repeat volta 2 {
    \partial 4
    f,4^"Der Mond ist aufgegangen, GL 93, EG 482"
    g f bf a g2 f4\breathe
    a a a d c bf2 a4\breathe
    a a a bf a
    \alternative {{g2 r4}{g g f}}
  }
  \bar "|.|"
}

% GL 101, EG 477
nunRuhenWaelder = {
  \time 4/4
  \partial 4
  a4^"Nun ruhen alle Wälder, GL 101, EG 477"
  f g a c bf2 a4\breathe
  a c c g a f2 e4\breathe
  e f g a a g2.\breathe
  a4 f g a c bf2 a4\breathe
  a c c g a f2 e4\breathe
  c f g a bf  \partial 2. a g f\bar "|.|"
}

% GL 139, EG
lammGottes = {
  \time 4/4
  \repeat volta 2 { f4^"Lamm Gottes, GL 139" g(a) a2\breathe a4 g a bf a g f g a2\breathe a4 c bf a g2 a }
  f4 g(a) a2\breathe
  a4 g a bf a g f g a2\breathe
  a4 c bf a g2 \partial 2 f\bar "|.|"
}

% GL 170, EG 179
alleinGottInDerHoehSeiEhr = {
  \time 3/1
  \repeat volta 2 {
    \partial 4
    f4^"Allein Gott in der Höh' sei Ehr, GL 170, EG 179" a2 bf4 c2 bf4 a2 g4 a2\breathe
    a4 a2 g4 bf(a) g f2(e4) f2
  } f4 f2 g4 bf bf a g2 f4 g2\breathe
  g4 a2 bf4 c2 bf4 a2 g4 a2\breathe
  f4 g2 bf4 a2 g4 f2(e4) f2\bar "|.|"
}

% GL 208, EG 190.2
christeDuLammGottes = {
  \time 4/4
  \repeat volta 2 { f4^"Christ, du Lamm Gottes, GL 208, EG 190.2" g a a bf2 a\breathe a4 g a bf c bf a2 r4 a g f a2 g }
  f4 g a a bf2 a\breathe a4 g a bf c bf a2\breathe a4 a g f a2 g f4( g a bf a g) f2\(g1\)\bar "|." 
}

% GL 223, EG 17
wirSagenEuchAnDenLiebenAdvent = {
  \time 3/4
  \repeat volta 2 {
    \partial 4
    a4 a f g a2 f4 g4. f8 e4 f2 r4 a a bf c2 a4 g2 g4 a2
  }
  r4 c c g a f r c' c g a2 r4 f2 a4 g4. f8 e4 f2.~ f2\bar "|"
}

% GL , EG 
% GL , EG 
% GL , EG 
% GL , EG 
% GL , EG 

scoreAMelody = \relative c'' {
  \global
  % Music follows here.
  \mondAufgegangen % GL 93, EG 482
  \nunRuhenWaelder % GL , EG 
  \lammGottes % GL , EG
  \alleinGottInDerHoehSeiEhr % GL , EG
  \christeDuLammGottes % GL , EG
  
% GL , EG 
% GL , EG 
% GL , EG 


}

% GL 93, EG 482
mondAufgegangenV = \lyricmode {
  <<{Der Mond ist auf -- ge -- gan -- gen, die gold -- nen Stern -- lein pran -- gen am Him -- mel hell und klar } \new Lyrics {Der Wald steht schwarz ud schwei -- get und aus den Wie -- sen stei -- get der wei -- ße Ne -- bel \repeat unfold 1 { \skip 1 } wun -- der -- bar. }>> 
}

% GL 101, EG 477
nunRuhenWaelderV = \lyricmode {
  Nun ru -- hen al -- le Wäl -- der,
  Vieh, Men -- schen, Städt und Fel -- der,
  es schläft die gan -- ze Welt;
  ihr a -- ber, mei -- ne Sin -- nen,
  auf, auf, ihr sollt be -- gin -- nen,
  was eu -- rem Schöp -- fer wohl -- ge -- fällt.
}

% GL 139
lammGottesV = \lyricmode {
Lamm Got -- tes, du nimmst hin -- weg die Sün -- de der Welt,
er -- bar -- me dich un -- ser.
Lamm Got -- tes, du nimmst hin -- weg die Sün -- de der Welt,
gib uns dei -- nen Frie -- den.
}

% GL 170, EG 179
alleinGottInDerHoehSeiEhrV = \lyricmode {
  <<{Al -- lein Gott in der Höh sei Ehr und Dank für sei -- ne Gna -- de, } \new Lyrics {dar -- um dass nun und nim -- mer -- mehr uns rüh -- ren kann kein Scha -- de. }>> Ein Wohl -- ge -- fall -- en Gott an uns hat; nun ist groß Fried ohn Un -- ter -- lass, all Fehd hat nun ein En -- de.
}

% GL 208, EG 190.2
christeDuLammGottesV = \lyricmode {
  Chris -- te, du Lamm Got -- tes, der du trägst die Sünd der Welt, er -- barm dich un -- ser. Chris -- te, du Lamm Got -- tes, der du trägst die Sünd der Welt, gib uns dei -- nen Frie -- den. A -- men.
}

% GL , EG 
% GL , EG 
% GL , EG 
% GL , EG 
% GL , EG 
% GL , EG 



scoreAVerse = \lyricmode {
  % Lyrics follow here.
  \mondAufgegangenV % GL , EG 
  \nunRuhenWaelderV % GL , EG 
  \lammGottesV % GL , EG 
  \alleinGottInDerHoehSeiEhrV % GL , EG 
  \christeDuLammGottesV % GL , EG 
}

\bookpart {
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreAMelody }
    \addlyrics { \scoreAVerse }
    \layout { }
    \midi { }
  }
}

\bookpart {
\score {
  \new ChoirStaff <<
    \new Staff {
      \new Voice = "sopranos" {
        \scoreAMelody
      }
    }
    \new Lyrics = "sopranos"
    \context Lyrics = "sopranos" {
      \lyricsto "sopranos" {
        \scoreAVerse
      }
    }
  >>
}
}

scoreBChordNamesLeadSheet = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
}

scoreBMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreBFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.
  
}

scoreBChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  
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
