\version "2.24.3"
\language "english"

\header {
  dedication = "AL, Harmonisierungsübung für den C-Schein"
  title = \markup {\with-url #"https://de.wikipedia.org/wiki/Wer_nur_den_lieben_Gott_l%C3%A4%C3%9Ft_walten#:~:text=Wer%20nur%20den%20lieben%20Gott%20l%C3%A4%C3%9Ft%20walten%20ist%20ein%20Kirchenlied,es%20selbst%20als%20Trostlied%20bezeichnet." "Wer nur den lieben Gott lässt walten"}
  subtitle = ""
  subsubtitle = "Harmonisiert in SATB, inkl. Ritornell / Intonation und Dux / Comes"
  instrument = "Orgel / Chor"
  composer = \markup {"M: " \with-url #"https://de.wikipedia.org/wiki/Johann_Sebastian_Bach" "Johann Sebastian Bach" "um 1736/37"}
  arranger = \markup {"Satz: " \with-url #"https://buschke.com" "Sven Buschke"}
  poet = \markup {"T: " \with-url #"https://de.wikipedia.org/wiki/Georg_Neumark" "Johann Georg Neumark"}
  meter = \markup {"nach " \with-url #"https://de.wikipedia.org/wiki/Georg_Neumark" "Johann Georg Neumark" "1657"}
  piece = "EL im CF Alt, sonst WL"
  opus = "GL 424 ö"
  copyright = \markup {"© 21.05.2024, Satz: " \with-url #"https://buschke.com" "Sven Buschke"}
  tagline = "Ritornell noch ausgespart"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key g \minor
  \time 4/4
  \tempo "Andante" 4=100
}

cfA = {g4 a bf a g a8 g fs4 d r}
cfB = {f4 ef d g g fs g2 r4}
cfC = {bf c d d c4. bf8 bf4}
cfD = {c bf a g8 a bf4 a g}

verseAA = \lyricmode {
  nur den lie -- ben Gott lässt _ wal -- ten
}
verseBA = \lyricmode {
  hof -- fet auf ihn al -- le -- zeit
}
verseAB = \lyricmode {
  wird er wun -- der -- bar er _ -- hal -- ten
}
verseBB = \lyricmode {
  al -- ler Not und Trau -- rig -- keit
}
verseC = \lyricmode {
  Gott, dem Al -- ler -- höchs -- ten traut,
}
verseD = \lyricmode {
  hat auf kei -- nen _ Sand ge -- baut.
}

scoreAMelody = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 d,4^"CF" \cfA f4 \cfB } \partial 4 a4 \cfC \breathe d \cfD
  \bar "|."  
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  <<{Wer \verseAA und \verseBA} \new Lyrics{den \verseAB in \verseBB}>> Wer \verseC der \verseD
  \bar "|."  
}

\bookpart {
  \header {subtitle = "CF"}
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreAMelody }
    \addlyrics { \scoreAVerse }
    \layout { }
    \midi { }
  }
}

chordsA = \chordmode {g4:m d:m g:m d:m g:m d8:m g:m d4 g:m s}
chordsB = \chordmode {d:m c:m g:m g:m g:m d g2:m s4}
chordsC = \chordmode {g4:m c:m g:m g:m c4.:m g8:m g4:m}
chordsD = \chordmode {c4:m g:m d:m g8:m d:m g4:m d g}

bassChordsA = \chordmode {g:m f/a g:m/bf f/a g:m f8/a g:m d4/fs d:m s}
bassChordsB = \chordmode {d:m/fs c:m/ef d:m g:m g:m d/fs g2:m s4}
bassChordsC = \chordmode {g:m/bf c:m d:m d:m c4.:m g8:m/bf g4:m/bf}
bassChordsD = \chordmode {c:m g:m/bf a:m g8:m a:m g4:m/bf a:m g:m}

bassFigIA = \figuremode {s4 s s s s s8 s s4 s s}
bassFigIB = \figuremode {s4 s s s s s s2 s4}
bassFigIC = \figuremode {s4 s s s s4. s8 s4}
bassFigID = \figuremode {s4 s s s8 s s4 s s}

bassFigIIA = \figuremode {s4 <6> <6> <6> s <6>8 s <6>4 s s}
bassFigIIB = \figuremode {<6>4 <6> s s s <6> s2 s4}
bassFigIIC = \figuremode {<6>4 s s s s4. <6>8 <6>4}
bassFigIID = \figuremode {s4 <6> s s8 s <6>4 s s}

scoreBChordNamesLeadSheet = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 { \partial 4 g4:m \chordsA d:m \chordsB } \partial 4 d:m \chordsC g:m \chordsD
  \bar "|."  
}

scoreBMelody = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 d,4^"CF" \cfA f4 \cfB } \partial 4 a4 \cfC \breathe d \cfD
  \bar "|."  
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  <<{Wer \verseAA und \verseBA} \new Lyrics{den \verseAB in \verseBB}>> Wer \verseC der \verseD
  \bar "|."  
}

scoreBChordNamesChords = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 { \partial 4 d4:m \bassChordsA d4:m/fs \bassChordsB } \partial 4 a4:m \bassChordsC d4:m \bassChordsD
  \bar "|."  
}

scoreBFigBassBassFiguresI = \figuremode {
  \global
  % Figures follow here.
  \repeat volta 2 { \partial 4 s4 \bassFigIA s4 \bassFigIB } \partial 4 s4 \bassFigIC s4 \bassFigID
  \bar "|."
}

scoreBFigBassBassFiguresII = \figuremode {
  \global
  % Figures follow here.
  \repeat volta 2 { \partial 4 s4 \bassFigIIA <6>4 \bassFigIIB } \partial 4 s4 \bassFigIIC s4 \bassFigIID
  \bar "|."
}

scoreBLeadSheetPart = <<
  \new ChordNames \scoreBChordNamesLeadSheet
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreBMelody }
  \addlyrics { \scoreBVerse }
>>

scoreBChordsPart = \new ChordNames \scoreBChordNamesChords

scoreBBassFiguresIPart = \new FiguredBass \scoreBFigBassBassFiguresI

scoreBBassFiguresIIPart = \new FiguredBass \scoreBFigBassBassFiguresII

\bookpart {
  \header {subtitle = "CF, mit Akkorden"}
  \score {
    <<
      \scoreBLeadSheetPart
      \scoreBChordsPart
      \scoreBBassFiguresIPart
      \scoreBBassFiguresIIPart
    >>
    \layout { }
    \midi { }
  }
}

altoA = {bf4 d d d bf d8 bf a4 g r}
altoB = {a4 g g bf bf a bf2 r4}
altoC = {d4 ef g g ef4. d8 d4}
altoD = {ef4 d d bf8 d d4 d bf}

tenorA = {d4 f g f d f8 d d4 bf r}
tenorB = {d4 c bf d d d d2 r4}
tenorC = {g4 g bf bf g4. g8 g4}
tenorD = {g4 g f d8 f g4 fs d}

bassA = {g4 d g d g d8 g d4 g r}
bassB = {d4 c g' g g d g2 r4}
bassC = {g4 c g g c4. g8 g4}
bassD = {c4 g d g8 d g4 d g}

scoreCSoprano = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 d,4^"CF" \cfA f4 \cfB } \partial 4 a4 \cfC \breathe d \cfD
  \bar "||"  
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 f,4 \altoA a4 \altoB } \partial 4 d4 \altoC \breathe g \altoD
  \bar "||"
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 bf,4 \tenorA d4 \tenorB } \partial 4 f4 \tenorC \breathe bf \tenorD
  \bar "||"    
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 g4 \bassA d4 \bassB } \partial 4 d4 \bassC \breathe g4 \bassD
  \bar "||"  
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  <<{Wer \verseAA und \verseBA} \new Lyrics{den \verseAB in \verseBB}>> Wer \verseC der \verseD
  \bar "||"   
}

scoreCRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreCSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreCAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreCTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreCBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 { \partial 4 g4:m \chordsA d:m \chordsB } \partial 4 d:m \chordsC g:m \chordsD
  \bar "||"  
}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.
  \repeat volta 2 { \partial 4 s4 \bassFigIA s4 \bassFigIB } \partial 4 s4 \bassFigIC s4 \bassFigID
  \bar "||"  
}

scoreCChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreCSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreCAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreCVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreCTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreCBass }
  >>
>>

scoreCChordsPart = \new ChordNames \scoreCChordNames

scoreCBassFiguresPart = \new FiguredBass \scoreCFigBass

\bookpart {
  \header {subtitle = "CF im Sopran, inkl. Ritornell / Intonation und Dux / Comes"}
  \score {
    <<
      \scoreCChoirPart
      \scoreCChordsPart
      \scoreCBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreCRehearsalMidi "soprano" "soprano sax" \scoreCVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreCRehearsalMidi "alto" "soprano sax" \scoreCVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreCRehearsalMidi "tenor" "tenor sax" \scoreCVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreCRehearsalMidi "bass" "tenor sax" \scoreCVerse
    \midi { }
  }
}


scoreDSoprano = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 f,4 \altoA a4 \altoB } \partial 4 d4 \altoC \breathe g \altoD
  \bar "|."
}

scoreDAlto = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 bf,4 \tenorA d4 \tenorB } \partial 4 f4 \tenorC \breathe bf \tenorD
  \bar "|."  
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 d,4^"CF" \cfA f4 \cfB } \partial 4 a4 \cfC \breathe d \cfD
  \bar "|."  
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 g4 \bassA d4 \bassB } \partial 4 d4 \bassC \breathe g4 \bassD
  \bar "|."  
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  <<{Wer \verseAA und \verseBA} \new Lyrics{den \verseAB in \verseBB}>> Wer \verseC der \verseD
  \bar "|."  
}

scoreDRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreDSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreDAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreDTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreDBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 { \partial 4 g4:m \chordsA d:m \chordsB } \partial 4 d:m \chordsC g:m \chordsD
  \bar "|."  
}

scoreDFigBass = \figuremode {
  \global
  % Figures follow here.
  \repeat volta 2 { \partial 4 s4 \bassFigIA s4 \bassFigIB } \partial 4 s4 \bassFigIC s4 \bassFigID
  \bar "|."  
}

scoreDChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreDSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreDAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreDVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreDTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreDBass }
  >>
>>

scoreDChordsPart = \new ChordNames \scoreDChordNames

scoreDBassFiguresPart = \new FiguredBass \scoreDFigBass

\bookpart {
  \header {subtitle = "CF im Tenor"}
  \score {
    <<
      \scoreDChoirPart
      \scoreDChordsPart
      \scoreDBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreDRehearsalMidi "soprano" "soprano sax" \scoreDVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreDRehearsalMidi "alto" "soprano sax" \scoreDVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreDRehearsalMidi "tenor" "tenor sax" \scoreDVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreDRehearsalMidi "bass" "tenor sax" \scoreDVerse
    \midi { }
  }
}


scoreESoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreEAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreETenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreEBass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 d,4^"CF" \cfA f4 \cfB } \partial 4 a4 \cfC \breathe d \cfD
  \bar "|."  
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  <<{Wer \verseAA und \verseBA} \new Lyrics{den \verseAB in \verseBB}>> Wer \verseC der \verseD
  \bar "|."   
}

scoreERehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreESoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreEAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreETenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreEBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreEChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 { \partial 4 d4:m \bassChordsA d4:m/fs \bassChordsB } \partial 4 a4:m \bassChordsC d4:m \bassChordsD
  \bar "|."  
}

scoreEFigBass = \figuremode {
  \global
  % Figures follow here.
  \repeat volta 2 { \partial 4 s4 \bassFigIIA <6>4 \bassFigIIB } \partial 4 s4 \bassFigIIC s4 \bassFigIID
  \bar "|."  
}

scoreEChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreESoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreEAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreEVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreETenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreEBass }
  >>
>>

scoreEChordsPart = \new ChordNames \scoreEChordNames

scoreEBassFiguresPart = \new FiguredBass \scoreEFigBass

\bookpart {
  \header {subtitle = "CF im Bass"}
  \score {
    <<
      \scoreEChoirPart
      \scoreEChordsPart
      \scoreEBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreERehearsalMidi "soprano" "soprano sax" \scoreEVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreERehearsalMidi "alto" "soprano sax" \scoreEVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreERehearsalMidi "tenor" "tenor sax" \scoreEVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreERehearsalMidi "bass" "tenor sax" \scoreEVerse
    \midi { }
  }
}


scoreFSoprano = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 f,4 \altoA a4 \altoB } \partial 4 d4 \altoC \breathe g \altoD
  \bar "|."  
}

scoreFAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 d4^"CF" \cfA f4 \cfB } \partial 4 a4 \cfC \breathe d \cfD
  \bar "|."  
}

scoreFTenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 bf,4 \tenorA d4 \tenorB } \partial 4 f4 \tenorC \breathe bf \tenorD
  \bar "|."  
}

scoreFBass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 4 g4 \bassA d4 \bassB } \partial 4 d4 \bassC \breathe g4 \bassD
  \bar "|."  
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  <<{Wer \verseAA und \verseBA} \new Lyrics{den \verseAB in \verseBB}>> Wer \verseC der \verseD
  \bar "|."  
}

scoreFRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreFSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreFAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreFTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreFBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreFChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 { \partial 4 g4:m \chordsA d:m \chordsB } \partial 4 d:m \chordsC g:m \chordsD
  \bar "|."  
}

scoreFFigBass = \figuremode {
  \global
  % Figures follow here.
  \repeat volta 2 { \partial 4 s4 \bassFigIA s4 \bassFigIB } \partial 4 s4 \bassFigIC s4 \bassFigID
  \bar "|."  
}

scoreFChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreFSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreFAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreFVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreFTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreFBass }
  >>
>>

scoreFChordsPart = \new ChordNames \scoreFChordNames

scoreFBassFiguresPart = \new FiguredBass \scoreFFigBass

\bookpart {
  \header {subtitle = "CF im Alt"}
  \score {
    <<
      \scoreFChoirPart
      \scoreFChordsPart
      \scoreFBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreFRehearsalMidi "soprano" "soprano sax" \scoreFVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreFRehearsalMidi "alto" "soprano sax" \scoreFVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreFRehearsalMidi "tenor" "tenor sax" \scoreFVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreFRehearsalMidi "bass" "tenor sax" \scoreFVerse
    \midi { }
  }
}

