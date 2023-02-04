\version "2.22.2"
\language "deutsch"

\header {
  dedication = "NN"
  title = "Kirchenmusiker C-Ausbildung"
  subtitle = "Pedal-Solo Übungen"
  subsubtitle = "Hausaufgaben KW 43-2022"
  instrument = "Orgel"
  composer = "Johann Sebastian Bach"
  arranger = "Satz: Sven Buschke"
  poet = "Unterricht bei: Andreas Lang"
  meter = "NN"
  piece = "NN"
  opus = "NN"
  copyright = "NN"
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
  \tempo "Andante" 4=100
}

global = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreABcMusic = \relative c {
  \global
  % Music follows here.
  r16 g c g c g c g c8 c16 g e' c e c |
  e8 e16 c g' e g e g8 e16 g c, c' g c |
  c, c' g c e, g e g c, c' g c e, c' g c |
  a c f, c' g c 
}

scoreABcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

\bookpart {
  \score {
    <<
      \new Staff \with {
        instrumentName = "Basso Continuo"
        shortInstrumentName = "B.C."
        midiInstrument = "cello"
      } { \clef bass \scoreABcMusic }
      \new FiguredBass \scoreABcFigures
    >>
    \layout { }
    \midi { }
  }
}

scoreBBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreBBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

\bookpart {
  \score {
    <<
      \new Staff \with {
        instrumentName = "Basso Continuo"
        shortInstrumentName = "B.C."
        midiInstrument = "cello"
      } { \clef bass \scoreBBcMusic }
      \new FiguredBass \scoreBBcFigures
    >>
    \layout { }
    \midi { }
  }
}

scoreCBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreCBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

\bookpart {
  \score {
    <<
      \new Staff \with {
        instrumentName = "Basso Continuo"
        shortInstrumentName = "B.C."
        midiInstrument = "cello"
      } { \clef bass \scoreCBcMusic }
      \new FiguredBass \scoreCBcFigures
    >>
    \layout { }
    \midi { }
  }
}

scoreDBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreDBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

\bookpart {
  \score {
    <<
      \new Staff \with {
        instrumentName = "Basso Continuo"
        shortInstrumentName = "B.C."
        midiInstrument = "cello"
      } { \clef bass \scoreDBcMusic }
      \new FiguredBass \scoreDBcFigures
    >>
    \layout { }
    \midi { }
  }
}

scoreEBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreEBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

\bookpart {
  \score {
    <<
      \new Staff \with {
        instrumentName = "Basso Continuo"
        shortInstrumentName = "B.C."
        midiInstrument = "cello"
      } { \clef bass \scoreEBcMusic }
      \new FiguredBass \scoreEBcFigures
    >>
    \layout { }
    \midi { }
  }
}

scoreFBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreFBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

\bookpart {
  \score {
    <<
      \new Staff \with {
        instrumentName = "Basso Continuo"
        shortInstrumentName = "B.C."
        midiInstrument = "cello"
      } { \clef bass \scoreFBcMusic }
      \new FiguredBass \scoreFBcFigures
    >>
    \layout { }
    \midi { }
  }
}

scoreGBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreGBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

\bookpart {
  \score {
    <<
      \new Staff \with {
        instrumentName = "Basso Continuo"
        shortInstrumentName = "B.C."
        midiInstrument = "cello"
      } { \clef bass \scoreGBcMusic }
      \new FiguredBass \scoreGBcFigures
    >>
    \layout { }
    \midi { }
  }
}

scoreHBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreHBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

\bookpart {
  \score {
    <<
      \new Staff \with {
        instrumentName = "Basso Continuo"
        shortInstrumentName = "B.C."
        midiInstrument = "cello"
      } { \clef bass \scoreHBcMusic }
      \new FiguredBass \scoreHBcFigures
    >>
    \layout { }
    \midi { }
  }
}

scoreIBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreIBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

\bookpart {
  \score {
    <<
      \new Staff \with {
        instrumentName = "Basso Continuo"
        shortInstrumentName = "B.C."
        midiInstrument = "cello"
      } { \clef bass \scoreIBcMusic }
      \new FiguredBass \scoreIBcFigures
    >>
    \layout { }
    \midi { }
  }
}

scoreJBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreJBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

\bookpart {
  \score {
    <<
      \new Staff \with {
        instrumentName = "Basso Continuo"
        shortInstrumentName = "B.C."
        midiInstrument = "cello"
      } { \clef bass \scoreJBcMusic }
      \new FiguredBass \scoreJBcFigures
    >>
    \layout { }
    \midi { }
  }
}
