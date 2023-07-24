\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = "Violinsonate Nr. 17"
  subtitle = "C-Dur"
  subsubtitle = "1. Satz"
  instrument = "Klavier und Geige"
  composer = "Wolfgang Amadeus Mozart"
  arranger = "Satz: Sven Buschke"
  poet = ""
  meter = ""
  piece = "Mannheim, 11.03.1778"
  opus = "KV 296"
  copyright = "Fingersatz: Sven Buschke"
  tagline = ""
}

global = {
  \key c \major
  \time 4/4
  \tempo "Allegro vivace" 4 = 100
}

globalA = {
  \key c \major
  \time 4/4
  \tempo "Allegro vivace" 4 = 100
}

scoreAViolin = \relative c'' {
  \globalA
  % Music follows here.
  <g, e' c'>4.\f e''8 g,4. c8 e,4. g8 c,4 r4 r1 r1
  <g e' c'>4.\f e''8 g,4. c8 e,4. g8 c,4 r4 r1 r1
  r2 c4 e8.\trill(d32 e) g4 r r8 c c c a4 r c, f8.\trill(e32 f) a4 r r8 c c c e,4 r c e8.\trill(d32 e) g4 r r8 c c c d,2 f' e c, <d a'>4 r <g, f'> r r8 g'-. g-. g-. g8.(a32 b c8) r
  \bar "|."
}

scoreARight = \relative c'' {
  \globalA
  % Music follows here.
  c8\f(\tuplet 3/2 {d16 c b} c8) e-! g,(\tuplet 3/2 {a16 g fs} g8 c-!) e,8(\tuplet 3/2 {f16 e d} e8) g-! c, c' c c d\trill( c) c-. c-. d\trill( c) c-. c-. cs(d4 e8) g(f e d) c(\tuplet 3/2{d16 c b} c8) e-! g,(\tuplet 3/2{a16 g fs}g8) a-! e(\tuplet 3/2{f16 e d} e8) g-! c, c' c c d\trill( c) c-. c-. d\trill( c) c-. c-. cs(d4 e8) g(f e d) c4 e8.\trill d32 e g4 r r8 c c c \appoggiatura d16 c8 b16 c g4 c, f8.\trill e32 f a4 r r8 c c c \appoggiatura d16 c8 b16 c g4 c, e8.\trill d32 e a4 r
  r8 c c c \appoggiatura d16 c8 b16 c g4
  f16 g a g f e d c b4. b'16 g c d c b c d e c g4. f16 e d e d cs d8 f b,16 c b a b8 d c r <g b d> r <g c e> r r g16 e
}

scoreALeft = \relative c' {
  \globalA
  % Music follows here.
  <c, c'>4. e'8 <g,, g'>4. c'8 <e,, e'>4. g'8 <c,, c'>4 r \clef treble <<{g'''2 g}\\{f4 e f e}>> <f a>4 <e g> <d a'> <g b> \clef bass
  <c,, c'>4. e8 <g, g'>4. c'8 <e,, e'>4. g'8 <c,, c'>4 r \clef treble <<{g'''2 g}\\{f4 e f e}>> <f a>4 <e g> <d a'> <g b>
  \clef bass c,,8 c' g c e, c' g c c, c' e, c' g c e, c' c, c' a c f, c' a c c, c' f, c' a c f, c' c, c' g c e, c' g c c, c' e, c' g c e, c' <d, a'>4 r r8 <g d' f>8 8 8
  <a c e>4 r r8 <e g c>8 8 8 <f a d>4 r <g d' f> r <c e>8 r <g b d> r <c c'> r r4
}

scoreAViolinPart = \new Staff \with {
  instrumentName = "Violin"
  midiInstrument = "violin"
  \magnifyStaff #0.8
} \scoreAViolin

scoreAPianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreARight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreALeft }
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalB = {
  \key f \major
  \time 3/4
  \tempo "Andante sostenuto" 4 = 50
}

scoreBViolin = \relative c'' {
  \globalB
  % Music follows here.
  \partial 4
  r a,2\p(bf4\fp) a2
}

scoreBRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreBLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreBViolinPart = \new Staff \with {
  instrumentName = "Violin"
  midiInstrument = "violin"
} \scoreBViolin

scoreBPianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreBRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreBLeft }
>>

scoreCViolin = \relative c'' {
  \global
  % Music follows here.
  
}

scoreCRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreCLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreCViolinPart = \new Staff \with {
  instrumentName = "Violin"
  midiInstrument = "violin"
} \scoreCViolin

scoreCPianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreCRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreCLeft }
>>

\book {
  \bookOutputSuffix "Piano_Violine"
  \bookpart {
    \header {
        subsubtitle = "1. Satz"
    }
    \score {
      <<
        \scoreAViolinPart
        \scoreAPianoPart
      >>
      \layout { }
      \midi {
        \tempo 4=100
      }
    }
  }
  \bookpart {
    \header {
        subsubtitle = "2. Satz"
    }
    \score {
      <<
        \scoreBViolinPart
        \scoreBPianoPart
      >>
      \layout { }
      \midi {
        \tempo 4=100
      }
    }
  }
  \bookpart {
    \header {
        subsubtitle = "3. Satz"
    }
    \score {
      <<
        \scoreCViolinPart
        \scoreCPianoPart
      >>
      \layout { }
      \midi {
        \tempo 4=100
      }
    }
  }
}

scoreDViolin = \relative c'' {
%   \global
  % Music follows here.
    \scoreAViolin
}

scoreEViolin = \relative c'' {
%   \global
  % Music follows here.
  \scoreBViolin
}

scoreFViolin = \relative c'' {
  \global
  % Music follows here.
  
}

\book {
  \bookOutputSuffix "Violine"
  \bookpart {
    \header {
        subsubtitle = "1. Satz"
    }
    \score {
      \new Staff \with {
        instrumentName = "Violin"
        midiInstrument = "violin"
      } \scoreDViolin
      \layout { }
      \midi {
        \tempo 4=100
      }
    }
  }
  \bookpart {
    \header {
        subsubtitle = "2. Satz"
    }
    \score {
      \new Staff \with {
        instrumentName = "Violin"
        midiInstrument = "violin"
      } \scoreEViolin
      \layout { }
      \midi {
        \tempo 4=100
      }
    }
  }
  \bookpart {
    \header {
        subsubtitle = "3. Satz"
    }
    \score {
      \new Staff \with {
        instrumentName = "Violin"
        midiInstrument = "violin"
      } \scoreFViolin
      \layout { }
      \midi {
        \tempo 4=100
      }
    }
  }
}
