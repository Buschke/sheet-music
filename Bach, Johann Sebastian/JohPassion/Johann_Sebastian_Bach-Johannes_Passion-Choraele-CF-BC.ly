\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Johannes-Passion"
  subsubtitle = "Choräle"
  instrument = "CF, Chor und BC"
  composer = "Johann Sebastian Bach"
  arranger = ""
  poet = ""
  meter = "arrangiert: Prof. Dr. iur. Dr. med. Dr. rer.nat. Sven Buschke"
  piece = ""
  opus = "BWV 245"
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
% Nr. 3 (1. Choral, p. 23) O große Lieb, o Lieb ohn alle Maße, **g-Moll**
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key g \minor
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreAChordNames = \chordmode {
  \globalA
  \germanChords
  % Chords follow here.
  \partial 4
  g4:min
  s s d\fermata
  s s s g g s g d\fermata
  d:min g s g s s s s s s f bf\fermata
  g:min s s d d bf s ef s s s bf\fermata
  bf s g s s g2.\fermata
  \bar "|."
}

scoreAMelody = \relative c'' {
  \globalA
  % Music follows here.
  \partial 4
  g4
  g g fs\fermata
  d g a bf bf c(bf) a\fermata
  a bf c d8(c) bf4 ef ef d df8(c) c2 bf4\fermata
  bf a g f d8(ef) f4 f g f ef2 d4\fermata
  d' c bf8(a) a2 g2.\fermata
  \bar "|."
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  O gro -- ße Lieb, o Lieb ohn al -- le Ma -- ße,
  die dich ge -- bracht auf die -- se Mar -- ter -- stra -- ße,
  ich leb -- te mit der Welt in Lust und Freu -- den,
  und du mußt lei -- den.
}

scoreABcMusic = \relative c {
  \globalA
  % Music follows here.
  \partial 4
  g'4
  c,8(d) ef4 d\fermata
  c bf a g g' fs(g) d\fermata
  d g c bf af g gf f e f f, bf4\fermata
  g c cs d d8(c) bf(c) d(bf) ef,4 f g(a) bf\fermata
  bf fs g cs(d) g,2.\fermata
  \bar "|."
}

scoreABcFigures = \figuremode {
  \globalA
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \partial 4
  s4
  <7 6> <6 4>8 <3> <_+>4\fermata
  <4+> <6> <6/> s s <7 5> s <_+>\fermata
  s s <6> s <2> <6> <6> <6 4> <7- 5> <4> <3> s\fermata
  s <6> <7 5> s s s <6> s <6> <6 5> <6 5> s\fermata
  s <7 5> s <6 5> <8 _+>8 <7> <_!>2.\fermata
  \bar "|."
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
  \new FiguredBass \with {
    useBassFigureExtenders = ##t
  } \scoreABcFigures
>>

\bookpart {
  \header {
    title = "O große Lieb, o Lieb ohn alle Maße"
    subsubtitle = "Nr. 3, 1. Choral, **g-Moll**"
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 3 (1. Choral, p. 23) O große Lieb, o Lieb ohn alle Maße, **g-Moll**, Chor
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
  \partial 4
  d4
  ef8(d) c4 d\fermata
  a d8(e) fs4 g g a(g) fs\fermata
  fs g a bf f g8(a) bf4 bf bf bf(a) f\fermata
  g8(f) ef(d) e4 d a d8(ef) f4 f8(ef) ef(d) d(c16 bf c4) bf\fermata
  bf' a g g(fs) d2.\fermata
  \bar "|."
}

scoreBTenor = \relative c' {
  \globalB
  % Music follows here.
  \partial 4
  bf4
  bf a8(g) a4\fermata
  fs g c d d ef(d) d\fermata
  d d ef f8(ef) d(c) bf4 bf8(c) d(bf) g'4 f4.(ef8) d4\fermata
  d c bf a f bf bf bf a bf(f) f\fermata
  f' ef d e d8(c) b2.\fermata
  \bar "|."
}

scoreBBass = \relative c {
  \globalB
  % Music follows here.
  \partial 4
  g'4
  c,8(d) ef4 d\fermata
  c bf a g g' fs(g) d\fermata
  d g c bf af g gf f e f2 bf,4\fermata
  g c cs d d8(c) bf(c) d(bf) ef4 f g(a) bf\fermata
  bf fs g cs,(d) g,2.\fermata
  \bar "|."
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
  \new FiguredBass \with {useBassFigureExtenders = ##t } \scoreBBcFigures
>>

scoreBChordsPart = \new ChordNames \scoreBChordNames

\bookpart {
  \header {
    title = "O große Lieb, o Lieb ohn alle Maße"
    subsubtitle = "Nr. 3, 1. Choral, **g-Moll**"
    instrument = "Chor und B.C."
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (2. Choral, p. 25) Dein Will gescheh, Herr Gott, zugleich, **d-Moll**, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \key d \minor
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
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
  a4
  a8(g) f4 g a8(g) f4 e d\fermata
  a' a g c a8(g) f4 g a\fermata
  a8(b) c4 d8(e) f4 e d cs d\fermata
  d e d c b a gs a\fermata
  d c b c8(bf) a4 a g f\fermata
  a bf a8(g) f4 g f e d\fermata
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  Dein Will ge -- scheh, Herr Gott, zu -- gleich
  auf Er -- den wie im Him -- mel -- reich,
  gib uns Ge -- duld in Lei -- dens -- zeit,
  ge -- hor -- sam sein in Lieb und Leid,
  Wehr und steur al -- lem Fleisch und Blut,
  Das wi -- der dei -- nen Wil -- len tut.
}

scoreCBcMusic = \relative c {
  \globalC
  % Music follows here.
  \partial 4
  d
  cs d e f g a d,\fermata
  d c bf a8(c) f4 bf8(a) bf4 a\fermata
  a8(g) f4. e8 d4 g gs a d,\fermata
  g c, b a d8(e) f4 e a,\fermata
  g'8(f) e4 d c d8(c) bf4 c f\fermata
  fs g cs, d8(c) bf(a) gs4 a d\fermata
  \bar "|."
}

scoreCBcFigures = \figuremode {
  \globalC
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \partial 4
  s4
  <6> s <6/> <6> <7> <4>8 <_+> s4\fermata
  s <6> <6> <6> s <5> <6 4>8 <3> <_+>4\fermata
  <_!> s4 <4! 2>8 <6/> s4 <6> <7 5 _!> <_+> <_+>\fermata
  <7 _!> <7 _!>8 <6> <7> <6/> s4 <6! 5>8 <_+> <7> <6> <_!>4 s\fermata
  <_!> <6> <6!> s s <7 5> <4>8 <3> s4\fermata
  <6> s <6>8 <5> s4 <6> <7 5> <_+> <_+>\fermata
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
  \new FiguredBass \with {
    useBassFigureExtenders = ##t
  } \scoreCBcFigures
>>

\bookpart {
  \header {
    title = "Dein Will gescheh, Herr Gott, zugleich"
    subsubtitle = "Chorläle, Nr. 5, 2. Choral, d-Moll"
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
% Nr. 5 (2. Choral, p. 25) Dein Will gescheh, Herr Gott, zugleich, **d-Moll**, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
  f4
  e e8(d) cs(d16 e) a,4 bf8 d4 cs8 a4\fermata
  d' a bf c4. cs8 d(cs) d4 cs\fermata
  c a g f8(a) g(e) f(e) e4 fs\fermata
  g8(f) e4 b' e, f8(e) e(d) e4 e\fermata
  g g8(f16 e) f4 e f f4. e8 c4\fermata
  d d e e8(a,) d4 d4. cs8 a4\fermata
  \bar "|."
}

scoreDTenor = \relative c' {
  \globalD
  % Music follows here.
  \partial 4
  d4
  a a g d' d a8(g) f4\fermata
  d' a bf c4. cs8 d(cs) d4 cs\fermata
  c c8(a) b(cs) d(c) bf4 b a a\fermata
  b b8(a) a(gs) a4. g8 a4 b c\fermata
  b c8(a) g(f) g4 d' d g,8(c) a4\fermata
  a g8(f) e4 a bf b e,8(a) fs4\fermata
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
  \new FiguredBass \with {
    useBassFigureExtenders = ##t
  } \scoreDBcFigures
>>

scoreDChordsPart = \new ChordNames \scoreDChordNames

\bookpart {
  \header {
    title = "Dein Will gescheh, Herr Gott, zugleich"
    subsubtitle = "Chorläle, Nr. 5, 2. Choral, d-Moll"
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 11 (3. Choral, p. 40) Wer hat dich so geschlagen, **A-Dur**, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalE = {
  \key a \major
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
    cs
    a b cs8(d) e4 d2 cs4\fermata
    cs e e b d8(cs) a2 gs4\fermata
    e a b cs8(d16 e) d8(cs) b2.\fermata
    cs4 a b cs8(d) e4 d2 cs4\fermata
    cs8(d) e4 e b cs a2 gs4\fermata
    e a b cs8(d) e(d) cs4 b a\fermata
  }
}

scoreEVerse = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Wer hat dich so ge -- schla -- gen,
  mein Heil, und dich mit Pla -- gen
  so ü --  bel zu -- ge -- richt',
  du bist ja nicht ein Sün -- der
  wie wir und uns -- re Kin -- der,
  von Miss -- e -- ta -- ten weißt du nicht.
}

scoreEVerseB = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Ich, ich und mei -- ne Sün -- den,
  die sich wie Körn -- lein fin -- den
  des San -- des an dem Meer,
  die ha -- ben dir er -- re -- get
  das E -- lend, das dich schlä -- get,
  und das be -- trüb -- te Mart -- er -- heer.
}

scoreEBcMusic = \relative c {
  \globalE
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    a'4
    d cs8(b) a4. g8 fs2 es4\fermata
    fs cs8(b) cs(d) e4 a, b(bs) cs\fermata
    d cs b a d e2.\fermata
    es4 fs gs a as b2 fs4\fermata
    fs cs8(b) cs4 ds e e(ds) e\fermata
    cs fs8(e) fs(gs) a4 cs,8(d) e4 e a,\fermata
  }
}

scoreEBcFigures = \figuremode {
  \globalE
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \partial 4
  s4
  s <7 6 2> s4. <6 4 2>8 <6 5>4 <4> <6 5>\fermata
  s <6> s s s <7 5> <7 5> <5>\fermata
  <6 4 2> <6> <5>8 <6> s4 <6>8 <5> s2.\fermata
  <6>4 s <6> s <6 5> <5> <6 4+> <_+>\fermata
  <_!> <6> <6>8 <5> <6 5>4 <6> <6 4 2> <6 5> s\fermata
  s <7> <6 4> s <6> <6 4> <5 3> s\fermata
  \bar "|."
}

scoreELeadSheetPart = <<
  \new ChordNames \scoreEChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreEMelody }
  \addlyrics { <<\scoreEVerse \new Lyrics{\scoreEVerseB}>> }
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
    title = "Wer hat dich so geschlagen"
    subsubtitle = "Choräle, Nr. 11, 3. Choral, A-Dur"
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
% Nr. 11 (3. Choral, p. 40) Wer hat dich so geschlagen, **A-Dur**, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalF = \globalE

scoreFSoprano = \relative c'' {
  \globalF
  % Music follows here.
  \scoreEMelody
}

scoreFAlto = \relative c' {
  \globalF
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    a'4 fs gs a8(b) cs4 cs(b8 a) gs4\fermata
    a a a gs b8(a) fs2 e4\fermata
    b e fs8(gs) a(b16 cs) b8(a) gs2.\fermata
    gs4 fs e e fs fs(es) fs\fermata
    fs e a8(gs) fs4 e8(ds16 c) fs2 e4\fermata
    e e d cs8(e) a4 a gs e\fermata
  }
}

scoreFTenor = \relative c' {
  \globalF
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e4
    d d e a, a(b) cs\fermata
    fs e e e e e(ds) gs,\fermata
    gs a d e8(a,) gs(a) e'2.\fermata
    cs4 cs b a8(b) cs4 b(gs) as\fermata
    a a a a gs cs(b) b\fermata
    cs cs b e4. fs8 e4 d cs\fermata
  }
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

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  \scoreEVerse
}

scoreFVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreEVerseB
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
    } \lyricsto "soprano" {<<\scoreFVerse \new Lyrics{\scoreFVerseB}>>}
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreFAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" {<<\scoreFVerse \new Lyrics \scoreFVerseB>>}
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
    } \lyricsto "tenor" {<<\scoreFVerse \new Lyrics{\scoreFVerseB}>>}
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
    } \lyricsto "bass" {<<\scoreFVerse \new Lyrics{\scoreFVerseB}>>}
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
  \header {
    title = "Wer hat dich so geschlagen"
    subsubtitle = "Nr. 11, 3. Choral, A-Dur"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreFChoirPart
      \scoreFBassoContinuoPart
      \scoreFChordsPart
    >>
    \layout { }
    %     \midi { }
  }
  \score {
    \unfoldRepeats {
      <<
        \scoreFChoirPart
        \scoreFBassoContinuoPart
        \scoreFChordsPart
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
% Nr. 14 (4. Choral, p. 50) Petrus, der nicht denkt zurück, **A-Dur**, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalG = {
  \key a \major
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
  cs4 b a b cs d e2\fermata
  fs4 e d cs8(b) b2 a\fermata
  cs4 e d cs b a gs2\fermata
  a4 b cs cs8(d16 e) d2 cs\fermata
  cs8(b) cs(d) e4 d cs b cs2\fermata
  b4 b cs8(ds) e4 e(ds) e2\fermata
  e4 cs fs4. e8 d4 cs8(b) b2\fermata
  cs4 cs8(d16 e) d4 cs8(b) b2 a\fermata
  \bar "|."
}

scoreGVerse = \lyricmode {
  % Lyrics follow here.
  Pe -- trus, der nicht denkt zu -- rück,
  sei -- nen Gott ver -- nei -- net,
  der doch auf ein erns -- ten Blick
  bit -- ter -- li -- chen wei -- net,
  Je -- su, bli -- cke mich auch an,
  wenn ich nicht will bü -- ßen,
  wenn ich Bö -- ses hab ge -- tan,
  rüh -- re mein Ge -- wis -- sen.
}

scoreGBcMusic = \relative c {
  \globalG
  % Music follows here.
  d4 es fs gs a fs cs2\fermata
  d4 e fs8(gs) a4 e2 a,\fermata
  a'4 gs fs8(gs) a4 es fs cs2\fermata
  fs4 gs a as b2 es,\fermata
  fs8(gs a b) cs4 fs,8(gs) a4 e a,2\fermata
  a'4 gs g fs8(e) as,4(b) e,2\fermata
  cs'4 fs d g e fs b,2\fermata
  fs'8(e) d(cs) b4 cs8(d) e2 a,\fermata
  \bar "|."
}

scoreGBcFigures = \figuremode {
  \globalG
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  s4 <6 5> s <6> s <6> <6 5!>2\fermata
  s4 <6> <6 5>8 <6 5> s4 <4> <3> s2\fermata
  s4 <6> <6> s <7> s <_+>2\fermata
  s4 <6> s <6> s2 <6 5>\fermata
  s4 <6> s <6> s s s2\fermata
  <4+ 2>4 <6> <4 2> s8 <_!> <6 5>4 <_+> s2\fermata
  s4 s <7!> <7>8 <6> <7>4 <_+> s2\fermata
  <3>8 s s <6> <6>4 <6> <4> <3> s2\fermata
  \bar "|."
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
  \header {
    title = "Petrus, der nicht denkt zurück"
    subsubtitle = "Choräle, Nr. 14, 4. Choral, A-Dur"
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
% Nr. 14 (4. Choral, p. 50) Petrus, der nicht denkt zurück, **A-Dur**, Chor
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
  a'4 gs fs e e fs g2\fermata
  fs4 gs a8(b) e,(a) a4(gs) e2\fermata
  a4 b a a gs fs es2\fermata
  fs4 e e fs fs8(a gs fs) gs2\fermata
  fs4 fs cs8(gs') a(b) a4 gs a2\fermata
  fs4 e a b cs(b8 a) gs2\fermata
  gs4 a a g g8(fs) e4 d2\fermata
  fs4 e8(fs) gs4 a a8(fs gs4) e2\fermata
}

scoreHTenor = \relative c' {
  \globalH
  % Music follows here.
  fs4 cs cs b a a a2\fermata
  d4 cs cs8(b) cs(d) e4(d8 cs) cs2\fermata
  e4 e fs e b a gs2\fermata
  a4 b cs cs8(d16 e) d2 cs\fermata
  cs8(b) cs(d) e4 d cs b cs2\fermata
  b4 b cs8(ds) e4 e(ds) e2\fermata
  e4 cs fs4. e8 d4 cs8(d) d2\fermata
  cs4 cs8(d16 e) d4 cs8(b) b2 a\fermata
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

scoreHChordsPart = \new ChordNames \scoreHChordNames

\bookpart {
  \header {
    title = "Petrus, der nicht denkt zurück"
    subsubtitle = "Choräle, Nr. 14, 4. Choral, A-Dur"
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
% Nr. 15 (5. Choral, p. 51) Christus, der uns selig macht, **A-Dur**, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalI = {
  \key a \minor
  %   \numericTimeSignature
  \time 4/4
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
  e4 e e e d c b2\fermata
  c4 d e e d(c) b2\fermata
  a4 b c a a8(g) f4 e2\fermata
  f4 g a a g(f) e2\fermata
  a4 gs a b c b a2\fermata
  c4 d e e d(c) b2\fermata
  a4 b c a a8(g) f4 e2\fermata
  f4 g a a g(f) e2(e1)\fermata
  \bar "|."
}

scoreIVerse = \lyricmode {
  % Lyrics follow here.
  Chris -- tus, der uns se -- lig macht,
  kein Bös' hat be -- gan -- gen,
  der ward für uns in der Nacht
  als ein Dieb ge -- fan -- gen,
  ge -- führt für gott -- lo -- se Leut
  und fälsch -- lich ver -- kla -- get,
  ver -- lacht, ver -- höhnt und ver -- speit,
  wie denn die Schrift sa -- get.
}

scoreIBcMusic = \relative c {
  \globalI
  % Music follows here.
  e4 e a g f e8(d) e2\fermata
  a4 g cs, cs d(a) e'2\fermata
  a4 gs a f cs d a2\fermata
  d4 c f, fs g(gs) a2\fermata
  f'4 e8(d) c4 b a b8(c) d2\fermata
  ef4 d cs d8(e) f(g) a4 g2\fermata
  fs4 gs a a,8(b) cs4 d a2\fermata
  d4 c f,8(g) a(b) c4(d) e2(e1)\fermata
  \bar "|."
}

scoreIBcFigures = \figuremode {
  \globalI
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  <_+>4 s s <6> <6> <6 4> <5 _+>2\fermata
  <5>8 <6/> <_->4 <7- 5> <6 5> <_!> s <_+>2\fermata
  s4 <6> <5> <5>8 <6> <6>4 s <_+>2\fermata
  s4 s <7- 5> <6 5> <_-> <7 5> <_+>2\fermata
  <6>4 <_+> <6> <5/>8 <6/> s4 <6!> <_+>2\fermata
  <6>4 <6- 4> <6 5> <9> <6> <5>8 <6> s2\fermata
  <6>4 <6 5> s s <6 5> s <_+>2\fermata
  s4 s s <6> s s <7 _+> <6 4> <5 _+>1\fermata
  \bar "|."
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
  \header {
    title = "Christus, der uns selig macht"
    subsubtitle = "Choräle, Nr. 15, 5. Choral, A-Dur"
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
% Nr. 15 (5. Choral, p. 51) Christus, der uns selig macht, **A-Dur**, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalJ = \globalI

scoreJSoprano = \relative c'' {
  \globalJ
  % Music follows here.
  \scoreIMelody
}

scoreJAlto = \relative c' {
  \globalJ
  % Music follows here.
  gs4 gs a b a a gs2\fermata
  a4 bf bf a a2 gs\fermata
  c4 b a8(b) c(d) e4 d cs2\fermata
  d4 e ef d d2 cs\fermata
  d4 e e fs8(gs) a4 g fs2\fermata
  g4 g g f f(e8 fs) g2\fermata
  a4 e e e a, d cs2\fermata
  d4 e f f e( d2 c4) b1\fermata
  \bar "|."
}

scoreJTenor = \relative c' {
  \globalJ
  % Music follows here.
  b4 b c b8(c) d(e) f4 b,2\fermata
  a4 bf bf a a2 gs\fermata
  c4 b a8(b) c(d) e4 a, a2\fermata
  a4 c c c bf8(c d4) a2\fermata
  a4 b c d e d d2\fermata
  c4 bf a a a8(b c4) d2\fermata
  d8(c) b4 a8(b) c(d) e4 a, a2\fermata
  a4 c c c c8(b a4 gs a) gs1\fermata
  \bar "|."
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
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "bass" \scoreJVerse
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
  \header {
    title = "Christus, der uns selig macht"
    subsubtitle = "Choräle, Nr. 15, 5. Choral, A-Dur"
    instrument = "Chor und B.C."
  }
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
% Nr. 17 (6. Choral, p. 63) Ach großer König, groß zu allen Zeiten, **A-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalK = {
  \key a \minor
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
  \repeat volta 2 {
    \partial 4
    a4
    a a gs e a b c c d(c16(b c8)) b4\fermata
    b c d8(e16 f) e4 c f f e8(d) c(d) d2 c4\fermata
    c b a g8(fs) e(fs) g4 g  a g f2 e4\fermata
    e' d c8(b) b2 a2.\fermata
  }
}

scoreKVerse = \lyricmode {
  % Lyrics follow here.
  \set stanza = "1."
  Ach, gro -- ßer Kö -- nig, groß zu al -- len Zei -- ten,
  wie kann ich gnug -- sam die -- se Treu aus -- brei -- ten,
  keins Men -- schen Her -- ze mag in -- des aus -- den -- ken,
  was dir zu schen -- ken.
}

scoreKVerseTwo = \lyricmode {
  % Lyrics follow here.
  \set stanza = "2."
  Ich kann's mit mei -- nen Sin -- nen nicht er -- rei -- chen,
  wo -- mit doch dein Er -- bar -- men zu ver -- glei -- chen,
  wie kann ich dir denn dei -- ne Lie -- bes -- ta -- ten
  im Werk er -- stat -- ten?
}

scoreKBcMusic = \relative c {
  \globalK
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    a'4
    a,8(b) c(d) e(f) e(d) c(d) c(b) a(b) a(g) f(e) f(d) e4\fermata
    e' a8(g) f(g) c,(d) e(f) d(e) f(g) a(b) a(g) f(e) f(g) c,4\fermata
    a' ds,8(e) fs(d) e(fs) g(fs) e(f) e(d) cs(a) b(cs) d(e) f(g) a4\fermata
    a8(g) fs(gs) a(f) d(b) e4 a,2.\fermata
  }
}

scoreKBcFigures = \figuremode {
  \globalK
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \repeat volta 2 {
    \partial 4
    s4
    s <6> <_+> s <6> <7 5/> s s <6> <5> <_+>\fermata
    s s <6 4 2> s <6> s <6> s s <6 5> <6 4 2> s\fermata
    s <6 5> <9>8 <7 5> s4 <6> s <6/ 5-> <6> <6 4> <9> <6> <_+>\fermata
    <_!> <6 5>8 <6 5> s <6 4 3> <6 5>4 <8 _+>8 <7> <_+>2.\fermata
  }
}

scoreKLeadSheetPart = <<
  \new ChordNames \scoreKChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreKMelody }
  \addlyrics { <<\scoreKVerse \new Lyrics {\scoreKVerseTwo}>> }
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
    title = "Ach großer König, groß zu allen Zeiten"
    subsubtitle = "Choräle, Nr. 17 (6. Choral), a-Moll"
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
% Nr. 17 (6. Choral, p. 63) Ach großer König, groß zu allen Zeiten, **A-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalL = \globalK

scoreLSoprano = \relative c'' {
  \globalL
  % Music follows here.
  \scoreKMelody
}

scoreLAlto = \relative c' {
  \globalL
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    c8(d)
    e4 e e b e8(fs) gs4 a a a2 gs4\fermata
    gs a g g f a a a e a(g) g\fermata
    a a8(g) g(fs) e4 e e8(d) cs(d) e4 e e(d) cs\fermata
    a' a8(b) e,(d) f4(e8 d) cs2.
  }
}

scoreLTenor = \relative c' {
  \globalL
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    a8(b)
    c4 c b gs a d e e f(a,) e'\fermata
    e e b c a d d c c c(b) e\fermata
    e fs8(e) c4 b b b bf a a a2 a4\fermata
    c c8(b) a4 a(gs) e2.\fermata
  }
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

scoreLVerseTwo = \lyricmode {
  % Lyrics follow here.
  \scoreKVerseTwo
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
  \scoreKBcMusic
}

scoreLBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \scoreKBcFigures
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
    } \lyricsto "soprano" {<<\scoreLVerse \new Lyrics {\scoreLVerseTwo}>>}
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreLAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" {<<\scoreLVerse \new Lyrics {\scoreLVerseTwo}>>}
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
    } \lyricsto "tenor" {<<\scoreLVerse \new Lyrics {\scoreLVerseTwo}>>}
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
    } \lyricsto "bass" {<<\scoreLVerse \new Lyrics {\scoreLVerseTwo}>>}
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
  \header {
    title = "Ach großer König, groß zu allen Zeiten"
    subsubtitle = "Choräle, Nr. 17 (6. Choral), a-Moll"
    instrument = "Chor und B.C."
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
% Nr. 22 (7. Choral, p. 93) Durch dein Gefängnis, Gottes Sohn, **E-Dur**, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalM = {
  \key e \major
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
  \repeat volta 2 {
    \partial 4
    e,8(fs)
    gs4 a b b a gs fs\fermata
    b cs ds e ds8(cs) cs2 b4
  }
  \partial 4
  b e ds8(cs) cs4 b a gs8(fs) fs4\fermata
  b a gs fs8(gs) a4 gs fs e\fermata
  \bar "|."
}

scoreMVerse = \lyricmode {
  % Lyrics follow here.
  Durch dein Ge -- fäng -- nis, Got -- tes Sohn,
  muß uns die Frei -- heit kom -- men,
}

scoreMVerseB = \lyricmode {
  % Lyrics follow here.
  dein Ker -- ker ist der Gna -- den -- thron,
  die Frei -- statt al -- ler From -- men;
}

scoreMVerseC = \lyricmode {
  % Lyrics follow here.
  denn gingst du nicht die Knecht -- schaft ein,
  müßt uns -- re Knecht -- schaft ewig sein.
}

scoreMBcMusic = \relative c {
  \globalM
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e4
    e cs gs cs fs, gs8(a) b4\fermata
    b' as gs8(fs) gs(a) b4 e,(fs) b,
  }
  \partial 4
  e8(ds) cs4 gs a b cs8(ds) e4 b\fermata
  b c cs d ds e b e,\fermata
  \bar "|."
}

scoreMBcFigures = \figuremode {
  \globalM
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \repeat volta 2 {
    \partial 4
    s4
    s <6> <6 5!> <7> <7>8 <6> <6>4 s\fermata
    s <6> <5 2+> <6>8 <6 5> s4 <6 5> <_+> s
  }
  \partial 4
  s
  <5> <5> <9>8 <8> <7> <6> <6 5> <6 5> s4 s\fermata
  <6 _!> <6> <7 _+> <5>8 <6> <7! 5>4 <9>8 <8> <4> <3> s4\fermata
  \bar "|."
}

scoreMLeadSheetPart = <<
  \new ChordNames \scoreMChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreMMelody }
  \addlyrics { <<\scoreMVerse \new Lyrics{\scoreMVerseB}>> \scoreMVerseC }
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
    title = "Durch dein Gefängnis, Gottes Sohn"
    subsubtitle = "Choräle, Nr. 22, 7. Choral, E-Dur"
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
% Nr. 22 (7. Choral, p. 93) Durch dein Gefängnis, Gottes Sohn, **E-Dur**, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalN = \globalM

scoreNSoprano = \relative c'' {
  \globalN
  % Music follows here.
  \scoreMMelody
}

scoreNAlto = \relative c' {
  \globalN
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    b4
    e e e e e8(ds) e4 ds\fermata
    fs fs as b8(fs) fs(gs) gs4(as) fs
  }
  \partial 4
  gs cs b(b8)(a)a(gs) gs(fs) e4 ds\fermata
  d c b a8(b) c4 b8(e) e(ds) b4\fermata
  \bar "|."
}

scoreNTenor = \relative c' {
  \globalN
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    gs8(a)
    b4 cs d cs8(b) cs4 b b\fermata
    ds cs fs b,8(cs) ds(e) e(ds cs4) ds
  }
  \partial 4
  e gs gs gs8(fs) fs(ds) e(b) b4 b\fermata
  gs8(fs) e4 es fs fs gs8.(a16) b8(fs) gs4\fermata
  \bar "|."
}

scoreNBass = \relative c {
  \globalN
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e,4
    e' cs gs cs fs gs8(a) b4\fermata
    b as gs8(fs) gs(as) b4 e,(fs) b,
  }
  \partial 4
  e8(ds) cs4 gs a b cs8(ds) e4 b\fermata
  b c cs d ds e b e\fermata
  \bar "|."
}

scoreNVerse = \lyricmode {
  % Lyrics follow here.
  \scoreMVerse
}

scoreNVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreMVerseB
}

scoreNVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreMVerseC
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
    } \lyricsto "soprano" {<<\scoreNVerse \new Lyrics{\scoreNVerseB}>> \scoreNVerseC}
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreNAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" {<<\scoreNVerse \new Lyrics{\scoreNVerseB}>> \scoreNVerseC}
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
    } \lyricsto "tenor" {<<\scoreNVerse \new Lyrics{\scoreNVerseB}>> \scoreNVerseC}
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
    } \lyricsto "bass" {<<\scoreNVerse \new Lyrics{\scoreNVerseB}>> \scoreNVerseC}
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
  \header {
    title = "Durch dein Gefängnis, Gottes Sohn"
    subsubtitle = "Choräle, Nr. 22, 7. Choral, E-Dur"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreNChoirPart
      \scoreNBassoContinuoPart
      \scoreNChordsPart
    >>
    \layout { }
    %     \midi { }
  }
  \score {
    \unfoldRepeats {
      <<
        \scoreNChoirPart
        \scoreNBassoContinuoPart
        \scoreNChordsPart
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
% Nr. 26 (8. Choral, p. 120) In meines Herzens Grunde, **Es-Dur**, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalO = {
  \key ef \major
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
  \repeat volta 2 {
    \partial 4
    ef,
    bf' bf c d ef2 ef4\fermata
    g f ef ef d ef2.
  }
  \partial 4
  ef8(f) g4 g f ef d8(c d4) bf\fermata
  d ef d c c bf2.\fermata
  bf4 g8(af) bf4 c bf bf(af) g\fermata
  bf af g f f ef2.\fermata
  \bar "|."
}

scoreOVerse = \lyricmode {
  % Lyrics follow here.
  In mei -- nes Her -- zens Grun -- de
  dein Nam und Kreuz al -- lein
}

scoreOVerseB = \lyricmode {
  % Lyrics follow here.
  fun -- kelt all Zeit und Stun -- de;
  drauf kann ich fröh -- lich sein.
}

scoreOVerseC = \lyricmode {
  % Lyrics follow here.
  Er -- schein mir in dem Bil -- de
  zu Trost in mei -- ner Not,
  wie du, Herr Christ, so mil -- de
  dich hast ge -- blut' zu Tod.
}

scoreOBcMusic = \relative c {
  \globalO
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    ef4
    g ef af b, c2 c4\fermata
    c' af f bf bf, ef2.
  }
  \partial 4
  ef4 ef'8(d) c(bf) a4 f bf2 bf,4\fermata
  af' g f ef f bf,2.\fermata
  d4 ef df c8(d) e4 f2 c4\fermata
  df c bf a bf ef,2.\fermata
  \bar "|."
}

scoreOBcFigures = \figuremode {
  \globalO
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \repeat volta 2 {
    \partial 4
    s4 <6> s s <6> s2 s4\fermata
    s <6> <7 5> <6 4> <5 3> s2.
  }
  \partial 4
  s4 s s <6> <7 _!> s2 s4\fermata
  <6 4 2> <6> <6 4> <6 5> <_!> s2.\fermata
  <6>4 s <6 4 2> <6> <7- 5> <9 4> <8 3> s\fermata
  <6 4 2> <6> <6 4> <6 5> <8>8 <7> s2.\fermata
  \bar "|."
}

scoreOLeadSheetPart = <<
  \new ChordNames \scoreOChordNames
  \new Staff \with {
    \consists "Ambitus_engraver"
  } { \scoreOMelody }
  \addlyrics { <<\scoreOVerse \new Lyrics{\scoreOVerseB}>> \scoreOVerseC }
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
    title = "In meines Herzens Grunde"
    subsubtitle = "Choräle, Nr. 26, 8. Choral, Es-Dur"
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
% Nr. 26 (8. Choral, p. 120) In meines Herzens Grunde, **Es-Dur**, Chor
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
  \repeat volta 2 {
    \partial 4
    bf4
    ef g af g g2 g4\fermata
    c c af g f g2.
  }
  \partial 4
  g8(af) bf4 c c a d8(c d4) bf\fermata
  d ef d c c bf2.\fermata
  bf4 g8(af) bf4 c bf bf(af) g\fermata
  bf af g f f ef2.\fermata
  \bar "|."
}

scorePTenor = \relative c' {
  \globalP
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    g4
    bf ef ef d c2 c4\fermata
    ef c c bf bf bf2.
  }
  \partial 4
  bf4
  ef ef f f f8(ef f4) d\fermata
  f ef f g f8(ef) d2.\fermata
  bf4 bf ef ef df c2 c4\fermata
  bf c d ef d8(c) bf2.\fermata
  \bar "|."
}

scorePBass = \relative c {
  \globalP
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    ef4
    g ef af b, c2 c4\fermata
    c' af f bf bf, ef2.
  }
  \partial 4
  ef4 ef'8(d) c(bf) a4 f bf2 bf,4\fermata
  af' g f ef f bf,2.\fermata
  d4 ef df c8(d) e4 f2 c4\fermata
  df c bf a bf ef2.\fermata
  \bar "|."
}

scorePVerse = \lyricmode {
  % Lyrics follow here.
  \scoreOVerse
}

scorePVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreOVerseB
}

scorePVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreOVerseC
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
    } \lyricsto "soprano" {<<\scorePVerse \new Lyrics{\scorePVerseB}>> \scorePVerseC}
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scorePAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" {<<\scorePVerse \new Lyrics{\scorePVerseB}>> \scorePVerseC}
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
    } \lyricsto "tenor" {<<\scorePVerse \new Lyrics{\scorePVerseB}>> \scorePVerseC}
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
    } \lyricsto "bass" {<<\scorePVerse \new Lyrics{\scorePVerseB}>> \scorePVerseC}
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
  \header {
    title = "In meines Herzens Grunde"
    subsubtitle = "Choräle, Nr. 26, 8. Choral, Es-Dur"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scorePChoirPart
      \scorePBassoContinuoPart
      \scorePChordsPart
    >>
    \layout { }
    %     \midi { }
  }
  \score {
    \unfoldRepeats {
      <<
        \scorePChoirPart
        \scorePBassoContinuoPart
        \scorePChordsPart
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
% Nr. 28 (9. Choral, p. 130) Er nahm alles wohl in acht, **A-Dur**, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalQ = {
  \key a \major
  %   \numericTimeSignature
  \time 4/4
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
  cs4 b a b cs ds e2\fermata
  fs4 e d cs8(b) b2 a\fermata
  cs4 e d cs b a gs2\fermata
  a4 b cs cs8(d16 e) d2 cs\fermata
  cs4 d e d cs4 b cs2\fermata
  b4 b cs8(ds) e4 e(ds) e2\fermata
  e4 cs fs4. e8 d4 cs8(b) b2\fermata
  cs4 e d cs8(b) b2 a\fermata
  \bar "|."
}

scoreQVerse = \lyricmode {
  % Lyrics follow here.
  Er nahm al -- les wohl in acht
  in der letz -- ten Stun -- de,
  sei -- ne Mut -- ter noch be -- dacht,
  setzt ihr ein Vor -- mun -- de.
  o Mensch ma -- che Rich -- tig -- keit,
  Gott und Men -- schen lie -- be,
  stirb dar -- auf ohn al -- les Leid,
  und dich nicht be -- trü -- be.
}

scoreQBcMusic = \relative c {
  \globalQ
  % Music follows here.
  a'4 e cs e a, b e2\fermata
  b'4 gs e a d,(e) a,2\fermata
  a'4 gs fs e d cs8(b) cs2\fermata
  fs4 e a gs fs(gs) a2\fermata
  a4 fs cs d e e a,2\fermata
  e'8(fs) gs4 fs e a(b) e,2\fermata
  g4 a d, cs b a e'2\fermata
  a4 gs fs e ds(e) a,2\fermata
}

scoreQBcFigures = \figuremode {
  \globalQ
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  s4 s <6> s s <7 _+> s2\fermata
  s4 <6> <7> s <6 5> s s2\fermata
  s4 <6> <6> <6> <6 3> <6 4 2> <_+>2\fermata
  s4 s s <6> <6> <6 5> s2\fermata
  s4 <6> <6> <6 5> <6 4> <5 3> s2\fermata
  s4 <6> <5>8 <6/> s4 <6 5> <_+> s2\fermata
  <6 _->4 <7!> <5>8 <6!> <6>4 <7>8 <6> s4 s2\fermata
  s4 <6> <6> <6 4 2> <6 5> <8>8 <7> s2\fermata
  \bar "|."
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
  \header {
    title = "Er nahm alles wohl in acht"
    subsubtitle = "Choräle, Nr. 28, 9. Choral, A-Dur"
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
% Nr. 28 (9. Choral, p. 130) Er nahm alles wohl in acht, **A-Dur**, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalR = \globalQ

scoreRSoprano = \relative c'' {
  \globalR
  % Music follows here.
  \scoreQMelody
}

scoreRAlto = \relative c' {
  \globalR
  % Music follows here.
  a'4 gs a gs a8(gs) fs4 gs2\fermata
  b4 b gs a a(gs) e2\fermata
  a4 b a gs fs fs es2\fermata
  cs4 e e e a(b) a2\fermata
  a4 a a a a gs a2\fermata
  gs4 e a gs fs2 gs\fermata
  g4 g fs8(gs) a4 a8(gs) a4 gs2\fermata
  a4 b a a a(gs) e2\fermata
  \bar "|."
}

scoreRTenor = \relative c' {
  \globalR
  % Music follows here.
  e4 e e e e b b2\fermata
  d4 b e e fs(e8 d) cs2\fermata
  e4 e fs cs d d g,2\fermata
  fs4 gs a b fs'(e) e2\fermata
  e4 d cs b cs8(d) e4 e2\fermata
  e4 b a b cs(b) b2\fermata
  bf4 a a8(b) cs4 d e e2\fermata
  e4 e fs fs fs(e8 d) cs2\fermata
  \bar "|."
}

scoreRBass = \relative c {
  \globalR
  % Music follows here.
  \scoreQBcMusic
}

scoreRVerse = \lyricmode {
  % Lyrics follow here.
  \scoreQVerse
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
  \globalR
  % Music follows here.
  \scoreQBcMusic
}

scoreRBcFigures = \figuremode {
  \globalR
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \scoreQBcFigures
}

scoreRChordNames = \chordmode {
  \globalR
  \germanChords
  % Chords follow here.
  \scoreQChordNames
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
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "bass" \scoreRVerse
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
  \header {
    title = "Er nahm alles wohl in acht"
    subsubtitle = "Choräle, Nr. 28, 9. Choral, A-Dur"
    instrument = "Chor und B.C."
  }
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
% Nr. 37 (10. Choral, p. 151) O hilf, Christe, Gottes Sohn, **A-Dur**, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalS = {
  \key c \minor
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
  f4 f f f ef df c2\fermata
  df4 ef f f ef(df) c2\fermata
  bf4 c df bf bf8(af) gf4 f2\fermata
  gf4 af bf bf af(gf) f2\fermata
  bf4 a bf c df c8(bf) bf2\fermata
  df4 ef f f ef(df8 c) c2\fermata
  bf4 c df8(c) bf4 bf8(af) gf4 f2\fermata
  gf4 af bf bf af(gf) f2(f1)
  \bar "|."
}

scoreSVerse = \lyricmode {
  % Lyrics follow here.
  O hilf, Chris -- te, Got -- tes Sohn,
  durch dein bit -- ter Lei -- den,
  daß wir dir stets un -- ter -- tan
  all Un -- tu -- gend mei -- den,
  dei -- nen Tod und sein Ur -- sach
  frucht -- bar -- lich be -- den -- ken,
  da -- für, wie -- wohl arm und schwach,
  dir Dan -- kop -- fer schen -- ken.
}

scoreSBcMusic = \relative c {
  \globalS
  % Music follows here.
  f4 f bf af gf f8(ef) f2\fermata
  bf4 gf d d ef(bf) f'2\fermata
  bf4 a bf gf d ef bf2\fermata
  ef4 cs g g af(a) bf2\fermata
  bf4 c df ef f df gf2\fermata
  f4 af df8(c) bf(af) gf4(f8 ef) f2\fermata
  df4 f bf8(af) gf4 d ef bf2\fermata
  ef4 df gf,8(af) bf(cs) df4(ef) f2(f1)
  \bar "|."
}

scoreSBcFigures = \figuremode {
  \globalS
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  <_!>4 s <_-> <6> <6> <6- 4 2b> <_!>2\fermata
  s4 <6> <7- 5> <6 5> <_-> s <_!>2\fermata
  s4 <6> s <5->8 <6> <6> <5> <_->4 <_!>2\fermata
  <_->4 <6> <7- 5> s <_-> <7- 5> <_!>2\fermata
  <_->4 <6!> <6> <6 5> <6- 4> <7 5> s2\fermata
  <6->4 s s <5> <6> <6- 4 2-> <_!>2\fermata
  <6>4 <_!> s <6> <6>8 <5> <_->4 <_!>2\fermata
  s4 s s <6-> s s <7 _!> <6- 4> <5 _!>1
  \bar "|."
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
  \header {
    title = "O hilf, Christe, Gottes Sohn"
    subsubtitle = "Choräle, Nr. 37, 10. Choral, A-Dur"
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
% Nr. 37 (10. Choral, p. 151) O hilf, Christe, Gottes Sohn, **A-Dur**, Chor
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
  a'4 a bf c bf bf a2\fermata
  f4 gf af af gf(f) f2\fermata
  f4 f f gf f ef d2\fermata
  ef4 ef ff ff ef2 d\fermata
  f4 ef f gf f f gf2\fermata
  af4 af af bf bf2 a\fermata
  f4 f f gf f ef d2\fermata
  ef4 f gf gf f(ef2 df4) c1
  \bar "|."
}

scoreTTenor = \relative c' {
  \globalT
  % Music follows here.
  c4 c df c8(df) ef(f) gf4 c,2\fermata
  bf4 bf cf bf bf2 a\fermata
  df4 c  bf8(c) df(ef) f(bf,) bf4 bf2\fermata
  bf4 cf df df cf8(df ef4) bf2\fermata
  df4 c bf bf bf8(af) df4 df2\fermata
  f4 c df df ef8(f gf4) f2\fermata
  bf,4 a bf8(c) df(ef) f(bf,) bf4 bf2\fermata
  bf4 df df df df8(cf bf4 a bf) a1
  \bar "|."
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

scoreTChordsPart = \new ChordNames \scoreTChordNames

\bookpart {
  \header {
    title = "O hilf, Christe, Gottes Sohn"
    subsubtitle = "Choräle, Nr. 37, 10. Choral, A-Dur"
    instrument = "C.F. (und B.C.)"
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalU = {
  \key ef \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreUChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreUMelody = \relative c'' {
  \globalU
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    ef4
    d c bf af8(g) c4 c bf\fermata
    ef d c bf af8(g) c4 c bf\fermata
    bf c d ef8(f) g4 f(ef2 d4) ef2.
  }
  \partial 4
  ef4
  ef f ef8(d) c(d) ef4 ef d\fermata
  d ef f ef8(d) c(d) ef(g) f4 d\fermata
  g g g f ef ef d ef\fermata
  d ef d c bf bf a bf\fermata
  g' f ef d\fermata
  g af8(g) f4 g ef ef d ef\fermata
  ef ef ef f ef ef2. d4 ef2.\fermata
  \bar "|."
}

scoreUVerse = \lyricmode {
  % Lyrics follow here.
  Ach Herr, lass dein lieb En -- ge -- lein
  am letz -- ten End die See -- le mein
  in A -- bra -- hams Schoß tra -- gen,
}

scoreUVerseB = \lyricmode {
  % Lyrics follow here.
  den Leib in sein'm Schlaf -- käm -- mer -- lein
  gar sanft, ohn ein -- ge Qual und Pein,
  ruhn bis am jüngs -- ten Ta -- ge.
}

scoreUVerseC = \lyricmode {
  % Lyrics follow here.
  Als -- denn vom Tod er -- we -- cke mich,
  dass mei -- ne Au -- gen se -- hen dich
  in al -- ler Freud, o Got -- tes Sohn,
  mein Hei -- land und Ge -- na -- den -- thron,
  Herr Je -- su Christ, er -- hö -- re mich, er -- hö -- re mich,
  ich will dich prei -- sen e -- wig -- lich.
}

% scoreUVerse = \lyricmode {
%   % Lyrics follow here.
%
% }

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
  \addlyrics { <<\scoreUVerse \new Lyrics {\scoreUVerseB }>> \scoreUVerseC}
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
    title = "Ach Herr, laß dein lieb Engelein"
    subsubtitle = "Choräle, Nr. 40, 11. Choral, Es-Dur"
    instrument = "C.F. (und BC)"
  }
  \score {
    <<
      \scoreULeadSheetPart
      %       \scoreUBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalV = \globalU

scoreVSoprano = \relative c'' {
  \globalV
  % Music follows here.
  \scoreUMelody
}

scoreVAlto = \relative c' {
  \globalV
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    bf'4
    bf g g f8(ef) ef4 af g\fermata
    g g8(f) ef(f) g(f) ef(d) ef(f) f4 g\fermata
    g af8(c) bf(af) g(f) ef4 f2(g4 af) g2.
  }
  \partial 4
  g4
  af af g4. g8
  f(g) a4 bf\fermata
  bf bf af g af bf c c\fermata
  c bf c c af g f g\fermata
  af g f8(bf) g4 g g f f\fermata
  ef f8(g16 af) g8(a) b4\fermata
  c c b8(c) g4 g gf8(f) f4 g\fermata
  g af af af g f2 f g2.\fermata
}

scoreVTenor = \relative c' {
  \globalV
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    g'4
    f ef d df c8(bf) c(d) ef4\fermata
    g,8(af) bf4 c8(d) ef4 af,8(bf) c(ef) d(c) d4\fermata
    ef ef8(af) g(f) ef(bf) df4 c2(bf) bf2.
  }
  \partial 4
  bf4
  c c c8(d) ef(d) c4 f f\fermata
  f bf, bf bf f' ef8(d) c4 f\fermata
  ef ef ef f f bf, bf bf\fermata
  f' bf,8(c) d4 ef d ef8(d) c4 d\fermata
  bf8(c) d4 ef8(c) g'4\fermata
  c, f8(ef) d(c) d4 c c bf bf\fermata
  df c8(d) ef4 bf bf c2 bf bf2.\fermata
  \bar "|."
}

scoreVBass = \relative c {
  \globalV
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    ef4
    bf' c g bf af af, ef'\fermata
    c g' af ef8(d) c(bf) af4 af' g\fermata
    ef af bf c8(d,) ef4 af,(a bf2) ef2.
  }
  \partial 4
  ef4 af8(g) f4 c c'8(bf) a(g) f4 bf\fermata
  bf8(af) g(f) ef(d) c4 f g a bf\fermata
  ef, ef'8(d) c(bf) af(bf) c(af) bf4 bf, ef\fermata
  f g8(a) bf(g) ef(f) g(ef) c4 f bf,\fermata
  ef bf'4 c g\fermata
  e f8(g) af4 b, c a' bf ef,\fermata
  ef af8(bf) c4 d, ef a,2 bf ef,2.\fermata
  \bar "|."
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
  \globalV
  % Music follows here.
  \scoreVBass
}

scoreVBcFigures = \figuremode {
  \globalV
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreVChordNames = \chordmode {
  \globalV
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
    } \lyricsto "soprano" {<<\scoreVVerse \new Lyrics {\scoreVVerseB}>> \scoreVVerseC}
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \scoreVAlto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" {<<\scoreVVerse \new Lyrics {\scoreVVerseB}>> \scoreVVerseC}
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
    } \lyricsto "tenor" {<<\scoreVVerse \new Lyrics {\scoreVVerseB}>> \scoreVVerseC}
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
    } \lyricsto "bass" {<<\scoreVVerse \new Lyrics {\scoreVVerseB}>> \scoreVVerseC}
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
  \header {
    title = "Ach Herr, laß dein lieb Engelein"
    subsubtitle = "Choräle, Nr. 40, 11. Choral, Es-Dur"
    instrument = "Chor und BC"
  }
  \score {
    <<
      \scoreVChoirPart
      \scoreVBassoContinuoPart
      \scoreVChordsPart
    >>
    \layout { }
    %     \midi { }
  }
  \score {
    \unfoldRepeats {
      <<
        \scoreVChoirPart
        \scoreVBassoContinuoPart
        \scoreVChordsPart
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

scoreXChordsPart = \new ChordNames \scoreXChordNames

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

scoreZBcMusic = \relative c {
  \global
  % Music follows here.

}

scoreZBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreZChordNames = \chordmode {
  \global
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
  \score {
    <<
      \scoreZChoirPart
      \scoreZBassoContinuoPart
      \scoreZChordsPart
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

