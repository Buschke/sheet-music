\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Style Trumpet School"
  subsubtitle = "Volume 1"
  instrument = "Trumpet"
  composer = ""
  arranger = \markup {"Fingering: " \with-url "https://buschke.com" "Sven Buschke"}
  poet = ""
  meter = ""
  piece = ""
  opus = "No. 1"
  copyright = \markup {"© Fingering, 03.05.2023: " \with-url "https://buschke.com" "Sven Buschke"}
%  tagline = ""
  % Remove default LilyPond tagline
  tagline = ##f
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 1 / A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreATrumpetBb = \relative c'' {
  \globalA
  \transposition bf
  % Music follows here.
  a4-.\f a-. e'-. e-. fs-. fs-. e2-- d4-. d-. cs-. cs-. b-. b-. a2--
  e'4-. e-. d-. d-. cs-. cs-. b2-- e4-. e-. d-. d-. cs-. cs-. b2--
  a4-. a-. e'-. e-. fs-. fs-. e2-- d4-. d-. cs-. cs-. b-. b-. a2--
  \bar "|."
}

\bookpart {
  \header {
    title = "Twinkle, Twinkle, Little Star"
    composer = "Traditional"
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 1, Vol. 1"
    tagline = ""
  }
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreATrumpetBb
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

scoreBTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreBTrumpetBb
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

scoreCTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreCTrumpetBb
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

scoreDTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreDTrumpetBb
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

scoreETrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreETrumpetBb
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

scoreFTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreFTrumpetBb
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

scoreGTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreGTrumpetBb
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

scoreHTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreHTrumpetBb
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

scoreITrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreITrumpetBb
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

scoreJTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreJTrumpetBb
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

scoreKTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreKTrumpetBb
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

scoreLTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreLTrumpetBb
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

scoreMTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreMTrumpetBb
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

scoreNTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreNTrumpetBb
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
  \tempo "Andante" 4=100
}

scoreOTrumpetBb = \relative c'' {
  \globalO
  \transposition bf
  % Music follows here.
  \repeat volta 2 {
    d4(g,8 a b c d4-.) g,-. g-.
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

\bookpart {
  \header {
    title = "Minuet 3"
    composer = "Johann Sebastian Bach"
    poet = "Bach: 21.03.1685-28.07.1750"
    meter = ""
    piece = ""
    opus = "Suzuki No. 15, Vol. 1"
    tagline = ""
  }
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreOTrumpetBb
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

scorePTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scorePTrumpetBb
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

scoreQTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreQTrumpetBb
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 18 / R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalR = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreRTrumpetBb = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 1"
  tagline = ""
}
\score {
    \new Staff \with {
      instrumentName = "Trompete in B"
      shortInstrumentName = "Tr.B"
      midiInstrument = "trumpet"
    } \scoreRTrumpetBb
    \layout { }
    \midi { }
  }
}
