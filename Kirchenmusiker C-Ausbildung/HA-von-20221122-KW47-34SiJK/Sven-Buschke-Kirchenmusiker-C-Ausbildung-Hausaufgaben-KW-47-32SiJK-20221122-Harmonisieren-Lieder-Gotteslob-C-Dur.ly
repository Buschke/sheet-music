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
  subtitle = "Korrektur: Heilig bist du großer Gott"
  subsubtitle = "Hausaufgaben KW 45-2022, Teil 2: Harmonisieren Lieder Gotteslob"
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

scoreBSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreBSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreBAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreBVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreBTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreBBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

scoreCSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
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
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreCAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
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
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreCBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

scoreDSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
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
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreDAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
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
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreDBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

scoreESoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreEAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreETenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreEBass = \relative c {
  \global
  % Music follows here.
  
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
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
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreEAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
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
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreEBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}
