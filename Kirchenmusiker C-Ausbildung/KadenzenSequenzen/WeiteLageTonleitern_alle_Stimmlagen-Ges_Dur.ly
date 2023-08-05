\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Tonleiter in Ges-Dur in Intervallen"
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
  \key gf \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c''' {
  \global
  % Music follows here.
  gf4^"Sekunde" af bf cf df ef f gf gf f ef df cf bf af gf
  \bar "||"
  gf^"Terz" bf df f af, cf ef gf gf ef cf af f' df bf gf
  \bar "||"
  gf^"Quarte" cf f bf, ef af, df gf gf df af ef' bf f' cf gf
  \bar "||"
  gf^"Quinte" df' af ef' bf f' cf gf' gf cf, f bf, ef af, df gf,
  \bar "||"
  gf^"Sexte" ef' cf af f' df bf gf' gf bf, df f af, cf ef gf,
  \bar "||"
  gf^"Septime" f' ef df cf bf af gf gf af bf cf df ef f gf
  \bar "|."
}

scoreAAlto = \relative c'' {
  \global
  % Music follows here.
  bf df df ef gf gf af bf
  bf af gf gf ef df df bf
  bf df f af df, ef gf bf
  bf gf ef df af' gf df bf
  bf ef af df, gf df f bf
  bf f df gf df af' ef bf
  bf f' df gf df af' ef bf'
  bf ef, af df, gf df f bf,
  bf gf' ef df af' f df bf'
  bf df, f af df, ef gf bf,
  bf af' gf gf ef df df bf
  bf df df ef gf gf af bf
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  df f gf gf bf cf cf df
  df df cf bf gf gf f df
  df gf af df f, gf cf df
  df cf gf f df' bf gf df
  df gf df' gf, cf f, af df
  df af f cf' gf df' gf, df
  df af f' cf' gf df' gf, df'
  df gf, df' gf, cf f, af df,
  df cf' gf f df' af gf df'
  df gf, af df f, gf cf df,
  df df' cf bf gf gf f df
  df f gf gf bf cf cf df
}

scoreABass = \relative c' {
  \global
  % Music follows here.
  gf df gf cf gf cf af gf
  gf df cf' gf cf gf df gf
  gf gf df df df cf' cf gf
  gf cf cf df, df gf gf gf gf cf df, gf cf df, df gf gf df df cf' gf df cf' gf
  gf df df cf' gf df cf gf' gf cf df, gf cf df, df gf
  gf cf cf df, df df gf gf gf gf df df df cf' cf gf gf df cf' gf cf gf df gf gf df gf cf gf cf af gf
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
  gf df gf cf gf cf f:dim/af gf
  gf df cf gf cf gf df gf
  gf gf df df df cf cf gf
  gf cf cf df df gf gf gf
  gf cf df gf cf df df gf gf df df cf gf df cf gf
  gf df df cf gf df cf gf gf cf df gf cf df df gf
  gf cf cf df df df gf gf gf gf df df df cf cf gf
  gf df cf gf cf gf df gf gf df gf cf gf cf f:dim/af gf
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
  bf^"Sekunde" df df ef gf gf af bf bf af gf gf ef df df bf
  bf^"Terz" df f af df, ef gf bf bf gf ef df af' gf df bf
  bf^"Quarte" ef af df, gf df f bf bf f df gf df af' ef bf
  bf^"Quinte" f' df gf df af' ef bf' bf ef, af df, gf df f bf,
  bf^"Sexte" gf' ef df af' f df bf' bf df, f af df, ef gf bf,
  bf^"Septime" af' gf gf ef df df bf bf df df ef gf gf af bf
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  df f gf gf bf cf cf df
  df df cf bf gf gf f df
  df gf af df f, gf cf df
  df cf gf f df' bf gf df
  df gf df' gf, cf f, af df
  df af f cf' gf df' gf, df
  df af f' cf' gf df' gf, df'
  df gf, df' gf, cf f, af df,
  df cf' gf f df' af gf df'
  df gf, af df f, gf cf df,
  df df' cf bf gf gf f df
  df f gf gf bf cf cf df
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  gf4 af bf cf df ef f gf gf f ef df cf bf af gf
  \bar "||"
  gf bf df f af, cf ef gf gf ef cf af f' df bf gf
  \bar "||"
  gf cf f bf, ef af, df gf gf df af ef' bf f' cf gf
  \bar "||"
  gf df' af ef' bf f' cf gf' gf cf, f bf, ef af, df gf,
  \bar "||"
  gf ef' cf af f' df bf gf' gf bf, df f af, cf ef gf,
  \bar "||"
  gf f' ef df cf bf af gf gf af bf cf df ef f gf
  \bar "|."
}

scoreBBass = \relative c' {
  \global
  % Music follows here.
  gf df gf cf gf cf af gf
  gf df cf' gf cf gf df gf
  gf gf df df df cf' cf gf
  gf cf cf df, df gf gf gf gf cf df, gf cf df, df gf gf df df cf' gf df cf' gf
  gf df df cf' gf df cf gf' gf cf df, gf cf df, df gf
  gf cf cf df, df df gf gf gf gf df df df cf' cf gf gf df cf' gf cf gf df gf gf df gf cf gf cf af gf
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
  gf df gf cf gf cf f:dim/af gf
  gf df cf gf cf gf df gf
  gf gf df df df cf cf gf
  gf cf cf df df gf gf gf
  gf cf df gf cf df df gf gf df df cf gf df cf gf
  gf df df cf gf df cf gf gf cf df gf cf df df gf
  gf cf cf df df df gf gf gf gf df df df cf cf gf
  gf df cf gf cf gf df gf gf df gf cf gf cf f:dim/af gf
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
  bf^"Grundstellung Sekunde" af f ef df bf af gf gf af bf df ef f af bf
  % Sextakkord
  ef,^"Sextakkord Sekunde" cf gf' ef bf' gf df' bf bf df gf, bf ef, gf cf, ef
  % Quartsextakkord
  cf^"Quartsextakkord Sekunde" df ef f gf af bf cf cf bf af gf f ef df cf
  % Terzintervall
  % Grundstellung
  bf'^"Grundstellung Terz" bf af af af gf gf gf gf gf gf af af af bf bf
  % Sextakkord
  ef^"Sextakkord Terz" gf, bf df, f af, cf ef, ef cf' af f' df bf' gf ef'
  % Quartsextakkord
  ef^"Quartsextakkord Terz" ef df df df cf cf cf cf cf cf df df df ef ef
  % Quartintervall
  % Grundstellung
  bf^"Grundstellung Quarte" cf cf df ef ef f gf gf f ef ef df cf cf bf
  % Sextakkord
  ef,^"Sextakkord Quarte" ef df df cf cf bf bf bf bf cf cf df df ef ef
  ef'^"Quartsextakkord Quarte" f df ef cf df bf cf cf bf df cf ef df f ef
  % Quintintervall
  % Grundstellung
  bf^"Grundstellung Quinte" af af gf f f gf gf gf gf f f gf af af bf
  % Sextakkord
  ef,^"Sextakkord Quinte" f f gf gf af af bf bf af af gf gf f f ef
  ef^"Quartsextakkord Quinte" df df ef ef f f gf gf f f ef ef df df ef
  % Sextintervall
  % Grundstellung
  bf^"Grundstellung Sexte" bf cf cf cf df df df df df df cf cf cf bf bf
  % Sextakkord
  ef^"Sextakkord Sexte" cf af cf df bf gf' bf, bf gf' bf, df cf af cf bf
  cf^"Quartsextakkord Sexte" cf cf df df df ef ef ef ef df df df cf cf cf
  % Septimintervall
  % Grundstellung
  bf^"Grundstellung Septime" cf ef f gf bf cf df df cf bf gf f ef cf bf
  % Sextakkord
  ef^"Sextakkord Septime" af, cf f, af' df, f bf, bf f' df af' f, cf' af ef'
  ef^"Quartsextakkord Septime" f af bf cf ef f gf gf f ef cf bf af f ef
}

scoreCAlto = \relative c'' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  df cf bf gf f ef cf bf bf cf ef f gf bf cf df
  % Sextakkord
  bf cf df ef f gf af bf bf af gf f ef df cf bf
  % Quartsextakkord
  ef, f gf af bf cf df ef ef df cf bf af gf f ef
  % Terzintervall
  % Grundstellung
  df' df df cf cf cf bf bf bf bf cf cf df df df df
  % Sextakkord
  bf' gf f df cf af gf ef ef gf af cf df f gf bf
  % Quartsextakkord
  gf gf gf f f f ef ef ef ef f f f gf gf gf
  % Quartintervall
  % Grundstellung
  df ef f f gf af af bf bf af af gf f f ef df
  % Sextakkord
  bf af af gf gf f f ef ef f f gf gf af af bf
  % Quartsextakkord
  gf' af f gf ef f df ef ef df f ef gf f af gf
  % Quintintervall
  % Grundstellung
  df df cf bf bf cf cf bf bf cf cf bf bf cf df df 
  % Sextakkord
  bf bf cf cf df df ef ef ef ef df df cf cf bf bf
  % Quartsextakkord
  gf gf f af gf bf af cf cf cf bf bf af af gf gf
  % Sextintervall
  % Grundstellung
  df ef ef ef f f f gf gf f f f ef ef ef df
  % Sextakkord
  bf' gf af f af bf df bf bf df bf af f af gf bf
  % Quartsextakkord
  ef, ef f f f gf gf gf gf gf gf f f f ef ef 
  % Septimintervall
  % Grundstellung
  df f gf af cf df ef gf gf ef df cf af gf f df
  % Sextakkord
  bf' af gf f ef' df cf bf bf cf df ef f, gf af bf
  % Quartsextakkord
  gf bf cf df f gf af cf cf af gf f df cf bf gf 
}

scoreCTenor = \relative c'' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  gf ef df cf af gf f df df f gf af cf df ef gf
  % Sextakkord
  ef f gf af bf cf df ef ef df cf bf af gf f ef
  % Quartsextakkord
  cf af ef' cf gf' ef bf' gf gf bf ef, gf cf, ef af, cf
  % Terzintervall
  % Grundstellung
  gf' f f f ef ef ef df df ef ef ef f f f gf
  % Sextakkord
  ef' df bf af f ef cf bf bf cf ef f af bf df ef
  % Quartsextakkord
  cf bf bf bf af af af gf gf af af af bf bf bf cf
  % Quartintervall
  % Grundstellung
  gf gf af bf bf cf df df df df cf bf bf af gf gf
  % Sextakkord
  bf ef, af df, gf cf, f bf, bf f' cf gf' df af' ef bf'
  % Quartsextakkord
  cf cf bf bf af af gf gf gf gf af af bf bf cf cf 
  % Qutintintervall
  % Grundstellung
  gf f ef ef df df ef df df ef df df ef ef f gf
  % Sextakkord
  ef bf' f cf' gf df' af ef' ef af, df gf, cf f, bf ef,
  % Quartsextakkord
  cf bf af cf  bf df cf ef ef cf df bf cf af bf cf
  % Sextintervall
  % Grundstellung
  gf gf gf af af af bf bf bf bf af af af gf gf gf
  % Sextakkord
  ef' cf ef f df f gf ef ef gf f df f ef cf ef  
  % Quartsextakkord
  gf, af af af bf bf bf cf cf bf bf bf af af af gf
  % Septimintervall
  % Grundstellung
  gf af bf df ef f af bf bf af f ef df bf af gf 
  % Sextakkord
  ef' df cf bf af' gf f ef ef f gf af bf, cf df ef
  % Quartsextakkord
  cf df ef gf af bf df ef ef df bf af gf ef df cf
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  gf4 af bf cf df ef f gf gf f ef df cf bf af gf
  \bar "||"
  % Sextakkord
  gf4 af bf cf df ef f gf gf f ef df cf bf af gf
  \bar "||"
  % Quartsextakkord
  gf4 af bf cf df ef f gf gf f ef df cf bf af gf
  \bar "||"
  % Terzintervall
  % Grundstellung
  gf bf df f af, cf ef gf gf ef cf af f' df bf gf
  \bar "||"
  % Sextakkord
  gf bf df f af, cf ef gf gf ef cf af f' df bf gf
  \bar "||"
  % Quartsextakkord
  gf bf df f af, cf ef gf gf ef cf af f' df bf gf
  \bar "||"
  % Quartintervall
  % Grundstellung
  gf cf f bf, ef af, df gf gf df af ef' bf f' cf gf
  \bar "||"
  % Sextakkord
  gf cf f bf, ef af, df gf gf df af ef' bf f' cf gf
  \bar "||"
  % Quartsextakkord
  gf cf f bf, ef af, df gf gf df af ef' bf f' cf gf
  \bar "||"
  % Quintintervall
  % Grundstellung
  gf df' af ef' bf f' cf gf' gf cf, f bf, ef af, df gf,
  \bar "||"
  % Sextakkord
  gf df' af ef' bf f' cf gf' gf cf, f bf, ef af, df gf,
  \bar "||"
  % Quartsextakkord
  gf df' af ef' bf f' cf gf' gf cf, f bf, ef af, df gf,
  \bar "||"
  % Sextintervall
  % Grundstellung
  gf ef' cf af f' df bf gf' gf bf, df f af, cf ef gf,
  \bar "||"
  % Sextakkord
  gf ef' cf af f' df bf gf' gf bf, df f af, cf ef gf,
  \bar "||"
  % Quartsextakkord
  gf ef' cf af f' df bf gf' gf bf, df f af, cf ef gf,
  \bar "||"
  % Septimintervall
  % Grundstellung
  gf f' ef df cf' bf, af' gf, gf af' bf, cf' df, ef f gf,
  \bar "|."
  % Sextakkord
  gf f' ef df cf' bf, af' gf, gf af' bf, cf' df, ef f gf,
  \bar "|."
  % Quartsextakkord
  gf f' ef df cf' bf, af' gf, gf af' bf, cf' df, ef f gf,
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
  gf af:m bf:m cf df ef:m f:dim gf gf f:dim ef:m df cf bf:m af:m gf
  % Sextakkord
  ef:m/gf f:dim/af gf/bf af:m/cf bf:m/df cf/ef df/f gf gf df/f cf/ef bf:m/df af:m/cf gf/bf f:dim/af ef:m/gf
  % Quartsextakkord
  cf/gf df/af ef:m/bf f:dim/cf gf/df af:m/ef bf:m/f cf/gf cf/gf bf:m/f af:m/ef gf/df f:dim/cf ef:m/bf df/af cf/gf
  % Terzintervall
  % Grundstellung
  gf bf:m df f:dim af:m cf ef:m gf gf ef:m cf af f:dim df bf:m gf
  % Sextakkord
  ef:m/gf gf/bf bf:m/df df/f f:dim/af af:m/cf cf/ef ef:m/gf ef:m/gf cf/ef af:m/cf f:dim/af df/f bf:m/df gf/bf ef:m/gf
  % Quartsextakkord
  cf/gf ef:m/bf gf/df bf:m/f df/af f:dim/cf af:m/ef cf/gf cf/gf af:m/ef f:dim/cf df/af bf:dim/f gf/df ef:m/bf cf/gf
  % Quartintervall
  % Grundstellung
  gf cf f:dim bf:m ef:m af:m df gf gf df af:m ef:m bf:m f:dim cf gf
  % Sextakkord
  ef:m/gf af:m/cf df/f gf/bf cf/ef f:dim/af bf:m/df ef:m/gf ef:m/gf bf:m/df f:dim/af cf/ef gf/bf df/f af:m/cf ef:m/gf
  % Quartsextakkord
  cf/gf f:dim/cf bf:m/f ef:m/bf af:m/ef df/af gf/df cf/gf cf/gf gf/df df/af af:m/ef ef:m/bf bf:m/f f:dim/cf cf/gf
  % Quintintervall
  % Grundstellung
  gf df af ef bf f cf gf gf cf f bf ef af df gf
  % Sextakkord
  ef:m/gf bf:m/df f:dim/af cf/ef gf/bf df/f af:m/cf ef:m/gf ef:m/gf af:m/cf df/f gf/bf cf/ef f:dim/af bf:m/df ef:m/gf
  % Quartsextakkord
  cf/gf gf/df df/af af:m/ef ef:m/bf bf:m/f f:dim/cf cf/gf cf/gf f:dim/cf bf:m/f ef:m/bf af:m/ef df/af gf/df cf/gf
  % Sextintervall
  % Grundstellung
  gf ef:m cf af:m f:dim df bf:m gf gf bf:m df f:dim af:m cf ef:m gf
  % Sextakkord
  ef:m/gf cf/ef af:m/cf f:dim/af df/f bf:m/df gf/bf ef:m/gf ef:m/gf gf/bf bf:m/df df/f f:dim/af af:m/cf cf:/ef ef:m/gf
  % Quartsextakkord
  cf/gf af:m/ef f:dim/cf df/af bf:m/f gf/df ef:m/bf cf/gf cf/gf ef:m/bf gf/df bf:m/f df/af f:dim/cf af:m/ef cf/gf
  % Septimintervall
  % Grundstellung
  gf f:dim ef:m df cf bf:m af:m gf gf af:m bf:m cf df ef:m f:dim gf  
  % Sextakkord
  ef:m/gf df/f cf/ef bf:m/df af:m/cf gf/bf f:dim/af ef:m/gf ef:m/gf f:dim/af gf/bf af:m/cf bf:m/df cf/ef df/f ef:m/gf  
  % Quartsextakkord
  cf/gf bf:m/f af:m/ef gf/df f:dim/cf ef:m/bf df/af cf/gf cf/gf df/af ef:m/bf f:dim/cf gf/df af:m/ef bf:m/f cf/gf  
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
  df^"Sekunde" f gf gf bf cf cf df df df cf bf gf gf f df
  df^"Terz" gf af df f, gf cf df df cf gf f df' bf gf df
  df^"Quarte" gf df' gf, cf f, af df df af f cf' gf df' gf, df
  df^"Quinte" af f' cf' gf df' gf, df' df gf, df' gf, cf f, af df,
  df^"Sexte" cf' gf f df' af gf df' df gf, af df f, gf cf df,
  df^"Septime" df' cf bf gf gf f df df f gf gf bf cf cf df
}

scoreDAlto = \relative c'' {
  \global
  % Music follows here.
  gf4 af bf cf df ef f gf gf f ef df cf bf af gf
  \bar "||"
  gf bf df f af, cf ef gf gf ef cf af f' df bf gf
  \bar "||"
  gf cf f bf, ef af, df gf gf df af ef' bf f' cf gf
  \bar "||"
  gf df' af ef' bf f' cf gf' gf cf, f bf, ef af, df gf,
  \bar "||"
  gf ef' cf af f' df bf gf' gf bf, df f af, cf ef gf,
  \bar "||"
  gf f' ef df cf bf af gf gf af bf cf df ef f gf
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  bf df df ef gf gf af bf
  bf af gf gf ef df df bf
  bf df f af df, ef gf bf
  bf gf ef df af' gf df bf
  bf ef af df, gf df f bf
  bf f df gf df af' ef bf
  bf f' df gf df af' ef bf'
  bf ef, af df, gf df f bf,
  bf gf' ef df af' f df bf'
  bf df, f af df, ef gf bf,
  bf af' gf gf ef df df bf
  bf df df ef gf gf af bf
}

scoreDBass = \relative c' {
  \global
  % Music follows here.
  gf df gf cf gf cf af gf
  gf df cf' gf cf gf df gf
  gf gf df df df cf' cf gf
  gf cf cf df, df gf gf gf gf cf df, gf cf df, df gf gf df df cf' gf df cf' gf
  gf df df cf' gf df cf gf' gf cf df, gf cf df, df gf
  gf cf cf df, df df gf gf gf gf df df df cf' cf gf gf df cf' gf cf gf df gf gf df gf cf gf cf af gf
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
  gf df gf cf gf cf f:dim/af gf
  gf df cf gf cf gf df gf
  gf gf df df df cf cf gf
  gf cf cf df df gf gf gf
  gf cf df gf cf df df gf gf df df cf gf df cf gf
  gf df df cf gf df cf gf gf cf df gf cf df df gf
  gf cf cf df df df gf gf gf gf df df df cf cf gf
  gf df cf gf cf gf df gf gf df gf cf gf cf f:dim/af gf
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