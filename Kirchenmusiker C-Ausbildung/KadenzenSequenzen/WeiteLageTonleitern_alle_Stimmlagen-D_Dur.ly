\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Tonleiter in D-Dur in Intervallen"
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
  \key d \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  d4^"Sekunde" e fs g a b cs d d cs b a g fs e d
  \bar "||"
  d^"Terz" fs a cs e, g b d d b g e cs' a fs d
  \bar "||"
  d^"Quarte" g cs fs, b e, a d d a e b' fs cs' g d
  \bar "||"
  d^"Quinte" a' e b' fs cs' g d' d g, cs fs, b e, a d,
  \bar "||"
  d^"Sexte" b' g e cs' a fs d' d fs, a cs e, g b d,
  \bar "||"
  d^"Septime" cs' b a g fs e d d e fs g a b cs d
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  fs a a b d d e fs
  fs e d d b a a fs
  fs a cs e a, b d fs
  fs d b a e' d a fs
  fs b e a, d a cs fs
  fs cs a d a e' b fs
  fs cs' a d a e' b fs'
  fs b, e a, d a cs fs,
  fs d' b a e' cs a fs'
  fs a, cs e a, b d fs,
  fs e' d d b a a fs
  fs a a b d d e fs
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  a cs d d fs g g a
  a a g fs d d cs a
  a d e a cs, d g a
  a g d cs a' fs d a
  a d a' d, g cs, e a
  a e cs g' d a' d, a
  a e cs' g' d a' d, a'
  a d, a' d, g cs, e a,
  a g' d cs a' e d a'
  a d, e a cs, d g a,
  a a' g fs d d cs a
  a cs d d fs g g a
}

scoreABass = \relative c {
  \global
  % Music follows here.
  d a d g d g e d
  d a g' d g d a d
  d d a a a g' g d
  d g g a, a d d d d g a, d g a, a d d a a g' d a g' d
  d a a g' d a g d' d g a, d g a, a d
  d g g a, a a d d d d a a a g' g d d a g' d g d a d d a d g d g e d
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
  d a d g d g cs:dim/e d
  d a g d g d a d
  d d a a a g g d
  d g g a a d d d
  d g a d g a a d d a a g d a g d
  d a a g d a g d d g a d g a a d
  d g g a a a d d d d a a a g g d
  d a g d g d a d d a d g d g cs:dim/e d
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
  fs^"Sekunde" a a b d d e fs fs e d d b a a fs
  fs^"Terz" a cs e a, b d fs fs d b a e' d a fs
  fs^"Quarte" b e a, d a cs fs fs cs a d a e' b fs
  fs^"Quinte" cs' a d a e' b fs' fs b, e a, d a cs fs,
  fs^"Sexte" d' b a e' cs a fs' fs a, cs e a, b d fs,
  fs^"Septime" e' d d b a a fs fs a a b d d e fs
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  a cs d d fs g g a
  a a g fs d d cs a
  a d e a cs, d g a
  a g d cs a' fs d a
  a d a' d, g cs, e a
  a e cs g' d a' d, a
  a e cs' g' d a' d, a'
  a d, a' d, g cs, e a,
  a g' d cs a' e d a'
  a d, e a cs, d g a,
  a a' g fs d d cs a
  a cs d d fs g g a
}

scoreBTenor = \relative c {
  \global
  % Music follows here.
  d4 e fs g a b cs d d cs b a g fs e d
  \bar "||"
  d fs a cs e, g b d d b g e cs' a fs d
  \bar "||"
  d g cs fs, b e, a d d a e b' fs cs' g d
  \bar "||"
  d a' e b' fs cs' g d' d g, cs fs, b e, a d,
  \bar "||"
  d b' g e cs' a fs d' d fs, a cs e, g b d,
  \bar "||"
  d cs' b a g fs e d d e fs g a b cs d
  \bar "|."
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  d a d g d g e d
  d a g' d g d a d
  d d a a a g' g d
  d g g a, a d d d d g a, d g a, a d d a a g' d a g' d
  d a a g' d a g d' d g a, d g a, a d
  d g g a, a a d d d d a a a g' g d d a g' d g d a d d a d g d g e d
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
  d a d g d g cs:dim/e d
  d a g d g d a d
  d d a a a g g d
  d g g a a d d d
  d g a d g a a d d a a g d a g d
  d a a g d a g d d g a d g a a d
  d g g a a a d d d d a a a g g d
  d a g d g d a d d a d g d g cs:dim/e d
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
  fs^"Grundstellung Sekunde" e cs b a fs e d d e fs a b cs e fs
  % Sextakkord
  b,^"Sextakkord Sekunde" g d' b fs' d a' fs fs a d, fs b, d g, b
  % Quartsextakkord
  g^"Quartsextakkord Sekunde" a b cs d e fs g g fs e d cs b a g
  % Terzintervall
  % Grundstellung
  fs'^"Grundstellung Terz" fs e e e d d d d d d e e e fs fs
  % Sextakkord
  b^"Sextakkord Terz" d, fs a, cs e, g b, b g' e cs' a fs' d b'
  % Quartsextakkord
  b^"Quartsextakkord Terz" b a a a g g g g g g a a a b b
  % Quartintervall
  % Grundstellung
  fs^"Grundstellung Quarte" g g a b b cs d d cs b b a g g fs
  % Sextakkord
  b,^"Sextakkord Quarte" b a a g g fs fs fs fs g g a a b b
  b'^"Quartsextakkord Quarte" cs a b g a fs g g fs a g b a cs b
  % Quintintervall
  % Grundstellung
  fs^"Grundstellung Quinte" e e d cs cs d d d d cs cs d e e fs
  % Sextakkord
  b,^"Sextakkord Quinte" cs cs d d e e fs fs e e d d cs cs b
  b^"Quartsextakkord Quinte" a a b b cs cs d d cs cs b b a a b
  % Sextintervall
  % Grundstellung
  fs^"Grundstellung Sexte" fs g g g a a a a a a g g g fs fs
  % Sextakkord
  b^"Sextakkord Sexte" g e g a fs d' fs, fs d' fs, a g e g fs
  g^"Quartsextakkord Sexte" g g a a a b b b b a a a g g g
  % Septimintervall
  % Grundstellung
  fs^"Grundstellung Septime" g b cs d fs g a a g fs d cs b g fs
  % Sextakkord
  b^"Sextakkord Septime" e, g cs, e' a, cs fs, fs cs' a e' cs, g' e b'
  b^"Quartsextakkord Septime" cs e fs g b cs d d cs b g fs e cs b
}

scoreCAlto = \relative c'' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  a g fs d cs b g fs fs g b cs d fs g a
  % Sextakkord
  fs g a b cs d e fs fs e d cs b a g fs
  % Quartsextakkord
  b, cs d e fs g a b b a g fs e d cs b
  % Terzintervall
  % Grundstellung
  a' a a g g g fs fs fs fs g g a a a a
  % Sextakkord
  fs' d cs a g e d b b d e g a cs d fs
  % Quartsextakkord
  d d d cs cs cs b b b b cs cs cs d d d
  % Quartintervall
  % Grundstellung
  a b cs cs d e e fs fs e e d cs cs b a
  % Sextakkord
  fs e e d d cs cs b b cs cs d d e e fs
  % Quartsextakkord
  d' e cs d b cs a b b a cs b d cs e d
  % Quintintervall
  % Grundstellung
  a a g fs fs g g fs fs g g fs fs g a a 
  % Sextakkord
  fs fs g g a a b b b b a a g g fs fs
  % Quartsextakkord
  d d cs e d fs e g g g fs fs e e d d
  % Sextintervall
  % Grundstellung
  a b b b cs cs cs d d cs cs cs b b b a
  % Sextakkord
  fs' d e cs e fs a fs fs a fs e cs e d fs
  % Quartsextakkord
  b, b cs cs cs d d d d d d cs cs cs b b 
  % Septimintervall
  % Grundstellung
  a cs d e g a b d d b a g e d cs a
  % Sextakkord
  fs' e d cs b' a g fs fs g a b cs, d e fs
  % Quartsextakkord
  d fs g a cs d e g g e d cs a g fs d 
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  d b a g e d cs a a cs d e g a b d
  % Sextakkord
  b cs d e fs g a b b a g fs e d cs b
  % Quartsextakkord
  g e b' g d' b fs' d d fs b, d g, b e, g
  % Terzintervall
  % Grundstellung
  d' cs cs cs b b b a a b b b cs cs cs d
  % Sextakkord
  b' a fs e cs b g fs fs g b cs e fs a b
  % Quartsextakkord
  g fs fs fs e e e d d e e e fs fs fs g
  % Quartintervall
  % Grundstellung
  d d e fs fs g a a a a g fs fs e d d
  % Sextakkord
  fs b, e a, d g, cs fs, fs cs' g d' a e' b fs'
  % Quartsextakkord
  g g fs fs e e d d d d e e fs fs g g 
  % Qutintintervall
  % Grundstellung
  d cs b b a a b a a b a a b b cs d
  % Sextakkord
  b fs' cs g' d a' e b' b e, a d, g cs, fs b,
  % Quartsextakkord
  g fs e g  fs a g b b g a fs g e fs g
  % Sextintervall
  % Grundstellung
  d d d e e e fs fs fs fs e e e d d d
  % Sextakkord
  b' g b cs a cs d b b d cs a cs b g b  
  % Quartsextakkord
  d, e e e fs fs fs g g fs fs fs e e e d
  % Septimintervall
  % Grundstellung
  d e fs a b cs e fs fs e cs b a fs e d 
  % Sextakkord
  b' a g fs e' d cs b b cs d e fs, g a b
  % Quartsextakkord
  g a b d e fs a b b a fs e d b a g
}

scoreCBass = \relative c, {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  d4 e fs g a b cs d d cs b a g fs e d
  \bar "||"
  % Sextakkord
  d4 e fs g a b cs d d cs b a g fs e d
  \bar "||"
  % Quartsextakkord
  d4 e fs g a b cs d d cs b a g fs e d
  \bar "||"
  % Terzintervall
  % Grundstellung
  d fs a cs e, g b d d b g e cs' a fs d
  \bar "||"
  % Sextakkord
  d fs a cs e, g b d d b g e cs' a fs d
  \bar "||"
  % Quartsextakkord
  d fs a cs e, g b d d b g e cs' a fs d
  \bar "||"
  % Quartintervall
  % Grundstellung
  d g cs fs, b e, a d d a e b' fs cs' g d
  \bar "||"
  % Sextakkord
  d g cs fs, b e, a d d a e b' fs cs' g d
  \bar "||"
  % Quartsextakkord
  d g cs fs, b e, a d d a e b' fs cs' g d
  \bar "||"
  % Quintintervall
  % Grundstellung
  d a' e b' fs cs' g d' d g, cs fs, b e, a d,
  \bar "||"
  % Sextakkord
  d a' e b' fs cs' g d' d g, cs fs, b e, a d,
  \bar "||"
  % Quartsextakkord
  d a' e b' fs cs' g d' d g, cs fs, b e, a d,
  \bar "||"
  % Sextintervall
  % Grundstellung
  d b' g e cs' a fs d' d fs, a cs e, g b d,
  \bar "||"
  % Sextakkord
  d b' g e cs' a fs d' d fs, a cs e, g b d,
  \bar "||"
  % Quartsextakkord
  d b' g e cs' a fs d' d fs, a cs e, g b d,
  \bar "||"
  % Septimintervall
  % Grundstellung
  d cs' b a g' fs, e' d, d e' fs, g' a, b cs d,
  \bar "|."
  % Sextakkord
  d cs' b a g' fs, e' d, d e' fs, g' a, b cs d,
  \bar "|."
  % Quartsextakkord
  d cs' b a g' fs, e' d, d e' fs, g' a, b cs d,
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
  d e:m fs:m g a b:m cs:dim d d cs:dim b:m a g fs:m e:m d
  % Sextakkord
  b:m/d cs:dim/e d/fs e:m/g fs:m/a g/b a/cs d d a/cs g/b fs:m/a e:m/g d/fs cs:dim/e b:m/d
  % Quartsextakkord
  g/d a/e b:m/fs cs:dim/g d/a e:m/b fs:m/cs g/d g/d fs:m/cs e:m/b d/a cs:dim/g b:m/fs a/e g/d
  % Terzintervall
  % Grundstellung
  d fs:m a cs:dim e:m g b:m d d b:m g e cs:dim a fs:m d
  % Sextakkord
  b:m/d d/fs fs:m/a a/cs cs:dim/e e:m/g g/b b:m/d b:m/d g/b e:m/g cs:dim/e a/cs fs:m/a d/fs b:m/d
  % Quartsextakkord
  g/d b:m/fs d/a fs:m/cs a/e cs:dim/g e:m/b g/d g/d e:m/b cs:dim/g a/e fs:dim/cs d/a b:m/fs g/d
  % Quartintervall
  % Grundstellung
  d g cs:dim fs:m b:m e:m a d d a e:m b:m fs:m cs:dim g d
  % Sextakkord
  b:m/d e:m/g a/cs d/fs g/b cs:dim/e fs:m/a b:m/d b:m/d fs:m/a cs:dim/e g/b d/fs a/cs e:m/g b:m/d
  % Quartsextakkord
  g/d cs:dim/g fs:m/cs b:m/fs e:m/b a/e d/a g/d g/d d/a a/e e:m/b b:m/fs fs:m/cs cs:dim/g g/d
  % Quintintervall
  % Grundstellung
  d a e b fs cs g d d g cs fs b e a d
  % Sextakkord
  b:m/d fs:m/a cs:dim/e g/b d/fs a/cs e:m/g b:m/d b:m/d e:m/g a/cs d/fs g/b cs:dim/e fs:m/a b:m/d
  % Quartsextakkord
  g/d d/a a/e e:m/b b:m/fs fs:m/cs cs:dim/g g/d g/d cs:dim/g fs:m/cs b:m/fs e:m/b a/e d/a g/d
  % Sextintervall
  % Grundstellung
  d b:m g e:m cs:dim a fs:m d d fs:m a cs:dim e:m g b:m d
  % Sextakkord
  b:m/d g/b e:m/g cs:dim/e a/cs fs:m/a d/fs b:m/d b:m/d d/fs fs:m/a a/cs cs:dim/e e:m/g g:/b b:m/d
  % Quartsextakkord
  g/d e:m/b cs:dim/g a/e fs:m/cs d/a b:m/fs g/d g/d b:m/fs d/a fs:m/cs a/e cs:dim/g e:m/b g/d
  % Septimintervall
  % Grundstellung
  d cs:dim b:m a g fs:m e:m d d e:m fs:m g a b:m cs:dim d  
  % Sextakkord
  b:m/d a/cs g/b fs:m/a e:m/g d/fs cs:dim/e b:m/d b:m/d cs:dim/e d/fs e:m/g fs:m/a g/b a/cs b:m/d  
  % Quartsextakkord
  g/d fs:m/cs e:m/b d/a cs:dim/g b:m/fs a/e g/d g/d a/e b:m/fs cs:dim/g d/a e:m/b fs:m/cs g/d  
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
  a^"Sekunde" cs d d fs g g a a a g fs d d cs a
  a^"Terz" d e a cs, d g a a g d cs a' fs d a
  a^"Quarte" d a' d, g cs, e a a e cs g' d a' d, a
  a^"Quinte" e cs' g' d a' d, a' a d, a' d, g cs, e a,
  a^"Sexte" g' d cs a' e d a' a d, e a cs, d g a,
  a^"Septime" a' g fs d d cs a a cs d d fs g g a
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  d4 e fs g a b cs d d cs b a g fs e d
  \bar "||"
  d fs a cs e, g b d d b g e cs' a fs d
  \bar "||"
  d g cs fs, b e, a d d a e b' fs cs' g d
  \bar "||"
  d a' e b' fs cs' g d' d g, cs fs, b e, a d,
  \bar "||"
  d b' g e cs' a fs d' d fs, a cs e, g b d,
  \bar "||"
  d cs' b a g fs e d d e fs g a b cs d
  \bar "|."
}

scoreDTenor = \relative c {
  \global
  % Music follows here.
  fs a a b d d e fs
  fs e d d b a a fs
  fs a cs e a, b d fs
  fs d b a e' d a fs
  fs b e a, d a cs fs
  fs cs a d a e' b fs
  fs cs' a d a e' b fs'
  fs b, e a, d a cs fs,
  fs d' b a e' cs a fs'
  fs a, cs e a, b d fs,
  fs e' d d b a a fs
  fs a a b d d e fs
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  d a d g d g e d
  d a g' d g d a d
  d d a a a g' g d
  d g g a, a d d d d g a, d g a, a d d a a g' d a g' d
  d a a g' d a g d' d g a, d g a, a d
  d g g a, a a d d d d a a a g' g d d a g' d g d a d d a d g d g e d
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
  d a d g d g cs:dim/e d
  d a g d g d a d
  d d a a a g g d
  d g g a a d d d
  d g a d g a a d d a a g d a g d
  d a a g d a g d d g a d g a a d
  d g g a a a d d d d a a a g g d
  d a g d g d a d d a d g d g cs:dim/e d
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