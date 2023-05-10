\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Violin School"
  subsubtitle = "Volume 1"
  instrument = "Violine"
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
  \key a \major
  %  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreAViolin = \relative c'' {
  \globalA
  % Music follows here.
  a4-.-0\downbow\f a-.\upbow e'-.-0 e-. fs-.-1 fs-. e2---0 d4-.-3 d-. cs-.-2 cs-. b-.-1 b-. a2---0
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
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreAViolin
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

scoreBViolin = \relative c'' {
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
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreBViolin
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

scoreCViolin = \relative c'' {
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
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreCViolin
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

scoreDViolin = \relative c'' {
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
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreDViolin
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

scoreEViolin = \relative c'' {
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
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreEViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 6 / F
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalF = {
  \key a \major
  %  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreFViolin = \relative c'' {
  \globalF
  % Music follows here.
  a4.\f\downbow cs8\upbow e4 a fs a8 fs e2 d4. e8 cs4 a b2 a
  e'4\mf e d d cs e8 cs b2\> e4\p e d d cs e8 cs b2
  a4.\f cs8  e4 a fs a8 fs e2 d4. e8 cs4 a b2 a
}

\bookpart {
  \header {
    title = "May Song"
    composer = "Folk Song"
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 6, Vol. 1"
    tagline = ""
  }
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreFViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 7 / G
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalG = {
  \key a \major
  %\numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreGViolin = \relative c'' {
  \globalG
  % Music follows here.
  a4\mf a8 b cs4 8 d e4 fs8 e cs2 e4\> d8 cs b2\! d4\> cs8 b a2\!
  4 8 b cs4 8 d e4 fs8 e cs2 e4\> d8 cs b4 cs8 b a2\! r
  e'4\downbow\f\> d8 cs\! b4 e,8 8 d'4\> cs8 b a2\! e'4\mp\> d8 cs b4\! e,8 8 d'4\> cs8 b a2\!
  4\f 8 b cs4 8 d e4 fs8 e cs2 e4\> d8 cs b4\! cs8 b a2 r
  \bar "|."
}

\bookpart {
  \header {
    title = "Long, Long Ago"
    composer = "Thomas Haynes Bayly"
    poet = "Bayly: 13.10.1797-22.04.1839"
    meter = ""
    piece = ""
    opus = "Suzuki No. 7, Vol. 1"
    tagline = ""
  }
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreGViolin
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

scoreHViolin = \relative c'' {
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
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreHViolin
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

scoreIViolin = \relative c'' {
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
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreIViolin
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

scoreJViolin = \relative c'' {
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
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreJViolin
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

scoreKViolin = \relative c'' {
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
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreKViolin
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

scoreLViolin = \relative c'' {
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
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreLViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 13 / M
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalM = {
  \key g \major
  %  \numericTimeSignature
  \time 3/4
  \tempo "Allegretto" 2.=66
}

scoreMViolin = \relative c'' {
  \globalM
  % Music follows here.
  \repeat volta 2 {
    d4\mf-.\downbow d-.(d-.) b a8 b g4 a d-.(c-.) b2 a4
    d c8 b a g e'4 c8 b a g f4 e8 d f4
  } \alternative { { g2. } { g2. } }
  \repeat volta 2 {
    b4\p\downbow e2 cs4 b8 c a4 d e fs e8 d cs b a4
    a'\downbow\mf g8 fs e d b'4\upbow g8 fs e d cs4 a cs d2.
    d4\p c8 b a4 b a8 b g4 c2 8 b a2.
    d4 c8 b a g e'4 c8 b a g f4 e8 d f4 g2.
  }
}

\bookpart {
  \header {
    title = "Minuet 1"
    composer = "Johann Sebastian Bach"
    poet = "Bach: 21.03.1685-28.07.1750"
    meter = ""
    piece = ""
    opus = "Suzuki No. 13, Vol. 1"
    tagline = ""
  }
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreMViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 14 / N
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalN = {
  \key g \major
  %\numericTimeSignature
  \time 3/4
  \tempo "Andantino" 2.=50
}

scoreNViolin = \relative c'' {
  \globalN
  % Music follows here.
  \repeat volta 2 {
    g8--\f\downbow b-- d-- g-- a,-- fs'-- g4-.-- g,-.(g-.)
    g8-- b-- d-- g-- a,-- fs'-- g4-.-- g,-.(g-.)
    e'-.-5 e-.-4 e8-3(g d4-.) d-. d8 g c,4 d8-4 c b c a2.
    g8--\f\downbow b-- d-- g-- a,-- fs'-- g4-.-- g,-.(g-.)
    g8-- b-- d-- g-- a,-- fs'-- g4-.-- g,-.(g-.)
    e'---5 d8 c b a d4---5 c8 b a g \tuplet 3/2 {a8(b c)} d,4-.(fs-.) g2.
  }
  \repeat volta 2 {
    g8-3\p\downbow a b a g fs g4 e-.(e-.)
    g'8 fs e g fs e fs4 b,-.(b-.) g'8 fs e g fs e fs4 b,-.(e-.) \tuplet 3/2 {fs8(g a)} b,4-.(ds-.) e ds8 e fs4
    g g8 fs e d e4 e8 d c b c4 c8 b a g fs4 e8 fs d4 a'\downbow(d,) d-. b'(d,) d-. c' d8 c b c a2.
    g8--\f\downbow b-- d-- g-- a,-- fs'-- g4-.-- g,-.(g-.)
    g8-- b-- d-- g-- a,-- fs'-- g4-.-- g,-.(g-.)
    e' d8 c b a d4 c8 b a g \tuplet 3/2 {a(b c)} d,4-.( fs-.) g2.
  }
}

\bookpart {
  \header {
    title = "Minuet 2"
    composer = "Johann Sebastian Bach"
    poet = "Bach: 21.03.1685-28.07.1750"
    meter = ""
    piece = ""
    opus = "Suzuki No. 14, Vol. 1"
    tagline = ""
  }
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreNViolin
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
    cs4 b8 cs a4 a8 b cs d e fs g4 fs e fs a, cs d2. d4 g,8 fs g4 e'4 g,8 fs g4 d' c b a8 g fs g a4 d,8 e fs g a b c4 b a b8 d g,4 fs g2.
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
  }
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreOViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 16 / P
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalP = {
  \key g \major
  %\numericTimeSignature
  \time 4/4
  \tempo "Allegro giocoso" 4=100
}

scorePViolin = \relative c'' {
  \globalP
  % Music follows here.
  \partial 8
  d,8\upbow
  g4.\downbow\f(b8) d4.(g,8) c e g e d4. b8\upbow c a d, c' b g d b' fs4 e d r8 d\upbow g4.\f( b8) d4.(g,8)
  c e g e d4. b8\upbow c a d, c' b g d b' fs4 e d r8 d\upbow
  c'4.--( b8-.) a4.( d,8-.) c'-> b a g a4. d,8\upbow
  g4.\downbow\f(b8) d4.(g,8) c e g e d4. b8\upbow c a d, c' b g d b' a4 fs g r8
  d\upbow
  c'4.--( b8-.) a4.( d,8-.) c'-> b a g a4.
  d,8\upbow g4.\f( b8) d4.(g,8)
  c8 e g e d4. b8\upbow c a d, c' b g d b'
  a4 fs g r8
  \bar "|."
}

\bookpart {
  \header {
    title = "The Happy Farmer"
    composer = "Robert Schumann"
    poet = "Schumann: 08.06.1810-29.07.1856"
    meter = ""
    piece = ""
    opus = "Suzuki No. 16, Vol. 1"
    tagline = ""
  }
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scorePViolin
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 17 / Q
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalQ = {
  \key g \major
  %  \numericTimeSignature
  \time 2/2
  \tempo "Allegretto" 4=100
}

scoreQViolin = \relative c'' {
  \globalQ
  % Music follows here.
  \repeat volta 2 {
    d8-.\downbow\mf e-. d-. b-. c-. d-. c-. a-. g4-_ \acciaccatura fs'8 g4-_ g,-_ r
    c8-.\downbow d-. c-. a-. b-. c-. b-. g-. a4-_ \acciaccatura cs8 d4-_ d,-_ r
    d'8-.\downbow e-. d-. b-. c-. d-. c-. a-. g4-_ \acciaccatura fs'8 g4-_ g,-_ r
    b\downbow g8 e g 4 e8 cs d4-_ \acciaccatura cs'8 d4-_ d,-_ r
  }
  a'8-.\downbow c-. b-. d-. c-. b-. a-. g-. fs4 a c r
  b8-.\downbow d-. c-. e-. d-. c-. b-. a-. g4 b d r
  e8-.\downbow\mf d-. d-. c-. c-. b-. b-. a-. a4_\markup{\italic rit.} c e r
  d8-.\downbow\p_\markup{\italic "a tempo"} b-. fs-. g-. c-. a-. e-. fs-. g4 \acciaccatura fs'8 g4 g, r
  \bar "|."
}

\bookpart {
  \header {
    title = "Gavotte"
    composer = "François-Joseph Gossec"
    poet = "Gossec: 17.011734-16.02.1829"
    meter = ""
    piece = ""
    opus = "Suzuki No. 17, Vol. 1"
    tagline = ""
  }
  \score {
    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "violin"
    } \scoreQViolin
    \layout { }
    \midi { }
  }
}
