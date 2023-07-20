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
  g2 a4 c2 c4 c2 g4 g c c d(e) g c,4.(e8) c4 c2.
  e2 d4 e2. e2 c4 c2.
  c2 a4 g2 g4 g2 g4 e b' a g2 g4 g2 g4 e2
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  c,2 c4 e2 e4 f2 b,4 c e f f(g) b f4.(g8) f4 e2.
  g2 f4 g2. g2 f4 e2.
  e2 c4 c2 c4 b2 b4 g4 d' c c2 c4 b2 b4 g2
}

scoreABass = \relative c {
  \global
  % Music follows here.
  c,2 f4 c2 c4 f2 g4 c, c f d(c) g' f4.(e8) f4 c2.
  c2 g'4 c,2. e2 f4 c2. c2 f4 c2 c4 g'2 g4 c, c f c2 e4 f2 g4 c,2
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
  c2 f4 c2 c4 f2 g4 c c f b:dim/d(c) g f4.(e8:m) f4 c2.
  c2 b4:dim/d c2. e2:m f4 c2. c2 f4 c2 c4 g2 g4 c' g f c2 c4 g2 g4 c2
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
  %\scoreAChordNames
%  \new FretBoards \scoreAChordNames
>>

scoreABassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreAFigBass

\bookpart {
  \header {
    subtitle = "Sopran CF, simple set"
  }
  \score {
    <<
      \scoreAChoirPart
      \scoreAChordsPart
      %\scoreABassFiguresPart
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
  g2 a4 c2 c4 c2 g4 g c c d(e) g c,4.(e8) c4 c2.
  e2 d4 e2. e2c4 c2.
  c2 a4 g2 g4 g2 g4 c b a g2 g4 g2 g4 e2
%   c,2 c4 d2 e4 f2 b,4 c d f f(e) d fs4.(g8) fs4 b2.
%   e,2 d4 e2. d2 f4 d2. e2 c4 2 b4 b2 4 c d d4 c2 b4 d2 b4 g2
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  c2 c4 e2 e4 f2 b,4 c e f f(g) b f4.(g8) f4 e2.
  g2 f4 g2. g2 f4 e2.
  e2 c4 c2 c4 b2 b4 g4 d' c c2 c4 b2 b4 g2
%   g2 a4 g2 c4 c2 g4 4 b c d(e) b d4.(d8) c4 d2.
%   g,2 g4 g2. 2 c4 b2. c2 a4 c2 g4 g2 f4 g b a a2 g4 a2 g4 e2
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
  c,2 f4 c2 c4 f2 g4 c, c f d(c) g' f4.(e8) f4 c2.
  c2 g'4 c,2. e2 f4 c2. c2 f4 c2 c4 g'2 g4 c, c f c2 e4 f2 g4 c,2
%   c,2 f4 b2 c4 f,2 g4 c, g' f d(c) g' d4.(g8) d4 g2.
%   c,2 g'4 c,2. g'2 f4 g2. c,2 f4 c2 e4 g2 d4 e g d a'2 e4 f2 g4 c,2
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
  c2 f4 c2 c4 f2 g4 c c f b:dim/d(c) g f4.(e8:m) f4 c2.
  c2 b4:dim/d c2. e2:m f4 c2. c2 f4 c2 c4 g2 g4 c' g f c2 c4 g2 g4 c2
%   c2 f4 g2/b c4 f2 g4 c g a:m b:dim/d(c) g f4.(g8) f4 g2.
%   c2 g4 c2. g2 f4 g2. c2 f4 c2 e4:m g2 b4:dim/d c'/e g f c2 e4:m d'2:m/f g4 c2
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
%   \scoreBChordNames
%  \new FretBoards \scoreBChordNames
>>

scoreBBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreBFigBass

\bookpart {
  \header {
    subtitle = "Tenor CF, simple set"
  }
  \score {
    <<
      \scoreBChoirPart
     \scoreBChordsPart
%      \scoreBBassFiguresPart
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
%   c2 c4 b2 e4 f2 b,4 c d e f(g) d f4.(d8) f4 d2.
%   e2 d4 e2. d2 f4 d2. e2 b4 c2 b4 b2 4 c d c4 2 b4 b2 4 g2
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  g2 c4
%   g'2 f4 g2 c4 c2 f,4 4 b c d(e) b c4.(g8) c4 b2.
%   g2 g4 g2. 2 c4 b2. c2 g4 g2 g4 g2 f4 g b a g2 4 2 g4 e2
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  c,2 f4 c2 c4 f2 g4 c, c f d(c) g' f4.(e8) f4 c2.
  c2 g'4 c,2. e2 f4 c2. c2 f4 c2 c4 g'2 g4 c, c f c2 e4 f2 g4 c,2
%   c2 a4 d2 e4 f,2 b4 c g a d(c) g f4.(g8) f4 g2.
%   c2 g4 c2. g2 f4 g2. d'2 f,4 c'2 e4 d2 d4 e g f c2 e4 2 g4 c,2
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
  c2 f4 c2 c4 f2 g4 c c f b:dim/d(c) g f4.(e8:m) f4 c2.
  c2 b4:dim/d c2. e2:m f4 c2. c2 f4 c2 c4 g2 g4 c' g f c2 c4 g2 g4 c2
%   c2 f4 g2/b c4 f2 g4 c g a:m b:dim/d(c) g f4.(g8) f4 g2.
%   c2 g4 c2. g2 f4 g2. c2 f4 c2 e4:m g2 b4:dim/d c'/e g f c2 e4:m d'2:m/f g4 c2
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
%   \scoreCChordNames
  %\new FretBoards \scoreCChordNames
>>

scoreCBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreCFigBass

\bookpart {
  \header {
    subtitle = "Bass CF, simple four part harmony"
  }
  \score {
    <<
      \scoreCChoirPart
     \scoreCChordsPart
%      \scoreCBassFiguresPart
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
 %     \scoreDChordsPart
 %     \scoreDBassFiguresPart
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
  e,2 f4 g2 4 a2 d,4 e g a
  b(c) d a4.(b8) a4 g2.\breathe
  c2 b4 c2. b2 a4 g2.\breathe
  g2 f4 e2 4 d2 4 c g' f e2 4 d2 4 c2
  \bar "|."
}

scoreEAlto = \relative c' {
  \global
  % Music follows here.
  c2 c4 d2 e4 f2 b,4 c d f f(g) g fs4.(g8) fs4 d2.
  e2 d4 e2. d2 f4 d2. e2 c4 2 b4 b2 4 c d d4 c2 b4 a2 b4 g2
}

scoreETenor = \relative c' {
  \global
  % Music follows here.
  g2 a4 g2 c4 c2 g4 4 b c d(e) b d2. b2.
  g2 g4 g2. 2 c4 b2. c2 a4 c2 g4 g2 f4 g b a a2 g4 a2 g4 e2
}

scoreEBass = \relative c {
  \global
  % Music follows here.
  c2 f4 b,2 c4 f2 g4 c, g' f d,(c) g' d2. g2.
  c,2 g'4 c,2. g'2 f4 g2. c,2 f4 c2 e4 g2 d4 e g d a2 e'4 f2 g4 c,2
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  Mor -- gen -- stern der fins -- tern Nacht,
  der die Welt voll Freu -- den macht,
  Je -- su -- lein, Komm her -- ein,
  leucht in mei -- nes Her -- zens Schrein,
  leucht in mei -- nes Her -- zens Schrein.
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
  c2 f4 g2/b c4 f2 g4 c g a:m b:dim/d(c) g f4.(g8) f4 g2.
  c2 g4 c2. g2 f4 g2. c2 f4 c2 e4:m g2 b4:dim/d c'/e g d:m a2:m c4 d'2:m/f g4 c2
}

scoreEFigBass = \figuremode {
  \global
  % Figures follow here.
 s2 4 <6>2 s4 s2 s4 s4 s4 s4 <6>4 s4 s4 s4. s8 s4 s2. s2 s4 s2. s2 s4 s2. s2 s4 s2 s4 s2 <6>4 s4 s4 s4 s2 s4 s2 s4 s2
}

scoreEChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
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

scoreEChordsPart = <<
  \new ChordNames \scoreEChordNames
  \scoreEChordNames
%  \new FretBoards \scoreEChordNames
>>

scoreEBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreEFigBass

\bookpart {
  \header {
    subtitle = "Sopran CF"
  }
  \score {
    <<
      \scoreEChoirPart
      %\scoreEChordsPart
      %\scoreEBassFiguresPart
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
  c,2 c4 d2 e4 f2 b,4 c d f f(e) d fs4.(g8) fs4 b2.
  e,2 d4 e2. d2 f4 d2. e2 c4 2 b4 b2 4 c d d4 c2 b4 d2 b4 g2
}

scoreFAlto = \relative c' {
  \global
  % Music follows here.
  g2 a4 g2 c4 c2 g4 4 b c d(e) b d4.(d8) c4 d2.
  g,2 g4 g2. 2 c4 b2. c2 a4 c2 g4 g2 f4 g b a a2 g4 a2 g4 e2
}

scoreFTenor = \relative c' {
  \global
  % Music follows here.
  e,2 f4 g2 4 a2 d,4 e g a
  b(c) d a4.(b8) a4 g2.\breathe
  c2 b4 c2. b2 a4 g2.\breathe
  g2 f4 e2 4 d2 4 c g' f e2 4 d2 4 c2
  \bar "|."
}

scoreFBass = \relative c {
  \global
  % Music follows here.
  c,2 f4 b2 c4 f,2 g4 c, g' f d(c) g' d4.(g8) d4 g2.
  c,2 g'4 c,2. g'2 f4 g2. c,2 f4 c2 e4 g2 d4 e g d a'2 e4 f2 g4 c,2
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  Schau, dein Him -- mel ist in mir,
  er be -- gehrt dich, sei -- ne Zier.
  Säu -- me nicht, o mein Licht,
  komm, komm, eh der Tag an -- bricht,
  komm, komm, eh der Tag an -- bricht.
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

scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c2 f4 g2/b c4 f2 g4 c g a:m b:dim/d(c) g f4.(g8) f4 g2.
  c2 g4 c2. g2 f4 g2. c2 f4 c2 e4:m g2 b4:dim/d c'/e g f c2 e4:m d'2:m/f g4 c2
}

scoreFFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreFChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
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
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "tenor" \scoreFVerse
>>

scoreFChordsPart = <<
  \new ChordNames \scoreFChordNames
  \scoreFChordNames
%  \new FretBoards \scoreFChordNames
>>

scoreFBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreFFigBass

\bookpart {
  \header {
    subtitle = "Tenor CF"
  }
  \score {
    <<
      \scoreFChoirPart
%      \scoreFChordsPart
%      \scoreFBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreFRehearsalMidi "soprano" "soprano sax" \scoreBVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreFRehearsalMidi "alto" "soprano sax" \scoreBVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreFRehearsalMidi "tenor" "tenor sax" \scoreBVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreFRehearsalMidi "bass" "tenor sax" \scoreBVerse
    \midi { }
  }
}


scoreGSoprano = \relative c'' {
  \global
  % Music follows here.
  c2 c4 b2 e4 f2 b,4 c d e f(g) d f4.(d8) f4 d2.
  e2 d4 e2. d2 f4 d2. e2 b4 c2 b4 b2 4 c d c4 2 b4 b2 4 g2
}

scoreGAlto = \relative c' {
  \global
  % Music follows here.
  g'2 f4 g2 c4 c2 f,4 4 b c d(e) b c4.(g8) c4 b2.
  g2 g4 g2. 2 c4 b2. c2 g4 g2 g4 g2 f4 g b a g2 4 2 g4 e2
}

scoreGTenor = \relative c' {
  \global
  % Music follows here.
  c2 a4 d2 e4 f,2 b4 c g a d(c) g f4.(g8) f4 g2.
  c2 g4 c2. g2 f4 g2. d'2 f,4 c'2 e4 d2 d4 e g f c2 e4 2 g4 c,2
}

scoreGBass = \relative c {
  \global
  % Music follows here.
  e,2 f4 g2 4 a2 d,4 e g a
  b(c) d a4.(b8) a4 g2.\breathe
  c2 b4 c2. b2 a4 g2.\breathe
  g2 f4 e2 4 d2 4 c g' f e2 4 d2 4 c2
  \bar "|."
}

scoreGVerse = \lyricmode {
  % Lyrics follow here.
  Dei -- nes Glanz -- es Herr -- lich -- keit
  Ü -- ber -- trifft die Son -- ne weit;
  du al -- lein, Je -- su -- lein,
  bist, was tau -- send Son -- nen sein,
  bist, was tau -- send Son -- nen sein.
}

scoreGRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreGSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreGAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreGTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreGBass }
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

scoreGChordNames = \chordmode {
  \global
  \semiGermanChords
  % Chords follow here.
  c2 f4 g2/b c4 f2 g4 c g a:m b:dim/d(c) g f4.(g8) f4 g2.
  c2 g4 c2. g2 f4 g2. c2 f4 c2 e4:m g2 b4:dim/d c'/e g f c2 e4:m d'2:m/f g4 c2
}

scoreGFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreGChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreGSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreGAlto }
  >>
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreGTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreGBass }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "bass" \scoreGVerse
>>

scoreGChordsPart = <<
  \new ChordNames \scoreGChordNames
  \scoreGChordNames
  %\new FretBoards \scoreGChordNames
>>

scoreGBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreGFigBass

\bookpart {
  \header {
    subtitle = "Bass CF"
  }
  \score {
    <<
      \scoreGChoirPart
%      \scoreGChordsPart
%      \scoreGBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreGRehearsalMidi "soprano" "soprano sax" \scoreGVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreGRehearsalMidi "alto" "soprano sax" \scoreGVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreGRehearsalMidi "tenor" "tenor sax" \scoreGVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreGRehearsalMidi "bass" "tenor sax" \scoreGVerse
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
 %     \scoreDChordsPart
 %     \scoreDBassFiguresPart
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
