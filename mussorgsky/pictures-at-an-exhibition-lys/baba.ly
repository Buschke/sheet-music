%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.18.2"
\language "english"
\include "baba-allegro-brio.ily"
\include "baba-andante.ily"
\include "baba-allegro-molto.ily"

\header {
  %title        = "La cabane sur des pattes de poule (Baba-Jaga)"
  composer     = "Modest Moussorgsky (1839 - 1881)"
  style        = "Romantic"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  date         = "1874"
  source       = "Pavel Lamm"

  mutopiatitle       = "Pictures at an Exhibition"
  mutopiacomposer    = "MussorgskyM"
  mutopiainstrument  = "Piano"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"

 footer = "Mutopia-2016/12/31-475"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\bookpart {
  \header {
    subtitle = "No. 9 La cabane sur des pattes de poule (Baba-Jaga)"
  }
  \score {
    \keepWithTag #'layout
    \new PianoStaff <<
      \new Staff = "up" {
        \override DynamicTextSpanner #'dash-period = #-1.0 
        \clef treble
        \globalAllegroBrio
        \upperAllegroBrio
        \globalAndante
        \upperAndante
        \globalAllegroMolto
        \upperAllegroMolto
      }
      \new Staff = "down" {
        \clef bass
        \globalAllegroBrio
        \lowerAllegroBrio
        \globalAndante
        \lowerAntante
        \globalAllegroMolto
        \lowerAllegroMolto
      }
    >>
    \layout {
    }
  }
}

% MIDI output only
\score {
  \keepWithTag #'midi
  \unfoldRepeats {
    \new PianoStaff <<
      \new Staff = "up" {
        \clef treble
        \globalAllegroBrio
        \upperAllegroBrio
        \globalAndante
        \upperAndante
        \globalAllegroMolto
        \upperAllegroMolto
      }
      \new Staff = "down" {
        \clef bass
        \globalAllegroBrio
        \lowerAllegroBrio
        \globalAndante
        \lowerAntante
        \globalAllegroMolto
        \lowerAllegroMolto
      }
    >>
  }
  \midi {
  }
}
