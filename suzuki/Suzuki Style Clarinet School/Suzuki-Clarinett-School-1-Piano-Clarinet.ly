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
  \key bf \major
}

globalAP = {
  \globalA
  \key af \major
}

scoreAClarinet = \relative c'' {
  \globalAC
  \transposition bf
  % Music follows here.
  bf,4-.\f bf-. f'-. f-. g-. g-. f2-- ef4-. ef-. d-. d-. c-. c-. bf2--
  f'4-. f-. ef-. ef-. d-. d-. c2-- f4-. f-. ef-. ef-. d-. d-. c2--
  bf4-. bf-. f'-. f-. g-. g-. f2-- ef4-. ef-. d-. d-. c-. c-. bf2--
  \bar "|."
}

scoreARight = \relative c'' {
  \globalAP
  % Music follows here.
  af4\f af <c ef> <c ef> <df f>4 4 <c ef>2 <bf df>4 <bf df> <af c> <af c> <g bf> <g bf> af2
  <c ef>4 <c ef> <bf df> <bf df> <af c>4 4 <g bf>2 <c ef>4 4 <bf df>4 4 <af c>4 4 <g bf>2
  af4 af <c ef>4 4 <df f>4 4 <c ef>2 <bf df>4 4 <af c>4 4 <g bf>4 4 af8 r <af c ef af>4
  \bar "|."
}

scoreALeft = \relative c' {
  \globalAP
  % Music follows here.
  af8\f ef' c ef af,8 ef' c ef af, f' df f af, ef' c ef g, ef' bf ef af, ef' c ef ef, ef' g, ef' af, ef' c ef
  af, ef' c ef g, ef' bf ef af, ef' c ef ef, ef' bf ef af, ef' c ef af, f' df f af, ef' c ef ef, ef' g, ef'
  af, ef' c ef af, ef' c ef af, f' df f af, ef' c ef g, ef' bf ef af, ef' c ef ef, ef' g, ef' <af, c ef>8 r <af, af'>4
  \bar "|."
}

claveA = { \new DrumStaff { \drummode { \globalA << { \repeat unfold 4 {hh8 cl} } \\ { bd4 sn sn sn } >> }}}

scoreAClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
  \magnifyStaff #5/7
  \consists "Ambitus_engraver"
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
  \time 2/2
  \tempo "Moderato" 4=100
}

globalBC = {
  \globalB
  \key g \major
}

globalBP = {
  \globalB
  \key a \major
}

scoreBClarinet = \relative c'' {
  \globalBC
  \transposition bf
  % Music follows here.
  d,4\mf\downbow b b2 c4 a a2 g4 a b c d d d2
  d4 b4 4 4 c a a a g b d d b4 4 2
  a4 a a a a b c2 b4 4 4 4 4 c d2
  d4 b4 4 4 c a a a g b d d b4 4 2
  \bar "|."
}

scoreBRight = \relative c'' {
  \globalBP
  % Music follows here.
  e4\mf cs cs2 d4 b b2 a4 b cs d e e e2
  e4 <a, cs>4 4 4 d <gs, b>4 4 4 a cs <cs e>4 4 <a cs>4 4 2
  <gs b>4 4 4 4 4 <a cs> <b d>2 <a cs>4 4 4 4 4 <b d> <cs e>2
  <cs e>4 <a cs>4 4 4 <b d> <gs b>4 4 4 a cs <cs e>4 4 <a cs>4 4 2
  \bar "|."
}

scoreBLeft = \relative c' {
  \globalBP
  % Music follows here.
  a4\mf e' cs e gs, e' b e a, e' cs e a, e' cs e
  a, e' cs e gs, e' d e a, e' cs e a, e' cs e
  e, e' d e e, e' d e a, e' cs e a, e' cs e
  a, e' cs e gs, e' b e a, e' cs e a, e' a,2
  \bar "|."
}

claveB = { \new DrumStaff { \drummode { \globalB << { \repeat unfold 4 {hh8 cl} } \\ { bd4 sn sn sn } >> }}}

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
    title = "Lightly Row"
    composer = "Folk Song"
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 2, Vol. 1"
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

claveC = { \new DrumStaff { \drummode { \globalC << { \repeat unfold 4 {hh8 cl} } \\ { bd4 sn sn sn } >> }}}

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
  \time 4/4
  \tempo "Andante" 4=50
}

globalFC = {
  \globalF
  \key g \major
}

globalFP = {
  \globalF
  \key f \major
}

scoreFClarinet = \relative c'' {
  \globalFC
  \transposition bf
  % Music follows here.
  \repeat volta 2 {
    g,4.\f b8 d4 g e g8 e d2 c4. d8 b4 g a2 g
    d'4\mf d c c b d8 b a2\> d4\p d c c b d8 b a2
    g4.\f b8  d4 g e g8 e d2 c4. d8 b4 g a2 g
  }
}

scoreFRight = \relative c'' {
  \globalFP
  % Music follows here.
  \repeat volta 2 {
    f,4.\mf a8 c4 f d f8 d c2 bf4. c8 a4 f g2 f
    c'4\f c bf bf a c8 a g2\> c4\p c bf bf a c8 a g2
    f4.\f a8  c4 f d f8 d c2 bf4. c8 a4 f g2_"2da volta poco rit." f
  }
}

scoreFLeft = \relative c {
  \globalFP
  % Music follows here.
  \repeat volta 2 {
    <f a c>4 4 4 4 <f bf d>4 4 <f a c>4 4 <c e c'>4 4 <f a c>4 4 <c bf' c>4 4 <f a c>4 4
    f8 c' a c f, d' bf d f, c' a c c, c' e, c' f, c' a c f, d' bf d f, c' a c c, c' e, c'
    <f, a c>4 4 4 4 <f bf d>4 4 <f a c>4 4 <c e bf' c>4 4 <f a c>4 4 <c e bf' c>4 4 <f a c>4 r
  }
}

claveF = { \new DrumStaff { \drummode { \globalF << { \repeat unfold 4 {hh8 cl} } \\ { bd4 sn sn sn } >> }}}

scoreFClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
  \magnifyStaff #5/7
  \consists "Ambitus_engraver"
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
    title = "May Song"
    composer = "Folk Song"
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 6, Vol. 1"
    tagline = ""
  }
  \score {
    <<
      \scoreFClarinetPart
      \scoreFPianoPart
    >>
    \layout { }
  }
  \score {
    {
      \claveF
      \unfoldRepeats
      {
        <<
          \scoreFClarinetPart
          \scoreFPianoPart
        >>
      }
    }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 7 / G
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalG = {
  \time 4/4
  \tempo "Andante" 4=50
}

globalGC = {
  \globalG
  \key c \major
}

globalGP = {
  \globalG
  \key bf \major
}

scoreGClarinet = \relative c' {
  \globalGC
  \transposition bf
  % Music follows here.
  c4\mf c8 d e4 8 f g4 a8 g e2 g4\> f8 e d2\! f4\> e8 d c2\!
  4 8 d e4 8 f g4 a8 g e2 g4\> f8 e d4 e8 d c2\! r
  g'4\downbow\f\> f8 e\! d4 g,8 8 f'4\> e8 d c2\! g'4\mp\> f8 e d4\! g,8 8 f'4\> e8 d c2\!
  4\f 8 d e4 8 f g4 a8 g e2 g4\> f8 e d4\! e8 d c2 r
  \bar "|."
}

scoreGRight = \relative c {
  \globalGP
  % Music follows here.
  <d' f>2 <f bf> <bf d> <f bf> <f a>2 2 <f bf> <d f>
  <d f> <f bf> <bf d> <f bf> <f a> <ef a> <d bf'> r
  <<{f\f f f <d f> f f f <d f>2 2 <f bf> <bf d> <f bf>}\\{f4(ef8 d) c4 c f(d8 c) d2 f4\p(ef8 d) c4 c f( d8(c) d2}>>
  af'4( g8 f) ef4 <ef a> <d bf'>2 r
  \bar "|."
}

scoreGLeft = \relative c, {
  \globalGP
  % Music follows here.
  <<{bf'2 2 2 2}\\{bf8( f' bf f) bf,8(f' bf f) bf,8( f' bf f) bf,8(f' bf f)}>>
  f,8( f' a f) f,( f' a f)
  <<{bf,2 2 2 2}\\{bf8( f' bf f) bf,8(f' bf f) bf,8( f' bf f) bf,8(f' bf f)}>>
  <<{bf,2 2}\\{bf8( f' bf f) bf,8(f' bf f)}>>
  f,8( f' a f) f,( f' a f)
  <<{bf,2 d8\<(f bf d\!)}\\{bf,8( f' bf f) r2}>>
  d'8\f( f, c' bf a f a f) c'(f, bf f bf, d f bf)
  d8\p( f, c' bf a f a f) c'(f, bf f bf, d f bf)
  <<{bf,2 2 2 2}\\{bf8( f' bf f) bf,8(f' bf f) bf,8( f' bf f) bf,8(f' bf f)}>>
  b,(d g b) <c, c'>4 f <<{bf,2}\\{bf8( f' bf f bf,4) r}>>
}

claveG = { \new DrumStaff { \drummode { \globalG << { \repeat unfold 4 {hh8 cl} } \\ { bd4 sn sn sn } >> }}}

scoreGClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
  \consists "Ambitus_engraver"
  \magnifyStaff #5/7
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
    title = "Long, Long Ago"
    composer = "Thomas Haynes Bayly"
    poet = "Bayly: 13.10.1797-22.04.1839"
    meter = ""
    piece = ""
    opus = "Suzuki No. 7, Vol. 1"
    tagline = ""
  }
  \score {
    <<
      \scoreGClarinetPart
      \scoreGPianoPart
    >>
    \layout { }
  }
  \score {
    { \claveG
      \unfoldRepeats {
    <<
      \scoreGClarinetPart
      \scoreGPianoPart
    >>
    }}
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
    d,4(g,8 a b c d4-.) g,-. g-.
    e'( c8 d e fs g4-.) g,-. g-. c( d8 c b a b4 c8 b a g
    fs4 g8 a b g \acciaccatura b a2.)
    d4( g,8 a b c d4-.) g,-. g-. e'( c8 d e fs g4-.) g,-. g-.
    c\( d8 c b a b4 c8 b a g a4 b8 a g fs g2.\)
  }
  \repeat volta 2 {
    b'4 g8 a b g a4 d,8 e fs d g4 e8 fs g d
    cs4 b8 cs a4 a8 b cs d e fs g4 fs e fs a, cs d2. d4 g,8 fs g4 e'4 g,8 fs g4 d' c b a8 g fs g a4 d,8 e fs g a b c4 b a b8 d g,4 fs g2.
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
  \consists "Ambitus_engraver"
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
