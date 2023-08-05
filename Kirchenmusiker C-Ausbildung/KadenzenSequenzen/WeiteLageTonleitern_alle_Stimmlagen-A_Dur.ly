\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Tonleiter in A-Dur in Intervallen"
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
  \key a \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c''' {
  \global
  % Music follows here.
  a4^"Sekunde" b cs d e fs gs a a gs fs e d cs b a
  \bar "||"
  a^"Terz" cs e gs b, d fs a a fs d b gs' e cs a
  \bar "||"
  a^"Quarte" d gs cs, fs b, e a a e b fs' cs gs' d a
  \bar "||"
  a^"Quinte" e' b fs' cs gs' d a' a d, gs cs, fs b, e a,
  \bar "||"
  a^"Sexte" fs' d b gs' e cs a' a cs, e gs b, d fs a,
  \bar "||"
  a^"Septime" gs' fs e d cs b a a b cs d e fs gs a
  \bar "|."
}

scoreAAlto = \relative c'' {
  \global
  % Music follows here.
  cs e e fs a a b cs
  cs b a a fs e e cs
  cs e gs b e, fs a cs
  cs a fs e b' a e cs
  cs fs b e, a e gs cs
  cs gs e a e b' fs cs
  cs gs' e a e b' fs cs'
  cs fs, b e, a e gs cs,
  cs a' fs e b' gs e cs'
  cs e, gs b e, fs a cs,
  cs b' a a fs e e cs
  cs e e fs a a b cs
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  e gs a a cs d d e
  e e d cs a a gs e
  e a b e gs, a d e
  e d a gs e' cs a e
  e a e' a, d gs, b e
  e b gs d' a e' a, e
  e b gs' d' a e' a, e'
  e a, e' a, d gs, b e,
  e d' a gs e' b a e'
  e a, b e gs, a d e,
  e e' d cs a a gs e
  e gs a a cs d d e
}

scoreABass = \relative c' {
  \global
  % Music follows here.
  a e a d a d b a
  a e d' a d a e a
  a a e e e d' d a
  a d d e, e a a a a d e, a d e, e a a e e d' a e d' a
  a e e d' a e d a' a d e, a d e, e a
  a d d e, e e a a a a e e e d' d a a e d' a d a e a a e a d a d b a
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
  a e a d a d gs:dim/b a
  a e d a d a e a
  a a e e e d d a
  a d d e e a a a
  a d e a d e e a a e e d a e d a
  a e e d a e d a a d e a d e e a
  a d d e e e a a a a e e e d d a
  a e d a d a e a a e a d a d gs:dim/b a
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
  cs^"Sekunde" e e fs a a b cs cs b a a fs e e cs
  cs^"Terz" e gs b e, fs a cs cs a fs e b' a e cs
  cs^"Quarte" fs b e, a e gs cs cs gs e a e b' fs cs
  cs^"Quinte" gs' e a e b' fs cs' cs fs, b e, a e gs cs,
  cs^"Sexte" a' fs e b' gs e cs' cs e, gs b e, fs a cs,
  cs^"Septime" b' a a fs e e cs cs e e fs a a b cs
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  e gs a a cs d d e
  e e d cs a a gs e
  e a b e gs, a d e
  e d a gs e' cs a e
  e a e' a, d gs, b e
  e b gs d' a e' a, e
  e b gs' d' a e' a, e'
  e a, e' a, d gs, b e,
  e d' a gs e' b a e'
  e a, b e gs, a d e,
  e e' d cs a a gs e
  e gs a a cs d d e
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  a4 b cs d e fs gs a a gs fs e d cs b a
  \bar "||"
  a cs e gs b, d fs a a fs d b gs' e cs a
  \bar "||"
  a d gs cs, fs b, e a a e b fs' cs gs' d a
  \bar "||"
  a e' b fs' cs gs' d a' a d, gs cs, fs b, e a,
  \bar "||"
  a fs' d b gs' e cs a' a cs, e gs b, d fs a,
  \bar "||"
  a gs' fs e d cs b a a b cs d e fs gs a
  \bar "|."
}

scoreBBass = \relative c' {
  \global
  % Music follows here.
  a e a d a d b a
  a e d' a d a e a
  a a e e e d' d a
  a d d e, e a a a a d e, a d e, e a a e e d' a e d' a
  a e e d' a e d a' a d e, a d e, e a
  a d d e, e e a a a a e e e d' d a a e d' a d a e a a e a d a d b a
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
  a e a d a d gs:dim/b a
  a e d a d a e a
  a a e e e d d a
  a d d e e a a a
  a d e a d e e a a e e d a e d a
  a e e d a e d a a d e a d e e a
  a d d e e e a a a a e e e d d a
  a e d a d a e a a e a d a d gs:dim/b a
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
  cs^"Grundstellung Sekunde" b gs fs e cs b a a b cs e fs gs b cs
  % Sextakkord
  fs,^"Sextakkord Sekunde" d a' fs cs' a e' cs cs e a, cs fs, a d, fs
  % Quartsextakkord
  d^"Quartsextakkord Sekunde" e fs gs a b cs d d cs b a gs fs e d
  % Terzintervall
  % Grundstellung
  cs'^"Grundstellung Terz" cs b b b a a a a a a b b b cs cs
  % Sextakkord
  fs^"Sextakkord Terz" a, cs e, gs b, d fs, fs d' b gs' e cs' a fs'
  % Quartsextakkord
  fs^"Quartsextakkord Terz" fs e e e d d d d d d e e e fs fs
  % Quartintervall
  % Grundstellung
  cs^"Grundstellung Quarte" d d e fs fs gs a a gs fs fs e d d cs
  % Sextakkord
  fs,^"Sextakkord Quarte" fs e e d d cs cs cs cs d d e e fs fs
  fs'^"Quartsextakkord Quarte" gs e fs d e cs d d cs e d fs e gs fs
  % Quintintervall
  % Grundstellung
  cs^"Grundstellung Quinte" b b a gs gs a a a a gs gs a b b cs
  % Sextakkord
  fs,^"Sextakkord Quinte" gs gs a a b b cs cs b b a a gs gs fs
  fs^"Quartsextakkord Quinte" e e fs fs gs gs a a gs gs fs fs e e fs
  % Sextintervall
  % Grundstellung
  cs^"Grundstellung Sexte" cs d d d e e e e e e d d d cs cs
  % Sextakkord
  fs^"Sextakkord Sexte" d b d e cs a' cs, cs a' cs, e d b d cs
  d^"Quartsextakkord Sexte" d d e e e fs fs fs fs e e e d d d
  % Septimintervall
  % Grundstellung
  cs^"Grundstellung Septime" d fs gs a cs d e e d cs a gs fs d cs
  % Sextakkord
  fs^"Sextakkord Septime" b, d gs, b' e, gs cs, cs gs' e b' gs, d' b fs'
  fs^"Quartsextakkord Septime" gs b cs d fs gs a a gs fs d cs b gs fs
}

scoreCAlto = \relative c'' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  e d cs a gs fs d cs cs d fs gs a cs d e
  % Sextakkord
  cs d e fs gs a b cs cs b a gs fs e d cs
  % Quartsextakkord
  fs, gs a b cs d e fs fs e d cs b a gs fs
  % Terzintervall
  % Grundstellung
  e' e e d d d cs cs cs cs d d e e e e
  % Sextakkord
  cs' a gs e d b a fs fs a b d e gs a cs
  % Quartsextakkord
  a a a gs gs gs fs fs fs fs gs gs gs a a a
  % Quartintervall
  % Grundstellung
  e fs gs gs a b b cs cs b b a gs gs fs e
  % Sextakkord
  cs b b a a gs gs fs fs gs gs a a b b cs
  % Quartsextakkord
  a' b gs a fs gs e fs fs e gs fs a gs b a
  % Quintintervall
  % Grundstellung
  e e d cs cs d d cs cs d d cs cs d e e 
  % Sextakkord
  cs cs d d e e fs fs fs fs e e d d cs cs
  % Quartsextakkord
  a a gs b a cs b d d d cs cs b b a a
  % Sextintervall
  % Grundstellung
  e fs fs fs gs gs gs a a gs gs gs fs fs fs e
  % Sextakkord
  cs' a b gs b cs e cs cs e cs b gs b a cs
  % Quartsextakkord
  fs, fs gs gs gs a a a a a a gs gs gs fs fs 
  % Septimintervall
  % Grundstellung
  e gs a b d e fs a a fs e d b a gs e
  % Sextakkord
  cs' b a gs fs' e d cs cs d e fs gs, a b cs
  % Quartsextakkord
  a cs d e gs a b d d b a gs e d cs a 
}

scoreCTenor = \relative c'' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  a fs e d b a gs e e gs a b d e fs a
  % Sextakkord
  fs gs a b cs d e fs fs e d cs b a gs fs
  % Quartsextakkord
  d b fs' d a' fs cs' a a cs fs, a d, fs b, d
  % Terzintervall
  % Grundstellung
  a' gs gs gs fs fs fs e e fs fs fs gs gs gs a
  % Sextakkord
  fs' e cs b gs fs d cs cs d fs gs b cs e fs
  % Quartsextakkord
  d cs cs cs b b b a a b b b cs cs cs d
  % Quartintervall
  % Grundstellung
  a a b cs cs d e e e e d cs cs b a a
  % Sextakkord
  cs fs, b e, a d, gs cs, cs gs' d a' e b' fs cs'
  % Quartsextakkord
  d d cs cs b b a a a a b b cs cs d d 
  % Qutintintervall
  % Grundstellung
  a gs fs fs e e fs e e fs e e fs fs gs a
  % Sextakkord
  fs cs' gs d' a e' b fs' fs b, e a, d gs, cs fs,
  % Quartsextakkord
  d cs b d  cs e d fs fs d e cs d b cs d
  % Sextintervall
  % Grundstellung
  a a a b b b cs cs cs cs b b b a a a
  % Sextakkord
  fs' d fs gs e gs a fs fs a gs e gs fs d fs  
  % Quartsextakkord
  a, b b b cs cs cs d d cs cs cs b b b a
  % Septimintervall
  % Grundstellung
  a b cs e fs gs b cs cs b gs fs e cs b a 
  % Sextakkord
  fs' e d cs b' a gs fs fs gs a b cs, d e fs
  % Quartsextakkord
  d e fs a b cs e fs fs e cs b a fs e d
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  a4 b cs d e fs gs a a gs fs e d cs b a
  \bar "||"
  % Sextakkord
  a4 b cs d e fs gs a a gs fs e d cs b a
  \bar "||"
  % Quartsextakkord
  a4 b cs d e fs gs a a gs fs e d cs b a
  \bar "||"
  % Terzintervall
  % Grundstellung
  a cs e gs b, d fs a a fs d b gs' e cs a
  \bar "||"
  % Sextakkord
  a cs e gs b, d fs a a fs d b gs' e cs a
  \bar "||"
  % Quartsextakkord
  a cs e gs b, d fs a a fs d b gs' e cs a
  \bar "||"
  % Quartintervall
  % Grundstellung
  a d gs cs, fs b, e a a e b fs' cs gs' d a
  \bar "||"
  % Sextakkord
  a d gs cs, fs b, e a a e b fs' cs gs' d a
  \bar "||"
  % Quartsextakkord
  a d gs cs, fs b, e a a e b fs' cs gs' d a
  \bar "||"
  % Quintintervall
  % Grundstellung
  a e' b fs' cs gs' d a' a d, gs cs, fs b, e a,
  \bar "||"
  % Sextakkord
  a e' b fs' cs gs' d a' a d, gs cs, fs b, e a,
  \bar "||"
  % Quartsextakkord
  a e' b fs' cs gs' d a' a d, gs cs, fs b, e a,
  \bar "||"
  % Sextintervall
  % Grundstellung
  a fs' d b gs' e cs a' a cs, e gs b, d fs a,
  \bar "||"
  % Sextakkord
  a fs' d b gs' e cs a' a cs, e gs b, d fs a,
  \bar "||"
  % Quartsextakkord
  a fs' d b gs' e cs a' a cs, e gs b, d fs a,
  \bar "||"
  % Septimintervall
  % Grundstellung
  a gs' fs e d' cs, b' a, a b' cs, d' e, fs gs a,
  \bar "|."
  % Sextakkord
  a gs' fs e d' cs, b' a, a b' cs, d' e, fs gs a,
  \bar "|."
  % Quartsextakkord
  a gs' fs e d' cs, b' a, a b' cs, d' e, fs gs a,
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
  a b:m cs:m d e fs:m gs:dim a a gs:dim fs:m e d cs:m b:m a
  % Sextakkord
  fs:m/a gs:dim/b a/cs b:m/d cs:m/e d/fs e/gs a a e/gs d/fs cs:m/e b:m/d a/cs gs:dim/b fs:m/a
  % Quartsextakkord
  d/a e/b fs:m/cs gs:dim/d a/e b:m/fs cs:m/gs d/a d/a cs:m/gs b:m/fs a/e gs:dim/d fs:m/cs e/b d/a
  % Terzintervall
  % Grundstellung
  a cs:m e gs:dim b:m d fs:m a a fs:m d b gs:dim e cs:m a
  % Sextakkord
  fs:m/a a/cs cs:m/e e/gs gs:dim/b b:m/d d/fs fs:m/a fs:m/a d/fs b:m/d gs:dim/b e/gs cs:m/e a/cs fs:m/a
  % Quartsextakkord
  d/a fs:m/cs a/e cs:m/gs e/b gs:dim/d b:m/fs d/a d/a b:m/fs gs:dim/d e/b cs:dim/gs a/e fs:m/cs d/a
  % Quartintervall
  % Grundstellung
  a d gs:dim cs:m fs:m b:m e a a e b:m fs:m cs:m gs:dim d a
  % Sextakkord
  fs:m/a b:m/d e/gs a/cs d/fs gs:dim/b cs:m/e fs:m/a fs:m/a cs:m/e gs:dim/b d/fs a/cs e/gs b:m/d fs:m/a
  % Quartsextakkord
  d/a gs:dim/d cs:m/gs fs:m/cs b:m/fs e/b a/e d/a d/a a/e e/b b:m/fs fs:m/cs cs:m/gs gs:dim/d d/a
  % Quintintervall
  % Grundstellung
  a e b fs cs gs d a a d gs cs fs b e a
  % Sextakkord
  fs:m/a cs:m/e gs:dim/b d/fs a/cs e/gs b:m/d fs:m/a fs:m/a b:m/d e/gs a/cs d/fs gs:dim/b cs:m/e fs:m/a
  % Quartsextakkord
  d/a a/e e/b b:m/fs fs:m/cs cs:m/gs gs:dim/d d/a d/a gs:dim/d cs:m/gs fs:m/cs b:m/fs e/b a/e d/a
  % Sextintervall
  % Grundstellung
  a fs:m d b:m gs:dim e cs:m a a cs:m e gs:dim b:m d fs:m a
  % Sextakkord
  fs:m/a d/fs b:m/d gs:dim/b e/gs cs:m/e a/cs fs:m/a fs:m/a a/cs cs:m/e e/gs gs:dim/b b:m/d d:/fs fs:m/a
  % Quartsextakkord
  d/a b:m/fs gs:dim/d e/b cs:m/gs a/e fs:m/cs d/a d/a fs:m/cs a/e cs:m/gs e/b gs:dim/d b:m/fs d/a
  % Septimintervall
  % Grundstellung
  a gs:dim fs:m e d cs:m b:m a a b:m cs:m d e fs:m gs:dim a  
  % Sextakkord
  fs:m/a e/gs d/fs cs:m/e b:m/d a/cs gs:dim/b fs:m/a fs:m/a gs:dim/b a/cs b:m/d cs:m/e d/fs e/gs fs:m/a  
  % Quartsextakkord
  d/a cs:m/gs b:m/fs a/e gs:dim/d fs:m/cs e/b d/a d/a e/b fs:m/cs gs:dim/d a/e b:m/fs cs:m/gs d/a  
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
  e^"Sekunde" gs a a cs d d e e e d cs a a gs e
  e^"Terz" a b e gs, a d e e d a gs e' cs a e
  e^"Quarte" a e' a, d gs, b e e b gs d' a e' a, e
  e^"Quinte" b gs' d' a e' a, e' e a, e' a, d gs, b e,
  e^"Sexte" d' a gs e' b a e' e a, b e gs, a d e,
  e^"Septime" e' d cs a a gs e e gs a a cs d d e
}

scoreDAlto = \relative c'' {
  \global
  % Music follows here.
  a4 b cs d e fs gs a a gs fs e d cs b a
  \bar "||"
  a cs e gs b, d fs a a fs d b gs' e cs a
  \bar "||"
  a d gs cs, fs b, e a a e b fs' cs gs' d a
  \bar "||"
  a e' b fs' cs gs' d a' a d, gs cs, fs b, e a,
  \bar "||"
  a fs' d b gs' e cs a' a cs, e gs b, d fs a,
  \bar "||"
  a gs' fs e d cs b a a b cs d e fs gs a
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  cs e e fs a a b cs
  cs b a a fs e e cs
  cs e gs b e, fs a cs
  cs a fs e b' a e cs
  cs fs b e, a e gs cs
  cs gs e a e b' fs cs
  cs gs' e a e b' fs cs'
  cs fs, b e, a e gs cs,
  cs a' fs e b' gs e cs'
  cs e, gs b e, fs a cs,
  cs b' a a fs e e cs
  cs e e fs a a b cs
}

scoreDBass = \relative c' {
  \global
  % Music follows here.
  a e a d a d b a
  a e d' a d a e a
  a a e e e d' d a
  a d d e, e a a a a d e, a d e, e a a e e d' a e d' a
  a e e d' a e d a' a d e, a d e, e a
  a d d e, e e a a a a e e e d' d a a e d' a d a e a a e a d a d b a
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
  a e a d a d gs:dim/b a
  a e d a d a e a
  a a e e e d d a
  a d d e e a a a
  a d e a d e e a a e e d a e d a
  a e e d a e d a a d e a d e e a
  a d d e e e a a a a e e e d d a
  a e d a d a e a a e a d a d gs:dim/b a
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