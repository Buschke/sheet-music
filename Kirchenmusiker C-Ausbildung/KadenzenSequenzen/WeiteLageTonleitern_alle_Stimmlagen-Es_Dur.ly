\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Tonleiter in Es-Dur in Intervallen"
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
  \key ef \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  ef4^"Sekunde" f g af bf c d ef ef d c bf af g f ef
  \bar "||"
  ef^"Terz" g bf d f, af c ef ef c af f d' bf g ef
  \bar "||"
  ef^"Quarte" af d g, c f, bf ef ef bf f c' g d' af ef
  \bar "||"
  ef^"Quinte" bf' f c' g d' af ef' ef af, d g, c f, bf ef,
  \bar "||"
  ef^"Sexte" c' af f d' bf g ef' ef g, bf d f, af c ef,
  \bar "||"
  ef^"Septime" d' c bf af g f ef ef f g af bf c d ef
  \bar "|."
}

scoreAAlto = \relative c'' {
  \global
  % Music follows here.
  g bf bf c ef ef f g
  g f ef ef c bf bf g
  g bf d f bf, c ef g
  g ef c bf f' ef bf g
  g c f bf, ef bf d g
  g d bf ef bf f' c g
  g d' bf ef bf f' c g'
  g c, f bf, ef bf d g,
  g ef' c bf f' d bf g'
  g bf, d f bf, c ef g,
  g f' ef ef c bf bf g
  g bf bf c ef ef f g
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  bf d ef ef g af af bf
  bf bf af g ef ef d bf
  bf ef f bf d, ef af bf
  bf af ef d bf' g ef bf
  bf ef bf' ef, af d, f bf
  bf f d af' ef bf' ef, bf
  bf f d' af' ef bf' ef, bf'
  bf ef, bf' ef, af d, f bf,
  bf af' ef d bf' f ef bf'
  bf ef, f bf d, ef af bf,
  bf bf' af g ef ef d bf
  bf d ef ef g af af bf
}

scoreABass = \relative c {
  \global
  % Music follows here.
  ef bf ef af ef af f ef
  ef bf af' ef af ef bf ef
  ef ef bf bf bf af' af ef
  ef af af bf, bf ef ef ef ef af bf, ef af bf, bf ef ef bf bf af' ef bf af' ef
  ef bf bf af' ef bf af ef' ef af bf, ef af bf, bf ef
  ef af af bf, bf bf ef ef ef ef bf bf bf af' af ef ef bf af' ef af ef bf ef ef bf ef af ef af f ef
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
  ef bf ef af ef af d:dim/f ef
  ef bf af ef af ef bf ef
  ef ef bf bf bf af af ef
  ef af af bf bf ef ef ef
  ef af bf ef af bf bf ef ef bf bf af ef bf af ef
  ef bf bf af ef bf af ef ef af bf ef af bf bf ef
  ef af af bf bf bf ef ef ef ef bf bf bf af af ef
  ef bf af ef af ef bf ef ef bf ef af ef af d:dim/f ef
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
  g^"Sekunde" bf bf c ef ef f g g f ef ef c bf bf g
  g^"Terz" bf d f bf, c ef g g ef c bf f' ef bf g
  g^"Quarte" c f bf, ef bf d g g d bf ef bf f' c g
  g^"Quinte" d' bf ef bf f' c g' g c, f bf, ef bf d g,
  g^"Sexte" ef' c bf f' d bf g' g bf, d f bf, c ef g,
  g^"Septime" f' ef ef c bf bf g g bf bf c ef ef f g
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  bf d ef ef g af af bf
  bf bf af g ef ef d bf
  bf ef f bf d, ef af bf
  bf af ef d bf' g ef bf
  bf ef bf' ef, af d, f bf
  bf f d af' ef bf' ef, bf
  bf f d' af' ef bf' ef, bf'
  bf ef, bf' ef, af d, f bf,
  bf af' ef d bf' f ef bf'
  bf ef, f bf d, ef af bf,
  bf bf' af g ef ef d bf
  bf d ef ef g af af bf
}

scoreBTenor = \relative c {
  \global
  % Music follows here.
  ef4 f g af bf c d ef ef d c bf af g f ef
  \bar "||"
  ef g bf d f, af c ef ef c af f d' bf g ef
  \bar "||"
  ef af d g, c f, bf ef ef bf f c' g d' af ef
  \bar "||"
  ef bf' f c' g d' af ef' ef af, d g, c f, bf ef,
  \bar "||"
  ef c' af f d' bf g ef' ef g, bf d f, af c ef,
  \bar "||"
  ef d' c bf af g f ef ef f g af bf c d ef
  \bar "|."
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  ef bf ef af ef af f ef
  ef bf af' ef af ef bf ef
  ef ef bf bf bf af' af ef
  ef af af bf, bf ef ef ef ef af bf, ef af bf, bf ef ef bf bf af' ef bf af' ef
  ef bf bf af' ef bf af ef' ef af bf, ef af bf, bf ef
  ef af af bf, bf bf ef ef ef ef bf bf bf af' af ef ef bf af' ef af ef bf ef ef bf ef af ef af f ef
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
  ef bf ef af ef af d:dim/f ef
  ef bf af ef af ef bf ef
  ef ef bf bf bf af af ef
  ef af af bf bf ef ef ef
  ef af bf ef af bf bf ef ef bf bf af ef bf af ef
  ef bf bf af ef bf af ef ef af bf ef af bf bf ef
  ef af af bf bf bf ef ef ef ef bf bf bf af af ef
  ef bf af ef af ef bf ef ef bf ef af ef af d:dim/f ef
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
  g^"Grundstellung Sekunde" f d c bf g f ef ef f g bf c d f g
  % Sextakkord
  c,^"Sextakkord Sekunde" af ef' c g' ef bf' g g bf ef, g c, ef af, c
  % Quartsextakkord
  af^"Quartsextakkord Sekunde" bf c d ef f g af af g f ef d c bf af
  % Terzintervall
  % Grundstellung
  g'^"Grundstellung Terz" g f f f ef ef ef ef ef ef f f f g g
  % Sextakkord
  c^"Sextakkord Terz" ef, g bf, d f, af c, c af' f d' bf g' ef c'
  % Quartsextakkord
  c^"Quartsextakkord Terz" c bf bf bf af af af af af af bf bf bf c c
  % Quartintervall
  % Grundstellung
  g^"Grundstellung Quarte" af af bf c c d ef ef d c c bf af af g
  % Sextakkord
  c,^"Sextakkord Quarte" c bf bf af af g g g g af af bf bf c c
  c'^"Quartsextakkord Quarte" d bf c af bf g af af g bf af c bf d c
  % Quintintervall
  % Grundstellung
  g^"Grundstellung Quinte" f f ef d d ef ef ef ef d d ef f f g
  % Sextakkord
  c,^"Sextakkord Quinte" d d ef ef f f g g f f ef ef d d c
  c^"Quartsextakkord Quinte" bf bf c c d d ef ef d d c c bf bf c
  % Sextintervall
  % Grundstellung
  g^"Grundstellung Sexte" g af af af bf bf bf bf bf bf af af af g g
  % Sextakkord
  c^"Sextakkord Sexte" af f af bf g ef' g, g ef' g, bf af f af g
  af^"Quartsextakkord Sexte" af af bf bf bf c c c c bf bf bf af af af
  % Septimintervall
  % Grundstellung
  g^"Grundstellung Septime" af c d ef g af bf bf af g ef d c af g
  % Sextakkord
  c^"Sextakkord Septime" f, af d, f' bf, d g, g d' bf f' d, af' f c'
  c^"Quartsextakkord Septime" d f g af c d ef ef d c af g f d c
}

scoreCAlto = \relative c'' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  bf af g ef d c af g g af c d ef g af bf
  % Sextakkord
  g af bf c d ef f g g f ef d c bf af g
  % Quartsextakkord
  c, d ef f g af bf c c bf af g f ef d c
  % Terzintervall
  % Grundstellung
  bf' bf bf af af af g g g g af af bf bf bf bf
  % Sextakkord
  g' ef d bf af f ef c c ef f af bf d ef g
  % Quartsextakkord
  ef ef ef d d d c c c c d d d ef ef ef
  % Quartintervall
  % Grundstellung
  bf c d d ef f f g g f f ef d d c bf
  % Sextakkord
  g f f ef ef d d c c d d ef ef f f g
  % Quartsextakkord
  ef' f d ef c d bf c c bf d c ef d f ef
  % Quintintervall
  % Grundstellung
  bf bf af g g af af g g af af g g af bf bf 
  % Sextakkord
  g g af af bf bf c c c c bf bf af af g g
  % Quartsextakkord
  ef ef d f ef g f af af af g g f f ef ef
  % Sextintervall
  % Grundstellung
  bf c c c d d d ef ef d d d c c c bf
  % Sextakkord
  g' ef f d f g bf g g bf g f d f ef g
  % Quartsextakkord
  c, c d d d ef ef ef ef ef ef d d d c c 
  % Septimintervall
  % Grundstellung
  bf d ef f af bf c ef ef c bf af f ef d bf
  % Sextakkord
  g' f ef d c' bf af g g af bf c d, ef f g
  % Quartsextakkord
  ef g af bf d ef f af af f ef d bf af g ef 
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  ef c bf af f ef d bf bf d ef f af bf c ef
  % Sextakkord
  c d ef f g af bf c c bf af g f ef d c
  % Quartsextakkord
  af f c' af ef' c g' ef ef g c, ef af, c f, af
  % Terzintervall
  % Grundstellung
  ef' d d d c c c bf bf c c c d d d ef
  % Sextakkord
  c' bf g f d c af g g af c d f g bf c
  % Quartsextakkord
  af g g g f f f ef ef f f f g g g af
  % Quartintervall
  % Grundstellung
  ef ef f g g af bf bf bf bf af g g f ef ef
  % Sextakkord
  g c, f bf, ef af, d g, g d' af ef' bf f' c g'
  % Quartsextakkord
  af af g g f f ef ef ef ef f f g g af af 
  % Qutintintervall
  % Grundstellung
  ef d c c bf bf c bf bf c bf bf c c d ef
  % Sextakkord
  c g' d af' ef bf' f c' c f, bf ef, af d, g c,
  % Quartsextakkord
  af g f af  g bf af c c af bf g af f g af
  % Sextintervall
  % Grundstellung
  ef ef ef f f f g g g g f f f ef ef ef
  % Sextakkord
  c' af c d bf d ef c c ef d bf d c af c  
  % Quartsextakkord
  ef, f f f g g g af af g g g f f f ef
  % Septimintervall
  % Grundstellung
  ef f g bf c d f g g f d c bf g f ef 
  % Sextakkord
  c' bf af g f' ef d c c d ef f g, af bf c
  % Quartsextakkord
  af bf c ef f g bf c c bf g f ef c bf af
}

scoreCBass = \relative c, {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  ef4 f g af bf c d ef ef d c bf af g f ef
  \bar "||"
  % Sextakkord
  ef4 f g af bf c d ef ef d c bf af g f ef
  \bar "||"
  % Quartsextakkord
  ef4 f g af bf c d ef ef d c bf af g f ef
  \bar "||"
  % Terzintervall
  % Grundstellung
  ef g bf d f, af c ef ef c af f d' bf g ef
  \bar "||"
  % Sextakkord
  ef g bf d f, af c ef ef c af f d' bf g ef
  \bar "||"
  % Quartsextakkord
  ef g bf d f, af c ef ef c af f d' bf g ef
  \bar "||"
  % Quartintervall
  % Grundstellung
  ef af d g, c f, bf ef ef bf f c' g d' af ef
  \bar "||"
  % Sextakkord
  ef af d g, c f, bf ef ef bf f c' g d' af ef
  \bar "||"
  % Quartsextakkord
  ef af d g, c f, bf ef ef bf f c' g d' af ef
  \bar "||"
  % Quintintervall
  % Grundstellung
  ef bf' f c' g d' af ef' ef af, d g, c f, bf ef,
  \bar "||"
  % Sextakkord
  ef bf' f c' g d' af ef' ef af, d g, c f, bf ef,
  \bar "||"
  % Quartsextakkord
  ef bf' f c' g d' af ef' ef af, d g, c f, bf ef,
  \bar "||"
  % Sextintervall
  % Grundstellung
  ef c' af f d' bf g ef' ef g, bf d f, af c ef,
  \bar "||"
  % Sextakkord
  ef c' af f d' bf g ef' ef g, bf d f, af c ef,
  \bar "||"
  % Quartsextakkord
  ef c' af f d' bf g ef' ef g, bf d f, af c ef,
  \bar "||"
  % Septimintervall
  % Grundstellung
  ef d' c bf af' g, f' ef, ef f' g, af' bf, c d ef,
  \bar "|."
  % Sextakkord
  ef d' c bf af' g, f' ef, ef f' g, af' bf, c d ef,
  \bar "|."
  % Quartsextakkord
  ef d' c bf af' g, f' ef, ef f' g, af' bf, c d ef,
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
  ef f:m g:m af bf c:m d:dim ef ef d:dim c:m bf af g:m f:m ef
  % Sextakkord
  c:m/ef d:dim/f ef/g f:m/af g:m/bf af/c bf/d ef ef bf/d af/c g:m/bf f:m/af ef/g d:dim/f c:m/ef
  % Quartsextakkord
  af/ef bf/f c:m/g d:dim/af ef/bf f:m/c g:m/d af/ef af/ef g:m/d f:m/c ef/bf d:dim/af c:m/g bf/f af/ef
  % Terzintervall
  % Grundstellung
  ef g:m bf d:dim f:m af c:m ef ef c:m af f d:dim bf g:m ef
  % Sextakkord
  c:m/ef ef/g g:m/bf bf/d d:dim/f f:m/af af/c c:m/ef c:m/ef af/c f:m/af d:dim/f bf/d g:m/bf ef/g c:m/ef
  % Quartsextakkord
  af/ef c:m/g ef/bf g:m/d bf/f d:dim/af f:m/c af/ef af/ef f:m/c d:dim/af bf/f g:dim/d ef/bf c:m/g af/ef
  % Quartintervall
  % Grundstellung
  ef af d:dim g:m c:m f:m bf ef ef bf f:m c:m g:m d:dim af ef
  % Sextakkord
  c:m/ef f:m/af bf/d ef/g af/c d:dim/f g:m/bf c:m/ef c:m/ef g:m/bf d:dim/f af/c ef/g bf/d f:m/af c:m/ef
  % Quartsextakkord
  af/ef d:dim/af g:m/d c:m/g f:m/c bf/f ef/bf af/ef af/ef ef/bf bf/f f:m/c c:m/g g:m/d d:dim/af af/ef
  % Quintintervall
  % Grundstellung
  ef bf f c g d af ef ef af d g c f bf ef
  % Sextakkord
  c:m/ef g:m/bf d:dim/f af/c ef/g bf/d f:m/af c:m/ef c:m/ef f:m/af bf/d ef/g af/c d:dim/f g:m/bf c:m/ef
  % Quartsextakkord
  af/ef ef/bf bf/f f:m/c c:m/g g:m/d d:dim/af af/ef af/ef d:dim/af g:m/d c:m/g f:m/c bf/f ef/bf af/ef
  % Sextintervall
  % Grundstellung
  ef c:m af f:m d:dim bf g:m ef ef g:m bf d:dim f:m af c:m ef
  % Sextakkord
  c:m/ef af/c f:m/af d:dim/f bf/d g:m/bf ef/g c:m/ef c:m/ef ef/g g:m/bf bf/d d:dim/f f:m/af af:/c c:m/ef
  % Quartsextakkord
  af/ef f:m/c d:dim/af bf/f g:m/d ef/bf c:m/g af/ef af/ef c:m/g ef/bf g:m/d bf/f d:dim/af f:m/c af/ef
  % Septimintervall
  % Grundstellung
  ef d:dim c:m bf af g:m f:m ef ef f:m g:m af bf c:m d:dim ef  
  % Sextakkord
  c:m/ef bf/d af/c g:m/bf f:m/af ef/g d:dim/f c:m/ef c:m/ef d:dim/f ef/g f:m/af g:m/bf af/c bf/d c:m/ef  
  % Quartsextakkord
  af/ef g:m/d f:m/c ef/bf d:dim/af c:m/g bf/f af/ef af/ef bf/f c:m/g d:dim/af ef/bf f:m/c g:m/d af/ef  
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
  bf^"Sekunde" d ef ef g af af bf bf bf af g ef ef d bf
  bf^"Terz" ef f bf d, ef af bf bf af ef d bf' g ef bf
  bf^"Quarte" ef bf' ef, af d, f bf bf f d af' ef bf' ef, bf
  bf^"Quinte" f d' af' ef bf' ef, bf' bf ef, bf' ef, af d, f bf,
  bf^"Sexte" af' ef d bf' f ef bf' bf ef, f bf d, ef af bf,
  bf^"Septime" bf' af g ef ef d bf bf d ef ef g af af bf
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  ef4 f g af bf c d ef ef d c bf af g f ef
  \bar "||"
  ef g bf d f, af c ef ef c af f d' bf g ef
  \bar "||"
  ef af d g, c f, bf ef ef bf f c' g d' af ef
  \bar "||"
  ef bf' f c' g d' af ef' ef af, d g, c f, bf ef,
  \bar "||"
  ef c' af f d' bf g ef' ef g, bf d f, af c ef,
  \bar "||"
  ef d' c bf af g f ef ef f g af bf c d ef
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  g bf bf c ef ef f g
  g f ef ef c bf bf g
  g bf d f bf, c ef g
  g ef c bf f' ef bf g
  g c f bf, ef bf d g
  g d bf ef bf f' c g
  g d' bf ef bf f' c g'
  g c, f bf, ef bf d g,
  g ef' c bf f' d bf g'
  g bf, d f bf, c ef g,
  g f' ef ef c bf bf g
  g bf bf c ef ef f g
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  ef bf ef af ef af f ef
  ef bf af' ef af ef bf ef
  ef ef bf bf bf af' af ef
  ef af af bf, bf ef ef ef ef af bf, ef af bf, bf ef ef bf bf af' ef bf af' ef
  ef bf bf af' ef bf af ef' ef af bf, ef af bf, bf ef
  ef af af bf, bf bf ef ef ef ef bf bf bf af' af ef ef bf af' ef af ef bf ef ef bf ef af ef af f ef
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
  ef bf ef af ef af d:dim/f ef
  ef bf af ef af ef bf ef
  ef ef bf bf bf af af ef
  ef af af bf bf ef ef ef
  ef af bf ef af bf bf ef ef bf bf af ef bf af ef
  ef bf bf af ef bf af ef ef af bf ef af bf bf ef
  ef af af bf bf bf ef ef ef ef bf bf bf af af ef
  ef bf af ef af ef bf ef ef bf ef af ef af d:dim/f ef
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