\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Tonleiter in Des-Dur in Intervallen"
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
  \key df \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  df4^"Sekunde" ef f gf af bf c df df c bf af gf f ef df
  \bar "||"
  df^"Terz" f af c ef, gf bf df df bf gf ef c' af f df
  \bar "||"
  df^"Quarte" gf c f, bf ef, af df df af ef bf' f c' gf df
  \bar "||"
  df^"Quinte" af' ef bf' f c' gf df' df gf, c f, bf ef, af df,
  \bar "||"
  df^"Sexte" bf' gf ef c' af f df' df f, af c ef, gf bf df,
  \bar "||"
  df^"Septime" c' bf af gf f ef df df ef f gf af bf c df
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  f af af bf df df ef f
  f ef df df bf af af f
  f af c ef af, bf df f
  f df bf af ef' df af f
  f bf ef af, df af c f
  f c af df af ef' bf f
  f c' af df af ef' bf f'
  f bf, ef af, df af c f,
  f df' bf af ef' c af f'
  f af, c ef af, bf df f,
  f ef' df df bf af af f
  f af af bf df df ef f
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  af c df df f gf gf af
  af af gf f df df c af
  af df ef af c, df gf af
  af gf df c af' f df af
  af df af' df, gf c, ef af
  af ef c gf' df af' df, af
  af ef c' gf' df af' df, af'
  af df, af' df, gf c, ef af,
  af gf' df c af' ef df af'
  af df, ef af c, df gf af,
  af af' gf f df df c af
  af c df df f gf gf af
}

scoreABass = \relative c {
  \global
  % Music follows here.
  df af df gf df gf ef df
  df af gf' df gf df af df
  df df af af af gf' gf df
  df gf gf af, af df df df df gf af, df gf af, af df df af af gf' df af gf' df
  df af af gf' df af gf df' df gf af, df gf af, af df
  df gf gf af, af af df df df df af af af gf' gf df df af gf' df gf df af df df af df gf df gf ef df
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
  df af df gf df gf c:dim/ef df
  df af gf df gf df af df
  df df af af af gf gf df
  df gf gf af af df df df
  df gf af df gf af af df df af af gf df af gf df
  df af af gf df af gf df df gf af df gf af af df
  df gf gf af af af df df df df af af af gf gf df
  df af gf df gf df af df df af df gf df gf c:dim/ef df
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

scoreBSoprano = \relative c' {
  \global
  % Music follows here.
  f^"Sekunde" af af bf df df ef f f ef df df bf af af f
  f^"Terz" af c ef af, bf df f f df bf af ef' df af f
  f^"Quarte" bf ef af, df af c f f c af df af ef' bf f
  f^"Quinte" c' af df af ef' bf f' f bf, ef af, df af c f,
  f^"Sexte" df' bf af ef' c af f' f af, c ef af, bf df f,
  f^"Septime" ef' df df bf af af f f af af bf df df ef f
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  af c df df f gf gf af
  af af gf f df df c af
  af df ef af c, df gf af
  af gf df c af' f df af
  af df af' df, gf c, ef af
  af ef c gf' df af' df, af
  af ef c' gf' df af' df, af'
  af df, af' df, gf c, ef af,
  af gf' df c af' ef df af'
  af df, ef af c, df gf af,
  af af' gf f df df c af
  af c df df f gf gf af
}

scoreBTenor = \relative c {
  \global
  % Music follows here.
  df4 ef f gf af bf c df df c bf af gf f ef df
  \bar "||"
  df f af c ef, gf bf df df bf gf ef c' af f df
  \bar "||"
  df gf c f, bf ef, af df df af ef bf' f c' gf df
  \bar "||"
  df af' ef bf' f c' gf df' df gf, c f, bf ef, af df,
  \bar "||"
  df bf' gf ef c' af f df' df f, af c ef, gf bf df,
  \bar "||"
  df c' bf af gf f ef df df ef f gf af bf c df
  \bar "|."
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  df af df gf df gf ef df
  df af gf' df gf df af df
  df df af af af gf' gf df
  df gf gf af, af df df df df gf af, df gf af, af df df af af gf' df af gf' df
  df af af gf' df af gf df' df gf af, df gf af, af df
  df gf gf af, af af df df df df af af af gf' gf df df af gf' df gf df af df df af df gf df gf ef df
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
  df af df gf df gf c:dim/ef df
  df af gf df gf df af df
  df df af af af gf gf df
  df gf gf af af df df df
  df gf af df gf af af df df af af gf df af gf df
  df af af gf df af gf df df gf af df gf af af df
  df gf gf af af af df df df df af af af gf gf df
  df af gf df gf df af df df af df gf df gf c:dim/ef df
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
  f^"Grundstellung Sekunde" ef c bf af f ef df df ef f af bf c ef f
  % Sextakkord
  bf,^"Sextakkord Sekunde" gf df' bf f' df af' f f af df, f bf, df gf, bf
  % Quartsextakkord
  gf^"Quartsextakkord Sekunde" af bf c df ef f gf gf f ef df c bf af gf
  % Terzintervall
  % Grundstellung
  f'^"Grundstellung Terz" f ef ef ef df df df df df df ef ef ef f f
  % Sextakkord
  bf^"Sextakkord Terz" df, f af, c ef, gf bf, bf gf' ef c' af f' df bf'
  % Quartsextakkord
  bf^"Quartsextakkord Terz" bf af af af gf gf gf gf gf gf af af af bf bf
  % Quartintervall
  % Grundstellung
  f^"Grundstellung Quarte" gf gf af bf bf c df df c bf bf af gf gf f
  % Sextakkord
  bf,^"Sextakkord Quarte" bf af af gf gf f f f f gf gf af af bf bf
  bf'^"Quartsextakkord Quarte" c af bf gf af f gf gf f af gf bf af c bf
  % Quintintervall
  % Grundstellung
  f^"Grundstellung Quinte" ef ef df c c df df df df c c df ef ef f
  % Sextakkord
  bf,^"Sextakkord Quinte" c c df df ef ef f f ef ef df df c c bf
  bf^"Quartsextakkord Quinte" af af bf bf c c df df c c bf bf af af bf
  % Sextintervall
  % Grundstellung
  f^"Grundstellung Sexte" f gf gf gf af af af af af af gf gf gf f f
  % Sextakkord
  bf^"Sextakkord Sexte" gf ef gf af f df' f, f df' f, af gf ef gf f
  gf^"Quartsextakkord Sexte" gf gf af af af bf bf bf bf af af af gf gf gf
  % Septimintervall
  % Grundstellung
  f^"Grundstellung Septime" gf bf c df f gf af af gf f df c bf gf f
  % Sextakkord
  bf^"Sextakkord Septime" ef, gf c, ef' af, c f, f c' af ef' c, gf' ef bf'
  bf^"Quartsextakkord Septime" c ef f gf bf c df df c bf gf f ef c bf
}

scoreCAlto = \relative c'' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  af gf f df c bf gf f f gf bf c df f gf af
  % Sextakkord
  f gf af bf c df ef f f ef df c bf af gf f
  % Quartsextakkord
  bf, c df ef f gf af bf bf af gf f ef df c bf
  % Terzintervall
  % Grundstellung
  af' af af gf gf gf f f f f gf gf af af af af
  % Sextakkord
  f' df c af gf ef df bf bf df ef gf af c df f
  % Quartsextakkord
  df df df c c c bf bf bf bf c c c df df df
  % Quartintervall
  % Grundstellung
  af bf c c df ef ef f f ef ef df c c bf af
  % Sextakkord
  f ef ef df df c c bf bf c c df df ef ef f
  % Quartsextakkord
  df' ef c df bf c af bf bf af c bf df c ef df
  % Quintintervall
  % Grundstellung
  af af gf f f gf gf f f gf gf f f gf af af 
  % Sextakkord
  f f gf gf af af bf bf bf bf af af gf gf f f
  % Quartsextakkord
  df df c ef df f ef gf gf gf f f ef ef df df
  % Sextintervall
  % Grundstellung
  af bf bf bf c c c df df c c c bf bf bf af
  % Sextakkord
  f' df ef c ef f af f f af f ef c ef df f
  % Quartsextakkord
  bf, bf c c c df df df df df df c c c bf bf 
  % Septimintervall
  % Grundstellung
  af c df ef gf af bf df df bf af gf ef df c af
  % Sextakkord
  f' ef df c bf' af gf f f gf af bf c, df ef f
  % Quartsextakkord
  df f gf af c df ef gf gf ef df c af gf f df 
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  df bf af gf ef df c af af c df ef gf af bf df
  % Sextakkord
  bf c df ef f gf af bf bf af gf f ef df c bf
  % Quartsextakkord
  gf ef bf' gf df' bf f' df df f bf, df gf, bf ef, gf
  % Terzintervall
  % Grundstellung
  df' c c c bf bf bf af af bf bf bf c c c df
  % Sextakkord
  bf' af f ef c bf gf f f gf bf c ef f af bf
  % Quartsextakkord
  gf f f f ef ef ef df df ef ef ef f f f gf
  % Quartintervall
  % Grundstellung
  df df ef f f gf af af af af gf f f ef df df
  % Sextakkord
  f bf, ef af, df gf, c f, f c' gf df' af ef' bf f'
  % Quartsextakkord
  gf gf f f ef ef df df df df ef ef f f gf gf 
  % Qutintintervall
  % Grundstellung
  df c bf bf af af bf af af bf af af bf bf c df
  % Sextakkord
  bf f' c gf' df af' ef bf' bf ef, af df, gf c, f bf,
  % Quartsextakkord
  gf f ef gf  f af gf bf bf gf af f gf ef f gf
  % Sextintervall
  % Grundstellung
  df df df ef ef ef f f f f ef ef ef df df df
  % Sextakkord
  bf' gf bf c af c df bf bf df c af c bf gf bf  
  % Quartsextakkord
  df, ef ef ef f f f gf gf f f f ef ef ef df
  % Septimintervall
  % Grundstellung
  df ef f af bf c ef f f ef c bf af f ef df 
  % Sextakkord
  bf' af gf f ef' df c bf bf c df ef f, gf af bf
  % Quartsextakkord
  gf af bf df ef f af bf bf af f ef df bf af gf
}

scoreCBass = \relative c, {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  df4 ef f gf af bf c df df c bf af gf f ef df
  \bar "||"
  % Sextakkord
  df4 ef f gf af bf c df df c bf af gf f ef df
  \bar "||"
  % Quartsextakkord
  df4 ef f gf af bf c df df c bf af gf f ef df
  \bar "||"
  % Terzintervall
  % Grundstellung
  df f af c ef, gf bf df df bf gf ef c' af f df
  \bar "||"
  % Sextakkord
  df f af c ef, gf bf df df bf gf ef c' af f df
  \bar "||"
  % Quartsextakkord
  df f af c ef, gf bf df df bf gf ef c' af f df
  \bar "||"
  % Quartintervall
  % Grundstellung
  df gf c f, bf ef, af df df af ef bf' f c' gf df
  \bar "||"
  % Sextakkord
  df gf c f, bf ef, af df df af ef bf' f c' gf df
  \bar "||"
  % Quartsextakkord
  df gf c f, bf ef, af df df af ef bf' f c' gf df
  \bar "||"
  % Quintintervall
  % Grundstellung
  df af' ef bf' f c' gf df' df gf, c f, bf ef, af df,
  \bar "||"
  % Sextakkord
  df af' ef bf' f c' gf df' df gf, c f, bf ef, af df,
  \bar "||"
  % Quartsextakkord
  df af' ef bf' f c' gf df' df gf, c f, bf ef, af df,
  \bar "||"
  % Sextintervall
  % Grundstellung
  df bf' gf ef c' af f df' df f, af c ef, gf bf df,
  \bar "||"
  % Sextakkord
  df bf' gf ef c' af f df' df f, af c ef, gf bf df,
  \bar "||"
  % Quartsextakkord
  df bf' gf ef c' af f df' df f, af c ef, gf bf df,
  \bar "||"
  % Septimintervall
  % Grundstellung
  df c' bf af gf' f, ef' df, df ef' f, gf' af, bf c df,
  \bar "|."
  % Sextakkord
  df c' bf af gf' f, ef' df, df ef' f, gf' af, bf c df,
  \bar "|."
  % Quartsextakkord
  df c' bf af gf' f, ef' df, df ef' f, gf' af, bf c df,
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
  df ef:m f:m gf af bf:m c:dim df df c:dim bf:m af gf f:m ef:m df
  % Sextakkord
  bf:m/df c:dim/ef df/f ef:m/gf f:m/af gf/bf af/c df df af/c gf/bf f:m/af ef:m/gf df/f c:dim/ef bf:m/df
  % Quartsextakkord
  gf/df af/ef bf:m/f c:dim/gf df/af ef:m/bf f:m/c gf/df gf/df f:m/c ef:m/bf df/af c:dim/gf bf:m/f af/ef gf/df
  % Terzintervall
  % Grundstellung
  df f:m af c:dim ef:m gf bf:m df df bf:m gf ef c:dim af f:m df
  % Sextakkord
  bf:m/df df/f f:m/af af/c c:dim/ef ef:m/gf gf/bf bf:m/df bf:m/df gf/bf ef:m/gf c:dim/ef af/c f:m/af df/f bf:m/df
  % Quartsextakkord
  gf/df bf:m/f df/af f:m/c af/ef c:dim/gf ef:m/bf gf/df gf/df ef:m/bf c:dim/gf af/ef f:dim/c df/af bf:m/f gf/df
  % Quartintervall
  % Grundstellung
  df gf c:dim f:m bf:m ef:m af df df af ef:m bf:m f:m c:dim gf df
  % Sextakkord
  bf:m/df ef:m/gf af/c df/f gf/bf c:dim/ef f:m/af bf:m/df bf:m/df f:m/af c:dim/ef gf/bf df/f af/c ef:m/gf bf:m/df
  % Quartsextakkord
  gf/df c:dim/gf f:m/c bf:m/f ef:m/bf af/ef df/af gf/df gf/df df/af af/ef ef:m/bf bf:m/f f:m/c c:dim/gf gf/df
  % Quintintervall
  % Grundstellung
  df af ef bf f c gf df df gf c f bf ef af df
  % Sextakkord
  bf:m/df f:m/af c:dim/ef gf/bf df/f af/c ef:m/gf bf:m/df bf:m/df ef:m/gf af/c df/f gf/bf c:dim/ef f:m/af bf:m/df
  % Quartsextakkord
  gf/df df/af af/ef ef:m/bf bf:m/f f:m/c c:dim/gf gf/df gf/df c:dim/gf f:m/c bf:m/f ef:m/bf af/ef df/af gf/df
  % Sextintervall
  % Grundstellung
  df bf:m gf ef:m c:dim af f:m df df f:m af c:dim ef:m gf bf:m df
  % Sextakkord
  bf:m/df gf/bf ef:m/gf c:dim/ef af/c f:m/af df/f bf:m/df bf:m/df df/f f:m/af af/c c:dim/ef ef:m/gf gf:/bf bf:m/df
  % Quartsextakkord
  gf/df ef:m/bf c:dim/gf af/ef f:m/c df/af bf:m/f gf/df gf/df bf:m/f df/af f:m/c af/ef c:dim/gf ef:m/bf gf/df
  % Septimintervall
  % Grundstellung
  df c:dim bf:m af gf f:m ef:m df df ef:m f:m gf af bf:m c:dim df  
  % Sextakkord
  bf:m/df af/c gf/bf f:m/af ef:m/gf df/f c:dim/ef bf:m/df bf:m/df c:dim/ef df/f ef:m/gf f:m/af gf/bf af/c bf:m/df  
  % Quartsextakkord
  gf/df f:m/c ef:m/bf df/af c:dim/gf bf:m/f af/ef gf/df gf/df af/ef bf:m/f c:dim/gf df/af ef:m/bf f:m/c gf/df  
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
  af^"Sekunde" c df df f gf gf af af af gf f df df c af
  af^"Terz" df ef af c, df gf af af gf df c af' f df af
  af^"Quarte" df af' df, gf c, ef af af ef c gf' df af' df, af
  af^"Quinte" ef c' gf' df af' df, af' af df, af' df, gf c, ef af,
  af^"Sexte" gf' df c af' ef df af' af df, ef af c, df gf af,
  af^"Septime" af' gf f df df c af af c df df f gf gf af
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  df4 ef f gf af bf c df df c bf af gf f ef df
  \bar "||"
  df f af c ef, gf bf df df bf gf ef c' af f df
  \bar "||"
  df gf c f, bf ef, af df df af ef bf' f c' gf df
  \bar "||"
  df af' ef bf' f c' gf df' df gf, c f, bf ef, af df,
  \bar "||"
  df bf' gf ef c' af f df' df f, af c ef, gf bf df,
  \bar "||"
  df c' bf af gf f ef df df ef f gf af bf c df
  \bar "|."
}

scoreDTenor = \relative c {
  \global
  % Music follows here.
  f af af bf df df ef f
  f ef df df bf af af f
  f af c ef af, bf df f
  f df bf af ef' df af f
  f bf ef af, df af c f
  f c af df af ef' bf f
  f c' af df af ef' bf f'
  f bf, ef af, df af c f,
  f df' bf af ef' c af f'
  f af, c ef af, bf df f,
  f ef' df df bf af af f
  f af af bf df df ef f
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  df af df gf df gf ef df
  df af gf' df gf df af df
  df df af af af gf' gf df
  df gf gf af, af df df df df gf af, df gf af, af df df af af gf' df af gf' df
  df af af gf' df af gf df' df gf af, df gf af, af df
  df gf gf af, af af df df df df af af af gf' gf df df af gf' df gf df af df df af df gf df gf ef df
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
  df af df gf df gf c:dim/ef df
  df af gf df gf df af df
  df df af af af gf gf df
  df gf gf af af df df df
  df gf af df gf af af df df af af gf df af gf df
  df af af gf df af gf df df gf af df gf af af df
  df gf gf af af af df df df df af af af gf gf df
  df af gf df gf df af df df af df gf df gf c:dim/ef df
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