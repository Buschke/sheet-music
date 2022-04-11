\version "2.20.0"

\header {
  title = "E Bass Lesson # 7"
  subtitle = "4 Bars with syncopes"
  subsubtitle = "Bass Riff"
  composer = "Standard"
  piece = "Rock"
  tagline = \markup {
      "11.04.2022 - Version 1.0 - www.electricbass.ch"
  }
}

drh = \drummode {
        cymc4.^"crash" hhc16^"h.h." hh hhc8 hho hhc8 hh16 hh
        hhc4 r4 r2
        cymc4.^"crash" hhc16^"h.h." hh hhc8 hho hhc8 hh16 hh
        hhc4 r4 r2      }
drl = \drummode {
        bd4 sn8 bd bd4 << bd ss >>
        bd8 tommh tommh bd toml toml bd tomfh16 tomfh
        bd4 sn8 bd bd4 << bd ss >>
        bd8 tommh tommh bd toml toml bd tomfh16 tomfh
      }

repetitions = 3

notes = \relative {
  \key bes \major
  \time 4/4
  \tempo 4 = 108
  c,8\f c r c e e r e
  f f r f g, g r g
  c c r c e e r e
  f f r g r g, d' cis
}

\score {
  \new StaffGroup <<
    \new ChordNames {
      \transpose c' c \chordmode {
        \set Staff.midiInstrument = #"bright acoustic"
        \set Staff.midiPanPosition = #0.2

      }
    }
    \new DrumStaff \with { instrumentName = "drums" }
    <<
      \new DrumVoice { \repeat volta \repetitions {\stemUp \drh } }
      \new DrumVoice { \repeat volta \repetitions {\stemDown \drl } }
    >>
    \new Staff \with {
      \omit StringNumber
    } {
      \clef "bass_8"
      \set Staff.midiInstrument = #"acoustic bass"
      \set Staff.midiPanPosition = #-0.2
      \numericTimeSignature
      \repeat volta \repetitions {\notes}
    }
    \new TabStaff \with {
      stringTunings = #bass-tuning
    } {
      \clef moderntab
      \repeat volta \repetitions {\notes}
    }
  >>
  \layout { }
}
\score {
  \new StaffGroup <<
    \new ChordNames {
      \transpose c' c \chordmode {
        \set Staff.midiInstrument = #"bright acoustic"
        \set Staff.midiPanPosition = #0.2

      }
    }
    \new DrumStaff \with { instrumentName = "drums" }
    <<
      \new DrumVoice { \repeat unfold \repetitions {\stemUp \drh } }
      \new DrumVoice { \repeat unfold \repetitions {\stemDown \drl } }
    >>
    \new Staff \with {
      \omit StringNumber
    } {
      \clef "bass_8"
      \set Staff.midiInstrument = #"acoustic bass"
      \set Staff.midiPanPosition = #-0.2
      \numericTimeSignature
      \repeat unfold \repetitions {\notes}
    }
    \new TabStaff \with {
      stringTunings = #bass-tuning
    } {
      \clef moderntab
      \repeat unfold \repetitions {\notes}
    }
  >>
  \midi { }
}