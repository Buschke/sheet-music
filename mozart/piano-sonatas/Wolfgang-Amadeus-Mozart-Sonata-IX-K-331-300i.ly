\version "2.22.2"
\language "english"

\include "articulate.ly"

\header {
  dedication = "To me"
  title = "Sonata IX"
  subtitle = ""
  subsubtitle = ""
  instrument = "Piano"
  composer = "Wolfgang Amadeus Mozart"
  arranger = "Fingering: Sven Buschke"
  poet = ""
  meter = ""
  piece = ""
  opus = "K. 331, 300i"
  copyright = "© Fingering: Sven Buschke, 18.12.2022"
  tagline = "Rock Me Amadeus"
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1st movement: Andante grazioso
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key c \major
  \time 4/4
  \tempo "Andante grazioso" 4=100
}

scoreARight = \relative c'' {
  \globalA
  % Music follows here.

}

scoreALeft = \relative c' {
  \globalA
  % Music follows here.

}

% \bookpart {
%   \score {
%     \new PianoStaff \with {
%       instrumentName = "Piano"
%       shortInstrumentName = "Pno."
%     } <<
%       \new Staff = "right" \with {
%         midiInstrument = "acoustic grand"
%       } \scoreARight
%       \new Staff = "left" \with {
%         midiInstrument = "acoustic grand"
%       } { \clef bass \scoreALeft }
%     >>
%     \layout { }
%     \midi { }
%   }
% }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2nd movement: Menuetto
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalB = {
  \key c \major
  \time 4/4
  \tempo "Andante grazioso" 4=100
}

scoreBRight = \relative c'' {
  \globalB
  % Music follows here.

}

scoreBLeft	 = \relative c' {
  \globalB
  % Music follows here.

}

% \bookpart {
%   \score {
%     \new PianoStaff \with {
%       instrumentName = "Piano"
%       shortInstrumentName = "Pno."
%     } <<
%       \new Staff = "right" \with {
%         midiInstrument = "acoustic grand"
%       } \scoreBRight
%       \new Staff = "left" \with {
%         midiInstrument = "acoustic grand"
%       } { \clef bass \scoreBLeft }
%     >>
%     \layout { }
%     \midi { }
%   }
% }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3rd movement: Alla turca
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \key c \major
  \time 2/4
  \tempo "Allegretto" 4=126
}

scoreCRightA = \relative c'' {
  \globalC
  \set fingeringOrientations = #'(up)
  % Music follows here.
  \partial 4
  b16-4\p( a gs a-1|
  c8-.-3) r d16-3( c b c|
  e8-.-4) r f16-4( e ds e-1|
  b'-4 a gs a b a gs a|
  c4->) a8-.-2 c-4|
  \appoggiatura {g32-2 a} b8-.-> <fs-2 a-4>-. <e g>-. <fs a>-.|
  \appoggiatura {g32-2 a} b8-.-> <fs-2 a-4>-. <e g>-. <fs a>-.|
  \appoggiatura {g32-2 a} b8-.-> <fs-2 a-4>-. <e g>-. <ds-2 fs-4>-.|
  e4--
}

scoreCRightB = \relative c'' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
  \partial 4
  <c-1 e-3>8-.\mp <d f>-.|
  <e-1 g-3>-. <e g>-. a16-4( g f e)|

}

scoreCRightC = \relative c'' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
}

scoreCRightD = \relative c'' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
}

scoreCRightE = \relative c'' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
}

scoreCRightF = \relative c'' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
}

scoreCRightG = \relative c'' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
}

scoreCRightH = \relative c'' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
}

scoreCRightI = \relative c'' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
}

scoreCRightJ = \relative c'' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
}


scoreCLeftA = \relative c' {
  \globalC
  \set fingeringOrientations = #'(up)
  % Music follows here.
  r4|
  a8-5( <c e>8-.) 8-. 8-.
  a( <c e>8-.) 8-. 8-.
  a-. <c e>8-. a-. <c e>-.
  a( <c e>8-.) 8-. 8-.
  e,-.-> <b' e>8-. 8-. 8-.
  e,-.-> <b' e>8-. 8-. 8-.
  e,-.-> <b' e>8-. b,-. b'8-.
  e,4--
}

scoreCLeftB = \relative c' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
  \partial 4
  r4|
  c,8-. c'-. e,-. e'-.|
}

scoreCLeftC = \relative c' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
}

scoreCLeftD = \relative c' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
}

scoreCLeftE = \relative c' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
}

scoreCLeftF = \relative c' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
}

scoreCLeftG = \relative c' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
}

scoreCLeftH = \relative c' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
}

scoreCLeftI = \relative c' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
}

scoreCLeftJ = \relative c' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
}

claveC = \new DrumStaff {\drummode { \globalC <<{hh8 cl hh cl}\\{bd4 sn}>>}}

scoreC =     \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "Pno."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } {\repeat volta 2 {\scoreCRightA}
    \repeat volta 2 {\scoreCRightB}
    \repeat volta 2 {\scoreCRightC}
    \repeat volta 2 {\scoreCRightD}
    \repeat volta 2 {\scoreCRightE}
    \repeat volta 2 {\scoreCRightF}
    \repeat volta 2 {\scoreCRightG}
    \repeat volta 2 {\scoreCRightH}
    \repeat volta 2 {\scoreCRightI}
    \repeat volta 2 {\scoreCRightJ}}
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass {\repeat volta 2 {\scoreCLeftA}
    \repeat volta 2 {\scoreCLeftB}
    \repeat volta 2 {\scoreCLeftC}
    \repeat volta 2 {\scoreCLeftD}
    \repeat volta 2 {\scoreCLeftE}
    \repeat volta 2 {\scoreCLeftF}
    \repeat volta 2 {\scoreCLeftG}
    \repeat volta 2 {\scoreCLeftH}
    \repeat volta 2 {\scoreCLeftI}
    \repeat volta 2 {\scoreCLeftJ}
  } }
>>


\bookpart {
\header {
%  dedication = "NN"
%  title = "Sonata IX"
  subtitle = "Rondo alla Turca"
 subsubtitle = "3rd movement"
%  instrument = "Piano"
%  composer = "Wolfgang Amadeus Mozart"
%  arranger = "Sven Buschke"
%  poet = "NN"
  meter = "Allegretto"
  piece = "C-Dur"
%  opus = "K. 331, 300i"
%  copyright = "Sven Buschke"
%  tagline = "NN"
}

  \score {
    {
      %      \claveC
      \scoreC
    }
    \layout { }
    %    \midi { }
  }
  \score {
    \unfoldRepeats{
      {
        \claveC
        \articulate <<
          \scoreC
        >>
      }
    }
    %    \layout { }
    \midi { }
  }
}
