\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Tonleiter in B-Dur in Intervallen"
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
  \key bf \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c''' {
  \global
  % Music follows here.
  bf4^"Sekunde" c d ef f g a bf bf a g f ef d c bf
  \bar "||"
  bf^"Terz" d f a c, ef g bf bf g ef c a' f d bf
  \bar "||"
  bf^"Quarte" ef a d, g c, f bf bf f c g' d a' ef bf
  \bar "||"
  bf^"Quinte" f' c g' d a' ef bf' bf ef, a d, g c, f bf,
  \bar "||"
  bf^"Sexte" g' ef c a' f d bf' bf d, f a c, ef g bf,
  \bar "||"
  bf^"Septime" a' g f ef d c bf bf c d ef f g a bf
  \bar "|."
}

scoreAAlto = \relative c'' {
  \global
  % Music follows here.
  d f f g bf bf c d
  d c bf bf g f f d
  d f a c f, g bf d
  d bf g f c' bf f d
  d g c f, bf f a d
  d a f bf f c' g d
  d a' f bf f c' g d'
  d g, c f, bf f a d,
  d bf' g f c' a f d'
  d f, a c f, g bf d,
  d c' bf bf g f f d
  d f f g bf bf c d
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  f a bf bf d ef ef f
  f f ef d bf bf a f
  f bf c f a, bf ef f
  f ef bf a f' d bf f
  f bf f' bf, ef a, c f
  f c a ef' bf f' bf, f
  f c a' ef' bf f' bf, f'
  f bf, f' bf, ef a, c f,
  f ef' bf a f' c bf f'
  f bf, c f a, bf ef f,
  f f' ef d bf bf a f
  f a bf bf d ef ef f
}

scoreABass = \relative c' {
  \global
  % Music follows here.
  bf f bf ef bf ef c bf
  bf f ef' bf ef bf f bf
  bf bf f f f ef' ef bf
  bf ef ef f, f bf bf bf bf ef f, bf ef f, f bf bf f f ef' bf f ef' bf
  bf f f ef' bf f ef bf' bf ef f, bf ef f, f bf
  bf ef ef f, f f bf bf bf bf f f f ef' ef bf bf f ef' bf ef bf f bf bf f bf ef bf ef c bf
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
  bf f bf ef bf ef a:dim/c bf
  bf f ef bf ef bf f bf
  bf bf f f f ef ef bf
  bf ef ef f f bf bf bf
  bf ef f bf ef f f bf bf f f ef bf f ef bf
  bf f f ef bf f ef bf bf ef f bf ef f f bf
  bf ef ef f f f bf bf bf bf f f f ef ef bf
  bf f ef bf ef bf f bf bf f bf ef bf ef a:dim/c bf
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
  d^"Sekunde" f f g bf bf c d d c bf bf g f f d
  d^"Terz" f a c f, g bf d d bf g f c' bf f d
  d^"Quarte" g c f, bf f a d d a f bf f c' g d
  d^"Quinte" a' f bf f c' g d' d g, c f, bf f a d,
  d^"Sexte" bf' g f c' a f d' d f, a c f, g bf d,
  d^"Septime" c' bf bf g f f d d f f g bf bf c d
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  f a bf bf d ef ef f
  f f ef d bf bf a f
  f bf c f a, bf ef f
  f ef bf a f' d bf f
  f bf f' bf, ef a, c f
  f c a ef' bf f' bf, f
  f c a' ef' bf f' bf, f'
  f bf, f' bf, ef a, c f,
  f ef' bf a f' c bf f'
  f bf, c f a, bf ef f,
  f f' ef d bf bf a f
  f a bf bf d ef ef f
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  bf4 c d ef f g a bf bf a g f ef d c bf
  \bar "||"
  bf d f a c, ef g bf bf g ef c a' f d bf
  \bar "||"
  bf ef a d, g c, f bf bf f c g' d a' ef bf
  \bar "||"
  bf f' c g' d a' ef bf' bf ef, a d, g c, f bf,
  \bar "||"
  bf g' ef c a' f d bf' bf d, f a c, ef g bf,
  \bar "||"
  bf a' g f ef d c bf bf c d ef f g a bf
  \bar "|."
}

scoreBBass = \relative c' {
  \global
  % Music follows here.
  bf f bf ef bf ef c bf
  bf f ef' bf ef bf f bf
  bf bf f f f ef' ef bf
  bf ef ef f, f bf bf bf bf ef f, bf ef f, f bf bf f f ef' bf f ef' bf
  bf f f ef' bf f ef bf' bf ef f, bf ef f, f bf
  bf ef ef f, f f bf bf bf bf f f f ef' ef bf bf f ef' bf ef bf f bf bf f bf ef bf ef c bf
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
  bf f bf ef bf ef a:dim/c bf
  bf f ef bf ef bf f bf
  bf bf f f f ef ef bf
  bf ef ef f f bf bf bf
  bf ef f bf ef f f bf bf f f ef bf f ef bf
  bf f f ef bf f ef bf bf ef f bf ef f f bf
  bf ef ef f f f bf bf bf bf f f f ef ef bf
  bf f ef bf ef bf f bf bf f bf ef bf ef a:dim/c bf
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
  d^"Grundstellung Sekunde" c a g f d c bf bf c d f g a c d
  % Sextakkord
  g,^"Sextakkord Sekunde" ef bf' g d' bf f' d d f bf, d g, bf ef, g
  % Quartsextakkord
  ef^"Quartsextakkord Sekunde" f g a bf c d ef ef d c bf a g f ef
  % Terzintervall
  % Grundstellung
  d'^"Grundstellung Terz" d c c c bf bf bf bf bf bf c c c d d
  % Sextakkord
  g^"Sextakkord Terz" bf, d f, a c, ef g, g ef' c a' f d' bf g'
  % Quartsextakkord
  g^"Quartsextakkord Terz" g f f f ef ef ef ef ef ef f f f g g
  % Quartintervall
  % Grundstellung
  d^"Grundstellung Quarte" ef ef f g g a bf bf a g g f ef ef d
  % Sextakkord
  g,^"Sextakkord Quarte" g f f ef ef d d d d ef ef f f g g
  g'^"Quartsextakkord Quarte" a f g ef f d ef ef d f ef g f a g
  % Quintintervall
  % Grundstellung
  d^"Grundstellung Quinte" c c bf a a bf bf bf bf a a bf c c d
  % Sextakkord
  g,^"Sextakkord Quinte" a a bf bf c c d d c c bf bf a a g
  g^"Quartsextakkord Quinte" f f g g a a bf bf a a g g f f g
  % Sextintervall
  % Grundstellung
  d^"Grundstellung Sexte" d ef ef ef f f f f f f ef ef ef d d
  % Sextakkord
  g^"Sextakkord Sexte" ef c ef f d bf' d, d bf' d, f ef c ef d
  ef^"Quartsextakkord Sexte" ef ef f f f g g g g f f f ef ef ef
  % Septimintervall
  % Grundstellung
  d^"Grundstellung Septime" ef g a bf d ef f f ef d bf a g ef d
  % Sextakkord
  g^"Sextakkord Septime" c, ef a, c' f, a d, d a' f c' a, ef' c g'
  g^"Quartsextakkord Septime" a c d ef g a bf bf a g ef d c a g
}

scoreCAlto = \relative c'' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  f ef d bf a g ef d d ef g a bf d ef f
  % Sextakkord
  d ef f g a bf c d d c bf a g f ef d
  % Quartsextakkord
  g, a bf c d ef f g g f ef d c bf a g
  % Terzintervall
  % Grundstellung
  f' f f ef ef ef d d d d ef ef f f f f
  % Sextakkord
  d' bf a f ef c bf g g bf c ef f a bf d
  % Quartsextakkord
  bf bf bf a a a g g g g a a a bf bf bf
  % Quartintervall
  % Grundstellung
  f g a a bf c c d d c c bf a a g f
  % Sextakkord
  d c c bf bf a a g g a a bf bf c c d
  % Quartsextakkord
  bf' c a bf g a f g g f a g bf a c bf
  % Quintintervall
  % Grundstellung
  f f ef d d ef ef d d ef ef d d ef f f 
  % Sextakkord
  d d ef ef f f g g g g f f ef ef d d
  % Quartsextakkord
  bf bf a c bf d c ef ef ef d d c c bf bf
  % Sextintervall
  % Grundstellung
  f g g g a a a bf bf a a a g g g f
  % Sextakkord
  d' bf c a c d f d d f d c a c bf d
  % Quartsextakkord
  g, g a a a bf bf bf bf bf bf a a a g g 
  % Septimintervall
  % Grundstellung
  f a bf c ef f g bf bf g f ef c bf a f
  % Sextakkord
  d' c bf a g' f ef d d ef f g a, bf c d
  % Quartsextakkord
  bf d ef f a bf c ef ef c bf a f ef d bf 
}

scoreCTenor = \relative c'' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  bf g f ef c bf a f f a bf c ef f g bf
  % Sextakkord
  g a bf c d ef f g g f ef d c bf a g
  % Quartsextakkord
  ef c g' ef bf' g d' bf bf d g, bf ef, g c, ef
  % Terzintervall
  % Grundstellung
  bf' a a a g g g f f g g g a a a bf
  % Sextakkord
  g' f d c a g ef d d ef g a c d f g
  % Quartsextakkord
  ef d d d c c c bf bf c c c d d d ef
  % Quartintervall
  % Grundstellung
  bf bf c d d ef f f f f ef d d c bf bf
  % Sextakkord
  d g, c f, bf ef, a d, d a' ef bf' f c' g d'
  % Quartsextakkord
  ef ef d d c c bf bf bf bf c c d d ef ef 
  % Qutintintervall
  % Grundstellung
  bf a g g f f g f f g f f g g a bf
  % Sextakkord
  g d' a ef' bf f' c g' g c, f bf, ef a, d g,
  % Quartsextakkord
  ef d c ef  d f ef g g ef f d ef c d ef
  % Sextintervall
  % Grundstellung
  bf bf bf c c c d d d d c c c bf bf bf
  % Sextakkord
  g' ef g a f a bf g g bf a f a g ef g  
  % Quartsextakkord
  bf, c c c d d d ef ef d d d c c c bf
  % Septimintervall
  % Grundstellung
  bf c d f g a c d d c a g f d c bf 
  % Sextakkord
  g' f ef d c' bf a g g a bf c d, ef f g
  % Quartsextakkord
  ef f g bf c d f g g f d c bf g f ef
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  bf4 c d ef f g a bf bf a g f ef d c bf
  \bar "||"
  % Sextakkord
  bf4 c d ef f g a bf bf a g f ef d c bf
  \bar "||"
  % Quartsextakkord
  bf4 c d ef f g a bf bf a g f ef d c bf
  \bar "||"
  % Terzintervall
  % Grundstellung
  bf d f a c, ef g bf bf g ef c a' f d bf
  \bar "||"
  % Sextakkord
  bf d f a c, ef g bf bf g ef c a' f d bf
  \bar "||"
  % Quartsextakkord
  bf d f a c, ef g bf bf g ef c a' f d bf
  \bar "||"
  % Quartintervall
  % Grundstellung
  bf ef a d, g c, f bf bf f c g' d a' ef bf
  \bar "||"
  % Sextakkord
  bf ef a d, g c, f bf bf f c g' d a' ef bf
  \bar "||"
  % Quartsextakkord
  bf ef a d, g c, f bf bf f c g' d a' ef bf
  \bar "||"
  % Quintintervall
  % Grundstellung
  bf f' c g' d a' ef bf' bf ef, a d, g c, f bf,
  \bar "||"
  % Sextakkord
  bf f' c g' d a' ef bf' bf ef, a d, g c, f bf,
  \bar "||"
  % Quartsextakkord
  bf f' c g' d a' ef bf' bf ef, a d, g c, f bf,
  \bar "||"
  % Sextintervall
  % Grundstellung
  bf g' ef c a' f d bf' bf d, f a c, ef g bf,
  \bar "||"
  % Sextakkord
  bf g' ef c a' f d bf' bf d, f a c, ef g bf,
  \bar "||"
  % Quartsextakkord
  bf g' ef c a' f d bf' bf d, f a c, ef g bf,
  \bar "||"
  % Septimintervall
  % Grundstellung
  bf a' g f ef' d, c' bf, bf c' d, ef' f, g a bf,
  \bar "|."
  % Sextakkord
  bf a' g f ef' d, c' bf, bf c' d, ef' f, g a bf,
  \bar "|."
  % Quartsextakkord
  bf a' g f ef' d, c' bf, bf c' d, ef' f, g a bf,
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
  bf c:m d:m ef f g:m a:dim bf bf a:dim g:m f ef d:m c:m bf
  % Sextakkord
  g:m/bf a:dim/c bf/d c:m/ef d:m/f ef/g f/a bf bf f/a ef/g d:m/f c:m/ef bf/d a:dim/c g:m/bf
  % Quartsextakkord
  ef/bf f/c g:m/d a:dim/ef bf/f c:m/g d:m/a ef/bf ef/bf d:m/a c:m/g bf/f a:dim/ef g:m/d f/c ef/bf
  % Terzintervall
  % Grundstellung
  bf d:m f a:dim c:m ef g:m bf bf g:m ef c a:dim f d:m bf
  % Sextakkord
  g:m/bf bf/d d:m/f f/a a:dim/c c:m/ef ef/g g:m/bf g:m/bf ef/g c:m/ef a:dim/c f/a d:m/f bf/d g:m/bf
  % Quartsextakkord
  ef/bf g:m/d bf/f d:m/a f/c a:dim/ef c:m/g ef/bf ef/bf c:m/g a:dim/ef f/c d:dim/a bf/f g:m/d ef/bf
  % Quartintervall
  % Grundstellung
  bf ef a:dim d:m g:m c:m f bf bf f c:m g:m d:m a:dim ef bf
  % Sextakkord
  g:m/bf c:m/ef f/a bf/d ef/g a:dim/c d:m/f g:m/bf g:m/bf d:m/f a:dim/c ef/g bf/d f/a c:m/ef g:m/bf
  % Quartsextakkord
  ef/bf a:dim/ef d:m/a g:m/d c:m/g f/c bf/f ef/bf ef/bf bf/f f/c c:m/g g:m/d d:m/a a:dim/ef ef/bf
  % Quintintervall
  % Grundstellung
  bf f c g d a ef bf bf ef a d g c f bf
  % Sextakkord
  g:m/bf d:m/f a:dim/c ef/g bf/d f/a c:m/ef g:m/bf g:m/bf c:m/ef f/a bf/d ef/g a:dim/c d:m/f g:m/bf
  % Quartsextakkord
  ef/bf bf/f f/c c:m/g g:m/d d:m/a a:dim/ef ef/bf ef/bf a:dim/ef d:m/a g:m/d c:m/g f/c bf/f ef/bf
  % Sextintervall
  % Grundstellung
  bf g:m ef c:m a:dim f d:m bf bf d:m f a:dim c:m ef g:m bf
  % Sextakkord
  g:m/bf ef/g c:m/ef a:dim/c f/a d:m/f bf/d g:m/bf g:m/bf bf/d d:m/f f/a a:dim/c c:m/ef ef:/g g:m/bf
  % Quartsextakkord
  ef/bf c:m/g a:dim/ef f/c d:m/a bf/f g:m/d ef/bf ef/bf g:m/d bf/f d:m/a f/c a:dim/ef c:m/g ef/bf
  % Septimintervall
  % Grundstellung
  bf a:dim g:m f ef d:m c:m bf bf c:m d:m ef f g:m a:dim bf  
  % Sextakkord
  g:m/bf f/a ef/g d:m/f c:m/ef bf/d a:dim/c g:m/bf g:m/bf a:dim/c bf/d c:m/ef d:m/f ef/g f/a g:m/bf  
  % Quartsextakkord
  ef/bf d:m/a c:m/g bf/f a:dim/ef g:m/d f/c ef/bf ef/bf f/c g:m/d a:dim/ef bf/f c:m/g d:m/a ef/bf  
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
  f^"Sekunde" a bf bf d ef ef f f f ef d bf bf a f
  f^"Terz" bf c f a, bf ef f f ef bf a f' d bf f
  f^"Quarte" bf f' bf, ef a, c f f c a ef' bf f' bf, f
  f^"Quinte" c a' ef' bf f' bf, f' f bf, f' bf, ef a, c f,
  f^"Sexte" ef' bf a f' c bf f' f bf, c f a, bf ef f,
  f^"Septime" f' ef d bf bf a f f a bf bf d ef ef f
}

scoreDAlto = \relative c'' {
  \global
  % Music follows here.
  bf4 c d ef f g a bf bf a g f ef d c bf
  \bar "||"
  bf d f a c, ef g bf bf g ef c a' f d bf
  \bar "||"
  bf ef a d, g c, f bf bf f c g' d a' ef bf
  \bar "||"
  bf f' c g' d a' ef bf' bf ef, a d, g c, f bf,
  \bar "||"
  bf g' ef c a' f d bf' bf d, f a c, ef g bf,
  \bar "||"
  bf a' g f ef d c bf bf c d ef f g a bf
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  d f f g bf bf c d
  d c bf bf g f f d
  d f a c f, g bf d
  d bf g f c' bf f d
  d g c f, bf f a d
  d a f bf f c' g d
  d a' f bf f c' g d'
  d g, c f, bf f a d,
  d bf' g f c' a f d'
  d f, a c f, g bf d,
  d c' bf bf g f f d
  d f f g bf bf c d
}

scoreDBass = \relative c' {
  \global
  % Music follows here.
  bf f bf ef bf ef c bf
  bf f ef' bf ef bf f bf
  bf bf f f f ef' ef bf
  bf ef ef f, f bf bf bf bf ef f, bf ef f, f bf bf f f ef' bf f ef' bf
  bf f f ef' bf f ef bf' bf ef f, bf ef f, f bf
  bf ef ef f, f f bf bf bf bf f f f ef' ef bf bf f ef' bf ef bf f bf bf f bf ef bf ef c bf
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
  bf f bf ef bf ef a:dim/c bf
  bf f ef bf ef bf f bf
  bf bf f f f ef ef bf
  bf ef ef f f bf bf bf
  bf ef f bf ef f f bf bf f f ef bf f ef bf
  bf f f ef bf f ef bf bf ef f bf ef f f bf
  bf ef ef f f f bf bf bf bf f f f ef ef bf
  bf f ef bf ef bf f bf bf f bf ef bf ef a:dim/c bf
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