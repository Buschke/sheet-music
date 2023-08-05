\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Tonleiter in Fis-Dur in Intervallen"
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
  \key fs \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  fs4^"Sekunde" gs as b cs ds es fs fs es ds cs b as gs fs
  \bar "||"
  fs^"Terz" as cs es gs, b ds fs fs ds b gs es' cs as fs
  \bar "||"
  fs^"Quarte" b es as, ds gs, cs fs fs cs gs ds' as es' b fs
  \bar "||"
  fs^"Quinte" cs' gs ds' as es' b fs' fs b, es as, ds gs, cs fs,
  \bar "||"
  fs^"Sexte" ds' b gs es' cs as fs' fs as, cs es gs, b ds fs,
  \bar "||"
  fs^"Septime" es' ds cs b as gs fs fs gs as b cs ds es fs
  \bar "|."
}

scoreAAlto = \relative c'' {
  \global
  % Music follows here.
  as cs cs ds fs fs gs as
  as gs fs fs ds cs cs as
  as cs es gs cs, ds fs as
  as fs ds cs gs' fs cs as
  as ds gs cs, fs cs es as
  as es cs fs cs gs' ds as
  as es' cs fs cs gs' ds as'
  as ds, gs cs, fs cs es as,
  as fs' ds cs gs' es cs as'
  as cs, es gs cs, ds fs as,
  as gs' fs fs ds cs cs as
  as cs cs ds fs fs gs as
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  cs es fs fs as b b cs
  cs cs b as fs fs es cs
  cs fs gs cs es, fs b cs
  cs b fs es cs' as fs cs
  cs fs cs' fs, b es, gs cs
  cs gs es b' fs cs' fs, cs
  cs gs es' b' fs cs' fs, cs'
  cs fs, cs' fs, b es, gs cs,
  cs b' fs es cs' gs fs cs'
  cs fs, gs cs es, fs b cs,
  cs cs' b as fs fs es cs
  cs es fs fs as b b cs
}

scoreABass = \relative c {
  \global
  % Music follows here.
  fs cs fs b fs b gs fs
  fs cs b' fs b fs cs fs
  fs fs cs cs cs b' b fs
  fs b b cs, cs fs fs fs fs b cs, fs b cs, cs fs fs cs cs b' fs cs b' fs
  fs cs cs b' fs cs b fs' fs b cs, fs b cs, cs fs
  fs b b cs, cs cs fs fs fs fs cs cs cs b' b fs fs cs b' fs b fs cs fs fs cs fs b fs b gs fs
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
  fs cs fs b fs b es:dim/gs fs
  fs cs b fs b fs cs fs
  fs fs cs cs cs b b fs
  fs b b cs cs fs fs fs
  fs b cs fs b cs cs fs fs cs cs b fs cs b fs
  fs cs cs b fs cs b fs fs b cs fs b cs cs fs
  fs b b cs cs cs fs fs fs fs cs cs cs b b fs
  fs cs b fs b fs cs fs fs cs fs b fs b es:dim/gs fs
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
  as^"Sekunde" cs cs ds fs fs gs as as gs fs fs ds cs cs as
  as^"Terz" cs es gs cs, ds fs as as fs ds cs gs' fs cs as
  as^"Quarte" ds gs cs, fs cs es as as es cs fs cs gs' ds as
  as^"Quinte" es' cs fs cs gs' ds as' as ds, gs cs, fs cs es as,
  as^"Sexte" fs' ds cs gs' es cs as' as cs, es gs cs, ds fs as,
  as^"Septime" gs' fs fs ds cs cs as as cs cs ds fs fs gs as
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  cs es fs fs as b b cs
  cs cs b as fs fs es cs
  cs fs gs cs es, fs b cs
  cs b fs es cs' as fs cs
  cs fs cs' fs, b es, gs cs
  cs gs es b' fs cs' fs, cs
  cs gs es' b' fs cs' fs, cs'
  cs fs, cs' fs, b es, gs cs,
  cs b' fs es cs' gs fs cs'
  cs fs, gs cs es, fs b cs,
  cs cs' b as fs fs es cs
  cs es fs fs as b b cs
}

scoreBTenor = \relative c {
  \global
  % Music follows here.
  fs4 gs as b cs ds es fs fs es ds cs b as gs fs
  \bar "||"
  fs as cs es gs, b ds fs fs ds b gs es' cs as fs
  \bar "||"
  fs b es as, ds gs, cs fs fs cs gs ds' as es' b fs
  \bar "||"
  fs cs' gs ds' as es' b fs' fs b, es as, ds gs, cs fs,
  \bar "||"
  fs ds' b gs es' cs as fs' fs as, cs es gs, b ds fs,
  \bar "||"
  fs es' ds cs b as gs fs fs gs as b cs ds es fs
  \bar "|."
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  fs cs fs b fs b gs fs
  fs cs b' fs b fs cs fs
  fs fs cs cs cs b' b fs
  fs b b cs, cs fs fs fs fs b cs, fs b cs, cs fs fs cs cs b' fs cs b' fs
  fs cs cs b' fs cs b fs' fs b cs, fs b cs, cs fs
  fs b b cs, cs cs fs fs fs fs cs cs cs b' b fs fs cs b' fs b fs cs fs fs cs fs b fs b gs fs
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
  fs cs fs b fs b es:dim/gs fs
  fs cs b fs b fs cs fs
  fs fs cs cs cs b b fs
  fs b b cs cs fs fs fs
  fs b cs fs b cs cs fs fs cs cs b fs cs b fs
  fs cs cs b fs cs b fs fs b cs fs b cs cs fs
  fs b b cs cs cs fs fs fs fs cs cs cs b b fs
  fs cs b fs b fs cs fs fs cs fs b fs b es:dim/gs fs
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
  as^"Grundstellung Sekunde" gs es ds cs as gs fs fs gs as cs ds es gs as
  % Sextakkord
  ds,^"Sextakkord Sekunde" b fs' ds as' fs cs' as as cs fs, as ds, fs b, ds
  % Quartsextakkord
  b^"Quartsextakkord Sekunde" cs ds es fs gs as b b as gs fs es ds cs b
  % Terzintervall
  % Grundstellung
  as'^"Grundstellung Terz" as gs gs gs fs fs fs fs fs fs gs gs gs as as
  % Sextakkord
  ds^"Sextakkord Terz" fs, as cs, es gs, b ds, ds b' gs es' cs as' fs ds'
  % Quartsextakkord
  ds^"Quartsextakkord Terz" ds cs cs cs b b b b b b cs cs cs ds ds
  % Quartintervall
  % Grundstellung
  as^"Grundstellung Quarte" b b cs ds ds es fs fs es ds ds cs b b as
  % Sextakkord
  ds,^"Sextakkord Quarte" ds cs cs b b as as as as b b cs cs ds ds
  ds'^"Quartsextakkord Quarte" es cs ds b cs as b b as cs b ds cs es ds
  % Quintintervall
  % Grundstellung
  as^"Grundstellung Quinte" gs gs fs es es fs fs fs fs es es fs gs gs as
  % Sextakkord
  ds,^"Sextakkord Quinte" es es fs fs gs gs as as gs gs fs fs es es ds
  ds^"Quartsextakkord Quinte" cs cs ds ds es es fs fs es es ds ds cs cs ds
  % Sextintervall
  % Grundstellung
  as^"Grundstellung Sexte" as b b b cs cs cs cs cs cs b b b as as
  % Sextakkord
  ds^"Sextakkord Sexte" b gs b cs as fs' as, as fs' as, cs b gs b as
  b^"Quartsextakkord Sexte" b b cs cs cs ds ds ds ds cs cs cs b b b
  % Septimintervall
  % Grundstellung
  as^"Grundstellung Septime" b ds es fs as b cs cs b as fs es ds b as
  % Sextakkord
  ds^"Sextakkord Septime" gs, b es, gs' cs, es as, as es' cs gs' es, b' gs ds'
  ds^"Quartsextakkord Septime" es gs as b ds es fs fs es ds b as gs es ds
}

scoreCAlto = \relative c'' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  cs b as fs es ds b as as b ds es fs as b cs
  % Sextakkord
  as b cs ds es fs gs as as gs fs es ds cs b as
  % Quartsextakkord
  ds, es fs gs as b cs ds ds cs b as gs fs es ds
  % Terzintervall
  % Grundstellung
  cs' cs cs b b b as as as as b b cs cs cs cs
  % Sextakkord
  as' fs es cs b gs fs ds ds fs gs b cs es fs as
  % Quartsextakkord
  fs fs fs es es es ds ds ds ds es es es fs fs fs
  % Quartintervall
  % Grundstellung
  cs ds es es fs gs gs as as gs gs fs es es ds cs
  % Sextakkord
  as gs gs fs fs es es ds ds es es fs fs gs gs as
  % Quartsextakkord
  fs' gs es fs ds es cs ds ds cs es ds fs es gs fs
  % Quintintervall
  % Grundstellung
  cs cs b as as b b as as b b as as b cs cs 
  % Sextakkord
  as as b b cs cs ds ds ds ds cs cs b b as as
  % Quartsextakkord
  fs fs es gs fs as gs b b b as as gs gs fs fs
  % Sextintervall
  % Grundstellung
  cs ds ds ds es es es fs fs es es es ds ds ds cs
  % Sextakkord
  as' fs gs es gs as cs as as cs as gs es gs fs as
  % Quartsextakkord
  ds, ds es es es fs fs fs fs fs fs es es es ds ds 
  % Septimintervall
  % Grundstellung
  cs es fs gs b cs ds fs fs ds cs b gs fs es cs
  % Sextakkord
  as' gs fs es ds' cs b as as b cs ds es, fs gs as
  % Quartsextakkord
  fs as b cs es fs gs b b gs fs es cs b as fs 
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  fs ds cs b gs fs es cs cs es fs gs b cs ds fs
  % Sextakkord
  ds es fs gs as b cs ds ds cs b as gs fs es ds
  % Quartsextakkord
  b gs ds' b fs' ds as' fs fs as ds, fs b, ds gs, b
  % Terzintervall
  % Grundstellung
  fs' es es es ds ds ds cs cs ds ds ds es es es fs
  % Sextakkord
  ds' cs as gs es ds b as as b ds es gs as cs ds
  % Quartsextakkord
  b as as as gs gs gs fs fs gs gs gs as as as b
  % Quartintervall
  % Grundstellung
  fs fs gs as as b cs cs cs cs b as as gs fs fs
  % Sextakkord
  as ds, gs cs, fs b, es as, as es' b fs' cs gs' ds as'
  % Quartsextakkord
  b b as as gs gs fs fs fs fs gs gs as as b b 
  % Qutintintervall
  % Grundstellung
  fs es ds ds cs cs ds cs cs ds cs cs ds ds es fs
  % Sextakkord
  ds as' es b' fs cs' gs ds' ds gs, cs fs, b es, as ds,
  % Quartsextakkord
  b as gs b  as cs b ds ds b cs as b gs as b
  % Sextintervall
  % Grundstellung
  fs fs fs gs gs gs as as as as gs gs gs fs fs fs
  % Sextakkord
  ds' b ds es cs es fs ds ds fs es cs es ds b ds  
  % Quartsextakkord
  fs, gs gs gs as as as b b as as as gs gs gs fs
  % Septimintervall
  % Grundstellung
  fs gs as cs ds es gs as as gs es ds cs as gs fs 
  % Sextakkord
  ds' cs b as gs' fs es ds ds es fs gs as, b cs ds
  % Quartsextakkord
  b cs ds fs gs as cs ds ds cs as gs fs ds cs b
}

scoreCBass = \relative c, {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  fs4 gs as b cs ds es fs fs es ds cs b as gs fs
  \bar "||"
  % Sextakkord
  fs4 gs as b cs ds es fs fs es ds cs b as gs fs
  \bar "||"
  % Quartsextakkord
  fs4 gs as b cs ds es fs fs es ds cs b as gs fs
  \bar "||"
  % Terzintervall
  % Grundstellung
  fs as cs es gs, b ds fs fs ds b gs es' cs as fs
  \bar "||"
  % Sextakkord
  fs as cs es gs, b ds fs fs ds b gs es' cs as fs
  \bar "||"
  % Quartsextakkord
  fs as cs es gs, b ds fs fs ds b gs es' cs as fs
  \bar "||"
  % Quartintervall
  % Grundstellung
  fs b es as, ds gs, cs fs fs cs gs ds' as es' b fs
  \bar "||"
  % Sextakkord
  fs b es as, ds gs, cs fs fs cs gs ds' as es' b fs
  \bar "||"
  % Quartsextakkord
  fs b es as, ds gs, cs fs fs cs gs ds' as es' b fs
  \bar "||"
  % Quintintervall
  % Grundstellung
  fs cs' gs ds' as es' b fs' fs b, es as, ds gs, cs fs,
  \bar "||"
  % Sextakkord
  fs cs' gs ds' as es' b fs' fs b, es as, ds gs, cs fs,
  \bar "||"
  % Quartsextakkord
  fs cs' gs ds' as es' b fs' fs b, es as, ds gs, cs fs,
  \bar "||"
  % Sextintervall
  % Grundstellung
  fs ds' b gs es' cs as fs' fs as, cs es gs, b ds fs,
  \bar "||"
  % Sextakkord
  fs ds' b gs es' cs as fs' fs as, cs es gs, b ds fs,
  \bar "||"
  % Quartsextakkord
  fs ds' b gs es' cs as fs' fs as, cs es gs, b ds fs,
  \bar "||"
  % Septimintervall
  % Grundstellung
  fs es' ds cs b' as, gs' fs, fs gs' as, b' cs, ds es fs,
  \bar "|."
  % Sextakkord
  fs es' ds cs b' as, gs' fs, fs gs' as, b' cs, ds es fs,
  \bar "|."
  % Quartsextakkord
  fs es' ds cs b' as, gs' fs, fs gs' as, b' cs, ds es fs,
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
  fs gs:m as:m b cs ds:m es:dim fs fs es:dim ds:m cs b as:m gs:m fs
  % Sextakkord
  ds:m/fs es:dim/gs fs/as gs:m/b as:m/cs b/ds cs/es fs fs cs/es b/ds as:m/cs gs:m/b fs/as es:dim/gs ds:m/fs
  % Quartsextakkord
  b/fs cs/gs ds:m/as es:dim/b fs/cs gs:m/ds as:m/es b/fs b/fs as:m/es gs:m/ds fs/cs es:dim/b ds:m/as cs/gs b/fs
  % Terzintervall
  % Grundstellung
  fs as:m cs es:dim gs:m b ds:m fs fs ds:m b gs es:dim cs as:m fs
  % Sextakkord
  ds:m/fs fs/as as:m/cs cs/es es:dim/gs gs:m/b b/ds ds:m/fs ds:m/fs b/ds gs:m/b es:dim/gs cs/es as:m/cs fs/as ds:m/fs
  % Quartsextakkord
  b/fs ds:m/as fs/cs as:m/es cs/gs es:dim/b gs:m/ds b/fs b/fs gs:m/ds es:dim/b cs/gs as:dim/es fs/cs ds:m/as b/fs
  % Quartintervall
  % Grundstellung
  fs b es:dim as:m ds:m gs:m cs fs fs cs gs:m ds:m as:m es:dim b fs
  % Sextakkord
  ds:m/fs gs:m/b cs/es fs/as b/ds es:dim/gs as:m/cs ds:m/fs ds:m/fs as:m/cs es:dim/gs b/ds fs/as cs/es gs:m/b ds:m/fs
  % Quartsextakkord
  b/fs es:dim/b as:m/es ds:m/as gs:m/ds cs/gs fs/cs b/fs b/fs fs/cs cs/gs gs:m/ds ds:m/as as:m/es es:dim/b b/fs
  % Quintintervall
  % Grundstellung
  fs cs gs ds as es b fs fs b es as ds gs cs fs
  % Sextakkord
  ds:m/fs as:m/cs es:dim/gs b/ds fs/as cs/es gs:m/b ds:m/fs ds:m/fs gs:m/b cs/es fs/as b/ds es:dim/gs as:m/cs ds:m/fs
  % Quartsextakkord
  b/fs fs/cs cs/gs gs:m/ds ds:m/as as:m/es es:dim/b b/fs b/fs es:dim/b as:m/es ds:m/as gs:m/ds cs/gs fs/cs b/fs
  % Sextintervall
  % Grundstellung
  fs ds:m b gs:m es:dim cs as:m fs fs as:m cs es:dim gs:m b ds:m fs
  % Sextakkord
  ds:m/fs b/ds gs:m/b es:dim/gs cs/es as:m/cs fs/as ds:m/fs ds:m/fs fs/as as:m/cs cs/es es:dim/gs gs:m/b b:/ds ds:m/fs
  % Quartsextakkord
  b/fs gs:m/ds es:dim/b cs/gs as:m/es fs/cs ds:m/as b/fs b/fs ds:m/as fs/cs as:m/es cs/gs es:dim/b gs:m/ds b/fs
  % Septimintervall
  % Grundstellung
  fs es:dim ds:m cs b as:m gs:m fs fs gs:m as:m b cs ds:m es:dim fs  
  % Sextakkord
  ds:m/fs cs/es b/ds as:m/cs gs:m/b fs/as es:dim/gs ds:m/fs ds:m/fs es:dim/gs fs/as gs:m/b as:m/cs b/ds cs/es ds:m/fs  
  % Quartsextakkord
  b/fs as:m/es gs:m/ds fs/cs es:dim/b ds:m/as cs/gs b/fs b/fs cs/gs ds:m/as es:dim/b fs/cs gs:m/ds as:m/es b/fs  
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
  cs^"Sekunde" es fs fs as b b cs cs cs b as fs fs es cs
  cs^"Terz" fs gs cs es, fs b cs cs b fs es cs' as fs cs
  cs^"Quarte" fs cs' fs, b es, gs cs cs gs es b' fs cs' fs, cs
  cs^"Quinte" gs es' b' fs cs' fs, cs' cs fs, cs' fs, b es, gs cs,
  cs^"Sexte" b' fs es cs' gs fs cs' cs fs, gs cs es, fs b cs,
  cs^"Septime" cs' b as fs fs es cs cs es fs fs as b b cs
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  fs4 gs as b cs ds es fs fs es ds cs b as gs fs
  \bar "||"
  fs as cs es gs, b ds fs fs ds b gs es' cs as fs
  \bar "||"
  fs b es as, ds gs, cs fs fs cs gs ds' as es' b fs
  \bar "||"
  fs cs' gs ds' as es' b fs' fs b, es as, ds gs, cs fs,
  \bar "||"
  fs ds' b gs es' cs as fs' fs as, cs es gs, b ds fs,
  \bar "||"
  fs es' ds cs b as gs fs fs gs as b cs ds es fs
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  as cs cs ds fs fs gs as
  as gs fs fs ds cs cs as
  as cs es gs cs, ds fs as
  as fs ds cs gs' fs cs as
  as ds gs cs, fs cs es as
  as es cs fs cs gs' ds as
  as es' cs fs cs gs' ds as'
  as ds, gs cs, fs cs es as,
  as fs' ds cs gs' es cs as'
  as cs, es gs cs, ds fs as,
  as gs' fs fs ds cs cs as
  as cs cs ds fs fs gs as
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  fs cs fs b fs b gs fs
  fs cs b' fs b fs cs fs
  fs fs cs cs cs b' b fs
  fs b b cs, cs fs fs fs fs b cs, fs b cs, cs fs fs cs cs b' fs cs b' fs
  fs cs cs b' fs cs b fs' fs b cs, fs b cs, cs fs
  fs b b cs, cs cs fs fs fs fs cs cs cs b' b fs fs cs b' fs b fs cs fs fs cs fs b fs b gs fs
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
  fs cs fs b fs b es:dim/gs fs
  fs cs b fs b fs cs fs
  fs fs cs cs cs b b fs
  fs b b cs cs fs fs fs
  fs b cs fs b cs cs fs fs cs cs b fs cs b fs
  fs cs cs b fs cs b fs fs b cs fs b cs cs fs
  fs b b cs cs cs fs fs fs fs cs cs cs b b fs
  fs cs b fs b fs cs fs fs cs fs b fs b es:dim/gs fs
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