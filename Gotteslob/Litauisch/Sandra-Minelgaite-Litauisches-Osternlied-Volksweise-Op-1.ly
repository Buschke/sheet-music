\version "2.24.1"
\language "english"

\header {
  dedication = "Für meine Mama"
  title = "Litauisches Osternlied"
  subtitle = "Volksweise"
  subsubtitle = ""
  instrument = "Gesang und Orgel"
  composer = "Sandra Minelgaite"
  arranger = ""
  poet = "Satz: Sven Buschke"
  meter = ""
  piece = ""
  opus = "Op. 1"
  copyright = ""
  tagline = ""
}

\paper {
  #(set-paper-size "a4" 'landscape)
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key d \major
  \time 4/4
  \tempo "Andnate" 4=160
}

sopranoVoice = \relative c'' {
  \global
  \dynamicUp
  % Music follows here.
  \repeat volta 2 {fs,2 g4 fs e d e e fs fs e2}
  fs4 g a a
  g fs g2
  a4. g8 fs2 g4 fs e d e e d2
  \bar "|."
}

verse = \lyricmode {
  % Lyrics follow here.

}

right = \relative c'' {
  \global
  % Music follows here.
  <a, d fs> <a e' g>4 <a d fs> <g cs e> <fs b d> <g b e> <a cs e> <a d fs> <a d fs> <a cs e>2
  <a d fs>4 <a e' g> <a fs' a> <a fs' a>
  <b e g><a ds fs><b e g>2 <a e' a>4. g'8 <a, d fs>2 <a e' g>4 <a d fs> <g cs e> <fs b d> <g b e><a cs e> <fs a d>2
}

left = \relative c' {
  \global
  % Music follows here.
  d,2 cs4 d a b g a d,8 e fs  d a'2
  d4 e fs fs e b e d cs2 d cs4 d a b g a d,2
}

pedal = \relative c {
  \global
  % Music follows here.
  S1 S S S S S S S
}

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  shortInstrumentName = "S."
  midiInstrument = "choir aahs"
} { \sopranoVoice }
\addlyrics { \verse }

organPart = <<
  \new PianoStaff \with {
    instrumentName = "Organ"
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

\score {
  <<
    \sopranoVoicePart
    \organPart
  >>
  \layout { }
  \midi { }
}
