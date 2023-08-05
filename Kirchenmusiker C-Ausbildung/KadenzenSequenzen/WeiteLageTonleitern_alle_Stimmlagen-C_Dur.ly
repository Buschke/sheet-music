\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Tonleiter in C-Dur in Intervallen"
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

global = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  c4^"Sekunde" d e f g a b c c b a g f e d c
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
}

scoreAAlto = \relative c' {
  \global
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
}

scoreATenor = \relative c' {
  \global
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
}

scoreABass = \relative c {
  \global
  % Music follows here.
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
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
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
    instrumentName = \markup \center-column { "Soprano" "Alto" }
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

scoreAChordsPart = <<
  \new ChordNames \scoreAChordNames
%   \scoreAChordNames
%   \new FretBoards \scoreAChordNames
>>

scoreABassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreAFigBass

\bookpart {
  \header {
      subtitle = "Cantus firmus im Sopran"
  }
  \score {
    <<
      \scoreAChoirPart
      \scoreAChordsPart
      \scoreABassFiguresPart
    >>
    \layout { }
    \midi {
      \tempo 4=100
    }
  }
}

scoreBSoprano = \relative c'' {
  \global
  % Music follows here.
  e,^"Sekunde" g g a c c d e e d c c a g g e
  e^"Terz" g b d g, a c e e c a g d' c g e
  e^"Quarte" a d g, c g b e e b g c g d' a e
  e^"Quinte" b' g c g d' a e' e a, d g, c g b e,
  e^"Sexte" c' a g d' b g e' e g, b d g, a c e,
  e^"Septime" d' c c a g g e e g g a c c d e
}

scoreBAlto = \relative c' {
  \global
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
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
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
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  c g c f c f d c
  c g f' c f c g c
  c c g g g f' f c
  c f f g, g c c c c f g, c f g, g c c g g f' c g f' c
  c g g f' c g f c' c f g, c f g, g c
  c f f g, g g c c c c g g g f' f c c g f' c f c g c c g c f c f d c
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  do re mi fa sol la si do | do si la sol fa mi re do
  do mi sol si re fa la do | do la fa re si sol mi do
  do fa si mi la re sol do | do sol re la mi si fa do
  do sol re la mi si fa do | do fa si mi la re sol do
  do la fa re si sol mi do | do mi sol si re fa la do
  do si la sol fa mi re do | do re mi fa sol la si do
}

scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c g c f c f b:dim/d c
  c g f c f c g c
  c c g g g f f c
  c f f g g c c c
  c f g c f g g c c g g f c g f c
  c g g f c g f c c f g c f g g c
  c f f g g g c c c c g g g f f c
  c g f c f c g c c g c f c f b:dim/d c
}

scoreBFigBass = \figuremode {
  \global
  % Figures follow here.
}

scoreBChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
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

scoreBChordsPart = <<
  \new ChordNames \scoreBChordNames
%   \scoreBChordNames
%   \new FretBoards \scoreBChordNames
>>

scoreBBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreBFigBass

\bookpart {
  \header {
      subtitle = "Cantus firmus im Tenor"
  }
  \score {
    <<
      \scoreBChoirPart
      \scoreBChordsPart
      \scoreBBassFiguresPart
    >>
    \layout { }
    \midi {
      \tempo 4=100
    }
  }
}

scoreCSoprano = \relative c'' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  e^"Grundstellung Sekunde" d b a g e d c c d e g a b d e
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
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  g' f e c b a f e e f a b c e f g
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
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
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
}

scoreCBass = \relative c {
  \global
  % Music follows here.
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
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
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
}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
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
}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.
  % Sekundintervall
  % Grundstellung
  % Sextakkord
  % Quartsextakkord
  % weitere Intervalle
}

scoreCChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
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

scoreCChordsPart = <<
  \new ChordNames \scoreCChordNames
%   \scoreCChordNames
%   \new FretBoards \scoreCChordNames
>>

scoreCBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreCFigBass

\bookpart {
  \header {
      subtitle = "Cantus firmus im Bass"
  }
  \score {
    <<
      \scoreCChoirPart
      \scoreCChordsPart
      \scoreCBassFiguresPart
    >>
    \layout { }
    \midi {
      \tempo 4=100
    }
  }
}

scoreDSoprano = \relative c'' {
  \global
  % Music follows here.
  g^"Sekunde" b c c e f f g g g f e c c b g
  g^"Terz" c d g b, c f g g f c b g' e c g
  g^"Quarte" c g' c, f b, d g g d b f' c g' c, g
  g^"Quinte" d b' f' c g' c, g' g c, g' c, f b, d g,
  g^"Sexte" f' c b g' d c g' g c, d g b, c f g,
  g^"Septime" g' f e c c b g g b c c e f f g
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
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

scoreDTenor = \relative c' {
  \global
  % Music follows here.
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

scoreDBass = \relative c {
  \global
  % Music follows here.
  c g c f c f d c
  c g f' c f c g c
  c c g g g f' f c
  c f f g, g c c c c f g, c f g, g c c g g f' c g f' c
  c g g f' c g f c' c f g, c f g, g c
  c f f g, g g c c c c g g g f' f c c g f' c f c g c c g c f c f d c
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  do re mi fa sol la si do | do si la sol fa mi re do
  do mi sol si re fa la do | do la fa re si sol mi do
  do fa si mi la re sol do | do sol re la mi si fa do
  do sol re la mi si fa do | do fa si mi la re sol do
  do la fa re si sol mi do | do mi sol si re fa la do
  do si la sol fa mi re do | do re mi fa sol la si do
}

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c g c f c f b:dim/d c
  c g f c f c g c
  c c g g g f f c
  c f f g g c c c
  c f g c f g g c c g g f c g f c
  c g g f c g f c c f g c f g g c
  c f f g g g c c c c g g g f f c
  c g f c f c g c c g c f c f b:dim/d c
}

scoreDFigBass = \figuremode {
  \global
  % Figures follow here.
}

scoreDChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
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

scoreDChordsPart = <<
  \new ChordNames \scoreDChordNames
%   \scoreDChordNames
%   \new FretBoards \scoreDChordNames
>>

scoreDBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreDFigBass

\bookpart {
  \header {
      subtitle = "Cantus firmus im Alt"
  }
  \score {
    <<
      \scoreDChoirPart
      \scoreDChordsPart
      \scoreDBassFiguresPart
    >>
    \layout { }
    \midi {
      \tempo 4=100
    }
  }
}