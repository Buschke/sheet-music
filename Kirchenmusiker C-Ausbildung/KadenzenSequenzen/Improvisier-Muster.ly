\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "Improvisier-Muster"
  subtitle = ""
  subsubtitle = ""
  instrument = ""
  composer = ""
  arranger = ""
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  copyright = ""
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% C-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key c \major
  \global
}

scoreAFlute = \relative c'' {
  \globalA
  % Music follows here.
  d8 c16 d e8 f16 e d8 e16 d c8 b16 c d8 e16 d d8 c16 d c2
}

scoreAViolinI = \relative c'' {
  \globalA
  % Music follows here.
  d8 c16 d e8 f16 e d8 e16 d c8 b16 c d8 e16 d d8 c16 d c2
}

scoreAViolinII = \relative c'' {
  \globalA
  % Music follows here.
  d16 a b c d f e d c e d c c e d c d a b c d e f g c,2
}

scoreAViolinIII = \relative c'' {
  \globalA
  % Music follows here.
  \tuplet 3/2 { d8 b g } \tuplet 3/2 { d' b g } \tuplet 3/2 { d' b g } \tuplet 3/2 { b g e } \tuplet 3/2 { d' b g } \tuplet 3/2 { d' b g } c2
}

scoreAViolinIV = \relative c'' {
  \globalA
  % Music follows here.
  d16 g, b d d g, b d d g, b d c e, g c d g, b d g f e d c2
}

scoreAViolinV = \relative c'' {
  \globalA
  % Music follows here.
  
}

scoreAViolinVI = \relative c'' {
  \globalA
  % Music follows here.
  
}

scoreASoprano = \relative c'' {
  \globalA
  % Music follows here.
  d4 e d e d d e2
}

scoreAAlto = \relative c' {
  \globalA
  % Music follows here.
  b4 c b c b b c2
}

scoreATenor = \relative c' {
  \globalA
  % Music follows here.
  g4 g g g g g g2
}

scoreABass = \relative c {
  \globalA
  % Music follows here.
  g4 c g c g g c2
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreAChordNames = \chordmode {
  \globalA
  % Chords follow here.
  g4 c g c g g c2
}

scoreAFlutePart = \new Staff \with {
  instrumentName = "Melodie"
  shortInstrumentName = "M."
  midiInstrument = "flute"
} \scoreAFlute

scoreAViolinIPart = \new Staff \with {
  instrumentName = "Impro I"
  shortInstrumentName = "I. I"
  midiInstrument = "violin"
} \scoreAViolinI

scoreAViolinIIPart = \new Staff \with {
  instrumentName = "Impro II"
  shortInstrumentName = "I. II"
  midiInstrument = "violin"
} \scoreAViolinII

scoreAViolinIIIPart = \new Staff \with {
  instrumentName = "Impro III"
  shortInstrumentName = "I. III"
  midiInstrument = "violin"
} \scoreAViolinIII

scoreAViolinIVPart = \new Staff \with {
  instrumentName = "Impro IV"
  shortInstrumentName = "I. IV"
  midiInstrument = "violin"
} \scoreAViolinIV

scoreAViolinVPart = \new Staff \with {
  instrumentName = "Impro V"
  shortInstrumentName = "I. V"
  midiInstrument = "violin"
} \scoreAViolinV

scoreAViolinVIPart = \new Staff \with {
  instrumentName = "Impro VI"
  shortInstrumentName = "I. VI"
  midiInstrument = "violin"
} \scoreAViolinVI

scoreAChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreASoprano }
    \new Voice = "alto" { \voiceTwo \scoreAAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreAVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreATenor }
    \new Voice = "bass" { \voiceTwo \scoreABass }
  >>
>>

scoreAChordsPart = \new ChordNames \scoreAChordNames

\bookpart {
  \header {
    subtitle = "C-Dur"
  }
  \score {
    <<
      \scoreAFlutePart
      \scoreAViolinIPart
      \scoreAViolinIIPart
      \scoreAViolinIIIPart
      \scoreAViolinIVPart
      \scoreAViolinVPart
      \scoreAViolinVIPart
      \scoreAChoirPart
      \scoreAChordsPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% a-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalB = {
  \key c \major
  \global
}

scoreBFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreBViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreBViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreBViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreBViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreBViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreBViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreBSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreBChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreBFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreBFlute

scoreBViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreBViolinI

scoreBViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreBViolinII

scoreBViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreBViolinIII

scoreBViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreBViolinIV

scoreBViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreBViolinV

scoreBViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreBViolinVI

scoreBChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreBSoprano }
    \new Voice = "alto" { \voiceTwo \scoreBAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreBVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreBTenor }
    \new Voice = "bass" { \voiceTwo \scoreBBass }
  >>
>>

scoreBChordsPart = \new ChordNames \scoreBChordNames

\bookpart {
  \score {
    <<
      \scoreBFlutePart
      \scoreBViolinIPart
      \scoreBViolinIIPart
      \scoreBViolinIIIPart
      \scoreBViolinIVPart
      \scoreBViolinVPart
      \scoreBViolinVIPart
      \scoreBChoirPart
      \scoreBChordsPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% G-Dur
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \transpose c g \key c \major
  \global
}

scoreCFlute = \relative c'' {
  \globalC
  % Music follows here.
  \transpose c g \scoreAFlute
}

scoreCViolinI = \relative c'' {
  \globalC
  % Music follows here.
  \transpose c g \scoreAViolinI
}

scoreCViolinII = \relative c'' {
  \globalC
  % Music follows here.
  \transpose c g \scoreAViolinII
}

scoreCViolinIII = \relative c'' {
  \globalC
  % Music follows here.
  \transpose c g \scoreAViolinIII
}

scoreCViolinIV = \relative c'' {
  \globalC
  % Music follows here.
  \transpose c g \scoreAViolinIV
}

scoreCViolinV = \relative c'' {
  \globalC
  % Music follows here.
  \transpose c g \scoreAViolinV
}

scoreCViolinVI = \relative c'' {
  \globalC
  % Music follows here.
  \transpose c g \scoreAViolinVI
}

scoreCSoprano = \relative c'' {
  \globalC
  % Music follows here.
  \transpose c g \scoreASoprano
}

scoreCAlto = \relative c' {
  \globalC
  % Music follows here.
  \transpose c g \scoreAAlto
}

scoreCTenor = \relative c' {
  \globalC
  % Music follows here.
  \transpose c g \scoreATenor
}

scoreCBass = \relative c {
  \globalC
  % Music follows here.
  \transpose c g \scoreABass
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreCChordNames = \chordmode {
  \globalC
  % Chords follow here.
  \transpose c g \scoreAChordNames
}

scoreCFlutePart = \new Staff \with {
  instrumentName = "Melodie"
  shortInstrumentName = "M."
  midiInstrument = "flute"
} \scoreCFlute

scoreCViolinIPart = \new Staff \with {
  instrumentName = "Impro I"
  shortInstrumentName = "I. I"
  midiInstrument = "violin"
} \scoreCViolinI

scoreCViolinIIPart = \new Staff \with {
  instrumentName = "Impro II"
  shortInstrumentName = "I. II"
  midiInstrument = "violin"
} \scoreCViolinII

scoreCViolinIIIPart = \new Staff \with {
  instrumentName = "Impro III"
  shortInstrumentName = "I. III"
  midiInstrument = "violin"
} \scoreCViolinIII

scoreCViolinIVPart = \new Staff \with {
  instrumentName = "Impro IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreCViolinIV

scoreCViolinVPart = \new Staff \with {
  instrumentName = "Impro V"
  shortInstrumentName = "I. V"
  midiInstrument = "violin"
} \scoreCViolinV

scoreCViolinVIPart = \new Staff \with {
  instrumentName = "Impro VI"
  shortInstrumentName = "I. VI"
  midiInstrument = "violin"
} \scoreCViolinVI

scoreCChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreCSoprano }
    \new Voice = "alto" { \voiceTwo \scoreCAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreCVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreCTenor }
    \new Voice = "bass" { \voiceTwo \scoreCBass }
  >>
>>

scoreCChordsPart = \new ChordNames \scoreCChordNames

\bookpart {
  \header {
    subtitle = "G-Dur"
  }
  \score {
    <<
      \scoreCFlutePart
      \scoreCViolinIPart
      \scoreCViolinIIPart
      \scoreCViolinIIIPart
      \scoreCViolinIVPart
      \scoreCViolinVPart
      \scoreCViolinVIPart
      \scoreCChoirPart
      \scoreCChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreDFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreDViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreDViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreDViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreDViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreDViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreDViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreDViolinVII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreDSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreDChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreDFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreDFlute

scoreDViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreDViolinI

scoreDViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreDViolinII

scoreDViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreDViolinIII

scoreDViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreDViolinIV

scoreDViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreDViolinV

scoreDViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreDViolinVI

scoreDViolinVIIPart = \new Staff \with {
  instrumentName = "Violine VII"
  shortInstrumentName = "Vl. VII"
  midiInstrument = "violin"
} \scoreDViolinVII

scoreDChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreDSoprano }
    \new Voice = "alto" { \voiceTwo \scoreDAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreDVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreDTenor }
    \new Voice = "bass" { \voiceTwo \scoreDBass }
  >>
>>

scoreDChordsPart = \new ChordNames \scoreDChordNames

\bookpart {
  \score {
    <<
      \scoreDFlutePart
      \scoreDViolinIPart
      \scoreDViolinIIPart
      \scoreDViolinIIIPart
      \scoreDViolinIVPart
      \scoreDViolinVPart
      \scoreDViolinVIPart
      \scoreDViolinVIIPart
      \scoreDChoirPart
      \scoreDChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreEFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreEViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreEViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreEViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreEViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreEViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreEViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreESoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreEAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreETenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreEBass = \relative c {
  \global
  % Music follows here.
  
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreEChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreEFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreEFlute

scoreEViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreEViolinI

scoreEViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreEViolinII

scoreEViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreEViolinIII

scoreEViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreEViolinIV

scoreEViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreEViolinV

scoreEViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreEViolinVI

scoreEChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreESoprano }
    \new Voice = "alto" { \voiceTwo \scoreEAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreEVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreETenor }
    \new Voice = "bass" { \voiceTwo \scoreEBass }
  >>
>>

scoreEChordsPart = \new ChordNames \scoreEChordNames

\bookpart {
  \score {
    <<
      \scoreEFlutePart
      \scoreEViolinIPart
      \scoreEViolinIIPart
      \scoreEViolinIIIPart
      \scoreEViolinIVPart
      \scoreEViolinVPart
      \scoreEViolinVIPart
      \scoreEChoirPart
      \scoreEChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreFFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreFViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreFViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreFViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreFViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreFViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreFViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreFSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreFAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreFTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreFBass = \relative c {
  \global
  % Music follows here.
  
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreFChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreFFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreFFlute

scoreFViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreFViolinI

scoreFViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreFViolinII

scoreFViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreFViolinIII

scoreFViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreFViolinIV

scoreFViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreFViolinV

scoreFViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreFViolinVI

scoreFChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreFSoprano }
    \new Voice = "alto" { \voiceTwo \scoreFAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreFVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreFTenor }
    \new Voice = "bass" { \voiceTwo \scoreFBass }
  >>
>>

scoreFChordsPart = \new ChordNames \scoreFChordNames

\bookpart {
  \score {
    <<
      \scoreFFlutePart
      \scoreFViolinIPart
      \scoreFViolinIIPart
      \scoreFViolinIIIPart
      \scoreFViolinIVPart
      \scoreFViolinVPart
      \scoreFViolinVIPart
      \scoreFChoirPart
      \scoreFChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreGFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreGViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreGViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreGViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreGViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreGViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreGViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreGSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreGAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreGTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreGBass = \relative c {
  \global
  % Music follows here.
  
}

scoreGVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreGChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreGFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreGFlute

scoreGViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreGViolinI

scoreGViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreGViolinII

scoreGViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreGViolinIII

scoreGViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreGViolinIV

scoreGViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreGViolinV

scoreGViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreGViolinVI

scoreGChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreGSoprano }
    \new Voice = "alto" { \voiceTwo \scoreGAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreGVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreGTenor }
    \new Voice = "bass" { \voiceTwo \scoreGBass }
  >>
>>

scoreGChordsPart = \new ChordNames \scoreGChordNames

\bookpart {
  \score {
    <<
      \scoreGFlutePart
      \scoreGViolinIPart
      \scoreGViolinIIPart
      \scoreGViolinIIIPart
      \scoreGViolinIVPart
      \scoreGViolinVPart
      \scoreGViolinVIPart
      \scoreGChoirPart
      \scoreGChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreHFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreHViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreHViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreHViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreHViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreHViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreHViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreHSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreHAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreHTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreHBass = \relative c {
  \global
  % Music follows here.
  
}

scoreHVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreHChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreHFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreHFlute

scoreHViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreHViolinI

scoreHViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreHViolinII

scoreHViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreHViolinIII

scoreHViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreHViolinIV

scoreHViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreHViolinV

scoreHViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreHViolinVI

scoreHChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreHSoprano }
    \new Voice = "alto" { \voiceTwo \scoreHAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreHVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreHTenor }
    \new Voice = "bass" { \voiceTwo \scoreHBass }
  >>
>>

scoreHChordsPart = \new ChordNames \scoreHChordNames

\bookpart {
  \score {
    <<
      \scoreHFlutePart
      \scoreHViolinIPart
      \scoreHViolinIIPart
      \scoreHViolinIIIPart
      \scoreHViolinIVPart
      \scoreHViolinVPart
      \scoreHViolinVIPart
      \scoreHChoirPart
      \scoreHChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreIFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreIViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreIViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreIViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreIViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreIViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreIViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreISoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreIAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreITenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreIBass = \relative c {
  \global
  % Music follows here.
  
}

scoreIVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreIChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreIFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreIFlute

scoreIViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreIViolinI

scoreIViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreIViolinII

scoreIViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreIViolinIII

scoreIViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreIViolinIV

scoreIViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreIViolinV

scoreIViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreIViolinVI

scoreIChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreISoprano }
    \new Voice = "alto" { \voiceTwo \scoreIAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreIVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreITenor }
    \new Voice = "bass" { \voiceTwo \scoreIBass }
  >>
>>

scoreIChordsPart = \new ChordNames \scoreIChordNames

\bookpart {
  \score {
    <<
      \scoreIFlutePart
      \scoreIViolinIPart
      \scoreIViolinIIPart
      \scoreIViolinIIIPart
      \scoreIViolinIVPart
      \scoreIViolinVPart
      \scoreIViolinVIPart
      \scoreIChoirPart
      \scoreIChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreJFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreJViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreJViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreJViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreJViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreJViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreJViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreJSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreJAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreJTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreJBass = \relative c {
  \global
  % Music follows here.
  
}

scoreJVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreJChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreJFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreJFlute

scoreJViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreJViolinI

scoreJViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreJViolinII

scoreJViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreJViolinIII

scoreJViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreJViolinIV

scoreJViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreJViolinV

scoreJViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreJViolinVI

scoreJChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreJSoprano }
    \new Voice = "alto" { \voiceTwo \scoreJAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreJVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreJTenor }
    \new Voice = "bass" { \voiceTwo \scoreJBass }
  >>
>>

scoreJChordsPart = \new ChordNames \scoreJChordNames

\bookpart {
  \score {
    <<
      \scoreJFlutePart
      \scoreJViolinIPart
      \scoreJViolinIIPart
      \scoreJViolinIIIPart
      \scoreJViolinIVPart
      \scoreJViolinVPart
      \scoreJViolinVIPart
      \scoreJChoirPart
      \scoreJChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreKFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreKViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreKViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreKViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreKViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreKViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreKViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreKSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreKAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreKTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreKBass = \relative c {
  \global
  % Music follows here.
  
}

scoreKVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreKChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreKFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreKFlute

scoreKViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreKViolinI

scoreKViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreKViolinII

scoreKViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreKViolinIII

scoreKViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreKViolinIV

scoreKViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreKViolinV

scoreKViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreKViolinVI

scoreKChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreKSoprano }
    \new Voice = "alto" { \voiceTwo \scoreKAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreKVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreKTenor }
    \new Voice = "bass" { \voiceTwo \scoreKBass }
  >>
>>

scoreKChordsPart = \new ChordNames \scoreKChordNames

\bookpart {
  \score {
    <<
      \scoreKFlutePart
      \scoreKViolinIPart
      \scoreKViolinIIPart
      \scoreKViolinIIIPart
      \scoreKViolinIVPart
      \scoreKViolinVPart
      \scoreKViolinVIPart
      \scoreKChoirPart
      \scoreKChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreLFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreLViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreLViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreLViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreLViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreLViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreLViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreLSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreLAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreLTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreLBass = \relative c {
  \global
  % Music follows here.
  
}

scoreLVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreLChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreLFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreLFlute

scoreLViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreLViolinI

scoreLViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreLViolinII

scoreLViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreLViolinIII

scoreLViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreLViolinIV

scoreLViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreLViolinV

scoreLViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreLViolinVI

scoreLChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreLSoprano }
    \new Voice = "alto" { \voiceTwo \scoreLAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreLVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreLTenor }
    \new Voice = "bass" { \voiceTwo \scoreLBass }
  >>
>>

scoreLChordsPart = \new ChordNames \scoreLChordNames

\bookpart {
  \score {
    <<
      \scoreLFlutePart
      \scoreLViolinIPart
      \scoreLViolinIIPart
      \scoreLViolinIIIPart
      \scoreLViolinIVPart
      \scoreLViolinVPart
      \scoreLViolinVIPart
      \scoreLChoirPart
      \scoreLChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreMFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreMViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreMViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreMViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreMViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreMViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreMViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreMSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreMAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreMTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreMBass = \relative c {
  \global
  % Music follows here.
  
}

scoreMVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreMChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreMFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreMFlute

scoreMViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreMViolinI

scoreMViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreMViolinII

scoreMViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreMViolinIII

scoreMViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreMViolinIV

scoreMViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreMViolinV

scoreMViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreMViolinVI

scoreMChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreMSoprano }
    \new Voice = "alto" { \voiceTwo \scoreMAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreMVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreMTenor }
    \new Voice = "bass" { \voiceTwo \scoreMBass }
  >>
>>

scoreMChordsPart = \new ChordNames \scoreMChordNames

\bookpart {
  \score {
    <<
      \scoreMFlutePart
      \scoreMViolinIPart
      \scoreMViolinIIPart
      \scoreMViolinIIIPart
      \scoreMViolinIVPart
      \scoreMViolinVPart
      \scoreMViolinVIPart
      \scoreMChoirPart
      \scoreMChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreNFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreNViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreNViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreNViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreNViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreNViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreNViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreNSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreNAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreNTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreNBass = \relative c {
  \global
  % Music follows here.
  
}

scoreNVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreNChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreNFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreNFlute

scoreNViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreNViolinI

scoreNViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreNViolinII

scoreNViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreNViolinIII

scoreNViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreNViolinIV

scoreNViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreNViolinV

scoreNViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreNViolinVI

scoreNChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreNSoprano }
    \new Voice = "alto" { \voiceTwo \scoreNAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreNVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreNTenor }
    \new Voice = "bass" { \voiceTwo \scoreNBass }
  >>
>>

scoreNChordsPart = \new ChordNames \scoreNChordNames

\bookpart {
  \score {
    <<
      \scoreNFlutePart
      \scoreNViolinIPart
      \scoreNViolinIIPart
      \scoreNViolinIIIPart
      \scoreNViolinIVPart
      \scoreNViolinVPart
      \scoreNViolinVIPart
      \scoreNChoirPart
      \scoreNChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreOFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreOViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreOViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreOViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreOViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreOViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreOViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreOSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreOAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreOTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreOBass = \relative c {
  \global
  % Music follows here.
  
}

scoreOVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreOChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreOFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreOFlute

scoreOViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreOViolinI

scoreOViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreOViolinII

scoreOViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreOViolinIII

scoreOViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreOViolinIV

scoreOViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreOViolinV

scoreOViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreOViolinVI

scoreOChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreOSoprano }
    \new Voice = "alto" { \voiceTwo \scoreOAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreOVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreOTenor }
    \new Voice = "bass" { \voiceTwo \scoreOBass }
  >>
>>

scoreOChordsPart = \new ChordNames \scoreOChordNames

\bookpart {
  \score {
    <<
      \scoreOFlutePart
      \scoreOViolinIPart
      \scoreOViolinIIPart
      \scoreOViolinIIIPart
      \scoreOViolinIVPart
      \scoreOViolinVPart
      \scoreOViolinVIPart
      \scoreOChoirPart
      \scoreOChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scorePFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scorePViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scorePViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scorePViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scorePViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scorePViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scorePViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scorePSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scorePAlto = \relative c' {
  \global
  % Music follows here.
  
}

scorePTenor = \relative c' {
  \global
  % Music follows here.
  
}

scorePBass = \relative c {
  \global
  % Music follows here.
  
}

scorePVerse = \lyricmode {
  % Lyrics follow here.
  
}

scorePChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scorePFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scorePFlute

scorePViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scorePViolinI

scorePViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scorePViolinII

scorePViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scorePViolinIII

scorePViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scorePViolinIV

scorePViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scorePViolinV

scorePViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scorePViolinVI

scorePChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scorePSoprano }
    \new Voice = "alto" { \voiceTwo \scorePAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scorePVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scorePTenor }
    \new Voice = "bass" { \voiceTwo \scorePBass }
  >>
>>

scorePChordsPart = \new ChordNames \scorePChordNames

\bookpart {
  \score {
    <<
      \scorePFlutePart
      \scorePViolinIPart
      \scorePViolinIIPart
      \scorePViolinIIIPart
      \scorePViolinIVPart
      \scorePViolinVPart
      \scorePViolinVIPart
      \scorePChoirPart
      \scorePChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreQFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreQViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreQViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreQViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreQViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreQViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreQViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreQSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreQAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreQTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreQBass = \relative c {
  \global
  % Music follows here.
  
}

scoreQVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreQChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreQFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreQFlute

scoreQViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreQViolinI

scoreQViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreQViolinII

scoreQViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreQViolinIII

scoreQViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreQViolinIV

scoreQViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreQViolinV

scoreQViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreQViolinVI

scoreQChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreQSoprano }
    \new Voice = "alto" { \voiceTwo \scoreQAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreQVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreQTenor }
    \new Voice = "bass" { \voiceTwo \scoreQBass }
  >>
>>

scoreQChordsPart = \new ChordNames \scoreQChordNames

\bookpart {
  \score {
    <<
      \scoreQFlutePart
      \scoreQViolinIPart
      \scoreQViolinIIPart
      \scoreQViolinIIIPart
      \scoreQViolinIVPart
      \scoreQViolinVPart
      \scoreQViolinVIPart
      \scoreQChoirPart
      \scoreQChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreRFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreRViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreRViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreRViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreRViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreRViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreRViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreRSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreRAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreRTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreRBass = \relative c {
  \global
  % Music follows here.
  
}

scoreRVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreRChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreRFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreRFlute

scoreRViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreRViolinI

scoreRViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreRViolinII

scoreRViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreRViolinIII

scoreRViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreRViolinIV

scoreRViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreRViolinV

scoreRViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreRViolinVI

scoreRChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreRSoprano }
    \new Voice = "alto" { \voiceTwo \scoreRAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreRVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreRTenor }
    \new Voice = "bass" { \voiceTwo \scoreRBass }
  >>
>>

scoreRChordsPart = \new ChordNames \scoreRChordNames

\bookpart {
  \score {
    <<
      \scoreRFlutePart
      \scoreRViolinIPart
      \scoreRViolinIIPart
      \scoreRViolinIIIPart
      \scoreRViolinIVPart
      \scoreRViolinVPart
      \scoreRViolinVIPart
      \scoreRChoirPart
      \scoreRChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreSFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreSViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreSViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreSViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreSViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreSViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreSViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreSSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreSAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreSTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreSBass = \relative c {
  \global
  % Music follows here.
  
}

scoreSVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreSChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreSFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreSFlute

scoreSViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreSViolinI

scoreSViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreSViolinII

scoreSViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreSViolinIII

scoreSViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreSViolinIV

scoreSViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreSViolinV

scoreSViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreSViolinVI

scoreSChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreSSoprano }
    \new Voice = "alto" { \voiceTwo \scoreSAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreSVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreSTenor }
    \new Voice = "bass" { \voiceTwo \scoreSBass }
  >>
>>

scoreSChordsPart = \new ChordNames \scoreSChordNames

\bookpart {
  \score {
    <<
      \scoreSFlutePart
      \scoreSViolinIPart
      \scoreSViolinIIPart
      \scoreSViolinIIIPart
      \scoreSViolinIVPart
      \scoreSViolinVPart
      \scoreSViolinVIPart
      \scoreSChoirPart
      \scoreSChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreTFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreTViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreTViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreTViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreTViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreTViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreTViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreTSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreTAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreTTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreTBass = \relative c {
  \global
  % Music follows here.
  
}

scoreTVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreTChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreTFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreTFlute

scoreTViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreTViolinI

scoreTViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreTViolinII

scoreTViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreTViolinIII

scoreTViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreTViolinIV

scoreTViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreTViolinV

scoreTViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreTViolinVI

scoreTChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreTSoprano }
    \new Voice = "alto" { \voiceTwo \scoreTAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreTVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreTTenor }
    \new Voice = "bass" { \voiceTwo \scoreTBass }
  >>
>>

scoreTChordsPart = \new ChordNames \scoreTChordNames

\bookpart {
  \score {
    <<
      \scoreTFlutePart
      \scoreTViolinIPart
      \scoreTViolinIIPart
      \scoreTViolinIIIPart
      \scoreTViolinIVPart
      \scoreTViolinVPart
      \scoreTViolinVIPart
      \scoreTChoirPart
      \scoreTChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreUFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreUViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreUViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreUViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreUViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreUViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreUViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreUSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreUAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreUTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreUBass = \relative c {
  \global
  % Music follows here.
  
}

scoreUVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreUChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreUFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreUFlute

scoreUViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreUViolinI

scoreUViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreUViolinII

scoreUViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreUViolinIII

scoreUViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreUViolinIV

scoreUViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreUViolinV

scoreUViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreUViolinVI

scoreUChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreUSoprano }
    \new Voice = "alto" { \voiceTwo \scoreUAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreUVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreUTenor }
    \new Voice = "bass" { \voiceTwo \scoreUBass }
  >>
>>

scoreUChordsPart = \new ChordNames \scoreUChordNames

\bookpart {
  \score {
    <<
      \scoreUFlutePart
      \scoreUViolinIPart
      \scoreUViolinIIPart
      \scoreUViolinIIIPart
      \scoreUViolinIVPart
      \scoreUViolinVPart
      \scoreUViolinVIPart
      \scoreUChoirPart
      \scoreUChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreVFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreVViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreVViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreVViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreVViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreVViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreVViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreVSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreVAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreVTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreVBass = \relative c {
  \global
  % Music follows here.
  
}

scoreVVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreVChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreVFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreVFlute

scoreVViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreVViolinI

scoreVViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreVViolinII

scoreVViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreVViolinIII

scoreVViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreVViolinIV

scoreVViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreVViolinV

scoreVViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreVViolinVI

scoreVChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreVSoprano }
    \new Voice = "alto" { \voiceTwo \scoreVAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreVVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreVTenor }
    \new Voice = "bass" { \voiceTwo \scoreVBass }
  >>
>>

scoreVChordsPart = \new ChordNames \scoreVChordNames

\bookpart {
  \score {
    <<
      \scoreVFlutePart
      \scoreVViolinIPart
      \scoreVViolinIIPart
      \scoreVViolinIIIPart
      \scoreVViolinIVPart
      \scoreVViolinVPart
      \scoreVViolinVIPart
      \scoreVChoirPart
      \scoreVChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreWFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreWViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreWViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreWViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreWViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreWViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreWViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreWSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreWAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreWTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreWBass = \relative c {
  \global
  % Music follows here.
  
}

scoreWVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreWChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreWFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreWFlute

scoreWViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreWViolinI

scoreWViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreWViolinII

scoreWViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreWViolinIII

scoreWViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreWViolinIV

scoreWViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreWViolinV

scoreWViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreWViolinVI

scoreWChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreWSoprano }
    \new Voice = "alto" { \voiceTwo \scoreWAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreWVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreWTenor }
    \new Voice = "bass" { \voiceTwo \scoreWBass }
  >>
>>

scoreWChordsPart = \new ChordNames \scoreWChordNames

\bookpart {
  \score {
    <<
      \scoreWFlutePart
      \scoreWViolinIPart
      \scoreWViolinIIPart
      \scoreWViolinIIIPart
      \scoreWViolinIVPart
      \scoreWViolinVPart
      \scoreWViolinVIPart
      \scoreWChoirPart
      \scoreWChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreXFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreXViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreXViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreXViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreXViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreXViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreXViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreXSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreXAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreXTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreXBass = \relative c {
  \global
  % Music follows here.
  
}

scoreXVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreXChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreXFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreXFlute

scoreXViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreXViolinI

scoreXViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreXViolinII

scoreXViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreXViolinIII

scoreXViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreXViolinIV

scoreXViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreXViolinV

scoreXViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreXViolinVI

scoreXChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreXSoprano }
    \new Voice = "alto" { \voiceTwo \scoreXAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreXVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreXTenor }
    \new Voice = "bass" { \voiceTwo \scoreXBass }
  >>
>>

scoreXChordsPart = \new ChordNames \scoreXChordNames

\bookpart {
  \score {
    <<
      \scoreXFlutePart
      \scoreXViolinIPart
      \scoreXViolinIIPart
      \scoreXViolinIIIPart
      \scoreXViolinIVPart
      \scoreXViolinVPart
      \scoreXViolinVIPart
      \scoreXChoirPart
      \scoreXChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreYFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreYViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreYViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreYViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreYViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreYViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreYViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreYSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreYAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreYTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreYBass = \relative c {
  \global
  % Music follows here.
  
}

scoreYVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreYChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreYFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreYFlute

scoreYViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreYViolinI

scoreYViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreYViolinII

scoreYViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreYViolinIII

scoreYViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreYViolinIV

scoreYViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreYViolinV

scoreYViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreYViolinVI

scoreYChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreYSoprano }
    \new Voice = "alto" { \voiceTwo \scoreYAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreYVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreYTenor }
    \new Voice = "bass" { \voiceTwo \scoreYBass }
  >>
>>

scoreYChordsPart = \new ChordNames \scoreYChordNames

\bookpart {
  \score {
    <<
      \scoreYFlutePart
      \scoreYViolinIPart
      \scoreYViolinIIPart
      \scoreYViolinIIIPart
      \scoreYViolinIVPart
      \scoreYViolinVPart
      \scoreYViolinVIPart
      \scoreYChoirPart
      \scoreYChordsPart
    >>
    \layout { }
    \midi { }
  }
}

scoreZFlute = \relative c'' {
  \global
  % Music follows here.
  
}

scoreZViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreZViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreZViolinIII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreZViolinIV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreZViolinV = \relative c'' {
  \global
  % Music follows here.
  
}

scoreZViolinVI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreZSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreZAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreZTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreZBass = \relative c {
  \global
  % Music follows here.
  
}

scoreZVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreZChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreZFlutePart = \new Staff \with {
  instrumentName = "Flöte"
  shortInstrumentName = "Fl."
  midiInstrument = "flute"
} \scoreZFlute

scoreZViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreZViolinI

scoreZViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreZViolinII

scoreZViolinIIIPart = \new Staff \with {
  instrumentName = "Violine III"
  shortInstrumentName = "Vl. III"
  midiInstrument = "violin"
} \scoreZViolinIII

scoreZViolinIVPart = \new Staff \with {
  instrumentName = "Violine IV"
  shortInstrumentName = "Vl. IV"
  midiInstrument = "violin"
} \scoreZViolinIV

scoreZViolinVPart = \new Staff \with {
  instrumentName = "Violine V"
  shortInstrumentName = "Vl. V"
  midiInstrument = "violin"
} \scoreZViolinV

scoreZViolinVIPart = \new Staff \with {
  instrumentName = "Violine VI"
  shortInstrumentName = "Vl. VI"
  midiInstrument = "violin"
} \scoreZViolinVI

scoreZChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" { \voiceOne \scoreZSoprano }
    \new Voice = "alto" { \voiceTwo \scoreZAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreZVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \scoreZTenor }
    \new Voice = "bass" { \voiceTwo \scoreZBass }
  >>
>>

scoreZChordsPart = \new ChordNames \scoreZChordNames

\bookpart {
  \score {
    <<
      \scoreZFlutePart
      \scoreZViolinIPart
      \scoreZViolinIIPart
      \scoreZViolinIIIPart
      \scoreZViolinIVPart
      \scoreZViolinVPart
      \scoreZViolinVIPart
      \scoreZChoirPart
      \scoreZChordsPart
    >>
    \layout { }
    \midi { }
  }
}
