\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "Missa Brevis in B-Dur - Johannismesse"
  subtitle = "Kyrie"
  subsubtitle = "Kleine Orgelmesse"
  instrument = "Tenor"
  composer = "Joseph Haydn, 1732-1809"
  arranger = "arranged: Sven Buschke / Anton Böhm"
  poet = "Liturgie"
  meter = ""
  piece = ""
  opus = "Hob. XII:7"
  copyright = ""
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key bf \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Kyrie
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key bf \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreATenorVoice = \relative c' {
  \globalA
  \dynamicUp
  % Music follows here.
  bf4. bf8  bf4. bf8 bf4 a16(bf) c8 d(c) bf4
  r1 r2 d8. f16 f4
  r2 c8. f16 f4
  r4 r8 c c4 c8 r
  r2 c8. c16 c8 c c4(bf2)  
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Ky -- ri --e, e --lei --son, e -- lei --son.
  Ky -- ri --e, e --lei --son, e -- lei --son.
  Ky -- ri --e, e --lei --son, e -- lei --son.
  Ky -- ri --e, e --lei --son, e -- lei --son.  
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Gloria
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalB = {
  \key bf \major
  \numericTimeSignature
  \time 4/4
  \tempo "Allegro" 4=100
}

scoreBTenorVoice = \relative c' {
  \globalB
  \dynamicUp
  % Music follows here.
  r1
  r2 b8\f 
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.

Glória in excélsis Deo
et in terra pax homínibus bonæ voluntátis.
Laudámus te,
benedícimus te,
adorámus te,
glorificámus te,
grátias ágimus tibi propter magnam glóriam tuam,
Dómine Deus, Rex cæléstis,
Deus Pater omnípotens.

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sanctus
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalc = {
  \key bf \major
  \numericTimeSignature
  \time 6/8
  \tempo "Allegro" 4=100
}

scoreCTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  \partial 2.
  r4 r8\f f4.
  d r8 e e 
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  Sanc -- tus, Sanc -- tus, Sanc -- tus Do -- mi -- nus De -- us Sa -- ba -- oth.
  Ple -- ni sunt cae -- li et ter -- ra glo -- ria tua.
  Ho -- san -- na in ex -- cel -- sis.
  Be -- ne -- dic -- tus qui ve -- nit in no -- mi -- ne Do -- mi -- ni.
  Ho -- san -- na in ex -- cel -- sis.
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Kyrie
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalB = {
  \key bf \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Kyrie
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalB = {
  \key bf \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreETenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreETenorVoice }
    \addlyrics { \scoreEVerse }
    \layout { }
    \midi { }
  }
}
