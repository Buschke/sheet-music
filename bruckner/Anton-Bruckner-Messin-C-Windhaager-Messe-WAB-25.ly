\version "2.22.2"
\language "english"

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
  \time 2/2
  \tempo "Langsam" 2=69
}

soprano = \relative c'' {
  \global
  % Music follows here.
  r1
}

alto = \relative c' {
  \global
  % Music follows here.

}

tenor = \relative c' {
  \global
  % Music follows here.
  r1 r r r
  a2 c
  b a
  g( f)
  e r
  r4 c'8.\f c16 c4 b\<
  a2^\markup  \circle {1*} g4 c\mf\sf\>
  d2.( c4)
  b2 \breathe bf\pp
  bf bf\<
  af c4\sf\> c4
  c2( b)\mf
  c\f\<\breathe  c
  c\sf c
  bf a
  a1^\markup  \circle {2} \mf
  g2 g g1\rtoe
  gs2 a
  e' e,
  e2.\f e4
  f2 a
  g(\> e)
  c e\mf
  f(\> d4 g)
  g2 g4\p g\breathe
  a2^\markup \circle{3} e\<
  e( f4 g\sf\>
  a2) g\mf\fermata
  \bar "|."
}

bass = \relative c {
  \global
  % Music follows here.
  r1
}

sopranoVerse = \lyricmode {
  % Lyrics follow here.
  Ky -- ri -- e e -- lei -- son.
  Ky -- ri -- e e -- lei -- son,  e -- lei -- son.
  Chri -- ste e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son.
}

altoVerse = \lyricmode {
  % Lyrics follow here.
  Ky -- ri -- e e -- lei -- son.
  Ky -- ri -- e e -- lei -- son,  e -- lei -- son.
  Chri -- ste e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son.
}

tenorVerse = \lyricmode {
  % Lyrics follow here.
  Ky -- ri -- e e -- lei -- son.
  Ky -- ri -- e e -- lei -- son,  e -- lei -- son.
  Chri -- ste e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son.
}

bassVerse = \lyricmode {
  % Lyrics follow here.
  Ky -- ri -- e e -- lei -- son.
  Ky -- ri -- e e -- lei -- son,  e -- lei -- son.
  Chri -- ste e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son.
}

% pianoReduction = \new PianoStaff \with {
%   fontSize = #-1
%   \override StaffSymbol #'staff-space = #(magstep -1)
% } <<
%   \new Staff \with {
%     \consists "Mark_engraver"
%     \consists "Metronome_mark_engraver"
%     \remove "Staff_performer"
%   } {
%     #(set-accidental-style 'piano)
%     <<
%       \soprano \\
%       \alto
%     >>
%   }
%   \new Staff \with {
%     \remove "Staff_performer"
%   } {
%     \clef bass
%     #(set-accidental-style 'piano)
%     <<
%       \tenor \\
%       \bass
%     >>
%   }
% >>

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \soprano }
     \new Staff = "alto" \new Voice = "alto" { \alto }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "bass" \new Voice = "bass" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 69 2)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})


choirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } { \soprano }
    \addlyrics { \sopranoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } { \alto }
    \addlyrics { \altoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \tenor }
    \addlyrics { \tenorVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } { \clef bass \bass }
    \addlyrics { \bassVerse }
  >>
%   \pianoReduction
>>

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "soprano sax" \sopranoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \altoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \tenorVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \bassVerse
    \midi { }
  }
}

\bookpart {
  \header {
  dedication = "Dicata Deo"
  title = "Messe in C-Dur"
  subtitle = "Kyrie"
  subsubtitle = "Windhaager Messe"
  instrument = "Chor"
  composer = "Anton Bruckner"
  arranger = "neu gesetzt: Sven Buschke"
  poet = "Text: Liturgie; ergänzt: Joseph Messner"
  meter = "Kyrie: Alla Breve, C-Dur"
  piece = "Windhaag bei Freistadt, 1842"
  opus = "WAB 25"
  copyright = "© Satz: Sven Buschke, 21.09.2022"
%   tagline = "Bruckern in da house"
}
  \score {
  <<
    \choirPart
  >>
  \layout { }
  \midi { }
  }
}

\bookpart {
  \header {
  subtitle = "Kyrie"
  instrument = "Chor"
  meter = "Kyrie: Alla Breve, C-Dur"
  tagline = "Bruckern in da house"
}
  \score {
  <<
    \choirPart
  >>
  \layout { }
  \midi { }
  }
}

