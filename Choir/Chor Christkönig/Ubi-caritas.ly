\version "2.24.4"
\language "english"

\header {
  dedication = ""
  title = "Ubi caritas"
  subtitle = "GL 445, gesetzt für vierstimmigen Chor"
  subsubtitle = ""
  instrument = ""
  composer = "M: Jacqes Berthier (1923-1994), Gesang aus Taizé"
  arranger = ""
  poet = "T: Liturgie des Gründonnerstag"
  meter = ""
  piece = "Ü: Wo Güte und Liebe herrschen, da ist Gott."
  opus = ""
  copyright = "20.02.2025, Sven Buschke"
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
}

global = {
  \key f \major
  \numericTimeSignature
  \time 2/4
  \tempo "Andante" 4=72
}

soprano = \relative c'' {
  \global
  % Music follows here.
  a8^\markup { \italic "c.f." } a g g f4 r8 f bf4( a )g2 a8 a g g f2 d8 d \tuplet 3/2 { e( d) e } f2
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
  f8 f e e d( e f4) bf,8 bf c c c2}  
}

tenor = \relative c' {
  \global
  % Music follows here.
  c8 c c c f,(g a) a bf4(a) b(c) c8 c c c f,(g a4) bf8 bf g g a2
  \repeat volta 2 { a8^\markup { \italic "c.f." }\p a g g f4 r8 f bf4(a) g2
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

sopranoVerse = \lyricmode {
  % Lyrics follow here.
  U -- bi ca -- ri -- tas et a -- mor, u -- bi ca -- ri -- tas
  De -- us i -- bi est.
  U -- bi ca -- ri -- tas et a -- mor, u -- bi ca -- ri -- tas
  De -- us i -- bi est.
}

altoVerse = \lyricmode {
  % Lyrics follow here.
  U -- bi ca -- ri -- tas et a -- mor, u -- bi ca -- ri -- tas
  De -- us i -- bi est.
  U -- bi ca -- ri -- tas a -- mor, u -- bi ca -- ri -- tas
  De -- us i -- bi est.  
}

tenorVerse = \lyricmode {
  % Lyrics follow here.
\sopranoVerse  
}

bassVerse = \lyricmode {
  % Lyrics follow here.
\sopranoVerse  
}

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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 72 4)
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

choirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Sopran"
    \consists "Ambitus_engraver"
  } { \soprano }
  \addlyrics { \sopranoVerse }
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Alt"
    \consists "Ambitus_engraver"
  } { \alto }
  \addlyrics { \altoVerse }
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Tenor"
    \consists "Ambitus_engraver"
  } { \clef "treble_8" \tenor }
  \addlyrics { \tenorVerse }
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Bass"
    \consists "Ambitus_engraver"
  } { \clef bass \bass }
  \addlyrics { \bassVerse }
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

