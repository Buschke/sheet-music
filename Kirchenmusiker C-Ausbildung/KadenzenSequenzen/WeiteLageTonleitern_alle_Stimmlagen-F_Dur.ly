\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Tonleiter in F-Dur in Intervallen"
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
  \key f \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  f4^"Sekunde" g a bf c d e f f e d c bf a g f
  \bar "||"
  f^"Terz" a c e g, bf d f f d bf g e' c a f
  \bar "||"
  f^"Quarte" bf e a, d g, c f f c g d' a e' bf f
  \bar "||"
  f^"Quinte" c' g d' a e' bf f' f bf, e a, d g, c f,
  \bar "||"
  f^"Sexte" d' bf g e' c a f' f a, c e g, bf d f,
  \bar "||"
  f^"Septime" e' d c bf a g f f g a bf c d e f
  \bar "|."
}

scoreAAlto = \relative c'' {
  \global
  % Music follows here.
  a c c d f f g a
  a g f f d c c a
  a c e g c, d f a
  a f d c g' f c a
  a d g c, f c e a
  a e c f c g' d a
  a e' c f c g' d a'
  a d, g c, f c e a,
  a f' d c g' e c a'
  a c, e g c, d f a,
  a g' f f d c c a
  a c c d f f g a
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  c e f f a bf bf c
  c c bf a f f e c
  c f g c e, f bf c
  c bf f e c' a f c
  c f c' f, bf e, g c
  c g e bf' f c' f, c
  c g e' bf' f c' f, c'
  c f, c' f, bf e, g c,
  c bf' f e c' g f c'
  c f, g c e, f bf c,
  c c' bf a f f e c
  c e f f a bf bf c
}

scoreABass = \relative c {
  \global
  % Music follows here.
  f c f bf f bf g f
  f c bf' f bf f c f
  f f c c c bf' bf f
  f bf bf c, c f f f f bf c, f bf c, c f f c c bf' f c bf' f
  f c c bf' f c bf f' f bf c, f bf c, c f
  f bf bf c, c c f f f f c c c bf' bf f f c bf' f bf f c f f c f bf f bf g f
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
  f c f bf f bf e:dim/g f
  f c bf f bf f c f
  f f c c c bf bf f
  f bf bf c c f f f
  f bf c f bf c c f f c c bf f c bf f
  f c c bf f c bf f f bf c f bf c c f
  f bf bf c c c f f f f c c c bf bf f
  f c bf f bf f c f f c f bf f bf e:dim/g f
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
  a^"Sekunde" c c d f f g a a g f f d c c a
  a^"Terz" c e g c, d f a a f d c g' f c a
  a^"Quarte" d g c, f c e a a e c f c g' d a
  a^"Quinte" e' c f c g' d a' a d, g c, f c e a,
  a^"Sexte" f' d c g' e c a' a c, e g c, d f a,
  a^"Septime" g' f f d c c a a c c d f f g a
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  c e f f a bf bf c
  c c bf a f f e c
  c f g c e, f bf c
  c bf f e c' a f c
  c f c' f, bf e, g c
  c g e bf' f c' f, c
  c g e' bf' f c' f, c'
  c f, c' f, bf e, g c,
  c bf' f e c' g f c'
  c f, g c e, f bf c,
  c c' bf a f f e c
  c e f f a bf bf c
}

scoreBTenor = \relative c {
  \global
  % Music follows here.
  f4 g a bf c d e f f e d c bf a g f
  \bar "||"
  f a c e g, bf d f f d bf g e' c a f
  \bar "||"
  f bf e a, d g, c f f c g d' a e' bf f
  \bar "||"
  f c' g d' a e' bf f' f bf, e a, d g, c f,
  \bar "||"
  f d' bf g e' c a f' f a, c e g, bf d f,
  \bar "||"
  f e' d c bf a g f f g a bf c d e f
  \bar "|."
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  f c f bf f bf g f
  f c bf' f bf f c f
  f f c c c bf' bf f
  f bf bf c, c f f f f bf c, f bf c, c f f c c bf' f c bf' f
  f c c bf' f c bf f' f bf c, f bf c, c f
  f bf bf c, c c f f f f c c c bf' bf f f c bf' f bf f c f f c f bf f bf g f
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
  f c f bf f bf e:dim/g f
  f c bf f bf f c f
  f f c c c bf bf f
  f bf bf c c f f f
  f bf c f bf c c f f c c bf f c bf f
  f c c bf f c bf f f bf c f bf c c f
  f bf bf c c c f f f f c c c bf bf f
  f c bf f bf f c f f c f bf f bf e:dim/g f
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

scoreCSoprano = \relative c''' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  a^"Grundstellung Sekunde" g e d c a g f f g a c d e g a
  % Sextakkord
  d,^"Sextakkord Sekunde" bf f' d a' f c' a a c f, a d, f bf, d
  % Quartsextakkord
  bf^"Quartsextakkord Sekunde" c d e f g a bf bf a g f e d c bf
  % Terzintervall
  % Grundstellung
  a'^"Grundstellung Terz" a g g g f f f f f f g g g a a
  % Sextakkord
  d^"Sextakkord Terz" f, a c, e g, bf d, d bf' g e' c a' f d'
  % Quartsextakkord
  d^"Quartsextakkord Terz" d c c c bf bf bf bf bf bf c c c d d
  % Quartintervall
  % Grundstellung
  a^"Grundstellung Quarte" bf bf c d d e f f e d d c bf bf a
  % Sextakkord
  d,^"Sextakkord Quarte" d c c bf bf a a a a bf bf c c d d
  d'^"Quartsextakkord Quarte" e c d bf c a bf bf a c bf d c e d
  % Quintintervall
  % Grundstellung
  a^"Grundstellung Quinte" g g f e e f f f f e e f g g a
  % Sextakkord
  d,^"Sextakkord Quinte" e e f f g g a a g g f f e e d
  d^"Quartsextakkord Quinte" c c d d e e f f e e d d c c d
  % Sextintervall
  % Grundstellung
  a^"Grundstellung Sexte" a bf bf bf c c c c c c bf bf bf a a
  % Sextakkord
  d^"Sextakkord Sexte" bf g bf c a f' a, a f' a, c bf g bf a
  bf^"Quartsextakkord Sexte" bf bf c c c d d d d c c c bf bf bf
  % Septimintervall
  % Grundstellung
  a^"Grundstellung Septime" bf d e f a bf c c bf a f e d bf a
  % Sextakkord
  d^"Sextakkord Septime" g, bf e, g' c, e a, a e' c g' e, bf' g d'
  d^"Quartsextakkord Septime" e g a bf d e f f e d bf a g e d
}

scoreCAlto = \relative c'' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  c bf a f e d bf a a bf d e f a bf c
  % Sextakkord
  a bf c d e f g a a g f e d c bf a
  % Quartsextakkord
  d, e f g a bf c d d c bf a g f e d
  % Terzintervall
  % Grundstellung
  c' c c bf bf bf a a a a bf bf c c c c
  % Sextakkord
  a' f e c bf g f d d f g bf c e f a
  % Quartsextakkord
  f f f e e e d d d d e e e f f f
  % Quartintervall
  % Grundstellung
  c d e e f g g a a g g f e e d c
  % Sextakkord
  a g g f f e e d d e e f f g g a
  % Quartsextakkord
  f' g e f d e c d d c e d f e g f
  % Quintintervall
  % Grundstellung
  c c bf a a bf bf a a bf bf a a bf c c 
  % Sextakkord
  a a bf bf c c d d d d c c bf bf a a
  % Quartsextakkord
  f f e g f a g bf bf bf a a g g f f
  % Sextintervall
  % Grundstellung
  c d d d e e e f f e e e d d d c
  % Sextakkord
  a' f g e g a c a a c a g e g f a
  % Quartsextakkord
  d, d e e e f f f f f f e e e d d 
  % Septimintervall
  % Grundstellung
  c e f g bf c d f f d c bf g f e c
  % Sextakkord
  a' g f e d' c bf a a bf c d e, f g a
  % Quartsextakkord
  f a bf c e f g bf bf g f e c bf a f 
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  f d c bf g f e c c e f g bf c d f
  % Sextakkord
  d e f g a bf c d d c bf a g f e d
  % Quartsextakkord
  bf g d' bf f' d a' f f a d, f bf, d g, bf
  % Terzintervall
  % Grundstellung
  f' e e e d d d c c d d d e e e f
  % Sextakkord
  d' c a g e d bf a a bf d e g a c d
  % Quartsextakkord
  bf a a a g g g f f g g g a a a bf
  % Quartintervall
  % Grundstellung
  f f g a a bf c c c c bf a a g f f
  % Sextakkord
  a d, g c, f bf, e a, a e' bf f' c g' d a'
  % Quartsextakkord
  bf bf a a g g f f f f g g a a bf bf 
  % Qutintintervall
  % Grundstellung
  f e d d c c d c c d c c d d e f
  % Sextakkord
  d a' e bf' f c' g d' d g, c f, bf e, a d,
  % Quartsextakkord
  bf a g bf  a c bf d d bf c a bf g a bf
  % Sextintervall
  % Grundstellung
  f f f g g g a a a a g g g f f f
  % Sextakkord
  d' bf d e c e f d d f e c e d bf d  
  % Quartsextakkord
  f, g g g a a a bf bf a a a g g g f
  % Septimintervall
  % Grundstellung
  f g a c d e g a a g e d c a g f 
  % Sextakkord
  d' c bf a g' f e d d e f g a, bf c d
  % Quartsextakkord
  bf c d f g a c d d c a g f d c bf
}

scoreCBass = \relative c, {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  f4 g a bf c d e f f e d c bf a g f
  \bar "||"
  % Sextakkord
  f4 g a bf c d e f f e d c bf a g f
  \bar "||"
  % Quartsextakkord
  f4 g a bf c d e f f e d c bf a g f
  \bar "||"
  % Terzintervall
  % Grundstellung
  f a c e g, bf d f f d bf g e' c a f
  \bar "||"
  % Sextakkord
  f a c e g, bf d f f d bf g e' c a f
  \bar "||"
  % Quartsextakkord
  f a c e g, bf d f f d bf g e' c a f
  \bar "||"
  % Quartintervall
  % Grundstellung
  f bf e a, d g, c f f c g d' a e' bf f
  \bar "||"
  % Sextakkord
  f bf e a, d g, c f f c g d' a e' bf f
  \bar "||"
  % Quartsextakkord
  f bf e a, d g, c f f c g d' a e' bf f
  \bar "||"
  % Quintintervall
  % Grundstellung
  f c' g d' a e' bf f' f bf, e a, d g, c f,
  \bar "||"
  % Sextakkord
  f c' g d' a e' bf f' f bf, e a, d g, c f,
  \bar "||"
  % Quartsextakkord
  f c' g d' a e' bf f' f bf, e a, d g, c f,
  \bar "||"
  % Sextintervall
  % Grundstellung
  f d' bf g e' c a f' f a, c e g, bf d f,
  \bar "||"
  % Sextakkord
  f d' bf g e' c a f' f a, c e g, bf d f,
  \bar "||"
  % Quartsextakkord
  f d' bf g e' c a f' f a, c e g, bf d f,
  \bar "||"
  % Septimintervall
  % Grundstellung
  f e' d c bf' a, g' f, f g' a, bf' c, d e f,
  \bar "|."
  % Sextakkord
  f e' d c bf' a, g' f, f g' a, bf' c, d e f,
  \bar "|."
  % Quartsextakkord
  f e' d c bf' a, g' f, f g' a, bf' c, d e f,
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
  f g:m a:m bf c d:m e:dim f f e:dim d:m c bf a:m g:m f
  % Sextakkord
  d:m/f e:dim/g f/a g:m/bf a:m/c bf/d c/e f f c/e bf/d a:m/c g:m/bf f/a e:dim/g d:m/f
  % Quartsextakkord
  bf/f c/g d:m/a e:dim/bf f/c g:m/d a:m/e bf/f bf/f a:m/e g:m/d f/c e:dim/bf d:m/a c/g bf/f
  % Terzintervall
  % Grundstellung
  f a:m c e:dim g:m bf d:m f f d:m bf g e:dim c a:m f
  % Sextakkord
  d:m/f f/a a:m/c c/e e:dim/g g:m/bf bf/d d:m/f d:m/f bf/d g:m/bf e:dim/g c/e a:m/c f/a d:m/f
  % Quartsextakkord
  bf/f d:m/a f/c a:m/e c/g e:dim/bf g:m/d bf/f bf/f g:m/d e:dim/bf c/g a:dim/e f/c d:m/a bf/f
  % Quartintervall
  % Grundstellung
  f bf e:dim a:m d:m g:m c f f c g:m d:m a:m e:dim bf f
  % Sextakkord
  d:m/f g:m/bf c/e f/a bf/d e:dim/g a:m/c d:m/f d:m/f a:m/c e:dim/g bf/d f/a c/e g:m/bf d:m/f
  % Quartsextakkord
  bf/f e:dim/bf a:m/e d:m/a g:m/d c/g f/c bf/f bf/f f/c c/g g:m/d d:m/a a:m/e e:dim/bf bf/f
  % Quintintervall
  % Grundstellung
  f c g d a e bf f f bf e a d g c f
  % Sextakkord
  d:m/f a:m/c e:dim/g bf/d f/a c/e g:m/bf d:m/f d:m/f g:m/bf c/e f/a bf/d e:dim/g a:m/c d:m/f
  % Quartsextakkord
  bf/f f/c c/g g:m/d d:m/a a:m/e e:dim/bf bf/f bf/f e:dim/bf a:m/e d:m/a g:m/d c/g f/c bf/f
  % Sextintervall
  % Grundstellung
  f d:m bf g:m e:dim c a:m f f a:m c e:dim g:m bf d:m f
  % Sextakkord
  d:m/f bf/d g:m/bf e:dim/g c/e a:m/c f/a d:m/f d:m/f f/a a:m/c c/e e:dim/g g:m/bf bf:/d d:m/f
  % Quartsextakkord
  bf/f g:m/d e:dim/bf c/g a:m/e f/c d:m/a bf/f bf/f d:m/a f/c a:m/e c/g e:dim/bf g:m/d bf/f
  % Septimintervall
  % Grundstellung
  f e:dim d:m c bf a:m g:m f f g:m a:m bf c d:m e:dim f  
  % Sextakkord
  d:m/f c/e bf/d a:m/c g:m/bf f/a e:dim/g d:m/f d:m/f e:dim/g f/a g:m/bf a:m/c bf/d c/e d:m/f  
  % Quartsextakkord
  bf/f a:m/e g:m/d f/c e:dim/bf d:m/a c/g bf/f bf/f c/g d:m/a e:dim/bf f/c g:m/d a:m/e bf/f  
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
  c^"Sekunde" e f f a bf bf c c c bf a f f e c
  c^"Terz" f g c e, f bf c c bf f e c' a f c
  c^"Quarte" f c' f, bf e, g c c g e bf' f c' f, c
  c^"Quinte" g e' bf' f c' f, c' c f, c' f, bf e, g c,
  c^"Sexte" bf' f e c' g f c' c f, g c e, f bf c,
  c^"Septime" c' bf a f f e c c e f f a bf bf c
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  f4 g a bf c d e f f e d c bf a g f
  \bar "||"
  f a c e g, bf d f f d bf g e' c a f
  \bar "||"
  f bf e a, d g, c f f c g d' a e' bf f
  \bar "||"
  f c' g d' a e' bf f' f bf, e a, d g, c f,
  \bar "||"
  f d' bf g e' c a f' f a, c e g, bf d f,
  \bar "||"
  f e' d c bf a g f f g a bf c d e f
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  a c c d f f g a
  a g f f d c c a
  a c e g c, d f a
  a f d c g' f c a
  a d g c, f c e a
  a e c f c g' d a
  a e' c f c g' d a'
  a d, g c, f c e a,
  a f' d c g' e c a'
  a c, e g c, d f a,
  a g' f f d c c a
  a c c d f f g a
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  f c f bf f bf g f
  f c bf' f bf f c f
  f f c c c bf' bf f
  f bf bf c, c f f f f bf c, f bf c, c f f c c bf' f c bf' f
  f c c bf' f c bf f' f bf c, f bf c, c f
  f bf bf c, c c f f f f c c c bf' bf f f c bf' f bf f c f f c f bf f bf g f
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
  f c f bf f bf e:dim/g f
  f c bf f bf f c f
  f f c c c bf bf f
  f bf bf c c f f f
  f bf c f bf c c f f c c bf f c bf f
  f c c bf f c bf f f bf c f bf c c f
  f bf bf c c c f f f f c c c bf bf f
  f c bf f bf f c f f c f bf f bf e:dim/g f
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