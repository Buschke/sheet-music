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
  \time 4/4
  \tempo "Andante" 4=100
}

globalAC = {
  \globalA
  \key a \major
}

globalAP = {
  \globalA
  \key g \major
}

scoreAClarinet = \relative c'' {
  \globalAC
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

scoreAClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
  \magnifyStaff #5/7
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
      \scoreAClarinetPart
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
          \scoreAClarinetPart
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
  \time 3/4
  \tempo "Allegro moderato" 4=100
}

globalOC = {
  \globalO
  \key g \major
}

globalOP = {
  \globalO
  \key f \major
}

scoreOClarinet = \relative c'' {
  \globalOC
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

scoreOClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
  \magnifyStaff #5/7
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
      \scoreOClarinetPart
      \scoreOPianoPart
    >>
    \layout { }
  }
  \score {
    {
      \claveO
      \unfoldRepeats {
        <<
          \scoreOClarinetPart
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
