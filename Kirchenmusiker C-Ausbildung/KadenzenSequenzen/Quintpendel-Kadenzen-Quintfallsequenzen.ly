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
  \numericTimeSignature
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreASoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreAAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreATenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreABass }
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
% begin a minor
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

globalB = {
  \key a \minor
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreBSoprano = \relative c'' {
  \globalB
  % Music follows here.
  e,^\markup{\column{\line{C-Dur: QP\super{5}\sub{EL}}\line{I-V-I}}} e e
  e^\markup{\column{\line{QP\super{5}\sub{EL}}\line{I-IV-I}}} f e
  e^\markup{\column{\line{QP\super{5}\sub{EL}}\line{I-VII-I}}} d e
  \bar "||"
  a^\markup{\column{\line{QP\super{8}\sub{EL}}\line{I-V-I}}} gs a
  a^\markup{\column{\line{QP\super{8}\sub{EL}}\line{I-IV-I}}} a a
  a^\markup{\column{\line{QP\super{8}\sub{EL}}\line{I-VII-I}}} gs a
  \bar "||"
  c,^\markup{\column{\line{QP\super{3}\sub{EL}}\line{I-V-I}}} b c
  c^\markup{\column{\line{QP\super{3}\sub{EL}}\line{I-IV-I}}} d c
  c8^\markup{\column{\line{QP\super{3}\sub{EL}}\line{I-VII-I}}}[b c] c d c
  \bar "||"
  e4^\markup{\column{\line{QP\super{5}\sub{WL}}\line{I-V-I}}} e e
  e^\markup{\column{\line{QP\super{5}\sub{WL}}\line{I-IV-I}}} f e
  e^\markup{\column{\line{QP\super{5}\sub{WL}}\line{I-VII-I}}} r r
  \bar "||"
  a^\markup{\column{\line{QP\super{8}\sub{WL}}\line{I-V-I}}} gs a
  a^\markup{\column{\line{QP\super{8}\sub{WL}}\line{I-IV-I}}} a a
  a^\markup{\column{\line{QP\super{8}\sub{WL}}\line{I-VII-I}}} gs a
  \bar "||"
  c^\markup{\column{\line{QP\super{3}\sub{WL}}\line{I-V-I}}} b c
  c^\markup{\column{\line{QP\super{3}\sub{WL}}\line{I-IV-I}}} d c
  c8^\markup{\column{\line{QP\super{3}\sub{WL}}\line{I-VII-I}}}[b c] c[d c]
  \bar "|.|"\break
  \time 4/4
  % KD I IV V I
  e,4^\markup{\column{\line{KD\super{5}\sub{EL}}\line{I-IV-V-I}}} f e e
  \bar "||"
  a^\markup{\column{\line{KD\super{8}\sub{EL}}\line{I-IV-V-I}}} a gs a
  \bar "||"
  c,^\markup{\column{\line{KD\super{3}\sub{EL}}\line{I-IV-V-I}}} d b c
  \bar "||"
  e^\markup{\column{\line{KD\super{5}\sub{WL}}\line{I-IV-V-I}}} f e e
  \bar "||"
  a4^\markup{\column{\line{KD\super{8}\sub{WL}}\line{I-IV-V-I}}} a gs a
  \bar "||"
  c^\markup{\column{\line{KD\super{3}\sub{WL}}\line{I-IV-V-I}}} d b c
  \bar "|.|"
  % KD I IV VII I
  e,4^\markup{\column{\line{KD\super{5}\sub{EL}}\line{I-IV-VII-I}}} f d e
  \bar "||"
  a^\markup{\column{\line{KD\super{8}\sub{EL}}\line{I-IV-VII-I}}} a gs a
  \bar "||"
  c,^\markup{\column{\line{KD\super{3}\sub{EL}}\line{I-IV-VII-I}}} d b c
  \bar "||"
  e^\markup{\column{\line{KD\super{5}\sub{WL}}\line{I-IV-VII-I}}} f d e
  \bar "||"
  a4^\markup{\column{\line{KD\super{8}\sub{WL}}\line{I-IV-VII-I}}} a gs a
  \bar "||"
  c^\markup{\column{\line{KD\super{3}\sub{WL}}\line{I-IV-VII-I}}} d b c
  \bar "|.|"
  % KD I II65 V I
  e,4^\markup{\column{\line{KD\super{5}\sub{EL}}\line{I-II\super{6/5}-V-I}}} f e e
  \bar "||"
  a^\markup{\column{\line{KD\super{8}\sub{EL}}\line{I-II\super{6/5}-V-I}}} a gs a
  \bar "||"
  c,^\markup{\column{\line{KD\super{3}\sub{EL}}\line{I-II\super{6/5}-V-I}}} b b c
  \bar "||"
  e^\markup{\column{\line{KD\super{5}\sub{WL}}\line{I-II\super{6/5}-V-I}}} f e e
  \bar "||"
  a4^\markup{\column{\line{KD\super{8}\sub{WL}}\line{I-II\super{6/5}-V-I}}} a gs a
  \bar "||"
  c^\markup{\column{\line{KD\super{3}\sub{WL}}\line{I-II\super{6/5}-V-I}}} b b c
  \bar "|.|"
  % QFS
  e,^\markup{\column{\line{QFS\super{5}\sub{EL}}\line{I-IV-VII-III-VI-II-V-I}}} f d e c d b c
  \bar "||"
  a'^\markup{\column{\line{QFS\super{8}\sub{EL}}\line{I-IV-VII-III-VI-II-V-I}}} a gs gs f f e e
  \bar "||"
  c'^\markup{\column{\line{QFS\super{3}\sub{EL}}\line{I-IV-VII-III-VI-II-V-I}}} d b c a b gs a
  \bar "||"
  e'^\markup{\column{\line{QFS\super{5}\sub{WL}}\line{I-IV-VII-III-VI-II-V-I}}} f d e c d b c
  \bar "||"
  a^\markup{\column{\line{QFS\super{8}\sub{WL}}\line{I-IV-VII-III-VI-II-V-I}}} a gs gs f f e e
  \bar "||"
  cs'^\markup{\column{\line{QFS\super{3}\sub{WL}}\line{I-IV-VII-III-VI-II-V-I}}} d b c a b gs a
  \bar "|."  
}

scoreBAlto = \relative c' {
  \globalB
  % Music follows here.
  % QP^5_EL
  c b c
  c d c
  c b c
  % QP^8_EL
  e e e
  e f e
  e d e
  % QP^3_EL
  a, gs a
  a a a
  a8[gs a]a[gs a]
  % QP^5_WL
  a4 gs a
  a a a
  a r r
  % QP^8_WL
  c b c
  c d c
  c b c
  % QP^3_WL
  e e e
  e f e
  e8[d e] e[d e]
  \time 4/4
  % KD
  % KD^5_WE-I-IV-V-I
  c4 d b c
  % KD^8_EL-I-IV-V-I
  e fs e e
  % KD^3_EL-I-IV-V-I
  a, a gs a
  % KD^5_WL-I-IV-V-I
  a a gs a
  % KD^8_WL-I-IV-V-I
  c d b c
  % KD^3_WL-I-IV-V-I
  e f e e
  % KD^5_WE-I-IV-V-I
  c4 d b c
  % KD^8_EL-I-IV-V-I
  e f d e
  % KD^3_EL-I-IV-V-I
  a, a gs a
  % KD^5_WL-I-IV-V-I
  a a gs a
  % KD^8_WL-I-IV-V-I
  c d b c
  % KD^3_WL-I-IV-V-I
  e f d e
  % KD^5_WE-I-IV-V-I
  c4 b b c
  % KD^8_EL-I-IV-V-I
  e f e e
  % KD^3_EL-I-IV-V-I
  a, a gs a
  % KD^5_WL-I-IV-V-I
  a a gs a
  % KD^8_WL-I-IV-V-I
  c b b c
  % KD^3_WL-I-IV-V-I
  e f e e
  % QFS
  % QFS^5_EL-I-IV-VII-III-VI-II-V-I
  c d b c a b gs a
  % QFS^8_EL-I-IV-VII-III-VI-II-V-I
  e' f d e c d b c
  % QFS^3_EL-I-IV-VII-III-VI-II-V-I
  a' a gs gs f f e e
  % QFS^5_WL-I-IV-VII-III-VI-II-V-I
  a a gs gs f f e e
  % QFS^8_WL-I-IV-VII-III-VI-II-V-I
  c d b c a b gs a
  % QFS^3_WL-I-IV-VII-III-VI-II-V-I
  e' f d e c d b c
  \bar "|."  
}

scoreBTenor = \relative c' {
  \globalB
  % Music follows here.
  % QP^5_EL
  a gs a
  a a a
  a gs a
  % QP^8_EL
  c b c
  c d c
  c b c
  % QP^3_EL
  e, e e
  e f e
  e8[d e]e[d e]
  % QP^5_WL
  c4 b c
  c d c
  c r r
  % QP^8_WL
  e e e
  e f e
  e d e
  % QP^3_WL
  a gs a
  a a a
  a8[gs a]a[gs a]
  \time 4/4
  % KD
  % KD^5_EL-I-IV-V-I
  a4 a gs a
  % KD^8_EL-I-IV-V-I
  c d b c
  % KD^3_EL-I-IV-V-I
  e, f e e
  % KD^5_WL-I-IV-V-I
  c d b c
  % KD^8_WL-I-IV-V-I
  e f e e
  % KD^3_WL-I-IV-V-I
  a a gs a
  % KD^5_EL-I-IV-V-I
  a4 a gs a
  % KD^8_EL-I-IV-V-I
  c d b c
  % KD^3_EL-I-IV-V-I
  e, f d e
  % KD^5_WL-I-IV-V-I
  c d e c
  % KD^8_WL-I-IV-V-I
  e f d e
  % KD^3_WL-I-IV-V-I
  a a gs a
  % KD^5_EL-I-IV-V-I
  a4 a gs a
  % KD^8_EL-I-IV-V-I
  c b b c
  % KD^3_EL-I-IV-V-I
  e, f e e
  % KD^5_WL-I-IV-V-I
  c b b c
  % KD^8_WL-I-IV-V-I
  e f e e
  % KD^3_WL-I-IV-V-I
  a a gs a
  % QFS
  % QFS^5_EL-I-IV-VII-III-VI-II-V-I
  a a gs gs f f e e
  % QFS^8_EL-I-IV-VII-III-VI-II-V-I
  c' d b c a b gs a
  % QFS^3_EL-I-IV-VII-III-VI-II-V-I
  e' f d e c d b c
  % QFS^5_WL-I-IV-VII-III-VI-II-V-I
  c d b c a b gs a
  % QFS^8_WL-I-IV-VII-III-VI-II-V-I
  e f d e c d b c
  % QFS^3_WL-I-IV-VII-III-VI-II-V-I
  a' a gs gs f f e e
  \bar "|."  
}

scoreBBass = \relative c {
  \globalB
  % Music follows here.
  % QP^5_EL
  a e a
  a d a
  a b a
  % QP^8_EL
  a e a
  a d, a'
  a b a
  % QP^3_EL
  a e a
  a d a
  a8[b a]a[b a]
  % QP^5_WL
  a4 e a
  a d, a'
  a r r
  % QP^8_WL
  a e a
  a d a
  a b a
  % QP^3_WL
  a e a
  a d a
  a8[b a]a[b a]
  \time 4/4
  % KD
  % KD^5_EL-I-IV-V-I
  a4 d, e a|
  % KD^8_EL-I-IV-V-I
  a d, e a|
  % KD^3_EL-I-IV-V-I
  a d, e a|
  % KD^5_WL-I-IV-V-I
  a d, e a|
  % KD^8_WL-I-IV-V-I
  a d, e a|
  % KD^3_WL-I-IV-V-I
  a d, e a|
  % KD^5_EL-I-IV-V-I
  a4 d, b' a|
  % KD^8_EL-I-IV-V-I
  a d, b' a|
  % KD^3_EL-I-IV-V-I
  a d, b' a|
  % KD^5_WL-I-IV-V-I
  a d, b' a|
  % KD^8_WL-I-IV-V-I
  a d, b' a|
  % KD^3_WL-I-IV-V-I
  a d, b' a|
  % KD^5_EL-I-IV-V-I
  a4 d,8 \parenthesize ds e4 a|
  % KD^8_EL-I-IV-V-I
  a d,8 \parenthesize ds e4 a|
  % KD^3_EL-I-IV-V-I
  a d,8 \parenthesize ds e4 a|
  % KD^5_WL-I-IV-V-I
  a d,8 \parenthesize ds e4 a|
  % KD^8_WL-I-IV-V-I
  a d,8 \parenthesize ds e4 a|
  % KD^3_WL-I-IV-V-I
  a d,8 \parenthesize ds e4 a|
  % QFS
  % QFS^5_EL-I-IV-VII-III-VI-II-V-I
  a d gs, c f, b e, a
  % QFS^8_EL-I-IV-VII-III-VI-II-V-I
  a d gs, c f, b e, a
  % QFS^3_EL-I-IV-VII-III-VI-II-V-I
  a d gs, c f, b e, a
  % QFS^5_WL-I-IV-VII-III-VI-II-V-I
  a d gs, c f, b e, a
  % QFS^8_WL-I-IV-VII-III-VI-II-V-I
  a d gs, c f, b e, a
  % QFS^3_WL-I-IV-VII-III-VI-II-V-I
  a d gs, c f, b e, a
  \bar "|."  
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreBFigBass = \figuremode {
  \globalB
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

scoreBChordNames = \chordmode {
  \globalB
  % Chords follow here.
  % QP^5_EL
  a:min e a:min
  a:min d a:min
  a:min gs:dim/b a
  % QP^8_EL
  a:min e a:min
  a:min d:min a:min
  a:min gs:dim/b a:min
  % QP^3_EL
  a:min e a:min
  a:min d:min a:min
  a8[gs:dim/b a]a[gs:dim/b a]
  % QP^5_WL
  a4:min e a:min
  a:min d:min a:min
  a:min s s
  % QP^8_WL
  a:min e a:min
  a:min d:min a:min
  a:min gs:dim/b a:min
  % QP^3_WL
  a:min e a:min
  a:min d:min a:min
  a8[gs:dim/b a]a[gs:dim/b a]
  \time 4/4
  % KD
  % KD^5_EL-I-IV-V-I
  a4:min d:min e a:min|
  % KD^8_EL-I-IV-V-I
  a:min d:min e a:min|
  % KD^3_EL-I-IV-V-I
  a:min d:min e a:min|
  % KD^5_WL-I-IV-V-I
  a:min d:min e a:min|
  % KD^8_WL-I-IV-V-I
  a:min d:min e a:min|
  % KD^3_WL-I-IV-V-I
  a:min d:min e a:min|
  % KD^5_EL-I-IV-V-I
  a4:min d:min gs:dim/b a:min|
  % KD^8_EL-I-IV-V-I
  a:min d:min gs:dim/b a:min|
  % KD^3_EL-I-IV-V-I
  a:min d:min gs:dim/b a:min|
  % KD^5_WL-I-IV-V-I
  a:min d:min gs:dim/b a:min|
  % KD^8_WL-I-IV-V-I
  a:min d:min gs:dim/b a:min|
  % KD^3_WL-I-IV-V-I
  a:min d:min gs:dim/b a:min|
  % KD^5_EL-I-IV-V-I
  a4:min d8:min \parenthesize ds e4 a:min|
  % KD^8_EL-I-IV-V-I
  a:min d8:min \parenthesize ds e4 a:min|
  % KD^3_EL-I-IV-V-I
  a:min d8:min \parenthesize ds e4 a:min|
  % KD^5_WL-I-IV-V-I
  a:min d8:min \parenthesize ds e4 a:min|
  % KD^8_WL-I-IV-V-I
  a:min d8:min \parenthesize ds e4 a:min|
  % KD^3_WL-I-IV-V-I
  a:min d8:min \parenthesize ds e4 a:min|
  % QFS
  % QFS^5_EL-I-IV-VII-III-VI-II-V-I
  a:min d:min gs c f b e a:min
  % QFS^8_EL-I-IV-VII-III-VI-II-V-I
  a:min d:min gs c f b e a:min
  % QFS^3_EL-I-IV-VII-III-VI-II-V-I
  a:min d:min gs c f b e a:min
  % QFS^5_WL-I-IV-VII-III-VI-II-V-I
  a:min d:min gs c f b e a:min
  % QFS^8_WL-I-IV-VII-III-VI-II-V-I
  a:min d:min gs c f b e a:min
  % QFS^3_WL-I-IV-VII-III-VI-II-V-I
  a:min d:min gs c f b e a:min
  \bar "|."  
}

scoreBChoirPart = \new ChoirStaff <<
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

scoreBBassFiguresPart = \new FiguredBass \scoreBFigBass

scoreBChordsPart = \new ChordNames \scoreBChordNames

\bookpart {
  \header {
    subtitle = "a-Moll"
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin a minor
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

globalB = {
  \transpose c g \key c \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreFSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreFAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreFTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreFBass }
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreGSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreGAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreGTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreGBass }
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreHSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreHAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreHTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreHBass }
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreISoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreIAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreITenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreIBass }
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreJSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreJAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreJTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreJBass }
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreKSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreKAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreKTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreKBass }
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreLSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreLAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreLTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreLBass }
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreMSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreMAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreMTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreMBass }
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreNSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreNAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreNTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreNBass }
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreOSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreOAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreOTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreOBass }
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scorePSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scorePAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scorePTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scorePBass }
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreQSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreQAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreQTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreQBass }
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreRSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreRAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreRTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreRBass }
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreSSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreSAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreSTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreSBass }
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreTSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreTAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreTTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreTBass }
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreUSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreUAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreUTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreUBass }
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreVSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreVAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreVTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreVBass }
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreWSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreWAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreWTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreWBass }
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreXSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreXAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreXTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreXBass }
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreYSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreYAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreYTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreYBass }
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
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreZSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreZAlto }
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
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreZTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreZBass }
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
