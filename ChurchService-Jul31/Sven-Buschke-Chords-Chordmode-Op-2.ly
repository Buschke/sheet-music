\version "2.22.0"

\header {
  title = "Chords"
  subtitle = "Chordmode"
  composer = "Sven Buschke"
  opus = "Op. 2"
}

%\new ChordNames {
%  \chordmode {
%    c2 f4. g8
%  }
%}


notesToChord = \relative {
  <c' e g>2 <f bes c>
  <f c' e g>1
}

chordToNotes = \relative {
  \chordmode {
    c2 f:sus4 c1:/f
  }
}

chordmusic = \relative {
  <c' e g>2 <f bes c>
  <f c' e g>1
  \chordmode {
    c2 f:sus4 c1:/f
  }
}

\score {<<
  \new Staff {
{
  \new ChordNames {
    \notesToChord
  }
}
\new Staff {
  {
    \chordToNotes
  }
}
  >>
}
}