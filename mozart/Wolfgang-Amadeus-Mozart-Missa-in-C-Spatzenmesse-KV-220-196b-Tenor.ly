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
  \compressEmptyMeasures
  \key c \major
  \time 4/4
  \tempo "Allegro" 4=100
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                      1. Kyrie
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \compressEmptyMeasures
  \key c \major
  \time 4/4
  \tempo "Allegro" 4=100
}

scoreATrumpetBb = \relative c'' {
  \globalA
  \transposition bf
  % Music follows here.

}

scoreATimpani = \relative c {
  \globalA
  % Music follows here.

}

scoreATromboneI = \relative c {
  \globalA
  % Music follows here.

}

scoreATromboneII = \relative c {
  \globalA
  % Music follows here.

}

scoreATromboneIII = \relative c {
  \globalA
  % Music follows here.

}

scoreAViolinI = \relative c'' {
  \globalA
  % Music follows here.

}

scoreAViolinII = \relative c'' {
  \globalA
  % Music follows here.

}

scoreASoprano = \relative c'' {
  \globalA
  % Music follows here.

}

scoreAAlto = \relative c' {
  \globalA
  % Music follows here.

}

scoreATenor = \relative c' {
  \globalA
  % Music follows here.
  R1*5|
  c4 b8.( d16) c4 r8 e|
  c4.( d8) c4 r8 c|
  c4.( d8) c4 r8 e|
  e d r d c4 f8 d|
  c4( e) d r8 d16( b)|
  e4 c r8 c b a|
  g d' e e d d r4|
  r1|
  r4 r8 b a g e'( d)|
  d4 r r2|
  r1|
  r4 r8 c a a a( b)|
  a bf4 a8 r d4 e8|
  r d c4 b r|
  c b8.( d16) c4 r8 e|
  c4.( d8) c4 r8 c|
  c4.( d8) c4 r8 e|
  e d r d c4 f8 d|
  c4 g r8 g d'16( c b d)|
  c4 r r8 e,8 b'16( a g b)|
  a4 r r8 c c16( d) c( b)|
  c8. b32( c) a8 c c b r4|
  r e2( d4)|
  c r8 c c4.( d8)|
  c4 e2(d4)|
  c4 r8 c c4.( d8)|
  c e4 d8 r d4 c8|
  r8 c c4 b r8 d16 d|
  d8 c c( b) c4 r|
  c4 b8.( d16) c4 r8 c|
  c4.( d8) c4 r|
  c d c r8 c16 c|
  c8 c b4 c r|
  \bar "|."
}

scoreABass = \relative c {
  \globalA
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
  Ky -- ri -- e e -- lei -- son,
  e -- lei -- son, e -- lei -- son,
  e -- lei -- son, e -- lei -- son,
  e -- lei -- son, e -- lei -- son
  Ky -- ri -- e e -- lei -- son.
  Chri -- ste e -- lei -- son, Chri -- ste e -- lei -- son, 
  Chri -- ste, Chri -- ste e -- lei -- son, 
  Ky -- ri -- e e -- lei -- son, e -- lei -- son, e -- lei -- son, e -- lei -- son, e -- lei -- son,
  e -- lei -- son, e -- lei -- son,
  e -- lei -- son.
  Ky -- ri -- e e -- lei -- son.
  Chri -- ste e -- lei -- son.
  Chri -- ste e -- lei -- son.
  Chri -- ste, Chri -- ste e -- lei -- son.
  Ky -- ri -- e e -- lei -- son.
  Ky -- ri -- e e -- lei -- son.
  Ky -- ri -- e, Ky -- ri -- e e -- lei -- son.
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
  \globalA
  % Music follows here.
  c4 g' a c8. e,16
  f8 g a b
}

scoreABcFigures = \figuremode {
  \globalA
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  <6 4>
}

scoreAFigBass = \figuremode {
  \globalA
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
%   \new ChoirStaff <<
 %    \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = "Sopran"
%       \consists "Ambitus_engraver"
%     } { \scoreASoprano }
%     \addlyrics { \scoreASopranoVerse }
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = "Alt"
%       \consists "Ambitus_engraver"
%     } { \scoreAAlto }
%     \addlyrics { \scoreAAltoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreATenor }
    \addlyrics { \scoreATenorVerse }
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = "Bass"
%       \consists "Ambitus_engraver"
%     } { \clef bass \scoreABass }
%     \addlyrics { \scoreABassVerse }
%   >>
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
%       \scoreATrumpetBbPart
%       \scoreATimpaniPart
%       \scoreATromboneIPart
%       \scoreATromboneIIPart
%       \scoreATromboneIIIPart
%       \scoreAViolinIPart
%       \scoreAViolinIIPart
      \scoreAChoirPart
%       \scoreABassoContinuoPart
%       \scoreABassFiguresPart
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                      2. Gloria
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalB = {
  \compressEmptyMeasures
  \key c \major
  \time 3/4
  \tempo "Allegro" 4=100
}


scoreBTrumpetBb = \relative c'' {
  \globalB
  \transposition bf
  % Music follows here.

}

scoreBTimpani = \relative c {
  \globalB
  % Music follows here.

}

scoreBTromboneI = \relative c {
  \globalB
  % Music follows here.

}

scoreBTromboneII = \relative c {
  \globalB
  % Music follows here.

}

scoreBTromboneIII = \relative c {
  \globalB
  % Music follows here.

}

scoreBViolinI = \relative c'' {
  \globalB
  % Music follows here.

}

scoreBViolinII = \relative c'' {
  \globalB
  % Music follows here.

}

scoreBSoprano = \relative c'' {
  \globalB
  % Music follows here.

}

scoreBAlto = \relative c' {
  \globalB
  % Music follows here.

}

scoreBTenor = \relative c' {
  \globalB
  % Music follows here.
  e2 e4|
  b2 f'4|
  e r r|
  a,( b) b|
  c8. b16 c4 r|
  c2 c4|
  c4.( g8) c( e)|
  e2( d4)|
  c r r
  R2.*8
  a4. 8 4|
  d4. 8 4|
  d b r|
  c2 b4|
  a d d|
  g,8 b e4( d)|
  d r r|
  R2.*14
  r4 r e
  a,2.|
  g4 r e'|
  c2.|
  b4 r r|
  b ds e|
  e ds r|
  r b\p fs|
  g fs r|
  r a e|
  f e r|
  r d g|
  e2 b'4~|
  b a2|
  a4 r d\f|
  g,2.|
  f4 r d'|
  g,2.|
  g4 r r|
  b c d|
  c c r|
  r2.|
  a4. 8 4|
  r2.|
  b4. 8 4|
  r c4.\p g8|
  4. bf8 4~|
  8 8 a2|
  g4 r d'\f|
  bf2.|
  4 r bf|
  b2~ 8. 16|
  c4 r r|
  c4 8. 16 4|
  4 b r|
  r g\p d|
  ef d r|
  r c' g|
  af g r|
  bf2 4|
  af2 c4|
  ef2.|
  d4 r r|
  R2.*12
  e4\f 4 4|
  b4. f'8 8 8|
  e4. c8 4|
  2 4|
  4.(g8) c(e)|
  2(d4)|
  c r b|
  c r g|
  a r e'|
  d e(d)|
  c r r|
  r2.|
  r4 c c8( f)|
  e( d c b c d)|
  e4 r r|
  d b r|
  b b r|
  b b r|
  c8 8 4( b)|
  c r r
  \bar "|."
}

scoreBBass = \relative c {
  \globalB
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
  Et in ter -- ra pax, pax ho -- mi -- ni -- bus bo -- nae vo -- lun -- ta -- tis.
  Gra -- ti -- as a -- gi -- mus ti -- bi pro -- pter ma -- gnam glo -- ri -- am tu -- am.
  Qui tol -- lis pec -- ca -- ta, pec -- ca -- ta, mun -- di, mi -- se -- re -- re, mi -- se -- re -- re, mi -- se -- re -- re no -- bis.
  Qui tol -- lis pec -- ca -- ta, pec -- ca -- ta  mun -- di,
  sus -- ci -- pe, sus -- ci -- pe de -- pre -- ca -- ti -- o -- nem no -- stram.
  Qui se -- des ad dex -- te -- ram, ad dex -- te -- ram Pa -- tris, mi -- se -- re, mi -- se -- re -- re -- re,
  mi -- se -- re -- re no -- bis.  
  Cum Sanc -- to Spi -- ri -- tu:
  in glo -- ri -- a De -- i Pa -- tris. A -- men,
  a -- men, a -- men, a -- men,
  a -- men,
  a -- men,
  a -- men,
  a -- men,
  a -- men,
  a -- men,
  a -- men,
  a -- men.
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
  \globalB
  % Music follows here.

}

scoreBBcFigures = \figuremode {
  \globalB
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreBFigBass = \figuremode {
  \globalB
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
%   \new ChoirStaff <<
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = "Sopran"
%       \consists "Ambitus_engraver"
%     } { \scoreBSoprano }
%     \addlyrics { \scoreBSopranoVerse }
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = "Alt"
%       \consists "Ambitus_engraver"
%     } { \scoreBAlto }
%     \addlyrics { \scoreBAltoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreBTenor }
    \addlyrics { \scoreBTenorVerse }
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = "Bass"
%       \consists "Ambitus_engraver"
%     } { \clef bass \scoreBBass }
%     \addlyrics { \scoreBBassVerse }
%   >>
%   \scoreBPianoReduction
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
\header {
  subtitle = "Gloria"
  meter = "ABC"
}
  \score {
    <<
%       \scoreBTrumpetBbPart
%       \scoreBTimpaniPart
%       \scoreBTromboneIPart
%       \scoreBTromboneIIPart
%       \scoreBTromboneIIIPart
%       \scoreBViolinIPart
%       \scoreBViolinIIPart
      \scoreBChoirPart
%       \scoreBBassoContinuoPart
%       \scoreBBassFiguresPart
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                      3. Credo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \compressEmptyMeasures
  \key c \major
  \time 4/4
  \tempo "Allegro" 4=100
}

scoreCTrumpetBb = \relative c'' {
  \globalC
  \transposition bf
  % Music follows here.

}

scoreCTimpani = \relative c {
  \globalC
  % Music follows here.

}

scoreCTromboneI = \relative c {
  \globalC
  % Music follows here.

}

scoreCTromboneII = \relative c {
  \globalC
  % Music follows here.

}

scoreCTromboneIII = \relative c {
  \globalC
  % Music follows here.

}

scoreCViolinI = \relative c'' {
  \globalC
  % Music follows here.

}

scoreCViolinII = \relative c'' {
  \globalC
  % Music follows here.

}

scoreCSoprano = \relative c'' {
  \globalC
  % Music follows here.

}

scoreCAlto = \relative c' {
  \globalC
  % Music follows here.

}

scoreCTenor = \relative c' {
  \globalC
  % Music follows here.
  R1*2
  e4\f 8 8 c4 4|
  c4 e8 8 d d b4|
  c8 e c4 d r|
  r8 c4 8 d8 16 16 8. 16|
  8 4 8 8 8 8. 16|
  4 r r r|
  R1*4
  d4\f 8 8 a4 8 8|
  b 8 8 8. 16 c4 8 8|
  4 8 8 8 8 4|
  4 r r2|
  R1*2s
  r2 r4 r8 c|
  4 a8 8 c8. 16 e8 8|
  a, d8 4 c8 e c4|
  d r8 b c4 b8 8|
  a4 c8 8 a f r e'|
  c a r d c4( b)|
  c r r2|
  R1*3
  r2 r4 b8\f 8|
  bf4 g c8. 16 d8 d|
  e4 e r8 d d8. 16|
  8 8 b b a4\p fs|
  e4 c' fs, g8( a)|
  b4. a8 g4 r|
  \bar "||"
  \tempo "Allegro" 4=100
  r8 e'8 8 8 c4 c|
  8 16 16 e4 d8 8 b4|
  c8 e c4 d b8 8|
  c4 e8 c d d8 4|
  4 r8 d8 8 16 16 4|
  4 r4 r8 e d8. 16|
  c8 8 8 8 b4 r8 ds|
  e8 16 16 8 b8 8 8 r4|
  e2 b4 r|
  r2 r4 as\p|
  b4. 8 4 8\f 8|
  4 8 8 c c b4|
  c r c r|
  d r8 b c c b4|
  c4 r4 r2|
  R1*7
  r4 r8 d8 4 a|
  gs b r8 b d d|
  c8. 16 4 r8 c c c|
  8. a16 8 8 b8. e16 4|
  r8 e8 8. 16 4 r8 e|
  d8 8 4 4 r|
  r8 c4 8 8 d e d|
  c e c4 d r|
  r8 c4 8 d4 4|
  8. 16 8 8 8 b8 r4|
  d2\p c|
  c b4 r|
  r8 g\f e'4 c 8 8 8 8|
  8. 16 g4 d' d|
  c8 e c4 d r8 b|
  c4 r8 b a4 r8 c(|
  a) f r e'( c )a d4|
  c b c d8 d|
  c4(b) c b|
  c d e r
  \bar "|."
}

scoreCBass = \relative c {
  \globalC
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
  Pa -- trem om -- ni -- po -- ten -- tem, fac -- to -- rem cae -- li et ter -- rae,
  vi -- si -- bi -- li -- um om -- ni -- um et in -- vi -- si -- bi -- li -- um.
    
  De -- um de De -- o, Lu -- men de Lu -- mi -- ne,
  De -- um ver -- um de De -- o ve -- ro,
  
  Qui prop -- ter nos ho -- mi -- nes et pro -- pter no -- stram sa -- lu -- tem
  de -- scen -- dit
  de -- scen -- dit 
  de -- scen -- dit 
  de -- scen -- dit 
  de cae -- lis.
  
  Cru -- ci -- fi -- xus et -- i -- am pro no -- bis, sub Pon -- ti -- o Pi -- la -- to pas -- sus,
  pas -- sus 
  et se -- pul -- tus est.

  Et re -- sur -- re -- xit ter -- ti -- a di -- e, se -- cun -- dum Scrip -- tu -- ras.

  Et a -- scen -- dit in cae -- lum,
  se -- det ad dex -- te -- ram Pa -- tris.
  
  Et i -- te -- rum ven -- tu -- rus est cum glo -- ri -- a, iu -- di -- ca -- re vi -- vos et mor -- tu -- os,
  cu -- ius reg -- ni non e -- rit fi -- nis,
  non, non, non e -- rit fi -- nis.
  
  Et un -- am, san -- ctam,
  san -- ctam
  ca -- tho -- li -- cam et a -- po -- sto -- li -- cam Ec -- cle -- si -- am.
  
  Con -- fi -- te -- or un -- um bap -- ti -- sma in re -- mis -- si -- o -- nem pec -- ca -- to -- rum.
  Et ex -- spec -- to re -- sur -- rec -- ti -- o -- nem mor -- tu -- o -- rum.

  Et vit -- am ven -- tu -- ri sae -- cu -- li.
  
  A -- men,
  a -- men,
  a -- men,
  a -- men,
  a -- men,
  a -- men,
  a -- men,
  a -- men,
  a -- men,
  a -- men,
  a -- men,
  a -- men,
  a -- men.
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
  \globalC
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreCFigBass = \figuremode {
  \globalC
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
%   \new ChoirStaff <<
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = "Sopran"
%       \consists "Ambitus_engraver"
%     } { \scoreCSoprano }
%     \addlyrics { \scoreCSopranoVerse }
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = "Alt"
%       \consists "Ambitus_engraver"
%     } { \scoreCAlto }
%     \addlyrics { \scoreCAltoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreCTenor }
    \addlyrics { \scoreCTenorVerse }
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = "Bass"
%       \consists "Ambitus_engraver"
%     } { \clef bass \scoreCBass }
%     \addlyrics { \scoreCBassVerse }
%   >>
%   \scoreCPianoReduction
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
\header {
  subtitle = "Credo"
  meter = "ABC"
}
  \score {
    <<
%       \scoreCTrumpetBbPart
%       \scoreCTimpaniPart
%       \scoreCTromboneIPart
%       \scoreCTromboneIIPart
%       \scoreCTromboneIIIPart
%       \scoreCViolinIPart
%       \scoreCViolinIIPart
      \scoreCChoirPart
%       \scoreCBassoContinuoPart
%       \scoreCBassFiguresPart
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                      4. Sanctus
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalD = {
  \compressEmptyMeasures
  \key c \major
  \time 3/4
  \tempo "Andante" 4=60
}


scoreDTrumpetBb = \relative c'' {
  \globalD
  \transposition bf
  % Music follows here.

}

scoreDTimpani = \relative c {
  \globalD
  % Music follows here.

}

scoreDTromboneI = \relative c {
  \globalD
  % Music follows here.

}

scoreDTromboneII = \relative c {
  \globalD
  % Music follows here.

}

scoreDTromboneIII = \relative c {
  \globalD
  % Music follows here.

}

scoreDViolinI = \relative c'' {
  \globalD
  % Music follows here.

}

scoreDViolinII = \relative c'' {
  \globalD
  % Music follows here.

}

scoreDSoprano = \relative c'' {
  \globalD
  % Music follows here.

}

scoreDAlto = \relative c' {
  \globalD
  % Music follows here.

}

scoreDTenor = \relative c' {
  \globalD
  % Music follows here.
  r4 c b|
  r d c|
  r c c|
  g4. 8 4|
  4. e'8 c4|
  d2 c4|
  8. 16 b4 r\fermata
  \bar "||"
  \time 4/4
  \tempo "Allegro" 4=100
  r2 c4 d8 b|
  c4 f8 e16( d) e8 c r4|
  r2 r8 c d b|
  c8. 16 f4
  e8 d r4|
  r4 r8 b d4 c8 r|
  r4 b8 b d4 c8 8|
  8. 16 8 8 4 4|
  d8 c c( b) c4 r8 g\p|
  a a r a g g r g\f|
  a a r a g g r4|
  d'8 c c(b) c4 r|
  r4 r8 b d4 d|
  c8 c b4 c r
  \bar "|."
}

scoreDBass = \relative c {
  \globalD
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
  Sanc -- tus, sanc -- tus, sanc -- tus Do -- mi -- nus, Do -- mi -- nus De -- us Sa -- ba -- oth.
  Ple -- ni sunt cae -- li et ter -- ra,
  ple -- ni sunt
  glo -- ri -- a tu -- a.
  Ho -- san -- na in ex -- cel -- sis.
  Ho -- san -- na in ex -- cel -- sis,
  in ex -- cel -- sis,
  Ho -- san -- na, ho -- san -- na, ho -- san -- na
  ho -- san -- na in ex -- cel -- sis.
  Ho -- san -- na in ex -- cel -- sis.
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
  \globalD
  % Music follows here.

}

scoreDBcFigures = \figuremode {
  \globalD
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreDFigBass = \figuremode {
  \globalD
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
%   \new ChoirStaff <<
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = "Sopran"
%       \consists "Ambitus_engraver"
%     } { \scoreDSoprano }
%     \addlyrics { \scoreDSopranoVerse }
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = "Alt"
%       \consists "Ambitus_engraver"
%     } { \scoreDAlto }
%     \addlyrics { \scoreDAltoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreDTenor }
    \addlyrics { \scoreDTenorVerse }
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = "Bass"
%       \consists "Ambitus_engraver"
%     } { \clef bass \scoreDBass }
%     \addlyrics { \scoreDBassVerse }
%   >>
%   \scoreDPianoReduction
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
\header {
  subtitle = "Sanctus"
  meter = "ABC"
}
\score {
    <<
%       \scoreDTrumpetBbPart
%       \scoreDTimpaniPart
%       \scoreDTromboneIPart
%       \scoreDTromboneIIPart
%       \scoreDTromboneIIIPart
%       \scoreDViolinIPart
%       \scoreDViolinIIPart
      \scoreDChoirPart
%       \scoreDBassoContinuoPart
%       \scoreDBassFiguresPart
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                      5. Benedictus
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalE = {
  \compressEmptyMeasures
  \key g \major
  \time 4/4
  \tempo "Andante" 4=62
}

scoreETrumpetBb = \relative c'' {
  \globalE
  \transposition bf
  % Music follows here.

}

scoreETimpani = \relative c {
  \globalE
  % Music follows here.

}

scoreETromboneI = \relative c {
  \globalE
  % Music follows here.

}

scoreETromboneII = \relative c {
  \globalE
  % Music follows here.

}

scoreETromboneIII = \relative c {
  \globalE
  % Music follows here.

}

scoreEViolinI = \relative c'' {
  \globalE
  % Music follows here.

}

scoreEViolinII = \relative c'' {
  \globalE
  % Music follows here.

}

scoreESoprano = \relative c'' {
  \globalE
  % Music follows here.

}

scoreEAlto = \relative c' {
  \globalE
  % Music follows here.

}

scoreETenor = \relative c' {
  \globalE
  % Music follows here.
  R1*32
  \tempo "Allegro" 4=100
  r4 r4 r4 r8 b\f|
  e8. 16 8 8 8 d r b|
  c8. 16 8 8 8 b r4|
  r4 r8 b d4 c8 r|
  r4 b8 b d4 c8 8|
  8. 16 8 8 4 4|
  d8 c c(b) c4 r8 g\p|
  a a r a g g r g\f|
  a a r a g g r4|
  d'8 c c(b) c4 r|
  r4 r8 b d4 d|
  c8 c b4 c r
  \bar "|."
}

scoreEBass = \relative c {
  \globalE
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
  Ho -- san -- na in ex -- cel -- sis,
  Ho -- san -- na in ex -- cel -- sis,
  Ho -- san -- na in ex -- cel -- sis,
  Ho -- san -- na in ex -- cel -- sis,
  in ex -- cel -- sis
  Ho -- san -- na,
  ho -- san -- na,
  ho -- san -- na,
  ho -- san -- na in ex -- cel -- sis,
  Ho -- san -- na in ex -- cel -- sis!
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
  \globalE
  % Music follows here.

}

scoreEBcFigures = \figuremode {
  \globalE
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
%   \new ChoirStaff <<
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = "Sopran"
%       \consists "Ambitus_engraver"
%     } { \scoreESoprano }
%     \addlyrics { \scoreESopranoVerse }
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = "Alt"
%       \consists "Ambitus_engraver"
%     } { \scoreEAlto }
%     \addlyrics { \scoreEAltoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreETenor }
    \addlyrics { \scoreETenorVerse }
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = "Bass"
%       \consists "Ambitus_engraver"
%     } { \clef bass \scoreEBass }
%     \addlyrics { \scoreEBassVerse }
%   >>
%   \scoreEPianoReduction
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
\header {
  subtitle = "Benedictus"
  meter = "ABC"
}
\score {
    <<
%       \scoreETrumpetBbPart
%       \scoreETimpaniPart
%       \scoreETromboneIPart
%       \scoreETromboneIIPart
%       \scoreETromboneIIIPart
%       \scoreEViolinIPart
%       \scoreEViolinIIPart
      \scoreEChoirPart
%       \scoreEBassoContinuoPart
%       \scoreEBassFiguresPart
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                      6. Agnus Dei
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalF = {
  \compressEmptyMeasures
  \key c \major
  \time 3/4
  \tempo "Adagio" 4=50
}

scoreFTrumpetBb = \relative c'' {
  \globalF
  \transposition bf
  % Music follows here.

}

scoreFTimpani = \relative c {
  \globalF
  % Music follows here.

}

scoreFTromboneI = \relative c {
  \globalF
  % Music follows here.

}

scoreFTromboneII = \relative c {
  \globalF
  % Music follows here.

}

scoreFTromboneIII = \relative c {
  \globalF
  % Music follows here.

}

scoreFViolinI = \relative c'' {
  \globalF
  % Music follows here.

}

scoreFViolinII = \relative c'' {
  \globalF
  % Music follows here.

}

scoreFSoprano = \relative c'' {
  \globalF
  % Music follows here.

}

scoreFAlto = \relative c' {
  \globalF
  % Music follows here.

}

scoreFTenor = \relative c' {
  \globalF
  % Music follows here.
  e2\f c4|
  f e e8(d)|
  f4 e r8 g,|
  4 4 r|
  r8 b8 4 d4|
  b b b|
  g g r8 e'|
  a, f' r a, c b|
  c4 g r|
  R2.*5
  r8 d'4\f(c) b8|
  8(a4 g) fs8|
  g4(b2)|
  c4 r8 d4 8|
  8. c16 b4(c)|
  b r r|
  r2.|
  b2\p 4|
  8(c8) 4 r8 8|
  8(d8)d4 r8 8|
  d(c)4 r|
  b\f d c|
  c b r|
  R2.*4
  r4 g\f 4|
  2 4|
  8(c4 b c8)|
  4 r8 b(c) b-!|
  c8. f16 e4(d\trill)|
  c r r|
  r2.|
  r4 bf\p 4|
  a a r|
  r8 af8 4 4|
  r8 c8 4 g|
  e'\f 4 4|
  2.|
  d4 r r\fermata
  \bar "||"
  \time 4/4
  \tempo "Allegro" 4=100
  r4 e2(d4)|
  c4 8 8 8 8 8(d)|
  c4 e2(d4)|
  c4 8 8 8 8 8(d)|
  c8 4 8 8 b r4|
  r2 b4 c|
  d8 b r4 c d|
  e8 c r4 b c|
  d8 b r4 e8 c r4|
  d8 b r4 r2|
  r1|
  c4 b8.(d16) c4. 8|
  4.(d8) c4 b|
  c r g a|
  r c2 g4|
  r2 a~|
  a g| 
  r b4\f c|
  d8 b r4 c d|
  e8 c r4 d8 b r4|
  c4 b8.( d16) c4. 8|
  4.(d8) c4 r|
  c d c8 e r c16 c|
  8 8 b4 c b|
  c d e r
  \bar "|."
}

scoreFBass = \relative c {
  \globalF
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
  A -- gnus De -- i, qui tol -- lis pec -- ca -- ta,
  qui tol -- lis pec -- ca -- ta mun -- di, 
  pec -- ca -- ta, pec -- ca -- ta mun -- di,
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re no -- bis.
  A -- gnus De -- i, qui tol -- lis pec -- ca -- ta,
  pec -- ca -- ta mun -- di,
  mi -- se -- re -- re no -- bis,
  mi -- se -- re -- re no -- bis.
  A -- gnus De -- i, qui tol -- lis pec -- ca -- ta,
  pec -- ca -- ta mun -- di,
  do -- na, do -- na no -- bis pa -- cem.
  do -- na,
  do -- na no -- bis pa -- cem,
  do -- na pa -- cem,
  do -- na no -- bis, no -- bis pa -- cem,
  do -- na pa -- cem,
  do -- na pa -- cem,
  do -- na no -- bis pa -- cem,
  pa -- cem,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis, no -- bis pa -- cem,
  pa -- cem,
  do -- na no -- bis pa -- cem,
  do -- na no -- bis,
  do -- na no -- bis pa -- cem,
  pa -- cem,
  pa -- cem.
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
  \globalF
  % Music follows here.

}

scoreFBcFigures = \figuremode {
  \globalF
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.

}

scoreFFigBass = \figuremode {
  \globalF
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
%   \new ChoirStaff <<
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = "Sopran"
%       \consists "Ambitus_engraver"
%     } { \scoreFSoprano }
%     \addlyrics { \scoreFSopranoVerse }
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = "Alt"
%       \consists "Ambitus_engraver"
%     } { \scoreFAlto }
%     \addlyrics { \scoreFAltoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreFTenor }
    \addlyrics { \scoreFTenorVerse }
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = "Bass"
%       \consists "Ambitus_engraver"
%     } { \clef bass \scoreFBass }
%     \addlyrics { \scoreFBassVerse }
%   >>
%   \scoreFPianoReduction
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
\header {
  subtitle = "Agnus Dei"
  meter = "ABC"
}
\score {
    <<
%       \scoreFTrumpetBbPart
%       \scoreFTimpaniPart
%       \scoreFTromboneIPart
%       \scoreFTromboneIIPart
%       \scoreFTromboneIIIPart
%       \scoreFViolinIPart
%       \scoreFViolinIIPart
      \scoreFChoirPart
%       \scoreFBassoContinuoPart
%       \scoreFBassFiguresPart
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

