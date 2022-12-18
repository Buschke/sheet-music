\version "2.22.2"
\language "english"

\header {
  dedication = "NN"
  title = "NN"
  subtitle = "NN"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "NN"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "NN"
  copyright = "NN"
  tagline = "NN"
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key c \major
  \time 4/4
  \tempo 4=100
}

extendOn = \bassFigureExtendersOn
extendOff = \bassFigureExtendersOff

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Variante 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key c \major
  \time 4/4
  \tempo 4=100
}


scoreASopranoA = \relative c' {
  \globalA
  \dynamicUp
  % Music follows here.
  e4 d c e |
  g f e2 |
  g4 g f e |
  d d c2 |
}

scoreASopranoB = \relative c' {
  c'4 c b g |
  a a g2 |
  g4 g a a |
  g( f) e2 \breathe |
  c4 e f g |
  a a g2 |
  f4 g e d8( c) |
  d2 c
}

scoreAAltoA = \relative c' {
  \globalA
  % Music follows here.
  c4 b g c|
  c c c2|
  d4 e c c|
  b b g2|
}

scoreAAltoB = \relative c' {
  e4 e d e|
  f f e2|
  d4 e f f|
  e( c) c2|
  g4 c c e|
  f f e2|
  c4 e c b8( g)|
  b2 g|
}

scoreATenorA = \relative c' {
  \globalA
  % Music follows here.
  g4 g e g|
  e a g2|
  b4 g a g|
  g g e2|
}

scoreATenorB = \relative c' {
  g4 g g g|
  c c c2|
  b4 c c c|
  c( a) g2|
  e4 g a g|
  c c c2|
  a4 c g g8( e)|
  g2 e|
}

scoreABassA = \relative c {
  \globalA
  % Music follows here.
  c4 g c c|
  c f c2|
  g4 c f c|
  g g c2|
}

scoreABassB = \relative c {
  c4 c g c|
  f f c2|
  g4 c f f|
  c( f) c2\breathe|
  c4 c f c|
  f f c2|
  f4 c c g8( c)|
  g2 c|
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreAVerseA = \lyricmode {
  % Lyrics follow here.
  Hei -- lig bist du, gro -- ßer Gott, hei -- lig, Herr, Gott Ze -- ba -- ot.
}

scoreAVerseB = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Zeu -- gen dei -- ner Herr -- lich -- keit Him -- mel sind und Er -- de.
  Lob und Preis durch al -- le Zeit, dir o Höchs -- ter, wer -- de.
}

scoreAVerseC = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Der da kommt vom ew -- gen Thron, er sei hoch ge -- prie -- sen.
  E -- wig sei dem Got -- tes -- sohn Ehr und Dank er -- wie -- sen.
}

claveA = \new DrumStaff <<
  \drummode {
    \globalA
    <<{\repeat unfold 4 {hh8 cl}}\\{bd4 sn sn sn}>>
  }
>>


% } <<\new Voice = "A" { \clef "treble_8" \scoreATenorVoiceA \repeat volta 2 {\scoreATenorVoiceB}} 
% %\addlyrics { \scoreAVerseA } 
% \new Lyrics \lyricsto "A" { \scoreAVerseA << {\scoreAVerseB} \new Lyrics {\set associatedVoice ="A" {\scoreAVerseC}} >>}
% >>

scoreA = \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreASopranoA \repeat volta 2 { \scoreASopranoB } }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreAAltoA \repeat volta 2 { \scoreAAltoB } }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" {\scoreAVerseA << {\scoreAVerseB} \new Lyrics {\set associatedVoice = "soprano" {\scoreAVerseC}} >>}
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreATenorA \repeat volta 2 { \scoreATenorB } }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreABassA \repeat volta 2 { \scoreABassB } }
      >>
    >>

\bookpart {
\header {
  title = "Kirchenmusiker C-Ausbildung"
  subtitle = "Hausaufgaben KW 50-2022: Harmonisieren: Heilig bist du großer Gott"
  subsubtitle = "Variante 1: C.F. im Sopran, mit Hauptstufen 'ohne alles'"
  instrument = "Chor"
  poet = "T: Aachen M: Joseph Mohr, Franz Braun"
  meter = "NN"
  piece = "T: 1867, M: 1877/1891, 1675"
  opus = "GL 198"
}
  \score {
%    {
%      \claveA
      \scoreA
%    }
    \layout { }
%    \midi { }
  }
  \score {    \unfoldRepeats
    {
      \claveA
      \scoreA
    }
%    \layout { }
    \midi { }
  }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Variante 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalB = {
  \key c \major
  \time 4/4
  \tempo 4=100
}

scoreBSopranoA = \relative c' {
  \globalB
  \dynamicUp
  % Music follows here.
  e4 d c e |
  g f e2 |
  g4 g f e |
  d d c2 |
}

scoreBSopranoB = \relative c' {
  c'4 c b g |
  a a g2 |
  g4 g a a |
  g( f) e2 \breathe |
  c4 e f g |
  a a g2 |
  f4 g e d8( c) |
  d2 c
}

scoreBAltoA = \relative c' {
  \globalB
  % Music follows here.
  c4 g g c|
  c c c2|
  d4 e c c|
  c b g2|
}

scoreBAltoB = \relative c' {
  e4 e d c|
  c c c2|
  d4 e f f|
  e( c) c2|
  g4 c c e|
  f f e2|
  c4 e c b8( g)|
  b2 g|
}

scoreBTenorA = \relative c' {
  \globalB
  % Music follows here.
  g4 g e g|
  c a g2|
  g4 c a g|
  g g e2|
}

scoreBTenorB = \relative c' {
  g4 g g e|
  f f e2|
  b'4 c c c|
  c( a) g2|
  e4 g a c|
  c c c2|
  a4 c g g8( e)|
  g2 e|
}

scoreBBassA = \relative c {
  \globalB
  % Music follows here.
  c4 b c c|
  e f c2|
  b4 c f c|
  g g c2|
}

scoreBBassB = \relative c {
  c4 c g c|
  f, f c'2|
  g'4 c, f f|
  c( f) c2\breathe|
  c4 c f c|
  f f c2|
  f4 c c g8( c)|
  g2 c|
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreBVerseA = \lyricmode {
  % Lyrics follow here.
  Hei -- lig bist du, gro -- ßer Gott, hei -- lig, Herr, Gott Ze -- ba -- ot.
}

scoreBVerseB = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Zeu -- gen dei -- ner Herr -- lich -- keit Him -- mel sind und Er -- de.
  Lob und Preis durch al -- le Zeit, dir o Höchs -- ter, wer -- de.
}

scoreBVerseC = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Der da kommt vom ew -- gen Thron, er sei hoch ge -- prie -- sen.
  E -- wig sei dem Got -- tes -- sohn Ehr und Dank er -- wie -- sen.
}

scoreBFigBass = \figuremode {
  \globalB
  % Figures follow here.
%      \set figuredBassAlterationDirection = #RIGHT
%      \set figuredBassPlusDirection = #RIGHT
%      \override BassFigureAlignment.stacking-dir = #DOWN  
%      s8 |
%      s4 <6>4 <_+>4 <6>4 |
%      <6 4\+ 2>8 <6>8 <_+> s8 s2 |
%      <5>8 <6 4>8 <6 5>4 s4 <5>8 <6>8 |
%      s4 <6 5 _-> <_+>2 |
%      <6>8 <_+>8 <6>8 <6 5>8 <5 4>8 \extendOn <5 _!>8 \extendOff s4 |
%      <6>4 <6->8 <6 5->8 <5 4->8 \extendOn <5 3>4 \extendOff <5 _+>8 |
%      <7>8 <6>8 <5>4 <9 4>8 <8 3>8 s4 |
      
  r4 <6> r r
  <6> r4 r2
  <6>2 r4 r4
  <5 4>4 \extendOn <5 3> \extendOff
}

claveB = \new DrumStaff <<
  \drummode {
    \globalB
    <<{\repeat unfold 4 {hh8 cl}}\\{bd4 sn sn sn}>>
  }
>>

scoreB = \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreBSopranoA \repeat volta 2 { \scoreBSopranoB } }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreBAltoA \repeat volta 2 { \scoreBAltoB } }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" {\scoreBVerseA << {\scoreBVerseB} \new Lyrics {\set associatedVoice = "soprano" {\scoreBVerseC}} >>}
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreBTenorA \repeat volta 2 { \scoreBTenorB } }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreBBassA \repeat volta 2 { \scoreBBassB } }
      >>
    >>

scoreBBassFiguresPart = \new FiguredBass \scoreBFigBass

\bookpart {
\header {
  title = "Kirchenmusiker C-Ausbildung"
  subtitle = "Hausaufgaben KW 50-2022: Harmonisieren: Heilig bist du großer Gott"
  subsubtitle = "Variante 2: C.F. im Sopran, mit Hauptstufen mit Sext und Vorhalt"
  instrument = "Chor"
  poet = "T: Aachen M: Joseph Mohr, Franz Braun"
  meter = "NN"
  piece = "T: 1867, M: 1877/1891, 1675"
  opus = "GL 198"
}
  \score {
%    {
%      \claveA
<<
      \scoreB
      \scoreBBassFiguresPart
>>
%    }
    \layout { }
%    \midi { }
  }
  \score {    \unfoldRepeats
    {
      \claveB
      \scoreB
    }
%    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Variante 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \key c \major
  \time 4/4
  \tempo 4=100
}

scoreCRitSoprano = \relative c' {
  e8^"Ritornell" f d e c d e f |
  g8 a f d e d c d  |
%  g4 f e2 |
  g4 g f e |
  d d c2\fermata |
  \bar "||"
}

scoreCRitAlto = \relative c' {
  s1 s s s
  
}

scoreCRitTenor = \relative c' {
  s1 s s s
  
}

scoreCRitBass = \relative c {
  s1 s s s
  
}

scoreCCFSopranoA = \relative c' {
  \globalC
  \dynamicUp
  % Pause for ritornell
  s1 s s s

  % Music follows here.
  e4 d c e |
  g f e2 |
  g4 g f e |
  d d c2 |
}

scoreCCFSopranoB = \relative c' {
  c'4 c b g |
  a a g2 |
  g4 g a a |
  g( f) e2 \breathe |
  c4 e f g |
  a a g2 |
  f4 g e d8( c) |
  d2 c
}

scoreCSopranoA = \relative c' {
  \globalC
  \dynamicUp
  % Music follows here.
  e8 f d4 c e |
  g f e2 |
  g4 g f e |
  d d c2 |
}

scoreCSopranoB = \relative c' {
  c'4 c b g |
  a a g2 |
  g4 g a a |
  g( f) e2 \breathe |
  c4 e f g |
  a a g2 |
  f4 g e d8( c) |
  d2 c
}

scoreCAltoA = \relative c' {
  \globalC
  % Music follows here.
  c4 g g c|
  c c c2|
  d4 e c c|
  c b g2|
}

scoreCAltoB = \relative c' {
  e4 e d c|
  c c c2|
  d4 e f f|
  e( c) c2|
  g4 c c e|
  f f e2|
  c4 e c b8( g)|
  b2 g|
}

scoreCTenorA = \relative c' {
  \globalC
  % Music follows here.
  g4 g e g|
  c a g2|
  g4 c a g|
  g g e2|
}

scoreCTenorB = \relative c' {
  g4 g g e|
  f f e2|
  b'4 c c c|
  c( a) g2|
  e4 g a c|
  c c c2|
  a4 c g g8( e)|
  g2 e|
}

scoreCBassA = \relative c {
  \globalC
  % Music follows here.
  c4 b c c|
  e f c2|
  b4 c f c|
  g g c2|
}

scoreCBassB = \relative c {
  c4 c g c|
  f, f c'2|
  g'4 c, f f|
  c( f) c2\breathe|
  c4 c f c|
  f f c2|
  f4 c c g8( c)|
  g2 c|
}

scoreCVerseA = \lyricmode {
  % Lyrics follow here.
  Hei -- lig bist du, gro -- ßer Gott, hei -- lig, Herr, Gott Ze -- ba -- ot.
}

scoreCVerseB = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Zeu -- gen dei -- ner Herr -- lich -- keit Him -- mel sind und Er -- de.
  Lob und Preis durch al -- le Zeit, dir o Höchs -- ter, wer -- de.
}

scoreCVerseC = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Der da kommt vom ew -- gen Thron, er sei hoch ge -- prie -- sen.
  E -- wig sei dem Got -- tes -- sohn Ehr und Dank er -- wie -- sen.
}

scoreCFigBass = \figuremode {
  \globalC
  % Pause for ritornell
  s1 s s s
  % Figures follow here.   
  r4 <6> r r
  <6> r4 r2
  <6>2 r4 r4
  <5 4>4 \extendOn <5 3> \extendOff
}

claveC = \new DrumStaff <<
  \drummode {
    \globalC
    <<{\repeat unfold 4 {hh8 cl}}\\{bd4 sn sn sn}>>
  }
>>

scoreCRit = <<
  \scoreCRitSoprano
>>

scoreCCF = {<<
        \new Staff = "cff" \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Cantus" "Firmus" }
        shortInstrumentName = \markup \center-column { "C." "F." }
      } <<
        \new Voice = "cf" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreCCFSopranoA \repeat volta 2 { \scoreCCFSopranoB } }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "cf" {\scoreCVerseA << {\scoreCVerseB} \new Lyrics {\set associatedVoice = "cf" {\scoreCVerseC}} >>}>>
}

scoreC = \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreCRitSoprano \scoreCSopranoA \repeat volta 2 { \scoreCSopranoB } }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreCRitAlto \scoreCAltoA \repeat volta 2 { \scoreCAltoB } }
      >>
%      \new Lyrics \with {
%        \override VerticalAxisGroup #'staff-affinity = #CENTER
%      } \lyricsto "soprano" {\scoreCVerseA << {\scoreCVerseB} \new Lyrics {\set associatedVoice = "soprano" {\scoreCVerseC}} >>}
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreCRitTenor \scoreCTenorA \repeat volta 2 { \scoreCTenorB } }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreCRitBass \scoreCBassA \repeat volta 2 { \scoreCBassB } }
      >>
>>

scoreCBassFiguresPart = \new FiguredBass \scoreCFigBass


\bookpart {
\header {
  title = "Kirchenmusiker C-Ausbildung"
  subtitle = "Hausaufgaben KW 50-2022: Harmonisieren: Heilig bist du großer Gott"
  subsubtitle = "Variante 3: C.F. im Sopran, mit Nebenstufen und Ausschmücken, mit Ritornell"
  instrument = "Chor"
  poet = "T: Aachen M: Joseph Mohr, Franz Braun"
  meter = "NN"
  piece = "T: 1867, M: 1877/1891, 1675"
  opus = "GL 198"
}
  \score {
%    {
%      \claveA
<<
      \scoreCCF
      \scoreC
      \scoreCBassFiguresPart
>>
%    }
    \layout { }
%    \midi { }
  }
  \score {    \unfoldRepeats
    {
      \claveC
      \scoreC
    }
%    \layout { }
    \midi { }
  }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Variante 4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalD = {
  \key c \major
  \time 4/4
  \tempo 4=100
}

scoreDCFTenorA = \relative c' {
  \globalD
  \clef "treble_8"
  \dynamicUp
  % Ritornell
  s1 s s s\fermata \bar "||"
  % Music follows here.
  e,4 d c e |
  g f e2 |
  g4 g f e |
  d d c2 |
}

scoreDCFTenorB = \relative c' {
  c4 c b g |
  a a g2 |
  g4 g a a |
  g( f) e2 \breathe |
  c4 e f g |
  a a g2 |
  f4 g e d8( c) |
  d2 c
}

scoreDSopranoA = \relative c' {
  \globalD
  \dynamicUp
  % Ritornell
  s1^"Ritornell" s s s\fermata \bar "||"
  % Music follows here.
  e4 d c e |
  g f e2 |
  g4 g f e |
  d d c2 |
}

scoreDSopranoB = \relative c' {
  c'4 c b g |
  a a g2 |
  g4 g a a |
  g( f) e2 \breathe |
  c4 e f g |
  a a g2 |
  f4 g e d8( c) |
  d2 c
}

scoreDAltoA = \relative c' {
  \globalD
  % Ritornell
  s1 s s s\fermata \bar "||"
  % Music follows here.
  c4 g g c|
  c c c2|
  d4 e c c|
  c b g2|
}

scoreDAltoB = \relative c' {
  e4 e d c|
  c c c2|
  d4 e f f|
  e( c) c2|
  g4 c c e|
  f f e2|
  c4 e c b8( g)|
  b2 g|
}

scoreDTenorA = \relative c' {
  \globalD
  % Ritornell
  s1 s s s\fermata \bar "||"
  % Music follows here.
  e,4 d c e |
  g f e2 |
  g4 g f e |
  d d c2 |
%  g4 g e g|
%  c a g2|
%  g4 c a g|
%  g g e2|
}

scoreDTenorB = \relative c' {
  c4 c b g |
  a a g2 |
  g4 g a a |
  g( f) e2 \breathe |
  c4 e f g |
  a a g2 |
  f4 g e d8( c) |
  d2 c
%  g4 g g e|
%  f f e2|
%  b'4 c c c|
%  c( a) g2|
%  e4 g a c|
%  c c c2|
%  a4 c g g8( e)|
%  g2 e|
}

scoreDBassA = \relative c {
  \globalD
  % Ritornell
  s1 s s s\fermata \bar "||"
  % Music follows here.
  c4 b c c|
  e f c2|
  b4 c f c|
  g g c2|
}

scoreDBassB = \relative c {
  c4 c g c|
  f, f c'2|
  g'4 c, f f|
  c( f) c2\breathe|
  c4 c f c|
  f f c2|
  f4 c c g8( c)|
  g2 c|
}

scoreDVerseA = \lyricmode {
  % Lyrics follow here.
  Hei -- lig bist du, gro -- ßer Gott, hei -- lig, Herr, Gott Ze -- ba -- ot.
}

scoreDVerseB = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Zeu -- gen dei -- ner Herr -- lich -- keit Him -- mel sind und Er -- de.
  Lob und Preis durch al -- le Zeit, dir o Höchs -- ter, wer -- de.
}

scoreDVerseC = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Der da kommt vom ew -- gen Thron, er sei hoch ge -- prie -- sen.
  E -- wig sei dem Got -- tes -- sohn Ehr und Dank er -- wie -- sen.
}

scoreDFigBass = \figuremode {
  \globalD
  % Ritornell
  s1 s s s
  % Figures follow here.
      
  r4 <6> r r
  <6> r4 r2
  <6>2 r4 r4
  <5 4>4 \extendOn <5 3> \extendOff
}

claveD = \new DrumStaff <<
  \drummode {
    \globalD
    <<{\repeat unfold 4 {hh8 cl}}\\{bd4 sn sn sn}>>
  }
>>

scoreDCF = {<<
        \new Staff = "cff" \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Cantus" "Firmus" }
        shortInstrumentName = \markup \center-column { "C." "F." }
      } <<
        \new Voice = "cf" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreDCFTenorA \repeat volta 2 { \scoreDCFTenorB } }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "cf" {\scoreDVerseA << {\scoreDVerseB} \new Lyrics {\set associatedVoice = "cf" {\scoreDVerseC}} >>}>>
}

scoreD = \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreDSopranoA \repeat volta 2 { \scoreDSopranoB } }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreDAltoA \repeat volta 2 { \scoreDAltoB } }
      >>
%      \new Lyrics \with {
%        \override VerticalAxisGroup #'staff-affinity = #CENTER
%      } \lyricsto "soprano" {\scoreCVerseA << {\scoreCVerseB} \new Lyrics {\set associatedVoice = "soprano" {\scoreCVerseC}} >>}
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreDTenorA \repeat volta 2 { \scoreDTenorB } }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreDBassA \repeat volta 2 { \scoreDBassB } }
      >>
>>

scoreDBassFiguresPart = \new FiguredBass \scoreDFigBass


\bookpart {
\header {
  title = "Kirchenmusiker C-Ausbildung"
  subtitle = "Hausaufgaben KW 50-2022: Harmonisieren: Heilig bist du großer Gott"
  subsubtitle = "Variante 4: C.F. im Tenor, mit Nebenstufen und Ausschmücken, mit Ritornell"
  instrument = "Chor"
  poet = "T: Aachen M: Joseph Mohr, Franz Braun"
  meter = "NN"
  piece = "T: 1867, M: 1877/1891, 1675"
  opus = "GL 198"
}
  \score {
%    {
%      \claveA
<<
      \scoreDCF
      \scoreD
      \scoreDBassFiguresPart
>>
%    }
    \layout { }
%    \midi { }
  }
  \score {    \unfoldRepeats
    {
      \claveD
      <<
        \scoreDCF
        \scoreD
      >>
    }
%    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Variante 5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalE = {
  \key c \major
  \time 4/4
  \tempo 4=100
}

scoreECFBassA = \relative c' {
  \globalE
  \clef bass
  \dynamicUp
  % Music follows here.
  e,4 d c e |
  g f e2 |
  g4 g f e |
  d d c2 |
}

scoreECFBassB = \relative c' {
  c4 c b g |
  a a g2 |
  g4 g a a |
  g( f) e2 \breathe |
  c4 e f g |
  a a g2 |
  f4 g e d8( c) |
  d2 c
}

scoreESopranoA = \relative c' {
  \globalE
  \dynamicUp
  % Music follows here.
  e4 d c e |
  g f e2 |
  g4 g f e |
  d d c2 |
}

scoreESopranoB = \relative c' {
  c'4 c b g |
  a a g2 |
  g4 g a a |
  g( f) e2 \breathe |
  c4 e f g |
  a a g2 |
  f4 g e d8( c) |
  d2 c
}

scoreEAltoA = \relative c' {
  \globalE
  % Music follows here.
  c4 g g c|
  c c c2|
  d4 e c c|
  c b g2|
}

scoreEAltoB = \relative c' {
  e4 e d c|
  c c c2|
  d4 e f f|
  e( c) c2|
  g4 c c e|
  f f e2|
  c4 e c b8( g)|
  b2 g|
}

scoreETenorA = \relative c' {
  \globalE
  % Music follows here.
  g4 g e g|
  c a g2|
  g4 c a g|
  g g e2|
}

scoreETenorB = \relative c' {
  g4 g g e|
  f f e2|
  b'4 c c c|
  c( a) g2|
  e4 g a c|
  c c c2|
  a4 c g g8( e)|
  g2 e|
}

scoreEBassA = \relative c {
  \globalE
  % Music follows here.
  e,4 d c e |
  g f e2 |
  g4 g f e |
  d d c2 |
%  c4 b c c|
%  e f c2|
%  b4 c f c|
%  g g c2|
}

scoreEBassB = \relative c {
  c4 c b g |
  a a g2 |
  g4 g a a |
  g( f) e2 \breathe |
  c4 e f g |
  a a g2 |
  f4 g e d8( c) |
  d2 c
%  c4 c g c|
%  f, f c'2|
%  g'4 c, f f|
%  c( f) c2\breathe|
%  c4 c f c|
%  f f c2|
%  f4 c c g8( c)|
%  g2 c|
}

scoreEVerseA = \lyricmode {
  % Lyrics follow here.
  Hei -- lig bist du, gro -- ßer Gott, hei -- lig, Herr, Gott Ze -- ba -- ot.
}

scoreEVerseB = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Zeu -- gen dei -- ner Herr -- lich -- keit Him -- mel sind und Er -- de.
  Lob und Preis durch al -- le Zeit, dir o Höchs -- ter, wer -- de.
}

scoreEVerseC = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Der da kommt vom ew -- gen Thron, er sei hoch ge -- prie -- sen.
  E -- wig sei dem Got -- tes -- sohn Ehr und Dank er -- wie -- sen.
}

scoreEFigBass = \figuremode {
  \globalE
  % Figures follow here.
      
  r4 <6> r r
  <6> r4 r2
  <6>2 r4 r4
  <5 4>4 \extendOn <5 3> \extendOff
}

claveE = \new DrumStaff <<
  \drummode {
    \globalE
    <<{\repeat unfold 4 {hh8 cl}}\\{bd4 sn sn sn}>>
  }
>>

scoreECF = {<<
        \new Staff = "cantusfirmus" \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Cantus" "Firmus" }
        shortInstrumentName = \markup \center-column { "C." "F." }
      } <<
        \new Voice = "cf" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreECFBassA \repeat volta 2 { \scoreECFBassB } }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "cf" {\scoreEVerseA << {\scoreEVerseB} \new Lyrics {\set associatedVoice = "cf" {\scoreEVerseC}} >>}>>
}

scoreE = \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreESopranoA \repeat volta 2 { \scoreESopranoB } }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreEAltoA \repeat volta 2 { \scoreEAltoB } }
      >>
%      \new Lyrics \with {
%        \override VerticalAxisGroup #'staff-affinity = #CENTER
%      } \lyricsto "soprano" {\scoreCVerseA << {\scoreCVerseB} \new Lyrics {\set associatedVoice = "soprano" {\scoreCVerseC}} >>}
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreETenorA \repeat volta 2 { \scoreETenorB } }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreEBassA \repeat volta 2 { \scoreEBassB } }
      >>
>>

scoreEBassFiguresPart = \new FiguredBass \scoreEFigBass


\bookpart {
\header {
  title = "Kirchenmusiker C-Ausbildung"
  subtitle = "Hausaufgaben KW 50-2022: Harmonisieren: Heilig bist du großer Gott"
  subsubtitle = "Variante 5: C.F. im Bass, mit Nebenstufen und Ausschmücken, mit Ritornell"
  instrument = "Chor"
  poet = "T: Aachen M: Joseph Mohr, Franz Braun"
  meter = "NN"
  piece = "T: 1867, M: 1877/1891, 1675"
  opus = "GL 198"
}
  \score {
%    {
%      \claveA
<<
      \scoreECF
      \scoreE
      \scoreEBassFiguresPart
>>
%    }
    \layout { }
%    \midi { }
  }
  \score {    \unfoldRepeats
    {
      \claveE
      <<
        \scoreECF
        \scoreE
      >>
    }
%    \layout { }
    \midi { }
  }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Variante 6
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalF = {
  \key c \major
  \time 4/4
  \tempo 4=100
}

scoreFCFAltoA = \relative c' {
  \globalF
  \dynamicUp
  % Music follows here.
  e4 d c e |
  g f e2 |
  g4 g f e |
  d d c2 |
}

scoreFCFAltoB = \relative c' {
  c'4 c b g |
  a a g2 |
  g4 g a a |
  g( f) e2 \breathe |
  c4 e f g |
  a a g2 |
  f4 g e d8( c) |
  d2 c
}

scoreFSopranoA = \relative c' {
  \globalF
  \dynamicUp
  % Music follows here.
  e4 d c e |
  g f e2 |
  g4 g f e |
  d d c2 |
}

scoreFSopranoB = \relative c' {
  c'4 c b g |
  a a g2 |
  g4 g a a |
  g( f) e2 \breathe |
  c4 e f g |
  a a g2 |
  f4 g e d8( c) |
  d2 c
}

scoreFAltoA = \relative c' {
  \globalF
  % Music follows here.
  e4 d c e |
  g f e2 |
  g4 g f e |
  d d c2 |
%  c4 g g c|
%  c c c2|
%  d4 e c c|
%  c b g2|
}

scoreFAltoB = \relative c' {
  c'4 c b g |
  a a g2 |
  g4 g a a |
  g( f) e2 \breathe |
  c4 e f g |
  a a g2 |
  f4 g e d8( c) |
  d2 c
%  e4 e d c|
%  c c c2|
%  d4 e f f|
%  e( c) c2|
%  g4 c c e|
%  f f e2|
%  c4 e c b8( g)|
%  b2 g|
}

scoreFTenorA = \relative c' {
  \globalF
  % Music follows here.
  g4 g e g|
  c a g2|
  g4 c a g|
  g g e2|
}

scoreFTenorB = \relative c' {
  g4 g g e|
  f f e2|
  b'4 c c c|
  c( a) g2|
  e4 g a c|
  c c c2|
  a4 c g g8( e)|
  g2 e|
}

scoreFBassA = \relative c {
  \globalF
  % Music follows here.
  c4 b c c|
  e f c2|
  b4 c f c|
  g g c2|
}

scoreFBassB = \relative c {
  c4 c g c|
  f, f c'2|
  g'4 c, f f|
  c( f) c2\breathe|
  c4 c f c|
  f f c2|
  f4 c c g8( c)|
  g2 c|
}

scoreFVerseA = \lyricmode {
  % Lyrics follow here.
  Hei -- lig bist du, gro -- ßer Gott, hei -- lig, Herr, Gott Ze -- ba -- ot.
}

scoreFVerseB = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Zeu -- gen dei -- ner Herr -- lich -- keit Him -- mel sind und Er -- de.
  Lob und Preis durch al -- le Zeit, dir o Höchs -- ter, wer -- de.
}

scoreFVerseC = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Der da kommt vom ew -- gen Thron, er sei hoch ge -- prie -- sen.
  E -- wig sei dem Got -- tes -- sohn Ehr und Dank er -- wie -- sen.
}

scoreFFigBass = \figuremode {
  \globalF
  % Figures follow here.
      
  r4 <6> r r
  <6> r4 r2
  <6>2 r4 r4
  <5 4>4 \extendOn <5 3> \extendOff
}

claveF = \new DrumStaff <<
  \drummode {
    \globalF
    <<{\repeat unfold 4 {hh8 cl}}\\{bd4 sn sn sn}>>
  }
>>

scoreFCF = {<<
        \new Staff = "cff" \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Cantus" "Firmus" }
        shortInstrumentName = \markup \center-column { "C." "F." }
      } <<
        \new Voice = "cf" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreFCFAltoA \repeat volta 2 { \scoreFCFAltoB } }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "cf" {\scoreFVerseA << {\scoreFVerseB} \new Lyrics {\set associatedVoice = "cf" {\scoreFVerseC}} >>}>>
}

scoreF = \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreFSopranoA \repeat volta 2 { \scoreFSopranoB } }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreFAltoA \repeat volta 2 { \scoreFAltoB } }
      >>
%      \new Lyrics \with {
%        \override VerticalAxisGroup #'staff-affinity = #CENTER
%      } \lyricsto "soprano" {\scoreCVerseA << {\scoreCVerseB} \new Lyrics {\set associatedVoice = "soprano" {\scoreCVerseC}} >>}
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreFTenorA \repeat volta 2 { \scoreFTenorB } }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreFBassA \repeat volta 2 { \scoreFBassB } }
      >>
>>

scoreFBassFiguresPart = \new FiguredBass \scoreFFigBass


\bookpart {
\header {
  title = "Kirchenmusiker C-Ausbildung"
  subtitle = "Hausaufgaben KW 50-2022: Harmonisieren: Heilig bist du großer Gott"
  subsubtitle = "Variante 6: C.F. im Alt, mit Nebenstufen und Ausschmücken, mit Ritornell"
  instrument = "Chor"
  poet = "T: Aachen M: Joseph Mohr, Franz Braun"
  meter = "NN"
  piece = "T: 1867, M: 1877/1891, 1675"
  opus = "GL 198"
}
  \score {
%    {
%      \claveA
<<
      \scoreFCF
      \scoreF
      \scoreFBassFiguresPart
>>
%    }
    \layout { }
%    \midi { }
  }
  \score {    \unfoldRepeats
    {
      \claveF
      <<
        \scoreFCF
        \scoreF
      >>
    }
%    \layout { }
    \midi { }
  }
}