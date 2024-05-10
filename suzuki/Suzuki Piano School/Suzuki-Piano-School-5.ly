\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Piano School"
  subsubtitle = "Volume 5"
  instrument = "Piano"
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 1 / A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key c \major
  \numericTimeSignature
  \time 3/8
  \tempo "Poco moto" 4=80
}

scoreARight = \relative c'' {
  \globalA
  % Music follows here.
  \repeat volta 2 {
    \partial 8
    \phrasingSlurDotted \(e16-5\pp\< ds e ds e b\!\> d-4 c\! a8-1\)
    r16 c,-1\( e-2 a-4 b8\) r16 e,-1\( gs-2 b-4 c8\) r16 e,\(e'-5 ds e ds e b d-4 c a8\)
    r16 c,-1\( e-2 a-4 b8\) r16 e,-1\=1\(\=2\(c' b
   \alternative {{  
  a4\=1\)} {a8\=2\) r16 b-2\<\(c d
   }}
  }
  e8.\mf\) g,16\(f' e d8.\)
}

scoreALeft = \relative c' {
  \globalA
  % Music follows here.
  \repeat volta 2 {
    \partial 8
    r8
    r4.
    \phrasingSlurDotted a,16\(\sustainOn e' a\)r\sustainOff r8
    e,16\(\sustainOn e'-1 gs-2\) r\sustainOff r8
    a,16\(\sustainOn e' a\)r\sustainOff r8
    r4.
    a,16\(\sustainOn e' a\)r\sustainOff r8
    e,16\(\sustainOn e' gs\) r\sustainOff r8
   \alternative {{a,16\(\sustainOn e' a\)r\sustainOff}
                 { a,16\(\sustainOn e' a\)r\sustainOff r8}
   }
  }
   c,16\(\sustainOn g' c\) r\sustainOff r8
}

\bookpart {
\header {
  title = "Für Elise"
  composer = \markup {\with-url #"" "Ludwig van Beethoven"}
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 5 / WoO 59"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
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

scoreBRight = \relative c'' {
  \global
  % Music follows here.

}

scoreBLeft = \relative c' {
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
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
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

scoreCRight = \relative c'' {
  \global
  % Music follows here.

}

scoreCLeft = \relative c' {
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
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
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

scoreDRight = \relative c'' {
  \global
  % Music follows here.

}

scoreDLeft = \relative c' {
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
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
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

scoreERight = \relative c'' {
  \global
  % Music follows here.

}

scoreELeft = \relative c' {
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
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
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

scoreFRight = \relative c'' {
  \global
  % Music follows here.

}

scoreFLeft = \relative c' {
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
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
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

scoreGRight = \relative c'' {
  \global
  % Music follows here.

}

scoreGLeft = \relative c' {
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
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
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

scoreHRight = \relative c'' {
  \global
  % Music follows here.

}

scoreHLeft = \relative c' {
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
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
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
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 9 / I
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalI = {
  \key c \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro" 4=100
}

scoreIRight = \relative c'' {
  \globalI
  % Music follows here.
  r16 c,-1\f\phrasingSlurDotted\(d e f d e c g'8-5\) c-4 b-3\prall c
  d16 g,\(a b c a b g d'8-5\) g-4 f-3\prall g
  e16-1 a\(g f e g f a g\) f\(e d-2 c e d f e\) \(d c b-2 a c b d c\<\) b\(a g-3 fs a g b
  a8\!\) d, c'8.\mordent d16 
  b a\(g-3 fs e g\cresc fs a g-1 b a-2 c b-1 d c-2 e d\f\) b32 c d16 g b,8-4\prall\> a16-2 g g8\p r r4 r16 g\(a b c a b g
  fs8-3\prall r r4 r16 a-1\(b c d b c a
  b8\) r r4 r16 d-4\(c b a b b d
  c8\) r r4 r16 e-4\(d c b d cs e
  d8\) cs\(d e f\) a,\(b c d\) fs,-2\(gs a-1 b-2 c d4~\)
  d16 e,\(fs gs a fs gs e e' d c e d c b d
  c-1\f\) a'-4\(gs b a e-1 f-4 d-2 gs,\) f' e d c8-4\prall\> b16-2 a
  a-1\p a'-4\(g f e g f a g2~\)
  g16 e\(f g a f g e f2~\)
  f16 g-4\(f e d f e g f2~\)
  f16 d\(e f g e f d e2~\)
  e16 c\(d e f d e c d-2 e-1 f g a f g e
  f-2\) g-1\(a b c a b g c8-5\f\) g-2 e-4\prall d16-2 c
  c-1 bf-4\(a g f a g bf a b c e,-2 d-1 c' f,-1 b-4
  <e, g c>1\)\arpeggio\fermata
}

scoreILeft = \relative c' {
  \globalI
  % Music follows here.
  r2 r16 \phrasingSlurDotted c,-4\(d e f d e c g'8\) g, r4 r16 g'-4\(a b c a b g
  c8\) b-4\(c d e\) g,-4\(a b
  c\) e,-4\(fs g a b-2 c4~\)
  c16 d,\(e fs g e fs d g8\) b,-4\(c d e fs-2 g e-2\)
  b8. c16-3 d8-1 d,
  r16 g-4\(a b c a b g d'8-1\) g-2 fs g
  a16 d,-4\(e fs g e fs d a'8-1\) d-2 c d
  \clef treble
  g,16 g'\(f e d f e g f8\) e f d
  e16-4 a\(g f e g f a g8\) f g e-5
  f16 bf-1\( a g f a g bf
  a-2\) g-1\(f e d-4 f e g
  f-2\)
  e-1\(d c b-4 d c e
  \clef bass
  d-2\) c-1\(b a gs b a-3 c
  b8\) e, d'8.-2\mordent e16 c-2 b-1\(a g  fs a gs b a-3 c b-3 d c-3 e d-3 f e8\) a, e'-1 e, a-1 a, r4
  r16 e''\(d c b d cs e d2~\) d16 a-4\( b c d b c a
  b2~\) b16 d\(c b a c b d c2~\) c16 g-4\(a bf c a bf g
  a8\) bf\(a g f\) d'\(c bf a\) f'\(e d
  e16-1\) d,-4\(e f g e f d
  e8\) c\(d e f16 d e f g8\) g,-3
  <c, c'>1\arpeggio\fermata
  \bar "|."
}

\bookpart {
\header {
  title = "Invention No. 1"
  composer = \markup {\with-url #"" "Johann Sebastian Bach"}
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 7, Vol. 5 / BWV 772"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
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

scoreJRight = \relative c'' {
  \global
  % Music follows here.

}

scoreJLeft = \relative c' {
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
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
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

scoreKRight = \relative c'' {
  \global
  % Music follows here.

}

scoreKLeft = \relative c' {
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
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
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

scoreLRight = \relative c'' {
  \global
  % Music follows here.

}

scoreLLeft = \relative c' {
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
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
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

scoreMRight = \relative c'' {
  \global
  % Music follows here.

}

scoreMLeft = \relative c' {
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
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
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

scoreNRight = \relative c'' {
  \global
  % Music follows here.

}

scoreNLeft = \relative c' {
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
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
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

scoreORight = \relative c'' {
  \global
  % Music follows here.

}

scoreOLeft = \relative c' {
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
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
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

scorePRight = \relative c'' {
  \global
  % Music follows here.

}

scorePLeft = \relative c' {
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
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
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

scoreQRight = \relative c'' {
  \global
  % Music follows here.

}

scoreQLeft = \relative c' {
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
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
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

scoreRRight = \relative c'' {
  \global
  % Music follows here.

}

scoreRLeft = \relative c' {
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
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
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
    \layout { }
    \midi { }
  }
}
