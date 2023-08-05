\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Tonleiter in E-Dur in Intervallen"
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
  \key e \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  e4^"Sekunde" fs gs a b cs ds e e ds cs b a gs fs e
  \bar "||"
  e^"Terz" gs b ds fs, a cs e e cs a fs ds' b gs e
  \bar "||"
  e^"Quarte" a ds gs, cs fs, b e e b fs cs' gs ds' a e
  \bar "||"
  e^"Quinte" b' fs cs' gs ds' a e' e a, ds gs, cs fs, b e,
  \bar "||"
  e^"Sexte" cs' a fs ds' b gs e' e gs, b ds fs, a cs e,
  \bar "||"
  e^"Septime" ds' cs b a gs fs e e fs gs a b cs ds e
  \bar "|."
}

scoreAAlto = \relative c'' {
  \global
  % Music follows here.
  gs b b cs e e fs gs
  gs fs e e cs b b gs
  gs b ds fs b, cs e gs
  gs e cs b fs' e b gs
  gs cs fs b, e b ds gs
  gs ds b e b fs' cs gs
  gs ds' b e b fs' cs gs'
  gs cs, fs b, e b ds gs,
  gs e' cs b fs' ds b gs'
  gs b, ds fs b, cs e gs,
  gs fs' e e cs b b gs
  gs b b cs e e fs gs
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  b ds e e gs a a b
  b b a gs e e ds b
  b e fs b ds, e a b
  b a e ds b' gs e b
  b e b' e, a ds, fs b
  b fs ds a' e b' e, b
  b fs ds' a' e b' e, b'
  b e, b' e, a ds, fs b,
  b a' e ds b' fs e b'
  b e, fs b ds, e a b,
  b b' a gs e e ds b
  b ds e e gs a a b
}

scoreABass = \relative c {
  \global
  % Music follows here.
  e b e a e a fs e
  e b a' e a e b e
  e e b b b a' a e
  e a a b, b e e e e a b, e a b, b e e b b a' e b a' e
  e b b a' e b a e' e a b, e a b, b e
  e a a b, b b e e e e b b b a' a e e b a' e a e b e e b e a e a fs e
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
  e b e a e a ds:dim/fs e
  e b a e a e b e
  e e b b b a a e
  e a a b b e e e
  e a b e a b b e e b b a e b a e
  e b b a e b a e e a b e a b b e
  e a a b b b e e e e b b b a a e
  e b a e a e b e e b e a e a ds:dim/fs e
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
  gs^"Sekunde" b b cs e e fs gs gs fs e e cs b b gs
  gs^"Terz" b ds fs b, cs e gs gs e cs b fs' e b gs
  gs^"Quarte" cs fs b, e b ds gs gs ds b e b fs' cs gs
  gs^"Quinte" ds' b e b fs' cs gs' gs cs, fs b, e b ds gs,
  gs^"Sexte" e' cs b fs' ds b gs' gs b, ds fs b, cs e gs,
  gs^"Septime" fs' e e cs b b gs gs b b cs e e fs gs
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  b ds e e gs a a b
  b b a gs e e ds b
  b e fs b ds, e a b
  b a e ds b' gs e b
  b e b' e, a ds, fs b
  b fs ds a' e b' e, b
  b fs ds' a' e b' e, b'
  b e, b' e, a ds, fs b,
  b a' e ds b' fs e b'
  b e, fs b ds, e a b,
  b b' a gs e e ds b
  b ds e e gs a a b
}

scoreBTenor = \relative c {
  \global
  % Music follows here.
  e4 fs gs a b cs ds e e ds cs b a gs fs e
  \bar "||"
  e gs b ds fs, a cs e e cs a fs ds' b gs e
  \bar "||"
  e a ds gs, cs fs, b e e b fs cs' gs ds' a e
  \bar "||"
  e b' fs cs' gs ds' a e' e a, ds gs, cs fs, b e,
  \bar "||"
  e cs' a fs ds' b gs e' e gs, b ds fs, a cs e,
  \bar "||"
  e ds' cs b a gs fs e e fs gs a b cs ds e
  \bar "|."
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  e b e a e a fs e
  e b a' e a e b e
  e e b b b a' a e
  e a a b, b e e e e a b, e a b, b e e b b a' e b a' e
  e b b a' e b a e' e a b, e a b, b e
  e a a b, b b e e e e b b b a' a e e b a' e a e b e e b e a e a fs e
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
  e b e a e a ds:dim/fs e
  e b a e a e b e
  e e b b b a a e
  e a a b b e e e
  e a b e a b b e e b b a e b a e
  e b b a e b a e e a b e a b b e
  e a a b b b e e e e b b b a a e
  e b a e a e b e e b e a e a ds:dim/fs e
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
  gs^"Grundstellung Sekunde" fs ds cs b gs fs e e fs gs b cs ds fs gs
  % Sextakkord
  cs,^"Sextakkord Sekunde" a e' cs gs' e b' gs gs b e, gs cs, e a, cs
  % Quartsextakkord
  a^"Quartsextakkord Sekunde" b cs ds e fs gs a a gs fs e ds cs b a
  % Terzintervall
  % Grundstellung
  gs'^"Grundstellung Terz" gs fs fs fs e e e e e e fs fs fs gs gs
  % Sextakkord
  cs^"Sextakkord Terz" e, gs b, ds fs, a cs, cs a' fs ds' b gs' e cs'
  % Quartsextakkord
  cs^"Quartsextakkord Terz" cs b b b a a a a a a b b b cs cs
  % Quartintervall
  % Grundstellung
  gs^"Grundstellung Quarte" a a b cs cs ds e e ds cs cs b a a gs
  % Sextakkord
  cs,^"Sextakkord Quarte" cs b b a a gs gs gs gs a a b b cs cs
  cs'^"Quartsextakkord Quarte" ds b cs a b gs a a gs b a cs b ds cs
  % Quintintervall
  % Grundstellung
  gs^"Grundstellung Quinte" fs fs e ds ds e e e e ds ds e fs fs gs
  % Sextakkord
  cs,^"Sextakkord Quinte" ds ds e e fs fs gs gs fs fs e e ds ds cs
  cs^"Quartsextakkord Quinte" b b cs cs ds ds e e ds ds cs cs b b cs
  % Sextintervall
  % Grundstellung
  gs^"Grundstellung Sexte" gs a a a b b b b b b a a a gs gs
  % Sextakkord
  cs^"Sextakkord Sexte" a fs a b gs e' gs, gs e' gs, b a fs a gs
  a^"Quartsextakkord Sexte" a a b b b cs cs cs cs b b b a a a
  % Septimintervall
  % Grundstellung
  gs^"Grundstellung Septime" a cs ds e gs a b b a gs e ds cs a gs
  % Sextakkord
  cs^"Sextakkord Septime" fs, a ds, fs' b, ds gs, gs ds' b fs' ds, a' fs cs'
  cs^"Quartsextakkord Septime" ds fs gs a cs ds e e ds cs a gs fs ds cs
}

scoreCAlto = \relative c'' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  b a gs e ds cs a gs gs a cs ds e gs a b
  % Sextakkord
  gs a b cs ds e fs gs gs fs e ds cs b a gs
  % Quartsextakkord
  cs, ds e fs gs a b cs cs b a gs fs e ds cs
  % Terzintervall
  % Grundstellung
  b' b b a a a gs gs gs gs a a b b b b
  % Sextakkord
  gs' e ds b a fs e cs cs e fs a b ds e gs
  % Quartsextakkord
  e e e ds ds ds cs cs cs cs ds ds ds e e e
  % Quartintervall
  % Grundstellung
  b cs ds ds e fs fs gs gs fs fs e ds ds cs b
  % Sextakkord
  gs fs fs e e ds ds cs cs ds ds e e fs fs gs
  % Quartsextakkord
  e' fs ds e cs ds b cs cs b ds cs e ds fs e
  % Quintintervall
  % Grundstellung
  b b a gs gs a a gs gs a a gs gs a b b 
  % Sextakkord
  gs gs a a b b cs cs cs cs b b a a gs gs
  % Quartsextakkord
  e e ds fs e gs fs a a a gs gs fs fs e e
  % Sextintervall
  % Grundstellung
  b cs cs cs ds ds ds e e ds ds ds cs cs cs b
  % Sextakkord
  gs' e fs ds fs gs b gs gs b gs fs ds fs e gs
  % Quartsextakkord
  cs, cs ds ds ds e e e e e e ds ds ds cs cs 
  % Septimintervall
  % Grundstellung
  b ds e fs a b cs e e cs b a fs e ds b
  % Sextakkord
  gs' fs e ds cs' b a gs gs a b cs ds, e fs gs
  % Quartsextakkord
  e gs a b ds e fs a a fs e ds b a gs e 
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  e cs b a fs e ds b b ds e fs a b cs e
  % Sextakkord
  cs ds e fs gs a b cs cs b a gs fs e ds cs
  % Quartsextakkord
  a fs cs' a e' cs gs' e e gs cs, e a, cs fs, a
  % Terzintervall
  % Grundstellung
  e' ds ds ds cs cs cs b b cs cs cs ds ds ds e
  % Sextakkord
  cs' b gs fs ds cs a gs gs a cs ds fs gs b cs
  % Quartsextakkord
  a gs gs gs fs fs fs e e fs fs fs gs gs gs a
  % Quartintervall
  % Grundstellung
  e e fs gs gs a b b b b a gs gs fs e e
  % Sextakkord
  gs cs, fs b, e a, ds gs, gs ds' a e' b fs' cs gs'
  % Quartsextakkord
  a a gs gs fs fs e e e e fs fs gs gs a a 
  % Qutintintervall
  % Grundstellung
  e ds cs cs b b cs b b cs b b cs cs ds e
  % Sextakkord
  cs gs' ds a' e b' fs cs' cs fs, b e, a ds, gs cs,
  % Quartsextakkord
  a gs fs a  gs b a cs cs a b gs a fs gs a
  % Sextintervall
  % Grundstellung
  e e e fs fs fs gs gs gs gs fs fs fs e e e
  % Sextakkord
  cs' a cs ds b ds e cs cs e ds b ds cs a cs  
  % Quartsextakkord
  e, fs fs fs gs gs gs a a gs gs gs fs fs fs e
  % Septimintervall
  % Grundstellung
  e fs gs b cs ds fs gs gs fs ds cs b gs fs e 
  % Sextakkord
  cs' b a gs fs' e ds cs cs ds e fs gs, a b cs
  % Quartsextakkord
  a b cs e fs gs b cs cs b gs fs e cs b a
}

scoreCBass = \relative c, {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  e4 fs gs a b cs ds e e ds cs b a gs fs e
  \bar "||"
  % Sextakkord
  e4 fs gs a b cs ds e e ds cs b a gs fs e
  \bar "||"
  % Quartsextakkord
  e4 fs gs a b cs ds e e ds cs b a gs fs e
  \bar "||"
  % Terzintervall
  % Grundstellung
  e gs b ds fs, a cs e e cs a fs ds' b gs e
  \bar "||"
  % Sextakkord
  e gs b ds fs, a cs e e cs a fs ds' b gs e
  \bar "||"
  % Quartsextakkord
  e gs b ds fs, a cs e e cs a fs ds' b gs e
  \bar "||"
  % Quartintervall
  % Grundstellung
  e a ds gs, cs fs, b e e b fs cs' gs ds' a e
  \bar "||"
  % Sextakkord
  e a ds gs, cs fs, b e e b fs cs' gs ds' a e
  \bar "||"
  % Quartsextakkord
  e a ds gs, cs fs, b e e b fs cs' gs ds' a e
  \bar "||"
  % Quintintervall
  % Grundstellung
  e b' fs cs' gs ds' a e' e a, ds gs, cs fs, b e,
  \bar "||"
  % Sextakkord
  e b' fs cs' gs ds' a e' e a, ds gs, cs fs, b e,
  \bar "||"
  % Quartsextakkord
  e b' fs cs' gs ds' a e' e a, ds gs, cs fs, b e,
  \bar "||"
  % Sextintervall
  % Grundstellung
  e cs' a fs ds' b gs e' e gs, b ds fs, a cs e,
  \bar "||"
  % Sextakkord
  e cs' a fs ds' b gs e' e gs, b ds fs, a cs e,
  \bar "||"
  % Quartsextakkord
  e cs' a fs ds' b gs e' e gs, b ds fs, a cs e,
  \bar "||"
  % Septimintervall
  % Grundstellung
  e ds' cs b a' gs, fs' e, e fs' gs, a' b, cs ds e,
  \bar "|."
  % Sextakkord
  e ds' cs b a' gs, fs' e, e fs' gs, a' b, cs ds e,
  \bar "|."
  % Quartsextakkord
  e ds' cs b a' gs, fs' e, e fs' gs, a' b, cs ds e,
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
  e fs:m gs:m a b cs:m ds:dim e e ds:dim cs:m b a gs:m fs:m e
  % Sextakkord
  cs:m/e ds:dim/fs e/gs fs:m/a gs:m/b a/cs b/ds e e b/ds a/cs gs:m/b fs:m/a e/gs ds:dim/fs cs:m/e
  % Quartsextakkord
  a/e b/fs cs:m/gs ds:dim/a e/b fs:m/cs gs:m/ds a/e a/e gs:m/ds fs:m/cs e/b ds:dim/a cs:m/gs b/fs a/e
  % Terzintervall
  % Grundstellung
  e gs:m b ds:dim fs:m a cs:m e e cs:m a fs ds:dim b gs:m e
  % Sextakkord
  cs:m/e e/gs gs:m/b b/ds ds:dim/fs fs:m/a a/cs cs:m/e cs:m/e a/cs fs:m/a ds:dim/fs b/ds gs:m/b e/gs cs:m/e
  % Quartsextakkord
  a/e cs:m/gs e/b gs:m/ds b/fs ds:dim/a fs:m/cs a/e a/e fs:m/cs ds:dim/a b/fs gs:dim/ds e/b cs:m/gs a/e
  % Quartintervall
  % Grundstellung
  e a ds:dim gs:m cs:m fs:m b e e b fs:m cs:m gs:m ds:dim a e
  % Sextakkord
  cs:m/e fs:m/a b/ds e/gs a/cs ds:dim/fs gs:m/b cs:m/e cs:m/e gs:m/b ds:dim/fs a/cs e/gs b/ds fs:m/a cs:m/e
  % Quartsextakkord
  a/e ds:dim/a gs:m/ds cs:m/gs fs:m/cs b/fs e/b a/e a/e e/b b/fs fs:m/cs cs:m/gs gs:m/ds ds:dim/a a/e
  % Quintintervall
  % Grundstellung
  e b fs cs gs ds a e e a ds gs cs fs b e
  % Sextakkord
  cs:m/e gs:m/b ds:dim/fs a/cs e/gs b/ds fs:m/a cs:m/e cs:m/e fs:m/a b/ds e/gs a/cs ds:dim/fs gs:m/b cs:m/e
  % Quartsextakkord
  a/e e/b b/fs fs:m/cs cs:m/gs gs:m/ds ds:dim/a a/e a/e ds:dim/a gs:m/ds cs:m/gs fs:m/cs b/fs e/b a/e
  % Sextintervall
  % Grundstellung
  e cs:m a fs:m ds:dim b gs:m e e gs:m b ds:dim fs:m a cs:m e
  % Sextakkord
  cs:m/e a/cs fs:m/a ds:dim/fs b/ds gs:m/b e/gs cs:m/e cs:m/e e/gs gs:m/b b/ds ds:dim/fs fs:m/a a:/cs cs:m/e
  % Quartsextakkord
  a/e fs:m/cs ds:dim/a b/fs gs:m/ds e/b cs:m/gs a/e a/e cs:m/gs e/b gs:m/ds b/fs ds:dim/a fs:m/cs a/e
  % Septimintervall
  % Grundstellung
  e ds:dim cs:m b a gs:m fs:m e e fs:m gs:m a b cs:m ds:dim e  
  % Sextakkord
  cs:m/e b/ds a/cs gs:m/b fs:m/a e/gs ds:dim/fs cs:m/e cs:m/e ds:dim/fs e/gs fs:m/a gs:m/b a/cs b/ds cs:m/e  
  % Quartsextakkord
  a/e gs:m/ds fs:m/cs e/b ds:dim/a cs:m/gs b/fs a/e a/e b/fs cs:m/gs ds:dim/a e/b fs:m/cs gs:m/ds a/e  
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
  b^"Sekunde" ds e e gs a a b b b a gs e e ds b
  b^"Terz" e fs b ds, e a b b a e ds b' gs e b
  b^"Quarte" e b' e, a ds, fs b b fs ds a' e b' e, b
  b^"Quinte" fs ds' a' e b' e, b' b e, b' e, a ds, fs b,
  b^"Sexte" a' e ds b' fs e b' b e, fs b ds, e a b,
  b^"Septime" b' a gs e e ds b b ds e e gs a a b
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  e4 fs gs a b cs ds e e ds cs b a gs fs e
  \bar "||"
  e gs b ds fs, a cs e e cs a fs ds' b gs e
  \bar "||"
  e a ds gs, cs fs, b e e b fs cs' gs ds' a e
  \bar "||"
  e b' fs cs' gs ds' a e' e a, ds gs, cs fs, b e,
  \bar "||"
  e cs' a fs ds' b gs e' e gs, b ds fs, a cs e,
  \bar "||"
  e ds' cs b a gs fs e e fs gs a b cs ds e
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  gs b b cs e e fs gs
  gs fs e e cs b b gs
  gs b ds fs b, cs e gs
  gs e cs b fs' e b gs
  gs cs fs b, e b ds gs
  gs ds b e b fs' cs gs
  gs ds' b e b fs' cs gs'
  gs cs, fs b, e b ds gs,
  gs e' cs b fs' ds b gs'
  gs b, ds fs b, cs e gs,
  gs fs' e e cs b b gs
  gs b b cs e e fs gs
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  e b e a e a fs e
  e b a' e a e b e
  e e b b b a' a e
  e a a b, b e e e e a b, e a b, b e e b b a' e b a' e
  e b b a' e b a e' e a b, e a b, b e
  e a a b, b b e e e e b b b a' a e e b a' e a e b e e b e a e a fs e
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
  e b e a e a ds:dim/fs e
  e b a e a e b e
  e e b b b a a e
  e a a b b e e e
  e a b e a b b e e b b a e b a e
  e b b a e b a e e a b e a b b e
  e a a b b b e e e e b b b a a e
  e b a e a e b e e b e a e a ds:dim/fs e
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