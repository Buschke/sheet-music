\version "2.24.3"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = ""
  title = "Weihnachtsoratorium Johann Sebastian Bach"
  subtitle = "Weihnachtsoratorium"
  subsubtitle = "Choräle"
  instrument = "CF, Chor und BC"
  composer = "Johann Sebastian Bach"
  arranger = ""
  poet = ""
  meter = "arrangiert: Prof. Dr. iur. Dr. med. Dr. rer.nat. Sven Buschke"
  piece = ""
  opus = "BWV 248"
  copyright = ""
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
%   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=36
}

scoreAChordNames = \chordmode {
  \globalA
  \germanChords
  % Chords follow here.

}

scoreAMelody = \relative c'' {
  \globalA
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e,4
    a g f e d2 e4\fermata
    b' c c b8(c16 d) b4 a2.
  }
  \partial 4
  c4
  b8(a) g4 a b c2 c4\fermata
  g a g f8(e) f4 e2.\fermata
  c'4 b8(c) d4 c b a2 b4\fermata
  e, f e d g8(f) e2.\fermata
  \bar "|."
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Wie soll ich dich emp -- fan -- gen
  Und wie be -- gegn' ich dir,
}

scoreAVerseB = \lyricmode {
  % Lyrics follow here.
  O al -- ler Welt Ver -- lan -- gen,
  O mei -- ner See -- len Zier,
}

scoreAVerseC = \lyricmode {
  % Lyrics follow here.
  O Je -- su, Je -- su, set -- ze
  Mir selbst die Fa -- ckel bei,
  Da -- mit was dich er -- göt -- ze,
  Mir kund und wis -- send sei.
}

scoreABcMusic = \relative c {
  \globalA
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e4
    f g a,8(b) c4 f,2 e4\fermata
    e' a8(g) f(e) d(b) e e, a2.
  }
  \partial 4
  a'4
  d, e f8(e) d4 a8(b c4) c\fermata
  c f8(e) d(cs) d4 d a2.\fermata
  fs'4 g4. fs8 e4. d8 c(a d4) g,\fermata
  c8(b) a(b) c4(c8 b) b(a) gs4(a e)\fermata
  \bar "|."
}

scoreABcFigures = \figuremode {
  \globalA
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \repeat volta 2 {
    \partial 4
    <_+>4
    <7>8 <6> <5> <6> <6 5> <5> <9> <8> <6 5>4 <4>8 <3> <_+>4\fermata
    <_+> s <5> <6 5> <_+> s2.
  }
  \partial 4
  <8>8 <7> <6> <5> <8> <7> <5>4 <6> <6> <3 5>8 <2 4> s4\fermata
  s s <6- 4 2>8 <6 5> s4 s <_+>2.\fermata
  <6 5>4 s s <6> <5> <6 5>  <_+> s\fermata
  s <6>8 <6 5> <7> <6> <6 4 2>4 <6>8 <6 4> <6 5>4 s <_+>\fermata
  \bar "|."
}

scoreALeadSheetPart = <<
  \new ChordNames \scoreAChordNames
  \new FretBoards \scoreAChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreAMelody }
  \addlyrics { <<\scoreAVerse \new Lyrics {\scoreAVerseB}>> \scoreAVerseC }
>>

scoreABassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreABcMusic }
  \new FiguredBass \scoreABcFigures
>>

\bookpart {
  \header {
    title = "Wie soll ich dich empfangen"
    subsubtitle = "Choräle, Nr. 5, 1. Choral, a-Moll"
    instrument = "C.F. (und B.C.)"
  }
  \score {
    <<
      \scoreALeadSheetPart
      \scoreABassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalB = \globalA

scoreBSoprano = \relative c'' {
  \globalB
  % Music follows here.
  \scoreAMelody
}

scoreBAlto = \relative c' {
  \globalB
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e8(d)
    c(d) d(e) e(d) d(c) c4(b8 a)b4\fermata
    e e a a gs e2.
  }
  \partial 4
  a8(g) f4 e8(d) c4 f f(e8 d) e4\fermata
  e f bf,8(a) a(g) a(d) cs2.\fermata
  d4 d g g8(fs) g4 g(fs) g\fermata
  g c,8(d) c4 f, d' d(c b)\fermata
  \bar "|."
}

scoreBTenor = \relative c' {
  \globalB
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    gs4
    a b c8(d) g,4 a8(gs a4) gs\fermata
    gs a8(b) c4 f e8(d) c2.
  }
  \partial 4
  e4
  d8(c) b4 a8(g) f(g) a4(g8 f) g4\fermata
  c c8(d) e4 d8(cs) d(gs,) a2.\fermata
  a4 g8(a) b4 c8(d) e4 e(d) d\fermata
  c c8(d) b(a) a4 g8(a) b4(a gs)\fermata
  \bar "|."
}

scoreBBass = \relative c {
  \globalB
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e4
    f g a8(b) c4 f,2 e4\fermata
    e a8(g) f(e) d(b) e4 a,2.
  }
  \partial 4
  a'4
  d, e f8(e) d4 a8(b c4) c\fermata
  c f8(e) d(cs) d4 d a2.\fermata
  fs'4 g4. fs8 e4. d8 c(a d4) g,\fermata
  c8(b) a(b) c4(c8 b) b(a) gs4(a e')\fermata
  \bar "|."
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreBVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseB
}

scoreBVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseC
}

scoreBPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreBSoprano \\
      \scoreBAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreBTenor \\
      \scoreBBass
    >>
  }
>>

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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreBBcMusic = \relative c {
  \globalB
  % Music follows here.
  \scoreABcMusic
}

scoreBBcFigures = \figuremode {
  \globalB
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \scoreABcFigures
}

scoreBChordNames = \chordmode {
  \globalB
  \germanChords
  % Chords follow here.
  \scoreAChordNames
}

scoreBChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreBSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" {<<\scoreBVerse \new Lyrics{\scoreBVerseB}>> \scoreBVerseC}
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreBAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" {<<\scoreBVerse \new Lyrics{\scoreBVerseB}>> \scoreBVerseC}
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreBTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" {<<\scoreBVerse \new Lyrics{\scoreBVerseB}>> \scoreBVerseC}
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreBBass
    }
        \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "bass" {<<\scoreBVerse \new Lyrics{\scoreBVerseB}>> \scoreBVerseC}
  >>
  \scoreBPianoReduction
>>

scoreBBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreBBcMusic }
  \new FiguredBass \scoreBBcFigures
>>

scoreBChordsPart = <<
  \new ChordNames \scoreBChordNames
  \new FretBoards \scoreBChordNames
>>

\bookpart {
  \header {
    title = "Wie soll ich dich empfangen"
    subsubtitle = "Choräle, Nr. 5, 1. Choral, a-Moll"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreBChoirPart
      \scoreBBassoContinuoPart
      \scoreBChordsPart
    >>
    \layout { }
%     \midi { }
  }
  \score {
    \unfoldRepeats {
    <<
      \scoreBChoirPart
      \scoreBBassoContinuoPart
      \scoreBChordsPart
    >>
    }
%     \layout { }
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreCMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreCVerse = \lyricmode {
  % Lyrics follow here.

}

scoreCBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreCBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreCLeadSheetPart = <<
  \new ChordNames \scoreCChordNames
  \new FretBoards \scoreCChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreCMelody }
  \addlyrics { \scoreCVerse }
>>

scoreCBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreCBcMusic }
  \new FiguredBass \scoreCBcFigures
>>

\bookpart {
  \score {
    <<
      \scoreCLeadSheetPart
      \scoreCBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreDSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreDAlto = \relative c' {
  \global
  % Music follows here.

}

scoreDTenor = \relative c' {
  \global
  % Music follows here.

}

scoreDBass = \relative c {
  \global
  % Music follows here.

}

scoreDVerse = \lyricmode {
  % Lyrics follow here.

}

scoreDPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreDSoprano \\
      \scoreDAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreDTenor \\
      \scoreDBass
    >>
  }
>>

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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreDBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreDBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreDChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreDSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreDVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreDAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreDVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreDTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreDVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreDBass
    }
  >>
  \scoreDPianoReduction
>>

scoreDBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreDBcMusic }
  \new FiguredBass \scoreDBcFigures
>>

scoreDChordsPart = <<
  \new ChordNames \scoreDChordNames
  \new FretBoards \scoreDChordNames
>>

\bookpart {
  \score {
    <<
      \scoreDChoirPart
      \scoreDBassoContinuoPart
      \scoreDChordsPart
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreEChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreEMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreEVerse = \lyricmode {
  % Lyrics follow here.

}

scoreEBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreEBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreELeadSheetPart = <<
  \new ChordNames \scoreEChordNames
  \new FretBoards \scoreEChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreEMelody }
  \addlyrics { \scoreEVerse }
>>

scoreEBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreEBcMusic }
  \new FiguredBass \scoreEBcFigures
>>

\bookpart {
  \score {
    <<
      \scoreELeadSheetPart
      \scoreEBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreFSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreFAlto = \relative c' {
  \global
  % Music follows here.

}

scoreFTenor = \relative c' {
  \global
  % Music follows here.

}

scoreFBass = \relative c {
  \global
  % Music follows here.

}

scoreFVerse = \lyricmode {
  % Lyrics follow here.

}

scoreFPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreFSoprano \\
      \scoreFAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreFTenor \\
      \scoreFBass
    >>
  }
>>

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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreFBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreFBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreFChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreFChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreFSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreFVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreFAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreFVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreFTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreFVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreFBass
    }
  >>
  \scoreFPianoReduction
>>

scoreFBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreFBcMusic }
  \new FiguredBass \scoreFBcFigures
>>

scoreFChordsPart = <<
  \new ChordNames \scoreFChordNames
  \new FretBoards \scoreFChordNames
>>

\bookpart {
  \score {
    <<
      \scoreFChoirPart
      \scoreFBassoContinuoPart
      \scoreFChordsPart
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreGChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreGMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreGVerse = \lyricmode {
  % Lyrics follow here.

}

scoreGBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreGBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreGLeadSheetPart = <<
  \new ChordNames \scoreGChordNames
  \new FretBoards \scoreGChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreGMelody }
  \addlyrics { \scoreGVerse }
>>

scoreGBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreGBcMusic }
  \new FiguredBass \scoreGBcFigures
>>

\bookpart {
  \score {
    <<
      \scoreGLeadSheetPart
      \scoreGBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreHSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreHAlto = \relative c' {
  \global
  % Music follows here.

}

scoreHTenor = \relative c' {
  \global
  % Music follows here.

}

scoreHBass = \relative c {
  \global
  % Music follows here.

}

scoreHVerse = \lyricmode {
  % Lyrics follow here.

}

scoreHPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreHSoprano \\
      \scoreHAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreHTenor \\
      \scoreHBass
    >>
  }
>>

scoreHRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreHSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreHAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreHTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreHBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreHBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreHBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreHChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreHChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreHSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreHVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreHAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreHVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreHTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreHVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreHBass
    }
  >>
  \scoreHPianoReduction
>>

scoreHBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreHBcMusic }
  \new FiguredBass \scoreHBcFigures
>>

scoreHChordsPart = <<
  \new ChordNames \scoreHChordNames
  \new FretBoards \scoreHChordNames
>>

\bookpart {
  \score {
    <<
      \scoreHChoirPart
      \scoreHBassoContinuoPart
      \scoreHChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreHRehearsalMidi "soprano" "soprano sax" \scoreHVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreHRehearsalMidi "alto" "soprano sax" \scoreHVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreHRehearsalMidi "tenor" "tenor sax" \scoreHVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreHRehearsalMidi "bass" "tenor sax" \scoreHVerse
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreIChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreIMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreIVerse = \lyricmode {
  % Lyrics follow here.

}

scoreIBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreIBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreILeadSheetPart = <<
  \new ChordNames \scoreIChordNames
  \new FretBoards \scoreIChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreIMelody }
  \addlyrics { \scoreIVerse }
>>

scoreIBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreIBcMusic }
  \new FiguredBass \scoreIBcFigures
>>

\bookpart {
  \score {
    <<
      \scoreILeadSheetPart
      \scoreIBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreJSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreJAlto = \relative c' {
  \global
  % Music follows here.

}

scoreJTenor = \relative c' {
  \global
  % Music follows here.

}

scoreJBass = \relative c {
  \global
  % Music follows here.

}

scoreJVerse = \lyricmode {
  % Lyrics follow here.

}

scoreJPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreJSoprano \\
      \scoreJAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreJTenor \\
      \scoreJBass
    >>
  }
>>

scoreJRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreJSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreJAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreJTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreJBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreJBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreJBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreJChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreJChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreJSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreJVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreJAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreJVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreJTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreJVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreJBass
    }
  >>
  \scoreJPianoReduction
>>

scoreJBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreJBcMusic }
  \new FiguredBass \scoreJBcFigures
>>

scoreJChordsPart = <<
  \new ChordNames \scoreJChordNames
  \new FretBoards \scoreJChordNames
>>

\bookpart {
  \score {
    <<
      \scoreJChoirPart
      \scoreJBassoContinuoPart
      \scoreJChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreJRehearsalMidi "soprano" "soprano sax" \scoreJVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreJRehearsalMidi "alto" "soprano sax" \scoreJVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreJRehearsalMidi "tenor" "tenor sax" \scoreJVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreJRehearsalMidi "bass" "tenor sax" \scoreJVerse
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreKChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreKMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreKVerse = \lyricmode {
  % Lyrics follow here.

}

scoreKBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreKBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreKLeadSheetPart = <<
  \new ChordNames \scoreKChordNames
  \new FretBoards \scoreKChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreKMelody }
  \addlyrics { \scoreKVerse }
>>

scoreKBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreKBcMusic }
  \new FiguredBass \scoreKBcFigures
>>

\bookpart {
  \score {
    <<
      \scoreKLeadSheetPart
      \scoreKBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreLSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreLAlto = \relative c' {
  \global
  % Music follows here.

}

scoreLTenor = \relative c' {
  \global
  % Music follows here.

}

scoreLBass = \relative c {
  \global
  % Music follows here.

}

scoreLVerse = \lyricmode {
  % Lyrics follow here.

}

scoreLPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreLSoprano \\
      \scoreLAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreLTenor \\
      \scoreLBass
    >>
  }
>>

scoreLRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreLSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreLAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreLTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreLBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreLBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreLBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreLChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreLChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreLSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreLVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreLAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreLVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreLTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreLVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreLBass
    }
  >>
  \scoreLPianoReduction
>>

scoreLBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreLBcMusic }
  \new FiguredBass \scoreLBcFigures
>>

scoreLChordsPart = <<
  \new ChordNames \scoreLChordNames
  \new FretBoards \scoreLChordNames
>>

\bookpart {
  \score {
    <<
      \scoreLChoirPart
      \scoreLBassoContinuoPart
      \scoreLChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreLRehearsalMidi "soprano" "soprano sax" \scoreLVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreLRehearsalMidi "alto" "soprano sax" \scoreLVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreLRehearsalMidi "tenor" "tenor sax" \scoreLVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreLRehearsalMidi "bass" "tenor sax" \scoreLVerse
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreMChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreMMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreMVerse = \lyricmode {
  % Lyrics follow here.

}

scoreMBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreMBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreMLeadSheetPart = <<
  \new ChordNames \scoreMChordNames
  \new FretBoards \scoreMChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreMMelody }
  \addlyrics { \scoreMVerse }
>>

scoreMBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreMBcMusic }
  \new FiguredBass \scoreMBcFigures
>>

\bookpart {
  \score {
    <<
      \scoreMLeadSheetPart
      \scoreMBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreNSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreNAlto = \relative c' {
  \global
  % Music follows here.

}

scoreNTenor = \relative c' {
  \global
  % Music follows here.

}

scoreNBass = \relative c {
  \global
  % Music follows here.

}

scoreNVerse = \lyricmode {
  % Lyrics follow here.

}

scoreNPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreNSoprano \\
      \scoreNAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreNTenor \\
      \scoreNBass
    >>
  }
>>

scoreNRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreNSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreNAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreNTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreNBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreNBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreNBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreNChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreNChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreNSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreNVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreNAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreNVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreNTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreNVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreNBass
    }
  >>
  \scoreNPianoReduction
>>

scoreNBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreNBcMusic }
  \new FiguredBass \scoreNBcFigures
>>

scoreNChordsPart = <<
  \new ChordNames \scoreNChordNames
  \new FretBoards \scoreNChordNames
>>

\bookpart {
  \score {
    <<
      \scoreNChoirPart
      \scoreNBassoContinuoPart
      \scoreNChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreNRehearsalMidi "soprano" "soprano sax" \scoreNVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreNRehearsalMidi "alto" "soprano sax" \scoreNVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreNRehearsalMidi "tenor" "tenor sax" \scoreNVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreNRehearsalMidi "bass" "tenor sax" \scoreNVerse
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreOChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreOMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreOVerse = \lyricmode {
  % Lyrics follow here.

}

scoreOBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreOBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreOLeadSheetPart = <<
  \new ChordNames \scoreOChordNames
  \new FretBoards \scoreOChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreOMelody }
  \addlyrics { \scoreOVerse }
>>

scoreOBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreOBcMusic }
  \new FiguredBass \scoreOBcFigures
>>

\bookpart {
  \score {
    <<
      \scoreOLeadSheetPart
      \scoreOBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scorePSoprano = \relative c'' {
  \global
  % Music follows here.

}

scorePAlto = \relative c' {
  \global
  % Music follows here.

}

scorePTenor = \relative c' {
  \global
  % Music follows here.

}

scorePBass = \relative c {
  \global
  % Music follows here.

}

scorePVerse = \lyricmode {
  % Lyrics follow here.

}

scorePPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scorePSoprano \\
      \scorePAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scorePTenor \\
      \scorePBass
    >>
  }
>>

scorePRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scorePSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scorePAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scorePTenor }
     \new Staff = "bass" \new Voice = "bass" { \scorePBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scorePBcMusic = \relative c {
  \global
  % Music follows here.

}

scorePBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scorePChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scorePChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scorePSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scorePVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scorePAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scorePVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scorePTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scorePVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scorePBass
    }
  >>
  \scorePPianoReduction
>>

scorePBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scorePBcMusic }
  \new FiguredBass \scorePBcFigures
>>

scorePChordsPart = <<
  \new ChordNames \scorePChordNames
  \new FretBoards \scorePChordNames
>>

\bookpart {
  \score {
    <<
      \scorePChoirPart
      \scorePBassoContinuoPart
      \scorePChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scorePRehearsalMidi "soprano" "soprano sax" \scorePVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scorePRehearsalMidi "alto" "soprano sax" \scorePVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scorePRehearsalMidi "tenor" "tenor sax" \scorePVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scorePRehearsalMidi "bass" "tenor sax" \scorePVerse
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreQChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreQMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreQVerse = \lyricmode {
  % Lyrics follow here.

}

scoreQBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreQBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreQLeadSheetPart = <<
  \new ChordNames \scoreQChordNames
  \new FretBoards \scoreQChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreQMelody }
  \addlyrics { \scoreQVerse }
>>

scoreQBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreQBcMusic }
  \new FiguredBass \scoreQBcFigures
>>

\bookpart {
  \score {
    <<
      \scoreQLeadSheetPart
      \scoreQBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreRSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreRAlto = \relative c' {
  \global
  % Music follows here.

}

scoreRTenor = \relative c' {
  \global
  % Music follows here.

}

scoreRBass = \relative c {
  \global
  % Music follows here.

}

scoreRVerse = \lyricmode {
  % Lyrics follow here.

}

scoreRPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreRSoprano \\
      \scoreRAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreRTenor \\
      \scoreRBass
    >>
  }
>>

scoreRRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreRSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreRAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreRTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreRBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreRBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreRBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreRChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreRChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreRSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreRVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreRAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreRVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreRTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreRVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreRBass
    }
  >>
  \scoreRPianoReduction
>>

scoreRBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreRBcMusic }
  \new FiguredBass \scoreRBcFigures
>>

scoreRChordsPart = <<
  \new ChordNames \scoreRChordNames
  \new FretBoards \scoreRChordNames
>>

\bookpart {
  \score {
    <<
      \scoreRChoirPart
      \scoreRBassoContinuoPart
      \scoreRChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreRRehearsalMidi "soprano" "soprano sax" \scoreRVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreRRehearsalMidi "alto" "soprano sax" \scoreRVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreRRehearsalMidi "tenor" "tenor sax" \scoreRVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreRRehearsalMidi "bass" "tenor sax" \scoreRVerse
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreSChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreSMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreSVerse = \lyricmode {
  % Lyrics follow here.

}

scoreSBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreSBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreSLeadSheetPart = <<
  \new ChordNames \scoreSChordNames
  \new FretBoards \scoreSChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreSMelody }
  \addlyrics { \scoreSVerse }
>>

scoreSBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreSBcMusic }
  \new FiguredBass \scoreSBcFigures
>>

\bookpart {
  \score {
    <<
      \scoreSLeadSheetPart
      \scoreSBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreTSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreTAlto = \relative c' {
  \global
  % Music follows here.

}

scoreTTenor = \relative c' {
  \global
  % Music follows here.

}

scoreTBass = \relative c {
  \global
  % Music follows here.

}

scoreTVerse = \lyricmode {
  % Lyrics follow here.

}

scoreTPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreTSoprano \\
      \scoreTAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreTTenor \\
      \scoreTBass
    >>
  }
>>

scoreTRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreTSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreTAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreTTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreTBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreTBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreTBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreTChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreTChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreTSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreTVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreTAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreTVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreTTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreTVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreTBass
    }
  >>
  \scoreTPianoReduction
>>

scoreTBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreTBcMusic }
  \new FiguredBass \scoreTBcFigures
>>

scoreTChordsPart = <<
  \new ChordNames \scoreTChordNames
  \new FretBoards \scoreTChordNames
>>

\bookpart {
  \score {
    <<
      \scoreTChoirPart
      \scoreTBassoContinuoPart
      \scoreTChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreTRehearsalMidi "soprano" "soprano sax" \scoreTVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreTRehearsalMidi "alto" "soprano sax" \scoreTVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreTRehearsalMidi "tenor" "tenor sax" \scoreTVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreTRehearsalMidi "bass" "tenor sax" \scoreTVerse
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreUChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreUMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreUVerse = \lyricmode {
  % Lyrics follow here.

}

scoreUBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreUBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreULeadSheetPart = <<
  \new ChordNames \scoreUChordNames
  \new FretBoards \scoreUChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreUMelody }
  \addlyrics { \scoreUVerse }
>>

scoreUBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreUBcMusic }
  \new FiguredBass \scoreUBcFigures
>>

\bookpart {
  \score {
    <<
      \scoreULeadSheetPart
      \scoreUBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreVSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreVAlto = \relative c' {
  \global
  % Music follows here.

}

scoreVTenor = \relative c' {
  \global
  % Music follows here.

}

scoreVBass = \relative c {
  \global
  % Music follows here.

}

scoreVVerse = \lyricmode {
  % Lyrics follow here.

}

scoreVPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreVSoprano \\
      \scoreVAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreVTenor \\
      \scoreVBass
    >>
  }
>>

scoreVRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreVSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreVAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreVTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreVBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreVBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreVBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreVChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreVChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreVSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreVVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreVAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreVVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreVTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreVVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreVBass
    }
  >>
  \scoreVPianoReduction
>>

scoreVBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreVBcMusic }
  \new FiguredBass \scoreVBcFigures
>>

scoreVChordsPart = <<
  \new ChordNames \scoreVChordNames
  \new FretBoards \scoreVChordNames
>>

\bookpart {
  \score {
    <<
      \scoreVChoirPart
      \scoreVBassoContinuoPart
      \scoreVChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreVRehearsalMidi "soprano" "soprano sax" \scoreVVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreVRehearsalMidi "alto" "soprano sax" \scoreVVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreVRehearsalMidi "tenor" "tenor sax" \scoreVVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreVRehearsalMidi "bass" "tenor sax" \scoreVVerse
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreWChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreWMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreWVerse = \lyricmode {
  % Lyrics follow here.

}

scoreWBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreWBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreWLeadSheetPart = <<
  \new ChordNames \scoreWChordNames
  \new FretBoards \scoreWChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreWMelody }
  \addlyrics { \scoreWVerse }
>>

scoreWBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreWBcMusic }
  \new FiguredBass \scoreWBcFigures
>>

\bookpart {
  \score {
    <<
      \scoreWLeadSheetPart
      \scoreWBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreXSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreXAlto = \relative c' {
  \global
  % Music follows here.

}

scoreXTenor = \relative c' {
  \global
  % Music follows here.

}

scoreXBass = \relative c {
  \global
  % Music follows here.

}

scoreXVerse = \lyricmode {
  % Lyrics follow here.

}

scoreXPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreXSoprano \\
      \scoreXAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreXTenor \\
      \scoreXBass
    >>
  }
>>

scoreXRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreXSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreXAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreXTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreXBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreXBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreXBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreXChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreXChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreXSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreXVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreXAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreXVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreXTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreXVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreXBass
    }
  >>
  \scoreXPianoReduction
>>

scoreXBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreXBcMusic }
  \new FiguredBass \scoreXBcFigures
>>

scoreXChordsPart = <<
  \new ChordNames \scoreXChordNames
  \new FretBoards \scoreXChordNames
>>

\bookpart {
  \score {
    <<
      \scoreXChoirPart
      \scoreXBassoContinuoPart
      \scoreXChordsPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreXRehearsalMidi "soprano" "soprano sax" \scoreXVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreXRehearsalMidi "alto" "soprano sax" \scoreXVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreXRehearsalMidi "tenor" "tenor sax" \scoreXVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreXRehearsalMidi "bass" "tenor sax" \scoreXVerse
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreYChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreYMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreYVerse = \lyricmode {
  % Lyrics follow here.

}

scoreYBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreYBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreYLeadSheetPart = <<
  \new ChordNames \scoreYChordNames
  \new FretBoards \scoreYChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreYMelody }
  \addlyrics { \scoreYVerse }
>>

scoreYBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreYBcMusic }
  \new FiguredBass \scoreYBcFigures
>>

\bookpart {
  \score {
    <<
      \scoreYLeadSheetPart
      \scoreYBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreZSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreZAlto = \relative c' {
  \global
  % Music follows here.

}

scoreZTenor = \relative c' {
  \global
  % Music follows here.

}

scoreZBass = \relative c {
  \global
  % Music follows here.

}

scoreZVerse = \lyricmode {
  % Lyrics follow here.

}

scoreZPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreZSoprano \\
      \scoreZAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreZTenor \\
      \scoreZBass
    >>
  }
>>

scoreZRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreZSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreZAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreZTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreZBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 50 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreZChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreZBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreZBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreZChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \scoreZSoprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \scoreZVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreZAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreZVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \scoreZTenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \scoreZVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreZBass
    }
  >>
  \scoreZPianoReduction
>>

scoreZChordsPart = <<
  \new ChordNames \scoreZChordNames
  \new FretBoards \scoreZChordNames
>>

scoreZBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreZBcMusic }
  \new FiguredBass \scoreZBcFigures
>>

\bookpart {
  \score {
    <<
      \scoreZChoirPart
      \scoreZChordsPart
      \scoreZBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreZRehearsalMidi "soprano" "soprano sax" \scoreZVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreZRehearsalMidi "alto" "soprano sax" \scoreZVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreZRehearsalMidi "tenor" "tenor sax" \scoreZVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreZRehearsalMidi "bass" "tenor sax" \scoreZVerse
    \midi { }
  }
}

