\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "Harmonisierung Tonleiter in Intervallen"
  subsubtitle = "Weite Lage, soweit möglich"
  instrument = "Orgel"
  composer = "M: Natur"
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: Solmization"
  meter = ""
  piece = ""
  opus = ""
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

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
  c4^"Cantus firmus im Sopran, Sekunde" d e f g a b c c b a g f e d c
  \bar "||"
  c^"Terz" e g b d, f a c c a f d b' g e c
  \bar "||"
  c^"Quarte" f b e, a d, g c c g d a' e b' f c
  \bar "||"
  c^"Quinte" g' d a' e b' f c' c f, b e, a d, g c,
  \bar "||"
  c^"Sexte" a' f d b' g e c' c e, g b d, f a c,
  \bar "||"
  c^"Septime" b' a g f e d c c d e f g a b c
  \bar "|."
  e,,^"CF im Tenor, Sekunde" g g a c c d e e d c c a g g e
  e^"Terz" g b d g, a c e e c a g d' c g e
  e^"Quarte" a d g, c g b e e b g c g d' a e
  e^"Quinte" b' g c g d' a e' e a, d g, c g b e,
  e^"Sexte" c' a g d' b g e' e g, b d g, a c e,
  e^"Septime" d' c c a g g e e g g a c c d e
  \bar "|."
  %%%%%%%%%%
    % Sekundintervall
  % Grundstellung
  e^"CF im Bass, Grundstellung Sekunde" d b a g e d c c d e g a b d e
  % Sextakkord
  a,^"Sextakkord Sekunde" f c' a e' c g' e e g c, e a, c f, a
  % Quartsextakkord
  f^"Quartsextakkord Sekunde" g a b c d e f f e d c b a g f
  % Terzintervall
  % Grundstellung
  e'^"Grundstellung Terz" e d d d c c c c c c d d d e e
  % Sextakkord
  a^"Sextakkord Terz" c, e g, b d, f a, a f' d b' g e' c a'
  % Quartsextakkord
  a^"Quartsextakkord Terz" a g g g f f f f f f g g g a a
  % Quartintervall
  % Grundstellung
  e^"Grundstellung Quarte" f f g a a b c c b a a g f f e
  % Sextakkord
  a,^"Sextakkord Quarte" a g g f f e e e e f f g g a a
  a'^"Quartsextakkord Quarte" b g a f g e f f e g f a g b a
  % Quintintervall
  % Grundstellung
  e^"Grundstellung Quinte" d d c b b c c c c b b c d d e
  % Sextakkord
  a,^"Sextakkord Quinte" b b c c d d e e d d c c b b a
  a^"Quartsextakkord Quinte" g g a a b b c c b b a a g g a
  % Sextintervall
  % Grundstellung
  e^"Grundstellung Sexte" e f f f g g g g g g f f f e e
  % Sextakkord
  a^"Sextakkord Sexte" f d f g e c' e, e c' e, g f d f e
  f^"Quartsextakkord Sexte" f f g g g a a a a g g g f f f
  % Septimintervall
  % Grundstellung
  e^"Grundstellung Septime" f a b c e f g g f e c b a f e
  % Sextakkord
  a^"Sextakkord Septime" d, f b, d' g, b e, e b' g d' b, f' d a'
  a^"Quartsextakkord Septime" b d e f a b c c b a f e d b a
  \bar "|."
  %%%%%%%%%%%%%%%%
    g^"CF im Alt, Sekunde" b c c e f f g g g f e c c b g
  g^"Terz" c d g b, c f g g f c b g' e c g
  g^"Quarte" c g' c, f b, d g g d b f' c g' c, g
  g^"Quinte" d b' f' c g' c, g' g c, g' c, f b, d g,
  g^"Sexte" f' c b g' d c g' g c, d g b, c f g,
  g^"Septime" g' f e c c b g g b c c e f f g
}

scoreAAlto = \relative c' {
  \globalA
  % Music follows here.
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
  % Grundstellung
  c a g f d c b g g b c d f g a c
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
  c' b a a g g a g g a g g a a b c
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
  % Grundstellung
  c,4 d e f g a b c c b a g f e d c
  \bar "||"
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
  \global
  % Chords follow here.
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
  \global
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
  a,4^"Cantus firmus im Sopran, Sekunde" b c d e f g a a g f e d c b a
  \bar "||"
  a^"Terz" c e g b, d f a a f d b g' e c a
  \bar "||"
  a^"Quarte" d g c, f b, e a a e b f' c gs' d a
  \bar "||"
  a^"Quinte" e' b f' c gs' d a' a d, gs c, f b, e a,
  \bar "||"
  a^"Sexte" f' d b gs' e c a' a c, e gs b, d f a,
  \bar "||"
  a^"Septime" gs' f e d c b a a b c d e f gs a
  \bar "|."
  cs,^"CF im Tenor, Sekunde" e e f a a b c c b a a f e e cs
  cs^"Terz" e gs b e, f a c c a f e b' a e c
  cs^"Quarte" f b e, a e gs c c gs e a e b' f c
  cs^"Quinte" gs' e a e b' f c' c f, b e, a e gs c,
  cs^"Sexte" a' f e b' gs e c' c e, gs b e, f a c,
  cs^"Septime" b' a a f e e c c e e f a a b c
  \bar "|."
  %%%%%%%%%%
    % Sekundintervall
  % Grundstellung
  cs^"CF im Bass, Grundstellung Sekunde" b gs f e cs b a a b c e f gs b c
  % Sextakkord
  f,^"Sextakkord Sekunde" d a' f c' a e' c c e a, c f, a d, f
  % Quartsextakkord
  d^"Quartsextakkord Sekunde" e f gs a b c d d c b a gs f e d
  % Terzintervall
  % Grundstellung
  c'^"Grundstellung Terz" c b b b a a a a a a b b b c c
  % Sextakkord
  f^"Sextakkord Terz" a, c e, gs b, d f, f d' b gs' e c' a f'
  % Quartsextakkord
  f^"Quartsextakkord Terz" f e e e d d d d d d e e e f f
  % Quartintervall
  % Grundstellung
  c^"Grundstellung Quarte" d d e f f gs a a gs f f e d d c
  % Sextakkord
  f,^"Sextakkord Quarte" f e e d d c c c c d d e e f f
  f'^"Quartsextakkord Quarte" gs e f d e c d d c e d f e gs f
  % Quintintervall
  % Grundstellung
  c^"Grundstellung Quinte" b b a gs gs a a a a gs gs a b b c
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
    e^"CF im Alt, Sekunde" gs a a c d d e e e d c a a gs e
  e^"Terz" a b e gs, a d e e d a gs e' c a e
  e^"Quarte" a e' a, d gs, b e e b gs d' a e' a, e
  e^"Quinte" b gs' d' a e' a, e' e a, e' a, d gs, b e,
  e^"Sexte" d' a gs e' b a e' e a, b e gs, a d e,
  e^"Septime" e' d c a a gs e e gs a a c d d e  
}

scoreBAlto = \relative c'' {
  \global
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
  % Grundstellung
  e d c a gs f d c c d f gs a c d e
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
  \global
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
  % Grundstellung
  a f e d b a gs e e gs a b d e f a
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
}

scoreBBass = \relative c' {
  \global
  % Music follows here.
  a, e a d a d b a
  a e d' a d a e a
  a a e e e d' d a
  a d d e, e a a a a d e, a d e, e a a e e d' a e d' a
  a e e d' a e d a' a d e, a d e, e a
  a d d e, e e a a a a e e e d' d a a e d' a d a e a a e a d a d b a  
  %%%%%%%%%%%%%%%%%%%%%
    a e a d a d b a
  a e d' a d a e a
  a a e e e d' d a
  a d d e, e a a a a d e, a d e, e a a e e d' a e d' a
  a e e d' a e d a' a d e, a d e, e a
  a d d e, e e a a a a e e e d' d a a e d' a d a e a a e a d a d b a
  %%%%%%%%%%%%%%%%%%%%%%%
    % Sekundintervall
  % Grundstellung
  a,4 b c d e f gs a a gs f e d c b a
  \bar "||"
  % Sextakkord
  a4 b c d e f gs a a gs f e d c b a
  \bar "||"
  % Quartsextakkord
  a4 b c d e f gs a a gs f e d c b a
  \bar "||"
  % Terzintervall
  % Grundstellung
  a c e gs b, d f a a f d b gs' e c a
  \bar "||"
  % Sextakkord
  a c e gs b, d f a a f d b gs' e c a
  \bar "||"
  % Quartsextakkord
  a c e gs b, d f a a f d b gs' e c a
  \bar "||"
  % Quartintervall
  % Grundstellung
  a d gs c, f b, e a a e b f' c gs' d a
  \bar "||"
  % Sextakkord
  a d gs c, f b, e a a e b f' c gs' d a
  \bar "||"
  % Quartsextakkord
  a d gs c, f b, e a a e b f' c gs' d a
  \bar "||"
  % Quintintervall
  % Grundstellung
  a e' b f' c gs' d a' a d, gs c, f b, e a,
  \bar "||"
  % Sextakkord
  a e' b f' c gs' d a' a d, gs c, f b, e a,
  \bar "||"
  % Quartsextakkord
  a e' b f' c gs' d a' a d, gs c, f b, e a,
  \bar "||"
  % Sextintervall
  % Grundstellung
  a f' d b gs' e c a' a c, e gs b, d f a,
  \bar "||"
  % Sextakkord
  a f' d b gs' e c a' a c, e gs b, d f a,
  \bar "||"
  % Quartsextakkord
  a f' d b gs' e c a' a c, e gs b, d f a,
  \bar "||"
  % Septimintervall
  % Grundstellung
  a gs' f e d' c, b' a, a b' c, d' e, f gs a,
  \bar "|."
  % Sextakkord
  a gs' f e d' c, b' a, a b' c, d' e, f gs a,
  \bar "|."
  % Quartsextakkord
  a gs' f e d' c, b' a, a b' c, d' e, f gs a,
  \bar "|."
  %%%%%%%%%%%%%%%%%%%%
    a e a d a d b a
  a e d' a d a e a
  a a e e e d' d a
  a d d e, e a a a a d e, a d e, e a a e e d' a e d' a
  a e e d' a e d a' a d e, a d e, e a
  a d d e, e e a a a a e e e d' d a a e d' a d a e a a e a d a d b a  
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
  \global
  % Chords follow here.
  a:min e a d a d gs:dim/b a
  a e d a d a e a
  a a e e e d d a
  a d d e e a a a
  a d e a d e e a a e e d a e d a
  a e e d a e d a a d e a d e e a
  a d d e e e a a a a e e e d d a
  a e d a d a e a a e a d a d gs:dim/b a
  %%%%%%%%%%%%%%%%%%%
    a e a d a d gs:dim/b a
  a e d a d a e a
  a a e e e d d a
  a d d e e a a a
  a d e a d e e a a e e d a e d a
  a e e d a e d a a d e a d e e a
  a d d e e e a a a a e e e d d a
  a e d a d a e a a e a d a d gs:dim/b a
  %%%%%%%%%%%%%%%%%%%%%%%%
    % Sekundintervall
  % Grundstellung
  a b:m c:m d e f:m gs:dim a a gs:dim f:m e d c:m b:m a
  % Sextakkord
  f:m/a gs:dim/b a/c b:m/d c:m/e d/f e/gs a a e/gs d/f c:m/e b:m/d a/c gs:dim/b f:m/a
  % Quartsextakkord
  d/a e/b f:m/c gs:dim/d a/e b:m/f c:m/gs d/a d/a c:m/gs b:m/f a/e gs:dim/d f:m/c e/b d/a
  % Terzintervall
  % Grundstellung
  a c:m e gs:dim b:m d f:m a a f:m d b gs:dim e c:m a
  % Sextakkord
  f:m/a a/c c:m/e e/gs gs:dim/b b:m/d d/f f:m/a f:m/a d/f b:m/d gs:dim/b e/gs c:m/e a/c f:m/a
  % Quartsextakkord
  d/a f:m/c a/e c:m/gs e/b gs:dim/d b:m/f d/a d/a b:m/f gs:dim/d e/b c:dim/gs a/e f:m/c d/a
  % Quartintervall
  % Grundstellung
  a d gs:dim c:m f:m b:m e a a e b:m f:m c:m gs:dim d a
  % Sextakkord
  f:m/a b:m/d e/gs a/c d/f gs:dim/b c:m/e f:m/a f:m/a c:m/e gs:dim/b d/f a/c e/gs b:m/d f:m/a
  % Quartsextakkord
  d/a gs:dim/d c:m/gs f:m/c b:m/f e/b a/e d/a d/a a/e e/b b:m/f f:m/c c:m/gs gs:dim/d d/a
  % Quintintervall
  % Grundstellung
  a e b f c gs d a a d gs c f b e a
  % Sextakkord
  f:m/a c:m/e gs:dim/b d/f a/c e/gs b:m/d f:m/a f:m/a b:m/d e/gs a/c d/f gs:dim/b c:m/e f:m/a
  % Quartsextakkord
  d/a a/e e/b b:m/f f:m/c c:m/gs gs:dim/d d/a d/a gs:dim/d c:m/gs f:m/c b:m/f e/b a/e d/a
  % Sextintervall
  % Grundstellung
  a f:m d b:m gs:dim e c:m a a c:m e gs:dim b:m d f:m a
  % Sextakkord
  f:m/a d/f b:m/d gs:dim/b e/gs c:m/e a/c f:m/a f:m/a a/c c:m/e e/gs gs:dim/b b:m/d d:/f f:m/a
  % Quartsextakkord
  d/a b:m/f gs:dim/d e/b c:m/gs a/e f:m/c d/a d/a f:m/c a/e c:m/gs e/b gs:dim/d b:m/f d/a
  % Septimintervall
  % Grundstellung
  a gs:dim f:m e d c:m b:m a a b:m c:m d e f:m gs:dim a  
  % Sextakkord
  f:m/a e/gs d/f c:m/e b:m/d a/c gs:dim/b f:m/a f:m/a gs:dim/b a/c b:m/d c:m/e d/f e/gs f:m/a  
  % Quartsextakkord
  d/a c:m/gs b:m/f a/e gs:dim/d f:m/c e/b d/a d/a e/b f:m/c gs:dim/d a/e b:m/f c:m/gs d/a  
  %%%%%%%%%%%%%%%%%%%%%%%%
    a e a d a d gs:dim/b a
  a e d a d a e a
  a a e e e d d a
  a d d e e a a a
  a d e a d e e a a e e d a e d a
  a e e d a e d a a d e a d e e a
  a d d e e e a a a a e e e d d a
  a e d a d a e a a e a d a d gs:dim/b a  
}

scoreBFigBass = \figuremode {
  \global
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

%%%%%%%%%%%%%%%%%%%%%%%%%
% G-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \transpose c g \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreCSoprano = \relative c'' {
  \globalC
  % Music follows here.
  \transpose c g \scoreASoprano
}

scoreCAlto = \relative c' {
  \globalC
  % Music follows here.
  \transpose c g \scoreAAlto
}

scoreCTenor = \relative c' {
  \globalC
  % Music follows here.
  \transpose c g \scoreATenor
}

scoreCBass = \relative c {
  \globalC
  % Music follows here.
  \transpose c g \scoreABass
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreCChordNames = \chordmode {
  \globalC
  % Chords follow here.
  \transpose c g \scoreAChordNames
}

scoreCFigBass = \figuremode {
  \globalC
  % Figures follow here.
  \scoreAFigBass
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

scoreCChordsPart = \new ChordNames \scoreCChordNames

scoreCBassFiguresPart = \new FiguredBass \scoreCFigBass

\bookpart {
  \header {
    subtitle = "G-Dur"
  }
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

%%%%%%%%%%%%%%%%%%%%%%%%%
% a-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalD = {
  \transpose a e \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
}

scoreDSoprano = \relative c'' {
  \globalD
  % Music follows here.
  \transpose a e \scoreBSoprano
}

scoreDAlto = \relative c' {
  \globalD
  % Music follows here.
  \transpose a e \scoreBAlto
}

scoreDTenor = \relative c' {
  \globalD
  % Music follows here.
  \transpose a e \scoreBTenor
}

scoreDBass = \relative c {
  \globalD
  % Music follows here.
  \transpose a e \scoreBBass
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreDChordNames = \chordmode {
  \globalD
  % Chords follow here.
  \transpose a e \scoreBChordNames
}

scoreDFigBass = \figuremode {
  \globalD
  % Figures follow here.
  \scoreBFigBass
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

scoreDChordsPart = \new ChordNames \scoreDChordNames

scoreDBassFiguresPart = \new FiguredBass \scoreDFigBass

\bookpart {
  \header {
    subtitle = "e-Moll"
  }
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

%%%%%%%%%%%%%%%%%%%%%%%%%
% F-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalE = {
  \transpose c f \key c \major
  \time 4/4
  \tempo "Andante" 4=100
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

scoreEChordNames = \chordmode {
  \globalE
  % Chords follow here.
  \transpose c g \scoreAChordNames
}

scoreEFigBass = \figuremode {
  \globalE
  % Figures follow here.
  \scoreAFigBass
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

scoreEChordsPart = \new ChordNames \scoreEChordNames

scoreEBassFiguresPart = \new FiguredBass \scoreEFigBass

\bookpart {
  \header {
    subtitle = "F-Dur"
  }
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

%%%%%%%%%%%%%%%%%%%%%%%%%
% d-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalF = {
  \transpose a d\key a \minor
  \time 4/4
  \tempo "Andante" 4=100
}

scoreFSoprano = \relative c'' {
  \globalF
  % Music follows here.
  \transpose a d \scoreBSoprano
}

scoreFAlto = \relative c' {
  \globalF
  % Music follows here.
  \transpose a d \scoreBAlto
}

scoreFTenor = \relative c' {
  \globalF
  % Music follows here.
  \transpose a d \scoreBTenor
}

scoreFBass = \relative c {
  \globalF
  % Music follows here.
  \transpose a d \scoreBBass
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreFChordNames = \chordmode {
  \globalF
  % Chords follow here.
  \transpose a d \scoreBChordNames
}

scoreFFigBass = \figuremode {
  \globalF
  % Figures follow here.
  \scoreBFigBass
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

scoreFChordsPart = \new ChordNames \scoreFChordNames

scoreFBassFiguresPart = \new FiguredBass \scoreFFigBass

\bookpart {
  \header {
    subtitle = "d-Moll"
  }
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

%%%%%%%%%%%%%%%%%%%%%%%%%
% D-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalG = {
  \transpose c d \key c \major
  \time 4/4
  \tempo "Andante" 4=100
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

scoreGChordNames = \chordmode {
  \globalG
  % Chords follow here.
  \transpose c d \scoreAChordNames
}

scoreGFigBass = \figuremode {
  \globalG
  % Figures follow here.
  \scoreAFigBass
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

scoreGChordsPart = \new ChordNames \scoreGChordNames

scoreGBassFiguresPart = \new FiguredBass \scoreGFigBass

\bookpart {
  \header {
    subtitle = "D-Dur"
  }
  \score {
    <<
      \scoreGChoirPart
      \scoreGChordsPart
      \scoreGBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% h-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalH = {
  \transpose a b \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
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

scoreHChordNames = \chordmode {
  \globalH
  % Chords follow here.
  \transpose a b \scoreBChordNames
}

scoreHFigBass = \figuremode {
  \globalH
  % Figures follow here.
  \scoreBFigBass
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

scoreHChordsPart = \new ChordNames \scoreHChordNames

scoreHBassFiguresPart = \new FiguredBass \scoreHFigBass

\bookpart {
  \header {
    subtitle = "h-Moll"
  }
  \score {
    <<
      \scoreHChoirPart
      \scoreHChordsPart
      \scoreHBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% B-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalI = {
  \transpose c bf \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreISoprano = \relative c'' {
  \globalI
  % Music follows here.
  \transpose c bf \scoreASoprano
}

scoreIAlto = \relative c' {
  \globalI
  % Music follows here.
  \transpose c bf \scoreAAlto
}

scoreITenor = \relative c' {
  \globalI
  % Music follows here.
  \transpose c bf \scoreATenor
}

scoreIBass = \relative c {
  \globalI
  % Music follows here.
  \transpose c bf \scoreABass
}

scoreIVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreIChordNames = \chordmode {
  \globalI
  % Chords follow here.
  \transpose c bf \scoreAChordNames
}

scoreIFigBass = \figuremode {
  \globalI
  % Figures follow here.
  \scoreAFigBass
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

scoreIChordsPart = \new ChordNames \scoreIChordNames

scoreIBassFiguresPart = \new FiguredBass \scoreIFigBass

\bookpart {
  \header {
    subtitle = "B-Dur"
  }
  \score {
    <<
      \scoreIChoirPart
      \scoreIChordsPart
      \scoreIBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% g-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalJ = {
  \transpose a g \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
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

scoreJChordNames = \chordmode {
  \globalJ
  % Chords follow here.
  \transpose a g \scoreBChordNames
}

scoreJFigBass = \figuremode {
  \globalJ
  % Figures follow here.
  \scoreBFigBass
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

scoreJChordsPart = \new ChordNames \scoreJChordNames

scoreJBassFiguresPart = \new FiguredBass \scoreJFigBass

\bookpart {
  \header {
    subtitle = "g-Moll"
  }
  \score {
    <<
      \scoreJChoirPart
      \scoreJChordsPart
      \scoreJBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% A-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalK = {
  \transpose c a \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreKSoprano = \relative c'' {
  \globalK
  % Music follows here.
  \transpose c a \scoreASoprano
}

scoreKAlto = \relative c' {
  \globalK
  % Music follows here.
  \transpose c a \scoreAAlto
}

scoreKTenor = \relative c' {
  \globalK
  % Music follows here.
  \transpose c a \scoreATenor
}

scoreKBass = \relative c {
  \globalK
  % Music follows here.
  \transpose c a \scoreABass
}

scoreKVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreKChordNames = \chordmode {
  \globalK
  % Chords follow here.
  \transpose c a \scoreAChordNames
}

scoreKFigBass = \figuremode {
  \globalK
  % Figures follow here.
  \scoreAFigBass
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

scoreKChordsPart = \new ChordNames \scoreKChordNames

scoreKBassFiguresPart = \new FiguredBass \scoreKFigBass

\bookpart {
  \header {
    subtitle = "A-Dur"
  }
  \score {
    <<
      \scoreKChoirPart
      \scoreKChordsPart
      \scoreKBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% fis-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalL = {
  \transpose a fs \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
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

scoreLChordNames = \chordmode {
  \globalL
  % Chords follow here.
  \transpose a fs \scoreBChordNames
}

scoreLFigBass = \figuremode {
  \globalL
  % Figures follow here.
  \scoreBFigBass
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

scoreLChordsPart = \new ChordNames \scoreLChordNames

scoreLBassFiguresPart = \new FiguredBass \scoreLFigBass

\bookpart {
  \header {
    subtitle = "fis-Moll"
  }
  \score {
    <<
      \scoreLChoirPart
      \scoreLChordsPart
      \scoreLBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% Es-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalM = {
  \transpose c ef \key c \major
  \time 4/4
  \tempo "Andante" 4=100
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

scoreMChordNames = \chordmode {
  \globalM
  % Chords follow here.
  \transpose c ef \scoreAChordNames
}

scoreMFigBass = \figuremode {
  \globalM
  % Figures follow here.
  \scoreAFigBass
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

scoreMChordsPart = \new ChordNames \scoreMChordNames

scoreMBassFiguresPart = \new FiguredBass \scoreMFigBass

\bookpart {
  \header {
    subtitle = "Es-Dur"
  }
  \score {
    <<
      \scoreMChoirPart
      \scoreMChordsPart
      \scoreMBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% c-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalN = {
  \transpose a c \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
}

scoreNSoprano = \relative c'' {
  \globalN
  % Music follows here.
  \transpose a c \scoreBSoprano
}

scoreNAlto = \relative c' {
  \globalN
  % Music follows here.
  \transpose a c \scoreBAlto
}

scoreNTenor = \relative c' {
  \globalN
  % Music follows here.
  \transpose a c \scoreBTenor
}

scoreNBass = \relative c {
  \globalN
  % Music follows here.
  \transpose a c \scoreBBass
}

scoreNVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreNChordNames = \chordmode {
  \globalN
  % Chords follow here.
  \transpose a c \scoreBChordNames
}

scoreNFigBass = \figuremode {
  \globalN
  % Figures follow here.
  \scoreBFigBass
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

scoreNChordsPart = \new ChordNames \scoreNChordNames

scoreNBassFiguresPart = \new FiguredBass \scoreNFigBass

\bookpart {
  \header {
    subtitle = "c-Moll"
  }
  \score {
    <<
      \scoreNChoirPart
      \scoreNChordsPart
      \scoreNBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% E-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalO = {
  \transpose c e \key c \major
  \time 4/4
  \tempo "Andante" 4=100
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

scoreOChordNames = \chordmode {
  \globalO
  % Chords follow here.
  \transpose c e \scoreAChordNames
}

scoreOFigBass = \figuremode {
  \globalO
  % Figures follow here.
  \scoreAFigBass
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

scoreOChordsPart = \new ChordNames \scoreOChordNames

scoreOBassFiguresPart = \new FiguredBass \scoreOFigBass

\bookpart {
  \header {
    subtitle = "E-Dur"
  }
  \score {
    <<
      \scoreOChoirPart
      \scoreOChordsPart
      \scoreOBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% cis-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalP = {
  \transpose a cs \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
}

scorePSoprano = \relative c'' {
  \globalP
  % Music follows here.
  \transpose a cs \scoreBSoprano
}

scorePAlto = \relative c' {
  \globalP
  % Music follows here.
  \transpose a cs \scoreBAlto
}

scorePTenor = \relative c' {
  \globalP
  % Music follows here.
  \transpose a cs \scoreBTenor
}

scorePBass = \relative c {
  \globalP
  % Music follows here.
  \transpose a cs \scoreBBass
}

scorePVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scorePChordNames = \chordmode {
  \globalP
  % Chords follow here.
  \transpose a cs \scoreBChordNames
}

scorePFigBass = \figuremode {
  \globalP
  % Figures follow here.
  \scoreBFigBass
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

scorePChordsPart = \new ChordNames \scorePChordNames

scorePBassFiguresPart = \new FiguredBass \scorePFigBass

\bookpart {
  \header {
    subtitle = "cis-Moll"
  }
  \score {
    <<
      \scorePChoirPart
      \scorePChordsPart
      \scorePBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% As-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalQ = {
  \transpose c af \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreQSoprano = \relative c'' {
  \globalQ
  % Music follows here.
  \transpose c af \scoreASoprano
}

scoreQAlto = \relative c' {
  \globalQ
  % Music follows here.
  \transpose c af \scoreAAlto
}

scoreQTenor = \relative c' {
  \globalQ
  % Music follows here.
  \transpose c af \scoreATenor
}

scoreQBass = \relative c {
  \globalQ
  % Music follows here.
  \transpose c af \scoreABass
}

scoreQVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreQChordNames = \chordmode {
  \globalQ
  % Chords follow here.
  \transpose c af \scoreAChordNames
}

scoreQFigBass = \figuremode {
  \globalQ
  % Figures follow here.
  \scoreAFigBass
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

scoreQChordsPart = \new ChordNames \scoreQChordNames

scoreQBassFiguresPart = \new FiguredBass \scoreQFigBass

\bookpart {
  \header {
    subtitle = "As-Dur"
  }
  \score {
    <<
      \scoreQChoirPart
      \scoreQChordsPart
      \scoreQBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% f-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalR = {
  \transpose a f \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
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

scoreRChordNames = \chordmode {
  \globalR
  % Chords follow here.
  \transpose a f \scoreBChordNames
}

scoreRFigBass = \figuremode {
  \globalR
  % Figures follow here.
  \scoreBFigBass
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

scoreRChordsPart = \new ChordNames \scoreRChordNames

scoreRBassFiguresPart = \new FiguredBass \scoreRFigBass

\bookpart {
  \header {
    subtitle = "f-Moll"
  }
  \score {
    <<
      \scoreRChoirPart
      \scoreRChordsPart
      \scoreRBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% H-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalS = {
  \transpose c b \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreSSoprano = \relative c'' {
  \globalS
  % Music follows here.
  \transpose c b \scoreASoprano
}

scoreSAlto = \relative c' {
  \globalS
  % Music follows here.
  \transpose c b \scoreAAlto
}

scoreSTenor = \relative c' {
  \globalS
  % Music follows here.
  \transpose c b \scoreATenor
}

scoreSBass = \relative c {
  \globalS
  % Music follows here.
  \transpose c b \scoreABass
}

scoreSVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreSChordNames = \chordmode {
  \globalS
  % Chords follow here.
  \transpose c b \scoreAChordNames
}

scoreSFigBass = \figuremode {
  \globalS
  % Figures follow here.
  \scoreAFigBass
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

scoreSChordsPart = \new ChordNames \scoreSChordNames

scoreSBassFiguresPart = \new FiguredBass \scoreSFigBass

\bookpart {
  \header {
    subtitle = "H-Dur"
  }
  \score {
    <<
      \scoreSChoirPart
      \scoreSChordsPart
      \scoreSBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% gis-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalT = {
  \transpose a gs \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
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

scoreTChordNames = \chordmode {
  \globalT
  % Chords follow here.
  \transpose a gs \scoreBChordNames
}

scoreTFigBass = \figuremode {
  \globalT
  % Figures follow here.
  \scoreBFigBass
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

scoreTChordsPart = \new ChordNames \scoreTChordNames

scoreTBassFiguresPart = \new FiguredBass \scoreTFigBass

\bookpart {
  \header {
    subtitle = "gis-Moll"
  }
  \score {
    <<
      \scoreTChoirPart
      \scoreTChordsPart
      \scoreTBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% Des-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalU = {
  \transpose c df \key c \major
  \time 4/4
  \tempo "Andante" 4=100
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

scoreUChordNames = \chordmode {
  \globalU
  % Chords follow here.
  \transpose c df \scoreAChordNames
}

scoreUFigBass = \figuremode {
  \globalU
  % Figures follow here.
  \scoreAFigBass
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

scoreUChordsPart = \new ChordNames \scoreUChordNames

scoreUBassFiguresPart = \new FiguredBass \scoreUFigBass

\bookpart {
  \header {
    subtitle = "Des-Dur"
  }
  \score {
    <<
      \scoreUChoirPart
      \scoreUChordsPart
      \scoreUBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% b-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalV = {
  \transpose a bf \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
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

scoreVChordNames = \chordmode {
  \globalV
  % Chords follow here.
  \transpose a bf \scoreBChordNames
}

scoreVFigBass = \figuremode {
  \globalV
  % Figures follow here.
  \scoreBFigBass
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

scoreVChordsPart = \new ChordNames \scoreVChordNames

scoreVBassFiguresPart = \new FiguredBass \scoreVFigBass

\bookpart {
  \header {
    subtitle = "b-Moll"
  }
  \score {
    <<
      \scoreVChoirPart
      \scoreVChordsPart
      \scoreVBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% Fis-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalW = {
  \transpose c fs \key c \major
  \time 4/4
  \tempo "Andante" 4=100
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

scoreWChordNames = \chordmode {
  \globalW
  % Chords follow here.
  \transpose c fs \scoreAChordNames
}

scoreWFigBass = \figuremode {
  \globalW
  % Figures follow here.
  \scoreAFigBass
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

scoreWChordsPart = \new ChordNames \scoreWChordNames

scoreWBassFiguresPart = \new FiguredBass \scoreWFigBass

\bookpart {
  \header {
    subtitle = "Fis-Dur"
  }
  \score {
    <<
      \scoreWChoirPart
      \scoreWChordsPart
      \scoreWBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% a-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalX = {
  \transpose a ds \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
}

scoreXSoprano = \relative c'' {
  \globalX
  % Music follows here.
  \transpose a ds \scoreBSoprano
}

scoreXAlto = \relative c' {
  \globalX
  % Music follows here.
  \transpose a ds \scoreBAlto
}

scoreXTenor = \relative c' {
  \globalX
  % Music follows here.
  \transpose a ds \scoreBTenor
}

scoreXBass = \relative c {
  \globalX
  % Music follows here.
  \transpose a ds \scoreBBass
}

scoreXVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreXChordNames = \chordmode {
  \globalX
  % Chords follow here.
  \transpose a ds \scoreBChordNames
}

scoreXFigBass = \figuremode {
  \globalX
  % Figures follow here.
  \scoreBFigBass
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

scoreXChordsPart = \new ChordNames \scoreXChordNames

scoreXBassFiguresPart = \new FiguredBass \scoreXFigBass

\bookpart {
  \header {
    subtitle = "dis-Moll"
  }
  \score {
    <<
      \scoreXChoirPart
      \scoreXChordsPart
      \scoreXBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% Ges-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%

globalY = {
  \transpose c gf \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreYSoprano = \relative c'' {
  \globalY
  % Music follows here.
  \transpose c gf \scoreASoprano
}

scoreYAlto = \relative c' {
  \globalY
  % Music follows here.
  \transpose c gf \scoreAAlto
}

scoreYTenor = \relative c' {
  \globalY
  % Music follows here.
  \transpose c gf \scoreATenor
}

scoreYBass = \relative c {
  \globalY
  % Music follows here.
  \transpose c gf \scoreABass
}

scoreYVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreYChordNames = \chordmode {
  \globalY
  % Chords follow here.
  \transpose c gf \scoreAChordNames
}

scoreYFigBass = \figuremode {
  \globalY
  % Figures follow here.
  \scoreAFigBass
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

scoreYChordsPart = \new ChordNames \scoreYChordNames

scoreYBassFiguresPart = \new FiguredBass \scoreYFigBass

\bookpart {
  \header {
    subtitle = "Ges-Dur"
  }
  \score {
    <<
      \scoreYChoirPart
      \scoreYChordsPart
      \scoreYBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%
% es-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%

globalZ = {
  \transpose a ef \key a \minor
  \time 4/4
  \tempo "Andante" 4=100
}

scoreZSoprano = \relative c'' {
  \globalZ
  % Music follows here.
  \transpose a ef \scoreBSoprano
}

scoreZAlto = \relative c' {
  \globalZ
  % Music follows here.
  \transpose a ef \scoreBAlto
}

scoreZTenor = \relative c' {
  \globalZ
  % Music follows here.
  \transpose a ef \scoreBTenor
}

scoreZBass = \relative c {
  \globalZ
  % Music follows here.
  \transpose a ef \scoreBBass
}

scoreZVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBVerse
}

scoreZChordNames = \chordmode {
  \globalZ
  % Chords follow here.
  \transpose a ef \scoreBChordNames
}

scoreZFigBass = \figuremode {
  \globalZ
  % Figures follow here.
  \scoreBFigBass
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

scoreZChordsPart = \new ChordNames \scoreZChordNames

scoreZBassFiguresPart = \new FiguredBass \scoreZFigBass

\bookpart {
  \header {
    subtitle = "es-Moll"
  }
  \score {
    <<
      \scoreZChoirPart
      \scoreZChordsPart
      \scoreZBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}
