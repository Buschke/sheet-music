\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Style Clarinet School"
  subsubtitle = "Volume 1"
  instrument = "Klarinette"
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
  \key d \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreAClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Klarinette"
      shortInstrumentName = "Kl."
      midiInstrument = "clarinet"
    } \scoreAClarinet
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 2 / B
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalB = {
  \key d \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreBClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Klarinette"
      shortInstrumentName = "Kl."
      midiInstrument = "clarinet"
    } \scoreBClarinet
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 3 / C
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \key d \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreCClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Klarinette"
      shortInstrumentName = "Kl."
      midiInstrument = "clarinet"
    } \scoreCClarinet
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 4 / D
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalD = {
  \key d \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreDClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Klarinette"
      shortInstrumentName = "Kl."
      midiInstrument = "clarinet"
    } \scoreDClarinet
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 5 / E
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalE = {
  \key d \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreEClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Klarinette"
      shortInstrumentName = "Kl."
      midiInstrument = "clarinet"
    } \scoreEClarinet
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 6 / F
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalF = {
  \key d \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreFClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Klarinette"
      shortInstrumentName = "Kl."
      midiInstrument = "clarinet"
    } \scoreFClarinet
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 7 / G
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalG = {
  \key d \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreGClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Klarinette"
      shortInstrumentName = "Kl."
      midiInstrument = "clarinet"
    } \scoreGClarinet
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 8 / H
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalH = {
  \key d \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreHClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Klarinette"
      shortInstrumentName = "Kl."
      midiInstrument = "clarinet"
    } \scoreHClarinet
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 9 / I
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalI = {
  \key d \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreIClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Klarinette"
      shortInstrumentName = "Kl."
      midiInstrument = "clarinet"
    } \scoreIClarinet
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 10 / J
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalJ = {
  \key d \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreJClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Klarinette"
      shortInstrumentName = "Kl."
      midiInstrument = "clarinet"
    } \scoreJClarinet
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 11 / K
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalK = {
  \key d \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreKClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Klarinette"
      shortInstrumentName = "Kl."
      midiInstrument = "clarinet"
    } \scoreKClarinet
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 12 / L
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalL = {
  \key d \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreLClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Klarinette"
      shortInstrumentName = "Kl."
      midiInstrument = "clarinet"
    } \scoreLClarinet
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 13 / M
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalM = {
  \key d \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreMClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Klarinette"
      shortInstrumentName = "Kl."
      midiInstrument = "clarinet"
    } \scoreMClarinet
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 14 / N
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalN = {
  \key d \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreNClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Klarinette"
      shortInstrumentName = "Kl."
      midiInstrument = "clarinet"
    } \scoreNClarinet
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 15 / O
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalO = {
  \key d \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreOClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Klarinette"
      shortInstrumentName = "Kl."
      midiInstrument = "clarinet"
    } \scoreOClarinet
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 16 / P
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalP = {
  \key d \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scorePClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Klarinette"
      shortInstrumentName = "Kl."
      midiInstrument = "clarinet"
    } \scorePClarinet
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 17 / Q
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalQ = {
  \key d \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreQClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Klarinette"
      shortInstrumentName = "Kl."
      midiInstrument = "clarinet"
    } \scoreQClarinet
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 18 / R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalR = {
  \key d \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreRClarinet = \relative c'' {
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
  opus = "Suzuki No. , Vol. 1"
  tagline = ""
}
  \score {
    \new Staff \with {
      instrumentName = "Klarinette"
      shortInstrumentName = "Kl."
      midiInstrument = "clarinet"
    } \scoreRClarinet
    \layout { }
    \midi { }
  }
}
