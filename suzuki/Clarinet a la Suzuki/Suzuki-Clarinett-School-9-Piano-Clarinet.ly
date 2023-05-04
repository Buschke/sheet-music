\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Style Clarinet School"
  subsubtitle = "Volume 1"
  instrument = "Klarinette und Piano"
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

scoreARight = \relative c'' {
  \global
  % Music follows here.

}

scoreALeft = \relative c' {
  \global
  % Music follows here.

}

scoreAClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreAClarinet

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
  \score {
    <<
      \scoreAClarinetPart
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

scoreBRight = \relative c'' {
  \global
  % Music follows here.

}

scoreBLeft = \relative c' {
  \global
  % Music follows here.

}

scoreBClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreBClarinet

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
  \score {
    <<
      \scoreBClarinetPart
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

scoreCRight = \relative c'' {
  \global
  % Music follows here.

}

scoreCLeft = \relative c' {
  \global
  % Music follows here.

}

scoreCClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreCClarinet

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
  \score {
    <<
      \scoreCClarinetPart
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

scoreDRight = \relative c'' {
  \global
  % Music follows here.

}

scoreDLeft = \relative c' {
  \global
  % Music follows here.

}

scoreDClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreDClarinet

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
  \score {
    <<
      \scoreDClarinetPart
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

scoreERight = \relative c'' {
  \global
  % Music follows here.

}

scoreELeft = \relative c' {
  \global
  % Music follows here.

}

scoreEClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreEClarinet

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
  \score {
    <<
      \scoreEClarinetPart
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

scoreFRight = \relative c'' {
  \global
  % Music follows here.

}

scoreFLeft = \relative c' {
  \global
  % Music follows here.

}

scoreFClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreFClarinet

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
  \score {
    <<
      \scoreFClarinetPart
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

scoreGRight = \relative c'' {
  \global
  % Music follows here.

}

scoreGLeft = \relative c' {
  \global
  % Music follows here.

}

scoreGClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreGClarinet

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
  \score {
    <<
      \scoreGClarinetPart
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

scoreHRight = \relative c'' {
  \global
  % Music follows here.

}

scoreHLeft = \relative c' {
  \global
  % Music follows here.

}

scoreHClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreHClarinet

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
  \score {
    <<
      \scoreHClarinetPart
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

scoreIRight = \relative c'' {
  \global
  % Music follows here.

}

scoreILeft = \relative c' {
  \global
  % Music follows here.

}

scoreIClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreIClarinet

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
  \score {
    <<
      \scoreIClarinetPart
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

scoreJRight = \relative c'' {
  \global
  % Music follows here.

}

scoreJLeft = \relative c' {
  \global
  % Music follows here.

}

scoreJClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreJClarinet

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
  \score {
    <<
      \scoreJClarinetPart
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

scoreKRight = \relative c'' {
  \global
  % Music follows here.

}

scoreKLeft = \relative c' {
  \global
  % Music follows here.

}

scoreKClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreKClarinet

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
  \score {
    <<
      \scoreKClarinetPart
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

scoreLRight = \relative c'' {
  \global
  % Music follows here.

}

scoreLLeft = \relative c' {
  \global
  % Music follows here.

}

scoreLClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreLClarinet

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
  \score {
    <<
      \scoreLClarinetPart
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

scoreMRight = \relative c'' {
  \global
  % Music follows here.

}

scoreMLeft = \relative c' {
  \global
  % Music follows here.

}

scoreMClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreMClarinet

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
  \score {
    <<
      \scoreMClarinetPart
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

scoreNRight = \relative c'' {
  \global
  % Music follows here.

}

scoreNLeft = \relative c' {
  \global
  % Music follows here.

}

scoreNClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreNClarinet

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
  \score {
    <<
      \scoreNClarinetPart
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

scoreORight = \relative c'' {
  \global
  % Music follows here.

}

scoreOLeft = \relative c' {
  \global
  % Music follows here.

}

scoreOClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreOClarinet

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
  \score {
    <<
      \scoreOClarinetPart
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

scorePRight = \relative c'' {
  \global
  % Music follows here.

}

scorePLeft = \relative c' {
  \global
  % Music follows here.

}

scorePClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scorePClarinet

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
  \score {
    <<
      \scorePClarinetPart
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

scoreQRight = \relative c'' {
  \global
  % Music follows here.

}

scoreQLeft = \relative c' {
  \global
  % Music follows here.

}

scoreQClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreQClarinet

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
  \score {
    <<
      \scoreQClarinetPart
      \scoreQPianoPart
    >>
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

scoreRRight = \relative c'' {
  \global
  % Music follows here.

}

scoreRLeft = \relative c' {
  \global
  % Music follows here.

}

scoreRClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreRClarinet

scoreRPianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \scoreRRight
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \scoreRLeft }
>>

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
    <<
      \scoreRClarinetPart
      \scoreRPianoPart
    >>
    \layout { }
    \midi { }
  }
}
