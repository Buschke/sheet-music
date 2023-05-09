\version "2.24.1"
\language "english"

\header {
  dedication = "Arranged for The King's Singers"
  title = ""
  subtitle = ""
  subsubtitle = ""
  instrument = "6 part choir (SATBrBrB)"
  composer = ""
  arranger = \markup{"Arrgmnt.: " \with-url "https://buschke.com" "Sven Buschke"}
  poet = "CT 1: Patrick Dunachie"
  meter = "CT 2: 2: Edward Button, Tenor: Julian Gregory"
  piece = "Baritone 1: Christopher Bruerton, Baritone 2: Nick Ashby, Bass: Jonathan Howard"
  opus = "Op. 1	"
  copyright = \markup{"copyright, 09.05.2023" \with-url "https://buschke.com" "Sven Buschke"}
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
% Nummer  1 / A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key c \major
%  \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=100
}

scoreASopranoVoice = \relative c'' {
  \globalA
  \dynamicUp
  % Music follows here.
  r2.
}

scoreAVerseSopranoVoice = \lyricmode {
  % Lyrics follow here.
  Gau -- de -- te
}

scoreAAltoVoice = \relative c' {
  \globalA
  \dynamicUp
  % Music follows here.
  r2.
}

scoreAVerseAltoVoice = \lyricmode {
  % Lyrics follow here.
  Gau -- de -- te
}

scoreATenorVoice = \relative c' {
  \globalA
  \dynamicUp
  % Music follows here.
  d4\mp  d d
  \time 2/4
}

scoreAVerseTenorVoice = \lyricmode {
  % Lyrics follow here.
  Gau -- de -- te
}

scoreABassVoiceI = \relative c {
  \globalA
  \dynamicUp
  % Music follows here.
  a'4 a a
}

scoreAVerseBassVoiceI = \lyricmode {
  % Lyrics follow here.
  Gau -- de -- te
}

scoreABassVoiceII = \relative c {
  \globalA
  \dynamicUp
  % Music follows here.
  f4 f e
}

scoreAVerseBassVoiceII = \lyricmode {
  % Lyrics follow here.
  Gau -- de -- te
}

scoreABassVoiceIII = \relative c {
  \globalA
  \dynamicUp
  % Music follows here.
  d4 d a
}

scoreAVerseBassVoiceIII = \lyricmode {
  % Lyrics follow here.
  Gau -- de -- te
}

scoreASopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  shortInstrumentName = "S."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreASopranoVoice }
\addlyrics { \scoreAVerseSopranoVoice }

scoreAAltoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  shortInstrumentName = "A."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreAAltoVoice }
\addlyrics { \scoreAVerseAltoVoice }

scoreATenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreATenorVoice }
\addlyrics { \scoreAVerseTenorVoice }

scoreABassVoiceIPart = \new Staff \with {
  instrumentName = "Bass I"
  shortInstrumentName = "B. I"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreABassVoiceI }
\addlyrics { \scoreAVerseBassVoiceI }

scoreABassVoiceIIPart = \new Staff \with {
  instrumentName = "Bass II"
  shortInstrumentName = "B. II"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreABassVoiceII }
\addlyrics { \scoreAVerseBassVoiceII }

scoreABassVoiceIIIPart = \new Staff \with {
  instrumentName = "Bass III"
  shortInstrumentName = "B. III"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreABassVoiceIII }
\addlyrics { \scoreAVerseBassVoiceIII }

\bookpart {
\header {
  title = "Gaudete"
  composer = "Piae Cantiones, arr. Brian Kay"
  subtitle =  \markup{ "Link" \with-url "https://www.youtube.com/watch?v=uQyrD7U5aNE" "Youtube"}
  %poet = ""
 % meter = ""
 % piece = ""
%  opus = ""
 % tagline = ""
}
  \score {
    <<
      \scoreASopranoVoicePart
      \scoreAAltoVoicePart
      \scoreATenorVoicePart
      \scoreABassVoiceIPart
      \scoreABassVoiceIIPart
      \scoreABassVoiceIIIPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreBSopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreBVerseSopranoVoice = \lyricmode {
  % Lyrics follow here.

}

scoreBAltoVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreBVerseAltoVoice = \lyricmode {
  % Lyrics follow here.

}

scoreBTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreBVerseTenorVoice = \lyricmode {
  % Lyrics follow here.

}

scoreBBassVoiceI = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreBVerseBassVoiceI = \lyricmode {
  % Lyrics follow here.

}

scoreBBassVoiceII = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreBVerseBassVoiceII = \lyricmode {
  % Lyrics follow here.

}

scoreBBassVoiceIII = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreBVerseBassVoiceIII = \lyricmode {
  % Lyrics follow here.

}

scoreBSopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  shortInstrumentName = "S."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreBSopranoVoice }
\addlyrics { \scoreBVerseSopranoVoice }

scoreBAltoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  shortInstrumentName = "A."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreBAltoVoice }
\addlyrics { \scoreBVerseAltoVoice }

scoreBTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreBTenorVoice }
\addlyrics { \scoreBVerseTenorVoice }

scoreBBassVoiceIPart = \new Staff \with {
  instrumentName = "Bass I"
  shortInstrumentName = "B. I"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreBBassVoiceI }
\addlyrics { \scoreBVerseBassVoiceI }

scoreBBassVoiceIIPart = \new Staff \with {
  instrumentName = "Bass II"
  shortInstrumentName = "B. II"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreBBassVoiceII }
\addlyrics { \scoreBVerseBassVoiceII }

scoreBBassVoiceIIIPart = \new Staff \with {
  instrumentName = "Bass III"
  shortInstrumentName = "B. III"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreBBassVoiceIII }
\addlyrics { \scoreBVerseBassVoiceIII }

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  tagline = ""
}
  \score {
    <<
      \scoreBSopranoVoicePart
      \scoreBAltoVoicePart
      \scoreBTenorVoicePart
      \scoreBBassVoiceIPart
      \scoreBBassVoiceIIPart
      \scoreBBassVoiceIIIPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreCSopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreCVerseSopranoVoice = \lyricmode {
  % Lyrics follow here.

}

scoreCAltoVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreCVerseAltoVoice = \lyricmode {
  % Lyrics follow here.

}

scoreCTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreCVerseTenorVoice = \lyricmode {
  % Lyrics follow here.

}

scoreCBassVoiceI = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreCVerseBassVoiceI = \lyricmode {
  % Lyrics follow here.

}

scoreCBassVoiceII = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreCVerseBassVoiceII = \lyricmode {
  % Lyrics follow here.

}

scoreCBassVoiceIII = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreCVerseBassVoiceIII = \lyricmode {
  % Lyrics follow here.

}

scoreCSopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  shortInstrumentName = "S."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreCSopranoVoice }
\addlyrics { \scoreCVerseSopranoVoice }

scoreCAltoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  shortInstrumentName = "A."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreCAltoVoice }
\addlyrics { \scoreCVerseAltoVoice }

scoreCTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreCTenorVoice }
\addlyrics { \scoreCVerseTenorVoice }

scoreCBassVoiceIPart = \new Staff \with {
  instrumentName = "Bass I"
  shortInstrumentName = "B. I"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreCBassVoiceI }
\addlyrics { \scoreCVerseBassVoiceI }

scoreCBassVoiceIIPart = \new Staff \with {
  instrumentName = "Bass II"
  shortInstrumentName = "B. II"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreCBassVoiceII }
\addlyrics { \scoreCVerseBassVoiceII }

scoreCBassVoiceIIIPart = \new Staff \with {
  instrumentName = "Bass III"
  shortInstrumentName = "B. III"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreCBassVoiceIII }
\addlyrics { \scoreCVerseBassVoiceIII }

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  tagline = ""
}
  \score {
    <<
      \scoreCSopranoVoicePart
      \scoreCAltoVoicePart
      \scoreCTenorVoicePart
      \scoreCBassVoiceIPart
      \scoreCBassVoiceIIPart
      \scoreCBassVoiceIIIPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreDSopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreDVerseSopranoVoice = \lyricmode {
  % Lyrics follow here.

}

scoreDAltoVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreDVerseAltoVoice = \lyricmode {
  % Lyrics follow here.

}

scoreDTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreDVerseTenorVoice = \lyricmode {
  % Lyrics follow here.

}

scoreDBassVoiceI = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreDVerseBassVoiceI = \lyricmode {
  % Lyrics follow here.

}

scoreDBassVoiceII = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreDVerseBassVoiceII = \lyricmode {
  % Lyrics follow here.

}

scoreDBassVoiceIII = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreDVerseBassVoiceIII = \lyricmode {
  % Lyrics follow here.

}

scoreDSopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  shortInstrumentName = "S."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreDSopranoVoice }
\addlyrics { \scoreDVerseSopranoVoice }

scoreDAltoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  shortInstrumentName = "A."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreDAltoVoice }
\addlyrics { \scoreDVerseAltoVoice }

scoreDTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreDTenorVoice }
\addlyrics { \scoreDVerseTenorVoice }

scoreDBassVoiceIPart = \new Staff \with {
  instrumentName = "Bass I"
  shortInstrumentName = "B. I"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreDBassVoiceI }
\addlyrics { \scoreDVerseBassVoiceI }

scoreDBassVoiceIIPart = \new Staff \with {
  instrumentName = "Bass II"
  shortInstrumentName = "B. II"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreDBassVoiceII }
\addlyrics { \scoreDVerseBassVoiceII }

scoreDBassVoiceIIIPart = \new Staff \with {
  instrumentName = "Bass III"
  shortInstrumentName = "B. III"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreDBassVoiceIII }
\addlyrics { \scoreDVerseBassVoiceIII }

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  tagline = ""
}
  \score {
    <<
      \scoreDSopranoVoicePart
      \scoreDAltoVoicePart
      \scoreDTenorVoicePart
      \scoreDBassVoiceIPart
      \scoreDBassVoiceIIPart
      \scoreDBassVoiceIIIPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreESopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreEVerseSopranoVoice = \lyricmode {
  % Lyrics follow here.

}

scoreEAltoVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreEVerseAltoVoice = \lyricmode {
  % Lyrics follow here.

}

scoreETenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreEVerseTenorVoice = \lyricmode {
  % Lyrics follow here.

}

scoreEBassVoiceI = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreEVerseBassVoiceI = \lyricmode {
  % Lyrics follow here.

}

scoreEBassVoiceII = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreEVerseBassVoiceII = \lyricmode {
  % Lyrics follow here.

}

scoreEBassVoiceIII = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreEVerseBassVoiceIII = \lyricmode {
  % Lyrics follow here.

}

scoreESopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  shortInstrumentName = "S."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreESopranoVoice }
\addlyrics { \scoreEVerseSopranoVoice }

scoreEAltoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  shortInstrumentName = "A."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreEAltoVoice }
\addlyrics { \scoreEVerseAltoVoice }

scoreETenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreETenorVoice }
\addlyrics { \scoreEVerseTenorVoice }

scoreEBassVoiceIPart = \new Staff \with {
  instrumentName = "Bass I"
  shortInstrumentName = "B. I"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreEBassVoiceI }
\addlyrics { \scoreEVerseBassVoiceI }

scoreEBassVoiceIIPart = \new Staff \with {
  instrumentName = "Bass II"
  shortInstrumentName = "B. II"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreEBassVoiceII }
\addlyrics { \scoreEVerseBassVoiceII }

scoreEBassVoiceIIIPart = \new Staff \with {
  instrumentName = "Bass III"
  shortInstrumentName = "B. III"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreEBassVoiceIII }
\addlyrics { \scoreEVerseBassVoiceIII }

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  tagline = ""
}
  \score {
    <<
      \scoreESopranoVoicePart
      \scoreEAltoVoicePart
      \scoreETenorVoicePart
      \scoreEBassVoiceIPart
      \scoreEBassVoiceIIPart
      \scoreEBassVoiceIIIPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreFSopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreFVerseSopranoVoice = \lyricmode {
  % Lyrics follow here.

}

scoreFAltoVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreFVerseAltoVoice = \lyricmode {
  % Lyrics follow here.

}

scoreFTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreFVerseTenorVoice = \lyricmode {
  % Lyrics follow here.

}

scoreFBassVoiceI = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreFVerseBassVoiceI = \lyricmode {
  % Lyrics follow here.

}

scoreFBassVoiceII = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreFVerseBassVoiceII = \lyricmode {
  % Lyrics follow here.

}

scoreFBassVoiceIII = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreFVerseBassVoiceIII = \lyricmode {
  % Lyrics follow here.

}

scoreFSopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  shortInstrumentName = "S."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreFSopranoVoice }
\addlyrics { \scoreFVerseSopranoVoice }

scoreFAltoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  shortInstrumentName = "A."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreFAltoVoice }
\addlyrics { \scoreFVerseAltoVoice }

scoreFTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreFTenorVoice }
\addlyrics { \scoreFVerseTenorVoice }

scoreFBassVoiceIPart = \new Staff \with {
  instrumentName = "Bass I"
  shortInstrumentName = "B. I"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreFBassVoiceI }
\addlyrics { \scoreFVerseBassVoiceI }

scoreFBassVoiceIIPart = \new Staff \with {
  instrumentName = "Bass II"
  shortInstrumentName = "B. II"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreFBassVoiceII }
\addlyrics { \scoreFVerseBassVoiceII }

scoreFBassVoiceIIIPart = \new Staff \with {
  instrumentName = "Bass III"
  shortInstrumentName = "B. III"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreFBassVoiceIII }
\addlyrics { \scoreFVerseBassVoiceIII }

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  tagline = ""
}
  \score {
    <<
      \scoreFSopranoVoicePart
      \scoreFAltoVoicePart
      \scoreFTenorVoicePart
      \scoreFBassVoiceIPart
      \scoreFBassVoiceIIPart
      \scoreFBassVoiceIIIPart
    >>
    \layout { }
    \midi { }
  }
}

scoreGSopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreGVerseSopranoVoice = \lyricmode {
  % Lyrics follow here.

}

scoreGAltoVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreGVerseAltoVoice = \lyricmode {
  % Lyrics follow here.

}

scoreGTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreGVerseTenorVoice = \lyricmode {
  % Lyrics follow here.

}

scoreGBassVoiceI = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreGVerseBassVoiceI = \lyricmode {
  % Lyrics follow here.

}

scoreGBassVoiceII = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreGVerseBassVoiceII = \lyricmode {
  % Lyrics follow here.

}

scoreGBassVoiceIII = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreGVerseBassVoiceIII = \lyricmode {
  % Lyrics follow here.

}

scoreGSopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  shortInstrumentName = "S."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreGSopranoVoice }
\addlyrics { \scoreGVerseSopranoVoice }

scoreGAltoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  shortInstrumentName = "A."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreGAltoVoice }
\addlyrics { \scoreGVerseAltoVoice }

scoreGTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreGTenorVoice }
\addlyrics { \scoreGVerseTenorVoice }

scoreGBassVoiceIPart = \new Staff \with {
  instrumentName = "Bass I"
  shortInstrumentName = "B. I"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreGBassVoiceI }
\addlyrics { \scoreGVerseBassVoiceI }

scoreGBassVoiceIIPart = \new Staff \with {
  instrumentName = "Bass II"
  shortInstrumentName = "B. II"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreGBassVoiceII }
\addlyrics { \scoreGVerseBassVoiceII }

scoreGBassVoiceIIIPart = \new Staff \with {
  instrumentName = "Bass III"
  shortInstrumentName = "B. III"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreGBassVoiceIII }
\addlyrics { \scoreGVerseBassVoiceIII }

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  tagline = ""
}
  \score {
    <<
      \scoreGSopranoVoicePart
      \scoreGAltoVoicePart
      \scoreGTenorVoicePart
      \scoreGBassVoiceIPart
      \scoreGBassVoiceIIPart
      \scoreGBassVoiceIIIPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreHSopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreHVerseSopranoVoice = \lyricmode {
  % Lyrics follow here.

}

scoreHAltoVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreHVerseAltoVoice = \lyricmode {
  % Lyrics follow here.

}

scoreHTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreHVerseTenorVoice = \lyricmode {
  % Lyrics follow here.

}

scoreHBassVoiceI = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreHVerseBassVoiceI = \lyricmode {
  % Lyrics follow here.

}

scoreHBassVoiceII = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreHVerseBassVoiceII = \lyricmode {
  % Lyrics follow here.

}

scoreHBassVoiceIII = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreHVerseBassVoiceIII = \lyricmode {
  % Lyrics follow here.

}

scoreHSopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  shortInstrumentName = "S."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreHSopranoVoice }
\addlyrics { \scoreHVerseSopranoVoice }

scoreHAltoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  shortInstrumentName = "A."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreHAltoVoice }
\addlyrics { \scoreHVerseAltoVoice }

scoreHTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreHTenorVoice }
\addlyrics { \scoreHVerseTenorVoice }

scoreHBassVoiceIPart = \new Staff \with {
  instrumentName = "Bass I"
  shortInstrumentName = "B. I"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreHBassVoiceI }
\addlyrics { \scoreHVerseBassVoiceI }

scoreHBassVoiceIIPart = \new Staff \with {
  instrumentName = "Bass II"
  shortInstrumentName = "B. II"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreHBassVoiceII }
\addlyrics { \scoreHVerseBassVoiceII }

scoreHBassVoiceIIIPart = \new Staff \with {
  instrumentName = "Bass III"
  shortInstrumentName = "B. III"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreHBassVoiceIII }
\addlyrics { \scoreHVerseBassVoiceIII }

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  tagline = ""
}
  \score {
    <<
      \scoreHSopranoVoicePart
      \scoreHAltoVoicePart
      \scoreHTenorVoicePart
      \scoreHBassVoiceIPart
      \scoreHBassVoiceIIPart
      \scoreHBassVoiceIIIPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreISopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreIVerseSopranoVoice = \lyricmode {
  % Lyrics follow here.

}

scoreIAltoVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreIVerseAltoVoice = \lyricmode {
  % Lyrics follow here.

}

scoreITenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreIVerseTenorVoice = \lyricmode {
  % Lyrics follow here.

}

scoreIBassVoiceI = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreIVerseBassVoiceI = \lyricmode {
  % Lyrics follow here.

}

scoreIBassVoiceII = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreIVerseBassVoiceII = \lyricmode {
  % Lyrics follow here.

}

scoreIBassVoiceIII = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreIVerseBassVoiceIII = \lyricmode {
  % Lyrics follow here.

}

scoreISopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  shortInstrumentName = "S."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreISopranoVoice }
\addlyrics { \scoreIVerseSopranoVoice }

scoreIAltoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  shortInstrumentName = "A."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreIAltoVoice }
\addlyrics { \scoreIVerseAltoVoice }

scoreITenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreITenorVoice }
\addlyrics { \scoreIVerseTenorVoice }

scoreIBassVoiceIPart = \new Staff \with {
  instrumentName = "Bass I"
  shortInstrumentName = "B. I"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreIBassVoiceI }
\addlyrics { \scoreIVerseBassVoiceI }

scoreIBassVoiceIIPart = \new Staff \with {
  instrumentName = "Bass II"
  shortInstrumentName = "B. II"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreIBassVoiceII }
\addlyrics { \scoreIVerseBassVoiceII }

scoreIBassVoiceIIIPart = \new Staff \with {
  instrumentName = "Bass III"
  shortInstrumentName = "B. III"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreIBassVoiceIII }
\addlyrics { \scoreIVerseBassVoiceIII }

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  tagline = ""
}
  \score {
    <<
      \scoreISopranoVoicePart
      \scoreIAltoVoicePart
      \scoreITenorVoicePart
      \scoreIBassVoiceIPart
      \scoreIBassVoiceIIPart
      \scoreIBassVoiceIIIPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer  /
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreJSopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreJVerseSopranoVoice = \lyricmode {
  % Lyrics follow here.

}

scoreJAltoVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreJVerseAltoVoice = \lyricmode {
  % Lyrics follow here.

}

scoreJTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

}

scoreJVerseTenorVoice = \lyricmode {
  % Lyrics follow here.

}

scoreJBassVoiceI = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreJVerseBassVoiceI = \lyricmode {
  % Lyrics follow here.

}

scoreJBassVoiceII = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreJVerseBassVoiceII = \lyricmode {
  % Lyrics follow here.

}

scoreJBassVoiceIII = \relative c {
  \global
  \dynamicUp
  % Music follows here.

}

scoreJVerseBassVoiceIII = \lyricmode {
  % Lyrics follow here.

}

scoreJSopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  shortInstrumentName = "S."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreJSopranoVoice }
\addlyrics { \scoreJVerseSopranoVoice }

scoreJAltoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  shortInstrumentName = "A."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreJAltoVoice }
\addlyrics { \scoreJVerseAltoVoice }

scoreJTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreJTenorVoice }
\addlyrics { \scoreJVerseTenorVoice }

scoreJBassVoiceIPart = \new Staff \with {
  instrumentName = "Bass I"
  shortInstrumentName = "B. I"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreJBassVoiceI }
\addlyrics { \scoreJVerseBassVoiceI }

scoreJBassVoiceIIPart = \new Staff \with {
  instrumentName = "Bass II"
  shortInstrumentName = "B. II"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreJBassVoiceII }
\addlyrics { \scoreJVerseBassVoiceII }

scoreJBassVoiceIIIPart = \new Staff \with {
  instrumentName = "Bass III"
  shortInstrumentName = "B. III"
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreJBassVoiceIII }
\addlyrics { \scoreJVerseBassVoiceIII }

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  tagline = ""
}
  \score {
    <<
      \scoreJSopranoVoicePart
      \scoreJAltoVoicePart
      \scoreJTenorVoicePart
      \scoreJBassVoiceIPart
      \scoreJBassVoiceIIPart
      \scoreJBassVoiceIIIPart
    >>
    \layout { }
    \midi { }
  }
}
