\version "2.22.2"
\language "deutsch"

\header {
  dedication = "NN"
  title = "Kirchenmusiker C-Ausbildung"
  subtitle = "Hausaufgaben KW 43-2022"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "NN"
  arranger = "NN"
  poet = "NN"
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
  \time 3/4
  \tempo "Andante" 4=100
}

right = \relative c'' {
  \global
  % Music follows here.
  <e g>^"Quintlage I-IV-I, I-V-I, I-VII-I"^"Enge Lage"<g h><e g>
  <g><f><g>
  <g><d><g>
  \breathe
  <g c>4^"Oktavlage I-IV-I, I-V-I, I-VII-I" <g><g c>
  \breathe
  <g e>4^"Terzlage I-IV-I, I-V-I, I-VII-I" <g><g e>
  <e><d><e>
  <e><d><e>
  <e g>^"Quintlage I-IV-I, I-V-I, I-VII-I"^"Weite Lage"<g h><e g>
  <g><f><g>
  <g><d><g>
  \breathe
  <g c>4^"Oktavlage I-IV-I, I-V-I, I-VII-I" <g><g c>
  \breathe
  <g e>4^"Terzlage I-IV-I, I-V-I, I-VII-I" <g><g e>
  <e><f><e>
  <e><d><e>
  \break
  \key g \major
  <e g>^"Quintlage I-IV-I, I-V-I, I-VII-I"^"Enge Lage"<g h><e g>
  <g><f><g>
  <g><d><g>
  \breathe
  <g c>4^"Oktavlage I-IV-I, I-V-I, I-VII-I" <g><g c>
  r2.
  <g e>4^"Terzlage I-IV-I, I-V-I, I-VII-I" <g><g e>
  <e><d><e>
  <e><d><e>
  \break
  <e g>^"Quintlage I-IV-I, I-V-I, I-VII-I"^"Weite Lage"<g h><e g>
  <g><f><g>
  <g><d><g>
  \breathe
  <g c>4^"Oktavlage I-IV-I, I-V-I, I-VII-I" <g><g c>
  \breathe
  <g e>4^"Terzlage I-IV-I, I-V-I, I-VII-I" <g><g e>
  <e><f><e>
  <e><d><e>
}

left = \relative c' {
  \global
  % Music follows here.
  e d e  
}

pedal = \relative c {
  \global
  % Music follows here.
  c4 g c
  c f c
  c d c
  \breathe
  c4 g c
  c f c
  c d c
  \breathe
  c4 g c
  c f c
  c d c    
}

chordNames = \chordmode {
  \global
  % Chords follow here.
  c4 g c
  c f c
  c h c  
}

figBass = \figuremode {
  \global
  % Figures follow here.
  r2. r
  r4 <6>  
}

organPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \left }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \pedal }
>>

chordsPart = \new ChordNames \chordNames

bassFiguresPart = \new FiguredBass \figBass

\score {
  <<
    \organPart
    \chordsPart
    \bassFiguresPart
  >>
  \layout { }
  \midi { }
}
