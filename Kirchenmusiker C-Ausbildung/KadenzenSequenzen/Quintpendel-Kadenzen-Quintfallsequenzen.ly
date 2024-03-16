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

\markuplist \table-of-contents
\pageBreak

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

\label #'C-Dur
\tocItem \markup {C-Dur}

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
  \germanChords
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

\label #'a-Moll
\tocItem \markup {a-Moll}

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
  \germanChords
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
% begin G major
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'G-Dur
\tocItem \markup {G-Dur}

globalC = {
  \transpose c g \key c \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreCSoprano = \relative c'' {
  \globalC
  % Music follows here.
  \transpose c g, \scoreASoprano
}

scoreCAlto = \relative c' {
  \globalC
  % Music follows here.
  \transpose c g, \scoreAAlto
}

scoreCTenor = \relative c' {
  \globalC
  % Music follows here.
  \transpose c g, \scoreATenor
}

scoreCBass = \relative c {
  \globalC
  % Music follows here.
  \transpose c g, \scoreABass
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreCFigBass = \figuremode {
  \globalC
  % Figures follow here.
  \scoreAFigBass
}

scoreCChordNames = \chordmode {
  \globalC
  \germanChords
  % Chords follow here.
  \transpose c g \scoreAChordNames
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
  \header {
    subtitle = "G-Dur"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin e minor
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'e-Moll
\tocItem \markup {e-Moll}

globalD = {
  \transpose a e \key a \minor
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreDSoprano = \relative c'' {
  \globalD
  % Music follows here.
  \transpose a e' \scoreBSoprano
}

scoreDAlto = \relative c' {
  \globalD
  % Music follows here.
  \transpose a e' \scoreBAlto
}

scoreDTenor = \relative c' {
  \globalD
  % Music follows here.
  \transpose a e' \scoreBTenor
}

scoreDBass = \relative c {
  \globalD
  % Music follows here.
  \transpose a e' \scoreBBass
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreDFigBass = \figuremode {
  \globalD
  % Figures follow here.
  \scoreBFigBass
}

scoreDChordNames = \chordmode {
  \globalD
  \germanChords
  % Chords follow here.
  \transpose a e \scoreBChordNames
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
  \header {
    subtitle = "e-Moll"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin f major
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'F-Dur
\tocItem \markup {F-Dur}

globalE = {
  \transpose c f \key c \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreESoprano = \relative c'' {
  \globalE
  % Music follows here.
  \transpose c f \scoreASoprano
}

scoreEAlto = \relative c' {
  \globalE
  % Music follows here.
  \transpose c f \scoreAAlto
}

scoreETenor = \relative c' {
  \globalE
  % Music follows here.
  \transpose c f \scoreATenor
}

scoreEBass = \relative c {
  \globalE
  % Music follows here.
  \transpose c f \scoreABass
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreEFigBass = \figuremode {
  \globalE
  % Figures follow here.
  \scoreAFigBass
}

scoreEChordNames = \chordmode {
  \globalE
  \germanChords
  % Chords follow here.
  \transpose c f \scoreAChordNames
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
  \header {
    subtitle = "F-Dur"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin d minor
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'d-Moll
\tocItem \markup {d-Moll}

globalF = {
  \transpose a d \key a \minor
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreFSoprano = \relative c'' {
  \globalF
  % Music follows here.
  \transpose a d' \scoreBSoprano
}

scoreFAlto = \relative c' {
  \globalF
  % Music follows here.
  \transpose a d' \scoreBAlto
}

scoreFTenor = \relative c' {
  \globalF
  % Music follows here.
  \transpose a d' \scoreBTenor
}

scoreFBass = \relative c {
  \globalF
  % Music follows here.
  \transpose a d' \scoreBBass
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreFFigBass = \figuremode {
  \globalF
  % Figures follow here.
  \scoreBFigBass
}

scoreFChordNames = \chordmode {
  \globalF
  \germanChords
  % Chords follow here.
  \transpose a d \scoreBChordNames
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
  \header {
    subtitle = "d-Moll"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin d major
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'D-Dur
\tocItem \markup {D-Dur}

globalG = {
  \transpose c d \key c \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreGSoprano = \relative c'' {
  \globalG
  % Music follows here.
  \transpose c d \scoreASoprano
}

scoreGAlto = \relative c' {
  \globalG
  % Music follows here.
  \transpose c d \scoreAAlto
}

scoreGTenor = \relative c' {
  \globalG
  % Music follows here.
  \transpose c d \scoreATenor
}

scoreGBass = \relative c {
  \globalG
  % Music follows here.
  \transpose c d \scoreABass
}

scoreGVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreGFigBass = \figuremode {
  \globalG
  % Figures follow here.
  \scoreAFigBass
}

scoreGChordNames = \chordmode {
  \globalG
  \germanChords
  % Chords follow here.
  \transpose c d \scoreAChordNames
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
  \header {
    subtitle = "D-Dur"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin h minor
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'h-Moll
\tocItem \markup {h-Moll}

globalH = {
  \transpose a b \key a \minor
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreHSoprano = \relative c'' {
  \globalH
  % Music follows here.
  \transpose a b \scoreBSoprano
}

scoreHAlto = \relative c' {
  \globalH
  % Music follows here.
  \transpose a b \scoreBAlto
}

scoreHTenor = \relative c' {
  \globalH
  % Music follows here.
  \transpose a b \scoreBTenor
}

scoreHBass = \relative c {
  \globalH
  % Music follows here.
  \transpose a b \scoreBBass
}

scoreHVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreHFigBass = \figuremode {
  \globalH
  % Figures follow here.
  \scoreBBass
}

scoreHChordNames = \chordmode {
  \globalH
  \germanChords
  % Chords follow here.
  \transpose a b \scoreBChordNames
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
  \header {
    subtitle = "h-Moll"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin bf major
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'B-Dur
\tocItem \markup {B-Dur}

globalI = {
  \transpose c bf \key c \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreISoprano = \relative c'' {
  \globalI
  % Music follows here.
  \transpose c bf, \scoreASoprano
}

scoreIAlto = \relative c' {
  \globalI
  % Music follows here.
  \transpose c bf, \scoreAAlto
}

scoreITenor = \relative c' {
  \globalI
  % Music follows here.
  \transpose c bf, \scoreATenor
}

scoreIBass = \relative c {
  \globalI
  % Music follows here.
  \transpose c bf, \scoreABass
}

scoreIVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreIFigBass = \figuremode {
  \globalI
  % Figures follow here.
  \scoreABass
}

scoreIChordNames = \chordmode {
  \globalI
  \germanChords
  % Chords follow here.
  \transpose c bf \scoreAChordNames
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
  \header {
    subtitle = "B-Dur"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin g minor
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'g-Moll
\tocItem \markup {g-Moll}

globalJ = {
  \transpose a g \key a \minor
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreJSoprano = \relative c'' {
  \globalJ
  % Music follows here.
  \transpose a g \scoreBSoprano
}

scoreJAlto = \relative c' {
  \globalJ
  % Music follows here.
  \transpose a g \scoreBAlto
}

scoreJTenor = \relative c' {
  \globalJ
  % Music follows here.
  \transpose a g \scoreBTenor
}

scoreJBass = \relative c {
  \globalJ
  % Music follows here.
  \transpose a g \scoreBBass
}

scoreJVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreJFigBass = \figuremode {
  \globalJ
  % Figures follow here.
  \scoreBFigBass
}

scoreJChordNames = \chordmode {
  \globalJ
  \germanChords
  % Chords follow here.
  \transpose a g \scoreBChordNames
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
  \header {
    subtitle = "g-Moll"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin a major
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'A-Dur
\tocItem \markup {A-Dur}

globalK = {
  \transpose c a \key c \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreKSoprano = \relative c'' {
  \globalK
  % Music follows here.
  \transpose c a, \scoreASoprano
}

scoreKAlto = \relative c' {
  \globalK
  % Music follows here.
  \transpose c a, \scoreAAlto
}

scoreKTenor = \relative c' {
  \globalK
  % Music follows here.
  \transpose c a, \scoreATenor
}

scoreKBass = \relative c {
  \globalK
  % Music follows here.
  \transpose c a, \scoreABass
}

scoreKVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreKFigBass = \figuremode {
  \globalK
  % Figures follow here.
  \scoreAFigBass
}

scoreKChordNames = \chordmode {
  \globalK
  \germanChords
  % Chords follow here.
  \transpose c a \scoreAChordNames
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
  \header {
    subtitle = "A-Dur"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin fs minor
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'fis-Moll
\tocItem \markup {fis-Mol}

globalL = {
  \transpose a fs \key a \minor
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreLSoprano = \relative c'' {
  \globalL
  % Music follows here.
  \transpose a fs \scoreBSoprano
}

scoreLAlto = \relative c' {
  \globalL
  % Music follows here.
  \transpose a fs \scoreBAlto
}

scoreLTenor = \relative c' {
  \globalL
  % Music follows here.
  \transpose a fs \scoreBTenor
}

scoreLBass = \relative c {
  \globalL
  % Music follows here.
  \transpose a fs \scoreBBass
}

scoreLVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreLFigBass = \figuremode {
  \globalL
  % Figures follow here.
  \scoreBBass
}

scoreLChordNames = \chordmode {
  \globalL
  \germanChords
  % Chords follow here.
  \transpose a fs \scoreBChordNames
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
  \header {
    subtitle = "fis-Moll"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin ef major
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'Es-Dur
\tocItem \markup {Es-Dur}

globalM = {
  \transpose c ef \key c \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreMSoprano = \relative c'' {
  \globalM
  % Music follows here.
  \transpose c ef \scoreASoprano
}

scoreMAlto = \relative c' {
  \globalM
  % Music follows here.
  \transpose c ef \scoreAAlto
}

scoreMTenor = \relative c' {
  \globalM
  % Music follows here.
  \transpose c ef \scoreATenor
}

scoreMBass = \relative c {
  \globalM
  % Music follows here.
  \transpose c ef \scoreABass
}

scoreMVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreMFigBass = \figuremode {
  \globalM
  % Figures follow here.
  \scoreAFigBass
}

scoreMChordNames = \chordmode {
  \globalM
  \germanChords
  % Chords follow here.
  \transpose c ef \scoreAChordNames
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
  \header {
    subtitle = "Es-Dur"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin c minor
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'c-Moll
\tocItem \markup {c-Moll}

globalN = {
  \transpose a c \key a \minor
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreNSoprano = \relative c'' {
  \globalN
  % Music follows here.
  \transpose a c' \scoreBSoprano
}

scoreNAlto = \relative c' {
  \globalN
  % Music follows here.
  \transpose a c' \scoreBAlto
}

scoreNTenor = \relative c' {
  \globalN
  % Music follows here.
  \transpose a c' \scoreBTenor
}

scoreNBass = \relative c {
  \globalN
  % Music follows here.
  \transpose a c' \scoreBBass
}

scoreNVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreNFigBass = \figuremode {
  \globalN
  % Figures follow here.
  \scoreBFigBass
}

scoreNChordNames = \chordmode {
  \globalN
  \germanChords
  % Chords follow here.
  \transpose a c \scoreBChordNames
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
  \header {
    subtitle = "c-Moll"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin e major
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'E-Dur
\tocItem \markup {E-Dur}

globalO = {
  \transpose c e \key c \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreOSoprano = \relative c'' {
  \globalO
  % Music follows here.
  \transpose c e \scoreASoprano
}

scoreOAlto = \relative c' {
  \globalO
  % Music follows here.
  \transpose c e \scoreAAlto
}

scoreOTenor = \relative c' {
  \globalO
  % Music follows here.
  \transpose c e \scoreATenor
}

scoreOBass = \relative c {
  \globalO
  % Music follows here.
  \transpose c e \scoreABass
}

scoreOVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreOFigBass = \figuremode {
  \globalO
  % Figures follow here.
  \scoreABass
}

scoreOChordNames = \chordmode {
  \globalO
  \germanChords
  % Chords follow here.
  \transpose c e \scoreAChordNames
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
  \header {
    subtitle = "E-Dur"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin cs minor
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'cis-Moll
\tocItem \markup {cis-Moll}

globalP = {
  \transpose a cs \key a \minor
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scorePSoprano = \relative c'' {
  \globalP
  % Music follows here.
  \transpose a cs' \scoreBSoprano
}

scorePAlto = \relative c' {
  \globalP
  % Music follows here.
  \transpose a cs' \scoreBAlto
}

scorePTenor = \relative c' {
  \globalP
  % Music follows here.
  \transpose a cs' \scoreBTenor
}

scorePBass = \relative c {
  \globalP
  % Music follows here.
  \transpose a cs' \scoreBBass
}

scorePVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scorePFigBass = \figuremode {
  \globalP
  % Figures follow here.
  \scoreBFigBass
}

scorePChordNames = \chordmode {
  \globalP
  \germanChords
  % Chords follow here.
  \transpose a cs \scoreBChordNames
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
  \header {
    subtitle = "cis-Moll"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin af major
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'As-Dur
\tocItem \markup {As-Dur}

globalQ = {
  \transpose c af \key c \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreQSoprano = \relative c'' {
  \globalQ
  % Music follows here.
  \transpose c af, \scoreASoprano
}

scoreQAlto = \relative c' {
  \globalQ
  % Music follows here.
  \transpose c af, \scoreAAlto
}

scoreQTenor = \relative c' {
  \globalQ
  % Music follows here.
  \transpose c af, \scoreATenor
}

scoreQBass = \relative c {
  \globalQ
  % Music follows here.
  \transpose c af, \scoreABass
}

scoreQVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreQFigBass = \figuremode {
  \globalQ
  % Figures follow here.
  \scoreAFigBass
}

scoreQChordNames = \chordmode {
  \globalQ
  \germanChords
  % Chords follow here.
  \transpose c af \scoreAChordNames
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
  \header {
    subtitle = "As-Dur"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin f minor
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'f-Moll
\tocItem \markup {f-Moll}

globalR = {
  \transpose a f \key a \minor
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreRSoprano = \relative c'' {
  \globalR
  % Music follows here.
  \transpose a f \scoreBSoprano
}

scoreRAlto = \relative c' {
  \globalR
  % Music follows here.
  \transpose a f \scoreBAlto
}

scoreRTenor = \relative c' {
  \globalR
  % Music follows here.
  \transpose a f \scoreBTenor
}

scoreRBass = \relative c {
  \globalR
  % Music follows here.
  \transpose a f \scoreBBass
}

scoreRVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreRFigBass = \figuremode {
  \globalR
  % Figures follow here.
  \scoreBFigBass
}

scoreRChordNames = \chordmode {
  \globalR
  \germanChords
  % Chords follow here.
  \transpose a f \scoreBChordNames
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
  \header {
    subtitle = "f-Moll"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin b major
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'H-Dur
\tocItem \markup {H-Dur}

globalS = {
  \transpose c b \key c \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreSSoprano = \relative c'' {
  \globalS
  % Music follows here.
  \transpose c b, \scoreASoprano
}

scoreSAlto = \relative c' {
  \globalS
  % Music follows here.
  \transpose c b, \scoreAAlto
}

scoreSTenor = \relative c' {
  \globalS
  % Music follows here.
  \transpose c b, \scoreATenor
}

scoreSBass = \relative c {
  \globalS
  % Music follows here.
  \transpose c b, \scoreABass
}

scoreSVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreSFigBass = \figuremode {
  \globalS
  % Figures follow here.
  \scoreAFigBass
}

scoreSChordNames = \chordmode {
  \globalS
  \germanChords
  % Chords follow here.
  \transpose c b \scoreAChordNames
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
  \header {
    subtitle = "H-Dur"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin gs minor
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'gis-Moll
\tocItem \markup {gis-Moll}

globalT = {
  \transpose a gs \key a \minor
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreTSoprano = \relative c'' {
  \globalT
  % Music follows here.
  \transpose a gs \scoreBSoprano
}

scoreTAlto = \relative c' {
  \globalT
  % Music follows here.
  \transpose a gs \scoreBAlto
}

scoreTTenor = \relative c' {
  \globalT
  % Music follows here.
  \transpose a gs \scoreBTenor
}

scoreTBass = \relative c {
  \globalT
  % Music follows here.
  \transpose a gs \scoreBBass
}

scoreTVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreTFigBass = \figuremode {
  \globalT
  % Figures follow here.
  \scoreBFigBass
}

scoreTChordNames = \chordmode {
  \globalT
  \germanChords
  % Chords follow here.
  \transpose a gs \scoreBChordNames
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
  \header {
    subtitle = "gis-Moll"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin df major
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'Des-Dur
\tocItem \markup {Des-Dur}

globalU = {
  \transpose c df \key c \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreUSoprano = \relative c'' {
  \globalU
  % Music follows here.
  \transpose c df \scoreASoprano
}

scoreUAlto = \relative c' {
  \globalU
  % Music follows here.
  \transpose c df \scoreAAlto
}

scoreUTenor = \relative c' {
  \globalU
  % Music follows here.
  \transpose c df \scoreATenor
}

scoreUBass = \relative c {
  \globalU
  % Music follows here.
  \transpose c df \scoreABass
}

scoreUVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreUFigBass = \figuremode {
  \globalU
  % Figures follow here.
  \scoreAFigBass
}

scoreUChordNames = \chordmode {
  \globalU
  \germanChords
  % Chords follow here.
  \transpose c df \scoreAChordNames
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
  \header {
    subtitle = "Des-Dur"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin bf minor
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'b-Moll
\tocItem \markup {b-Moll}

globalV = {
  \transpose a bf \key a \minor
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreVSoprano = \relative c'' {
  \globalV
  % Music follows here.
  \transpose a bf \scoreBSoprano
}

scoreVAlto = \relative c' {
  \globalV
  % Music follows here.
  \transpose a bf \scoreBAlto
}

scoreVTenor = \relative c' {
  \globalV
  % Music follows here.
  \transpose a bf \scoreBTenor
}

scoreVBass = \relative c {
  \globalV
  % Music follows here.
  \transpose a bf \scoreBBass
}

scoreVVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreVFigBass = \figuremode {
  \globalV
  % Figures follow here.
  \scoreBFigBass
}

scoreVChordNames = \chordmode {
  \globalV
  \germanChords
  % Chords follow here.
  \transpose a bf \scoreBChordNames
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
  \header {
    subtitle = "b-Moll"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin fs major
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'Fis-Dur
\tocItem \markup {Fis-Dur}

globalW = {
  \transpose c fs \key c \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreWSoprano = \relative c'' {
  \globalW
  % Music follows here.
  \transpose c fs \scoreASoprano
}

scoreWAlto = \relative c' {
  \globalW
  % Music follows here.
  \transpose c fs \scoreAAlto
}

scoreWTenor = \relative c' {
  \globalW
  % Music follows here.
  \transpose c fs \scoreATenor
}

scoreWBass = \relative c {
  \globalW
  % Music follows here.
  \transpose c fs \scoreABass
}

scoreWVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreWFigBass = \figuremode {
  \globalW
  % Figures follow here.
  \scoreAFigBass
}

scoreWChordNames = \chordmode {
  \globalW
  \germanChords
  % Chords follow here.
  \transpose c fs \scoreAChordNames
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
  \header {
    subtitle = "Fis-Dur"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin ds minor
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'dis-Moll
\tocItem \markup {dis-Moll}

globalX = {
  \transpose a ds \key a \minor
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreXSoprano = \relative c'' {
  \globalX
  % Music follows here.
  \transpose a ds' \scoreBSoprano
}

scoreXAlto = \relative c' {
  \globalX
  % Music follows here.
  \transpose a ds' \scoreBAlto
}

scoreXTenor = \relative c' {
  \globalX
  % Music follows here.
  \transpose a ds' \scoreBTenor
}

scoreXBass = \relative c {
  \globalX
  % Music follows here.
  \transpose a ds' \scoreBBass
}

scoreXVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreXFigBass = \figuremode {
  \globalX
  % Figures follow here.
  \scoreBFigBass
}

scoreXChordNames = \chordmode {
  \globalX
  \germanChords
  % Chords follow here.
  \transpose a ds \scoreBChordNames
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
  \header {
    subtitle = "dis-Moll"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin gf major
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'Ges-Dur
\tocItem \markup {Ges-Dur}

globalY = {
  \transpose c gf \key c \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreYSoprano = \relative c'' {
  \globalY
  % Music follows here.
  \transpose c gf, \scoreASoprano
}

scoreYAlto = \relative c' {
  \globalY
  % Music follows here.
  \transpose c gf, \scoreAAlto
}

scoreYTenor = \relative c' {
  \globalY
  % Music follows here.
  \transpose c gf, \scoreATenor
}

scoreYBass = \relative c {
  \globalY
  % Music follows here.
  \transpose c gf, \scoreABass
}

scoreYVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreYFigBass = \figuremode {
  \globalY
  % Figures follow here.
  \scoreAFigBass
}

scoreYChordNames = \chordmode {
  \globalY
  \germanChords
  % Chords follow here.
  \transpose c gf \scoreAChordNames
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
  \header {
    subtitle = "Ges-Dur"
  }
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin ef minor
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

\label #'es-Moll
\tocItem \markup {es-Moll}

globalZ = {
  \transpose a ef \key a \minor
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreZSoprano = \relative c'' {
  \globalZ
  % Music follows here.
  \transpose a ef' \scoreBSoprano
}

scoreZAlto = \relative c' {
  \globalZ
  % Music follows here.
  \transpose a ef' \scoreBAlto
}

scoreZTenor = \relative c' {
  \globalZ
  % Music follows here.
  \transpose a ef' \scoreBTenor
}

scoreZBass = \relative c {
  \globalZ
  % Music follows here.
  \transpose a ef' \scoreBBass
}

scoreZVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreZFigBass = \figuremode {
  \globalZ
  % Figures follow here.
  \scoreBFigBass
}

scoreZChordNames = \chordmode {
  \globalZ
  \germanChords
  % Chords follow here.
  \transpose a ef \scoreBChordNames
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
  \header {
    subtitle = "es-Moll"
  }
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
