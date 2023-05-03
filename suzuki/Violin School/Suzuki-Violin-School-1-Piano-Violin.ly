\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Violin School"
  subsubtitle = "Volume 1"
  instrument = "Violine und Piano"
  composer = ""
  arranger = \markup {"Fingering: " \with-url "https://buschke.com" "Sven Buschke"}
  poet = ""
  meter = ""
  piece = ""
  opus = "No. 1"
  copyright = \markup {"© Fingering, 03.05.2023: " \with-url "https://buschke.com" "Sven Buschke"}
  tagline = ""
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
  \tempo "Andante" 4=100
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 1 / A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreAViolin = \relative c'' {
  \global
  % Music follows here.
c
}

scoreARight = \relative c'' {
  \global
  % Music follows here.

}

scoreALeft = \relative c' {
  \global
  % Music follows here.

}

scoreAViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreAViolin

scoreAPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreARight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreALeft }
>>

\bookpart {
\header {
  title = "Twinkle, Twinkle"
  composer = "Suzuki"
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 1"
  tagline = ""
}
  \score {
    <<
      \scoreAViolinPart
      \scoreAPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 2 / B
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalB = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreBViolin = \relative c'' {
  \global
  % Music follows here.
c
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
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreBViolin

scoreBPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreBRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreBLeft }
>>

\bookpart {
\header {
  title = "Lightly Row"
  composer = "Folk Song"
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 2, Vol. 1"
  tagline = ""
}
  \score {
    <<
      \scoreBViolinPart
      \scoreBPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 3 / C
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreCViolin = \relative c'' {
  \global
  % Music follows here.
c
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
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreCViolin

scoreCPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreCRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreCLeft }
>>

\bookpart {
\header {
  title = "Song of the Wind"
  composer = "Folk Song"
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 3, Vol. 1"
  tagline = ""
}
  \score {
    <<
      \scoreCViolinPart
      \scoreCPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 4 / D
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalD = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreDViolin = \relative c'' {
  \global
  % Music follows here.
c
}

scoreDRight = \relative c'' {
  \global
  % Music follows here.

}

scoreDLeft = \relative c' {
  \global
  % Music follows here.

}

scoreDViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreDViolin

scoreDPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreDRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreDLeft }
>>

\bookpart {
\header {
  title = "Go Tell Aunt Rhody"
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 4, Vol. 1"
  tagline = ""
}
  \score {
    <<
      \scoreDViolinPart
      \scoreDPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 5 / E
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalE = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreEViolin = \relative c'' {
  \global
  % Music follows here.
c
}

scoreERight = \relative c'' {
  \global
  % Music follows here.

}

scoreELeft = \relative c' {
  \global
  % Music follows here.

}

scoreEViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreEViolin

scoreEPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreERight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreELeft }
>>

\bookpart {
\header {
  title = "O Come, Little Children"
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 5, Vol. 1"
  tagline = ""
}
  \score {
    <<
      \scoreEViolinPart
      \scoreEPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 6 / F
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalF = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreFViolin = \relative c'' {
  \global
  % Music follows here.
c
}

scoreFRight = \relative c'' {
  \global
  % Music follows here.

}

scoreFLeft = \relative c' {
  \global
  % Music follows here.

}

scoreFViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreFViolin

scoreFPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreFRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreFLeft }
>>

\bookpart {
\header {
  title = "May Song"
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 6, Vol. 1"
  tagline = ""
}
  \score {
    <<
      \scoreFViolinPart
      \scoreFPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 7 / G
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalG = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreGViolin = \relative c'' {
  \global
  % Music follows here.
c
}

scoreGRight = \relative c'' {
  \global
  % Music follows here.

}

scoreGLeft = \relative c' {
  \global
  % Music follows here.

}

scoreGViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreGViolin

scoreGPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreGRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreGLeft }
>>

\bookpart {
\header {
  title = "Long, Long Ago"
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 7, Vol. 1"
  tagline = ""
}
  \score {
    <<
      \scoreGViolinPart
      \scoreGPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 8 / H
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalH = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreHViolin = \relative c'' {
  \global
  % Music follows here.
c
}

scoreHRight = \relative c'' {
  \global
  % Music follows here.

}

scoreHLeft = \relative c' {
  \global
  % Music follows here.

}

scoreHViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreHViolin

scoreHPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreHRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreHLeft }
>>

\bookpart {
\header {
  title = "Allegro"
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 8, Vol. 1"
  tagline = ""
}
  \score {
    <<
      \scoreHViolinPart
      \scoreHPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 9 / I
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalI = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreIViolin = \relative c'' {
  \global
  % Music follows here.
c
}

scoreIRight = \relative c'' {
  \global
  % Music follows here.

}

scoreILeft = \relative c' {
  \global
  % Music follows here.

}

scoreIViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreIViolin

scoreIPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreIRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreILeft }
>>

\bookpart {
\header {
  title = "Perpetual Motion"
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 9, Vol. 1"
  tagline = ""
}
  \score {
    <<
      \scoreIViolinPart
      \scoreIPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 10 / J
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalJ = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreJViolin = \relative c'' {
  \global
  % Music follows here.
c
}

scoreJRight = \relative c'' {
  \global
  % Music follows here.

}

scoreJLeft = \relative c' {
  \global
  % Music follows here.

}

scoreJViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreJViolin

scoreJPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreJRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreJLeft }
>>

\bookpart {
\header {
  title = "Allegretto"
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 10, Vol. 1"
  tagline = ""
}
  \score {
    <<
      \scoreJViolinPart
      \scoreJPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 11 / K
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalK = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreKViolin = \relative c'' {
  \global
  % Music follows here.
c
}

scoreKRight = \relative c'' {
  \global
  % Music follows here.

}

scoreKLeft = \relative c' {
  \global
  % Music follows here.

}

scoreKViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreKViolin

scoreKPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreKRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreKLeft }
>>

\bookpart {
\header {
  title = "Andantino"
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 11, Vol. 1"
  tagline = ""
}
  \score {
    <<
      \scoreKViolinPart
      \scoreKPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 12 / L
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalL = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreLViolin = \relative c'' {
  \global
  % Music follows here.
c
}

scoreLRight = \relative c'' {
  \global
  % Music follows here.

}

scoreLLeft = \relative c' {
  \global
  % Music follows here.

}

scoreLViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreLViolin

scoreLPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreLRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreLLeft }
>>

\bookpart {
\header {
  title = "Etude"
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 12, Vol. 1"
  tagline = ""
}
  \score {
    <<
      \scoreLViolinPart
      \scoreLPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 13 / M
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalM = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreMViolin = \relative c'' {
  \global
  % Music follows here.
c
}

scoreMRight = \relative c'' {
  \global
  % Music follows here.

}

scoreMLeft = \relative c' {
  \global
  % Music follows here.

}

scoreMViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreMViolin

scoreMPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreMRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreMLeft }
>>

\bookpart {
\header {
  title = "Minuet 1"
  composer = "Johann Sebastian Bach"
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 13, Vol. 1"
  tagline = ""
}
  \score {
    <<
      \scoreMViolinPart
      \scoreMPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 14 / N
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalN = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreNViolin = \relative c'' {
  \global
  % Music follows here.
c
}

scoreNRight = \relative c'' {
  \global
  % Music follows here.

}

scoreNLeft = \relative c' {
  \global
  % Music follows here.

}

scoreNViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreNViolin

scoreNPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreNRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreNLeft }
>>

\bookpart {
\header {
  title = "Minuet 2"
  composer = "Johann Sebastian Bach"
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 14, Vol. 1"
  tagline = ""
}
  \score {
    <<
      \scoreNViolinPart
      \scoreNPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 15 / O
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalO = {
  \key g \major
  \time 3/4
  \tempo "Allegretto" 2. = 66
%  \key c \major
%  \time 4/4
%  \tempo "Andante" 4=100
}

scoreOViolin = \relative c'' {
  \globalO
  % Music follows here.
        \repeat volta 2 {
        d4-3( g,8-3 a-4 b-1 c-2 d4-.-3) g,-.-3 g-.-3
        e'-4( c8-2 d-3 e-4 fs-1 g4-.-2) g,-.-3 g-.-3 c-2( d8-3 c-2 b-1 a-4 b4-1 c8-2 b-1 a-4 g-3
        fs4-2 g8-3 a-4 b-1 g-3 \acciaccatura b-1 a2.-4)
        d4-3( g,8-3 a-4 b-1 c-2 d4-.-3) g,-.-3 g-.-3 e'-4( c8-2 d-3 e-4 fs-1 g4-.-2) g,-.-3 g-.-3
        c-2\( d8-3 c-2 b-1 a-4 b4-1 c8-2 b-1 a-4 g-3 a4-4 b8-1 a-4 g-3 fs-3 g2.-3\)
        }
        \repeat volta 2 {
        b'4 g8 a b g a4 d,8 e fs d g4 e8 fs g d
        cs4 b8 cs a4 a8 b cs d e fs g4 fs e fs a, cs d2. d4 g,8 fs g4 e'4 g,8 fs g4 d' c b a8 g fs g a4 d,8 e fs g a b c4 b a b8 d g,4 fs <b, d g>2.

        }

}

scoreORight = \relative c'' {
  \globalO
  % Music follows here.
  \repeat volta 2 {
    d4( g,8 a b c d4-.) g,-. g-.
    e'( c8 d e fs g4-.) g,-. g-. c( d8 c b a b4 c8 b a g
    fs4 g8 a b g \acciaccatura b a2.)
    d4( g,8 a b c d4-.) g,-. g-. e'( c8 d e fs g4-.) g,-. g-.
    c\( d8 c b a b4 c8 b a g a4 b8 a g fs g2.\)
  }
  \repeat volta 2 {
  b'4 g8 a b g a4 d,8 e fs d g4 e8 fs g d
  cs4 b8 cs a4 a8 b cs d e fs g4 fs e fs a, cs d2. d4 g,8 fs g4 e'4 g,8 fs g4 d' c b a8 g fs g a4 d,8 e fs g a b c4 b a b8 d g,4 fs <b, d g>2.
  }

}

scoreOLeft = \relative c' {
  \globalO
  % Music follows here.
      <<\relative c {
        <b' d>2.
      }
      \\
      \relative c {
        g'2 a4 b2. c b a g d'4 b g d' d,8 c' b a b2 a4 g b g c2. b4 c8 b a g
        a2 fs4 g2 b4 c d d, g2 g,4
        g'2. fs e4 g e a2 a,4 a'2. b4 d cs d fs, a d d, c'
        b2 b4 c2 c4
        b a g d'2r4 d,2. e4 g fs g b, d g d g,
      }
      >>
}

scoreOViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreOViolin

scoreOPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreORight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreOLeft }
>>

\bookpart {
\header {
  title = "Minuet 3"
  composer = "Johann Sebastian Bach"
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 15, Vol. 1"
  tagline = ""
}
  \score {
    <<
      \scoreOViolinPart
      \scoreOPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 16 / P
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalP = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scorePViolin = \relative c'' {
  \global
  % Music follows here.
c
}

scorePRight = \relative c'' {
  \global
  % Music follows here.

}

scorePLeft = \relative c' {
  \global
  % Music follows here.

}

scorePViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scorePViolin

scorePPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scorePRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scorePLeft }
>>

\bookpart {
\header {
  title = "The Happy Farmer"
  composer = "Robert Schumann"
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 16, Vol. 1"
  tagline = ""
}
  \score {
    <<
      \scorePViolinPart
      \scorePPianoPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 17 / Q
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalQ = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreQViolin = \relative c'' {
  \global
  % Music follows here.
c
}

scoreQRight = \relative c'' {
  \global
  % Music follows here.

}

scoreQLeft = \relative c' {
  \global
  % Music follows here.

}

scoreQViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreQViolin

scoreQPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreQRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreQLeft }
>>

\bookpart {
\header {
  title = "Gavotte"
  composer = "F.J. Gossec"
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 17, Vol. 1"
  tagline = ""
}
  \score {
    <<
      \scoreQViolinPart
      \scoreQPianoPart
    >>
    \layout { }
    \midi { }
  }
}
