\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Violin School"
  subsubtitle = "Volume 1"
  instrument = "Violine und Piano"
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
  a4-.\downbow\f a-.\upbow e'-. e-. fs-. fs-. e2-- d4-. d-. cs-. cs-. b-. b-. a2--
  e'4-. e-. d-. d-. cs-. cs-. b2-- e4-. e-. d-. d-. cs-. cs-. b2--
  a4-. a-. e'-. e-. fs-. fs-. e2-- d4-. d-. cs-. cs-. b-. b-. a2--
  \bar "|."
}

scoreARight = \relative c'' {
  \globalA
  % Music follows here.
  a4\f a <cs e> <cs e> <d fs>4 4 <cs e>2 <b d>4 <b d> <a cs> <a cs> <gs b> <gs b> a2
  <cs e>4 <cs e> <b d> <b d> <a cs>4 4 <gs b>2 <cs e>4 4 <b d>4 4 <a cs>4 4 <gs b>2
  a4 a <cs e>4 4 <d fs>4 4 <cs e>2 <b d>4 4 <a cs>4 4 <gs b>4 4 a8 r <a cs e a>4
  \bar "|."
}

scoreALeft = \relative c' {
  \globalA
  % Music follows here.
  a8\f e' cs e a,8 e' cs e a, fs' d fs a, e' cs e gs, e' b e a, e' cs e e, e' gs, e' a, e' cs e
  a, e' cs e gs, e' b e a, e' cs e e, e' b e a, e' cs e a, fs' d fs a, e' cs e e, e' gs, e'
  a, e' cs e a, e' cs e a, fs' d fs a, e' cs e gs, e' b e a, e' cs e e, e' gs, e' <a, cs e>8 r <a, a'>4
  \bar "|."
}

scoreAViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreAViolin

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

claveA = {
  \new DrumStaff <<
    \drummode {
      \globalA
      <<
        {
          \repeat unfold 4 {hh8 cl}
        } \\ {
          bd4 sn4 4 4
        }
      >>
    }
  >>
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
    <<
      \scoreAViolinPart
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
          \scoreAViolinPart
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

scoreBViolin = \relative c'' {
  \global
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

scoreBViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreBViolin

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

claveB = {
  \new DrumStaff <<
    \drummode {
      \globalB
      % bd4 sn4
      <<
        {
          %      \repeat unfold 16 cl16
          %      \repeat unfold 16 hh16
          hh8 cl hh cl hh cl hh cl
          %        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
        } \\ {
          bd4 sn4 sn4 sn4
        }
      >>
    }
  >>
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
    <<
      \scoreBViolinPart
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

scoreCViolin = \relative c'' {
  \global
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

scoreCViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreCViolin

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

claveC = {
  \new DrumStaff <<
    \drummode {
      \globalC
      % bd4 sn4
      <<
        {
          %      \repeat unfold 16 cl16
          %      \repeat unfold 16 hh16
          hh8 cl hh cl hh cl hh cl
          %        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
        } \\ {
          bd4 sn4 sn4 sn4
        }
      >>
    }
  >>
}

\bookpart {
  \header {
    title = "Song of the Wind"
    composer = "Folk Song"
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 3, Vol. 1"
    tagline = ""
  }
  \score {
    <<
      \scoreCViolinPart
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

scoreDViolin = \relative c'' {
  \global
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

scoreDViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreDViolin

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

claveD = {
  \new DrumStaff <<
    \drummode {
      \globalD
      % bd4 sn4
      <<
        {
          %      \repeat unfold 16 cl16
          %      \repeat unfold 16 hh16
          hh8 cl hh cl hh cl hh cl
          %        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
        } \\ {
          bd4 sn4 sn4 sn4
        }
      >>
    }
  >>
}

\bookpart {
  \header {
    title = "Go Tell Aunt Rhody"
    composer = ""
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 4, Vol. 1"
    tagline = ""
  }
  \score {
    <<
      \scoreDViolinPart
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

scoreEViolin = \relative c'' {
  \global
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

scoreEViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreEViolin

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

claveE = {
  \new DrumStaff <<
    \drummode {
      \globalE
      % bd4 sn4
      <<
        {
          %      \repeat unfold 16 cl16
          %      \repeat unfold 16 hh16
          hh8 cl hh cl hh cl hh cl
          %        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
        } \\ {
          bd4 sn4 sn4 sn4
        }
      >>
    }
  >>
}

\bookpart {
  \header {
    title = "O Come, Little Children"
    composer = ""
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 5, Vol. 1"
    tagline = ""
  }
  \score {
    <<
      \scoreEViolinPart
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
  \key a \major
  %\numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreFViolin = \relative c'' {
  \globalF
  % Music follows here.
  \repeat volta 2 {
    a4.\f\downbow cs8\upbow e4 a fs a8 fs e2 d4. e8 cs4 a b2 a
    e'4\mf e d d cs e8 cs b2\> e4\p e d d cs e8 cs b2
    a4.\f cs8  e4 a fs a8 fs e2 d4. e8 cs4 a b2 a
  }
}

scoreFRight = \relative c'' {
  \globalF
  % Music follows here.
  \repeat volta 2 {
    a4.\mf cs8 e4 a fs a8 fs e2 d4. e8 cs4 a b2 a
    e'4\f e d d cs e8 cs b2\> e4\p e d d cs e8 cs b2
    a4.\f cs8  e4 a fs a8 fs e2 d4. e8 cs4 a b2_"2da volta poco rit." a
  }
}

scoreFLeft = \relative c' {
  \globalF
  % Music follows here.
  \repeat volta 2 {
    <a cs e>4 4 4 4 <a d fs>4 4 <a cs e>4 4 <e gs e'>4 4 <a cs e>4 4 <e d' e>4 4 <a cs e>4 4
    a8 e' cs e a, fs' d fs a, e' cs e e, e' gs, e' a, e' cs e a, fs' d fs a, e' cs e e, e' gs, e'
    <a, cs e>4 4 4 4 <a d fs>4 4 <a cs e>4 4 <e gs d' e>4 4 <a cs e>4 4 <e gs d' e>4 4 <a cs e>4 r
  }
}

scoreFViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreFViolin

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

claveF = {
  \new DrumStaff <<
    \drummode {
      \globalF
      % bd4 sn4
      <<
        {
          %      \repeat unfold 16 cl16
          %      \repeat unfold 16 hh16
          hh8 cl hh cl hh cl hh cl
          %        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
        } \\ {
          bd4 sn4 sn4 sn4
        }
      >>
    }
  >>
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
    <<
      \scoreFViolinPart
      \scoreFPianoPart
    >>
    \layout { }
  }
  \score {
    {
      \claveF
      \unfoldRepeats {
        <<
          \scoreFViolinPart
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
  \key a \major
  %  \numericTimeSignature
  \time 4/4
  \tempo "Moderato" 4=50
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

scoreGRight = \relative c'' {
  \globalG
  % Music follows here.
  <cs, e>2 <e a> <a cs> <e a> <e gs>2 2 <e a> <cs e>
  <cs e> <e a> <a cs> <e a> <e gs> <d gs> <cs a'> r
  <<{e\f e e <cs e> e e e <cs e>2 2 <e a> <a cs> <e a>}\\{e4(d8 cs) b4 b e(cs8 b) cs2 e4\p(d8 cs) b4 b e( cs8(b) cs2}>>
  g'4( fs8 e) d4 <d gs> <cs a'>2 r
  \bar "|."
}

scoreGLeft = \relative c' {
  \globalG
  % Music follows here.
  <<{a,2 2 2 2}\\{a8( e' a e) a,8(e' a e) a,8( e' a e) a,8(e' a e)}>>
  e,8( e' gs e) e,( e' gs e)
  <<{a,2 2 2 2}\\{a8( e' a e) a,8(e' a e) a,8( e' a e) a,8(e' a e)}>>
  <<{a,2 2}\\{a8( e' a e) a,8(e' a e)}>>
  e,8( e' gs e) e,( e' gs e)
  <<{a,2 cs8\<(e a cs\!)}\\{a,8( e' a e) r2}>>
  cs'8\f( e, b' a gs e gs e) b'(e, a e a, cs e a)
  cs8\p( e, b' a gs e gs e) b'(e, a e a, cs e a)
  <<{a,2 2 2 2}\\{a8( e' a e) a,8(e' a e) a,8( e' a e) a,8(e' a e)}>>
  as,(cs fs as) <b, b'>4 e <<{a,2}\\{a8( e' a e a,4) r}>>
}

scoreGViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreGViolin

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

claveG = {
  \new DrumStaff <<
    \drummode {
      \globalG
      % bd4 sn4
      <<
        {
          %      \repeat unfold 16 cl16
          %      \repeat unfold 16 hh16
          hh8 cl hh cl hh cl hh cl
          %        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
        } \\ {
          bd4 sn4 sn4 sn4
        }
      >>
    }
  >>
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
    <<
      \scoreGViolinPart
      \scoreGPianoPart
    >>
    \layout { }
  }
  \score {
    {
      \claveG
      <<
        \scoreGViolinPart
        \scoreGPianoPart
      >>
    }
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

scoreHViolin = \relative c'' {
  \global
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

scoreHViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreHViolin

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

claveH = {
  \new DrumStaff <<
    \drummode {
      \globalH
      % bd4 sn4
      <<
        {
          %      \repeat unfold 16 cl16
          %      \repeat unfold 16 hh16
          hh8 cl hh cl hh cl
          %        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
        } \\ {
          bd4 sn4 sn4
        }
      >>
    }
  >>
}

\bookpart {
  \header {
    title = "Allegro"
    composer = ""
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 8, Vol. 1"
    tagline = ""
  }
  \score {
    <<
      \scoreHViolinPart
      \scoreHPianoPart
    >>
    \layout { }
  }
  \score {
    {
      \claveH
      <<
        \scoreHViolinPart
        \scoreHPianoPart
      >>
    }
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

scoreIViolin = \relative c'' {
  \global
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

scoreIViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreIViolin

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

claveI = {
  \new DrumStaff <<
    \drummode {
      \globalI
      % bd4 sn4
      <<
        {
          %      \repeat unfold 16 cl16
          %      \repeat unfold 16 hh16
          hh8 cl hh cl hh cl hh cl
          %        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
        } \\ {
          bd4 sn4 sn4 sn4
        }
      >>
    }
  >>
}

\bookpart {
  \header {
    title = "Perpetual Motion"
    composer = ""
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 9, Vol. 1"
    tagline = ""
  }
  \score {
    <<
      \scoreIViolinPart
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

scoreJViolin = \relative c'' {
  \global
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

scoreJViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreJViolin

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

claveJ = {
  \new DrumStaff <<
    \drummode {
      \globalJ
      % bd4 sn4
      <<
        {
          %      \repeat unfold 16 cl16
          %      \repeat unfold 16 hh16
          hh8 cl hh cl hh cl hh cl
          %        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
        } \\ {
          bd4 sn4 sn4 sn4
        }
      >>
    }
  >>
}

\bookpart {
  \header {
    title = "Allegretto"
    composer = ""
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 10, Vol. 1"
    tagline = ""
  }
  \score {
    <<
      \scoreJViolinPart
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

scoreKViolin = \relative c'' {
  \global
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

scoreKViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreKViolin

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

claveK = {
  \new DrumStaff <<
    \drummode {
      \globalK
      % bd4 sn4
      <<
        {
          %      \repeat unfold 16 cl16
          %      \repeat unfold 16 hh16
          hh8 cl hh cl hh cl hh cl
          %        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
        } \\ {
          bd4 sn4 sn4 sn4
        }
      >>
    }
  >>
}

\bookpart {
  \header {
    title = "Andantino"
    composer = ""
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 11, Vol. 1"
    tagline = ""
  }
  \score {
    <<
      \scoreKViolinPart
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

scoreLViolin = \relative c'' {
  \global
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

scoreLViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreLViolin

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

claveL = {
  \new DrumStaff <<
    \drummode {
      \globalL
      % bd4 sn4
      <<
        {
          %      \repeat unfold 16 cl16
          %      \repeat unfold 16 hh16
          hh8 cl hh cl hh cl hh cl
          %        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
        } \\ {
          bd4 sn4 sn4 sn4
        }
      >>
    }
  >>
}

\bookpart {
  \header {
    title = "Etude"
    composer = ""
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 12, Vol. 1"
    tagline = ""
  }
  \score {
    <<
      \scoreLViolinPart
      \scoreLPianoPart
    >>
    \layout { }
  }

  \score {
    \unfoldRepeats {
      <<
        \scoreLViolinPart
        \scoreLPianoPart
      >>
    }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 13 / M
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalM = {
  \key g \major
  %  \numericTimeSignature
  \defaultTimeSignature
  \time 3/4
  \tempo "Allegretto" 2.=66
}

scoreMViolin = \relative c'' {
  \globalM
  % Music follows here.
  \repeat volta 2 {
    d4\mf-.\downbow d-.(d-.) b a8 b g4 a d-.(c-.) b2 a4
    d c8 b a g e'4 c8 b a g fs4 e8 d fs4
  } \alternative { { g2. } { g2. } }
  \repeat volta 2 {
    b4\p\downbow e2 cs4 b8 cs a4 d e fs e8 d cs b a4
    a'\downbow\mf g8 fs e d b'4\upbow g8 fs e d cs4 a cs d2.
    d4\p c8 b a4 b a8 b g4 c2 8 b a2.
    d4 c8 b a g e'4 c8 b a g fs4 e8 d fs4 g2.
  }
}

scoreMRight = \relative c'' {
  \globalM
  % Music follows here.
  \repeat volta 2 {
    d4\mf-.\downbow d-.(d-.) b a8 b g4 a d-.(c-.) b2 a4
    d c8 b a g e'4 c8 b a g fs4 e8 d fs4
  } \alternative { { g2. } { g2. } }
  \repeat volta 2 {
    b4\p\downbow e2 cs4 b8 cs a4 d e fs e8 d cs b a4
    a'\downbow\mf g8 fs e d b'4\upbow g8 fs e d cs4 a cs d2.
    d4\p c8 b a4 b a8 b g4 c2 8 b a2.
    d4 c8 b a g e'4 c8 b a g fs4 e8 d fs4 g2.
  }

}

scoreMLeft = \relative c' {
  \globalM
  % Music follows here.
  \repeat volta 2 {
    g4 fs d <<{g2.}\\{r4 d g,}>> g'4 fs8 e fs d g4 g, d'8-2 c
    b4 r r c r r d2.(
  } \alternative {
    { g,4) b8 a d4 } {g,2.)}
  }
  \repeat volta 2 {
    g'2-1 e4 <<{a2.-1}\\{r4 e a,}>> fs'-2 e-1 d-2 <<{r4 e-2 a8-1 g}\\{a2.-5}>>
    fs4 r r g r r a2(a,4 d-.) d'8-1 c b a-4
    g2-1\p fs4 <<{g2.}\\{r4 d g,}>> a'4-1 fs-3 g-2 d-1 d, d'8 c
    b4 r r c r r d2^"rit. 2da volta" d,4 g2.
  }
}

scoreMViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreMViolin

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

claveM = {
  \new DrumStaff <<
    \drummode {
      \globalM
      % bd4 sn4
      <<
        {
          %      \repeat unfold 16 cl16
          %      \repeat unfold 16 hh16
          hh8 cl hh cl hh cl hh cl
          %        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
        } \\ {
          bd4 sn4 sn4 sn4
        }
      >>
    }
  >>
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
    <<
      \scoreMViolinPart
      \scoreMPianoPart
    >>
    \layout { }
  }
  \score {
    \unfoldRepeats {
      <<
        \scoreMViolinPart
        \scoreMPianoPart
      >>
    }
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
  \tempo "Andantino" 4=100
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

scoreNRight = \relative c'' {
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
    e' d8 c b a d4 c8 b a g \tuplet 3/2 {a(b c)} d,4-.(fs-.) g2.
  }
}

scoreNLeft = \relative c' {
  \globalN
  % Music follows here.
  \repeat volta 2 {
    g2-1 d4-2 g,8(b-4 d g d b g2) d'4 g,8(b-4 d g d b c4-3-.) g'-. c,-.-3(b-.) g' b,-4(a fs'-2 g d8-4 e fs d e fs g2)\f d4 g,8(b-4 d g d b g2) d'4 g,8(b-4 d g d b) c4-3(e-2 g b,-5 d-3 g c,2-4) d4-. g d-2 g,
  }
  \repeat volta 2 {
    e'-1(ds b e-.) b-.-2 e,-. e'-1(g-2 b-1 b,8 ds-3 fs b fs ds-4) e4-3( g-2 b-1 b,-.) a'-. g-.-3 a(b) b,-. e2.-2 b4 d g c,-4 d-3 e-1 a,-5 b-3 c d a-2 d, fs'8-3 d fs d fs d
    g-2 d g d g d fs4 d g d8-5(e fs d e fs
    g2-21)\f d4-2 g,8(b-4 d g d b g2) d'4 g,8(b-4 d g d b) c4-3(e g' b,-5 d g c,2-4) d4-. g d g,
  }
}

scoreNViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreNViolin

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

claveN = {
  \new DrumStaff <<
    \drummode {
      \globalN
      % bd4 sn4
      <<
        {
          %      \repeat unfold 16 cl16
          %      \repeat unfold 16 hh16
          hh8 cl hh cl hh cl hh cl
          %        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
        } \\ {
          bd4 sn4 sn4 sn4
        }
      >>
    }
  >>
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
    <<
      \scoreNViolinPart
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
    cs4 b8 cs a4 a8 b cs d e fs g4 fs e fs a, cs d2. d4 g,8 fs g4 e'4 g,8 fs g4 d' c b a8 g fs g a4 d,8 e fs g a b c4 b a b8 d g,4 fs <b, d g>2.

  }

}

scoreORight = \relative c'' {
  \globalO
  % Music follows here.
  \repeat volta 2 {
    d4( g,8 a b c d4-.) g,-. g-.
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

scoreOLeft = \relative c' {
  \globalO
  % Music follows here.
  <<
    \relative c {
      <b' d>2.
    }
    \\
    \relative c {
      g'2 a4 b2. c b a g d'4 b g d' d,8 c' b a b2 a4 g b g c2. b4 c8 b a g
      a2 fs4 g2 b4 c d d, g2 g,4
      g'2. fs e4 g e a2 a,4 a'2. b4 d cs d fs, a d d, c'
      b2 b4 c2 c4
      b a g d'2r4 d,2. e4 g fs g b, d g d g,
    }
  >>
}

scoreOViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreOViolin

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

claveO = {
  \new DrumStaff <<
    \drummode {
      \globalO
      % bd4 sn4
      <<
        {
          %      \repeat unfold 16 cl16
          %      \repeat unfold 16 hh16
          hh8 cl hh cl hh cl hh cl
          %        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
        } \\ {
          bd4 sn4 sn4 sn4
        }
      >>
    }
  >>
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
    <<
      \scoreOViolinPart
      \scoreOPianoPart
    >>
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

scorePRight = \relative c'' {
  \globalP
  % Music follows here.
  \partial 8
  r8
  r <d, g b>8 8 r r <g b d>8 8 r
  r <g c e>8 <c e> r r <g b d>8 8 r
  r <fs c' d>8 4 r8 <d g b>8 4
  r8 <d a'> r <g a cs> r <fs a d>8 4
  r8 <d g b>8 8 r r <g b d>8 8 r
  r <g c e>8 <c e> r r <g b d>8 8 r
  r <fs c' d>8 4 r8 <d g b>8 4
  r8 <d a'> r <g a cs> r <fs a d>8 4
  r8 <d fs>8 8 r r <c d>8 8 r r d d cs r d d r r\f <b d>8 8 r r <g' b>8 8 r
  r <g c> r <g c> r <g b>8 8 r r <fs c' d>8 4 r8 <d g b>8 8 8 r <e a> r <c d> r <b d g>8 4
  r8 <d fs>8 8 r r <c d>8 8 r r d d cs r d d r r\f <b d>8 8 r r <g' b>8 8 r
  r <g c> r <g c> r <g b>8 8 r r <fs c' d>8 4 r8 <d g b>8 8 8 r <e a>-. r <c d>-. r <b d g>-. 8-.
}

scorePLeft = \relative c' {
  \globalP
  % Music follows here.
  \partial 8
  d,8\(g4.\f\< b8 d4.\!\> g,8\! c(\< e g\!\> e d4.\!)\) b8( c a d, c' b g d b' fs4-- e-- d--) r8 d( g4. b8 d4. g,8 c\< e g\!\> e d4.\!)
  b8( c a d, c' b g d b' fs4-- e-- d--) r8 d(a'4.-> g8 fs4.) d8(a'g fs e fs4.)
  d8\(g4.\f\< b8 d4.\!\> g,8\! c(\< e g\!\> e d4.\!)\) b8( c a d, c' b g d b' c,4-- d-- g--)
  r8 d(a'4.-> g8 fs4.) d8(a'g fs e fs4.)
  d8\(g4.\f\< b8 d4.\!\> g,8\! c(\< e g\!\> e d4.\!)\) b8( c a d, c' b g d b' c,4-- d-- g--) r8
}

scorePViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scorePViolin

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

claveP = {
  \new DrumStaff <<
    \drummode {
      \globalP
      % bd4 sn4
      <<
        {
          %      \repeat unfold 16 cl16
          %      \repeat unfold 16 hh16
          hh8 cl hh cl hh cl hh cl
          %        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
        } \\ {
          bd4 sn4 sn4 sn4
        }
      >>
    }
  >>
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
    <<
      \scorePViolinPart
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
}

scoreQRight = \relative c'' {
  \globalQ
  % Music follows here.
  \repeat volta 2 {
    r4 <g, b d> r <fs c' d>
    r <g b d> r <g b d> r <c fs a> r <g b d>
    r <a d fs> r <a d fs> r <g b d> r <fs c' d>
    r <g b d> r <g b d> r <b e> r <g cs>
    r <a d fs> r <c d fs>
  }
  r <c d fs> r <c d fs> r <a c fs> r <a c fs>
  r <g b d> r <g b d> r <g b d> r <g b d>
  r\p <c e> r <c e> r <c e> r <c e a>
  d2 d r4 <b d g > r <b' g'>
}


scoreQLeft = \relative c' {
  \globalQ
  % Music follows here.
  \repeat volta 2 {
    g, r b r g r g r a r g r b r b r g r a r b r g r <e e'> r <a a'> r <d, d'> r <d d'> r
  }
  <d d'> r <fs fs'> r <a a'> r <d, d'> r <g g'> r <b b'> r <g g'> r d' r
  c\p g' e g a^\markup{\small \italic rit.} r c, r
  <<{r <g' b> r <fs c'>}\\{d2^\markup{\small \italic "a tempo"} 2}>>
  g,4 r g' r
  \bar "|."
}

scoreQViolinPart = \new Staff \with {
  instrumentName = "Violine"
  shortInstrumentName = "Vl."
  midiInstrument = "violin"
  \magnifyStaff #5/7
} \scoreQViolin

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

claveQ = {
  \new DrumStaff <<
    \drummode {
      \globalQ
      % bd4 sn4
      <<
        {
          %      \repeat unfold 16 cl16
          %      \repeat unfold 16 hh16
          hh8 cl hh cl hh cl hh cl
          %        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
        } \\ {
          bd4 sn4 sn4 sn4
        }
      >>
    }
  >>
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
    <<
      \scoreQViolinPart
      \scoreQPianoPart
    >>
    \layout { }
    \midi { }
  }
}
