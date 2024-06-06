\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "Herr, wenn die stolzen Feinde schnauben"
  subtitle = "Weihnachtsoratorium, 6. Teil"
  subsubtitle = "Nr. 54 Coro"
  instrument = "Tenor"
  composer = "Johann Sebastian Bach"
  arranger = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "BWV 248"
  copyright = "Satz: Sven Buschke"
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

globalE = {
  \key d \major
  \time 3/8
  \tempo "Vivace" 4=100 
}

scoreATenorVoice = \relative c' {
  \globalE
%  \compressEmptyBarRests
  \dynamicUp
  % Music follows here.
  \partial 8
  r8
  R4. * 47
  r8 r a d4 a8 e4 a8 fs' e16 fs g e g(fs e d) fs(d) 
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Herr, wenn die stol -- zen Fein -- de schnau -- ben
}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreATenorVoice }
    \addlyrics { \scoreAVerse }
    \layout { }
    \midi { }
  }
}

globalFB = {
  \key g \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreBTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    b4
    b e e8(d) d4 e8(c) a(d) d4\fermata e d g,8(a) b(c) d4 d(c8 b) b4
  }
  \partial 4
  d
  d d8(c) b(c) fs,(b) b(a) a(g) fs4\fermata
  fs g8(a) b(c) b(a) g4 g fs8 e fs4\fermata
  e8 fs g4. a8 b(c) d4~ d(c8 b) b4\fermata
  \bar "|."
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  \repeat volta 2 { <<{Ich steh an dei -- ner Krip -- pen hier, o Je -- su -- lein, mein Le -- ben;}{\new Lyrics{ich kom -- me}}>> }
                       Nimm hin
}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreBTenorVoice }
    \addlyrics { \scoreBVerse }
    \layout { }
    \midi { }
  }
}

globalFC = {
  \key d \major
  \time 4/4
}

scoreCTenorVoice = \relative c' {
  \globalFC
  \dynamicUp
  % Music follows here.
  \partial 4
  r4
  r1
  \repeat volta 2 { R1*10 
  r2 r4 a b8 cs d4 g, a b8(g e a) a4 r
  r1 r2 r4 fs' fs d8(fs) g(e) fs(cs) d4 r r2 r1
  }
  R1*2 r2 r4 e e d d e8 cs fs4.(b,) fs4 r r1 r4 d' d d b b8(as) as4 r r1 r
  r2 r4 e' e4. b8 a4. a8 a(b gs4) a r
  R1*4 r2 r4 d d8 cs16 b a4 a a a1 R1*9 r2 r4\fermata
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  \repeat volta 2 { <<{Nun seid _ ihr wohl ge -- ro -- chen an eu -- rer Fein -- de Schar} \new Lyrics{denn Chris -- tus hat zer -- bro -- chen, was euch zu -- wi -- der war. }>> }
                    Tod, Teu -- fel, Sünd und Höl -- le sind ganz und gar ge -- schwächt;
                    bei Gott hat sei -- ne Stel -- le das mensch -- li -- che Ge -- schlecht.
}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreCTenorVoice }
    \addlyrics { \scoreCVerse }
    \layout { }
    \midi { }
  }
}

scoreDTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreDTenorVoice }
    \addlyrics { \scoreDVerse }
    \layout { }
    \midi { }
  }
}
