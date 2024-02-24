\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "NN"
  subtitle = "Matthäus-Passion"
  subsubtitle = "Choräle"
  instrument = "Chor und BC"
  composer = "Johann Sebastian Bach"
  arranger = ""
  poet = ""
  meter = "arrangiert: Prof. Dr. iur. Dr. med. Dr. rer.nat. Sven Buschke"
  piece = ""
  opus = "BWV 244"
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

%%%%%%%%%%%%%%%%%%%%%
% Nr. 3 (1. Choral, p.32) Herzliebster Jesu, CF
%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key b \minor
%   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=60
}

scoreAChordNames = \chordmode {
  \globalA
  \germanChords
  % Chords follow here.
  
}

scoreAMelody = \relative c'' {
  \globalA
  % Music follows here.
  \partial 4
  b4
  b b as8(gs) fs4 b cs d d e(d) cs\fermata
  cs d e fs8(e) d4 g g fs8(e) fs4 e2 d4\fermata
  d cs b a fs8(g) a4 a b a g2 fs4\fermata
  fs' e d cs2 b2.\fermata
  \bar "|."  
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Herz -- liebs -- ter Je -- su, was hast du ver -- bro -- chen,
  dass man ein solch scharf Ur -- teil hat ge -- spro -- chen?
  Was ist die Schuld, in was für Miss -- e -- ta -- ten bist du ge -- ra -- ten?  
}

scoreABcMusic = \relative c {
  \globalA
  % Music follows here.
  \partial 4
  b'4
  e,8(fs) g4 fs fs8(e) d4 fs b, b' as(b) fs\fermata
  fs b a d, g8(a) b4 cs d8(cs) b(a) g4(a) d,\fermata
  b e8(fs) g4 cs, d d'8(c) b(a) g(fs) e(ds) e2 as,4\fermata
  b cs d8(e) fs2 b,2.\fermata   
}

scoreABcFigures = \figuremode {
  \globalA
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreALeadSheetPart = <<
  \new ChordNames \scoreAChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreAMelody }
  \addlyrics { \scoreAVerse }
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
    title = "Herzliebster Jesu, was hast du verbrochen (Nr. 3 (1))"
    instrument = "C.F. (und B.C.)"
  }
  \score {
    <<
      \scoreALeadSheetPart
%       \scoreABassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 3 (1. Choral, p. 32) Herzliebster Jesu, Chor
%%%%%%%%%%%%%%%%%%%%%

globalB = \globalA

scoreBSoprano = \relative c'' {
  \globalB
  % Music follows here.
  \scoreAMelody
}

scoreBAlto = \relative c' {
  \globalB
  % Music follows here.
  \partial 4
  fs4
  g
  d8(e) fs4 cs fs fs fs fs fs2 fs4\fermata
  fs fs a a b8(a) g4 a a d8(cs) b4(a8 g) fs4\fermata
  fs e d e d8(e) fs4 fs g fs fs8(ds e4) e\fermata
  d g fs fs4.(e8) ds2.\fermata  
}

scoreBTenor = \relative c' {
  \globalB
  % Music follows here.
  \partial 4
  d4
  e b cs8(b) as4 b as b8(cs) d4 cs(b) as\fermata
  as b cs d8(cs) d(e) d4 e e d d(cs) a\fermata
  b8(a) g4 g8(fs) e(a) a4 d d d c b4.(as16 b) cs4\fermata
  b b8(as) b4 b(as) fs2.\fermata  
}

scoreBBass = \relative c {
  \globalB
  % Music follows here.
  \partial 4
  b'4
  e,8(fs) g4 fs fs8(e) d4 fs b, b' as(b) fs\fermata
  fs b a d, g8(a) b4 cs d8(cs) b(a) g4(a) d,\fermata
  b e8(fs) g4 cs, d d'8(c) b(a) g(fs) e(ds) e2 as,4\fermata
  b cs d8(e) fs2 b,2.\fermata  
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
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
    } \lyricsto "soprano" \scoreBVerse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreBAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \scoreBVerse
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
    } \lyricsto "tenor" \scoreBVerse
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
    } \lyricsto "bass" \scoreBVerse
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

scoreBChordsPart = \new ChordNames \scoreBChordNames

\bookpart {
  \header {
    title = "Herzliebster Jesu, was hast du verbrochen (Nr. 3 (1))"
    instrument = "Chor und B.C.)"
  }
  \score {
    <<
      \scoreBChoirPart
      \scoreBBassoContinuoPart
      \scoreBChordsPart
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

%%%%%%%%%%%%%%%%%%%%%
% Nr. 10 (2. Choral, p. 49) Ich bins, ich sollte büßen, CF
%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \key af \major
%   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=60
}

scoreCChordNames = \chordmode {
  \globalC
  \germanChords
  % Chords follow here.
  \partial 4
  af4
  df r af r r r af\fermata
  r r r ef c f:7 df ef\fermata
  r r bf af r ef2.\fermata
  r4 r r af r bf2 f4\fermata
  f r af r r r2 c4\fermata
  c r r af r r r af\fermata
}

scoreCMelody = \relative c'' {
  \globalC
  % Music follows here.
  \partial 4
  c4
  af bf c8(df) ef4 df2 c4\fermata
  c8(df) ef4 ef bf c af2 g4\fermata
  ef af bf c c bf2.\fermata
  c4 af bf c8(df) ef4 df2 c4\fermata
  c8(df) ef4 ef bf c af2 g4\fermata
  ef af bf c df c df af\fermata
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  Ich bin's, ich soll -- te bü -- ßen,
  An Hän -- den und an Fü -- ßen
  Ge -- bun -- den in der Höll.
  Die Gei -- ßeln und die Ban -- den
  Und was du aus -- ge -- stan -- den,
  Ds hat ver -- die -- net mei -- ne Seel.
}

scoreCBcMusic = \relative c {
  \globalC
  % Music follows here.
    \partial 4
  af'4
  df8(c) bf4 af4. g8 f4(g) af\fermata
  f c8(bf) c(df) ef(df) c4 f2 ef4\fermata
  df c bf af8(bf) c(df) ef2.\fermata
  e4 f g af a bf(bf,) f'\fermata
  f g af(af8) g f(e) f(g af bf) c4\fermata
  c, f g af8(g) f(ef) d4 ef af,\fermata
  \bar "|."  
}

scoreCBcFigures = \figuremode {
  \globalC
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \partial 4
  s4
  s <6> s4. s8 <6 5>4 <6 5> s\fermata
  <5>8 <6> <6> s <6> s s4 s <7>4 <6> s\fermata
  <6 4 2> <6> <5>8 <6> s s <6> s s2.\fermata
  <6>4 <5>8 <6> <6 5>4 s <6 5> s s <_!>\fermata
  <_-> <6>8 <5>8 s4 <6 4 2> <5 2> <9> <6> <_!>\fermata
  <_-> <7>8 <6> <6 5>4 s <6> <7 5> s s\fermata
  \bar "|."  
}

scoreCLeadSheetPart = <<
  \new ChordNames \scoreCChordNames
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
    title = "Ich bins, ich sollte büßen (Nr. 10 (2))"
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

%%%%%%%%%%%%%%%%%%%%%
% Nr. 10 (2. Choral, p. 49) Ich bins, ich sollte büßen, Chor
%%%%%%%%%%%%%%%%%%%%%

globalD = \globalC

scoreDSoprano = \relative c'' {
  \globalD
  % Music follows here.
  \scoreCMelody
}

scoreDAlto = \relative c' {
  \globalD
  % Music follows here.
  \partial 4
  af'4
  f g af8(bf) c4 c(bf) af\fermata
  af af8(g) af(f) g(f) ef4 ef(d) ef\fermata
  bf ef df c8(df) ef4 ef2.\fermata
  g4 f ef ef f f8(ef f g) a4\fermata
  af bf af8(g) f4 g g(f) e\fermata
  ef ef8(f) ef(df) c(ef) f(g) af4 g ef\fermata
  \bar "|."
}

scoreDTenor = \relative c' {
  \globalD
  % Music follows here.
  \partial 4
  ef
  df df ef8(df) c(bf) af4(ef') ef\fermata
  f ef ef ef gf, af8(gf af4) bf\fermata
  gf8(ff) ef4 ff8(gf) af4 af g2.\fermata
  cf4 cf8(df) cf(bf) af(bf) cf4 bff8(cf df ef) ff4\fermata
  ff ef8(df) cf4 df gf, cf2 cf4\fermata
  cf cf8(df) cf(bff) af4 af ff' bf,8(cf16 df) cf4\fermata
  \bar "|."
}

scoreDBass = \relative c {
  \globalD
  % Music follows here.
  \partial 4
  af'4
  df8(c) bf4 af4. g8 f4(g) af\fermata
  f c8(bf) c(df) ef(df) c4 f2 ef4\fermata
  df c bf af8(bf) c(df) ef2.\fermata
  e4 f g af a bf(bf,) f'\fermata
  f g af af8(g) f(e) f(g af bf) c4\fermata
  c, f g af8(g) f(ef) d4 ef af,\fermata
  \bar "|."
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
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \scoreCBcFigures
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

scoreDChordsPart = \new ChordNames \scoreDChordNames

\bookpart {
  \header {
    title = "Ich bins, ich sollte büßen (Nr. 10 (2))"
    instrument = "Chor und B.C."
  }
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

%%%%%%%%%%%%%%%%%%%%%
% Nr. 15 (3. Choral, p.58) Erkenne mich, mein Hüter, C.F.
%%%%%%%%%%%%%%%%%%%%%

globalE = {
  \key af \major
%   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=60
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

%%%%%%%%%%%%%%%%%%%%%
% Nr. 15 (3. Choral, p. 49) Erkenne mich mein Hüter, Chor
%%%%%%%%%%%%%%%%%%%%%

globalF = \globalE

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

scoreFChordsPart = \new ChordNames \scoreFChordNames

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

%%%%%%%%%%%%%%%%%%%%%
% Nr. 17 (4. Choral, p. 60) Ich will hier bei dir stehen, C.F.
%%%%%%%%%%%%%%%%%%%%%

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

%%%%%%%%%%%%%%%%%%%%%
% Nr. 17 (4. Choral, p. 60) Ich will hier bei dir stehen, C.F.
%%%%%%%%%%%%%%%%%%%%%

globalH = {
  \key af \major
%   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=60
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

scoreHChordsPart = \new ChordNames \scoreHChordNames

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

%%%%%%%%%%%%%%%%%%%%%
% Nr. 25 (5. Choral, p. 90) Was mein Gott, das gscheh allzeit, C.F.
%%%%%%%%%%%%%%%%%%%%%

globalI = {
  \key b \minor
%   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=60
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

%%%%%%%%%%%%%%%%%%%%%
% Nr. 25 (5. Choral, p. 90) Was mein Gott, das gscheh allzeit, Chor
%%%%%%%%%%%%%%%%%%%%%

globalI = {
  \key b \minor
%   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=60
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

scoreJChordsPart = \new ChordNames \scoreJChordNames

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

scoreLChordsPart = \new ChordNames \scoreLChordNames

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

scoreNChordsPart = \new ChordNames \scoreNChordNames

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

scorePChordsPart = \new ChordNames \scorePChordNames

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

scoreRChordsPart = \new ChordNames \scoreRChordNames

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

scoreTChordsPart = \new ChordNames \scoreTChordNames

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

scoreVChordsPart = \new ChordNames \scoreVChordNames

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

%%%%%%%%%%%%%%%%%%%%%
% O Haupt, voll Blut und Wunden, C.F.
%%%%%%%%%%%%%%%%%%%%%

globalW = {
  \key f \major
%   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=60
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
    a4
    d c bf a g2 a4\fermata
    e' f f e8(d) e4 d2.
  }
  \partial 4
  f4
  e8(d) c4 d e f2 f4\fermata
  c d c bf8(a) bf4 a2.\fermata
  f'4 e8(f) g4 f e d2 e4\fermata
  a, bf a g c a2.\fermata
  \bar "|."  
}

scoreWVerseOneA = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  O Haupt voll Blut und Wun -- den,
  voll Schmerz und vol -- ler Hohn,
}

scoreWVerseOneB = \lyricmode {
  % Lyrics follow here.
  o Haupt, zum Spott ge -- bun -- den
  mit ei -- ner Dor -- nen -- kron,
}

scoreWVerseOneC = \lyricmode {
  % Lyrics follow here.
  o Haupt, sonst schön ge -- zie -- ret
  mit höchs -- ter Ehr und Zier,
  jetzt a -- ber hoch schimp -- fie -- ret
  ge -- grü -- ßet seist du mir!
}

scoreWVerseTwoA = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Du ed -- les An -- ge -- sich -- te,
  da -- vor sonst schrickt und scheut
}

scoreWVerseTwoB = \lyricmode {
  % Lyrics follow here.
  das gro -- ße Welt -- ge -- wich -- te:
  wie bist du so be -- speit,
  wie bist du so er -- blei -- chet!
}

scoreWVerseTwoC = \lyricmode {
  % Lyrics follow here.
  Wer hat dein Au -- gen -- licht,
  dem sonst kein Licht nicht glei -- chet,
  so schänd -- lich zu -- ge -- richt’?
}

% scoreWVerse = \lyricmode {
%   % Lyrics follow here.
%   
% }

scoreWBcMusic = \relative c {
  \globalW
  % Music follows here.
  
}

scoreWBcFigures = \figuremode {
  \globalW
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreWLeadSheetPart = <<
  \new ChordNames \scoreWChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreWMelody }
  \addlyrics { <<\scoreWVerseOneA \new Lyrics {\scoreWVerseOneB} >> \scoreWVerseOneC}
  \addlyrics { <<\scoreWVerseTwoA \new Lyrics {\scoreWVerseTwoB} >> \scoreWVerseTwoC}
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
    title = "O Haupt, voll Blut und Wunden"
    instrument = "C.F. (und B.C.)"
  }
  \score {
    <<
      \scoreWLeadSheetPart
%       \scoreWBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% O Haupt, voll Blut und Wunden, Chor
%%%%%%%%%%%%%%%%%%%%%

globalX = \globalW

scoreXSoprano = \relative c'' {
  \globalX
  % Music follows here.
  \scoreWMelody
}

scoreXAlto = \relative c' {
  \globalX
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    f4
    f8(g) a4 d,8(e) f4 f(e) f\fermata
    a a a a a8(g) f2.
  }
  \partial 4
  a4
  g g8(f) f4 bf bf(a8 g) a4\fermata
  a a8(g) a4 g8(fs) g4 fs2.\fermata
  g4 g c c c c(b) c\fermata
  f,8(e) d(e) f4 f e f2.\fermata  
}

scoreXTenor = \relative c' {
  \globalX
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    d4
    d8(e) f4 g c, d(c) c\fermata
    e e d d cs a2.
  }
  \partial 4
  d8(c)
  bf4 c c bf8(c) d4(c8 bf) c4\fermata
  f8(ef) d4 d d d d2.\fermata
  d4 c8(d) e4 f g a(g) g\fermata
  c, bf c c8(bf16 a) g8(c) c2.\fermata  
}

scoreXBass = \relative c {
  \globalX
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    d'8(c) bf4 a g f bf,(c) f\fermata
    cs d8(e) f(g) a4 a, d2.
  }
  \partial 4
  d4
  g a bf8(a) g4 f2 f4\fermata
  f bf fs g g, d'2.\fermata
  b4 c c'8(b) a4 g f(g) c,\fermata
  f g a8(bf) c4 c, f2.\fermata  
}

scoreXVerseOneA = \lyricmode {
  % Lyrics follow here.
  \scoreWVerseOneA
}

scoreXVerseOneB = \lyricmode {
  % Lyrics follow here.
  \scoreWVerseOneB
}

scoreXVerseOneC = \lyricmode {
  % Lyrics follow here.
  \scoreWVerseOneC
}

scoreXVerseTwoA = \lyricmode {
  % Lyrics follow here.
  \scoreWVerseTwoA
}

scoreXVerseTwoB = \lyricmode {
  % Lyrics follow here.
  \scoreWVerseTwoB
}

scoreXVerseTwoC = \lyricmode {
  % Lyrics follow here.
  \scoreWVerseTwoC
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
  \globalX
  % Music follows here.
  \scoreXBass
}

scoreXBcFigures = \figuremode {
  \globalX
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreXChordNames = \chordmode {
  \globalX
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
    } \lyricsto "soprano" { <<\scoreXVerseOneA \new Lyrics {\scoreXVerseOneB} >> \scoreXVerseOneC}
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" { <<\scoreXVerseTwoA \new Lyrics {\scoreXVerseTwoB} >> \scoreXVerseTwoC}
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreXAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" { <<\scoreXVerseOneA \new Lyrics {\scoreXVerseOneB} >> \scoreXVerseOneC}
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" { <<\scoreXVerseTwoA \new Lyrics {\scoreXVerseTwoB} >> \scoreXVerseTwoC}   
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
    } \lyricsto "tenor" { <<\scoreXVerseOneA \new Lyrics {\scoreXVerseOneB} >> \scoreXVerseOneC}
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" { <<\scoreXVerseTwoA \new Lyrics {\scoreXVerseTwoB} >> \scoreXVerseTwoC}
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
    } \lyricsto "bass" { <<\scoreXVerseOneA \new Lyrics {\scoreXVerseOneB} >> \scoreXVerseOneC}
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

scoreXChordsPart = \new ChordNames \scoreXChordNames

\bookpart {
  \header {
    title = "O Haupt, voll Blut und Wunden"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreXChoirPart
      \scoreXBassoContinuoPart
      \scoreXChordsPart
    >>
    \layout { }
%     \midi { }
  }
  \score {
    \unfoldRepeats {
    <<
      \scoreXChoirPart
      \scoreXBassoContinuoPart
      \scoreXChordsPart
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
% Nr. 62 (13. Choral, p. 254) Wenn ich einmal soll scheiden, **a-Moll**, C.F.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalY = {
  \key a \minor
%   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=60
}

scoreYChordNames = \chordmode {
  \globalY
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    \partial 4
    a4:min
    f s s c s s a:min\fermata
    s a:min s s s a2.:min
  }
  \partial 4
  a4:min
  s e:min s s s f a:min\fermata
  c s s s d:min s a s\fermata
  s g s s g s d g\fermata
  c s c s s s a:min e\fermata
  \bar "|."
}

scoreYMelody = \relative c'' {
  \globalY
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e,4
    a g f e d2 e4\fermata
    b' c b8(c16 d) c4 b8(a) a2.
  }
  \partial 4
  c4
  b8(a) g4 a b c2 c4\fermata
  g a g a8(g) f4 e2.\fermata
  c'4 b8(c) d4 c b a2 b4\fermata
  e, f e d g8(f) e2.\fermata
  \bar "|."
}

scoreYVerse = \lyricmode {
  % Lyrics follow here.
  Wenn ich ein -- mal soll schei -- den,
  so schei -- de nicht von mir,
}

scoreYVerseB = \lyricmode {
  % Lyrics follow here.
  wenn ich den Tod soll lei -- den,
  so tritt du denn her -- für,
}

scoreYVerseC = \lyricmode {
  % Lyrics follow here.
  wenn mir am al -- ler -- bängs -- ten
  wird um das Her -- ze sein,
  so reiß mich aus den Ängs -- ten
  kraft dei -- ner Angst und Pein.
}

scoreYBcMusic = \relative c {
  \globalY
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    a'8(g)
    f4 e d c fs,(g) a\fermata
    gs a d e e, a2.
  }
  a'4 ds, e ef d e(f) c\fermata
  c f e8(d) cs4 d a2.\fermata
  fs'4 g8(a) b4 e,8(fs) g4 cs, d g,\fermata
  c b c bf8(a) g4 gs a e\fermata
  \bar "|."
}

scoreYBcFigures = \figuremode {
  \globalY
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \repeat volta 2 {
    \partial 4
    s4 s <6> <7>8 <6> s4 <6 5> s s\fermata
    <6> s <6 5> <6 4> <5_+> s2.
  }
  \partial 4
  s4
  <6>8 <5> s4 <6 4 2> <6> <6 5-> s s\fermata
  s <7>8 <6> <6 5->4 <6>8 <5> s4 <4> <_+>2\fermata
  <6 5!>4 s <6> <6>8 <6 5> s4 <6 5> s s\fermata
  s <6 5> s <6> <8 _->8 <7> <6 5>4 s <_+>\fermata
  \bar "|."
}

scoreYLeadSheetPart = <<
  \new ChordNames \scoreYChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreYMelody }
  \addlyrics { <<\scoreYVerse \new Lyrics {\scoreYVerseB}>> \scoreYVerseC }
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
    title = "Wenn ich einmal soll scheiden (Nr. 62 (13. Choral), a-Moll)"
    instrument = "C.F. (und B.C.)"
  }
  \score {
    <<
      \scoreYLeadSheetPart
%       \scoreYBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 62 (13. Choral, p. 254) Wenn ich einmal soll scheiden, **a-Moll**, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalZ = \globalY

scoreZSoprano = \relative c'' {
  \globalZ
  % Music follows here.
  \scoreYMelody
}

scoreZAlto = \relative c' {
  \globalZ
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    c
    c8(d) e4 a,8(b) c4 c(b) c\fermata
    e e f e d8(c) c2.
  }
  \partial 4
  e4
  fs e f f g(f) e\fermata
  e e8(d) cs(d) e4 e8(d) d4(cs2)\fermata
  a'4 g g g8(a) b(g) g4(fs) g\fermata
  c, d c d e8(d) d4(c b)\fermata
  \bar "|."
}

scoreZTenor = \relative c' {
  \globalZ
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    a4
    a8(b) c4 d g, a(g) g\fermata
    b a a a gs e2.
  }
  \partial 4
  a8(g)
  fs4 b c d c8(bf4 af8) g4\fermata
  c8(b) a4 bf a a a2.\fermata
  d4 d d8(e16 f) e4 d e(d) d\fermata
  g, g g g8(a) bf4 b(a gs)\fermata
  \bar "|."
}

scoreZBass = \relative c {
  \globalZ
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    a'8(g)
    f4 e d c fs,(g) a\fermata
    gs a d e e a,2.
  }
  a'4 ds e ef d e(f) a,\fermata
  a f e8(d) cs4 d a2.\fermata
  fs'4 g8(a) b4 e,8(fs) g4 cs,(d) g,\fermata
  c b c bf8(a) g4 gs(a e')\fermata
  \bar "|."
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

scoreZBcMusic = \relative c {
  \globalZ
  % Music follows here.
  \scoreYBcMusic
}

scoreZBcFigures = \figuremode {
  \globalZ
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreZChordNames = \chordmode {
  \globalZ
  \germanChords
  % Chords follow here.
  
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
    } \lyricsto "soprano" { <<\scoreZVerse \new Lyrics {\scoreZVerseB}>> \scoreZVerseC }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreZAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" { <<\scoreZVerse \new Lyrics {\scoreZVerseB}>> \scoreZVerseC }
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
    } \lyricsto "tenor" { <<\scoreZVerse \new Lyrics {\scoreZVerseB}>> \scoreZVerseC }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \scoreZBass
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "bass" { <<\scoreZVerse \new Lyrics {\scoreZVerseB}>> \scoreZVerseC }
  >>
  \scoreZPianoReduction
>>

scoreZBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreZBcMusic }
  \new FiguredBass \scoreZBcFigures
>>

scoreZChordsPart = \new ChordNames \scoreZChordNames

\bookpart {
  \header {
    title = "Wenn ich einmal soll scheiden (Nr. 62 (13. Choral), a-Moll)"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreZChoirPart
      \scoreZBassoContinuoPart
      \scoreZChordsPart
    >>
    \layout { }
%     \midi { }
  }
  \score {
    \unfoldRepeats {
    <<
      \scoreZChoirPart
      \scoreZBassoContinuoPart
      \scoreZChordsPart
    >>
    }
%     \layout { }
    \midi { }
  }}

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

