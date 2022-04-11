\version "2.22.1"
\header {
  title = "Drum Lesson # 2"
  subtitle = "Basic Pattern"
  composer = "Sven Buschke"
  tagline = #f
}

\layout {
  indent = #40
}

#(define mydrums '((bassdrum   default #t  4)
                   (snare      default #t -4)
                   (tambourine default #t  0)))

global = {
  \time 3/8 s4.
  \time 2/4 s2*2
  \time 3/8 s4.
  \time 2/4 s2
}

drumsA = {
  \context DrumVoice <<
    { \global }
    { \drummode {
        \autoBeamOff
        \stemDown sn8 \stemUp tamb s8 |
        sn4 \stemDown sn4 |
        \stemUp tamb8 \stemDown sn8 \stemUp sn16 \stemDown sn \stemUp sn8 |
        \stemDown sn8 \stemUp tamb s8 |
        \stemUp sn4 s8 \stemUp tamb
      }
    }
  >>
}

drumsB = {
  \drummode {
    s4 bd8 s2*2 s4 bd8 s4 bd8 s8
  }
}


\score {
  \new StaffGroup <<
    \new DrumStaff \with {
      instrumentName = \markup {
        \center-column {
          "Tambourine"
          "et"
          "caisse claire s. timbre"
        }
      }
    drumStyleTable = #(alist->hash-table mydrums)
  }
  \drumsA
  \new DrumStaff \with {
    instrumentName = #"Grosse Caisse"
    drumStyleTable = #(alist->hash-table mydrums)
  }
  \drumsB
  >>
}