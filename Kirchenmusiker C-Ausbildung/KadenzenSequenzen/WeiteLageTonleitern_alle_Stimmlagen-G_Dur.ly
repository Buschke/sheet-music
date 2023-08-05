\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Tonleiter in G-Dur in Intervallen"
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
  \key g \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c''' {
  \global
  % Music follows here.
  g4^"Sekunde" a b c d e fs g g fs e d c b a g
  \bar "||"
  g^"Terz" b d fs a, c e g g e c a fs' d b g
  \bar "||"
  g^"Quarte" c fs b, e a, d g g d a e' b fs' c g
  \bar "||"
  g^"Quinte" d' a e' b fs' c g' g c, fs b, e a, d g,
  \bar "||"
  g^"Sexte" e' c a fs' d b g' g b, d fs a, c e g,
  \bar "||"
  g^"Septime" fs' e d c b a g g a b c d e fs g
  \bar "|."
}

scoreAAlto = \relative c'' {
  \global
  % Music follows here.
  b d d e g g a b
  b a g g e d d b
  b d fs a d, e g b
  b g e d a' g d b
  b e a d, g d fs b
  b fs d g d a' e b
  b fs' d g d a' e b'
  b e, a d, g d fs b,
  b g' e d a' fs d b'
  b d, fs a d, e g b,
  b a' g g e d d b
  b d d e g g a b
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  d fs g g b c c d
  d d c b g g fs d
  d g a d fs, g c d
  d c g fs d' b g d
  d g d' g, c fs, a d
  d a fs c' g d' g, d
  d a fs' c' g d' g, d'
  d g, d' g, c fs, a d,
  d c' g fs d' a g d'
  d g, a d fs, g c d,
  d d' c b g g fs d
  d fs g g b c c d
}

scoreABass = \relative c' {
  \global
  % Music follows here.
  g d g c g c a g
  g d c' g c g d g
  g g d d d c' c g
  g c c d, d g g g g c d, g c d, d g g d d c' g d c' g
  g d d c' g d c g' g c d, g c d, d g
  g c c d, d d g g g g d d d c' c g g d c' g c g d g g d g c g c a g
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
  g d g c g c fs:dim/a g
  g d c g c g d g
  g g d d d c c g
  g c c d d g g g
  g c d g c d d g g d d c g d c g
  g d d c g d c g g c d g c d d g
  g c c d d d g g g g d d d c c g
  g d c g c g d g g d g c g c fs:dim/a g
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
  b^"Sekunde" d d e g g a b b a g g e d d b
  b^"Terz" d fs a d, e g b b g e d a' g d b
  b^"Quarte" e a d, g d fs b b fs d g d a' e b
  b^"Quinte" fs' d g d a' e b' b e, a d, g d fs b,
  b^"Sexte" g' e d a' fs d b' b d, fs a d, e g b,
  b^"Septime" a' g g e d d b b d d e g g a b
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  d fs g g b c c d
  d d c b g g fs d
  d g a d fs, g c d
  d c g fs d' b g d
  d g d' g, c fs, a d
  d a fs c' g d' g, d
  d a fs' c' g d' g, d'
  d g, d' g, c fs, a d,
  d c' g fs d' a g d'
  d g, a d fs, g c d,
  d d' c b g g fs d
  d fs g g b c c d
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  g4 a b c d e fs g g fs e d c b a g
  \bar "||"
  g b d fs a, c e g g e c a fs' d b g
  \bar "||"
  g c fs b, e a, d g g d a e' b fs' c g
  \bar "||"
  g d' a e' b fs' c g' g c, fs b, e a, d g,
  \bar "||"
  g e' c a fs' d b g' g b, d fs a, c e g,
  \bar "||"
  g fs' e d c b a g g a b c d e fs g
  \bar "|."
}

scoreBBass = \relative c' {
  \global
  % Music follows here.
  g d g c g c a g
  g d c' g c g d g
  g g d d d c' c g
  g c c d, d g g g g c d, g c d, d g g d d c' g d c' g
  g d d c' g d c g' g c d, g c d, d g
  g c c d, d d g g g g d d d c' c g g d c' g c g d g g d g c g c a g
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
  g d g c g c fs:dim/a g
  g d c g c g d g
  g g d d d c c g
  g c c d d g g g
  g c d g c d d g g d d c g d c g
  g d d c g d c g g c d g c d d g
  g c c d d d g g g g d d d c c g
  g d c g c g d g g d g c g c fs:dim/a g
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
  b^"Grundstellung Sekunde" a fs e d b a g g a b d e fs a b
  % Sextakkord
  e,^"Sextakkord Sekunde" c g' e b' g d' b b d g, b e, g c, e
  % Quartsextakkord
  c^"Quartsextakkord Sekunde" d e fs g a b c c b a g fs e d c
  % Terzintervall
  % Grundstellung
  b'^"Grundstellung Terz" b a a a g g g g g g a a a b b
  % Sextakkord
  e^"Sextakkord Terz" g, b d, fs a, c e, e c' a fs' d b' g e'
  % Quartsextakkord
  e^"Quartsextakkord Terz" e d d d c c c c c c d d d e e
  % Quartintervall
  % Grundstellung
  b^"Grundstellung Quarte" c c d e e fs g g fs e e d c c b
  % Sextakkord
  e,^"Sextakkord Quarte" e d d c c b b b b c c d d e e
  e'^"Quartsextakkord Quarte" fs d e c d b c c b d c e d fs e
  % Quintintervall
  % Grundstellung
  b^"Grundstellung Quinte" a a g fs fs g g g g fs fs g a a b
  % Sextakkord
  e,^"Sextakkord Quinte" fs fs g g a a b b a a g g fs fs e
  e^"Quartsextakkord Quinte" d d e e fs fs g g fs fs e e d d e
  % Sextintervall
  % Grundstellung
  b^"Grundstellung Sexte" b c c c d d d d d d c c c b b
  % Sextakkord
  e^"Sextakkord Sexte" c a c d b g' b, b g' b, d c a c b
  c^"Quartsextakkord Sexte" c c d d d e e e e d d d c c c
  % Septimintervall
  % Grundstellung
  b^"Grundstellung Septime" c e fs g b c d d c b g fs e c b
  % Sextakkord
  e^"Sextakkord Septime" a, c fs, a' d, fs b, b fs' d a' fs, c' a e'
  e^"Quartsextakkord Septime" fs a b c e fs g g fs e c b a fs e
}

scoreCAlto = \relative c'' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  d c b g fs e c b b c e fs g b c d
  % Sextakkord
  b c d e fs g a b b a g fs e d c b
  % Quartsextakkord
  e, fs g a b c d e e d c b a g fs e
  % Terzintervall
  % Grundstellung
  d' d d c c c b b b b c c d d d d
  % Sextakkord
  b' g fs d c a g e e g a c d fs g b
  % Quartsextakkord
  g g g fs fs fs e e e e fs fs fs g g g
  % Quartintervall
  % Grundstellung
  d e fs fs g a a b b a a g fs fs e d
  % Sextakkord
  b a a g g fs fs e e fs fs g g a a b
  % Quartsextakkord
  g' a fs g e fs d e e d fs e g fs a g
  % Quintintervall
  % Grundstellung
  d d c b b c c b b c c b b c d d 
  % Sextakkord
  b b c c d d e e e e d d c c b b
  % Quartsextakkord
  g g fs a g b a c c c b b a a g g
  % Sextintervall
  % Grundstellung
  d e e e fs fs fs g g fs fs fs e e e d
  % Sextakkord
  b' g a fs a b d b b d b a fs a g b
  % Quartsextakkord
  e, e fs fs fs g g g g g g fs fs fs e e 
  % Septimintervall
  % Grundstellung
  d fs g a c d e g g e d c a g fs d
  % Sextakkord
  b' a g fs e' d c b b c d e fs, g a b
  % Quartsextakkord
  g b c d fs g a c c a g fs d c b g 
}

scoreCTenor = \relative c'' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  g e d c a g fs d d fs g a c d e g
  % Sextakkord
  e fs g a b c d e e d c b a g fs e
  % Quartsextakkord
  c a e' c g' e b' g g b e, g c, e a, c
  % Terzintervall
  % Grundstellung
  g' fs fs fs e e e d d e e e fs fs fs g
  % Sextakkord
  e' d b a fs e c b b c e fs a b d e
  % Quartsextakkord
  c b b b a a a g g a a a b b b c
  % Quartintervall
  % Grundstellung
  g g a b b c d d d d c b b a g g
  % Sextakkord
  b e, a d, g c, fs b, b fs' c g' d a' e b'
  % Quartsextakkord
  c c b b a a g g g g a a b b c c 
  % Qutintintervall
  % Grundstellung
  g fs e e d d e d d e d d e e fs g
  % Sextakkord
  e b' fs c' g d' a e' e a, d g, c fs, b e,
  % Quartsextakkord
  c b a c  b d c e e c d b c a b c
  % Sextintervall
  % Grundstellung
  g g g a a a b b b b a a a g g g
  % Sextakkord
  e' c e fs d fs g e e g fs d fs e c e  
  % Quartsextakkord
  g, a a a b b b c c b b b a a a g
  % Septimintervall
  % Grundstellung
  g a b d e fs a b b a fs e d b a g 
  % Sextakkord
  e' d c b a' g fs e e fs g a b, c d e
  % Quartsextakkord
  c d e g a b d e e d b a g e d c
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  g4 a b c d e fs g g fs e d c b a g
  \bar "||"
  % Sextakkord
  g4 a b c d e fs g g fs e d c b a g
  \bar "||"
  % Quartsextakkord
  g4 a b c d e fs g g fs e d c b a g
  \bar "||"
  % Terzintervall
  % Grundstellung
  g b d fs a, c e g g e c a fs' d b g
  \bar "||"
  % Sextakkord
  g b d fs a, c e g g e c a fs' d b g
  \bar "||"
  % Quartsextakkord
  g b d fs a, c e g g e c a fs' d b g
  \bar "||"
  % Quartintervall
  % Grundstellung
  g c fs b, e a, d g g d a e' b fs' c g
  \bar "||"
  % Sextakkord
  g c fs b, e a, d g g d a e' b fs' c g
  \bar "||"
  % Quartsextakkord
  g c fs b, e a, d g g d a e' b fs' c g
  \bar "||"
  % Quintintervall
  % Grundstellung
  g d' a e' b fs' c g' g c, fs b, e a, d g,
  \bar "||"
  % Sextakkord
  g d' a e' b fs' c g' g c, fs b, e a, d g,
  \bar "||"
  % Quartsextakkord
  g d' a e' b fs' c g' g c, fs b, e a, d g,
  \bar "||"
  % Sextintervall
  % Grundstellung
  g e' c a fs' d b g' g b, d fs a, c e g,
  \bar "||"
  % Sextakkord
  g e' c a fs' d b g' g b, d fs a, c e g,
  \bar "||"
  % Quartsextakkord
  g e' c a fs' d b g' g b, d fs a, c e g,
  \bar "||"
  % Septimintervall
  % Grundstellung
  g fs' e d c' b, a' g, g a' b, c' d, e fs g,
  \bar "|."
  % Sextakkord
  g fs' e d c' b, a' g, g a' b, c' d, e fs g,
  \bar "|."
  % Quartsextakkord
  g fs' e d c' b, a' g, g a' b, c' d, e fs g,
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
  g a:m b:m c d e:m fs:dim g g fs:dim e:m d c b:m a:m g
  % Sextakkord
  e:m/g fs:dim/a g/b a:m/c b:m/d c/e d/fs g g d/fs c/e b:m/d a:m/c g/b fs:dim/a e:m/g
  % Quartsextakkord
  c/g d/a e:m/b fs:dim/c g/d a:m/e b:m/fs c/g c/g b:m/fs a:m/e g/d fs:dim/c e:m/b d/a c/g
  % Terzintervall
  % Grundstellung
  g b:m d fs:dim a:m c e:m g g e:m c a fs:dim d b:m g
  % Sextakkord
  e:m/g g/b b:m/d d/fs fs:dim/a a:m/c c/e e:m/g e:m/g c/e a:m/c fs:dim/a d/fs b:m/d g/b e:m/g
  % Quartsextakkord
  c/g e:m/b g/d b:m/fs d/a fs:dim/c a:m/e c/g c/g a:m/e fs:dim/c d/a b:dim/fs g/d e:m/b c/g
  % Quartintervall
  % Grundstellung
  g c fs:dim b:m e:m a:m d g g d a:m e:m b:m fs:dim c g
  % Sextakkord
  e:m/g a:m/c d/fs g/b c/e fs:dim/a b:m/d e:m/g e:m/g b:m/d fs:dim/a c/e g/b d/fs a:m/c e:m/g
  % Quartsextakkord
  c/g fs:dim/c b:m/fs e:m/b a:m/e d/a g/d c/g c/g g/d d/a a:m/e e:m/b b:m/fs fs:dim/c c/g
  % Quintintervall
  % Grundstellung
  g d a e b fs c g g c fs b e a d g
  % Sextakkord
  e:m/g b:m/d fs:dim/a c/e g/b d/fs a:m/c e:m/g e:m/g a:m/c d/fs g/b c/e fs:dim/a b:m/d e:m/g
  % Quartsextakkord
  c/g g/d d/a a:m/e e:m/b b:m/fs fs:dim/c c/g c/g fs:dim/c b:m/fs e:m/b a:m/e d/a g/d c/g
  % Sextintervall
  % Grundstellung
  g e:m c a:m fs:dim d b:m g g b:m d fs:dim a:m c e:m g
  % Sextakkord
  e:m/g c/e a:m/c fs:dim/a d/fs b:m/d g/b e:m/g e:m/g g/b b:m/d d/fs fs:dim/a a:m/c c:/e e:m/g
  % Quartsextakkord
  c/g a:m/e fs:dim/c d/a b:m/fs g/d e:m/b c/g c/g e:m/b g/d b:m/fs d/a fs:dim/c a:m/e c/g
  % Septimintervall
  % Grundstellung
  g fs:dim e:m d c b:m a:m g g a:m b:m c d e:m fs:dim g  
  % Sextakkord
  e:m/g d/fs c/e b:m/d a:m/c g/b fs:dim/a e:m/g e:m/g fs:dim/a g/b a:m/c b:m/d c/e d/fs e:m/g  
  % Quartsextakkord
  c/g b:m/fs a:m/e g/d fs:dim/c e:m/b d/a c/g c/g d/a e:m/b fs:dim/c g/d a:m/e b:m/fs c/g  
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
  d^"Sekunde" fs g g b c c d d d c b g g fs d
  d^"Terz" g a d fs, g c d d c g fs d' b g d
  d^"Quarte" g d' g, c fs, a d d a fs c' g d' g, d
  d^"Quinte" a fs' c' g d' g, d' d g, d' g, c fs, a d,
  d^"Sexte" c' g fs d' a g d' d g, a d fs, g c d,
  d^"Septime" d' c b g g fs d d fs g g b c c d
}

scoreDAlto = \relative c'' {
  \global
  % Music follows here.
  g4 a b c d e fs g g fs e d c b a g
  \bar "||"
  g b d fs a, c e g g e c a fs' d b g
  \bar "||"
  g c fs b, e a, d g g d a e' b fs' c g
  \bar "||"
  g d' a e' b fs' c g' g c, fs b, e a, d g,
  \bar "||"
  g e' c a fs' d b g' g b, d fs a, c e g,
  \bar "||"
  g fs' e d c b a g g a b c d e fs g
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  b d d e g g a b
  b a g g e d d b
  b d fs a d, e g b
  b g e d a' g d b
  b e a d, g d fs b
  b fs d g d a' e b
  b fs' d g d a' e b'
  b e, a d, g d fs b,
  b g' e d a' fs d b'
  b d, fs a d, e g b,
  b a' g g e d d b
  b d d e g g a b
}

scoreDBass = \relative c' {
  \global
  % Music follows here.
  g d g c g c a g
  g d c' g c g d g
  g g d d d c' c g
  g c c d, d g g g g c d, g c d, d g g d d c' g d c' g
  g d d c' g d c g' g c d, g c d, d g
  g c c d, d d g g g g d d d c' c g g d c' g c g d g g d g c g c a g
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
  g d g c g c fs:dim/a g
  g d c g c g d g
  g g d d d c c g
  g c c d d g g g
  g c d g c d d g g d d c g d c g
  g d d c g d c g g c d g c d d g
  g c c d d d g g g g d d d c c g
  g d c g c g d g g d g c g c fs:dim/a g
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