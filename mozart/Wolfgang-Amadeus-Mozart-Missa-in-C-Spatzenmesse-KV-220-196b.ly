\version "2.22.2"
\language "english"

\header {
  dedication = "Dicata Deo"
  title = "Missa in C"
  subtitle = "Kyrie"
  subsubtitle = "Spatzenmesse"
  instrument = "Chor"
  composer = "Wolfgang Amadeus Mozart"
  arranger = "gesetzt: Sven Buschke"
  poet = "Text: Liturgie"
  meter = "Allegro"
  piece = "Entstanden 1775 / 1776"
  opus = "KV 220 (196b)"
  copyright = "© Satz: Sven Buschke, 10. Oktober 2022"
  tagline = "Rock me Amadeus"
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key c \major
  \time 4/4
  \tempo "Allegro" 4=100
}

scoreATrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.
  
}

scoreATimpani = \relative c {
  \global
  % Music follows here.
  
}

scoreATromboneI = \relative c {
  \global
  % Music follows here.
  
}

scoreATromboneII = \relative c {
  \global
  % Music follows here.
  
}

scoreATromboneIII = \relative c {
  \global
  % Music follows here.
  
}

scoreAViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreAViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  R1*5
  c4 b8.( d16) c4 r8 e
  c4.( d8) c4 r8 c
  c4.( d8) c4 r8 e
  e d r d c4 f8 d
  c4( e) d r8 d16( b)
  e4 c r8 c b a
  g d' e e d d r4
  r1
  r4 r8 b a g e'( d)
  d4 r r2
  r1
  r4 r8 c a a a( b)
  a bf4 a8 r d4 e8
  r d c4 b r
  c b8.( d16) c4 r8 e
  c4.( d8) c4 r8 c
  c4.( d8) c4 r8 e
  e d r d c4 f8 d
  c4 g r8 g d'16( c b d)
  c4 r r8 e8, b'16( a g b)
  a4 r r8 c c16( d) c( b)
  c8. b32 c a8 c c b r4
  r e2( d4)
  c r8 c c4.( d8)
  c4 e2(d4)
  c4 r8 c c4.( d8)
  c e4 d8 r d4 c8
  r c c4 b r8s d16 d
  d8 c c( b) c4 r
  c4 b8.( d16) c4 r8 c
  c4.( d8) c4 r
  c d c r8 c16 c
  c8 c b4 c r
  \bar "|."
}

scoreABass = \relative c {
  \global
  % Music follows here.
  
}

scoreASopranoVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreAAltoVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreATenorVerse = \lyricmode {
  % Lyrics follow here.
  Ky -- ri -- e e -- lei -- son.
  Ky -- ri -- e e -- lei -- son,  e -- lei -- son.
  Chri -- ste e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son.  
}

scoreABassVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreAPianoReduction = \new PianoStaff \with {
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
      \scoreASoprano \\
      \scoreAAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreATenor \\
      \scoreABass
    >>
  }
>>

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

scoreABcMusic = \relative c {
  \global
  % Music follows here.
  c4 g' a c8. e,16
  f8 g a b
}

scoreABcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  <6 4>
}

scoreAFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreATrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  midiInstrument = "trumpet"
} \scoreATrumpetBb

scoreATimpaniPart = \new Staff \with {
  instrumentName = "Pauken"
  midiInstrument = "timpani"
} { \clef bass \scoreATimpani }

scoreATromboneIPart = \new Staff \with {
  instrumentName = "Posaune I"
  midiInstrument = "trombone"
} { \clef bass \scoreATromboneI }

scoreATromboneIIPart = \new Staff \with {
  instrumentName = "Posaune II"
  midiInstrument = "trombone"
} { \clef bass \scoreATromboneII }

scoreATromboneIIIPart = \new Staff \with {
  instrumentName = "Posaune III"
  midiInstrument = "trombone"
} { \clef bass \scoreATromboneIII }

scoreAViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  midiInstrument = "violin"
} \scoreAViolinI

scoreAViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  midiInstrument = "violin"
} \scoreAViolinII

scoreAChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      \consists "Ambitus_engraver"
    } { \scoreASoprano }
    \addlyrics { \scoreASopranoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      \consists "Ambitus_engraver"
    } { \scoreAAlto }
    \addlyrics { \scoreAAltoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreATenor }
    \addlyrics { \scoreATenorVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      \consists "Ambitus_engraver"
    } { \clef bass \scoreABass }
    \addlyrics { \scoreABassVerse }
  >>
%  \scoreAPianoReduction
>>

scoreABassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    midiInstrument = "cello"
  } { \clef bass \scoreABcMusic }
  \new FiguredBass \scoreABcFigures
>>

scoreABassFiguresPart = \new FiguredBass \scoreAFigBass

\bookpart {
  \score {
    <<
      \scoreATrumpetBbPart
      \scoreATimpaniPart
      \scoreATromboneIPart
      \scoreATromboneIIPart
      \scoreATromboneIIIPart
      \scoreAViolinIPart
      \scoreAViolinIIPart
      \scoreAChoirPart
      \scoreABassoContinuoPart
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
    \scoreARehearsalMidi "soprano" "soprano sax" \scoreASopranoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreARehearsalMidi "alto" "soprano sax" \scoreAAltoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreARehearsalMidi "tenor" "tenor sax" \scoreATenorVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreARehearsalMidi "bass" "tenor sax" \scoreABassVerse
    \midi { }
  }
}


scoreBTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.
  
}

scoreBTimpani = \relative c {
  \global
  % Music follows here.
  
}

scoreBTromboneI = \relative c {
  \global
  % Music follows here.
  
}

scoreBTromboneII = \relative c {
  \global
  % Music follows here.
  
}

scoreBTromboneIII = \relative c {
  \global
  % Music follows here.
  
}

scoreBViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreBViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreBSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  
}

scoreBSopranoVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreBAltoVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreBTenorVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreBBassVerse = \lyricmode {
  % Lyrics follow here.
  
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

scoreBBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreBBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreBFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreBTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  midiInstrument = "trumpet"
} \scoreBTrumpetBb

scoreBTimpaniPart = \new Staff \with {
  instrumentName = "Pauken"
  midiInstrument = "timpani"
} { \clef bass \scoreBTimpani }

scoreBTromboneIPart = \new Staff \with {
  instrumentName = "Posaune I"
  midiInstrument = "trombone"
} { \clef bass \scoreBTromboneI }

scoreBTromboneIIPart = \new Staff \with {
  instrumentName = "Posaune II"
  midiInstrument = "trombone"
} { \clef bass \scoreBTromboneII }

scoreBTromboneIIIPart = \new Staff \with {
  instrumentName = "Posaune III"
  midiInstrument = "trombone"
} { \clef bass \scoreBTromboneIII }

scoreBViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  midiInstrument = "violin"
} \scoreBViolinI

scoreBViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  midiInstrument = "violin"
} \scoreBViolinII

scoreBChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      \consists "Ambitus_engraver"
    } { \scoreBSoprano }
    \addlyrics { \scoreBSopranoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      \consists "Ambitus_engraver"
    } { \scoreBAlto }
    \addlyrics { \scoreBAltoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreBTenor }
    \addlyrics { \scoreBTenorVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      \consists "Ambitus_engraver"
    } { \clef bass \scoreBBass }
    \addlyrics { \scoreBBassVerse }
  >>
  \scoreBPianoReduction
>>

scoreBBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    midiInstrument = "cello"
  } { \clef bass \scoreBBcMusic }
  \new FiguredBass \scoreBBcFigures
>>

scoreBBassFiguresPart = \new FiguredBass \scoreBFigBass

\bookpart {
  \score {
    <<
      \scoreBTrumpetBbPart
      \scoreBTimpaniPart
      \scoreBTromboneIPart
      \scoreBTromboneIIPart
      \scoreBTromboneIIIPart
      \scoreBViolinIPart
      \scoreBViolinIIPart
      \scoreBChoirPart
      \scoreBBassoContinuoPart
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
    \scoreBRehearsalMidi "soprano" "soprano sax" \scoreBSopranoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreBRehearsalMidi "alto" "soprano sax" \scoreBAltoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreBRehearsalMidi "tenor" "tenor sax" \scoreBTenorVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreBRehearsalMidi "bass" "tenor sax" \scoreBBassVerse
    \midi { }
  }
}


scoreCTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.
  
}

scoreCTimpani = \relative c {
  \global
  % Music follows here.
  
}

scoreCTromboneI = \relative c {
  \global
  % Music follows here.
  
}

scoreCTromboneII = \relative c {
  \global
  % Music follows here.
  
}

scoreCTromboneIII = \relative c {
  \global
  % Music follows here.
  
}

scoreCViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreCViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreCSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  
}

scoreCSopranoVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreCAltoVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreCTenorVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreCBassVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreCPianoReduction = \new PianoStaff \with {
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
      \scoreCSoprano \\
      \scoreCAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreCTenor \\
      \scoreCBass
    >>
  }
>>

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

scoreCBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreCBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreCTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  midiInstrument = "trumpet"
} \scoreCTrumpetBb

scoreCTimpaniPart = \new Staff \with {
  instrumentName = "Pauken"
  midiInstrument = "timpani"
} { \clef bass \scoreCTimpani }

scoreCTromboneIPart = \new Staff \with {
  instrumentName = "Posaune I"
  midiInstrument = "trombone"
} { \clef bass \scoreCTromboneI }

scoreCTromboneIIPart = \new Staff \with {
  instrumentName = "Posaune II"
  midiInstrument = "trombone"
} { \clef bass \scoreCTromboneII }

scoreCTromboneIIIPart = \new Staff \with {
  instrumentName = "Posaune III"
  midiInstrument = "trombone"
} { \clef bass \scoreCTromboneIII }

scoreCViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  midiInstrument = "violin"
} \scoreCViolinI

scoreCViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  midiInstrument = "violin"
} \scoreCViolinII

scoreCChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      \consists "Ambitus_engraver"
    } { \scoreCSoprano }
    \addlyrics { \scoreCSopranoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      \consists "Ambitus_engraver"
    } { \scoreCAlto }
    \addlyrics { \scoreCAltoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreCTenor }
    \addlyrics { \scoreCTenorVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      \consists "Ambitus_engraver"
    } { \clef bass \scoreCBass }
    \addlyrics { \scoreCBassVerse }
  >>
  \scoreCPianoReduction
>>

scoreCBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    midiInstrument = "cello"
  } { \clef bass \scoreCBcMusic }
  \new FiguredBass \scoreCBcFigures
>>

scoreCBassFiguresPart = \new FiguredBass \scoreCFigBass

\bookpart {
  \score {
    <<
      \scoreCTrumpetBbPart
      \scoreCTimpaniPart
      \scoreCTromboneIPart
      \scoreCTromboneIIPart
      \scoreCTromboneIIIPart
      \scoreCViolinIPart
      \scoreCViolinIIPart
      \scoreCChoirPart
      \scoreCBassoContinuoPart
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
    \scoreCRehearsalMidi "soprano" "soprano sax" \scoreCSopranoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreCRehearsalMidi "alto" "soprano sax" \scoreCAltoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreCRehearsalMidi "tenor" "tenor sax" \scoreCTenorVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreCRehearsalMidi "bass" "tenor sax" \scoreCBassVerse
    \midi { }
  }
}


scoreDTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.
  
}

scoreDTimpani = \relative c {
  \global
  % Music follows here.
  
}

scoreDTromboneI = \relative c {
  \global
  % Music follows here.
  
}

scoreDTromboneII = \relative c {
  \global
  % Music follows here.
  
}

scoreDTromboneIII = \relative c {
  \global
  % Music follows here.
  
}

scoreDViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreDViolinII = \relative c'' {
  \global
  % Music follows here.
  
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

scoreDSopranoVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreDAltoVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreDTenorVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreDBassVerse = \lyricmode {
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

scoreDBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreDBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreDFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreDTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  midiInstrument = "trumpet"
} \scoreDTrumpetBb

scoreDTimpaniPart = \new Staff \with {
  instrumentName = "Pauken"
  midiInstrument = "timpani"
} { \clef bass \scoreDTimpani }

scoreDTromboneIPart = \new Staff \with {
  instrumentName = "Posaune I"
  midiInstrument = "trombone"
} { \clef bass \scoreDTromboneI }

scoreDTromboneIIPart = \new Staff \with {
  instrumentName = "Posaune II"
  midiInstrument = "trombone"
} { \clef bass \scoreDTromboneII }

scoreDTromboneIIIPart = \new Staff \with {
  instrumentName = "Posaune III"
  midiInstrument = "trombone"
} { \clef bass \scoreDTromboneIII }

scoreDViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  midiInstrument = "violin"
} \scoreDViolinI

scoreDViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  midiInstrument = "violin"
} \scoreDViolinII

scoreDChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      \consists "Ambitus_engraver"
    } { \scoreDSoprano }
    \addlyrics { \scoreDSopranoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      \consists "Ambitus_engraver"
    } { \scoreDAlto }
    \addlyrics { \scoreDAltoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreDTenor }
    \addlyrics { \scoreDTenorVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      \consists "Ambitus_engraver"
    } { \clef bass \scoreDBass }
    \addlyrics { \scoreDBassVerse }
  >>
  \scoreDPianoReduction
>>

scoreDBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    midiInstrument = "cello"
  } { \clef bass \scoreDBcMusic }
  \new FiguredBass \scoreDBcFigures
>>

scoreDBassFiguresPart = \new FiguredBass \scoreDFigBass

\bookpart {
  \score {
    <<
      \scoreDTrumpetBbPart
      \scoreDTimpaniPart
      \scoreDTromboneIPart
      \scoreDTromboneIIPart
      \scoreDTromboneIIIPart
      \scoreDViolinIPart
      \scoreDViolinIIPart
      \scoreDChoirPart
      \scoreDBassoContinuoPart
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
    \scoreDRehearsalMidi "soprano" "soprano sax" \scoreDSopranoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreDRehearsalMidi "alto" "soprano sax" \scoreDAltoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreDRehearsalMidi "tenor" "tenor sax" \scoreDTenorVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreDRehearsalMidi "bass" "tenor sax" \scoreDBassVerse
    \midi { }
  }
}


scoreETrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.
  
}

scoreETimpani = \relative c {
  \global
  % Music follows here.
  
}

scoreETromboneI = \relative c {
  \global
  % Music follows here.
  
}

scoreETromboneII = \relative c {
  \global
  % Music follows here.
  
}

scoreETromboneIII = \relative c {
  \global
  % Music follows here.
  
}

scoreEViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreEViolinII = \relative c'' {
  \global
  % Music follows here.
  
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
  
}

scoreESopranoVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreEAltoVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreETenorVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreEBassVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreEPianoReduction = \new PianoStaff \with {
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
      \scoreESoprano \\
      \scoreEAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreETenor \\
      \scoreEBass
    >>
  }
>>

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

scoreEBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreEBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreEFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreETrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  midiInstrument = "trumpet"
} \scoreETrumpetBb

scoreETimpaniPart = \new Staff \with {
  instrumentName = "Pauken"
  midiInstrument = "timpani"
} { \clef bass \scoreETimpani }

scoreETromboneIPart = \new Staff \with {
  instrumentName = "Posaune I"
  midiInstrument = "trombone"
} { \clef bass \scoreETromboneI }

scoreETromboneIIPart = \new Staff \with {
  instrumentName = "Posaune II"
  midiInstrument = "trombone"
} { \clef bass \scoreETromboneII }

scoreETromboneIIIPart = \new Staff \with {
  instrumentName = "Posaune III"
  midiInstrument = "trombone"
} { \clef bass \scoreETromboneIII }

scoreEViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  midiInstrument = "violin"
} \scoreEViolinI

scoreEViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  midiInstrument = "violin"
} \scoreEViolinII

scoreEChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      \consists "Ambitus_engraver"
    } { \scoreESoprano }
    \addlyrics { \scoreESopranoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      \consists "Ambitus_engraver"
    } { \scoreEAlto }
    \addlyrics { \scoreEAltoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreETenor }
    \addlyrics { \scoreETenorVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      \consists "Ambitus_engraver"
    } { \clef bass \scoreEBass }
    \addlyrics { \scoreEBassVerse }
  >>
  \scoreEPianoReduction
>>

scoreEBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    midiInstrument = "cello"
  } { \clef bass \scoreEBcMusic }
  \new FiguredBass \scoreEBcFigures
>>

scoreEBassFiguresPart = \new FiguredBass \scoreEFigBass

\bookpart {
  \score {
    <<
      \scoreETrumpetBbPart
      \scoreETimpaniPart
      \scoreETromboneIPart
      \scoreETromboneIIPart
      \scoreETromboneIIIPart
      \scoreEViolinIPart
      \scoreEViolinIIPart
      \scoreEChoirPart
      \scoreEBassoContinuoPart
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
    \scoreERehearsalMidi "soprano" "soprano sax" \scoreESopranoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreERehearsalMidi "alto" "soprano sax" \scoreEAltoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreERehearsalMidi "tenor" "tenor sax" \scoreETenorVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreERehearsalMidi "bass" "tenor sax" \scoreEBassVerse
    \midi { }
  }
}


scoreFTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.
  
}

scoreFTimpani = \relative c {
  \global
  % Music follows here.
  
}

scoreFTromboneI = \relative c {
  \global
  % Music follows here.
  
}

scoreFTromboneII = \relative c {
  \global
  % Music follows here.
  
}

scoreFTromboneIII = \relative c {
  \global
  % Music follows here.
  
}

scoreFViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreFViolinII = \relative c'' {
  \global
  % Music follows here.
  
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

scoreFSopranoVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreFAltoVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreFTenorVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreFBassVerse = \lyricmode {
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

scoreFBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreFBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreFFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreFTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  midiInstrument = "trumpet"
} \scoreFTrumpetBb

scoreFTimpaniPart = \new Staff \with {
  instrumentName = "Pauken"
  midiInstrument = "timpani"
} { \clef bass \scoreFTimpani }

scoreFTromboneIPart = \new Staff \with {
  instrumentName = "Posaune I"
  midiInstrument = "trombone"
} { \clef bass \scoreFTromboneI }

scoreFTromboneIIPart = \new Staff \with {
  instrumentName = "Posaune II"
  midiInstrument = "trombone"
} { \clef bass \scoreFTromboneII }

scoreFTromboneIIIPart = \new Staff \with {
  instrumentName = "Posaune III"
  midiInstrument = "trombone"
} { \clef bass \scoreFTromboneIII }

scoreFViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  midiInstrument = "violin"
} \scoreFViolinI

scoreFViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  midiInstrument = "violin"
} \scoreFViolinII

scoreFChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      \consists "Ambitus_engraver"
    } { \scoreFSoprano }
    \addlyrics { \scoreFSopranoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      \consists "Ambitus_engraver"
    } { \scoreFAlto }
    \addlyrics { \scoreFAltoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreFTenor }
    \addlyrics { \scoreFTenorVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      \consists "Ambitus_engraver"
    } { \clef bass \scoreFBass }
    \addlyrics { \scoreFBassVerse }
  >>
  \scoreFPianoReduction
>>

scoreFBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    midiInstrument = "cello"
  } { \clef bass \scoreFBcMusic }
  \new FiguredBass \scoreFBcFigures
>>

scoreFBassFiguresPart = \new FiguredBass \scoreFFigBass

\bookpart {
  \score {
    <<
      \scoreFTrumpetBbPart
      \scoreFTimpaniPart
      \scoreFTromboneIPart
      \scoreFTromboneIIPart
      \scoreFTromboneIIIPart
      \scoreFViolinIPart
      \scoreFViolinIIPart
      \scoreFChoirPart
      \scoreFBassoContinuoPart
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
    \scoreFRehearsalMidi "soprano" "soprano sax" \scoreFSopranoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreFRehearsalMidi "alto" "soprano sax" \scoreFAltoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreFRehearsalMidi "tenor" "tenor sax" \scoreFTenorVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreFRehearsalMidi "bass" "tenor sax" \scoreFBassVerse
    \midi { }
  }
}

