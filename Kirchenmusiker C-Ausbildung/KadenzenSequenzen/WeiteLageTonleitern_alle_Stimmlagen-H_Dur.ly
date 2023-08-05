\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Tonleiter in H-Dur in Intervallen"
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
  \key b \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c''' {
  \global
  % Music follows here.
  b4^"Sekunde" cs ds e fs gs as b b as gs fs e ds cs b
  \bar "||"
  b^"Terz" ds fs as cs, e gs b b gs e cs as' fs ds b
  \bar "||"
  b^"Quarte" e as ds, gs cs, fs b b fs cs gs' ds as' e b
  \bar "||"
  b^"Quinte" fs' cs gs' ds as' e b' b e, as ds, gs cs, fs b,
  \bar "||"
  b^"Sexte" gs' e cs as' fs ds b' b ds, fs as cs, e gs b,
  \bar "||"
  b^"Septime" as' gs fs e ds cs b b cs ds e fs gs as b
  \bar "|."
}

scoreAAlto = \relative c'' {
  \global
  % Music follows here.
  ds fs fs gs b b cs ds
  ds cs b b gs fs fs ds
  ds fs as cs fs, gs b ds
  ds b gs fs cs' b fs ds
  ds gs cs fs, b fs as ds
  ds as fs b fs cs' gs ds
  ds as' fs b fs cs' gs ds'
  ds gs, cs fs, b fs as ds,
  ds b' gs fs cs' as fs ds'
  ds fs, as cs fs, gs b ds,
  ds cs' b b gs fs fs ds
  ds fs fs gs b b cs ds
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  fs as b b ds e e fs
  fs fs e ds b b as fs
  fs b cs fs as, b e fs
  fs e b as fs' ds b fs
  fs b fs' b, e as, cs fs
  fs cs as e' b fs' b, fs
  fs cs as' e' b fs' b, fs'
  fs b, fs' b, e as, cs fs,
  fs e' b as fs' cs b fs'
  fs b, cs fs as, b e fs,
  fs fs' e ds b b as fs
  fs as b b ds e e fs
}

scoreABass = \relative c' {
  \global
  % Music follows here.
  b fs b e b e cs b
  b fs e' b e b fs b
  b b fs fs fs e' e b
  b e e fs, fs b b b b e fs, b e fs, fs b b fs fs e' b fs e' b
  b fs fs e' b fs e b' b e fs, b e fs, fs b
  b e e fs, fs fs b b b b fs fs fs e' e b b fs e' b e b fs b b fs b e b e cs b
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
  b fs b e b e as:dim/cs b
  b fs e b e b fs b
  b b fs fs fs e e b
  b e e fs fs b b b
  b e fs b e fs fs b b fs fs e b fs e b
  b fs fs e b fs e b b e fs b e fs fs b
  b e e fs fs fs b b b b fs fs fs e e b
  b fs e b e b fs b b fs b e b e as:dim/cs b
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
  ds^"Sekunde" fs fs gs b b cs ds ds cs b b gs fs fs ds
  ds^"Terz" fs as cs fs, gs b ds ds b gs fs cs' b fs ds
  ds^"Quarte" gs cs fs, b fs as ds ds as fs b fs cs' gs ds
  ds^"Quinte" as' fs b fs cs' gs ds' ds gs, cs fs, b fs as ds,
  ds^"Sexte" b' gs fs cs' as fs ds' ds fs, as cs fs, gs b ds,
  ds^"Septime" cs' b b gs fs fs ds ds fs fs gs b b cs ds
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  fs as b b ds e e fs
  fs fs e ds b b as fs
  fs b cs fs as, b e fs
  fs e b as fs' ds b fs
  fs b fs' b, e as, cs fs
  fs cs as e' b fs' b, fs
  fs cs as' e' b fs' b, fs'
  fs b, fs' b, e as, cs fs,
  fs e' b as fs' cs b fs'
  fs b, cs fs as, b e fs,
  fs fs' e ds b b as fs
  fs as b b ds e e fs
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  b4 cs ds e fs gs as b b as gs fs e ds cs b
  \bar "||"
  b ds fs as cs, e gs b b gs e cs as' fs ds b
  \bar "||"
  b e as ds, gs cs, fs b b fs cs gs' ds as' e b
  \bar "||"
  b fs' cs gs' ds as' e b' b e, as ds, gs cs, fs b,
  \bar "||"
  b gs' e cs as' fs ds b' b ds, fs as cs, e gs b,
  \bar "||"
  b as' gs fs e ds cs b b cs ds e fs gs as b
  \bar "|."
}

scoreBBass = \relative c' {
  \global
  % Music follows here.
  b fs b e b e cs b
  b fs e' b e b fs b
  b b fs fs fs e' e b
  b e e fs, fs b b b b e fs, b e fs, fs b b fs fs e' b fs e' b
  b fs fs e' b fs e b' b e fs, b e fs, fs b
  b e e fs, fs fs b b b b fs fs fs e' e b b fs e' b e b fs b b fs b e b e cs b
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
  b fs b e b e as:dim/cs b
  b fs e b e b fs b
  b b fs fs fs e e b
  b e e fs fs b b b
  b e fs b e fs fs b b fs fs e b fs e b
  b fs fs e b fs e b b e fs b e fs fs b
  b e e fs fs fs b b b b fs fs fs e e b
  b fs e b e b fs b b fs b e b e as:dim/cs b
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
  ds^"Grundstellung Sekunde" cs as gs fs ds cs b b cs ds fs gs as cs ds
  % Sextakkord
  gs,^"Sextakkord Sekunde" e b' gs ds' b fs' ds ds fs b, ds gs, b e, gs
  % Quartsextakkord
  e^"Quartsextakkord Sekunde" fs gs as b cs ds e e ds cs b as gs fs e
  % Terzintervall
  % Grundstellung
  ds'^"Grundstellung Terz" ds cs cs cs b b b b b b cs cs cs ds ds
  % Sextakkord
  gs^"Sextakkord Terz" b, ds fs, as cs, e gs, gs e' cs as' fs ds' b gs'
  % Quartsextakkord
  gs^"Quartsextakkord Terz" gs fs fs fs e e e e e e fs fs fs gs gs
  % Quartintervall
  % Grundstellung
  ds^"Grundstellung Quarte" e e fs gs gs as b b as gs gs fs e e ds
  % Sextakkord
  gs,^"Sextakkord Quarte" gs fs fs e e ds ds ds ds e e fs fs gs gs
  gs'^"Quartsextakkord Quarte" as fs gs e fs ds e e ds fs e gs fs as gs
  % Quintintervall
  % Grundstellung
  ds^"Grundstellung Quinte" cs cs b as as b b b b as as b cs cs ds
  % Sextakkord
  gs,^"Sextakkord Quinte" as as b b cs cs ds ds cs cs b b as as gs
  gs^"Quartsextakkord Quinte" fs fs gs gs as as b b as as gs gs fs fs gs
  % Sextintervall
  % Grundstellung
  ds^"Grundstellung Sexte" ds e e e fs fs fs fs fs fs e e e ds ds
  % Sextakkord
  gs^"Sextakkord Sexte" e cs e fs ds b' ds, ds b' ds, fs e cs e ds
  e^"Quartsextakkord Sexte" e e fs fs fs gs gs gs gs fs fs fs e e e
  % Septimintervall
  % Grundstellung
  ds^"Grundstellung Septime" e gs as b ds e fs fs e ds b as gs e ds
  % Sextakkord
  gs^"Sextakkord Septime" cs, e as, cs' fs, as ds, ds as' fs cs' as, e' cs gs'
  gs^"Quartsextakkord Septime" as cs ds e gs as b b as gs e ds cs as gs
}

scoreCAlto = \relative c'' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  fs e ds b as gs e ds ds e gs as b ds e fs
  % Sextakkord
  ds e fs gs as b cs ds ds cs b as gs fs e ds
  % Quartsextakkord
  gs, as b cs ds e fs gs gs fs e ds cs b as gs
  % Terzintervall
  % Grundstellung
  fs' fs fs e e e ds ds ds ds e e fs fs fs fs
  % Sextakkord
  ds' b as fs e cs b gs gs b cs e fs as b ds
  % Quartsextakkord
  b b b as as as gs gs gs gs as as as b b b
  % Quartintervall
  % Grundstellung
  fs gs as as b cs cs ds ds cs cs b as as gs fs
  % Sextakkord
  ds cs cs b b as as gs gs as as b b cs cs ds
  % Quartsextakkord
  b' cs as b gs as fs gs gs fs as gs b as cs b
  % Quintintervall
  % Grundstellung
  fs fs e ds ds e e ds ds e e ds ds e fs fs 
  % Sextakkord
  ds ds e e fs fs gs gs gs gs fs fs e e ds ds
  % Quartsextakkord
  b b as cs b ds cs e e e ds ds cs cs b b
  % Sextintervall
  % Grundstellung
  fs gs gs gs as as as b b as as as gs gs gs fs
  % Sextakkord
  ds' b cs as cs ds fs ds ds fs ds cs as cs b ds
  % Quartsextakkord
  gs, gs as as as b b b b b b as as as gs gs 
  % Septimintervall
  % Grundstellung
  fs as b cs e fs gs b b gs fs e cs b as fs
  % Sextakkord
  ds' cs b as gs' fs e ds ds e fs gs as, b cs ds
  % Quartsextakkord
  b ds e fs as b cs e e cs b as fs e ds b 
}

scoreCTenor = \relative c'' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  b gs fs e cs b as fs fs as b cs e fs gs b
  % Sextakkord
  gs as b cs ds e fs gs gs fs e ds cs b as gs
  % Quartsextakkord
  e cs gs' e b' gs ds' b b ds gs, b e, gs cs, e
  % Terzintervall
  % Grundstellung
  b' as as as gs gs gs fs fs gs gs gs as as as b
  % Sextakkord
  gs' fs ds cs as gs e ds ds e gs as cs ds fs gs
  % Quartsextakkord
  e ds ds ds cs cs cs b b cs cs cs ds ds ds e
  % Quartintervall
  % Grundstellung
  b b cs ds ds e fs fs fs fs e ds ds cs b b
  % Sextakkord
  ds gs, cs fs, b e, as ds, ds as' e b' fs cs' gs ds'
  % Quartsextakkord
  e e ds ds cs cs b b b b cs cs ds ds e e 
  % Qutintintervall
  % Grundstellung
  b as gs gs fs fs gs fs fs gs fs fs gs gs as b
  % Sextakkord
  gs ds' as e' b fs' cs gs' gs cs, fs b, e as, ds gs,
  % Quartsextakkord
  e ds cs e  ds fs e gs gs e fs ds e cs ds e
  % Sextintervall
  % Grundstellung
  b b b cs cs cs ds ds ds ds cs cs cs b b b
  % Sextakkord
  gs' e gs as fs as b gs gs b as fs as gs e gs  
  % Quartsextakkord
  b, cs cs cs ds ds ds e e ds ds ds cs cs cs b
  % Septimintervall
  % Grundstellung
  b cs ds fs gs as cs ds ds cs as gs fs ds cs b 
  % Sextakkord
  gs' fs e ds cs' b as gs gs as b cs ds, e fs gs
  % Quartsextakkord
  e fs gs b cs ds fs gs gs fs ds cs b gs fs e
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  b4 cs ds e fs gs as b b as gs fs e ds cs b
  \bar "||"
  % Sextakkord
  b4 cs ds e fs gs as b b as gs fs e ds cs b
  \bar "||"
  % Quartsextakkord
  b4 cs ds e fs gs as b b as gs fs e ds cs b
  \bar "||"
  % Terzintervall
  % Grundstellung
  b ds fs as cs, e gs b b gs e cs as' fs ds b
  \bar "||"
  % Sextakkord
  b ds fs as cs, e gs b b gs e cs as' fs ds b
  \bar "||"
  % Quartsextakkord
  b ds fs as cs, e gs b b gs e cs as' fs ds b
  \bar "||"
  % Quartintervall
  % Grundstellung
  b e as ds, gs cs, fs b b fs cs gs' ds as' e b
  \bar "||"
  % Sextakkord
  b e as ds, gs cs, fs b b fs cs gs' ds as' e b
  \bar "||"
  % Quartsextakkord
  b e as ds, gs cs, fs b b fs cs gs' ds as' e b
  \bar "||"
  % Quintintervall
  % Grundstellung
  b fs' cs gs' ds as' e b' b e, as ds, gs cs, fs b,
  \bar "||"
  % Sextakkord
  b fs' cs gs' ds as' e b' b e, as ds, gs cs, fs b,
  \bar "||"
  % Quartsextakkord
  b fs' cs gs' ds as' e b' b e, as ds, gs cs, fs b,
  \bar "||"
  % Sextintervall
  % Grundstellung
  b gs' e cs as' fs ds b' b ds, fs as cs, e gs b,
  \bar "||"
  % Sextakkord
  b gs' e cs as' fs ds b' b ds, fs as cs, e gs b,
  \bar "||"
  % Quartsextakkord
  b gs' e cs as' fs ds b' b ds, fs as cs, e gs b,
  \bar "||"
  % Septimintervall
  % Grundstellung
  b as' gs fs e' ds, cs' b, b cs' ds, e' fs, gs as b,
  \bar "|."
  % Sextakkord
  b as' gs fs e' ds, cs' b, b cs' ds, e' fs, gs as b,
  \bar "|."
  % Quartsextakkord
  b as' gs fs e' ds, cs' b, b cs' ds, e' fs, gs as b,
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
  b cs:m ds:m e fs gs:m as:dim b b as:dim gs:m fs e ds:m cs:m b
  % Sextakkord
  gs:m/b as:dim/cs b/ds cs:m/e ds:m/fs e/gs fs/as b b fs/as e/gs ds:m/fs cs:m/e b/ds as:dim/cs gs:m/b
  % Quartsextakkord
  e/b fs/cs gs:m/ds as:dim/e b/fs cs:m/gs ds:m/as e/b e/b ds:m/as cs:m/gs b/fs as:dim/e gs:m/ds fs/cs e/b
  % Terzintervall
  % Grundstellung
  b ds:m fs as:dim cs:m e gs:m b b gs:m e cs as:dim fs ds:m b
  % Sextakkord
  gs:m/b b/ds ds:m/fs fs/as as:dim/cs cs:m/e e/gs gs:m/b gs:m/b e/gs cs:m/e as:dim/cs fs/as ds:m/fs b/ds gs:m/b
  % Quartsextakkord
  e/b gs:m/ds b/fs ds:m/as fs/cs as:dim/e cs:m/gs e/b e/b cs:m/gs as:dim/e fs/cs ds:dim/as b/fs gs:m/ds e/b
  % Quartintervall
  % Grundstellung
  b e as:dim ds:m gs:m cs:m fs b b fs cs:m gs:m ds:m as:dim e b
  % Sextakkord
  gs:m/b cs:m/e fs/as b/ds e/gs as:dim/cs ds:m/fs gs:m/b gs:m/b ds:m/fs as:dim/cs e/gs b/ds fs/as cs:m/e gs:m/b
  % Quartsextakkord
  e/b as:dim/e ds:m/as gs:m/ds cs:m/gs fs/cs b/fs e/b e/b b/fs fs/cs cs:m/gs gs:m/ds ds:m/as as:dim/e e/b
  % Quintintervall
  % Grundstellung
  b fs cs gs ds as e b b e as ds gs cs fs b
  % Sextakkord
  gs:m/b ds:m/fs as:dim/cs e/gs b/ds fs/as cs:m/e gs:m/b gs:m/b cs:m/e fs/as b/ds e/gs as:dim/cs ds:m/fs gs:m/b
  % Quartsextakkord
  e/b b/fs fs/cs cs:m/gs gs:m/ds ds:m/as as:dim/e e/b e/b as:dim/e ds:m/as gs:m/ds cs:m/gs fs/cs b/fs e/b
  % Sextintervall
  % Grundstellung
  b gs:m e cs:m as:dim fs ds:m b b ds:m fs as:dim cs:m e gs:m b
  % Sextakkord
  gs:m/b e/gs cs:m/e as:dim/cs fs/as ds:m/fs b/ds gs:m/b gs:m/b b/ds ds:m/fs fs/as as:dim/cs cs:m/e e:/gs gs:m/b
  % Quartsextakkord
  e/b cs:m/gs as:dim/e fs/cs ds:m/as b/fs gs:m/ds e/b e/b gs:m/ds b/fs ds:m/as fs/cs as:dim/e cs:m/gs e/b
  % Septimintervall
  % Grundstellung
  b as:dim gs:m fs e ds:m cs:m b b cs:m ds:m e fs gs:m as:dim b  
  % Sextakkord
  gs:m/b fs/as e/gs ds:m/fs cs:m/e b/ds as:dim/cs gs:m/b gs:m/b as:dim/cs b/ds cs:m/e ds:m/fs e/gs fs/as gs:m/b  
  % Quartsextakkord
  e/b ds:m/as cs:m/gs b/fs as:dim/e gs:m/ds fs/cs e/b e/b fs/cs gs:m/ds as:dim/e b/fs cs:m/gs ds:m/as e/b  
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
  fs^"Sekunde" as b b ds e e fs fs fs e ds b b as fs
  fs^"Terz" b cs fs as, b e fs fs e b as fs' ds b fs
  fs^"Quarte" b fs' b, e as, cs fs fs cs as e' b fs' b, fs
  fs^"Quinte" cs as' e' b fs' b, fs' fs b, fs' b, e as, cs fs,
  fs^"Sexte" e' b as fs' cs b fs' fs b, cs fs as, b e fs,
  fs^"Septime" fs' e ds b b as fs fs as b b ds e e fs
}

scoreDAlto = \relative c'' {
  \global
  % Music follows here.
  b4 cs ds e fs gs as b b as gs fs e ds cs b
  \bar "||"
  b ds fs as cs, e gs b b gs e cs as' fs ds b
  \bar "||"
  b e as ds, gs cs, fs b b fs cs gs' ds as' e b
  \bar "||"
  b fs' cs gs' ds as' e b' b e, as ds, gs cs, fs b,
  \bar "||"
  b gs' e cs as' fs ds b' b ds, fs as cs, e gs b,
  \bar "||"
  b as' gs fs e ds cs b b cs ds e fs gs as b
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  ds fs fs gs b b cs ds
  ds cs b b gs fs fs ds
  ds fs as cs fs, gs b ds
  ds b gs fs cs' b fs ds
  ds gs cs fs, b fs as ds
  ds as fs b fs cs' gs ds
  ds as' fs b fs cs' gs ds'
  ds gs, cs fs, b fs as ds,
  ds b' gs fs cs' as fs ds'
  ds fs, as cs fs, gs b ds,
  ds cs' b b gs fs fs ds
  ds fs fs gs b b cs ds
}

scoreDBass = \relative c' {
  \global
  % Music follows here.
  b fs b e b e cs b
  b fs e' b e b fs b
  b b fs fs fs e' e b
  b e e fs, fs b b b b e fs, b e fs, fs b b fs fs e' b fs e' b
  b fs fs e' b fs e b' b e fs, b e fs, fs b
  b e e fs, fs fs b b b b fs fs fs e' e b b fs e' b e b fs b b fs b e b e cs b
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
  b fs b e b e as:dim/cs b
  b fs e b e b fs b
  b b fs fs fs e e b
  b e e fs fs b b b
  b e fs b e fs fs b b fs fs e b fs e b
  b fs fs e b fs e b b e fs b e fs fs b
  b e e fs fs fs b b b b fs fs fs e e b
  b fs e b e b fs b b fs b e b e as:dim/cs b
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