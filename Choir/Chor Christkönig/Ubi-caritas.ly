\version "2.24.2"
\language "english"

\header {
  dedication = ""
  title = "Ubi caritas"
  subtitle = ""
  subsubtitle = ""
  instrument = ""
  composer = ""
  arranger = ""
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  copyright = ""
  tagline = ""
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
  \key f \major
  \time 2/4
  \tempo "Andante" 4=72
}

soprano = \relative c'' {
  \global
  % Music follows here.
  a8 a g g f4 r8 f bf4( a )g2 a8 a g g f2 d8 d \tuplet 3/2 { e( d) e } f2
%  \bar "||"
  \repeat volta 2 {
    f8\p a c c f,(g a) a d4(a) b(c)
    c8 d e e f4(d) d8 d c c a2
  }
}

alto = \relative c' {
  \global
  % Music follows here.
  f8 f e e d4 r8 c d(e fs4) g(e) f8 f e e d2 d8 d c c c2
  \repeat volta 2 { c8\p d e e d2 d8(e fs4) d(e)
  f8 f e e d( e f4) d8 d c c c2}
}

tenor = \relative c' {
  \global
  % Music follows here.
  c8 c c c f,(g a) a bf4(a) b(c) c8 c c c f,(g a4) bf8 bf g g a2
  \repeat volta 2 { a8\p a g g f4 r8 f bf4(a) g2
  a8 a g g f2 d8 d \tuplet 3/2 { e(d) e } f2
  }
}

bass = \relative c {
  \global
  % Music follows here.
  f8 f c c d4 r8 c bf(c d4) g(c,) f8 f c c d2 g,8 g c c f2
  \repeat volta 2 { f8\p f c c d4 r8 c bf(c d4) g(c,)
  f8 f c c d2 g,8 g c c f,2}
}

verse = \lyricmode {
  % Lyrics follow here.
  U -- bi ca -- ri -- tas et a -- mor, u -- bi ca -- ri -- tas
  De -- us i -- bi est.
  U -- bi ca -- ri -- tas et a -- mor, u -- bi ca -- ri -- tas
  De -- us i -- bi est.
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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

chordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  f4 c d:min s bf d g c f c d:min s g:min c f s
  \repeat volta 2 { f4 c d:min s bf d g c f c d:min s g:min c f s }
}

choirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } \new Voice = "soprano" \soprano
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } \new Voice = "alto" \alto
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "alto" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } {
      \clef "treble_8"
      \new Voice = "tenor" \tenor
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } {
      \clef bass
      \new Voice = "bass" \bass
    }
  >>
%  \pianoReduction
>>

chordsPart = \new ChordNames \chordNames

\score {
  <<
    \choirPart
    \chordsPart
  >>
  \layout { }
  \midi { }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "soprano sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \verse
    \midi { }
  }
}

