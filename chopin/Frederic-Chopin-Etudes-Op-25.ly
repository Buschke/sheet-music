\version "2.22.2"
\language "english"

\header {
  dedication = "NN"
  title = "Etude No 11"
  subtitle = "NN"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "Frederic Chopin"
  arranger = "Fingering: Sven Buschke"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "Op. 25 No. 11"
  copyright = "© Sven Buschke"
  tagline = "NN"
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
  \tempo "Lento" 4=100
}

\include "Frederic-Chopin-Etude-Op-25-No-11-bareScore.ly"

\bookpart {
\header {
  title = "Etude No 11"
  opus = "Op. 25 No. 10"
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


scoreBRight = \relative c'' {
  \global
  % Music follows here.
  d
}

scoreBLeft = \relative c' {
  \global
  % Music follows here.
  
}

\bookpart {
\header {
  title = "Etude No 12"
  opus = "Op. 25 No. 12"
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
