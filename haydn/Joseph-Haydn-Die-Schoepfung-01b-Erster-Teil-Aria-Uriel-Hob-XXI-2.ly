\version "2.22.2"
\language "english"

\header {
  title = "Die Schöpfung"
  subtitle = "01b. Erster Teil - Aria (Uriel)"
  subsubtitle = "Einleitung. Die Vorstellung des Chaos"
  instrument = "Piano und Chor"
  composer = "Joseph Haydn"
  arranger = "Sven Buschke"
  poet = "Genesis"
  meter = "Alla Breve"
  piece = "1b Aria (Uriel)"
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
  \key g \major
  \time 2/2
  \tempo "Andante" 2=69
}

tenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
r1
}

verseTenorVoice = \lyricmode {
  % Lyrics follow here.

}

bassVoice = \relative c {
  \global
  \dynamicUp
  % Music follows here.
 r1
}

verseBassVoice = \lyricmode {
  % Lyrics follow here.
}

soprano = \relative c'' {
  \global
  % Music follows here.
r1
}

alto = \relative c' {
  \global
  % Music follows here.
r1
}

tenor = \relative c' {
  \global
  % Music follows here.
  R1*77
  r1
  r2 r4 d\f
  bf g
  g'2~
  g4
  e cs a
  r a a a
  bf d8( c) bf4 4
  a 4 4 4 cs
  d a f' d
  b
  gs e' b
  r e c b
  a2( b4) c8( a) e2 r
  r1
  r2 r4 ds'
  e e, e' c8( a)
  b2 e,4 a
  e' e c a
  e2r
  r1
  r2 r4 e'8( d)
  c4 c c c
  c2. d8( c)
  b4 b b b
  b2. b4
  c2. c4
  d2. d4
  c2 b
  c r
  r
  r4 e8( d)
  c4 c c c
  c2. a4
  b b b b
  b2. b4
  b2
  a
  d2. d4
  c2 b
  c r
  R1*7
  r2 r4 ds\f
  e e, e' c8( a)
  b2 e4, a
  e' e c a
  e2 r
  r1
  r2 r4 e'8( d)
  c4 c c c
  c2. d8( c)
  b b b b
  b2. b4
  c2. c4
  d2. d4
  c2 b
  c
}

bass = \relative c {
  \global
  % Music follows here.

}

sopranoVerse = \lyricmode {
  % Lyrics follow here.

}

altoVerse = \lyricmode {
  % Lyrics follow here.

}

tenorVerse = \lyricmode {
  % Lyrics follow here.
  Ver -- zweif -- lung, Wut und Schre -- cken
  be -- glei -- ten ih -- ren Sturz,
  be -- glei -- ten ih -- ren Sturz,
  Ver -- zweif -- lung, Wut und Schre -- cken
  be -- glei -- ten ih -- ren Sturz.
  Ver -- zweif -- lung, Wut und Schre -- cken
  be -- glei -- ten ih -- ren Sturz,
  Und ei -- ne neu -- e Welt,
  und ei -- ne neu -- e Welt ent -- springt, ent -- springt, auf Got -- tes Wort.
  Und ei -- ne neu -- e Welt,
  und ei -- ne neu -- e Welt ent -- springt, ent -- springt  auf Got -- tes Wort.
  Ver -- zweif -- lung, Wut und Schre -- cken
  be -- glei -- ten ih -- ren Sturz.
  Und ei -- ne neu -- e Welt,
  und ei -- ne neu -- e Welt ent -- springt, ent -- springt  auf Got -- tes Wort.
  Und ei -- ne neu -- e Welt,
  und ei -- ne neu -- e Welt ent -- springt, ent -- springt  auf Got -- tes Wort.
  ent -- springt  auf Got -- tes Wort
  ent -- springt  auf Got -- tes Wort.
}

bassVerse = \lyricmode {
  % Lyrics follow here.

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

right = \relative c'' {
  \global
  % Music follows here.

}

left = \relative c' {
  \global
  % Music follows here.

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

