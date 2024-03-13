\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "Quintpendel (QP), Kadenzen (KD), Quintfallsequenzen (QFS)"
  subtitle = "C-Dur"
  subsubtitle = "Weite und enge Lage"
  instrument = "Orgel"
  composer = ""
  arranger = \markup{"Fingerings: " \with-url "https://buschke.com" "Sven Buschke"}
  poet = "EL: Enge Lage, WL: Weite Lage"
  meter = "5: Quintstellung, 8: Oktavstellung, 3: Terzstellung"
  piece = ""
  opus = ""
  copyright = \markup{"© 24.02.2023" \with-url "https://buschke.com" "Sven Buschke"}
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key c \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin C major
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

globalA = {
  \key c \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c'' {
  \globalA
  % Music follows here.
  g^\markup{\column{\line{C-Dur: QP\super{5}\sub{EL}}\line{I-V-I}}} g g
  g^\markup{\column{\line{QP\super{5}\sub{EL}}\line{I-IV-I}}} a g
  g^\markup{\column{\line{QP\super{5}\sub{EL}}\line{I-VII-I}}} f g
  \bar "||"
  c^\markup{\column{\line{QP\super{8}\sub{EL}}\line{I-V-I}}} b c
  c^\markup{\column{\line{QP\super{8}\sub{EL}}\line{I-IV-I}}} c c
  c^\markup{\column{\line{QP\super{8}\sub{EL}}\line{I-VII-I}}} b c
  \bar "||"
  e,^\markup{\column{\line{QP\super{3}\sub{EL}}\line{I-V-I}}} d e
  e^\markup{\column{\line{QP\super{3}\sub{EL}}\line{I-IV-I}}} f e
  e8^\markup{\column{\line{QP\super{3}\sub{EL}}\line{I-VII-I}}}[d e] e f e
  \bar "||"
  g4^\markup{\column{\line{QP\super{5}\sub{WL}}\line{I-V-I}}} g g
  g^\markup{\column{\line{QP\super{5}\sub{WL}}\line{I-IV-I}}} a g
  g^\markup{\column{\line{QP\super{5}\sub{WL}}\line{I-VII-I}}} r r
  \bar "||"
  c^\markup{\column{\line{QP\super{8}\sub{WL}}\line{I-V-I}}} b c
  c^\markup{\column{\line{QP\super{8}\sub{WL}}\line{I-IV-I}}} c c
  c^\markup{\column{\line{QP\super{8}\sub{WL}}\line{I-VII-I}}} b c
  \bar "||"
  e^\markup{\column{\line{QP\super{3}\sub{WL}}\line{I-V-I}}} d e
  e^\markup{\column{\line{QP\super{3}\sub{WL}}\line{I-IV-I}}} f e
  e8^\markup{\column{\line{QP\super{3}\sub{WL}}\line{I-VII-I}}}[d e] e[f e]
  \bar "|.|"\break
  \time 4/4
  % KD I IV V I
  g,4^\markup{\column{\line{KD\super{5}\sub{EL}}\line{I-IV-V-I}}} a g g
  \bar "||"
  c^\markup{\column{\line{KD\super{8}\sub{EL}}\line{I-IV-V-I}}} c b c
  \bar "||"
  e,^\markup{\column{\line{KD\super{3}\sub{EL}}\line{I-IV-V-I}}} f d e
  \bar "||"
  g^\markup{\column{\line{KD\super{5}\sub{WL}}\line{I-IV-V-I}}} a g g
  \bar "||"
  c4^\markup{\column{\line{KD\super{8}\sub{WL}}\line{I-IV-V-I}}} c b c
  \bar "||"
  e^\markup{\column{\line{KD\super{3}\sub{WL}}\line{I-IV-V-I}}} f d e
  \bar "|.|"
  % KD I IV VII I
  g,4^\markup{\column{\line{KD\super{5}\sub{EL}}\line{I-IV-VII-I}}} a f g
  \bar "||"
  c^\markup{\column{\line{KD\super{8}\sub{EL}}\line{I-IV-VII-I}}} c b c
  \bar "||"
  e,^\markup{\column{\line{KD\super{3}\sub{EL}}\line{I-IV-VII-I}}} f d e
  \bar "||"
  g^\markup{\column{\line{KD\super{5}\sub{WL}}\line{I-IV-VII-I}}} a f g
  \bar "||"
  c4^\markup{\column{\line{KD\super{8}\sub{WL}}\line{I-IV-VII-I}}} c b c
  \bar "||"
  e^\markup{\column{\line{KD\super{3}\sub{WL}}\line{I-IV-VII-I}}} f d e
  \bar "|.|"
  % KD I II65 V I
  g,4^\markup{\column{\line{KD\super{5}\sub{EL}}\line{I-II\super{6/5}-V-I}}} a g g
  \bar "||"
  c^\markup{\column{\line{KD\super{8}\sub{EL}}\line{I-II\super{6/5}-V-I}}} c b c
  \bar "||"
  e,^\markup{\column{\line{KD\super{3}\sub{EL}}\line{I-II\super{6/5}-V-I}}} d d e
  \bar "||"
  g^\markup{\column{\line{KD\super{5}\sub{WL}}\line{I-II\super{6/5}-V-I}}} a g g
  \bar "||"
  c4^\markup{\column{\line{KD\super{8}\sub{WL}}\line{I-II\super{6/5}-V-I}}} c b c
  \bar "||"
  e^\markup{\column{\line{KD\super{3}\sub{WL}}\line{I-II\super{6/5}-V-I}}} d d e
  \bar "|.|"
  % QFS
  g,^\markup{\column{\line{QFS\super{5}\sub{EL}}\line{I-IV-VII-III-VI-II-V-I}}} a f g e f d e
  \bar "||"
  c'^\markup{\column{\line{QFS\super{8}\sub{EL}}\line{I-IV-VII-III-VI-II-V-I}}} c b b a a g g
  \bar "||"
  e'^\markup{\column{\line{QFS\super{3}\sub{EL}}\line{I-IV-VII-III-VI-II-V-I}}} f d e c d b c
  \bar "||"
  g'^\markup{\column{\line{QFS\super{5}\sub{WL}}\line{I-IV-VII-III-VI-II-V-I}}} a f g e f d e
  \bar "||"
  c^\markup{\column{\line{QFS\super{8}\sub{WL}}\line{I-IV-VII-III-VI-II-V-I}}} c b b a a g g
  \bar "||"
  e'^\markup{\column{\line{QFS\super{3}\sub{WL}}\line{I-IV-VII-III-VI-II-V-I}}} f d e c d b c
  \bar "|."
}

scoreAAlto = \relative c' {
  \globalA
  % Music follows here.
  % QP^5_EL
  e d e
  e f e
  e d e
  % QP^8_EL
  g g g
  g a g
  g f g
  % QP^3_EL
  c, b c
  c c c
  c8[b c]c[b c]
  % QP^5_WL
  c4 b c
  c c c
  c r r
  % QP^8_WL
  e d e
  e f e
  e d e
  % QP^3_WL
  g g g
  g a g
  g8[f g] g[f g]
  \time 4/4
  % KD
  % KD^5_WE-I-IV-V-I
  e4 f d e
  % KD^8_EL-I-IV-V-I
  g a g g
  % KD^3_EL-I-IV-V-I
  c, c b c
  % KD^5_WL-I-IV-V-I
  c c b c
  % KD^8_WL-I-IV-V-I
  e f d e
  % KD^3_WL-I-IV-V-I
  g a g g
  % KD^5_WE-I-IV-V-I
  e4 f d e
  % KD^8_EL-I-IV-V-I
  g a f g
  % KD^3_EL-I-IV-V-I
  c, c b c
  % KD^5_WL-I-IV-V-I
  c c b c
  % KD^8_WL-I-IV-V-I
  e f d e
  % KD^3_WL-I-IV-V-I
  g a f g
  % KD^5_WE-I-IV-V-I
  e4 d d e
  % KD^8_EL-I-IV-V-I
  g a g g
  % KD^3_EL-I-IV-V-I
  c, c b c
  % KD^5_WL-I-IV-V-I
  c c b c
  % KD^8_WL-I-IV-V-I
  e d d e
  % KD^3_WL-I-IV-V-I
  g a g g
  % QFS
  % QFS^5_EL-I-IV-VII-III-VI-II-V-I
  e f d e c d b c
  % QFS^8_EL-I-IV-VII-III-VI-II-V-I
  g' a f g e f d e
  % QFS^3_EL-I-IV-VII-III-VI-II-V-I
  c' c b b a a g g
  % QFS^5_WL-I-IV-VII-III-VI-II-V-I
  c c b b a a g g
  % QFS^8_WL-I-IV-VII-III-VI-II-V-I
  e f d e c d b c
  % QFS^3_WL-I-IV-VII-III-VI-II-V-I
  g' a f g e f d e
  \bar "|."
}

scoreATenor = \relative c' {
  \globalA
  % Music follows here.
  % QP^5_EL
  c b c
  c c c
  c b c
  % QP^8_EL
  e d e
  e f e
  e d e
  % QP^3_EL
  g, g g
  g a g
  g8[f g]g[f g]
  % QP^5_WL
  e4 d e
  e f e
  e r r
  % QP^8_WL
  g g g
  g a g
  g f g
  % QP^3_WL
  c b c
  c c c
  c8[b c]c[b c]
  \time 4/4
  % KD
  % KD^5_EL-I-IV-V-I
  c4 c b c
  % KD^8_EL-I-IV-V-I
  e f d e
  % KD^3_EL-I-IV-V-I
  g, a g g
  % KD^5_WL-I-IV-V-I
  e f d e
  % KD^8_WL-I-IV-V-I
  g a g g
  % KD^3_WL-I-IV-V-I
  c c b c
  % KD^5_EL-I-IV-V-I
  c4 c b c
  % KD^8_EL-I-IV-V-I
  e f d e
  % KD^3_EL-I-IV-V-I
  g, a f g
  % KD^5_WL-I-IV-V-I
  e f g e
  % KD^8_WL-I-IV-V-I
  g a f g
  % KD^3_WL-I-IV-V-I
  c c b c
  % KD^5_EL-I-IV-V-I
  c4 c b c
  % KD^8_EL-I-IV-V-I
  e d d e
  % KD^3_EL-I-IV-V-I
  g, a g g
  % KD^5_WL-I-IV-V-I
  e d d e
  % KD^8_WL-I-IV-V-I
  g a g g
  % KD^3_WL-I-IV-V-I
  c c b c
  % QFS
  % QFS^5_EL-I-IV-VII-III-VI-II-V-I
  c c b b a a g g
  % QFS^8_EL-I-IV-VII-III-VI-II-V-I
  e' f d e c d b c
  % QFS^3_EL-I-IV-VII-III-VI-II-V-I
  g' a f g e f d e
  % QFS^5_WL-I-IV-VII-III-VI-II-V-I
  e f d e c d b c
  % QFS^8_WL-I-IV-VII-III-VI-II-V-I
  g a f g e f d e
  % QFS^3_WL-I-IV-VII-III-VI-II-V-I
  c' c b b a a g g
  \bar "|."
}

scoreABass = \relative c {
  \globalA
  % Music follows here.
  % QP^5_EL
  c g c
  c f c
  c d c
  % QP^8_EL
  c g c
  c f, c'
  c d c
  % QP^3_EL
  c g c
  c f c
  c8[d c]c[d c]
  % QP^5_WL
  c4 g c
  c f, c'
  c r r
  % QP^8_WL
  c g c
  c f c
  c d c
  % QP^3_WL
  c g c
  c f c
  c8[d c]c[d c]
  \time 4/4
  % KD
  % KD^5_EL-I-IV-V-I
  c4 f, g c|
  % KD^8_EL-I-IV-V-I
  c f, g c|
  % KD^3_EL-I-IV-V-I
  c f, g c|
  % KD^5_WL-I-IV-V-I
  c f, g c|
  % KD^8_WL-I-IV-V-I
  c f, g c|
  % KD^3_WL-I-IV-V-I
  c f, g c|
  % KD^5_EL-I-IV-V-I
  c4 f, d' c|
  % KD^8_EL-I-IV-V-I
  c f, d' c|
  % KD^3_EL-I-IV-V-I
  c f, d' c|
  % KD^5_WL-I-IV-V-I
  c f, d' c|
  % KD^8_WL-I-IV-V-I
  c f, d' c|
  % KD^3_WL-I-IV-V-I
  c f, d' c|
  % KD^5_EL-I-IV-V-I
  c4 f,8 \parenthesize fs g4 c|
  % KD^8_EL-I-IV-V-I
  c f,8 \parenthesize fs g4 c|
  % KD^3_EL-I-IV-V-I
  c f,8 \parenthesize fs g4 c|
  % KD^5_WL-I-IV-V-I
  c f,8 \parenthesize fs g4 c|
  % KD^8_WL-I-IV-V-I
  c f,8 \parenthesize fs g4 c|
  % KD^3_WL-I-IV-V-I
  c f,8 \parenthesize fs g4 c|
  % QFS
  % QFS^5_EL-I-IV-VII-III-VI-II-V-I
  c f b, e a, d g, c
  % QFS^8_EL-I-IV-VII-III-VI-II-V-I
  c f b, e a, d g, c
  % QFS^3_EL-I-IV-VII-III-VI-II-V-I
  c f b, e a, d g, c
  % QFS^5_WL-I-IV-VII-III-VI-II-V-I
  c f b, e a, d g, c
  % QFS^8_WL-I-IV-VII-III-VI-II-V-I
  c f b, e a, d g, c
  % QFS^3_WL-I-IV-VII-III-VI-II-V-I
  c f b, e a, d g, c
  \bar "|."
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  do so do do fa do do di do do so do do fa do do di do
  do so do do fa do do di do do di do do so do do fa do do
  do so do do fa do do di do do so do do fa do do di do do di do
  do fa so do do fa so do do fa so do do fa so do do fa so do do fa so do do fa si do do fa si do do fa si do do fa si do do fa si do do fa si do
  do fa so do do fa so do do fa so do do fa so do do fa so do do fa so do
  do fa si mi la re so do do fa si mi la re so do do fa si mi la re so do do fa si mi la re so do do fa si mi la re so do do fa si mi la re so do
}

scoreAFigBass = \figuremode {
  \globalA
  % Figures follow here.
  % QP^5_EL
  r4 r r
  r4 r r
  r4 <6> r
  % QP^8_EL
  r4 r r
  r4 r r
  r4 <6> r
  % QP^3_EL
  r4 r r
  r4 r r
  r8 <6> r r <6> r
  % QP^5_WL
  r4 <6> r
  r4 r r
  r4 r r
  % QP^8_WL
  r4 r r
  r4 r r
  r4 <6> r
  % QP^3_WL
  r4 r r
  r4 r r
  r8 <6> r r <6> r
  \time 4/4
  %
  % KD I VI V I
  %
  % KD^5_EL-I-IV-V-I
  r4 r r r
  % KD^8_EL-I-IV-V-I
  r4 r r r
  % KD^3_EL-I-IV-V-I
  r4 r r r
  % KD^5_WL-I-IV-V-I
  r4 r r r
  % KD^8_WL-I-IV-V-I
  r4 r r r
  % KD^3_WL-I-IV-V-I
  r4 r r r
  %
  % KD I VI VII I
  %
  % KD^5_EL-I-IV-VII-I
  r4 r r r
  % KD^8_EL-I-IV-VII-I
  r4 r r r
  % KD^3_EL-I-IV-VII-I
  r4 r r r
  % KD^5_WL-I-IV-VII-I
  r4 r r r
  % KD^8_WL-I-IV-VII-I
  r4 r r r
  % KD^3_WL-I-IV-VII-I
  r4 r r r
  %
  % KD I II6/5 V I
  %
  % KD^5_EL-I-II6/5-V-I
  r4 <6 5> r r
  % KD^8_EL-I-II6/5-V-I
  r4 <6 5> r r
  % KD^3_EL-I-II6/5-V-I
  r4 <6 5> r r
  % KD^5_WL-I-II6/5-V-I
  r4 <6 5> r r
  % KD^8_WL-I-II6/5-V-I
  r4 <6 5> r r
  % KD^3_WL-I-II6/5-V-I
  r4 <6 5> r r
  %
  % QFS
  %
  r4 r r r
  r4 r r r
  r4 r r r
  r4 r r r
  r4 r r r
  r4 r r r
  r4 r r r
  r4 r r r
  r4 r r r
  r4 r r r
  r4 r r r
  r4 r r r
}

scoreAChordNames = \chordmode {
  \globalA
  % Chords follow here.
  % QP^5_EL
  c g c
  c f c
  c b:dim/d c
  % QP^8_EL
  c g c
  c f, c'
  c b:dim/d c
  % QP^3_EL
  c g c
  c f c
  c8[b:dim/d c]c[b:dim/d c]
  % QP^5_WL
  c4 g c
  c f, c'
  c s s
  % QP^8_WL
  c g c
  c f c
  c b:dim/d c
  % QP^3_WL
  c g c
  c f c
  c8[b:dim/d c]c[b:dim/d c]
  \time 4/4
  % KD
  % KD^5_EL-I-IV-V-I
  c4 f, g c|
  % KD^8_EL-I-IV-V-I
  c f, g c|
  % KD^3_EL-I-IV-V-I
  c f, g c|
  % KD^5_WL-I-IV-V-I
  c f, g c|
  % KD^8_WL-I-IV-V-I
  c f, g c|
  % KD^3_WL-I-IV-V-I
  c f, g c|
  % KD^5_EL-I-IV-V-I
  c4 f, b:dim/d' c|
  % KD^8_EL-I-IV-V-I
  c f, b:dim/d' c|
  % KD^3_EL-I-IV-V-I
  c f, b:dim/d' c|
  % KD^5_WL-I-IV-V-I
  c f, b:dim/d' c|
  % KD^8_WL-I-IV-V-I
  c f, b:dim/d' c|
  % KD^3_WL-I-IV-V-I
  c f, b:dim/d' c|
  % KD^5_EL-I-IV-V-I
  c4 f,8 \parenthesize fs g4 c|
  % KD^8_EL-I-IV-V-I
  c f,8 \parenthesize fs g4 c|
  % KD^3_EL-I-IV-V-I
  c f,8 \parenthesize fs g4 c|
  % KD^5_WL-I-IV-V-I
  c f,8 \parenthesize fs g4 c|
  % KD^8_WL-I-IV-V-I
  c f,8 \parenthesize fs g4 c|
  % KD^3_WL-I-IV-V-I
  c f,8 \parenthesize fs g4 c|
  % QFS
  % QFS^5_EL-I-IV-VII-III-VI-II-V-I
  c f b, e a, d g, c
  % QFS^8_EL-I-IV-VII-III-VI-II-V-I
  c f b, e a, d g, c
  % QFS^3_EL-I-IV-VII-III-VI-II-V-I
  c f b, e a, d g, c
  % QFS^5_WL-I-IV-VII-III-VI-II-V-I
  c f b, e a, d g, c
  % QFS^8_WL-I-IV-VII-III-VI-II-V-I
  c f b, e a, d g, c
  % QFS^3_WL-I-IV-VII-III-VI-II-V-I
  c f b, e a, d g, c
  \bar "|."
}

scoreAChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreASoprano }
    \new Voice = "alto" { \voiceTwo \scoreAAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreAVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreATenor }
    \new Voice = "bass" { \voiceTwo \scoreABass }
  >>
>>

scoreABassFiguresPart = \new FiguredBass \scoreAFigBass

scoreAChordsPart = \new ChordNames \scoreAChordNames

\bookpart {
  \score {
    <<
      \scoreAChoirPart
      \scoreABassFiguresPart
      \scoreAChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% end C major
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin G major
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------


globalB = {
  \transpose c g \key c \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}


scoreBSoprano = \relative c'' {
  \globalB
  % Music follows here.
  \transpose c g \scoreASoprano
}

scoreBAlto = \relative c' {
  \globalB
  % Music follows here.
  \transpose c g \scoreAAlto
}

scoreBTenor = \relative c' {
  \globalB
  % Music follows here.
  \transpose c g, \scoreATenor
}

scoreBBass = \relative c {
  \globalB
  % Music follows here.
  \transpose c g, \scoreABass
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreBFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreBChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreBChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreBSoprano }
    \new Voice = "alto" { \voiceTwo \scoreBAlto }
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
    \new Voice = "tenor" { \voiceOne \scoreBTenor }
    \new Voice = "bass" { \voiceTwo \scoreBBass }
  >>
>>

scoreBBassFiguresPart = \new FiguredBass \scoreBFigBass

scoreBChordsPart = \new ChordNames \scoreBChordNames

\bookpart {
  \header {
    subtitle = "G-Dur"
  }
  \score {
    <<
      \scoreBChoirPart
      \scoreBBassFiguresPart
      \scoreBChordsPart
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

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreCChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreCChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreCSoprano }
    \new Voice = "alto" { \voiceTwo \scoreCAlto }
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
    \new Voice = "tenor" { \voiceOne \scoreCTenor }
    \new Voice = "bass" { \voiceTwo \scoreCBass }
  >>
>>

scoreCBassFiguresPart = \new FiguredBass \scoreCFigBass

scoreCChordsPart = \new ChordNames \scoreCChordNames

\bookpart {
  \score {
    <<
      \scoreCChoirPart
      \scoreCBassFiguresPart
      \scoreCChordsPart
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

scoreDFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreDChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreDChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreDSoprano }
    \new Voice = "alto" { \voiceTwo \scoreDAlto }
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
    \new Voice = "tenor" { \voiceOne \scoreDTenor }
    \new Voice = "bass" { \voiceTwo \scoreDBass }
  >>
>>

scoreDBassFiguresPart = \new FiguredBass \scoreDFigBass

scoreDChordsPart = \new ChordNames \scoreDChordNames

\bookpart {
  \score {
    <<
      \scoreDChoirPart
      \scoreDBassFiguresPart
      \scoreDChordsPart
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

scoreEFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreEChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreEChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreESoprano }
    \new Voice = "alto" { \voiceTwo \scoreEAlto }
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
    \new Voice = "tenor" { \voiceOne \scoreETenor }
    \new Voice = "bass" { \voiceTwo \scoreEBass }
  >>
>>

scoreEBassFiguresPart = \new FiguredBass \scoreEFigBass

scoreEChordsPart = \new ChordNames \scoreEChordNames

\bookpart {
  \score {
    <<
      \scoreEChoirPart
      \scoreEBassFiguresPart
      \scoreEChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreFSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreFAlto = \relative c' {
  \global
  % Music follows here.

}

scoreFTenor = \relative c' {
  \global
  % Music follows here.

}

scoreFBass = \relative c {
  \global
  % Music follows here.

}

scoreFVerse = \lyricmode {
  % Lyrics follow here.

}

scoreFFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreFChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreFChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreFSoprano }
    \new Voice = "alto" { \voiceTwo \scoreFAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreFVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreFTenor }
    \new Voice = "bass" { \voiceTwo \scoreFBass }
  >>
>>

scoreFBassFiguresPart = \new FiguredBass \scoreFFigBass

scoreFChordsPart = \new ChordNames \scoreFChordNames

\bookpart {
  \score {
    <<
      \scoreFChoirPart
      \scoreFBassFiguresPart
      \scoreFChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreGSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreGAlto = \relative c' {
  \global
  % Music follows here.

}

scoreGTenor = \relative c' {
  \global
  % Music follows here.

}

scoreGBass = \relative c {
  \global
  % Music follows here.

}

scoreGVerse = \lyricmode {
  % Lyrics follow here.

}

scoreGFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreGChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreGChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreGSoprano }
    \new Voice = "alto" { \voiceTwo \scoreGAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreGVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreGTenor }
    \new Voice = "bass" { \voiceTwo \scoreGBass }
  >>
>>

scoreGBassFiguresPart = \new FiguredBass \scoreGFigBass

scoreGChordsPart = \new ChordNames \scoreGChordNames

\bookpart {
  \score {
    <<
      \scoreGChoirPart
      \scoreGBassFiguresPart
      \scoreGChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreHSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreHAlto = \relative c' {
  \global
  % Music follows here.

}

scoreHTenor = \relative c' {
  \global
  % Music follows here.

}

scoreHBass = \relative c {
  \global
  % Music follows here.

}

scoreHVerse = \lyricmode {
  % Lyrics follow here.

}

scoreHFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreHChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreHChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreHSoprano }
    \new Voice = "alto" { \voiceTwo \scoreHAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreHVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreHTenor }
    \new Voice = "bass" { \voiceTwo \scoreHBass }
  >>
>>

scoreHBassFiguresPart = \new FiguredBass \scoreHFigBass

scoreHChordsPart = \new ChordNames \scoreHChordNames

\bookpart {
  \score {
    <<
      \scoreHChoirPart
      \scoreHBassFiguresPart
      \scoreHChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreISoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreIAlto = \relative c' {
  \global
  % Music follows here.

}

scoreITenor = \relative c' {
  \global
  % Music follows here.

}

scoreIBass = \relative c {
  \global
  % Music follows here.

}

scoreIVerse = \lyricmode {
  % Lyrics follow here.

}

scoreIFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreIChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreIChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreISoprano }
    \new Voice = "alto" { \voiceTwo \scoreIAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreIVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreITenor }
    \new Voice = "bass" { \voiceTwo \scoreIBass }
  >>
>>

scoreIBassFiguresPart = \new FiguredBass \scoreIFigBass

scoreIChordsPart = \new ChordNames \scoreIChordNames

\bookpart {
  \score {
    <<
      \scoreIChoirPart
      \scoreIBassFiguresPart
      \scoreIChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreJSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreJAlto = \relative c' {
  \global
  % Music follows here.

}

scoreJTenor = \relative c' {
  \global
  % Music follows here.

}

scoreJBass = \relative c {
  \global
  % Music follows here.

}

scoreJVerse = \lyricmode {
  % Lyrics follow here.

}

scoreJFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreJChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreJChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreJSoprano }
    \new Voice = "alto" { \voiceTwo \scoreJAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreJVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreJTenor }
    \new Voice = "bass" { \voiceTwo \scoreJBass }
  >>
>>

scoreJBassFiguresPart = \new FiguredBass \scoreJFigBass

scoreJChordsPart = \new ChordNames \scoreJChordNames

\bookpart {
  \score {
    <<
      \scoreJChoirPart
      \scoreJBassFiguresPart
      \scoreJChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreKSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreKAlto = \relative c' {
  \global
  % Music follows here.

}

scoreKTenor = \relative c' {
  \global
  % Music follows here.

}

scoreKBass = \relative c {
  \global
  % Music follows here.

}

scoreKVerse = \lyricmode {
  % Lyrics follow here.

}

scoreKFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreKChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreKChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreKSoprano }
    \new Voice = "alto" { \voiceTwo \scoreKAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreKVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreKTenor }
    \new Voice = "bass" { \voiceTwo \scoreKBass }
  >>
>>

scoreKBassFiguresPart = \new FiguredBass \scoreKFigBass

scoreKChordsPart = \new ChordNames \scoreKChordNames

\bookpart {
  \score {
    <<
      \scoreKChoirPart
      \scoreKBassFiguresPart
      \scoreKChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreLSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreLAlto = \relative c' {
  \global
  % Music follows here.

}

scoreLTenor = \relative c' {
  \global
  % Music follows here.

}

scoreLBass = \relative c {
  \global
  % Music follows here.

}

scoreLVerse = \lyricmode {
  % Lyrics follow here.

}

scoreLFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreLChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreLChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreLSoprano }
    \new Voice = "alto" { \voiceTwo \scoreLAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreLVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreLTenor }
    \new Voice = "bass" { \voiceTwo \scoreLBass }
  >>
>>

scoreLBassFiguresPart = \new FiguredBass \scoreLFigBass

scoreLChordsPart = \new ChordNames \scoreLChordNames

\bookpart {
  \score {
    <<
      \scoreLChoirPart
      \scoreLBassFiguresPart
      \scoreLChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreMSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreMAlto = \relative c' {
  \global
  % Music follows here.

}

scoreMTenor = \relative c' {
  \global
  % Music follows here.

}

scoreMBass = \relative c {
  \global
  % Music follows here.

}

scoreMVerse = \lyricmode {
  % Lyrics follow here.

}

scoreMFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreMChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreMChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreMSoprano }
    \new Voice = "alto" { \voiceTwo \scoreMAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreMVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreMTenor }
    \new Voice = "bass" { \voiceTwo \scoreMBass }
  >>
>>

scoreMBassFiguresPart = \new FiguredBass \scoreMFigBass

scoreMChordsPart = \new ChordNames \scoreMChordNames

\bookpart {
  \score {
    <<
      \scoreMChoirPart
      \scoreMBassFiguresPart
      \scoreMChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreNSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreNAlto = \relative c' {
  \global
  % Music follows here.

}

scoreNTenor = \relative c' {
  \global
  % Music follows here.

}

scoreNBass = \relative c {
  \global
  % Music follows here.

}

scoreNVerse = \lyricmode {
  % Lyrics follow here.

}

scoreNFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreNChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreNChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreNSoprano }
    \new Voice = "alto" { \voiceTwo \scoreNAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreNVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreNTenor }
    \new Voice = "bass" { \voiceTwo \scoreNBass }
  >>
>>

scoreNBassFiguresPart = \new FiguredBass \scoreNFigBass

scoreNChordsPart = \new ChordNames \scoreNChordNames

\bookpart {
  \score {
    <<
      \scoreNChoirPart
      \scoreNBassFiguresPart
      \scoreNChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreOSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreOAlto = \relative c' {
  \global
  % Music follows here.

}

scoreOTenor = \relative c' {
  \global
  % Music follows here.

}

scoreOBass = \relative c {
  \global
  % Music follows here.

}

scoreOVerse = \lyricmode {
  % Lyrics follow here.

}

scoreOFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreOChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreOChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreOSoprano }
    \new Voice = "alto" { \voiceTwo \scoreOAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreOVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreOTenor }
    \new Voice = "bass" { \voiceTwo \scoreOBass }
  >>
>>

scoreOBassFiguresPart = \new FiguredBass \scoreOFigBass

scoreOChordsPart = \new ChordNames \scoreOChordNames

\bookpart {
  \score {
    <<
      \scoreOChoirPart
      \scoreOBassFiguresPart
      \scoreOChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scorePSoprano = \relative c'' {
  \global
  % Music follows here.

}

scorePAlto = \relative c' {
  \global
  % Music follows here.

}

scorePTenor = \relative c' {
  \global
  % Music follows here.

}

scorePBass = \relative c {
  \global
  % Music follows here.

}

scorePVerse = \lyricmode {
  % Lyrics follow here.

}

scorePFigBass = \figuremode {
  \global
  % Figures follow here.

}

scorePChordNames = \chordmode {
  \global
  % Chords follow here.

}

scorePChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scorePSoprano }
    \new Voice = "alto" { \voiceTwo \scorePAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scorePVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scorePTenor }
    \new Voice = "bass" { \voiceTwo \scorePBass }
  >>
>>

scorePBassFiguresPart = \new FiguredBass \scorePFigBass

scorePChordsPart = \new ChordNames \scorePChordNames

\bookpart {
  \score {
    <<
      \scorePChoirPart
      \scorePBassFiguresPart
      \scorePChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreQSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreQAlto = \relative c' {
  \global
  % Music follows here.

}

scoreQTenor = \relative c' {
  \global
  % Music follows here.

}

scoreQBass = \relative c {
  \global
  % Music follows here.

}

scoreQVerse = \lyricmode {
  % Lyrics follow here.

}

scoreQFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreQChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreQChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreQSoprano }
    \new Voice = "alto" { \voiceTwo \scoreQAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreQVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreQTenor }
    \new Voice = "bass" { \voiceTwo \scoreQBass }
  >>
>>

scoreQBassFiguresPart = \new FiguredBass \scoreQFigBass

scoreQChordsPart = \new ChordNames \scoreQChordNames

\bookpart {
  \score {
    <<
      \scoreQChoirPart
      \scoreQBassFiguresPart
      \scoreQChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreRSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreRAlto = \relative c' {
  \global
  % Music follows here.

}

scoreRTenor = \relative c' {
  \global
  % Music follows here.

}

scoreRBass = \relative c {
  \global
  % Music follows here.

}

scoreRVerse = \lyricmode {
  % Lyrics follow here.

}

scoreRFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreRChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreRChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreRSoprano }
    \new Voice = "alto" { \voiceTwo \scoreRAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreRVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreRTenor }
    \new Voice = "bass" { \voiceTwo \scoreRBass }
  >>
>>

scoreRBassFiguresPart = \new FiguredBass \scoreRFigBass

scoreRChordsPart = \new ChordNames \scoreRChordNames

\bookpart {
  \score {
    <<
      \scoreRChoirPart
      \scoreRBassFiguresPart
      \scoreRChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreSSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreSAlto = \relative c' {
  \global
  % Music follows here.

}

scoreSTenor = \relative c' {
  \global
  % Music follows here.

}

scoreSBass = \relative c {
  \global
  % Music follows here.

}

scoreSVerse = \lyricmode {
  % Lyrics follow here.

}

scoreSFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreSChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreSChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreSSoprano }
    \new Voice = "alto" { \voiceTwo \scoreSAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreSVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreSTenor }
    \new Voice = "bass" { \voiceTwo \scoreSBass }
  >>
>>

scoreSBassFiguresPart = \new FiguredBass \scoreSFigBass

scoreSChordsPart = \new ChordNames \scoreSChordNames

\bookpart {
  \score {
    <<
      \scoreSChoirPart
      \scoreSBassFiguresPart
      \scoreSChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreTSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreTAlto = \relative c' {
  \global
  % Music follows here.

}

scoreTTenor = \relative c' {
  \global
  % Music follows here.

}

scoreTBass = \relative c {
  \global
  % Music follows here.

}

scoreTVerse = \lyricmode {
  % Lyrics follow here.

}

scoreTFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreTChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreTChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreTSoprano }
    \new Voice = "alto" { \voiceTwo \scoreTAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreTVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreTTenor }
    \new Voice = "bass" { \voiceTwo \scoreTBass }
  >>
>>

scoreTBassFiguresPart = \new FiguredBass \scoreTFigBass

scoreTChordsPart = \new ChordNames \scoreTChordNames

\bookpart {
  \score {
    <<
      \scoreTChoirPart
      \scoreTBassFiguresPart
      \scoreTChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreUSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreUAlto = \relative c' {
  \global
  % Music follows here.

}

scoreUTenor = \relative c' {
  \global
  % Music follows here.

}

scoreUBass = \relative c {
  \global
  % Music follows here.

}

scoreUVerse = \lyricmode {
  % Lyrics follow here.

}

scoreUFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreUChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreUChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreUSoprano }
    \new Voice = "alto" { \voiceTwo \scoreUAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreUVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreUTenor }
    \new Voice = "bass" { \voiceTwo \scoreUBass }
  >>
>>

scoreUBassFiguresPart = \new FiguredBass \scoreUFigBass

scoreUChordsPart = \new ChordNames \scoreUChordNames

\bookpart {
  \score {
    <<
      \scoreUChoirPart
      \scoreUBassFiguresPart
      \scoreUChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreVSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreVAlto = \relative c' {
  \global
  % Music follows here.

}

scoreVTenor = \relative c' {
  \global
  % Music follows here.

}

scoreVBass = \relative c {
  \global
  % Music follows here.

}

scoreVVerse = \lyricmode {
  % Lyrics follow here.

}

scoreVFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreVChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreVChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreVSoprano }
    \new Voice = "alto" { \voiceTwo \scoreVAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreVVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreVTenor }
    \new Voice = "bass" { \voiceTwo \scoreVBass }
  >>
>>

scoreVBassFiguresPart = \new FiguredBass \scoreVFigBass

scoreVChordsPart = \new ChordNames \scoreVChordNames

\bookpart {
  \score {
    <<
      \scoreVChoirPart
      \scoreVBassFiguresPart
      \scoreVChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreWSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreWAlto = \relative c' {
  \global
  % Music follows here.

}

scoreWTenor = \relative c' {
  \global
  % Music follows here.

}

scoreWBass = \relative c {
  \global
  % Music follows here.

}

scoreWVerse = \lyricmode {
  % Lyrics follow here.

}

scoreWFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreWChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreWChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreWSoprano }
    \new Voice = "alto" { \voiceTwo \scoreWAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreWVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreWTenor }
    \new Voice = "bass" { \voiceTwo \scoreWBass }
  >>
>>

scoreWBassFiguresPart = \new FiguredBass \scoreWFigBass

scoreWChordsPart = \new ChordNames \scoreWChordNames

\bookpart {
  \score {
    <<
      \scoreWChoirPart
      \scoreWBassFiguresPart
      \scoreWChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreXSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreXAlto = \relative c' {
  \global
  % Music follows here.

}

scoreXTenor = \relative c' {
  \global
  % Music follows here.

}

scoreXBass = \relative c {
  \global
  % Music follows here.

}

scoreXVerse = \lyricmode {
  % Lyrics follow here.

}

scoreXFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreXChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreXChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreXSoprano }
    \new Voice = "alto" { \voiceTwo \scoreXAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreXVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreXTenor }
    \new Voice = "bass" { \voiceTwo \scoreXBass }
  >>
>>

scoreXBassFiguresPart = \new FiguredBass \scoreXFigBass

scoreXChordsPart = \new ChordNames \scoreXChordNames

\bookpart {
  \score {
    <<
      \scoreXChoirPart
      \scoreXBassFiguresPart
      \scoreXChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreYSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreYAlto = \relative c' {
  \global
  % Music follows here.

}

scoreYTenor = \relative c' {
  \global
  % Music follows here.

}

scoreYBass = \relative c {
  \global
  % Music follows here.

}

scoreYVerse = \lyricmode {
  % Lyrics follow here.

}

scoreYFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreYChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreYChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreYSoprano }
    \new Voice = "alto" { \voiceTwo \scoreYAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreYVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreYTenor }
    \new Voice = "bass" { \voiceTwo \scoreYBass }
  >>
>>

scoreYBassFiguresPart = \new FiguredBass \scoreYFigBass

scoreYChordsPart = \new ChordNames \scoreYChordNames

\bookpart {
  \score {
    <<
      \scoreYChoirPart
      \scoreYBassFiguresPart
      \scoreYChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreZSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreZAlto = \relative c' {
  \global
  % Music follows here.

}

scoreZTenor = \relative c' {
  \global
  % Music follows here.

}

scoreZBass = \relative c {
  \global
  % Music follows here.

}

scoreZVerse = \lyricmode {
  % Lyrics follow here.

}

scoreZFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreZChordNames = \chordmode {
  \global
  % Chords follow here.

}

scoreZChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreZSoprano }
    \new Voice = "alto" { \voiceTwo \scoreZAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreZVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreZTenor }
    \new Voice = "bass" { \voiceTwo \scoreZBass }
  >>
>>

scoreZBassFiguresPart = \new FiguredBass \scoreZFigBass

scoreZChordsPart = \new ChordNames \scoreZChordNames

\bookpart {
  \score {
    <<
      \scoreZChoirPart
      \scoreZBassFiguresPart
      \scoreZChordsPart
    >>
    \layout { }
    \midi { }
  }
}
