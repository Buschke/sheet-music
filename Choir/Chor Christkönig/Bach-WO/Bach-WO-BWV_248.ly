\version "2.24.4"
\language "english"

\include "oll-core/package.ily"
\loadPackage lilypond-export

opts.exporter = #exportMusicXML

\header {
  dedication = ""
  title = "Weihnachtsoratorium"
  subtitle = ""
  subsubtitle = ""
  instrument = ""
  composer = "Johann Sebastian Bach"
  arranger = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "BWV 248"
  copyright = ""
  tagline = ""
}

global = {
  \key c \major
  \time 4/4
  \tempo "Allegro" 4=130
}

right = \relative c'' {
  \global
  % Music follows here.
  c4
}

left = \relative c' {
  \global
  % Music follows here.
  c4 b a 
}

\score {
  \new PianoStaff \with {
    instrumentName = "Klavier"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout {
    % for MusicXML export, see http://www.mankin.org.uk/howto/lilypond-to-xml.html
    \FileExport #opts    
  }
  \midi { }
}
