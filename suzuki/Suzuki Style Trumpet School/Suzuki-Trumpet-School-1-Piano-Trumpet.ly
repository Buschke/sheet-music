\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Style Trumpet School"
  subsubtitle = "Volume 1"
  instrument = "Trumpet und Piano"
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
  \time 4/4
  \tempo "Andante" 4=100
}

globalAT = {
  \globalA
  \key a \major
}

globalAP = {
  \globalA
  \key g \major
}

scoreATrumpetBb = \relative c'' {
  \globalAT
  \transposition bf
  % Music follows here.
  a4-.\f a-. e'-. e-. fs-. fs-. e2-- d4-. d-. cs-. cs-. b-. b-. a2--
  e'4-. e-. d-. d-. cs-. cs-. b2-- e4-. e-. d-. d-. cs-. cs-. b2--
  a4-. a-. e'-. e-. fs-. fs-. e2-- d4-. d-. cs-. cs-. b-. b-. a2--
  \bar "|."
}

scoreARight = \relative c'' {
  \globalAP
  % Music follows here.
  g4\f g <b d> <b d> <c e>4 4 <b d>2 <a c>4 <a c> <g b> <g b> <fs a> <fs a> g2
  <b d>4 <b d> <a c> <a c> <g b>4 4 <fs a>2 <b d>4 4 <a c>4 4 <g b>4 4 <fs a>2
  g4 g <b d>4 4 <c e>4 4 <b d>2 <a c>4 4 <g b>4 4 <fs a>4 4 g8 r <g b d g>4
  \bar "|."
}

scoreALeft = \relative c' {
  \globalAP
  % Music follows here.
  g8\f d' b d g,8 d' b d g, e' c e g, d' b d fs, d' a d g, d' b d d, d' fs, d' g, d' b d
  g, d' b d fs, d' a d g, d' b d d, d' a d g, d' b d g, e' c e g, d' b d d, d' fs, d'
  g, d' b d g, d' b d g, e' c e g, d' b d fs, d' a d g, d' b d d, d' fs, d' <g, b d>8 r <g, g'>4
  \bar "|."
}

claveA = {
  \new DrumStaff <<
    \drummode {
      \globalA
      <<
        {\repeat unfold 4 {hh8 cl}}\\
        {bd4 sn4 sn4 sn4}
      >>
    }
  >>
}

scoreATrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
} \scoreATrumpetBb

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
    <<
      \scoreATrumpetBbPart
      \scoreAPianoPart
    >>
    \layout { }
  }
  \score {
    {
      \claveA
      \unfoldRepeats
      {
        <<
          \scoreATrumpetBbPart
          \scoreAPianoPart
        >>
      }
    }
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

scoreBTrumpetBb = \relative c'' {
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

scoreBTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
} \scoreBTrumpetBb

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
      \scoreBTrumpetBbPart
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
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreCTrumpetBb = \relative c'' {
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

scoreCTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
} \scoreCTrumpetBb

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
      \scoreCTrumpetBbPart
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
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreDTrumpetBb = \relative c'' {
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

scoreDTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
} \scoreDTrumpetBb

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
      \scoreDTrumpetBbPart
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
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreETrumpetBb = \relative c'' {
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

scoreETrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
} \scoreETrumpetBb

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
      \scoreETrumpetBbPart
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
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreFTrumpetBb = \relative c'' {
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

scoreFTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
} \scoreFTrumpetBb

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
      \scoreFTrumpetBbPart
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
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreGTrumpetBb = \relative c'' {
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

scoreGTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
} \scoreGTrumpetBb

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
      \scoreGTrumpetBbPart
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
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreHTrumpetBb = \relative c'' {
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

scoreHTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
} \scoreHTrumpetBb

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
      \scoreHTrumpetBbPart
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
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreITrumpetBb = \relative c'' {
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

scoreITrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
} \scoreITrumpetBb

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
      \scoreITrumpetBbPart
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
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreJTrumpetBb = \relative c'' {
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

scoreJTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
} \scoreJTrumpetBb

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
      \scoreJTrumpetBbPart
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
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreKTrumpetBb = \relative c'' {
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

scoreKTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
} \scoreKTrumpetBb

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
      \scoreKTrumpetBbPart
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
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreLTrumpetBb = \relative c'' {
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

scoreLTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
} \scoreLTrumpetBb

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
      \scoreLTrumpetBbPart
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
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreMTrumpetBb = \relative c'' {
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

scoreMTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
} \scoreMTrumpetBb

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
      \scoreMTrumpetBbPart
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
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreNTrumpetBb = \relative c'' {
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

scoreNTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
} \scoreNTrumpetBb

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
      \scoreNTrumpetBbPart
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
  \time 4/4
  \tempo "Andante" 4=100
}

globalOT = {
  \globalO
  \key g \major
}

globalOP = {
  \globalO
  \key f \major
}

scoreOTrumpetBb = \relative c'' {
  \globalOT
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

scoreORight = \relative c'' {
  \globalOP
  % Music follows here.
  \repeat volta 2 {
    c4( f,8 g a bf c4-.) f,-. f-.
    d'( bf8 c d e f4-.) f,-. f-. bf( c8 bf a g a4 bf8 a g f
    e4 f8 g a f \acciaccatura a g2.)
    c4( f,8 g a bf c4-.) f,-. f-. d'( bf8 c d e f4-.) f,-. f-.
    bf\( c8 bf a g a4 bf8 a g f g4 a8 g f e f2.\)
  }
  \repeat volta 2 {
    a'4 f8 g a f g4 c,8 d e c f4 d8 e f c
    b4 a8 b g4 g8 a b c d e f4 e d e g, b c2. c4 f,8 e f4 d'4 f,8 e f4 c' bf a g8 f e f g4 c,8 d e f g a bf4 a g a8 c f,4 e <a, c f>2.
  }
}

scoreOLeft = \relative c' {
  \globalOP
  % Music follows here.
  \repeat volta 2 {
    <<{<a c>2.}\\{f2 g4}>>
    a2. bf a g f c'4 a f c' c,8 bf' a g a2 g4 f a f bf2. a4 bf8 a g f
    g2 e4 f2 a4 bf c c, f2 f,4
  }
  \repeat volta 2 {
    f'2. e d4 f d g2 g,4 g'2. a4 c b c e, g c c, bf'
    a2 a4 bf2 bf4
    a g f c'2r4 c,2. d4 f e f a, c f c f,
  }
}

claveO = {
  \new DrumStaff <<
    \drummode {
      \globalO
      <<
        {
          \repeat unfold 3 {hh8 cl}
        } \\ {
          bd4 sn4 sn4
        }
      >>
    }
  >>
}

scoreOTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
  \magnifyStaff #5/7
} \scoreOTrumpetBb

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
    <<
      \scoreOTrumpetBbPart
      \scoreOPianoPart
    >>
    \layout { }
  }
  \score {
    {
      \claveO
      \unfoldRepeats
      {
        <<
          \scoreOTrumpetBbPart
          \scoreOPianoPart
        >>
      }
    }
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

scorePTrumpetBb = \relative c'' {
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

scorePTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
} \scorePTrumpetBb

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
      \scorePTrumpetBbPart
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
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreQTrumpetBb = \relative c'' {
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

scoreQTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
} \scoreQTrumpetBb

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
      \scoreQTrumpetBbPart
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
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreRTrumpetBb = \relative c'' {
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

scoreRTrumpetBbPart = \new Staff \with {
  instrumentName = "Trompete in B"
  shortInstrumentName = "Tr.B"
  midiInstrument = "trumpet"
} \scoreRTrumpetBb

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
    opus = "Suzuki No. 1, Vol. 1"
    tagline = ""
  }
  \score {
    <<
      \scoreRTrumpetBbPart
      \scoreRPianoPart
    >>
    \layout { }
    \midi { }
  }
}
