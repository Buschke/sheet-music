\version "2.24.0"
\language "english"

\header {
  dedication = "NN"
  title = "Italian Concert"
  subtitle = "NN"
  subsubtitle = "NN"
  instrument = "Piano"
  composer = "Johann Sebastian Bach"
  arranger = "Fingerings: Sven Buschke"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "BWV 971"
  copyright = "© 03.02.2023 Sven Buschke (Fingerings)"
  tagline = "Bach Goes Italy"
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

globalA = {
  \key f \major
  \time 2/4
  \tempo "Allegro" 4=100
}

scoreARight = \relative c'' {
  \globalA
  % Music follows here.
  <<{r8 f-. a,-.-2 bf-.-3}\\{r4\f f8-1 g-1}>>|
  <a-2 c-4>4( <bf d>)|
  <<{c8-.-3 f4 ef16 d}\\{a4 bf}\\{f2}>>|
  <<{<bf d-5>8 <a c>}\\{f4}>> r|
  <<{r8 c''-. e,-.-2 f-.-3}\\{r4 c8-1 d-1}>>|
  <e-2 g-4>4( <f a>)|
  <<{c8-.-3 f4 ef16 d}\\{a4 bf}\\{f2}>>|
  <<{<bf d-5>8 <a c>}\\{f4}>> r|
}

scoreALeft = \relative c' {
  \globalA
  % Music follows here.
  <f,, a c f>4 r|
  r8 f''-.-1 d-. bf-.|
  r f-.-1 d-. bf-.
  <<{f'4}\\{f8 f,}>> r4|
  <c' e g c>4 r|\clef treble
  r8 c''-.-1 a-. f-.|\clef bass
  r f-.-1 d-. bf-.
  <<{f'4}\\{f8 f,}>> r4|
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
