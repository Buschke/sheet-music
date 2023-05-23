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
  \key c \major
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreAClarinet = \relative c'' {
  \globalA
  \transposition bf
  % Music follows here.
  c,4-.\f c-. g'-. g-. a-. a-. g2-- f4-. f-. e-. e-. d-. d-. c2--
  g'4-. g-. f-. f-. e-. e-. d2-- g4-. g-. f-. f-. e-. e-. d2--
  c4-. c-. g'-. g-. a-. a-. g2-- f4-. f-. e-. e-. d-. d-. c2--
  \bar "|."
}}

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
  \key g \major
  \time 2/2
  \tempo "Moderato" 4=100
}

scoreBClarinet = \relative c'' {
  \globalB
  \transposition bf
  % Music follows here.
  d,4\mf\downbow b b2 c4 a a2 g4 a b c d d d2
  d4 b4 4 4 c a a a g b d d b4 4 2
  a4 a a a a b c2 b4 4 4 4 4 c d2
  d4 b4 4 4 c a a a g b d d b4 4 2
  \bar "|."
}

\bookpart {
  \header {
    title = "Lightly Row"
    composer = "Folk Song"
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 2, Vol. 1"
    tagline = ""
  }
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
    } \scoreEClarinet
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
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreFClarinet = \relative c'' {
  \globalF
  \transposition bf
  % Music follows here.
  \repeat volta 2 {
    g,4.\f b8 d4 g e g8 e d2 c4. d8 b4 g a2 g
    d'4\mf d c c b d8 b a2\> d4\p d c c b d8 b a2
    g4.\f b8  d4 g e g8 e d2 c4. d8 b4 g a2 g
  }
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
  \key c \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4=100
}

scoreGClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.
  c,4\mf c8 d e4 8 f g4 a8 g e2 g4\> f8 e d2\! f4\> e8 d c2\!
  4 8 d e4 8 f g4 a8 g e2 g4\> f8 e d4 e8 d c2\! r
  g'4\downbow\f\> f8 e\! d4 g,8 8 f'4\> e8 d c2\! g'4\mp\> f8 e d4\! g,8 8 f'4\> e8 d c2\!
  4\f 8 d e4 8 f g4 a8 g e2 g4\> f8 e d4\! e8 d c2 r
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
      instrumentName = "Klarinette"
      shortInstrumentName = "Kl."
      midiInstrument = "clarinet"
      \consists "Ambitus_engraver"
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
    } \scoreNClarinet
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 15 / O
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalO = {
  \key g \major
%  \numericTimeSignature
  \time 3/4
  \tempo "Allegro moderato" 4=100
}

scoreOClarinet = \relative c'' {
  \global
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
