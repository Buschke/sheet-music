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
  <<{d4->-4}\\{b8-2( g)}>>  <c-1 e-3>8-.\mp <d f>-.|
  <e-1 g-3>-. <e g>-. a16-4( g f e)|
  <b-2 d-4>4-> <a-1 c-.-3>8 <b d-.>|
  <c-1 e-3-.> <c e-.> f16-4( e d c)|
  <<{b4->-4}\\{gs8-2( e)}>> <a-1 c-.-3>8 <b d-.>|
  <c-1 e-3-.> <c e-.> f16-4( e d c)|
  <gs---2 b->-4>4 b16-4\p( a gs a-1|
  c8-.-3) r d16-3( c b c|
  e8-.-4) r f16-4( e ds e-1|
  b'\cresc-4 a gs a b a gs a|
  c4\sfz) a8-.-2\p b-.|
  c->-. b-. a-.-1 gs-.-2|
  a-. e-. f-.-4 d-.-2|
  c4-- <<{b8.\trill-2( a32 b| a4--)}\\{\magnifyMusic 0.63 {b32 c b c \tuplet 3/2 { b c b } a32 b|s4}}>>|
}

scoreCRightC = \relative c'' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
  \key a \major
  \partial 4
  <a a'>8-.\f <b b'>-.|
  <cs cs'>4->^\markup {\italic ten.} <a a'>8-. <b b'>-.|
  <cs cs'>->-. <b b'>-. <a a'>-. <gs gs'>-.|
  <fs fs'>-. <gs gs'>-. <a a'>-. <b b'>-.|
  <gs gs'>-. <e e'>-. <a a'>-. <b b'>-.|
  <cs cs'>4->^\markup {\italic ten.} <a a'>8-. <b b'>-.|
  <cs cs'>-. <b b'>-. <a a'>-. <gs gs'>-.|
  <fs fs'>-. <b b'>-. <gs gs'>-. <e e'>-.|
  <a a'>4^\markup {\italic ten.}
}

scoreCRightD = \relative c'' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
  \partial 4
  cs'16\p-3( d cs b|
  a b a gs-3 fs a gs fs|
  es fs gs es cs-2 ds es cs)|
  fs\<-4( es-1 fs gs a gs a-1 b|
  cs\> bs cs bs cs d cs b)|
  a\!( b a gs-3 fs a gs fs|
  e fs gs e cs-2 ds e cs|
  ds-3 e fs ds bs-1 cs ds bs|
  cs4--)
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
  g,4 r|
  c,8-. c'-. e,-. e'-.|
  g,4 r|
  a,8-. a'-. c,-. c'-.|
  e,4 r|
  a,8-. a'-. c,-. c'-.|
  e,4 r|
  a8-5( <c e>8-.) 8-. 8-.|
  a( <c e>8-.) 8-. 8-.|
  a-. <c e>8-. a-. <c e>-.|
  f,( <a ds-.>\p) <a ds-.> <a ds-.>|
  e-. <a e'-.> d,-. <f b-.>|
  c-. <e a-.> d-. <f b-.>
  <e-4 a-.-1> <e a-.> <e-4 gs-.-2> <e gs-.>|
  <a, a'-->4
}

scoreCLeftC = \relative c' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
  \key a \major
  \partial 4
  r4|
  \appoggiatura {a,32 cs e} a8-.-> a-.-3 a-.-2 a-.-1
  \appoggiatura {a,32 cs e} a8-.-> a-.-3 a-.-2 a-.-1
  \appoggiatura {d,,32-5 fs-3 a} d8->-.-1 d-.-2 \appoggiatura {ds,32-5 fs-4 a} ds8->-.-1 ds-.-2
  \appoggiatura {e,32-5 gs-3 b} e8->-.-1 e-.-2 e-.-1 e-.-2
  \appoggiatura {a,32 cs e} a8-.-> a-.-3 a-.-2 a-.-1
  \appoggiatura {a,32 cs e} a8-.-> a-.-3 a-.-2 a-.-1
  \appoggiatura {d,,32 fs a} d8-.-> d-. \appoggiatura {e,32 gs b} e8-. e-.
  a,4^\markup {\italic ten.}
}

scoreCLeftD = \relative c' {
  \set fingeringOrientations = #'(up)
  % Music follows here.
  \partial 4
  r4|
  fs,8-5( <a cs>-.) <a cs>-. <a cs>-.|
  gs-4( <b cs>-.) <b cs>-. <b cs>-.|
  fs8( <a cs>-.) <a cs>-. <a cs>-.|
  es8( <gs cs>-.) <gs cs>-. <gs cs>-.|
  fs8( <a cs>-.) <a cs>-. <a cs>-.|
  gs8( <cs e>-.) <cs e>-. <cs e>-.|
  gs8( <ds' fs>-.) <ds fs>-. <ds fs>-.|
  <cs e>4--
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
