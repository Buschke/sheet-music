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
  subtitle = "Variante 1, Korrektur: Heilig bist du großer Gott"
  subsubtitle = "Hausaufgaben KW 50-2022: Variation Harmonisieren, Hauptstufen 'ohne alles'"
  instrument = "Orgel"
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
  \score {
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
  subtitle = "Korrektur Variante 2: Heilig bist du großer Gott"
  subsubtitle = "Hausaufgaben KW 50-2022: Variation Harmonisieren, Hauptstufen mit Sext und Vorhalt"
  instrument = "Orgel"
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
  \score {
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

scoreCCFSopranoA = \relative c' {
  \globalC
  \dynamicUp
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
  e4 d c e |
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
        } { \voiceOne \scoreCSopranoA \repeat volta 2 { \scoreCSopranoB } }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreCAltoA \repeat volta 2 { \scoreCAltoB } }
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
        } { \voiceOne \scoreCTenorA \repeat volta 2 { \scoreCTenorB } }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreCBassA \repeat volta 2 { \scoreCBassB } }
      >>
>>

scoreCBassFiguresPart = \new FiguredBass \scoreCFigBass


\bookpart {
\header {
  title = "Kirchenmusiker C-Ausbildung"
  subtitle = "Variante 3: Heilig bist du großer Gott"
  subsubtitle = "Hausaufgaben KW 50-2022: Harmonisieren, mit Nebenstufen und Ausschmücken"
  instrument = "Orgel"
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
  \score {
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
  % Music follows here.
  e,4 d c e |
  g f e2 |
  g4 g f e |
  d d c2 |
}

scoreDCFTenorB = \relative c' {
  cq4 c b g |
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
  % Music follows here.
  g4 g e g|
  c a g2|
  g4 c a g|
  g g e2|
}

scoreDTenorB = \relative c' {
  g4 g g e|
  f f e2|
  b'4 c c c|
  c( a) g2|
  e4 g a c|
  c c c2|
  a4 c g g8( e)|
  g2 e|
}

scoreDBassA = \relative c {
  \globalD
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
  subtitle = "Variante 4: Heilig bist du großer Gott"
  subsubtitle = "Hausaufgaben KW 50-2022: C.F. im Tenor, Harmonisieren, mit Nebenstufen und Ausschmücken"
  instrument = "Orgel"
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
  \score {
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