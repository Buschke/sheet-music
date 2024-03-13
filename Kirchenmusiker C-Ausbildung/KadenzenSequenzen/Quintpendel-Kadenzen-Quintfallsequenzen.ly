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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% begin C major
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

global = {
  \key c \major
%   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

soprano = \relative c'' {
  \global
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

alto = \relative c' {
  \global
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

tenor = \relative c' {
  \global
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

bass = \relative c {
  \global
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

verse = \lyricmode {
  % Lyrics follow here.
  % QP^5_EL
  do so do do fa do do di do do so do do fa do do di do
  do so do do fa do do di do do di do do so do do fa do do
  do so do do fa do do di do do so do do fa do do di do do di do 
}

figBass = \figuremode {
  \global
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

chordNames = \chordmode {
  \global
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

% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------
% end C major
% -----------------------------------------------
% -----------------------------------------------
% -----------------------------------------------

choirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \soprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \alto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \verse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \tenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \bass }
  >>
>>

bassFiguresPart = \new FiguredBass \figBass

chordsPart = \new ChordNames \chordNames

\score {
  <<
    \choirPart
    \bassFiguresPart
    \chordsPart
  >>
  \layout { }
  \midi { }
}
