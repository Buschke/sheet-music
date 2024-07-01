\version "2.24.3"
\language "english"

\header {
  dedication = "n"
  title = "n"
  subtitle = "n"
  subsubtitle = "n"
  instrument = "n"
  composer = "n"
  arranger = "n"
  poet = "n"
  meter = "nn"
  piece = "n"
  opus = "n"
  copyright = "n"
  tagline = "n"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key c \major
  \time 4/4
  \tempo "Getragen" 4=100
}

scoreAMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreAMelody }
    \addlyrics { \scoreAVerse }
    \layout { }
    \midi { }
  }
}

scoreBMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreBMelody }
    \addlyrics { \scoreBVerse }
    \layout { }
    \midi { }
  }
}

scoreCMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreCMelody }
    \addlyrics { \scoreCVerse }
    \layout { }
    \midi { }
  }
}

scoreDMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreDMelody }
    \addlyrics { \scoreDVerse }
    \layout { }
    \midi { }
  }
}

scoreEMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreEMelody }
    \addlyrics { \scoreEVerse }
    \layout { }
    \midi { }
  }
}

scoreFMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreFMelody }
    \addlyrics { \scoreFVerse }
    \layout { }
    \midi { }
  }
}

scoreGMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreGVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreGMelody }
    \addlyrics { \scoreGVerse }
    \layout { }
    \midi { }
  }
}

scoreHMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreHVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreHMelody }
    \addlyrics { \scoreHVerse }
    \layout { }
    \midi { }
  }
}

scoreIMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreIVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreIMelody }
    \addlyrics { \scoreIVerse }
    \layout { }
    \midi { }
  }
}

scoreJMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreJVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreJMelody }
    \addlyrics { \scoreJVerse }
    \layout { }
    \midi { }
  }
}

scoreKMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreKVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreKMelody }
    \addlyrics { \scoreKVerse }
    \layout { }
    \midi { }
  }
}

scoreLMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreLVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreLMelody }
    \addlyrics { \scoreLVerse }
    \layout { }
    \midi { }
  }
}

scoreMMelody = \relative c'' {
  \global
  % Music follows here.
  
}

scoreMVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \scoreMMelody }
    \addlyrics { \scoreMVerse }
    \layout { }
    \midi { }
  }
}
