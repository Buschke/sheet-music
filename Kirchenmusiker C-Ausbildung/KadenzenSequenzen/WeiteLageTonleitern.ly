\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = ""
  title = "Weite Lage Übergänge"
  subtitle = ""
  subsubtitle = ""
  instrument = ""
  composer = ""
  arranger = "Satz: Sven Buschke"
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  copyright = "Satz: Sven Buschke"
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
}

% global = {
%   \key c \major
%   \time 4/4
%   \tempo "Andante" 4=100
% }
%
%
% scoreASoprano = \relative c'' {
%   \global
%   % Music follows here.
%   c4 d e f g a b c c b a g f e d c
%   \bar "||"
%   c e g b d, f a c c a f d b' g e c
%   \bar "||"
%   c f b e, a d, g c c g d a' e b' f c
%   \bar "||"
%   c g' d a' e b' f c' c f, b e, a d, g c,
%   \bar "||"
%   c a' f d b' g e c' c e, g b d, f a c,
%   \bar "||"
%   c b' a g f e d c c d e f g a b c
%   \bar "|."
% }
%
% scoreAAlto = \relative c' {
%   \global
%   % Music follows here.
%   e g g a c c d e
%   e d c c a g g e
%   e g b d g, a c e
%   e c a g d' c g e
%   e a d g, c g b e
%   e b g c g d' a e
%   e b' g c g d' a e'
%   e a, d g, c g b e,
%   e c' a g d' b g e'
%   e g, b d g, a c e,
%   e d' c c a g g e
%   e g g a c c d e
% }
%
% scoreATenor = \relative c' {
%   \global
%   % Music follows here.
%   g b c c e f f g
%   g g f e c c b g
%   g c d g b, c f g
%   g f c b g' e c g
%   g c g' c, f b, d g
%   g d b f' c g' c, g
%   g d b' f' c g' c, g'
%   g c, g' c, f b, d g,
%   g f' c b g' d c g'
%   g c, d g b, c f g,
%   g g' f e c c b g
%   g b c c e f f g
% }
%
% scoreABass = \relative c {
%   \global
%   % Music follows here.
%   c g c f c f d c
%   c g f' c f c g c
%   c c g g g f' f c
%   c f f g, g c c c c f g, c f g, g c c g g f' c g f' c
%   c g g f' c g f c' c f g, c f g, g c
%   c f f g, g g c c c c g g g f' f c c g f' c f c g c c g c f c f d c
% }
%
% scoreAVerse = \lyricmode {
%   % Lyrics follow here.
%   do re mi fa sol la si do
%   do si la sol fa mi re do
%   do mi sol si re fa la do
%   do la fa re si sol mi do
%   do fa si mi la re sol do
%   do sol re la mi si fa do
%   do sol re la mi si fa do
%   do fa si mi la re sol do
%   do la fa re si sol mi do
%   do mi sol si re fa la do
%   do si la sol fa mi re do
%   do re mi fa sol la si do
% }
%
% scoreAChordNames = \chordmode {
%   \global
%   \germanChords
%   % Chords follow here.
%   c g c f c f b:dim/d c
%   c g f c f c g c
%   c c g g g f f c
%   c f f g g c c c
%   c f g c f g g c c g g f c g f c
%   c g g f c g f c c f g c f g g c
%   c f f g g g c c c c g g g f f c
%   c g f c f c g c c g c f c f b:dim/d c
% }
%
% scoreAFigBass = \figuremode {
%   \global
%   % Figures follow here.
%
% }

%%%%%%%%%%%%%%%%%%%%%%%%%
% C-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreASoprano = \relative c'' {
  \globalA
  % Music follows here.
  c4^"8"^"Tonleiter" d^"5" e^"3" f^"8" g^"5" a^"3" b^"3" c^"8"
  c,^"8"^"Tonleiter im Bass" b^"8" c^"8" c8^"5" d^"8" d4^"5" c^"3" g^"8" g^"5"
  \bar "||"
  c4^"8"^"Cantus firmus im Sopran, Sekunde" d^"5" e^"3" f^"8" g^"5" a^"3" b^"8" c^"8" c^"8" b^"8" a^"3" g^"5" f^"8" e^"3" d^"5" c^"8"
  \bar "||"
  c^"8"^"Terz" e^"3" g^"8" b^"3" d,^"5" f^"8" a^"3" c^"8" c^"8" a^"3" f^"8" d^"5" b'^"3" g^"5" e^"3" c^"8"
  \bar "||"
  c^"8"^"Quarte" f^"8" b^"5" e,^"5" a^"3" d,^"5" g^"8" c^"8" c^"8" g^"8" d^"5" a'^"3" e^"3" b'^"3" f^"8" c^"8"
  \bar "||"
  c^"8"^"Quinte" g'^"8" d^"5" a'^"3" e^"3" b'^"3" f^"8" c'^"8" c^"8" f,^"8" b^"3" e,^"3" a^"3" d,^"5" g^"8" c,^"8"
  \bar "||"
  c^"8"^"Sexte" a'^"" f^"" d^"" b'^"" g^"" e^"" c'^"" c^"" e,^"" g^"" b^"" d,^"" f^"" a^"" c,^""
  \bar "||"
  c^"8"^"Septime" b'^"" a^"" g^"" f^"" e^"" d^"" c^"" c^"" d^"" e^"" f^"" g^"" a^"" b^"" c^""
  \bar "|."
  e,,^"3"^"CF im Tenor, Sekunde" g^"" g^"" a^"" c^"" c^"" d^"" e^"" e^"" d^"" c^"" c^"" a^"" g^"" g^"" e^""
  e^"3"^"Terz" g^"" b^"" d^"" g,^"" a^"" c^"" e^"" e^"" c^"" a^"" g^"" d'^"" c^"" g^"" e^""
  e^"3"^"Quarte" a^"" d^"" g,^"" c^"" g^"" b^"" e^"" e^"" b^"" g^"" c^"" g^"" d'^"" a^"" e^""
  e^"3"^"Quinte" b'^"" g^"" c^"" g^"" d'^"" a^"" e'^"" e^"" a,^"" d^"" g,^"" c^"" g^"" b^"" e,^""
  e^"3"^"Sexte" c'^"" a^"" g^"" d'^"" b^"" g^"" e'^"" e^"" g,^"" b^"" d^"" g,^"" a^"" c^"" e,^""
  e^"3"^"Septime" d'^"" c^"" c^"" a^"" g^"" g^"" e^"" e^"" g^"" g^"" a^"" c^"" c^"" d^"" e^""
  \bar "|."
  %%%%%%%%%%
  % Grundstellung
  c^"8"^"CF im Bass, Grundstellung" b^"" g^"" c^"" b^"" f^"" d'^"" c^"" c^"" d^"" f,^"" b^"" c g b c\bar "||"
  % Sekundintervall
  e^"3"^"CF im Bass, Grundstellung Sekunde" d b a g e d c c d e g a b d e
  % Sextakkord
  a,^"8"^"Sextakkord Sekunde, muss überarbeitet werden, lauter Parallelen" b c d e c g' e e g c, e a, c f, a
  % Quartsextakkord
  f^"8"^"Quartsextakkord Sekunde" g^"" a^"" b^"" c^"" d^"" e^"" f^"" f^"" e^"" d^"" c^"" b^"" a^"" g^"" f^""
  % Terzintervall
  % Grundstellung
  e'^"3"^"Grundstellung Terz" e d d d c c c c c c d d d e e
  % Sextakkord
  a^""^"Sextakkord Terz" c, e g, b d, f a, a f' d b' g e' c a'
  % Quartsextakkord
  a^""^"Quartsextakkord Terz" a g g g f f f f f f g g g a a
  % Quartintervall
  % Grundstellung
  e^""^"Grundstellung Quarte" f f g a a b c c b a a g f f e
  % Sextakkord
  a,^""^"Sextakkord Quarte" a g g f f e e e e f f g g a a
  a'^""^"Quartsextakkord Quarte" b g a f g e f f e g f a g b a
  % Quintintervall
  % Grundstellung
  e^""^"Grundstellung Quinte" d d c b b c c c c b b c d d e
  % Sextakkord
  a,^""^"Sextakkord Quinte" b b c c d d e e d d c c b b a
  a^""^"Quartsextakkord Quinte" g g a a b b c c b b a a g g a
  % Sextintervall
  % Grundstellung
  e^""^"Grundstellung Sexte" e f f f g g g g g g f f f e e
  % Sextakkord
  a^""^"Sextakkord Sexte" f d f g e c' e, e c' e, g f d f e
  f^""^"Quartsextakkord Sexte" f f g g g a a a a g g g f f f
  % Septimintervall
  % Grundstellung
  e^""^"Grundstellung Septime" f a b c e f g g f e c b a f e
  % Sextakkord
  a^""^"Sextakkord Septime" d, f b, d' g, b e, e b' g d' b, f' d a'
  a^""^"Quartsextakkord Septime" b d e f a b c c b a f e d b a
  \bar "|."
  %%%%%%%%%%%%%%%%
    g^"5"^"CF im Alt, Sekunde" b^"" c^"" c^"" e^"" f^"" f^"" g^"" g^"" g^"" f^"" e^"" c^"" c^"" b^"" g^""
  g^"5"^"Terz" c d g b, c f g g f c b g' e c g
  g^"5"^"Quarte" c g' c, f b, d g g d b f' c g' c, g
  g^"5"^"Quinte" d b' f' c g' c, g' g c, g' c, f b, d g,
  g^"5"^"Sexte" f' c b g' d c g' g c, d g b, c f g,
  g^"5"^"Septime" g' f e c c b g g b c c e f f g
}

scoreAAlto = \relative c' {
  \globalA
  % Music follows here.
  e g g a c c d e
  e, f g f8 a g4 e d c
  \bar "||"
  e g g a c c d e
  e d c c a g g e
  e g b d g, a c e
  e c a g d' c g e
  e a d g, c g b e
  e b g c g d' a e
  e b' g c g d' a e'
  e a, d g, c g b e,
  e c' a g d' b g e'
  e g, b d g, a c e,
  e d' c c a g g e
  e g g a c c d e
  %%%%%%
  g,, b c c e f f g
  g g f e c c b g
  g c d g b, c f g
  g f c b g' e c g
  g c g' c, f b, d g
  g d b f' c g' c, g
  g d b' f' c g' c, g'
  g c, g' c, f b, d g,
  g f' c b g' d c g'
  g c, d g b, c f g,
  g g' f e c c b g
  g b c c e f f g
  %%%%%%%%%%%%%%%%
    % Sekundintervall
  % Grundstellung bevorzugte Harmonisierung
  e f c f d c g' e e g c, d f c f e \bar "||"
  % Grundstellung
  g f e c b a f e e f a b c e f g
  % Sextakkord
  e f g a b c d e e d c b a g f e
  % Quartsextakkord
  a, b c d e f g a a g f e d c b a
  % Terzintervall
  % Grundstellung
  g' g g f f f e e e e f f g g g g
  % Sextakkord
  e' c b g f d c a a c d f g b c e
  % Quartsextakkord
  c c c b b b a a a a b b b c c c
  % Quartintervall
  % Grundstellung
  g a b b c d d e e d d c b b a g
  % Sextakkord
  e d d c c b b a a b b c c d d e
  % Quartsextakkord
  c' d b c a b g a a g b a c b d c
  % Quintintervall
  % Grundstellung
  g g f e e f f e e f f e e f g g
  % Sextakkord
  e e f f g g a a a a g g f f e e
  % Quartsextakkord
  c c b d c e d f f f e e d d c c
  % Sextintervall
  % Grundstellung
  g a a a b b b c c b b b a a a g
  % Sextakkord
  e' c d b d e g e e g e d b d c e
  % Quartsextakkord
  a, a b b b c c c c c c b b b a a
  % Septimintervall
  % Grundstellung
  g b c d f g a c c a g f d c b g
  % Sextakkord
  e' d c b a' g f e e f g a b, c d e
  % Quartsextakkord
  c e f g b c d f f d c b g f e c
  %%%%%%%%%%5
    c4 d e f g a b c c b a g f e d c
  \bar "||"
  c e g b d, f a c c a f d b' g e c
  \bar "||"
  c f b e, a d, g c c g d a' e b' f c
  \bar "||"
  c g' d a' e b' f c' c f, b e, a d, g c,
  \bar "||"
  c a' f d b' g e c' c e, g b d, f a c,
  \bar "||"
  c b' a g f e d c c d e f g a b c
  \bar "|."
}

scoreATenor = \relative c' {
  \globalA
  % Music follows here.
  g b c c e f f g
  g, b c a8 c b4 a g e
  \bar "||"
  g b c c e f f g
  g g f e c c b g
  g c d g b, c f g
  g f c b g' e c g
  g c g' c, f b, d g
  g d b f' c g' c, g
  g d b' f' c g' c, g'
  g c, g' c, f b, d g,
  g f' c b g' d c g'
  g c, d g b, c f g,
  g g' f e c c b g
  g b c c e f f g
  %%%%%%%%%%%%%%%%%
  c,,4 d e f g a b c c b a g f e d c
  \bar "||"
  c e g b d, f a c c a f d b' g e c
  \bar "||"
  c f b e, a d, g c c g d a' e b' f c
  \bar "||"
  c g' d a' e b' f c' c f, b e, a d, g c,
  \bar "||"
  c a' f d b' g e c' c e, g b d, f a c,
  \bar "||"
  c b' a g f e d c c d e f g a b c
  \bar "|."
  %%%%%%%%%%%%%%%%%%%%%
    % Sekundintervall
  % Grundstellung bevorzugte Harmonisierung
  g b g a g f d' c c d f, g a g b g \bar "||"
  % Grundstellung
  c a g f d c b g' g b c d f g a c
  % Sextakkord
  a, b c d e f g a a g f e d c b a
  % Quartsextakkord
  f d a' f c' a e' c c e a, c f, a d, f
  % Terzintervall
  % Grundstellung
  c' b b b a a a g g a a a b b b c
  % Sextakkord
  a' g e d b a f e e f a b d e g a
  % Quartsextakkord
  f e e e d d d c c d d d e e e f
  % Quartintervall
  % Grundstellung
  c c d e e f g g g g f e e d c c
  % Sextakkord
  e a, d g, c f, b e, e b' f c' g d' a e'
  % Quartsextakkord
  f f e e d d c c c c d d e e f f
  % Qutintintervall
  % Grundstellung
  c b a a g g a g g a g g a a b c
  % Sextakkord
  a e' b f' c g' d a' a d, g c, f b, e a,
  % Quartsextakkord
  f e d f  e g f a a f g e f d e f
  % Sextintervall
  % Grundstellung
  c c c d d d e e e e d d d c c c
  % Sextakkord
  a' f a b g b c a a c b g b a f a
  % Quartsextakkord
  c, d d d e e e f f e e e d d d c
  % Septimintervall
  % Grundstellung
  c d e g a b d e e d b a g e d c
  % Sextakkord
  a' g f e d' c b a a b c d e, f g a
  % Quartsextakkord
  f g a c d e g a a g e d c a g f
  %%%%%%%%%%%%%%%%%
    e, g g a c c d e
  e d c c a g g e
  e g b d g, a c e
  e c a g d' c g e
  e a d g, c g b e
  e b g c g d' a e
  e b' g c g d' a e'
  e a, d g, c g b e,
  e c' a g d' b g e'
  e g, b d g, a c e,
  e d' c c a g g e
  e g g a c c d e
}

scoreABass = \relative c {
  \globalA
  % Music follows here.
  c g c f c f d c
  c, d e f8 f g4 a b c
  \bar "||"
  c g c f c f d c
  c g f' c f c g c
  c c g g g f' f c
  c f f g, g c c c c f g, c f g, g c c g g f' c g f' c
  c g g f' c g f c' c f g, c f g, g c
  c f f g, g g c c c c g g g f' f c c g f' c f c g c c g c f c f d c
  %%%%%%%%%%%%%%%%%%%%%
  c, g' c f c f d c
  c g f' c f c g c
  c c g g g f' f c
  c f f g, g c c c c f g, c f g, g c c g g f' c g f' c
  c g g f' c g f c' c f g, c f g, g c
  c f f g, g g c c c c g g g f' f c c g f' c f c g c c g c f c f d c
  %%%%%%%%%%%%%%%%%%%%%%%
    % Sekundintervall
  % Grundstellung bevorzugte Harmonisierung
  c,4 d e f g a b c c b a g f e d c \bar "||"
  % Grundstellung
  c4 d e f g a b c c b a g f e d c \bar "||"
  % Sextakkord
  c4 d e f g a b c c b a g f e d c
  \bar "||"
  % Quartsextakkord
  c4 d e f g a b c c b a g f e d c
  \bar "||"
  % Terzintervall
  % Grundstellung
  c e g b d, f a c c a f d b' g e c
  \bar "||"
  % Sextakkord
  c e g b d, f a c c a f d b' g e c
  \bar "||"
  % Quartsextakkord
  c e g b d, f a c c a f d b' g e c
  \bar "||"
  % Quartintervall
  % Grundstellung
  c f b e, a d, g c c g d a' e b' f c
  \bar "||"
  % Sextakkord
  c f b e, a d, g c c g d a' e b' f c
  \bar "||"
  % Quartsextakkord
  c f b e, a d, g c c g d a' e b' f c
  \bar "||"
  % Quintintervall
  % Grundstellung
  c g' d a' e b' f c' c f, b e, a d, g c,
  \bar "||"
  % Sextakkord
  c g' d a' e b' f c' c f, b e, a d, g c,
  \bar "||"
  % Quartsextakkord
  c g' d a' e b' f c' c f, b e, a d, g c,
  \bar "||"
  % Sextintervall
  % Grundstellung
  c a' f d b' g e c' c e, g b d, f a c,
  \bar "||"
  % Sextakkord
  c a' f d b' g e c' c e, g b d, f a c,
  \bar "||"
  % Quartsextakkord
  c a' f d b' g e c' c e, g b d, f a c,
  \bar "||"
  % Septimintervall
  % Grundstellung
  c b' a g f' e, d' c, c d' e, f' g, a b c,
  \bar "|."
  % Sextakkord
  c b' a g f' e, d' c, c d' e, f' g, a b c,
  \bar "|."
  % Quartsextakkord
  c b' a g f' e, d' c, c d' e, f' g, a b c,
  \bar "|."
  %%%%%%%%%%%%%%%%%%%%
    c g c f c f d c
  c g f' c f c g c
  c c g g g f' f c
  c f f g, g c c c c f g, c f g, g c c g g f' c g f' c
  c g g f' c g f c' c f g, c f g, g c
  c f f g, g g c c c c g g g f' f c c g f' c f c g c c g c f c f d c
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  do re mi fa sol la si do | do re mi fa sol la si do
  do re mi fa sol la si do | do si la sol fa mi re do
  do mi sol si re fa la do | do la fa re si sol mi do
  do fa si mi la re sol do | do sol re la mi si fa do
  do sol re la mi si fa do | do fa si mi la re sol do
  do la fa re si sol mi do | do mi sol si re fa la do
  do si la sol fa mi re do | do re mi fa sol la si do
  %%%%%%%%%%%%%
    do re mi fa sol la si do | do si la sol fa mi re do
  do mi sol si re fa la do | do la fa re si sol mi do
  do fa si mi la re sol do | do sol re la mi si fa do
  do sol re la mi si fa do | do fa si mi la re sol do
  do la fa re si sol mi do | do mi sol si re fa la do
  do si la sol fa mi re do | do re mi fa sol la si do
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Sekundintervall
  % Grundstellung
  do re mi fa sol la si do | do si la sol fa mi re do
  % Sextakkord
  do re mi fa sol la si do | do si la sol fa mi re do
  % Quartsextakkord
  do re mi fa sol la si do | do si la sol fa mi re do
  % Terzintervall
  % Grundstellung
  do mi sol si re fa la do | do la fa re si sol mi do
  % Sextakkord
  do mi sol si re fa la do | do la fa re si sol mi do
  % Quartsextakkord
  do mi sol si re fa la do | do la fa re si sol mi do
  % Quartintervall
  % Grundstellung
  do fa si mi la re sol do | do sol re la mi si fa do
  % Sextintervall
  do fa si mi la re sol do | do sol re la mi si fa do
  % Quartsextakkord
  do fa si mi la re sol do | do sol re la mi si fa do
  % Quintintervall
  % Grundstellung
  do sol re la mi si fa do | do fa si mi la re sol do
  % Sextintervall
  do sol re la mi si fa do | do fa si mi la re sol do
  % Quartsextakkord
  do sol re la mi si fa do | do fa si mi la re sol do
  % Sextintervall
  % Grundstellung
  do la fa re si sol mi do | do mi sol si re fa la do
  % Sextintervall
  do la fa re si sol mi do | do mi sol si re fa la do
  % Quartsextakkord
  do la fa re si sol mi do | do mi sol si re fa la do
  % Septimintervall
  % Grundstellung
  do si la sol fa mi re do | do re mi fa sol la si do
  % Sextintervall
  do si la sol fa mi re do | do re mi fa sol la si do
  % Quartsextakkord
  do si la sol fa mi re do | do re mi fa sol la si do
  %%%%%%%%%%%%%%%%%%%%%%
    do re mi fa sol la si do | do si la sol fa mi re do
  do mi sol si re fa la do | do la fa re si sol mi do
  do fa si mi la re sol do | do sol re la mi si fa do
  do sol re la mi si fa do | do fa si mi la re sol do
  do la fa re si sol mi do | do mi sol si re fa la do
  do si la sol fa mi re do | do re mi fa sol la si do
}

scoreAChordNames = \chordmode {
  \globalA
  % Chords follow here.
  \germanChords
  c g c f c f b:dim/d c
  \bar "||"
  c b:dim/d c/e f8 d:min7/f g4 a:min g/b c
  \bar "||"
  c g c f c f b:dim/d c
  c g f c f c g c
  c c g g g f f c
  c f f g g c c c
  c f g c f g g c c g g f c g f c
  c g g f c g f c c f g c f g g c
  c f f g g g c c c c g g g f f c
  c g f c f c g c c g c f c f b:dim/d c
  %%%%%%%%%%%%%%%%%%%
    c g c f c f b:dim/d c
  c g f c f c g c
  c c g g g f f c
  c f f g g c c c
  c f g c f g g c c g g f c g f c
  c g g f c g f c c f g c f g g c
  c f f g g g c c c c g g g f f c
  c g f c f c g c c g c f c f b:dim/d c
  %%%%%%%%%%%%%%%%%%%%%%%%
    % Sekundintervall
  % Grundstellung
  c d:m e:m f g a:m b:dim c c b:dim a:m g f e:m d:m c
  % Grundstellung bevorzugte Harmonisierung
  c b:min/d c/e f g f/a g/b c c g/b f/a g f c/e b:min/d c \bar "||"
  % Sextakkord
  a:m/c b:dim/d c/e d:m/f e:m/g f/a g/b c c g/b f/a e:m/g d:m/f c/e b:dim/d a:m/c
  % Quartsextakkord
  f/c g/d a:m/e b:dim/f c/g d:m/a e:m/b f/c f/c e:m/b d:m/a c/g b:dim/f a:m/e g/d f/c
  % Terzintervall
  % Grundstellung
  c e:m g b:dim d:m f a:m c c a:m f d b:dim g e:m c
  % Sextakkord
  a:m/c c/e e:m/g g/b b:dim/d d:m/f f/a a:m/c a:m/c f/a d:m/f b:dim/d g/b e:m/g c/e a:m/c
  % Quartsextakkord
  f/c a:m/e c/g e:m/b g/d b:dim/f d:m/a f/c f/c d:m/a b:dim/f g/d e:dim/b c/g a:m/e f/c
  % Quartintervall
  % Grundstellung
  c f b:dim e:m a:m d:m g c c g d:m a:m e:m b:dim f c
  % Sextakkord
  a:m/c d:m/f g/b c/e f/a b:dim/d e:m/g a:m/c a:m/c e:m/g b:dim/d f/a c/e g/b d:m/f a:m/c
  % Quartsextakkord
  f/c b:dim/f e:m/b a:m/e d:m/a g/d c/g f/c f/c c/g g/d d:m/a a:m/e e:m/b b:dim/f f/c
  % Quintintervall
  % Grundstellung
  c g d a e b f c c f b e a d g c
  % Sextakkord
  a:m/c e:m/g b:dim/d f/a c/e g/b d:m/f a:m/c a:m/c d:m/f g/b c/e f/a b:dim/d e:m/g a:m/c
  % Quartsextakkord
  f/c c/g g/d d:m/a a:m/e e:m/b b:dim/f f/c f/c b:dim/f e:m/b a:m/e d:m/a g/d c/g f/c
  % Sextintervall
  % Grundstellung
  c a:m f d:m b:dim g e:m c c e:m g b:dim d:m f a:m c
  % Sextakkord
  a:m/c f/a d:m/f b:dim/d g/b e:m/g c/e a:m/c a:m/c c/e e:m/g g/b b:dim/d d:m/f f:/a a:m/c
  % Quartsextakkord
  f/c d:m/a b:dim/f g/d e:m/b c/g a:m/e f/c f/c a:m/e c/g e:m/b g/d b:dim/f d:m/a f/c
  % Septimintervall
  % Grundstellung
  c b:dim a:m g f e:m d:m c c d:m e:m f g a:m b:dim c
  % Sextakkord
  a:m/c g/b f/a e:m/g d:m/f c/e b:dim/d a:m/c a:m/c b:dim/d c/e d:m/f e:m/g f/a g/b a:m/c
  % Quartsextakkord
  f/c e:m/b d:m/a c/g b:dim/f a:m/e g/d f/c f/c g/d a:m/e b:dim/f c/g d:m/a e:m/b f/c
  %%%%%%%%%%%%%%%%%%%%%%%%
    c g c f c f b:dim/d c
  c g f c f c g c
  c c g g g f f c
  c f f g g c c c
  c f g c f g g c c g g f c g f c
  c g g f c g f c c f g c f g g c
  c f f g g g c c c c g g g f f c
  c g f c f c g c c g c f c f b:dim/d c
}

scoreAFigBass = \figuremode {
  \globalA
  % Figures follow here.

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
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreAAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
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
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreABass }
  >>
>>

scoreAChordsPart = \new ChordNames \scoreAChordNames

scoreABassFiguresPart = \new FiguredBass \scoreAFigBass

\bookpart {
  \header {
      subtitle = "C-Dur"
  }
  \score {
    <<
      \scoreAChoirPart
      \scoreAChordsPart
      \scoreABassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% a-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalB = {
  \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
}

scoreBSoprano = \relative c''' {
  \globalB
  % Music follows here.
  a,4^"8"^"Cantus firmus im Sopran, Sekunde" b c d e f gs a a g f e d c b a
  \bar "||"
  a^"8"^"Terz" c e g b, d f a a f d b g' e c a
  \bar "||"
  a^"8"^"Quarte" d g c, f b, e a a e b f' c gs' d a
  \bar "||"
  a^"8"^"Quinte" e' b f' c gs' d a' a d, gs c, f b, e a,
  \bar "||"
  a^"8"^"Sexte" f' d b gs' e c a' a c, e gs b, d f a,
  \bar "||"
  a^"Septime" gs' f e d c b a a b c d e f gs a
  \bar "|."
  c,^"3"^"CF im Tenor, Sekunde" e e f a a b c c b a a f e e c
  c^"3"^"Terz" e gs b e, f a c c a f e b' a e c
  c^"3"^"Quarte" f b e, a e gs c c gs e a e b' f c
  c^"3"^"Quinte" gs' e a e b' f c' c f, b e, a e gs c,
  c^"3"^"Sexte" a' f e b' gs e c' c e, gs b e, f a c,
  c^"3"^"Septime" b' a a f e e c c e e f a a b c
  \bar "|."
  %%%%%%%%%%
    % Sekundintervall
  % Grundstellung, Harmonisierung
  c,^""^"CF im Bass, Grundstellung" b a a c c e e e e c c a a b c
  % Grundstellung
  c'^""^"CF im Bass, Sekunde" b gs f e c b a a b c e f gs b c
  % Sextakkord
  f,^""^"Sextakkord Sekunde" d a' f c' a e' c c e a, c f, a d, f
  % Quartsextakkord
  d^""^"Quartsextakkord Sekunde" e f gs a b c d d c b a gs f e d
  % Terzintervall
  % Grundstellung
  c'^""^"Grundstellung Terz" c b b b a a a a a a b b b c c
  % Sextakkord
  f^""^"Sextakkord Terz" a, c e, gs b, d f, f d' b gs' e c' a f
  % Quartsextakkord
  f^""^"Quartsextakkord Terz" f e e e d d d d d d e e e f f
  % Quartintervall
  % Grundstellung
  c^""^"Grundstellung Quarte" d d e f f gs a a gs f f e d d c
  % Sextakkord
  f,^""^"Sextakkord Quarte" f e e d d c c c c d d e e f f
  f'^""^"Quartsextakkord Quarte" gs e f d e c d d c e d f e gs f
  % Quintintervall
  % Grundstellung
  c^""^"Grundstellung Quinte" b b a gs gs a a a a gs gs a b b c
  % Sextakkord
  f,^"Sextakkord Quinte" gs gs a a b b c c b b a a gs gs f
  f^"Quartsextakkord Quinte" e e f f gs gs a a gs gs f f e e f
  % Sextintervall
  % Grundstellung
  c^"Grundstellung Sexte" c d d d e e e e e e d d d c c
  % Sextakkord
  f^"Sextakkord Sexte" d b d e c a' c, c a' c, e d b d c
  d^"Quartsextakkord Sexte" d d e e e f f f f e e e d d d
  % Septimintervall
  % Grundstellung
  c^"Grundstellung Septime" d f gs a c d e e d c a gs f d c
  % Sextakkord
  f^"Sextakkord Septime" b, d gs, b' e, gs c, c gs' e b' gs, d' b f'
  f^"Quartsextakkord Septime" gs b c d f gs a a gs f d c b gs f
  \bar "|."
  %%%%%%%%%%%%%%%%
    e^"5"^"CF im Alt, Sekunde" gs a a c d d e e e d c a a gs e
  e^"5"^"Terz" a b e gs, a d e e d a gs e' c a e
  e^"5"^"Quarte" a e' a, d gs, b e e b gs d' a e' a, e
  e^"5"^"Quinte" b gs' d' a e' a, e' e a, e' a, d gs, b e,
  e^"5"^"Sexte" d' a gs e' b a e' e a, b e gs, a d e,
  e^"5"^"Septime" e' d c a a gs e e gs a a c d d e
}

scoreBAlto = \relative c'' {
  \globalB
  % Music follows here.
  c, e e f a a b c
  c b a a f e e c
  c e gs b e, f a c
  c a f e b' a e c
  c f b e, a e gs c
  c gs e a e b' f c
  c gs' e a e b' f c'
  c f, b e, a e gs c,
  c a' f e b' gs e c'
  c e, gs b e, f a c,
  c b' a a f e e c
  c e e f a a b c
  %%%%%%
  e, gs a a c d d e
  e e d c a a gs e
  e a b e gs, a d e
  e d a gs e' c a e
  e a e' a, d gs, b e
  e b gs d' a e' a, e
  e b gs' d' a e' a, e'
  e a, e' a, d gs, b e,
  e d' a gs e' b a e'
  e a, b e gs, a d e,
  e e' d c a a gs e
  e gs a a c d d e
  %%%%%%%%%%%%%%%%
    % Sekundintervall
  % Grundstellung, Harmonisierung
  e, d e d g f b a a b f g d e d e
  % Grundstellung
  e' d c a gs f d c c d f gs a c d e
  % Sextakkord
  c, d e f gs a b c c b a gs f e d c
  % Quartsextakkord
  f, gs a b c d e f f e d c b a gs f
  % Terzintervall
  % Grundstellung
  e' e e d d d c c c c d d e e e e
  % Sextakkord
  c' a gs e d b a f f a b d e gs a c
  % Quartsextakkord
  a a a gs gs gs f f f f gs gs gs a a a
  % Quartintervall
  % Grundstellung
  e f gs gs a b b c c b b a gs gs f e
  % Sextakkord
  c b b a a gs gs f f gs gs a a b b c
  % Quartsextakkord
  a' b gs a f gs e f f e gs f a gs b a
  % Quintintervall
  % Grundstellung
  e e d c c d d c c d d c c d e e
  % Sextakkord
  c c d d e e f f f f e e d d c c
  % Quartsextakkord
  a a gs b a c b d d d c c b b a a
  % Sextintervall
  % Grundstellung
  e f f f gs gs gs a a gs gs gs f f f e
  % Sextakkord
  c' a b gs b c e c c e c b gs b a c
  % Quartsextakkord
  f, f gs gs gs a a a a a a gs gs gs f f
  % Septimintervall
  % Grundstellung
  e gs a b d e f a a f e d b a gs e
  % Sextakkord
  c' b a gs f' e d c c d e f gs, a b c
  % Quartsextakkord
  a c d e gs a b d d b a gs e d c a
  %%%%%%%%%%5
    a4 b c d e f gs a a gs f e d c b a
  \bar "||"
  a c e gs b, d f a a f d b gs' e c a
  \bar "||"
  a d gs c, f b, e a a e b f' c gs' d a
  \bar "||"
  a e' b f' c gs' d a' a d, gs c, f b, e a,
  \bar "||"
  a f' d b gs' e c a' a c, e gs b, d f a,
  \bar "||"
  a gs' f e d c b a a b c d e f gs a
  \bar "|."
}

scoreBTenor = \relative c' {
  \globalB
  % Music follows here.
  e, g a a c d d e
  e e d c a a gs e
  e a b e gs, a d e
  e d a gs e' c a e
  e a e' a, d gs, b e
  e b gs d' a e' a, e
  e b gs' d' a e' a, e'
  e a, e' a, d gs, b e,
  e d' a gs e' b a e'
  e a, b e gs, a d e,
  e e' d c a a gs e
  e gs a a c d d e
  %%%%%%%%%%%%%%%%%
    a,4 b c d e f gs a a gs f e d c b a
  \bar "||"
  a c e gs b, d f a a f d b gs' e c a
  \bar "||"
  a d gs c, f b, e a a e b f' c gs' d a
  \bar "||"
  a e' b f' c gs' d a' a d, gs c, f b, e a,
  \bar "||"
  a f' d b gs' e c a' a c, e gs b, d f a,
  \bar "||"
  a gs' f e d c b a a b c d e f gs a
  \bar "|."
  %%%%%%%%%%%%%%%%%%%%%
    % Sekundintervall
  % Grundstellung, Grundharmonisierung
  a, gs a f c' a e' c c e a, c f, a gs a
  % Grundstellung
  a' f e d b a gs e e gs a b d e f a
  % Sextakkord
  f, gs a b c d e f f e d c b a gs f
  % Quartsextakkord
  d b f' d a' f c' a a c f, a d, f b, d
  % Terzintervall
  % Grundstellung
  a' gs gs gs f f f e e f f f gs gs gs a
  % Sextakkord
  f' e c b gs f d c c d f gs b c e f
  % Quartsextakkord
  d c c c b b b a a b b b c c c d
  % Quartintervall
  % Grundstellung
  a a b c c d e e e e d c c b a a
  % Sextakkord
  c f, b e, a d, gs c, c gs' d a' e b' f c'
  % Quartsextakkord
  d d c c b b a a a a b b c c d d
  % Qutintintervall
  % Grundstellung
  a gs f f e e f e e f e e f f gs a
  % Sextakkord
  f c' gs d' a e' b f' f b, e a, d gs, c f,
  % Quartsextakkord
  d c b d  c e d f f d e c d b c d
  % Sextintervall
  % Grundstellung
  a a a b b b c c c c b b b a a a
  % Sextakkord
  f' d f gs e gs a f f a gs e gs f d f
  % Quartsextakkord
  a, b b b c c c d d c c c b b b a
  % Septimintervall
  % Grundstellung
  a b c e f gs b c c b gs f e c b a
  % Sextakkord
  f' e d c b' a gs f f gs a b c, d e f
  % Quartsextakkord
  d e f a b c e f f e c b a f e d
  %%%%%%%%%%%%%%%%%
  c e e f a a b c
  c b a a f e e c
  c e gs b e, f a c
  c a f e b' a e c
  c f b e, a e gs c
  c gs e a e b' f c
  c gs' e a e b' f c'
  c f, b e, a e gs c,
  c a' f e b' gs e c'
  c e, gs b e, f a c,
  c b' a a f e e c
  c e e f a a b c
}

scoreBBass = \relative c' {
  \globalB
  % Music follows here.
  a, e a d, a' d, b' a
  a e d a' d, a' e a
  a a e e e d d a'
  a d, d e e a a a a d, e a d, e e a a e e d a' e d a'
  a e e d a' e d a' a d, e a d, e e a
  a d, d e e e a a a a e e e d d a' a e d a' d, a' e a a e a d, a' d, b' a
  %%%%%%%%%%%%%%%%%%%%%
    a e a d, a' d, b' a
  a e d a' d, a' e a
  a a e e e d d a'
  a d, d e e a a a a d, e a d, e e a a e e d a' e d a'
  a e e d a' e d a' a d, e a d, e e a
  a d, d e e e a a a a e e e d d a' a e d a' d, a' e a a e a d, a' d, b' a
  %%%%%%%%%%%%%%%%%%%%%%%
    % Sekundintervall
  % Grundstellung, Harmonisierung
  a4 b c d, e f g8 gs a4 a g f e d c' b a
  \bar "||"
  % Grundstellung
  a4 b c d, e f gs a a gs f e d c b' a
  \bar "||"
  %
  % Sextakkord
  a4 b c d, e f gs a a gs f e d c b' a
  \bar "||"
  % Quartsextakkord
  a4 b c d, e f gs a a gs f e d c b' a
  \bar "||"
  % Terzintervall
  % Grundstellung
  a c e, gs b d, f a a f d b' gs e c a'
  \bar "||"
  % Sextakkord
  a c e, gs b d, f a a f d b' gs e c a'
  \bar "||"
  % Quartsextakkord
  a c, e gs b d, f a a f d b' gs e c a'
  \bar "||"
  % Quartintervall
  % Grundstellung
  a d, gs c, f b e, a a e b' f c gs' d a'
  \bar "||"
  % Sextakkord
  a d, gs c, f b e, a a e b' f c gs' d a'
  \bar "||"
  % Quartsextakkord
  a d, gs c, f b e, a a e b' f c gs' d a'
  \bar "||"
  % Quintintervall
  % Grundstellung
  a e b' f c gs' d a' a d, gs c, f b e, a
  \bar "||"
  % Sextakkord
  a e b' f c gs' d a' a d, gs c, f b e, a
  \bar "||"
  % Quartsextakkord
  a e b' f c gs' d a' a d, gs c, f b e, a
  \bar "||"
  % Sextintervall
  % Grundstellung
  a f d b' gs e c a' a c e, gs b d, f a
  \bar "||"
  % Sextakkord
  a f d b' gs e c a' a c, e gs b d, f a
  \bar "||"
  % Quartsextakkord
  a f d b' gs e c a' a c, e gs b d, f a
  \bar "||"
  % Septimintervall
  % Grundstellung
  a gs f e d c b' a a b c, d e f gs a
  \bar "|."
  % Sextakkord
  a gs f e d c b' a a b c, d e f gs a
  \bar "|."
  % Quartsextakkord
  a gs f e d c b' a a b c, d e f gs a
  \bar "|."
  %%%%%%%%%%%%%%%%%%%%
    a e a d, a' d, b' a
  a e d a' d, a' e a
  a a e e e d d a'
  a d, d e e a a a a d, e a d, e e a a e e d a' e d a'
  a e e d a' e d a' a d, e a d, e e a
  a d, d e e e a a a a e e e d d a' a e d a' d, a' e a a e a d, a' d, b' a
}

scoreBVerse = \lyricmode {
  % Lyric follow here.
  do re mi fa sol la si do | do si la sol fa mi re do
  do mi sol si re fa la do | do la fa re si sol mi do
  do fa si mi la re sol do | do sol re la mi si fa do
  do sol re la mi si fa do | do fa si mi la re sol do
  do la fa re si sol mi do | do mi sol si re fa la do
  do si la sol fa mi re do | do re mi fa sol la si do
  %%%%%%%%%%%%%
    do re mi fa sol la si do | do si la sol fa mi re do
  do mi sol si re fa la do | do la fa re si sol mi do
  do fa si mi la re sol do | do sol re la mi si fa do
  do sol re la mi si fa do | do fa si mi la re sol do
  do la fa re si sol mi do | do mi sol si re fa la do
  do si la sol fa mi re do | do re mi fa sol la si do
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Sekundintervall
  % Grundstellung
  do re mi fa sol la si do | do si la sol fa mi re do
  % Sextakkord
  do re mi fa sol la si do | do si la sol fa mi re do
  % Quartsextakkord
  do re mi fa sol la si do | do si la sol fa mi re do
  % Terzintervall
  % Grundstellung
  do mi sol si re fa la do | do la fa re si sol mi do
  % Sextakkord
  do mi sol si re fa la do | do la fa re si sol mi do
  % Quartsextakkord
  do mi sol si re fa la do | do la fa re si sol mi do
  % Quartintervall
  % Grundstellung
  do fa si mi la re sol do | do sol re la mi si fa do
  % Sextintervall
  do fa si mi la re sol do | do sol re la mi si fa do
  % Quartsextakkord
  do fa si mi la re sol do | do sol re la mi si fa do
  % Quintintervall
  % Grundstellung
  do sol re la mi si fa do | do fa si mi la re sol do
  % Sextintervall
  do sol re la mi si fa do | do fa si mi la re sol do
  % Quartsextakkord
  do sol re la mi si fa do | do fa si mi la re sol do
  % Sextintervall
  % Grundstellung
  do la fa re si sol mi do | do mi sol si re fa la do
  % Sextintervall
  do la fa re si sol mi do | do mi sol si re fa la do
  % Quartsextakkord
  do la fa re si sol mi do | do mi sol si re fa la do
  % Septimintervall
  % Grundstellung
  do si la sol fa mi re do | do re mi fa sol la si do
  % Sextintervall
  do si la sol fa mi re do | do re mi fa sol la si do
  % Quartsextakkord
  do si la sol fa mi re do | do re mi fa sol la si do
  %%%%%%%%%%%%%%%%%%%%%%
    do re mi fa sol la si do | do si la sol fa mi re do
  do mi sol si re fa la do | do la fa re si sol mi do
  do fa si mi la re sol do | do sol re la mi si fa do
  do sol re la mi si fa do | do fa si mi la re sol do
  do la fa re si sol mi do | do mi sol si re fa la do
  do si la sol fa mi re do | do re mi fa sol la si do
}

scoreBChordNames = \chordmode {
  \globalB
  \germanChords
  % Chords follow here.
  a:min e:min a:min d:min a:min d:min gs:dim/b a
  a:min e:min d:min a:min d:min a:min e:min a:min
  a:min a:min e:min e:min e:min d:min d:min a:min
  a:min d:min d:min e:min e:min a:min a:min a:min
  a:min d:min e:min a:min d:min e:min e:min a:min a:min e:min e:min d:min a:min e:min d:min a:min
  a:min e:min e:min d:min a:min e:min d:min a:min a:min d:min e:min a:min d:min e:min e:min a:min
  a:min d:min d:min e:min e:min e:min a:min a:min a:min a:min e:min e:min e:min d:min d:min a:min
  a:min e:min d:min a:min d:min a:min e:min a:min a:min e:min a:min d:min a:min d:min gs:dim/b a:min
  %%%%%%%%%%%%%%%%%%%
    a:min e:min a:min d:min a:min d:min gs:dim/b a
  a:min e:min d:min a:min d:min a:min e:min a:min
  a:min a:min e:min e:min e:min d:min d:min a:min
  a:min d:min d:min e:min e:min a:min a:min a:min
  a:min d:min e:min a:min d:min e:min e:min a:min a:min e:min e:min d:min a:min e:min d:min a:min
  a:min e:min e:min d:min a:min e:min d:min a:min a:min d:min e:min a:min d:min e:min e:min a:min
  a:min d:min d:min e:min e:min e:min a:min a:min a:min a:min e:min e:min e:min d:min d:min a:min
  a:min e:min d:min a:min d:min a:min e:min a:min a:min e:min a:min d:min a:min d:min gs:dim/b a:min
  %%%%%%%%%%%%%%%%%%%%%%%%
    % Sekundintervall
  % Grundstellung, Grundharmonisierung
  a:min gs:dim/b a:m/c d:m c/e f e8:m/g e/g a4:m a:m e:m/g f c/e d:m a:m/c gs:dim/b a:m
  % Grundstellung
  a:min b:m c:m d:min e:min f:m gs:dim a:min a:min gs:dim f:m e:min d:min c:m b:m a:min
  % Sextakkord
  f:m/a gs:dim/b a/c b:m/d c:m/e d/f e/gs a:min a:min e/gs d/f c:m/e b:m/d a/c gs:dim/b f:m/a
  % Quartsextakkord
  d/a e/b f:m/c gs:dim/d a/e b:m/f c:m/gs d/a d/a c:m/gs b:m/f a/e gs:dim/d f:m/c e/b d/a
  % Terzintervall
  % Grundstellung
  a:min c:m e:min gs:dim b:m d:min f:m a:min a:min f:m d:min b gs:dim e:min c:m a
  % Sextakkord
  f:m/a a/c c:m/e e/gs gs:dim/b b:m/d d/f f:m/a f:m/a d/f b:m/d gs:dim/b e/gs c:m/e a/c f:m/a
  % Quartsextakkord
  d/a f:m/c a/e c:m/gs e/b gs:dim/d b:m/f d/a d/a b:m/f gs:dim/d e/b c:dim/gs a/e f:m/c d/a
  % Quartintervall
  % Grundstellung
  a:min d:min gs:dim c:m f:m b:m e:min a:min a:min e:min b:m f:m c:m gs:dim d:min a
  % Sextakkord
  f:m/a b:m/d e/gs a/c d/f gs:dim/b c:m/e f:m/a f:m/a c:m/e gs:dim/b d/f a/c e/gs b:m/d f:m/a
  % Quartsextakkord
  d/a gs:dim/d c:m/gs f:m/c b:m/f e/b a/e d/a d/a a/e e/b b:m/f f:m/c c:m/gs gs:dim/d d/a
  % Quintintervall
  % Grundstellung
  a:min e:min b f c gs d:min a:min a d:min gs c f b e:min a
  % Sextakkord
  f:m/a c:m/e gs:dim/b d/f a/c e/gs b:m/d f:m/a f:m/a b:m/d e/gs a/c d/f gs:dim/b c:m/e f:m/a
  % Quartsextakkord
  d/a a/e e/b b:m/f f:m/c c:m/gs gs:dim/d d/a d/a gs:dim/d c:m/gs f:m/c b:m/f e/b a/e d/a
  % Sextintervall
  % Grundstellung
  a:min f:m d:min b:m gs:dim e:min c:m a:min a:min c:m e:min gs:dim b:m d:min f:m a:min
  % Sextakkord
  f:m/a d/f b:m/d gs:dim/b e/gs c:m/e a/c f:m/a f:m/a a/c c:m/e e/gs gs:dim/b b:m/d d:/f f:m/a
  % Quartsextakkord
  d/a b:m/f gs:dim/d e/b c:m/gs a/e f:m/c d/a d/a f:m/c a/e c:m/gs e/b gs:dim/d b:m/f d/a
  % Septimintervall
  % Grundstellung
  a:min gs:dim f:m e:min d:min c:m b:m a:min a:min b:m c:m d:min e:min f:m gs:dim a:min
  % Sextakkord
  f:m/a e/gs d/f c:m/e b:m/d a/c gs:dim/b f:m/a f:m/a gs:dim/b a/c b:m/d c:m/e d/f e/gs f:m/a
  % Quartsextakkord
  d/a c:m/gs b:m/f a/e gs:dim/d f:m/c e/b d/a d/a e/b f:m/c gs:dim/d a/e b:m/f c:m/gs d/a
  %%%%%%%%%%%%%%%%%%%%%%%%
    a:min e:min a:min d:min a:min d:min gs:dim/b a
  a:min e:min d:min a:min d:min a:min e:min a
  a:min a:min e:min e:min e:min d:min d:min a:min
  a:min d:min d:min e:min e:min a:min a:min a:min
  a:min d:min e:min a:min d:min e:min e:min a:min a:min e:min e:min d:min a:min e:min d:min a:min
  a:min e:min e:min d:min a:min e:min d:min a:min a:min d:min e:min a:min d:min e:min e:min a
  a:min d:min d:min e:min e:min e:min a:min a:min a:min a:min e:min e:min e:min d:min d:min a:min
  a:min e:min d:min a:min d:min a:min e:min a:min a:min e:min a:min d:min a:min d:min gs:dim/b a:min
}

scoreBFigBass = \figuremode {
  \globalB
  % Figures follow here.

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
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreBAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
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
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreBBass }
  >>
>>

scoreBChordsPart = \new ChordNames \scoreBChordNames

scoreBBassFiguresPart = \new FiguredBass \scoreBFigBass

\bookpart {
  \header {
    subtitle = "a-Moll"
  }
  \score {
    <<
      \scoreBChoirPart
      \scoreBChordsPart
      \scoreBBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}




% %%%%%%%%%%%%%55
% scoreAChoirPart = \new ChoirStaff <<
%   \new Staff \with {
%     midiInstrument = "choir aahs"
%     instrumentName = \markup \center-column { "Soprano" "Alto" }
%     shortInstrumentName = \markup \center-column { "S." "A." }
%   } <<
%     \new Voice = "soprano" \with {
%       \consists "Ambitus_engraver"
%     } { \voiceOne \scoreASoprano }
%     \new Voice = "alto" \with {
%       \consists "Ambitus_engraver"
%       \override Ambitus.X-offset = #2.0
%     } { \voiceTwo \scoreAAlto }
%   >>
%   \new Lyrics \with {
%     \override VerticalAxisGroup.staff-affinity = #CENTER
%   } \lyricsto "soprano" \scoreAVerse
%   \new Staff \with {
%     midiInstrument = "choir aahs"
%     instrumentName = \markup \center-column { "Tenor" "Bass" }
%     shortInstrumentName = \markup \center-column { "T." "B." }
%   } <<
%     \clef bass
%     \new Voice = "tenor" \with {
%       \consists "Ambitus_engraver"
%     } { \voiceOne \scoreATenor }
%     \new Voice = "bass" \with {
%       \consists "Ambitus_engraver"
%       \override Ambitus.X-offset = #2.0
%     } { \voiceTwo \scoreABass }
%   >>
% >>
%
% scoreAChordsPart = <<
%   \new ChordNames \scoreAChordNames
% %  \scoreAChordNames
% %  \new FretBoards \scoreAChordNames
% >>
%
% scoreABassFiguresPart = \new FiguredBass \with {
%   useBassFigureExtenders = ##t
% } \scoreAFigBass
%
% \bookpart {
%   \score {
%     <<
%       \scoreAChoirPart
%       \scoreAChordsPart
%       \scoreABassFiguresPart
%     >>
%     \layout { }
%     \midi { }
%   }
% }
