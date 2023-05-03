\version "2.22.2"
\language "english"

\header {
  dedication = "Willy Schneider"
  title = "Neue Klarinettenschule"
  subtitle = "NN"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "Willy Schneider"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "Band 1"
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
  \time 3/4
  \tempo "Andante" 4=100
}

globalA = {
  \key c \major
  \time 3/4
  \tempo "Andante" 4=100
}

scoreAClarinet = \relative c'' {
  \globalA
%   \transposition bf
  % Music follows here.
  g4 e r
  g e r
  d c d
  c2 r4
  d d e
  f2 d4
  e e f
  g2 e4
  g2 e4
  g2 e4
  f e d
  c2 r4
  \bar "|."  
}

scoreATenorVoice = \relative c' {
  \transpose c bf {\globalA}
  \dynamicUp
  % Music follows here.
  \transpose c bf, {\scoreAClarinet}
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Ku -- ckuck, ku -- ckuck, ruft's aus dem Wald.
  Las -- set uns sin -- gen, tan -- zen und sprin -- gen!
  Früh -- ling, Früh -- ling wird es nun bald.    
}

scoreARight = \relative c'' {
  \transpose c bf {\globalA}
  % Music follows here.
  \transpose c bf {\scoreAClarinet}
}

scoreALeft = \relative c' {
  \transpose c bf' {\globalA}
  % Music follows here.
  <g, bf d>4 <ef>
}

scoreAClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} {\transposition bf \scoreAClarinet}

scoreATenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreATenorVoice }
\addlyrics { \scoreAVerse }

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
  \score {
    <<
      \scoreAClarinetPart
      \scoreATenorVoicePart
      \scoreAPianoPart
    >>
    \layout { }
    \midi { }
  }
}

% -------------------------------------

globalB = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreBClarinetA = \relative c'' {
  \globalB
%   \transposition bf
  % Music follows here.
  \partial 4
  c,4\mf
  d\< c f\! e\>
  d2 c4\! \breathe e
  e\< e-.\( a-.\! g-.\>\) 
  f2 e4\! \breathe e-.\(
  e-.\< e-. f-.\! e-.\>
  d2.\) \breathe \! c4
  d\< c f\! e\>
  d2 c4\! e-.\(
  e-.\< e-.\) a\! g\>
  f2 e4\! \breathe e-.\( 
  e-.\< e-.\) f\! e\> 
  d d c\!
  \bar "|."
}

scoreBClarinetB = \relative c'' {
  \globalB
%   \transposition bf
  % Music follows here.
  r4
  r2 r4 c,
  c b c2 \breathe
  c4 c f e
  d g, c \breathe c
  d c a c
  g2. r4
  r1
  r2 r4 c
  d c f e
  d b c2~
  c4 \breathe b a c
  g b d
}

scoreBTenorVoice = \relative c' {
  \transpose c bf {\globalB}
  \dynamicUp
  % Music follows here.
  \transpose c bf, {\scoreBClarinetA}
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  Der Mond ist auf -- ge -- gan -- gen,
  die gold -- nen Stern -- lein pran -- gen
  am Him -- mel hell und klar.
  Der Wald steht schwarz und schwei -- get
  und aus den Wie -- sen stei -- get
  der wei -- ße Ne -- bel wun -- der -- bar.
}

scoreBRight = \relative c'' {
  \transpose c bf {\globalB}
  % Music follows here.
  \transpose c bf {\scoreBClarinetA}
}

scoreBLeft = \relative c' {
  \transpose c bf {\globalB}
  % Music follows here.
  \transpose c bf,, {\scoreBClarinetB}
}

scoreBClarinetPartA = \new Staff \with {
  instrumentName = "Klarinette 1"
  shortInstrumentName = "Kl. 1"
  midiInstrument = "clarinet"
} {\transposition bf \scoreBClarinetA}

scoreBClarinetPartB = \new Staff \with {
  instrumentName = "Klarinette 2"
  shortInstrumentName = "Kl. 2"
  midiInstrument = "clarinet"
} {\transposition bf \scoreBClarinetB}

scoreBTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreBTenorVoice }
\addlyrics { \scoreBVerse }

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
  subtitle = "Der Mond ist aufgegangen"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "Willy Schneider"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "Band 1"
}
  \score {
    <<
      \scoreBClarinetPartA
      \scoreBClarinetPartB
      \scoreBTenorVoicePart
      \scoreBPianoPart
    >>
    \layout { }
    \midi { }
  }
}

globalC = {
  \key d \major
  \time 6/8
  \tempo "Andante" 4.=60
}

scoreCClarinetA = \relative c'' {
  \globalC
%   \transposition bf
  % Music follows here.
  \partial 8
  a8
  a8.\( b16\) a8 d\( cs\) b
  a4.\( g4\) \breathe g8
  fs4 fs8 e( d) e
  fs4.~ fs8 r a
  a8.\( b16\) a8 d\( cs\) b
  a4.\( g4\) \breathe g8
  fs4 fs8 a\( g\) e
  d4.~ d8 r fs
  e8.( fs16) e8 a\( e\) e
  cs'4.\( b4\) \breathe b8
  a4 a8 gs\( a\) b
  a4.~ a8 r a
  a8.\( b16\) a8 d( cs) b
  a4( fs'8) e4 \breathe e8
  d4 d8 cs( b) cs
  d4.~ d8 r
  \bar "|."
}

scoreCClarinetB = \relative c'' {
  \globalC
%   \transposition bf
  % Music follows here.
  \partial 8
  fs,
  fs8.\( g16\) fs8 b\( a\) g
  fs4.\( e4\) e8
  d4 d8 cs\( b\) cs
  d4.~ d8 r fs
  fs8.\( g16\) fs8 b\( a\) g
  fs4.\( e4\) e8
  d4 d8 a\( b\) cs
  d4.~ d8 r d
  cs8.\( d16\) cs8 cs4 cs8
  e4.\( d4\) d8
  cs4 cs8 b\( cs\) d
  cs4.~ cs8 r fs
  fs8.\( g16\) fs8 b\( a\) g
  fs4\( a8\) g4 g8
  fs\( a\) fs a4 g8
  fs4.~ fs8 r
}
scoreCTenorVoice = \relative c' {
  \transpose c bf {\globalC}
  \dynamicUp
  % Music follows here.
  \transpose c bf,, {\scoreCClarinetA}
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  Ich weiß nicht, was soll es be -- deu -- ten
  Dass ich so trau -- rig bin,
  ein Mär -- chen aus ur -- al -- ten Zei -- ten,
  das kommt mir nicht aus dem Sinn.
  Die Luft ist so kühl und es dun -- kelt
  Und ru -- hig fließt der Rhein,
  der Gip -- fel des Ber -- ges fun -- kelt
  im A -- bend -- son -- nen -- schein.  
}

scoreCRight = \relative c'' {
  \transpose c bf {\globalC}
  % Music follows here.
  \transpose c bf, {\scoreCClarinetA}
}

scoreCLeft = \relative c' {
  \transpose c bf {\globalC}
  % Music follows here.
  \transpose c bf,, {\scoreCClarinetB}
}

scoreCClarinetPartA = \new Staff \with {
  instrumentName = "Klarinette 1"
  shortInstrumentName = "Kl. 1"
  midiInstrument = "clarinet"
} {\transposition bf \scoreCClarinetA}

scoreCClarinetPartB = \new Staff \with {
  instrumentName = "Klarinette 2"
  shortInstrumentName = "Kl. 2"
  midiInstrument = "clarinet"
} {\transposition bf \scoreCClarinetB}

scoreCTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreCTenorVoice }
\addlyrics { \scoreCVerse }

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
  subtitle = "Ich weiß nicht, was soll es bedeuten (Die Lorelei)"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "Volkslied"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "Band 1"
}
  \score {
    <<
      \scoreCClarinetPartA
      \scoreCClarinetPartB
      \scoreCTenorVoicePart
      \scoreCPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreDClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.
  
}

scoreDTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  
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

scoreDTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreDTenorVoice }
\addlyrics { \scoreDVerse }

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
  \score {
    <<
      \scoreDClarinetPart
      \scoreDTenorVoicePart
      \scoreDPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreEClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.
  
}

scoreETenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  
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

scoreETenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreETenorVoice }
\addlyrics { \scoreEVerse }

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
  \score {
    <<
      \scoreEClarinetPart
      \scoreETenorVoicePart
      \scoreEPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreFClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.
  
}

scoreFTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreFRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreFLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreFClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreFClarinet

scoreFTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreFTenorVoice }
\addlyrics { \scoreFVerse }

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
  \score {
    <<
      \scoreFClarinetPart
      \scoreFTenorVoicePart
      \scoreFPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreGClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.
  
}

scoreGTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreGVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreGRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreGLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreGClarinetPart = \new Staff \with {
  instrumentName = "Klarinette"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} \scoreGClarinet

scoreGTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreGTenorVoice }
\addlyrics { \scoreGVerse }

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
  \score {
    <<
      \scoreGClarinetPart
      \scoreGTenorVoicePart
      \scoreGPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreHClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.
  
}

scoreHTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreHVerse = \lyricmode {
  % Lyrics follow here.
  
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

scoreHTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreHTenorVoice }
\addlyrics { \scoreHVerse }

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
  \score {
    <<
      \scoreHClarinetPart
      \scoreHTenorVoicePart
      \scoreHPianoPart
    >>
    \layout { }
    \midi { }
  }
}

scoreIClarinet = \relative c'' {
  \global
  \transposition bf
  % Music follows here.
  
}

scoreITenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreIVerse = \lyricmode {
  % Lyrics follow here.
  
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

scoreITenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreITenorVoice }
\addlyrics { \scoreIVerse }

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
  \score {
    <<
      \scoreIClarinetPart
      \scoreITenorVoicePart
      \scoreIPianoPart
    >>
    \layout { }
    \midi { }
  }
}
