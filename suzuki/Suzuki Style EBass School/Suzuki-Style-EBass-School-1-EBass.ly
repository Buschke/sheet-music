\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Style Electric Bass School"
  subsubtitle = "Volume 1"
  instrument = "E-Bass"
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
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreAElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } { \clef "bass_8" \scoreAElectricBass }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreBElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } { \clef "bass_8" \scoreBElectricBass }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreCElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } { \clef "bass_8" \scoreCElectricBass }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreDElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } { \clef "bass_8" \scoreDElectricBass }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreEElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } { \clef "bass_8" \scoreEElectricBass }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreFElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } { \clef "bass_8" \scoreFElectricBass }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreGElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } { \clef "bass_8" \scoreGElectricBass }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreHElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } { \clef "bass_8" \scoreHElectricBass }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreIElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } { \clef "bass_8" \scoreIElectricBass }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreJElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } { \clef "bass_8" \scoreJElectricBass }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreKElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } { \clef "bass_8" \scoreKElectricBass }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreLElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } { \clef "bass_8" \scoreLElectricBass }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreMElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } { \clef "bass_8" \scoreMElectricBass }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreNElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } { \clef "bass_8" \scoreNElectricBass }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreOElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } { \clef "bass_8" \scoreOElectricBass }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scorePElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } { \clef "bass_8" \scorePElectricBass }
    \layout { }
    \midi { }
  }
}

scoreQElectricBass = \relative c, {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new Staff \with {
      midiInstrument = "electric bass (finger)"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } { \clef "bass_8" \scoreQElectricBass }
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreRElectricBass = \relative c, {
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
      midiInstrument = "electric bass (finger)"
      instrumentName = "Elektrischer Bass"
      shortInstrumentName = "E.Bs."
    } { \clef "bass_8" \scoreRElectricBass }
    \layout { }
    \midi { }
  }
}
