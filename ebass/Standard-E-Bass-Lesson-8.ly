\version "2.20.0"

\header {
  title = "E Bass Lesson # 8"
  subtitle = "Einfache viertaktige Basslinie mit Achtelnoten"
  subsubtitle = "Bass Riff"
  composer = "Standard"
  piece = "Rock"
  tagline = \markup {
      "11.04.2022 - Version 1.0 - www.electricbass.ch"
  }
}

hhdrum = \drummode {
  r4 hhc hho hhc
  r hhc hho hhc
  r hhc hho hhc
  r hhc hho hhc
}

cymdrum = \drummode {
  cymc4 r r r 
  cymc4 r r r 
  cymc4 r r r 
  cymc4 r r r 
}

tomdrum = \drummode {
  tomfh tommh toml tommh
  tomfh tommh toml tommh
  tomfh tommh toml tommh
  tomfh tommh toml tommh
}


sndrum = \drummode {
  r4 sn r sn
  r4 sn r sn
  r4 sn r sn
  r4 sn r sn
}

bdrum = \drummode {
  bd4 r bd8 bd r4 
  bd4 r bd8 bd r4 
  bd4 r bd8 bd r4 
  bd4 r bd8 bd r4 
}

%drh = \drummode {
%    <bd cymc>4 sn <<{bd} \\ {tommh8 toml}>> sn
 %   <bd hhc>4 sn <bd tommh> sn
 %   <bd hho>4 sn <bd tommh> sn
%    <bd hhc>4 sn <bd tommh> sn

%        cymc4.^"crash" hhc16^"h.h." hh hhc8 hho hhc8 hh16 hh
%       hhc4 r4 r2
%        cymc4.^"crash" hhc16^"h.h." hh hhc8 hho hhc8 hh16 hh
%        hhc4 r4 r2
%        }
%drl = \drummode {
%        bd4 sn8 bd bd4 << bd ss >>
%        bd8 tommh tommh bd toml toml bd tomfh16 tomfh
%        bd4 sn8 bd bd4 << bd ss >>
%        bd8 tommh tommh bd toml toml bd tomfh16 tomfh
%        }

repetitions = 3

notes = \relative {
  \key c \major
  \time 4/4
  \tempo 4 = 108
  e,,4 e g8 e g gis
  a4 a a8 g a g
  e4 e g8 e g gis
  a a g4 fis f
}

\score {
  \new StaffGroup <<
    \new ChordNames {
      \transpose c' c \chordmode {
        \set Staff.midiInstrument = #"bright acoustic"
        \set Staff.midiPanPosition = #0.2

      }
    }
   \new DrumStaff \with { instrumentName = "high hat" }
      \new DrumVoice { \repeat volta \repetitions {\stemDown \hhdrum } }
   \new DrumStaff \with { instrumentName = "cymbal" }
      \new DrumVoice { \repeat volta \repetitions {\stemDown \cymdrum } }
   \new DrumStaff \with { instrumentName = "toms" }
      \new DrumVoice { \repeat volta \repetitions {\stemDown \tomdrum } }
    \new DrumStaff \with { instrumentName = "snare" }
    <<
      \new DrumVoice { \repeat volta \repetitions {\stemUp \sndrum } }
    >>
   \new DrumStaff \with { instrumentName = "base" }
      \new DrumVoice { \repeat volta \repetitions {\stemDown \bdrum } }
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
   \new DrumStaff \with { instrumentName = "high hat" }
      \new DrumVoice { \repeat unfold \repetitions {\stemDown \hhdrum } }
   \new DrumStaff \with { instrumentName = "cymbal" }
      \new DrumVoice { \repeat unfold \repetitions {\stemDown \cymdrum } }
   \new DrumStaff \with { instrumentName = "toms" }
      \new DrumVoice { \repeat unfold \repetitions {\stemDown \tomdrum } }
    \new DrumStaff \with { instrumentName = "snare" }
    <<
      \new DrumVoice { \repeat unfold \repetitions {\stemUp \sndrum } }
    >>
   \new DrumStaff \with { instrumentName = "base" }
      \new DrumVoice { \repeat unfold \repetitions {\stemDown \bdrum } }
   
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