\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = "Marche"
  subtitle = "Sonata Nr. 2, 3rd movement"
  subsubtitle = ""
  instrument = "Piano"
  composer = "Frederic Chopin"
  arranger = \markup {"Fingerings: " \with-url "https://buschke.com" "Sven Buschke"}
  poet = ""
  meter = ""
  piece = ""
  opus = "Op. 35"
  copyright = \markup {"© Fingerings, April 19, 2023, " \with-url "https://buschke.com" "Sven Buschke"}
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
  \key bf \minor
  \time 4/4
  \tempo "Lento" 4=100
}

scoreARight = \relative c'' {
  \global
  % Music follows here.
  <<{bf,4-5(bf8.-5 16-5 bf2-5}\\{f4-1(gf f gf}>>
  <<{bf4 bf8. 16 bf2})\\{f4 gf f gf)}>>
}

scoreALeft = \relative c' {
  \global
  % Music follows here.
  <bf,,-5 f'-3 bf-1>4 <df-5 gf-3 df'-1> <bf-5 f'-3 bf-1> <df-5 gf-3 df'-1>
  <bf-5 f'-3 bf-1>4 <df-5 gf-3 df'-1> <bf-5 f'-3 bf-1> <df-5 gf-3 df'-1>
  <bf-5 f'-3 bf-1>4 <df-5 gf-3 df'-1> <bf-5 f'-3 bf-1> <df-5 gf-3 df'-1>
  <bf-5 f'-3 bf-1>4 <df-5 gf-3 df'-1> <bf-5 f'-3 bf-1> <df-5 gf-3 df'-1>
  <bf-5 f'-3 bf-1>4 <df-5 gf-3 df'-1> <bf-5 f'-3 bf-1> <df-5 gf-3 df'-1>
}

\bookpart {
  \score {
    \new PianoStaff \with {
      instrumentName = "Piano"
      shortInstrumentName = "Pno."
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

scoreBRight = \relative c'' {
  \global
  % Music follows here.

}

scoreBLeft = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new PianoStaff \with {
      instrumentName = "Piano"
      shortInstrumentName = "Pno."
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

scoreCRight = \relative c'' {
  \global
  % Music follows here.

}

scoreCLeft = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new PianoStaff \with {
      instrumentName = "Piano"
      shortInstrumentName = "Pno."
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

scoreDRight = \relative c'' {
  \global
  % Music follows here.

}

scoreDLeft = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
  \score {
    \new PianoStaff \with {
      instrumentName = "Piano"
      shortInstrumentName = "Pno."
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
