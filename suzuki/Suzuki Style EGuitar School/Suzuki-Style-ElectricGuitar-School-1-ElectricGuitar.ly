\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Style Electric Guitar School"
  subsubtitle = "Volume 1"
  instrument = "E-Gitarre"
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
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreAElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric guitar (clean)"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } { \clef "treble_8" \scoreAElectricGuitar }
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

scoreBElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric guitar (clean)"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } { \clef "treble_8" \scoreBElectricGuitar }
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

scoreCElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric guitar (clean)"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } { \clef "treble_8" \scoreCElectricGuitar }
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

scoreDElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric guitar (clean)"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } { \clef "treble_8" \scoreDElectricGuitar }
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

scoreEElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric guitar (clean)"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } { \clef "treble_8" \scoreEElectricGuitar }
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

scoreFElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric guitar (clean)"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } { \clef "treble_8" \scoreFElectricGuitar }
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

scoreGElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric guitar (clean)"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } { \clef "treble_8" \scoreGElectricGuitar }
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

scoreHElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric guitar (clean)"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } { \clef "treble_8" \scoreHElectricGuitar }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 9 / J
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalJ = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreIElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric guitar (clean)"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } { \clef "treble_8" \scoreIElectricGuitar }
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

scoreJElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric guitar (clean)"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } { \clef "treble_8" \scoreJElectricGuitar }
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

scoreKElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric guitar (clean)"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } { \clef "treble_8" \scoreKElectricGuitar }
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

scoreLElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric guitar (clean)"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } { \clef "treble_8" \scoreLElectricGuitar }
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

scoreMElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric guitar (clean)"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } { \clef "treble_8" \scoreMElectricGuitar }
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

scoreNElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric guitar (clean)"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } { \clef "treble_8" \scoreNElectricGuitar }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 15 / O
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalO = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreOElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric guitar (clean)"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } { \clef "treble_8" \scoreOElectricGuitar }
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

scorePElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric guitar (clean)"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } { \clef "treble_8" \scorePElectricGuitar }
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

scoreQElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric guitar (clean)"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } { \clef "treble_8" \scoreQElectricGuitar }
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

scoreRElectricGuitar = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}
  \score {
    \new Staff \with {
      midiInstrument = "electric guitar (clean)"
      instrumentName = "Electric guitar"
      shortInstrumentName = "E.Gt."
    } { \clef "treble_8" \scoreRElectricGuitar }
    \layout { }
    \midi { }
  }
}
