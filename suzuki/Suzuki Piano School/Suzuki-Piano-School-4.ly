\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Piano School"
  subsubtitle = "Volume 4"
  instrument = "Piano"
  composer = ""
  arranger = \markup {"Fingering: " \with-url #"https://buschke.com" "Sven Buschke"}
  poet = ""
  meter = ""
  piece = ""
  opus = "No. 1"
  copyright = \markup {"© Fingering, 03.05.2023: " \with-url #"https://buschke.com" "Sven Buschke"}
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
%  \numericTimeSignature
  \time 6/8
  \tempo "Allegro" 4=132
}

scoreARight = \relative c'' {
  \globalA
  % Music follows here.
  g'4.-2\p g8-.\< g-. g-. c4\!\( g8 e\) r r
  g4-5\(e8 \acciaccatura {d} c b-2 c-3 d4-4\> b8 g\!\) r r
  g'4.-2 g8-.\< g-. g-. c4\!\( g8 e\) r r
  g4-5\(e8 \acciaccatura {e} d\> c d c4\!\) r8 r4 r8
  g'4.-2\f g8-. g-. g-. c4\( g8 e\) r r
  g4-5\(e8 \acciaccatura {d} c b-2 c-3 d4-4\> b8 g\!\) r r
  \appoggiatura {g32 c-2 e-4} g4.\(\f fs16-2 g fs g fs g c4 g8 e\) r r
  g4-5\(e8 \acciaccatura {e} d\> c d c4\!\) r8 r4 r8
  g8\p\(f'\) f-.-4 g16\<\(f e d c b-2\! c8-1 c'-5\) c-.-4 c16-5\>\(b a g f e-2 g8-4\! f\) f-. g16-5\(f e d c b-2 c-3\< g c-2 e-4 g e-3 d8-.\) e-. f-.
  g4.\(\f fs16-2 g fs g fs g c4 g8 e\) r r
  g4-5\(e8 \acciaccatura {e} d\> c d c4\!\) r8 \appoggiatura {e8} d\(c d e4\) r8
  \appoggiatura {c-3}b-.\f a-. b-.
  c-. <e, g c>8-. 8-. 4 r8
  \bar "|."
}

scoreALeft = \relative c' {
  \globalA
  % Music follows here.
  \clef treble
  \override Fingering.direction=#DOWN
  c8-4_\markup{\italic "legato"} e g c, e g
  c, e g c, e g
  c, e g c, e g
  g,-5 d' g g, d' g
  c, e g c, e g
  c, e g c, e g
  c, e g g, d' g
  \clef bass
  c,,-5 e-4 g-2 c g e
  <<{c2.}\\{c8 e g c g e}>>
  <<{c2.}\\{c8 e g c g e}>>
  <<{c2.}\\{c8 e g c g e}>>
  <<{g,2.-5}\\{g8 b-4 d g d b}>>
  <<{c2.-5}\\{c8 e-4 g c g e}>>
  <<{c2.}\\{c8 e g c g e}>>
  <<{c4.-5 g}\\{c8 e-3 g g, d'-2 g}>>
  c,-.-5 g'-.-1 f-. e-.-1 d-.-2 c-.-3
  <g g'>4 8 r <g' d' f>8 8
  <g c e>4 r8 r8 8 8 <g b d>4 r8 r8 <g d' f>8 8
  <g c e>4 <g c>8-. <g b>4 r8
  <<{c,2.}\\{c8 e g c g e}>>
  <<{c2.}\\{c8 e g c g e}>>
  <<{c4.-4 g}\\{c8 e g g, d' g}>>
  <<{c,4.-4 g}\\{c8 e g g, d' g}>>
  <<{c,4.-4 g}\\{c8 e g g, d' g}>>
  c,,-.-5 e-.-4 g-.-2 c4 r8
  \bar "|."
    
}

\bookpart {
\header {
  title = "Rondo"
  composer = \markup {\with-url #"" "Wolfgang Amadeus Mozart"}
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 4"
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
  \key g \major
%  \numericTimeSignature
  \time 2/2
  \tempo "Allegro, ma non troppo" 2=42
}

scoreFRight = \relative c'' {
  \globalF
  % Music follows here.
  \repeat volta 2 {
     \set fingeringOrientations = #'(left) <b,-1 d-2 g-5>2\f
     \override Fingering.direction = #DOWN \tuplet 3/2 { d8-1(g-2 b-3 } \tuplet 3/2 { d-5 c-4 a-2 }
    g4-1) g-3\p(fs-2 g-1 a4.-2) a8-1(b4.-2) <<{\override NoteHead.color = #red \override NoteHead.font-size = #-3 s8 s4 c32[d c d] c16[d] s4 \revert NoteHead.color \revert NoteHead.font-size}\\{b8-1\(d4-3 \afterGrace c-2\trill({c16-1[d-3])} b4-2\)}>>\< r
    <b d g>2\f \tuplet 3/2 { d8 g b } \tuplet 3/2 { d c a } g4 g fs g a4. a8 b4. b8
    d4 c b8(c cs d ds e) r e d c b a cs d r d c b a g fs e d c b a g fs g4. a8 b c cs d ds e r e d c b a ds e r e e cs a g fs4 \tuplet 3/2 { a'8 fs d } c4 \tuplet 3/2 { a'8 fs c } b4 \tuplet 3/2 { g'8 d b } g4 \tuplet 3/2 { d'8 b g } fs4 \tuplet 3/2 { a'8 fs d } c4 \tuplet 3/2 { a'8 fs c } b4 \tuplet 3/2 { g'8 d b } g4 \tuplet 3/2 { d'8 b g }
    d4 \tuplet 3/2 { d'8 b g } d4 \tuplet 3/2 { d'8 b g } d4 r r8 a' a a d4 cs d e g8 fs e4 r8 a, a a
    e'4 d <cs e> <d fs> <e a>8 g <d fs>4 r8 a' g fs fs e e e d a' g fs fs e e e d  a' g fs fs e r e e d r d d cs b a gs a b cs d4 cs d e <d g>8 fs <cs e>4 r8 a a a
    e'4 d <cs e> <d fs> <e a>8 g <d fs>4 r8 a' g fs fs e e e d a' g fs fs e e e d a' g fs fs e g e e d d cs \tuplet 3/2 { a' g fs } \tuplet 3/2 { e d cs } \tuplet 3/2 { b a g } \tuplet 3/2 { fs e d } cs4 cs cs cs
    \tuplet 3/2 { d8 e fs } \tuplet 3/2 { g a b } \tuplet 3/2 { cs d e } \tuplet 3/2 { fs g a }
    g4 g g g \tuplet 3/2 { a8 g fs } \tuplet 3/2 { e d cs } \tuplet 3/2 { b a g } \tuplet 3/2 { fs e d }
    c4 c c c
    \tuplet 3/2 { b8 e g } \tuplet 3/2 { b g e } d4 e \tuplet 3/2 { d8 e fs } \tuplet 3/2 { g a b } \tuplet 3/2 { cs d e } \tuplet 3/2 { fs g a }
    <g b>1 <fs a>4 <e g> <d fs> <cs e>
    \tuplet 3/2 { a'8 g fs } \tuplet 3/2 { e d cs } \tuplet 3/2 { b a g } \tuplet 3/2 { fs e d }
    <g b>1 <d fs>4 <e g> <d fs> <cs e> d \tuplet 3/2 { a''8 fs d } cs4 \tuplet 3/2 { g'8 e cs } d4
    \tuplet 3/2 { a8 fs d } cs4 \tuplet 3/2 { g'8 e cs } d4 \tuplet 3/2 { g8 e cs } d4 \tuplet 3/2 { g8 e cs } d4 <fs a d>4 4 r
  }
}

scoreFLeft = \relative c' {
  \globalF
  % Music follows here.
  \repeat volta 2 {
    <g,-5 g'-1>2 r
    r4 b'-1 a-2 g-1 fs-2 d-4 g-1 f-2 e-3 fs-2 g8-1 g-5 b-4 d-3 <g,-5 g'-1>2 r
    \clef treble
    r4 b'8 d a d g, d' fs, d' d, d' g, d' f, d' e, g fs a g4 r
    r <c, e a> r2 r4 <b d g> r2
    \clef bass
    c4 r d r g, r r2
    r4 <c, e a> r2
    r4 <cs e a> r2
    \tuplet 3/2 { d8 fs a } \tuplet 3/2 {  d, fs a } \tuplet 3/2 {  d, fs a } \tuplet 3/2 {  d, fs a }
    \tuplet 3/2 { d, g b } \tuplet 3/2 { d, g b } \tuplet 3/2 { d, g b } \tuplet 3/2 { d, g b }
    \tuplet 3/2 { d, fs a } \tuplet 3/2 {  d, fs a } \tuplet 3/2 {  d, fs a } \tuplet 3/2 {  d, fs a }
    \tuplet 3/2 { d, g b } \tuplet 3/2 { d, g b } \tuplet 3/2 { d, g b } \tuplet 3/2 { d, g b }
    \tuplet 3/2 { d, fs a } \tuplet 3/2 {  d, g a } \tuplet 3/2 {  d, fs a } \tuplet 3/2 {  d, g a }
    <d, fs>4 r r2
    \clef treble
    fs'8 a g a fs a cs, a' d, a' cs, a' a,4  r
    g'8 a fs a e a d, a' cs, a' d, a' d,4 r
    <g b>2 <fs a>4 r
    <g b>2 <fs a>4 r
    r g r gs a a, r2
    fs'8 a g a fs a cs, a' d, a' cs, a' a,4  r
    g'8 a fs a e a d, a' cs, a' d, a' d,4 r
    <g b>2 <fs a>4 r
    <g b>2 <fs a>4 r
    \clef bass
    r g, a a, d r r2
    \tuplet 3/2 { e8 g a } \tuplet 3/2 { e g a } \tuplet 3/2 { e g a } \tuplet 3/2 { e g a } <d, fs>4 r r2
    \tuplet 3/2 { cs8 e a } \tuplet 3/2 { cs, e a } \tuplet 3/2 { cs, e a } \tuplet 3/2 { cs, e a } d,4 r r2
    \tuplet 3/2 { d8 fs a } \tuplet 3/2 { d, fs a } \tuplet 3/2 { d, fs a } \tuplet 3/2 { d, fs a }
    g,2 a4 a <d fs> r r2
    \clef treble
    \tuplet 3/2 { r8 g a } \tuplet 3/2 { b cs d } \tuplet 3/2 { e fs g } \tuplet 3/2 { a b cs } d4 g, a a, r1
    \clef bass
    \tuplet 3/2 { r8 g, a } \tuplet 3/2 { b cs d } \tuplet 3/2 { e fs g } \tuplet 3/2 { a b cs } d4 g, a a,
    \tuplet 3/2 { d8 fs a } \tuplet 3/2 { d, fs a } \tuplet 3/2 { d, g a } \tuplet 3/2 { d, g a }
    \tuplet 3/2 { d,8 fs a } \tuplet 3/2 { d, fs a } \tuplet 3/2 { d, g a } \tuplet 3/2 { d, g a }
    \tuplet 3/2 { d, fs a } \tuplet 3/2 { d, g a } \tuplet 3/2 { d, fs a } \tuplet 3/2 { d, g a }
    <d, fs>4 <d, d'> <d d'> r
  }
}

\bookpart {
\header {
  title = "Sonata"
  composer = \markup {\with-url #"" "Ludwig van Beethoven"}
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 6, Vol. 4 / Op. 49 Nr. 2"
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreIRight = \relative c'' {
  \global
  % Music follows here.

}

scoreILeft = \relative c' {
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
