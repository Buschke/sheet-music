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
  e,^"CF im Tenor, Sekunde" g g a c c d e e d c c a g g e
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
  g, b c c e f f g
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
    c,4 d e f g a b c c b a g f e d c
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
  a b c d e f g a a g f e d c b a
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
  c g f' c f c g c
  c c g g g f' f c
  c f f g, g c c c c f g, c f g, g c c g g f' c g f' c
  c g g f' c g f c' c f g, c f g, g c
  c f f g, g g c c c c g g g f' f c c g f' c f c g c c g c f c f d c  
  %%%%%%%%%%%%%%%%%%%%%
    c g c f c f d c
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

scoreBChordNames = \chordmode {
  \global
  % Chords follow here.
  
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

scoreCChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreDChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreDFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreEChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreEFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreFChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreFFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreGChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreGFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreHChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreHFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreIChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreIFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreJChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreJFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreKChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreKFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreLChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreLFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreMChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreMFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreNChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreNFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreOChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreOFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scorePChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scorePFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreQChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreQFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreRChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreRFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreSChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreSFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreTChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreTFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreUChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreUFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreVChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreVFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreWChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreWFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreXChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreXFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreYChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreYFigBass = \figuremode {
  \global
  % Figures follow here.
  
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

scoreZChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreZFigBass = \figuremode {
  \global
  % Figures follow here.
  
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
