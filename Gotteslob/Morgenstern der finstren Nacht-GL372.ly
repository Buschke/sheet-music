\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "Harmonisierung des Gotteslob-Liedes"
  title = "Morgenstern der finstren Nacht"
  subsubtitle = ""
  instrument = "Orgel"
  composer = "M: Georg Joseph 1657"
  arranger = \markup \concat { "S: " \with-url "https://buschke.com" "Sven Buschke" " 2023" }
  poet = "T: Angelus Silesius 1657"
  meter = ""
  piece = ""
  opus = "GL 372 ö"
  copyright = \markup \concat { "© Satz: " \with-url "https://buschke.com" "Sven Buschke" ", 17.06.2023" }
  tagline = \markup \concat { "Alle Sätze: " \with-url "https://buschke.com" "Sven Buschke" ", 17.06.2023" }
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
}

global = {
  \key c \major
  \time 3/1
  \tempo "Andante" 2.=50
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  e,2 f4 g2 4 a2 d,4 e g a
  b(c) d a4.(b8) a4 g2.\breathe
  c2 b4 c2. b2 a4 g2.\breathe
  g2 f4 e2 4 d2 4 c g' f e2 4 d2 4 c2
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  c2 c4 d2 e4 f2 b,4 c d e f(g) d f4.(d8) f4 d2.
  e2 d4 e2. d2 f4 d2. e2 c4 2 b4 b2 4 c d c4 2 b4 b2 4 g2
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  g2 a4 g2 c4 c2 g4 4 b c d(e) b c4.(g8) c4 b2.
  g2 g4 g2. 2 c4 b2. c2 a4 c2 g4 g2 f4 g b a g2 4 2 g4 e2
}

scoreABass = \relative c {
  \global
  % Music follows here.
  c,2 f4 b2 c4 f,2 g4 c, g' a d,(c) g' f4.(g8) f4 g2.
  c,2 g'4 c,2. g'2 f4 g2. c,2 f4 c2 e4 g2 d4 e g f c2 e4 2 g4 c,2
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Mor -- gen -- stern der fins -- tern Nacht,
  der die Welt voll Freu -- den macht,
  Je -- su -- lein, Komm her -- ein,
  leucht in mei -- nes Her -- zens Schrein,
  leucht in mei -- nes Her -- zens Schrein.
}

scoreARehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreASoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreAAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreATenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreABass }
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

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c2 f4 g2/b c4 f2 g4 c g a:m b:dim/d(c) g f4.(g8) f4 g2.
  c2 g4 c2. g2 f4 g2. c2 f4 c2 e4:m g2 b4:dim/d c'/e g f c2 e4:m d'2:m/f g4 c2
}

scoreAFigBass = \figuremode {
  \global
  % Figures follow here.
 s2 4 <6>2 s4 s2 s4 s4 s4 s4 <6>4 s4 s4 s4. s8 s4 s2. s2 s4 s2. s2 s4 s2. s2 s4 s2 s4 s2 <6>4 s4 s4 s4 s2 s4 s2 s4 s2
}

scoreAChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreASoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreAAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreAVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreATenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreABass }
  >>
>>

scoreAChordsPart = <<
  \new ChordNames \scoreAChordNames
  \scoreAChordNames
%  \new FretBoards \scoreAChordNames
>>

scoreABassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreAFigBass

\bookpart {
  \header {
    subtitle = "Sopran CF"
  }
  \score {
    <<
      \scoreAChoirPart
      \scoreAChordsPart
      \scoreABassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreARehearsalMidi "soprano" "soprano sax" \scoreAVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreARehearsalMidi "alto" "soprano sax" \scoreAVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreARehearsalMidi "tenor" "tenor sax" \scoreAVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreARehearsalMidi "bass" "tenor sax" \scoreAVerse
    \midi { }
  }
}


scoreBSoprano = \relative c'' {
  \global
  % Music follows here.
  c2 c4 d2 e4 f2 b,4 c d e f(g) d f4.(d8) f4 d2.
  e2 d4 e2. d2 f4 d2. e2 c4 2 b4 b2 4 c d c4 2 b4 b2 4 g2
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  g2 a4 g2 c4 c2 g4 4 b c d(e) b c4.(g8) c4 b2.
  g2 g4 g2. 2 c4 b2. c2 a4 c2 g4 g2 f4 g b a g2 4 2 g4 e2
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  e,2 f4 g2 4 a2 d,4 e g a
  b(c) d a4.(b8) a4 g2.\breathe
  c2 b4 c2. b2 a4 g2.\breathe
  g2 f4 e2 4 d2 4 c g' f e2 4 d2 4 c2
  \bar "|."
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  c,2 f4 b2 c4 f,2 g4 c, g' a d,(c) g' f4.(g8) f4 g2.
  c,2 g'4 c,2. g'2 f4 g2. c,2 f4 c2 e4 g2 d4 e g f c2 e4 2 g4 c,2
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  Schau, dein Him -- mel ist in mir,
  er be -- gehrt dich, sei -- ne Zier.
  Säu -- me nicht, o mein Licht,
  komm, komm, eh der Tag an -- bricht,
  komm, komm, eh der Tag an -- bricht.
}

scoreBRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreBSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreBAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreBTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreBBass }
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

scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c2 f4 g2/b c4 f2 g4 c g a:m b:dim/d(c) g f4.(g8) f4 g2.
  c2 g4 c2. g2 f4 g2. c2 f4 c2 e4:m g2 b4:dim/d c'/e g f c2 e4:m d'2:m/f g4 c2
}

scoreBFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreBChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreBSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreBAlto }
  >>
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreBTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreBBass }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "tenor" \scoreBVerse
>>

scoreBChordsPart = <<
  \new ChordNames \scoreBChordNames
  \scoreBChordNames
%  \new FretBoards \scoreBChordNames
>>

scoreBBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreBFigBass

\bookpart {
  \header {
    subtitle = "Tenor CF"
  }
  \score {
    <<
      \scoreBChoirPart
      \scoreBChordsPart
      \scoreBBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreBRehearsalMidi "soprano" "soprano sax" \scoreBVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreBRehearsalMidi "alto" "soprano sax" \scoreBVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreBRehearsalMidi "tenor" "tenor sax" \scoreBVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreBRehearsalMidi "bass" "tenor sax" \scoreBVerse
    \midi { }
  }
}


scoreCSoprano = \relative c'' {
  \global
  % Music follows here.
  c2 c4 d2 e4 f2 b,4 c d e f(g) d f4.(d8) f4 d2.
  e2 d4 e2. d2 f4 d2. e2 c4 2 b4 b2 4 c d c4 2 b4 b2 4 g2
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  g2 a4 g2 c4 c2 g4 4 b c d(e) b c4.(g8) c4 b2.
  g2 g4 g2. 2 c4 b2. c2 a4 c2 g4 g2 f4 g b a g2 4 2 g4 e2
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  c,2 f4 b2 c4 f,2 g4 c, g' a d,(c) g' f4.(g8) f4 g2.
  c,2 g'4 c,2. g'2 f4 g2. c,2 f4 c2 e4 g2 d4 e g f c2 e4 2 g4 c,2
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  e,2 f4 g2 4 a2 d,4 e g a
  b(c) d a4.(b8) a4 g2.\breathe
  c2 b4 c2. b2 a4 g2.\breathe
  g2 f4 e2 4 d2 4 c g' f e2 4 d2 4 c2
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  Dei -- nes Glanz -- es Herr -- lich -- keit
  Ü -- ber -- trifft die Son -- ne weit;
  du al -- lein, Je -- su -- lein,
  bist, was tau -- send Son -- nen sein,
  bist, was tau -- send Son -- nen sein.
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
  \semiGermanChords
  % Chords follow here.
  c2 f4 g2/b c4 f2 g4 c g a:m b:dim/d(c) g f4.(g8) f4 g2.
  c2 g4 c2. g2 f4 g2. c2 f4 c2 e4:m g2 b4:dim/d c'/e g f c2 e4:m d'2:m/f g4 c2
}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreCChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
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
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "bass" \scoreCVerse
>>

scoreCChordsPart = <<
  \new ChordNames \scoreCChordNames
  \scoreCChordNames
  %\new FretBoards \scoreCChordNames
>>

scoreCBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreCFigBass

\bookpart {
  \header {
    subtitle = "Bass CF"
  }
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
  c2 c4 d2 e4 f2 b,4 c d e f(g) d f4.(d8) f4 d2.
  e2 d4 e2. d2 f4 d2. e2 c4 2 b4 b2 4 c d c4 2 b4 b2 4 g2
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  e2 f4 g2 4 a2 d,4 e g a
  b(c) d a4.(b8) a4 g2.\breathe
  c2 b4 c2. b2 a4 g2.\breathe
  g2 f4 e2 4 d2 4 c g' f e2 4 d2 4 c2
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  g2 a4 g2 c4 c2 g4 4 b c d(e) b c4.(g8) c4 b2.
  g2 g4 g2. 2 c4 b2. c2 a4 c2 g4 g2 f4 g b a g2 4 2 g4 e2
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  c,2 f4 b2 c4 f,2 g4 c, g' a d,(c) g' f4.(g8) f4 g2.
  c,2 g'4 c,2. g'2 f4 g2. c,2 f4 c2 e4 g2 d4 e g f c2 e4 2 g4 c,2
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  Du er -- leuch -- test al -- les gar,
  Was jetzt ist und kommt und war,
  vol -- ler Pracht wird die Nacht,
  weil dein Glanz sie an -- ge -- lacht,
  weil dein Glanz sie an -- ge -- lacht.
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
  c2 f4 g2/b c4 f2 g4 c g a:m b:dim/d(c) g f4.(g8) f4 g2.
  c2 g4 c2. g2 f4 g2. c2 f4 c2 e4:m g2 b4:dim/d c'/e g f c2 e4:m d'2:m/f g4 c2
}

scoreDFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreDChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
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
  } \lyricsto "alto" \scoreDVerse
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
      % \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreDBass }
  >>
>>

scoreDChordsPart = <<
  \new ChordNames \scoreDChordNames
  \scoreDChordNames
%  \new FretBoards \scoreDChordNames
>>

scoreDBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreDFigBass

\bookpart {
  \header {
    subtitle = "Alto CF"
  }
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

