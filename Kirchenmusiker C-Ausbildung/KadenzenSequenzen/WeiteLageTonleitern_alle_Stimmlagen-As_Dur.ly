\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Tonleiter in As-Dur in Intervallen"
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
  \key af \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c''' {
  \global
  % Music follows here.
  af4^"Sekunde" bf c df ef f g af af g f ef df c bf af
  \bar "||"
  af^"Terz" c ef g bf, df f af af f df bf g' ef c af
  \bar "||"
  af^"Quarte" df g c, f bf, ef af af ef bf f' c g' df af
  \bar "||"
  af^"Quinte" ef' bf f' c g' df af' af df, g c, f bf, ef af,
  \bar "||"
  af^"Sexte" f' df bf g' ef c af' af c, ef g bf, df f af,
  \bar "||"
  af^"Septime" g' f ef df c bf af af bf c df ef f g af
  \bar "|."
}

scoreAAlto = \relative c'' {
  \global
  % Music follows here.
  c ef ef f af af bf c
  c bf af af f ef ef c
  c ef g bf ef, f af c
  c af f ef bf' af ef c
  c f bf ef, af ef g c
  c g ef af ef bf' f c
  c g' ef af ef bf' f c'
  c f, bf ef, af ef g c,
  c af' f ef bf' g ef c'
  c ef, g bf ef, f af c,
  c bf' af af f ef ef c
  c ef ef f af af bf c
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  ef g af af c df df ef
  ef ef df c af af g ef
  ef af bf ef g, af df ef
  ef df af g ef' c af ef
  ef af ef' af, df g, bf ef
  ef bf g df' af ef' af, ef
  ef bf g' df' af ef' af, ef'
  ef af, ef' af, df g, bf ef,
  ef df' af g ef' bf af ef'
  ef af, bf ef g, af df ef,
  ef ef' df c af af g ef
  ef g af af c df df ef
}

scoreABass = \relative c' {
  \global
  % Music follows here.
  af ef af df af df bf af
  af ef df' af df af ef af
  af af ef ef ef df' df af
  af df df ef, ef af af af af df ef, af df ef, ef af af ef ef df' af ef df' af
  af ef ef df' af ef df af' af df ef, af df ef, ef af
  af df df ef, ef ef af af af af ef ef ef df' df af af ef df' af df af ef af af ef af df af df bf af
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
  af ef af df af df g:dim/bf af
  af ef df af df af ef af
  af af ef ef ef df df af
  af df df ef ef af af af
  af df ef af df ef ef af af ef ef df af ef df af
  af ef ef df af ef df af af df ef af df ef ef af
  af df df ef ef ef af af af af ef ef ef df df af
  af ef df af df af ef af af ef af df af df g:dim/bf af
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
  c^"Sekunde" ef ef f af af bf c c bf af af f ef ef c
  c^"Terz" ef g bf ef, f af c c af f ef bf' af ef c
  c^"Quarte" f bf ef, af ef g c c g ef af ef bf' f c
  c^"Quinte" g' ef af ef bf' f c' c f, bf ef, af ef g c,
  c^"Sexte" af' f ef bf' g ef c' c ef, g bf ef, f af c,
  c^"Septime" bf' af af f ef ef c c ef ef f af af bf c
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  ef g af af c df df ef
  ef ef df c af af g ef
  ef af bf ef g, af df ef
  ef df af g ef' c af ef
  ef af ef' af, df g, bf ef
  ef bf g df' af ef' af, ef
  ef bf g' df' af ef' af, ef'
  ef af, ef' af, df g, bf ef,
  ef df' af g ef' bf af ef'
  ef af, bf ef g, af df ef,
  ef ef' df c af af g ef
  ef g af af c df df ef
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  af4 bf c df ef f g af af g f ef df c bf af
  \bar "||"
  af c ef g bf, df f af af f df bf g' ef c af
  \bar "||"
  af df g c, f bf, ef af af ef bf f' c g' df af
  \bar "||"
  af ef' bf f' c g' df af' af df, g c, f bf, ef af,
  \bar "||"
  af f' df bf g' ef c af' af c, ef g bf, df f af,
  \bar "||"
  af g' f ef df c bf af af bf c df ef f g af
  \bar "|."
}

scoreBBass = \relative c' {
  \global
  % Music follows here.
  af ef af df af df bf af
  af ef df' af df af ef af
  af af ef ef ef df' df af
  af df df ef, ef af af af af df ef, af df ef, ef af af ef ef df' af ef df' af
  af ef ef df' af ef df af' af df ef, af df ef, ef af
  af df df ef, ef ef af af af af ef ef ef df' df af af ef df' af df af ef af af ef af df af df bf af
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
  af ef af df af df g:dim/bf af
  af ef df af df af ef af
  af af ef ef ef df df af
  af df df ef ef af af af
  af df ef af df ef ef af af ef ef df af ef df af
  af ef ef df af ef df af af df ef af df ef ef af
  af df df ef ef ef af af af af ef ef ef df df af
  af ef df af df af ef af af ef af df af df g:dim/bf af
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
  c^"Grundstellung Sekunde" bf g f ef c bf af af bf c ef f g bf c
  % Sextakkord
  f,^"Sextakkord Sekunde" df af' f c' af ef' c c ef af, c f, af df, f
  % Quartsextakkord
  df^"Quartsextakkord Sekunde" ef f g af bf c df df c bf af g f ef df
  % Terzintervall
  % Grundstellung
  c'^"Grundstellung Terz" c bf bf bf af af af af af af bf bf bf c c
  % Sextakkord
  f^"Sextakkord Terz" af, c ef, g bf, df f, f df' bf g' ef c' af f'
  % Quartsextakkord
  f^"Quartsextakkord Terz" f ef ef ef df df df df df df ef ef ef f f
  % Quartintervall
  % Grundstellung
  c^"Grundstellung Quarte" df df ef f f g af af g f f ef df df c
  % Sextakkord
  f,^"Sextakkord Quarte" f ef ef df df c c c c df df ef ef f f
  f'^"Quartsextakkord Quarte" g ef f df ef c df df c ef df f ef g f
  % Quintintervall
  % Grundstellung
  c^"Grundstellung Quinte" bf bf af g g af af af af g g af bf bf c
  % Sextakkord
  f,^"Sextakkord Quinte" g g af af bf bf c c bf bf af af g g f
  f^"Quartsextakkord Quinte" ef ef f f g g af af g g f f ef ef f
  % Sextintervall
  % Grundstellung
  c^"Grundstellung Sexte" c df df df ef ef ef ef ef ef df df df c c
  % Sextakkord
  f^"Sextakkord Sexte" df bf df ef c af' c, c af' c, ef df bf df c
  df^"Quartsextakkord Sexte" df df ef ef ef f f f f ef ef ef df df df
  % Septimintervall
  % Grundstellung
  c^"Grundstellung Septime" df f g af c df ef ef df c af g f df c
  % Sextakkord
  f^"Sextakkord Septime" bf, df g, bf' ef, g c, c g' ef bf' g, df' bf f'
  f^"Quartsextakkord Septime" g bf c df f g af af g f df c bf g f
}

scoreCAlto = \relative c'' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  ef df c af g f df c c df f g af c df ef
  % Sextakkord
  c df ef f g af bf c c bf af g f ef df c
  % Quartsextakkord
  f, g af bf c df ef f f ef df c bf af g f
  % Terzintervall
  % Grundstellung
  ef' ef ef df df df c c c c df df ef ef ef ef
  % Sextakkord
  c' af g ef df bf af f f af bf df ef g af c
  % Quartsextakkord
  af af af g g g f f f f g g g af af af
  % Quartintervall
  % Grundstellung
  ef f g g af bf bf c c bf bf af g g f ef
  % Sextakkord
  c bf bf af af g g f f g g af af bf bf c
  % Quartsextakkord
  af' bf g af f g ef f f ef g f af g bf af
  % Quintintervall
  % Grundstellung
  ef ef df c c df df c c df df c c df ef ef 
  % Sextakkord
  c c df df ef ef f f f f ef ef df df c c
  % Quartsextakkord
  af af g bf af c bf df df df c c bf bf af af
  % Sextintervall
  % Grundstellung
  ef f f f g g g af af g g g f f f ef
  % Sextakkord
  c' af bf g bf c ef c c ef c bf g bf af c
  % Quartsextakkord
  f, f g g g af af af af af af g g g f f 
  % Septimintervall
  % Grundstellung
  ef g af bf df ef f af af f ef df bf af g ef
  % Sextakkord
  c' bf af g f' ef df c c df ef f g, af bf c
  % Quartsextakkord
  af c df ef g af bf df df bf af g ef df c af 
}

scoreCTenor = \relative c'' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  af f ef df bf af g ef ef g af bf df ef f af
  % Sextakkord
  f g af bf c df ef f f ef df c bf af g f
  % Quartsextakkord
  df bf f' df af' f c' af af c f, af df, f bf, df
  % Terzintervall
  % Grundstellung
  af' g g g f f f ef ef f f f g g g af
  % Sextakkord
  f' ef c bf g f df c c df f g bf c ef f
  % Quartsextakkord
  df c c c bf bf bf af af bf bf bf c c c df
  % Quartintervall
  % Grundstellung
  af af bf c c df ef ef ef ef df c c bf af af
  % Sextakkord
  c f, bf ef, af df, g c, c g' df af' ef bf' f c'
  % Quartsextakkord
  df df c c bf bf af af af af bf bf c c df df 
  % Qutintintervall
  % Grundstellung
  af g f f ef ef f ef ef f ef ef f f g af
  % Sextakkord
  f c' g df' af ef' bf f' f bf, ef af, df g, c f,
  % Quartsextakkord
  df c bf df  c ef df f f df ef c df bf c df
  % Sextintervall
  % Grundstellung
  af af af bf bf bf c c c c bf bf bf af af af
  % Sextakkord
  f' df f g ef g af f f af g ef g f df f  
  % Quartsextakkord
  af, bf bf bf c c c df df c c c bf bf bf af
  % Septimintervall
  % Grundstellung
  af bf c ef f g bf c c bf g f ef c bf af 
  % Sextakkord
  f' ef df c bf' af g f f g af bf c, df ef f
  % Quartsextakkord
  df ef f af bf c ef f f ef c bf af f ef df
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  af4 bf c df ef f g af af g f ef df c bf af
  \bar "||"
  % Sextakkord
  af4 bf c df ef f g af af g f ef df c bf af
  \bar "||"
  % Quartsextakkord
  af4 bf c df ef f g af af g f ef df c bf af
  \bar "||"
  % Terzintervall
  % Grundstellung
  af c ef g bf, df f af af f df bf g' ef c af
  \bar "||"
  % Sextakkord
  af c ef g bf, df f af af f df bf g' ef c af
  \bar "||"
  % Quartsextakkord
  af c ef g bf, df f af af f df bf g' ef c af
  \bar "||"
  % Quartintervall
  % Grundstellung
  af df g c, f bf, ef af af ef bf f' c g' df af
  \bar "||"
  % Sextakkord
  af df g c, f bf, ef af af ef bf f' c g' df af
  \bar "||"
  % Quartsextakkord
  af df g c, f bf, ef af af ef bf f' c g' df af
  \bar "||"
  % Quintintervall
  % Grundstellung
  af ef' bf f' c g' df af' af df, g c, f bf, ef af,
  \bar "||"
  % Sextakkord
  af ef' bf f' c g' df af' af df, g c, f bf, ef af,
  \bar "||"
  % Quartsextakkord
  af ef' bf f' c g' df af' af df, g c, f bf, ef af,
  \bar "||"
  % Sextintervall
  % Grundstellung
  af f' df bf g' ef c af' af c, ef g bf, df f af,
  \bar "||"
  % Sextakkord
  af f' df bf g' ef c af' af c, ef g bf, df f af,
  \bar "||"
  % Quartsextakkord
  af f' df bf g' ef c af' af c, ef g bf, df f af,
  \bar "||"
  % Septimintervall
  % Grundstellung
  af g' f ef df' c, bf' af, af bf' c, df' ef, f g af,
  \bar "|."
  % Sextakkord
  af g' f ef df' c, bf' af, af bf' c, df' ef, f g af,
  \bar "|."
  % Quartsextakkord
  af g' f ef df' c, bf' af, af bf' c, df' ef, f g af,
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
  af bf:m c:m df ef f:m g:dim af af g:dim f:m ef df c:m bf:m af
  % Sextakkord
  f:m/af g:dim/bf af/c bf:m/df c:m/ef df/f ef/g af af ef/g df/f c:m/ef bf:m/df af/c g:dim/bf f:m/af
  % Quartsextakkord
  df/af ef/bf f:m/c g:dim/df af/ef bf:m/f c:m/g df/af df/af c:m/g bf:m/f af/ef g:dim/df f:m/c ef/bf df/af
  % Terzintervall
  % Grundstellung
  af c:m ef g:dim bf:m df f:m af af f:m df bf g:dim ef c:m af
  % Sextakkord
  f:m/af af/c c:m/ef ef/g g:dim/bf bf:m/df df/f f:m/af f:m/af df/f bf:m/df g:dim/bf ef/g c:m/ef af/c f:m/af
  % Quartsextakkord
  df/af f:m/c af/ef c:m/g ef/bf g:dim/df bf:m/f df/af df/af bf:m/f g:dim/df ef/bf c:dim/g af/ef f:m/c df/af
  % Quartintervall
  % Grundstellung
  af df g:dim c:m f:m bf:m ef af af ef bf:m f:m c:m g:dim df af
  % Sextakkord
  f:m/af bf:m/df ef/g af/c df/f g:dim/bf c:m/ef f:m/af f:m/af c:m/ef g:dim/bf df/f af/c ef/g bf:m/df f:m/af
  % Quartsextakkord
  df/af g:dim/df c:m/g f:m/c bf:m/f ef/bf af/ef df/af df/af af/ef ef/bf bf:m/f f:m/c c:m/g g:dim/df df/af
  % Quintintervall
  % Grundstellung
  af ef bf f c g df af af df g c f bf ef af
  % Sextakkord
  f:m/af c:m/ef g:dim/bf df/f af/c ef/g bf:m/df f:m/af f:m/af bf:m/df ef/g af/c df/f g:dim/bf c:m/ef f:m/af
  % Quartsextakkord
  df/af af/ef ef/bf bf:m/f f:m/c c:m/g g:dim/df df/af df/af g:dim/df c:m/g f:m/c bf:m/f ef/bf af/ef df/af
  % Sextintervall
  % Grundstellung
  af f:m df bf:m g:dim ef c:m af af c:m ef g:dim bf:m df f:m af
  % Sextakkord
  f:m/af df/f bf:m/df g:dim/bf ef/g c:m/ef af/c f:m/af f:m/af af/c c:m/ef ef/g g:dim/bf bf:m/df df:/f f:m/af
  % Quartsextakkord
  df/af bf:m/f g:dim/df ef/bf c:m/g af/ef f:m/c df/af df/af f:m/c af/ef c:m/g ef/bf g:dim/df bf:m/f df/af
  % Septimintervall
  % Grundstellung
  af g:dim f:m ef df c:m bf:m af af bf:m c:m df ef f:m g:dim af  
  % Sextakkord
  f:m/af ef/g df/f c:m/ef bf:m/df af/c g:dim/bf f:m/af f:m/af g:dim/bf af/c bf:m/df c:m/ef df/f ef/g f:m/af  
  % Quartsextakkord
  df/af c:m/g bf:m/f af/ef g:dim/df f:m/c ef/bf df/af df/af ef/bf f:m/c g:dim/df af/ef bf:m/f c:m/g df/af  
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
  ef^"Sekunde" g af af c df df ef ef ef df c af af g ef
  ef^"Terz" af bf ef g, af df ef ef df af g ef' c af ef
  ef^"Quarte" af ef' af, df g, bf ef ef bf g df' af ef' af, ef
  ef^"Quinte" bf g' df' af ef' af, ef' ef af, ef' af, df g, bf ef,
  ef^"Sexte" df' af g ef' bf af ef' ef af, bf ef g, af df ef,
  ef^"Septime" ef' df c af af g ef ef g af af c df df ef
}

scoreDAlto = \relative c'' {
  \global
  % Music follows here.
  af4 bf c df ef f g af af g f ef df c bf af
  \bar "||"
  af c ef g bf, df f af af f df bf g' ef c af
  \bar "||"
  af df g c, f bf, ef af af ef bf f' c g' df af
  \bar "||"
  af ef' bf f' c g' df af' af df, g c, f bf, ef af,
  \bar "||"
  af f' df bf g' ef c af' af c, ef g bf, df f af,
  \bar "||"
  af g' f ef df c bf af af bf c df ef f g af
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  c ef ef f af af bf c
  c bf af af f ef ef c
  c ef g bf ef, f af c
  c af f ef bf' af ef c
  c f bf ef, af ef g c
  c g ef af ef bf' f c
  c g' ef af ef bf' f c'
  c f, bf ef, af ef g c,
  c af' f ef bf' g ef c'
  c ef, g bf ef, f af c,
  c bf' af af f ef ef c
  c ef ef f af af bf c
}

scoreDBass = \relative c' {
  \global
  % Music follows here.
  af ef af df af df bf af
  af ef df' af df af ef af
  af af ef ef ef df' df af
  af df df ef, ef af af af af df ef, af df ef, ef af af ef ef df' af ef df' af
  af ef ef df' af ef df af' af df ef, af df ef, ef af
  af df df ef, ef ef af af af af ef ef ef df' df af af ef df' af df af ef af af ef af df af df bf af
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
  af ef af df af df g:dim/bf af
  af ef df af df af ef af
  af af ef ef ef df df af
  af df df ef ef af af af
  af df ef af df ef ef af af ef ef df af ef df af
  af ef ef df af ef df af af df ef af df ef ef af
  af df df ef ef ef af af af af ef ef ef df df af
  af ef df af df af ef af af ef af df af df g:dim/bf af
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