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
  meter = "arrangiert: Sven Buschke"
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
  Mir kund und wis -- send sei!
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
    subsubtitle = "Choräle, Nr. 5, 1. Teil, 1. Choral (1. gesamt), a-Moll"
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
  c8(b) a(b) c4 c8(b) b(a) gs4(a e')\fermata
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
    subsubtitle = "Choräle, Nr. 5, 1. Teil, 1. Choral (1. gesamt), a-Moll"
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
  \key d \major
  %  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=36
}

scoreCChordNames = \chordmode {
  \globalC
  \germanChords
  % Chords follow here.

}

scoreCMelody = \relative c'' {
  \globalC
  % Music follows here.
  \partial 4
  d4
  cs b cs a b cs d r
  r1
  r4 d d a a fs8(g) a4 g fs r
  r2
  r2 r4 fs b b a8(b) cs4 d8(cs) b4 a r
  r1
  r4 d cs b a b8(a) g(fs) e4 d r r2
  r1 r2 r4\fermata
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  Ach, mein herz -- lie -- bes Je -- su -- lein,
  Mach dir ein rein sanft Bet -- te -- lein,
  Zu ruhn in mei -- nes Her -- zens Schrein,
  Dass ich nim -- mer ver -- ges -- se dein.
}

scoreCBcMusic = \relative c {
  \globalC
  % Music follows here.
  \partial 4
  d4
  a'4. gs8 a(g) fs4 g8(fs) e4 d r
  r1
  r4 d8(e) fs4 fs8(g) a4 a8(g) fs(e) d(cs) d4 r r2
  r2 r4 d ds e8(d) cs(b) a4 fs'8(e) d(e) a,4 r
  r1
  r4 b'8(e,) a4 d,8(g) g(fs) g(a) b(g) a(a,) d4 r r2
  r1
  r2 r4\fermata
  \bar "|."
}

scoreCBcFigures = \figuremode {
  \globalC
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
  \header {
    title = "Ach, mein herzliebes Jesulein"
    subsubtitle = "Choräle, Nr. 9, 1. Teil, 2. Choral (2. gesamt), D-Dur"
    instrument = "C.F. (und B.C.)"
  }
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
% Nr. 9 (2. Choral, p. 53) Ach, mein herzliebes Jesulein, D-Dur, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalD = \globalC

scoreDTrumpetBbI = \relative c'' {
  \globalD
  \transposition d
  % Music follows here.
  \partial 4
  r4
  r1
  r2 r8 fs16 g fs8 fs r8 fs16 g fs8 fs r8 b a g fs16 a b cs d8 r r2
  r1
  r8 d,16e d8 d r d16 e d8 d r g fs e d16 a d e fs8 r
  r1
  r2 r8 cs16 d cs8 cs r cs'16 d cs8 cs r d cs b cs16 b a g fs8 r r2
  r1
  r8 fs16 g fs8 fs r fs16 g fs8 fs r b a g fs16 a b cs d8 g, fs4 e\trill d\fermata
  \bar "|."
}

scoreDTrumpetBbII = \relative c'' {
  \globalD
  \transposition d
  % Music follows here.
  \partial 4
  r4
  r1
  r2 r8 d16 e d8 d r8 d16 e d8 d r g fs e d16 fs g e fs8 r r2
  r1
  r8 fs,16 a fs8 fs r fs16 a fs8 fs r e' d a fs16 d fs a d8 r
  r1 r2 r8 a'16 b a8 a r a16 b a8 a r b a gs a16 g fs e d8 r r2
  r1
  r8 d16 e d8 d r d16 e d8 d r g fs e d16 fs g e fs8 d d4 a16fs a8 fs4\fermata
  \bar "|."
}

scoreDTrumpetBbIII = \relative c'' {
  \globalD
  \transposition d
  % Music follows here.
  \partial 4
  r4
  r1
  r2 a4 r8 a16 fs d8 fs r fs16 a d8 d d a a4 r r2
  r1 a4 r8 a16 fs d8 fs r fs16 a d8 d16 e fs g a8 a,4 r
  r1 r2 a4 r8 a16 e' fs8 a, r fs16 a fs'8 fs e e e r r4 r2
  r1 a,4 r8 a16 fs d8 fs r fs16 a d8 d d a d,4 r8 d16 d d8 fs16 d a'8 a a4\fermata
  \bar "|."
}

scoreDTimpani = \relative c {
  \globalD
  % Music follows here.
  \partial 4
  r4
  r1
  r2 d4 r8 d16 d d4 r8 d16 d d8 d a a d4 r r2
  r1
  d4 r8 d16 d d4 r8 d16 d d8 d a a d4 r
  r1 r2 a4 r8 a16 a a4 r8 a16 a d8 r r4 a r r2
  r1 d4 r8 d16 d d4 r8 d16 d d8 d a a d4 r8 d a4 a16 a a a d4\fermata
  \bar "|."
}

scoreDSoprano = \relative c'' {
  \globalD
  % Music follows here.
  \scoreCMelody
}

scoreDAlto = \relative c' {
  \globalD
  % Music follows here.
  \partial 4
  a'4
  a8(gs) fs4 e fs8(e) d4 e fs r
  r1
  r4 fs8(g) a(g) fs4 e d d e d r r2
  r2 r4 d8(e) fs4 e e8(gs) a4 a a8(gs) e4 r
  r1
  r4 fs8(e) e(fs) fs(e) cs(d) b(cs) d4. cs8 a4 r r2
  r1
  r2 r4\fermata
  \bar "|."
}

scoreDTenor = \relative c' {
  \globalD
  % Music follows here.
  \partial 4
  fs4
  e d cs d8(cs) b(a) g4 a r
  r1
  r4 a d d cs c8(b) a4 a a r r2
  r2 r4 a a gs a8(d) cs(b) a(cs) fs(e) cs4 r
  r1 r4 d8(b) b(a) a(g) a4 g8(fs) e4 a8(g) fs4 r r2
  r1
  r2 r4\fermata
  \bar "|."
}

scoreDBass = \relative c {
  \globalD
  % Music follows here.
  \scoreCBcMusic
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  \scoreCVerse
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
  \globalD
  % Music follows here.
  \scoreCBcMusic
}

scoreDBcFigures = \figuremode {
  \globalD
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \scoreCBcFigures
}

scoreDChordNames = \chordmode {
  \globalD
  \germanChords
  % Chords follow here.
  \scoreCChordNames
}

scoreDTrumpetBbIPart = \new Staff \with {
  instrumentName = "Trompete in B I"
  shortInstrumentName = "Tr.B I"
  midiInstrument = "trumpet"
} \scoreDTrumpetBbI

scoreDTrumpetBbIIPart = \new Staff \with {
  instrumentName = "Trompete in B II"
  shortInstrumentName = "Tr.B II"
  midiInstrument = "trumpet"
} \scoreDTrumpetBbII

scoreDTrumpetBbIIIPart = \new Staff \with {
  instrumentName = "Trompete in B III"
  shortInstrumentName = "Tr.B III"
  midiInstrument = "trumpet"
} \scoreDTrumpetBbIII

scoreDTimpaniPart = \new Staff \with {
  instrumentName = "Pauken"
  shortInstrumentName = "Pk."
  midiInstrument = "timpani"
} { \clef bass \scoreDTimpani }

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
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "bass" \scoreDVerse
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
  \header {
    title = "Ach, mein herzliebes Jesulein"
    subsubtitle = "Choräle, Nr. 9, 1. Teil, 2. Choral (2. gesamt), D-Dur"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \new StaffGroup <<
        \scoreDTrumpetBbIPart
        \scoreDTrumpetBbIIPart
        \scoreDTrumpetBbIIIPart
        \scoreDTimpaniPart
      >>
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
% Nr. 12 (2. Teil, 1. Choral (3. gesamt), p. 66) Brich an, o schönes Morgenlicht, G-Dur, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalE = {
  \key g \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreEChordNames = \chordmode {
  \globalE
  \germanChords
  % Chords follow here.

}

scoreEMelody = \relative c'' {
  \globalE
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    g4
    g a b8(cs) d4 d cs d\fermata
    b c b a b a2 g4
  }
  \partial 4
  a a b c c b8(a) b4 a\fermata
  b b b c8(d) e4 e ds e\fermata
  fs g b, c b a2 a4\fermata
  d e d c b8(c) a2 g4\fermata
  \bar "|."
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  Brich an, o schö -- nes Mor -- gen -- licht,
  Und lass den Him -- mel ta -- gen,
}

scoreEVerseB = \lyricmode {
  % Lyrics follow here.
  Du Hir -- ten -- volk, er -- schre -- cke nicht,
  Weil dir die En -- gel sa -- gen,
}

scoreEVerseC = \lyricmode {
  % Lyrics follow here.
  Dass die -- ses schwa -- che Knä -- be -- lein
  Soll un -- ser Trost und Freu -- de sein,
  Da -- zu den Sa -- tan zwin -- gen
  Und letz -- lich Frie -- de brin -- gen.
}

scoreEBcMusic = \relative c {
  \globalE
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    g'8(fs) e4 d g fs8(g) a4 a, d\fermata
    ds e8(fs) g(c,) c'(b) a(g) d'4(d,) g
  }
  \partial 4
  d4 d'8(c) b4 a ds, e e a,\fermata
  e'8(fs) g4 gs a as b b, e\fermata
  d'8(cs) b(a) g(fs) e(fs) g(e) cs(b cs a) d4\fermata
  b c d e8(fs) g4 c,(d) g,\fermata
  \bar "|."
}

scoreEBcFigures = \figuremode {
  \globalE
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \partial 4
  s4
  <5>8 <6> <7 5>4 <3 5>
}

scoreELeadSheetPart = <<
  \new ChordNames \scoreEChordNames
  \new FretBoards \scoreEChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreEMelody }
  \addlyrics { <<\scoreEVerse \new Lyrics{\scoreEVerseB}>> \scoreEVerseC }
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
  \header {
    title = "Brich an, o schönes Morgenlicht"
    subsubtitle = "Choräle, Nr. 12, 2. Teil, 1. Choral (3. gesamt), G-Dur"
    instrument = "C.F. (und B.C.)"
  }
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
% Nr. 12 (2. Teil, 1. Choral (3. gesamt), p. 66) Brich an, o schönes Morgenlicht, G-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalF = \globalE

scoreFSoprano = \relative c'' {
  \globalE
  % Music follows here.
  \scoreEMelody
}

scoreFAlto = \relative c' {
  \globalF
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    d4
    e fs d8(e) fs4 e8(fs) g4 fs\fermata
    fs e d8(e) fs4 g g(fs) d
  }
  \partial 4
  fs8(g) a4. gs8 a(gs) a4 a gs e\fermata
  e8(ds) e4 e e8(fs) g(fs) fs(g) a4 g\fermata
  a g b b8(a) a(g) g2 fs4\fermata
  g8(fs) e4 fs g8(a) d,4 e(d) d\fermata
  \bar "|."
}

scoreFTenor = \relative c' {
  \globalF
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    b4
    b8(c c) d b(a) a4 a a a\fermata
    b8(a) g(a) b(c) d4 d d4.(c8) b4
  }
  \partial 4
  d8(e) fs(e) d4 e fs b, e8(d) c4\fermata
  g8(a) b(c) d(e) c4 cs b b b\fermata
  d d g g,8(a) b4 e8(d e cs) d4\fermata
  d d8(c) c(b) b(a) g4 g8(fs16 e fs4) b\fermata
  \bar "|."
}

scoreFBass = \relative c {
  \globalF
  % Music follows here.
  \scoreEBcMusic
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  \scoreEVerse
}

scoreFVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreEVerseB
}

scoreFVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreEVerseC
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
  \globalF
  % Music follows here.
  \scoreEBcMusic
}

scoreFBcFigures = \figuremode {
  \globalF
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \scoreEBcFigures
}

scoreFChordNames = \chordmode {
  \globalF
  \germanChords
  % Chords follow here.
  \scoreEChordNames
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
    } \lyricsto "soprano" {<<\scoreFVerse \new Lyrics{\scoreFVerseB}>> \scoreFVerseC}
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreFAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" {<<\scoreFVerse \new Lyrics{\scoreFVerseB}>> \scoreFVerseC}
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
    } \lyricsto "tenor" {<<\scoreFVerse \new Lyrics{\scoreFVerseB}>> \scoreFVerseC}
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreFBass
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "bass" {<<\scoreFVerse \new Lyrics{\scoreFVerseB}>> \scoreFVerseC}
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
  \header {
    title = "Brich an, o schönes Morgenlicht"
    subsubtitle = "Choräle, Nr. 12, 2. Teil, 1. Choral (3. gesamt), G-Dur"
    instrument = "Chor und B.C."
  }
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
% Nr. 17 (2. Teil, 2. Choral (4. gesamt), p. 73) Schaut hin, dort liegt im finstern Stall, C-Dur, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalG = {
  \key c \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreGChordNames = \chordmode {
  \globalG
  \germanChords
  % Chords follow here.

}

scoreGMelody = \relative c'' {
  \globalG
  % Music follows here.
  \partial 4
  c4
  b a b8(a) g4 a b c\fermata
  c c g g8(f) e(f) g4 f e\fermata
  e a a g8(a) b4 c8(b) a4 g\fermata
  c b a g a8(g) f(e) d4 c\fermata
  \bar "|."
}

scoreGVerse = \lyricmode {
  % Lyrics follow here.
  Schaut hin, dort liegt im fins -- tern Stall
  Des Herr -- schaft ge -- het ü -- ber -- all,
  Da Spei -- se vor -- mals sucht ein Rind,
  Da ru -- het itzt der Jung -- frau'n Kind.
}

scoreGBcMusic = \relative c {
  \globalG
  % Music follows here.
  \partial 4
  c4
  g' a ds, e f8(e) d4 c\fermata
  a8(b) c(d) e(f) g(a) bf4 e, f c\fermata
  a'8(g) f(e) d(c) b(a) g4 a4. b8 c4\fermata
  c8(d) e4. d8(d) c4 b8 a16(b c8) g'(g,) c4\fermata
  \bar "|."
}

scoreGBcFigures = \figuremode {
  \globalG
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \partial 4

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
  \header {
    title = "Schaut hin, dort liegt im finstern Stall"
    subsubtitle = "Choräle, Nr. 17, 2. Teil, 2. Choral (4. gesamt), C-Dur,"
    instrument = "C.F. (und B.C.)"
  }
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
% Nr. 17 (2. Teil, 2. Choral (4. gesamt), p. 73) Schaut hin, dort liegt im finstern Stall, C-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalH = \globalG

scoreHSoprano = \relative c'' {
  \globalH
  % Music follows here.
  \scoreGMelody
}

scoreHAlto = \relative c' {
  \globalH
  % Music follows here.
  \partial 4
  g'4
  g8(f) e4 fs e8(d) c4 d e\fermata
  e e e d c c c c\fermata
  c c f8(e) d(c) b4 a8(e') f4 e\fermata
  a a8(g) f4 e4. d8 c4. b8 g4\fermata
  \bar "|."
}

scoreHTenor = \relative c' {
  \globalH
  % Music follows here.
  \partial 4
  e4
  d4. c8 d4 c8(b) a(g) f4 g\fermata
  a a8(b) c4 b8(a) g(a) bf4. a8 g4\fermata
  c8(b) a(g) f4 f g8(f) e(c) c'4 c\fermata
  e e8(b) c4 b a8(b) c(a) d,(g) e4\fermata
  \bar "|."
}

scoreHBass = \relative c {
  \globalH
  % Music follows here.
  \scoreGBcMusic
}

scoreHVerse = \lyricmode {
  % Lyrics follow here.
  \scoreGVerse
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
  \globalH
  % Music follows here.
  \scoreGBcMusic
}

scoreHBcFigures = \figuremode {
  \globalH
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \scoreGBcFigures
}

scoreHChordNames = \chordmode {
  \globalH
  \germanChords
  % Chords follow here.
  \scoreGChordNames
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
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "bass" \scoreHVerse
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
  \header {
    title = "Schaut hin, dort liegt im finstern Stall"
    subsubtitle = "Choräle, Nr. 17, 2. Teil, 2. Choral (4. gesamt), C-Dur,"
    instrument = "Chor und B.C."
  }
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
% Nr. 23 (2. Teil, 3. Choral (5. gesamt), p. 103) Wir singen dir in deinem Heer, G-Dur, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalI = {
  \key g \major
  %   \numericTimeSignature
  \time 12/8
  \tempo "Andante" 4=50
}

scoreIChordNames = \chordmode {
  \globalI
  \germanChords
  % Chords follow here.

}

scoreIMelody = \relative c'' {
  \globalI
  % Music follows here.
  \partial 4.
  g'4.
  fs e fs d e fs g r
  r1.
  r4. g g d d4(c8) b4(c8) d4. c b r r2.
  r2. r4. b e e d4(e8) f4. g4(f8) e4. d r
  r1.
  r4. g fs e d e4(d8) c4(b8) a4. g r r2.
  r1.\fermata
  \bar "|."
}

scoreIVerse = \lyricmode {
  % Lyrics follow here.
  Wir sin -- gen dir in dei -- nem Heer
  Aus al -- ler Kraft Lob, Preis und Ehr,
  Dass du, o lang ge -- wünsch -- ter Gast,
  Dich nun -- mehr ein -- ge -- stel -- let hast.
}

scoreIBcMusic = \relative c {
  \globalI
  % Music follows here.

}

scoreIBcFigures = \figuremode {
  \globalI
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
  \header {
    title = "Wir singen dir in deinem Heer"
    subsubtitle = "Choräle, Nr. 23, 2. Teil, 3. Choral (5. gesamt), G-Dur"
    instrument = "C.F. (und B.C.)"
  }
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
% Nr. 23 (2. Teil, 3. Choral (5. gesamt), p. 103) Wir singen dir in deinem Heer, G-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalJ = \globalI

scoreJFluteI = \relative c'' {
  \globalJ
  % Music follows here.

}

scoreJFluteII = \relative c'' {
  \globalJ
  % Music follows here.

}

scoreJOboeDAmoreI = \relative c'' {
  \globalJ
  \transposition a
  % Music follows here.

}

scoreJOboeDAmoreII = \relative c'' {
  \globalJ
  \transposition a
  % Music follows here.

}

scoreJOboeI = \relative c'' {
  \globalJ
  % Music follows here.

}

scoreJOboeII = \relative c'' {
  \globalJ
  % Music follows here.

}

scoreJViolinI = \relative c'' {
  \globalJ
  % Music follows here.

}

scoreJViolinII = \relative c'' {
  \globalJ
  % Music follows here.

}

scoreJViola = \relative c' {
  \globalJ
  % Music follows here.

}

scoreJSoprano = \relative c'' {
  \globalJ
  % Music follows here.
  \scoreIMelody
}

scoreJAlto = \relative c' {
  \globalJ
  % Music follows here.

}

scoreJTenor = \relative c' {
  \globalJ
  % Music follows here.

}

scoreJBass = \relative c {
  \globalJ
  % Music follows here.
  \scoreIBcMusic
}

scoreJVerse = \lyricmode {
  % Lyrics follow here.
  \scoreIVerse
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
  \globalJ
  % Music follows here.
  \scoreIBcMusic
}

scoreJBcFigures = \figuremode {
  \globalJ
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \scoreIBcFigures
}

scoreJChordNames = \chordmode {
  \globalJ
  \germanChords
  % Chords follow here.
  \scoreIChordNames
}

scoreJFluteIPart = \new Staff \with {
  instrumentName = "Flöte I"
  shortInstrumentName = "Fl. I"
  midiInstrument = "flute"
} \scoreJFluteI

scoreJFluteIIPart = \new Staff \with {
  instrumentName = "Flöte II"
  shortInstrumentName = "Fl. II"
  midiInstrument = "flute"
} \scoreJFluteII

scoreJOboeDAmoreIPart = \new Staff \with {
  instrumentName = "Oboe d‘amore I"
  shortInstrumentName = "Ob.d‘am. I"
  midiInstrument = "oboe"
} \scoreJOboeDAmoreI

scoreJOboeDAmoreIIPart = \new Staff \with {
  instrumentName = "Oboe d‘amore II"
  shortInstrumentName = "Ob.d‘am. II"
  midiInstrument = "oboe"
} \scoreJOboeDAmoreII

scoreJOboeIPart = \new Staff \with {
  instrumentName = "Oboe I"
  shortInstrumentName = "Ob. I"
  midiInstrument = "oboe"
} \scoreJOboeI

scoreJOboeIIPart = \new Staff \with {
  instrumentName = "Oboe II"
  shortInstrumentName = "Ob. II"
  midiInstrument = "oboe"
} \scoreJOboeII

scoreJViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreJViolinI

scoreJViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreJViolinII

scoreJViolaPart = \new Staff \with {
  instrumentName = "Bratsche"
  shortInstrumentName = "Bra."
  midiInstrument = "viola"
} { \clef alto \scoreJViola }

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
  \header {
    title = "Wir singen dir in deinem Heer"
    subsubtitle = "Choräle, Nr. 23, 2. Teil, 3. Choral (5. gesamt), G-Dur"
    instrument = "Chor, Orchester und B.C."
  }
  \score {
    <<
      \new StaffGroup <<
        \scoreJFluteIPart
        \scoreJFluteIIPart
        \scoreJOboeDAmoreIPart
        \scoreJOboeDAmoreIIPart
        \scoreJOboeIPart
        \scoreJOboeIIPart
      >>
      \new StaffGroup <<
        \scoreJViolinIPart
        \scoreJViolinIIPart
        \scoreJViolaPart
      >>
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
% Nr. 28, 3. Teil, 1. Choral (6. gesamt), p. 126) Dies hat er alles uns getan, D-Dur, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalK = {
  \key d \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreKChordNames = \chordmode {
  \globalK
  \germanChords
  % Chords follow here.

}

scoreKMelody = \relative c'' {
  \globalK
  % Music follows here.
  \partial 4
  a4
  a a b a d e d2\fermata
  cs8(d) e4 fs e8(d) cs4 b a\fermata
  a d cs8(d) e4 b a8(gs) fs4 e\fermata
  e b' b b cs d8(cs) b4 a8(b cs4 b2) a4 a a2.\fermata
  \bar "|."
}

scoreKVerse = \lyricmode {
  % Lyrics follow here.
  Dies hat er al -- les uns ge -- tan,
  Sein groß Lieb zu zei -- gen an,
  Des freu sich al -- le Chris -- ten -- heit
  Und dank ihm des in E -- wig -- keit.
  Ky -- rie -- leis.
}

scoreKBcMusic = \relative c {
  \globalK
  % Music follows here.
  \partial 4
  a'8(g)
  fs(e) d4 g4.(fs16 e fs8) d a' a, d2\fermata
  fs8(e) d(cs) b(a') gs(e) a(fs) d(e) a4\fermata
  d,8(e) fs(gs) a(b) cs(d) e(ds) cs(a) b4 e,\fermata
  a gs8(fs) e(ds) e(fs) g(e) fs(gs a gs fs e) d(cs) ds(b) e(d) cs(a d4) a2.\fermata
  \bar "|."
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
  \header {
    title = "Dies hat er alles uns getan"
    subsubtitle = "Nr. 28, 3. Teil, 1. Choral (6. gesamt), D-Dur"
    instrument = "C.F. (und B.C.)"
  }
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
% Nr. 28, 3. Teil, 1. Choral (6. gesamt), p. 126) Dies hat er alles uns getan, D-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalL = \globalK

scoreLSoprano = \relative c'' {
  \globalL
  % Music follows here.
  \scoreKMelody
}

scoreLAlto = \relative c' {
  \globalL
  % Music follows here.
  \partial 4
  e4
  fs fs8(e) d(g) e(cs) a'(g16 fs g8) e fs2\fermata
  a4 a d8(cs) b4 b8(a4) gs8 e4\fermata
  fs8(g) a(b b) a16(gs) a4 gs8(fs) e4. ds8 b4\fermata
  cs8(ds) e4 fs e e8(g) fs(e) ds(es) fs(gs a4 a g2) fs4(fs) e8(d) e4\fermata
  \bar "|."
}

scoreLTenor = \relative c' {
  \globalL
  % Music follows here.
  \partial 4
  cs4
  cs d8(cs) b(e) cs(e) a,(d4) cs8 a2\fermata
  fs'4 e d e e8(fs4) e16(d)cs4\fermata
  a fs'8(e) e4 e e8(b) cs(e) bs(a)gs4\fermata
  a8(fs) gs4 a gs a a8(gs) fs(b) cs(d e4 fs e2) d4(d) cs8(b) cs4\fermata
  \bar "|."
}

scoreLBass = \relative c {
  \globalL
  % Music follows here.
  \scoreKBcMusic
}

scoreLVerse = \lyricmode {
  % Lyrics follow here.
  \scoreKVerse
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
  \globalL
  % Music follows here.
  \scoreKBcMusic
}

scoreLBcFigures = \figuremode {
  \globalL
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \scoreKBcFigures
}

scoreLChordNames = \chordmode {
  \globalL
  \germanChords
  % Chords follow here.
  \scoreKChordNames
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
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "bass" \scoreLVerse
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
  \header {
    title = "Dies hat er alles uns getan"
    subsubtitle = "Nr. 28, 3. Teil, 1. Choral (6. gesamt), D-Dur"
    instrument = "C.F. (und B.C.)"
  }
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
% Nr. 33, 3. Teil, 2. Choral (7. gesamt), p. 141) Ich will dich mit Fleiß bewahren, G-Dur, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalM = {
  \key g \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreMChordNames = \chordmode {
  \globalM
  \germanChords
  % Chords follow here.

}

scoreMMelody = \relative c'' {
  \globalM
  % Music follows here.
  g4 g a g a8(b) c4 c(b) c2\fermata
  d4 e c2\fermata
  b8(c) d4 a2\fermata
  d4 d c b8(a) a2 g\fermata
  g4 g a g a8(b) c4 c(b) c2\fermata
  d4 e c2\fermata
  b8(c) d4 a2\fermata
  d4 d c b8(a) a2 g\fermata
  \bar "|."
}

scoreMVerse = \lyricmode {
  % Lyrics follow here.
  Ich will dich mit Fleiß be -- wah -- ren,
  Ich will dir
  Le -- ben hier,
  Dir will ich ab -- fah -- ren,
  Mit dir will ich end -- lich schwe -- ben
  Vol -- ler Freud
  Oh -- ne Zeit
  Dort im an -- dern Le -- ben.
}

scoreMBcMusic = \relative c {
  \globalM
  % Music follows here.

}

scoreMBcFigures = \figuremode {
  \globalM
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
  \header {
    title = "Ich will dich mit Fleiß bewahren"
    subsubtitle = "Choräle, Nr. 33, 3. Teil, 2. Choral (7. gesamt), G-Dur, CF"
    instrument = "C.F. (und B.C.)"
  }
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
% Nr. 33, 3. Teil, 2. Choral (7. gesamt), p. 141) Ich will dich mit Fleiß bewahren, G-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalN = \globalM

scoreNSoprano = \relative c'' {
  \globalN
  % Music follows here.
  \scoreMMelody
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
  \globalN
  % Music follows here.
  \scoreMBcMusic
}

scoreNVerse = \lyricmode {
  % Lyrics follow here.
  \scoreMVerse
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
  \globalN
  % Music follows here.
  \scoreMBcMusic
}

scoreNBcFigures = \figuremode {
  \globalN
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \scoreMBcFigures
}

scoreNChordNames = \chordmode {
  \globalN
  \germanChords
  % Chords follow here.
  \scoreMChordNames
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
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "bass" \scoreNVerse
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
  \header {
    title = "Ich will dich mit Fleiß bewahren"
    subsubtitle = "Choräle, Nr. 33, 3. Teil, 2. Choral (7. gesamt), G-Dur, CF"
    instrument = "Chor und B.C."
  }
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
% Nr. 35, 3. Teil, 3. Choral (8. gesamt), p. 141) Seid froh dieweil, fis-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalO = {
  \key fs \minor
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreOChordNames = \chordmode {
  \globalO
  \germanChords
  % Chords follow here.

}

scoreOMelody = \relative c'' {
  \globalO
  % Music follows here.
  \partial 4
  fs,8(gs) a4 gs fs\fermata
  fs8(gs) a4 gs fs\fermata
  cs' b a gs\fermata
  gs a a b b cs cs b a gs2 fs4\fermata
  cs' b a8(gs) gs4\fermata
  cs b a gs\fermata
  gs a a b b cs cs b a8(gs) gs2 fs4\fermata
  \bar "|."
}

scoreOVerse = \lyricmode {
  % Lyrics follow here.
  Seid froh die -- weil,
  seid froh die -- weil,
  Dass eu -- er Heil
  Ist hie ein Gott und auch ein Mensch ge -- bo -- ren,
  Der, wel -- cher ist
  Der Herr und Christ
  In Da -- vids Stadt, von vie -- len aus -- er -- ko -- ren.
}

scoreOBcMusic = \relative c {
  \globalO
  % Music follows here.
  \partial 4
  fs4
  fs16(gs a b cs8) cs, d4\fermata
  d cs8(b) cs4 fs,\fermata
  fs' gs a8(b) cs4\fermata
  cs, fs8(e) d(cs) d(b) e4 a,8(a') gs(fs) fs(es) fs(d) b(gs cs4) fs,\fermata
  fs'8(e) d(cs) bs4 cs\fermata
  a b8(cs) ds(b) e4\fermata
  es8(cs) fs4 fs8(d) g4 gs8(e) a4 as8(fs) b4 bs8(gs) cs4(cs,) fs\fermata
  \bar "|."
}

scoreOBcFigures = \figuremode {
  \globalO
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
  \header {
    title = "Seid froh dieweil"
    subsubtitle = "Nr. 35, 3. Teil, 3. Choral (8. gesamt), fis-Moll"
    instrument = "C.F. (und B.C.)"
  }
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
% Nr. 35, 3. Teil, 3. Choral (8. gesamt), p. 141) Seid froh dieweil, fis-Moll, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalP = \globalO

scorePSoprano = \relative c'' {
  \globalP
  % Music follows here.
  \scoreOMelody
}

scorePAlto = \relative c' {
  \globalP
  % Music follows here.

}

scorePTenor = \relative c' {
  \globalP
  % Music follows here.

}

scorePBass = \relative c {
  \globalP
  % Music follows here.
  \scoreOBcMusic
}

scorePVerse = \lyricmode {
  % Lyrics follow here.
  \scoreOVerse
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
  \globalP
  % Music follows here.
  \scoreOBcMusic
}

scorePBcFigures = \figuremode {
  \globalP
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \scoreOBcFigures
}

scorePChordNames = \chordmode {
  \globalP
  \germanChords
  % Chords follow here.
  \scoreOChordNames
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
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "bass" \scorePVerse
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
  \header {
    title = "Seid froh dieweil"
    subsubtitle = "Nr. 35, 3. Teil, 3. Choral (8. gesamt), fis-Moll"
    instrument = "Chor und B.C."
  }
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
% Nr. 42/ 43, 4. Teil, 1. Choral (7. gesamt), p. 192) Jesus richte mein Beginnen, F-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalQ = {
  \key f \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=50
}

scoreQChordNames = \chordmode {
  \globalQ
  \germanChords
  % Chords follow here.

}

scoreQMelody = \relative c'' {
  \globalQ
  % Music follows here.
  r2.
  \repeat volta 2 {
    r r r
    c4 a2 g f4 bf c4.(d16 ef) d2. c2 r4
    r2. r r
    d4 bf2 c f,4 bf a2 g2. r
  }
  r r r r
  e'4 c2 a d4 cs d4.(e16 fs) e2. a2 r4
  r2. r r d,4(e) f g(c,) bf a(d) bf g2. f2 r4
  r2. r r r\fermata
  \bar "|."
}

scoreQVerse = \lyricmode {
  % Lyrics follow here.
  Je -- sus rich -- te mein Be -- gin -- nen,
  Je -- sus blei -- be stets bei mir,
  Je -- sus sei mir in Ge -- dan -- ken,
  Je -- sus zäu -- me mir die Sin -- nen,
  Je -- sus sein nur mein Be -- gier,
  Je -- sus sei mir in Ge -- dan -- ken,
  Je -- su, las -- se mich nicht wan -- ken.
}

scoreQBcMusic = \relative c {
  \globalQ
  % Music follows here.
  r2.
}

scoreQBcFigures = \figuremode {
  \globalQ
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
  \header {
    title = "Jesus richte mein Beginnen"
    subsubtitle = "Nr. 42/ 43, 4. Teil, 1. Choral (7. gesamt), F-Dur"
    instrument = "C.F. (und B.C.)"
  }
  \score {
    <<
      \scoreQLeadSheetPart
      \scoreQBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 42/ 43, 4. Teil, 1. Choral (7. gesamt), p. 192) Jesus richte mein Beginnen, F-Dur, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalR = \globalQ


scoreRCornetBbI = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

scoreRCornetBbII = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

scoreROboeI = \relative c'' {
  \global
  % Music follows here.

}

scoreROboeII = \relative c'' {
  \global
  % Music follows here.

}

scoreRViolinI = \relative c'' {
  \global
  % Music follows here.

}

scoreRViolinII = \relative c'' {
  \global
  % Music follows here.

}

scoreRViola = \relative c' {
  \global
  % Music follows here.

}

scoreRSoprano = \relative c'' {
  \globalR
  % Music follows here.
  \scoreQMelody
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

scoreRCornetBbIPart = \new Staff \with {
  instrumentName = "Kornett in B I"
  shortInstrumentName = "Krt.B I"
  midiInstrument = "trumpet"
} \scoreRCornetBbI

scoreRCornetBbIIPart = \new Staff \with {
  instrumentName = "Kornett in B II"
  shortInstrumentName = "Krt.B II"
  midiInstrument = "trumpet"
} \scoreRCornetBbII

scoreROboeIPart = \new Staff \with {
  instrumentName = "Oboe I"
  shortInstrumentName = "Ob. I"
  midiInstrument = "oboe"
} \scoreROboeI

scoreROboeIIPart = \new Staff \with {
  instrumentName = "Oboe II"
  shortInstrumentName = "Ob. II"
  midiInstrument = "oboe"
} \scoreROboeII

scoreRViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreRViolinI

scoreRViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreRViolinII

scoreRViolaPart = \new Staff \with {
  instrumentName = "Bratsche"
  shortInstrumentName = "Bra."
  midiInstrument = "viola"
} { \clef alto \scoreRViola }

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
      \new StaffGroup <<
        \scoreRCornetBbIPart
        \scoreRCornetBbIIPart
      >>
      \new StaffGroup <<
        \scoreROboeIPart
        \scoreROboeIIPart
      >>
      \new StaffGroup <<
        \scoreRViolinIPart
        \scoreRViolinIIPart
        \scoreRViolaPart
      >>
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
% Nr. 46/47, 5. Teil, 1. Choral (10. gesamt), p. 141) Dein Glanz all Finsternis verzehrt, A-Dur, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalS = {
  \key a \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreSChordNames = \chordmode {
  \globalS
  \germanChords
  % Chords follow here.

}

scoreSMelody = \relative c'' {
  \globalS
  % Music follows here.
  \partial 4
  a4
  a e' e(d8 cs b4) cs d8(cs) b4 a2\fermata
  r4 a b cs d b e fs e\fermata
  cs cs8(d) e4 d cs8(b) a(b cs4) b\fermata
  cs a b8(cs) d4\fermata
  cs b cs d\fermata
  cs b a e'4.(d8 cs4) d8(cs) b2 a2.\fermata
  \bar "|."
}

scoreSVerse = \lyricmode {
  % Lyrics follow here.
  Dein Glanz all Fins -- ter -- nis ver -- zehrt,
  Die trü -- be Nacht in Licht ver -- kehrt,
  Leit uns auf dei -- nen We -- gen,
  Daß dein Ge -- sicht
  Und herr -- lichs Licht
  Wir ewig schau -- en mö -- gen.
}

scoreSBcMusic = \relative c {
  \globalS
  % Music follows here.

}

scoreSBcFigures = \figuremode {
  \globalS
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
  \header {
    title = "Dein Glanz all Finsternis verzehrt"
    subsubtitle = "Nr. 46/47, 5. Teil, 1. Choral (10. gesamt), A-Dur"
    instrument = "C.F. (und B.C.)"
  }
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
% Nr. 46/47, 5. Teil, 1. Choral (10. gesamt), p. 141) Dein Glanz all Finsternis verzehrt, A-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalT = \globalS

scoreTSoprano = \relative c'' {
  \globalT
  % Music follows here.
  \scoreSMelody
}

scoreTAlto = \relative c' {
  \globalT
  % Music follows here.

}

scoreTTenor = \relative c' {
  \globalT
  % Music follows here.

}

scoreTBass = \relative c {
  \globalT
  % Music follows here.
  \scoreSBcMusic
}

scoreTVerse = \lyricmode {
  % Lyrics follow here.
  \scoreSVerse
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
  \globalT
  % Music follows here.
  \scoreSBcMusic
}

scoreTBcFigures = \figuremode {
  \globalT
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \scoreSBcFigures
}

scoreTChordNames = \chordmode {
  \globalT
  \germanChords
  % Chords follow here.
  \scoreSChordNames
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
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "bass" \scoreTVerse
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
  \header {
    title = "Dein Glanz all Finsternis verzehrt"
    subsubtitle = "Nr. 46/47, 5. Teil, 1. Choral (10. gesamt), A-Dur"
    instrument = "Chor und B.C."
  }
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
% Nr. 53/54, 5. Teil, 2. Choral (11. gesamt), p. 242) Zwar ist solche Herzens Stube, A-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalU = {
  \key a \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreUChordNames = \chordmode {
  \globalU
  \germanChords
  % Chords follow here.

}

scoreUMelody = \relative c'' {
  \globalU
  % Music follows here.
  \repeat volta 2 {
    a4 b cs8(d) e4 a, gs fs e\fermata
    fs gs a b cs8(d) b4 a2
  }
  cs4 cs b cs d cs8(b) b(a) b4\fermata
  fs gs a b cs8(d) b4 a8(gs) a4\fermata
  \bar "|."
}

scoreUVerse = \lyricmode {
  % Lyrics follow here.
  Zwar ist sol -- che Her -- zens Stu -- be
  Wohl kein schö -- ner Fürs -- ten -- saal,
}

scoreUVerseB = \lyricmode {
  % Lyrics follow here.
  Son -- dern ei -- ne fin -- stre Gru -- be;
  Doch so bald dein Gna -- den -- strahl
}

scoreUVerseC = \lyricmode {
  % Lyrics follow here.
  In dem -- sel -- ben nur wird blin -- ken,
  Wird es vol -- ler Son -- nen dün -- ken.
}

scoreUBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreUBcFigures = \figuremode {
  \globalU
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreULeadSheetPart = <<
  \new ChordNames \scoreUChordNames
  \new FretBoards \scoreUChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreUMelody }
  \addlyrics { <<\scoreUVerse \new Lyrics{\scoreUVerseB}>> \scoreUVerseC }
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
  \header {
    title = "Zwar ist solche Herzens Stube"
    subsubtitle = "Nr. 53/54, 5. Teil, 2. Choral (11. gesamt), p. 242, A-Dur"
    instrument = "C.F. (und B.C.)"
  }
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
% Nr. 53/54, 5. Teil, 2. Choral (11. gesamt), p. 242) Zwar ist solche Herzens Stube, A-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalV = \globalU

scoreVSoprano = \relative c'' {
  \globalV
  % Music follows here.
  \scoreUMelody
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
  \scoreUVerse
}

scoreVVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreUVerseB
}

scoreVVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreUVerseC
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
    } \lyricsto "soprano" {<<\scoreVVerse \new Lyrics{\scoreVVerseB}>> \scoreVVerseC}
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreVAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" {<<\scoreVVerse \new Lyrics{\scoreVVerseB}>> \scoreVVerseC}
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
    } \lyricsto "tenor" {<<\scoreVVerse \new Lyrics{\scoreVVerseB}>> \scoreVVerseC}
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreVBass
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "bass" {<<\scoreVVerse \new Lyrics{\scoreVVerseB}>> \scoreVVerseC}
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
  \header {
    title = "Zwar ist solche Herzens Stube"
    subsubtitle = "Nr. 53/54, 5. Teil, 2. Choral (11. gesamt), p. 242, A-Dur"
    instrument = "Chor und B.C."
  }
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
% Nr. 59/60, 6. Teil, 1. Choral (12. gesamt), p. 286) Ich steh an deiner Krippen hier, G-Dur, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalW = {
  \key g \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreWChordNames = \chordmode {
  \globalW
  \germanChords
  % Chords follow here.

}

scoreWMelody = \relative c'' {
  \globalW
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    g4
    g8(a) b4 a g a a b\fermata
    g8(a) b4 c d c8(b) a(g a4) g
  }
  \partial 4
  b b a g fs g8(a) b4 a\fermata
  a g fs g d g a b\fermata
  g8(a) b4 c d c8(b) a(g a4) g\fermata
  \bar "|."
}

scoreWVerse = \lyricmode {
  % Lyrics follow here.
  Ich steh an dei -- ner Krip -- pen hier,
  O Je -- su -- lein, mein Le -- ben,
}

scoreWVerseB = \lyricmode {
  % Lyrics follow here.
  Ich kom -- me, bring und schen -- ke dir,
  Was du mir hast ge -- ge -- ben,
}

scoreWVerseC = \lyricmode {
  % Lyrics follow here.
  Nimm hin, es ist mein Geist und Sinn,
  Herz, Seel und Mut, nimm al -- les hin
  Und laß dir's wohl ge -- fal -- len.
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
  \addlyrics { <<\scoreWVerse \new Lyrics{\scoreWVerseB}>> \scoreWVerseC }
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
  \header {
    title = "Ich steh an deiner Krippen hier"
    subsubtitle = "Nr. 59/60, 6. Teil, 1. Choral (12. gesamt), G-Dur"
    instrument = "C.F. (und B.C.)"
  }
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
% Nr. 59/60, 6. Teil, 1. Choral (12. gesamt), p. 286) Ich steh an deiner Krippen hier, G-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalX = \globalW

scoreXSoprano = \relative c'' {
  \globalX
  % Music follows here.
  \scoreWMelody
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
  \scoreWVerse
}

scoreXVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreWVerseB
}

scoreXVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreWVerseC
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
  \globalX
  % Music follows here.
  \scoreWBcMusic
}

scoreXBcFigures = \figuremode {
  \globalX
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \scoreWBcFigures
}

scoreXChordNames = \chordmode {
  \globalX
  \germanChords
  % Chords follow here.
  \scoreWChordNames
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
    } \lyricsto "soprano" {<<\scoreXVerse \new Lyrics{\scoreXVerseB}>> \scoreXVerseC}
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreXAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" {<<\scoreXVerse \new Lyrics{\scoreXVerseB}>> \scoreXVerseC}
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
    } \lyricsto "tenor" {<<\scoreXVerse \new Lyrics{\scoreXVerseB}>> \scoreXVerseC}
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreXBass
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "bass" {<<\scoreXVerse \new Lyrics{\scoreXVerseB}>> \scoreXVerseC}
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
  \header {
    title = "Ich steh an deiner Krippen hier"
    subsubtitle = "Nr. 59/60, 6. Teil, 1. Choral (12. gesamt), G-Dur"
    instrument = "Chor und B.C."
  }
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
% Nr. 64/65, 6. Teil, 2. Choral (13. gesamt), p. 296) Nun seid ihr wohl gerochen, D-Dur, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalY = {
  \key d \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreYChordNames = \chordmode {
  \globalY
  \germanChords
  % Chords follow here.

}

scoreYMelody = \relative c'' {
  \globalY
  % Music follows here.
  \partial 4
  r4
  r1
  \repeat volta 2 {
    r
    r r r
    r r r
    r r r
    r2 r4 fs b a g fs e2 fs4 r
    r1
    r2 r4 cs d d cs8.(d32 e) cs4 b r r2 r1
  }
  r1 r
  r2 r4 d cs a b cs d2 d4 r
  r1
  r4 a b a g g8(fs) fs4 r
  r1 r
  r2 r4 d cs e d c b2 cs4 r
  r1 r r
  r2 r4 fs g fs e a fs1
  r r r r r r r r r r r2 r4\fermata
  \bar "|."
}

scoreYVerse = \lyricmode {
  % Lyrics follow here.
  Nun seid ihr wohl ge -- ro -- chen
  An eu -- rer Fein -- de Schar;
}

scoreYVerseB = \lyricmode {
  % Lyrics follow here.
  Denn Chris -- tus hat zer -- bro -- chen,
  Was euch zu -- wi -- der war,
}

scoreYVerseC = \lyricmode {
  % Lyrics follow here.
  Tod, Teu -- fel, Sünd und Höl -- le
  Sind ganz und gar ge -- schwächt,
  Bei Gott hat sei -- ne Stel -- le
  Das mensch -- li -- che Ge -- schlecht.
}

scoreYBcMusic = \relative c {
  \globalY
  % Music follows here.
  \partial 4
  r4
  d8 d, r4 r2
  \repeat volta 2 {
    r8 d'16 cs d e fs g a g a b a g fs e d8 d, r4 r2
    r8 d'16 cs d e fs g a g a b a g fs e d8 cs d cs d d'16 cs d8 b cs, b cs b cs cs'16 b cs8 a b, b' a a, g g' fs fs, e16 fs g a b cs d b cs a cs e a8 cs,
    d b g a b b'16 a b8 b, fs fs'16 e fs8 d g g, fs fs' e e, d d' cs16 d' c b a g fs e
    d cs b a g8 a d, d'16 e d c b a
    g8 g' fs fs, b b' a a, g g' a a, d fs16 e d8 cs
    b b' r4 r2
    r8 b,16 as b cs d e fs e fs g fs e d cs b8 b' g d e cs fs fs,
    b fs' b fs g e a16 g fs e d8 d, r4 r2
  }
}

scoreYBcFigures = \figuremode {
  \globalY
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreYLeadSheetPart = <<
  \new ChordNames \scoreYChordNames
  \new FretBoards \scoreYChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreYMelody }
  \addlyrics { <<\scoreYVerse \new Lyrics{\scoreYVerseB}>> \scoreYVerseC }
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
  \header {
    title = "Nun seid ihr wohl gerochen"
    subsubtitle = "Nr. 64/65, 6. Teil, 2. Choral (13. gesamt), D-Dur"
    instrument = "C.F. (und B.C.)"
  }
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
% Nr. 64/65, 6. Teil, 2. Choral (13. gesamt), p. 296) Nun seid ihr wohl gerochen, D-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalZ = \globalY

scoreZTrumpetBbI = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

scoreZTrumpetBbII = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

scoreZTrumpetBbIII = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

scoreZTimpani = \relative c {
  \global
  % Music follows here.

}

scoreZOboeI = \relative c'' {
  \global
  % Music follows here.

}

scoreZOboeII = \relative c'' {
  \global
  % Music follows here.

}

scoreZViolinI = \relative c'' {
  \global
  % Music follows here.

}

scoreZViolinII = \relative c'' {
  \global
  % Music follows here.

}

scoreZViola = \relative c' {
  \global
  % Music follows here.

}

scoreZSoprano = \relative c'' {
  \globalZ
  % Music follows here.
  \scoreYMelody
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
  \scoreYVerse
}

scoreZVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreYVerseB
}

scoreZVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreYVerseC
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
  \globalZ
  % Music follows here.
  \scoreYBcMusic
}

scoreZBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreZTrumpetBbIPart = \new Staff \with {
  instrumentName = "Trompete in B I"
  shortInstrumentName = "Tr.B I"
  midiInstrument = "trumpet"
} \scoreZTrumpetBbI

scoreZTrumpetBbIIPart = \new Staff \with {
  instrumentName = "Trompete in B II"
  shortInstrumentName = "Tr.B II"
  midiInstrument = "trumpet"
} \scoreZTrumpetBbII

scoreZTrumpetBbIIIPart = \new Staff \with {
  instrumentName = "Trompete in B III"
  shortInstrumentName = "Tr.B III"
  midiInstrument = "trumpet"
} \scoreZTrumpetBbIII

scoreZTimpaniPart = \new Staff \with {
  instrumentName = "Pauken"
  shortInstrumentName = "Pk."
  midiInstrument = "timpani"
} { \clef bass \scoreZTimpani }

scoreZOboeIPart = \new Staff \with {
  instrumentName = "Oboe I"
  shortInstrumentName = "Ob. I"
  midiInstrument = "oboe"
} \scoreZOboeI

scoreZOboeIIPart = \new Staff \with {
  instrumentName = "Oboe II"
  shortInstrumentName = "Ob. II"
  midiInstrument = "oboe"
} \scoreZOboeII

scoreZViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreZViolinI

scoreZViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreZViolinII

scoreZViolaPart = \new Staff \with {
  instrumentName = "Bratsche"
  shortInstrumentName = "Bra."
  midiInstrument = "viola"
} { \clef alto \scoreZViola }

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
  \header {
    title = "Nun seid ihr wohl gerochen"
    subsubtitle = "Nr. 64/65, 6. Teil, 2. Choral (13. gesamt), D-Dur"
    instrument = "Chor, Orchester und B.C."
  }
  \score {
    <<
      \new StaffGroup <<
        \scoreZTrumpetBbIPart
        \scoreZTrumpetBbIIPart
        \scoreZTrumpetBbIIIPart
        \scoreZTimpaniPart
      >>
      \new StaffGroup <<
        \scoreZOboeIPart
        \scoreZOboeIIPart
      >>
      \new StaffGroup <<
        \scoreZViolinIPart
        \scoreZViolinIIPart
        \scoreZViolaPart
      >>
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

