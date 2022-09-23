\version "2.22.2"
\language "english"

\header {
  title = "Die Schöpfung"
  subtitle = "01a. Erster Teil - Einleitung"
  subsubtitle = "Einleitung. Die Vorstellung des Chaos"
  instrument = "Piano und Chor"
  composer = "Joseph Haydn"
  arranger = "Sven Buschke"
  poet = "Genesis"
  meter = "Alla Breve"
  piece = "1a"
  opus = "Hob. XXI:2"
  copyright = "© 15.09.2022, Sven Buschke"
  tagline = "Schöpfungsgeschichte der Priesterschrift"
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
  \compressEmptyMeasures
  \key c \minor
  \time 2/2
  \tempo "Largo" 2=48
}

tenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  R1*74
}

verseTenorVoice = \lyricmode {
  % Lyrics follow here.
  R1*74
}

bassVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
  R1*74
}

verseBassVoice = \lyricmode {
  % Lyrics follow here.
  R1*74
}

soprano = \relative c'' {
  \global
  % Music follows here.
  R1*74
  r1 r2 ef,4 g bf2 bf4
  4. 8 4 4

}

alto = \relative c' {
  \global
  % Music follows here.
  R1*74
  r1 r1
  r4 f2 4
  g4 2
}

tenor = \relative c' {
  \global
  % Music follows here.
  R1*74
  r1 r1
  r4 af2 4
  g bf2 g4
  g8 g g g g4 g 8 g
  g2 g
  r2 g4 g
  ef'2 r
  r
  r8 c c c
  c2 r
  g2 g4 g
  e'1
  R1*10
}

bass = \relative c {
  \global
  % Music follows here.
  R1*74
  r1 r1
  r4 bf2 d4
}

sopranoVerse = \lyricmode {
  % Lyrics follow here.
  Und der Geist Got --
}

altoVerse = \lyricmode {
  % Lyrics follow here.
  Und der Geist Got -- tes schweb -- te auf der Flä -- che der

}

tenorVerse = \lyricmode {
  % Lyrics follow here.
  Und der Geist Got -- tes schweb -- te auf der Flä -- che der Was -- ser;
  und Gott sprach:
  Es wer -- de Licht,
  und es ward Licht.
}

bassVerse = \lyricmode {
  % Lyrics follow here.
  Und der Geist Got --
}

pianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \soprano \\
      \alto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \tenor \\
      \bass
    >>
  }
>>

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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 48 2)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

right = \relative c'' {
  \global
  % Music follows here.
  <c, c'>1\f\> r1\p R1*72
  r2 d2 <ef, g ef'>8 <ef' g>
}

left = \relative c' {
  \global
  % Music follows here.
  R1*74
  r2 bf,2
  ef,8 ef'-.( ef-. ef-.) ef-.( ef-. ef-. ef-.)
  ef-.( ef-. ef-. ef-.) ef-.( ef-. ef-. ef-.)
  d-.( d-. d-. d-. ) d-.( d-. d-. d-. )

}

tenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \tenorVoice }
\addlyrics { \verseTenorVoice }

bassVoicePart = \new Staff \with {
  instrumentName = "Bass"
  shortInstrumentName = "B."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \bassVoice }
\addlyrics { \verseBassVoice }


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
  \pianoReduction
>>

% choirPart = <<
%   \new ChoirStaff <<
%     \new Staff = "sa" \with {
%       midiInstrument = "choir aahs"
%       instrumentName = \markup \center-column { "Sopran" "Alt" }
%       shortInstrumentName = \markup \center-column { "S." "A." }
%     } <<
%       \new Voice = "soprano" \with {
%         \consists "Ambitus_engraver"
%       } { \voiceOne \soprano }
%       \new Voice = "alto" \with {
%         \consists "Ambitus_engraver"
%         \override Ambitus #'X-offset = #2.0
%       } { \voiceTwo \alto }
%     >>
%     \new Lyrics \with {
%       alignAboveContext = "sa"
%       \override VerticalAxisGroup #'staff-affinity = #DOWN
%     } \lyricsto "soprano" \sopranoVerse
%     \new Lyrics \lyricsto "alto" \altoVerse
%     \new Staff = "tb" \with {
%       midiInstrument = "choir aahs"
%       instrumentName = \markup \center-column { "Tenor" "Bass" }
%       shortInstrumentName = \markup \center-column { "T." "B." }
%     } <<
%       \clef bass
%       \new Voice = "tenor" \with {
%         \consists "Ambitus_engraver"
%       } { \voiceOne \tenor }
%       \new Voice = "bass" \with {
%         \consists "Ambitus_engraver"
%         \override Ambitus #'X-offset = #2.0
%       } { \voiceTwo \bass }
%     >>
%     \new Lyrics \with {
%       alignAboveContext = "tb"
%       \override VerticalAxisGroup #'staff-affinity = #DOWN
%     } \lyricsto "tenor" \tenorVerse
%     \new Lyrics \lyricsto "bass" \bassVerse
%   >>
%   \pianoReduction
% >>

pianoPart = \new PianoStaff \with {
  instrumentName = "Klavier"
  shortInstrumentName = "Kl."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\score {
  <<
    \tenorVoicePart
    \bassVoicePart
    \choirPart
    \pianoPart
  >>
  \layout { }
  \midi { }
}

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

