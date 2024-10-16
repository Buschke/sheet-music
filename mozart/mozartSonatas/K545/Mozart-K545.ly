\version "2.24.4"
\language "english"

\include "oll-core/package.ily"
\loadPackage lilypond-export

opts.exporter = #exportMusicXML

\header {
  dedication = ""
  title = "Sonate"
  subtitle = ""
  subsubtitle = ""
  instrument = ""
  composer = "Mozart"
  arranger = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "K 545"
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
  % ptrha
  c2-1(\mp e4-3 g-5
  b,4.-1_> c16 d c4) r4
  a'2-3(_\accent g4\< c\!
  g-3_\accent f8\trill\> e16 f e4)\! r4 % \break

  a,8\p\<\( b16 c d-1 e f g\!  a\> g f e d c-4 b a\!
  g8\< a16 b c-1 d e f\!  g\> f e d c \tag #'first b-4 \tag #'second b-3 a g\!
  f8\< g16 a b-1 c d e\!  f\> e d c \tag #'first {b a-4 g f\!} \tag #'second {b-3 a g f-2\!}

  e8\< f16 g  a-1 b c d\!  e\> d c b a \tag #'first g-4 \tag #'second g-3 f e\!\)  
}

left = \relative c' {
  \global
  % Music follows here.
  % ptlha
  c,8-5(\p g'-1 e-3 g  c,  g' e g)
  d-4 g-1 f-2 g  c,-5 g'-1 e-3 g
  c, a'-1 f-2 a  c, g'-1 e-3 g
  b,-5 g'-1 d-3 g  c,-4 g'-1 e-2 g

  f4 r4 r4 \clef bass <f, c'>_4-.
  <e c'>-. r4 r4 <e c'>_4-.
  <d c'>-. r4 r4 <d b'>_4-.
  % ptlhb
  g,16-5\( b-4 d-2 g  g,-5 c-3 e-2 g  g, b d g  g, c e g
  g,4-.\) g'-. g,-. r
  
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
