\version "2.22.0"

\header {
  title = "Capella Tutorial - Teil 1 - Harmonisieren"
  subtitle = "Aufgabe 1 - Harmonisieren"
  composer = "Sven Buschke"
  opus = "Op. 1A"
}

setup = {
  \key f \major
  \time 4/4
}

melody= \relative c' {
  \clef treble
  s4
  <f a c>
  <bes d  f>
  <c e g>
  \bar "||"
  a2 bes4 g
  a bes c2
  d4 bes g e
  f1
  \bar "|."
}

lrcs = \lyricmode {
  T S D T X X X X X X X X X T
}

chrds = \chordmode {
  s4 f bes c'
}

chrdnts = \relative c' {
  s4 <f a c> <bes d f> <c e g>
}

sopran = \relative c' {
  s4 f bes c
}

alt = \relative c' {
  s4 f bes c

}

tenor = \relative c {
  s4 f bes c
}

bass = \relative c {
  s4 f bes c

}

bc = \relative c {
  s4 f bes c

}

bcfig = \figuremode {
  s4 < _ > < _ > < _ >
  < 6 > < 7\+ > < 6+ [_!] >
  < 6 >4 <6 5 [3+] >
  < _ >4 < 6 5/>4
}

\score {
  <<
    \new Staff \with { instrumentName =  \markup { \center-column { "Melody" \line { "w Fct" } } } shortInstrumentName = "Fct" } {
      \new Voice = "m" \with { midiInstrument = "flute" } {
        \clef treble
        \setup
        \melody
      }
    }
    \new Lyrics \lyricsto "m" \lrcs
    \new StaffGroup \with { instrumentName = "Chords" } <<
      \new Staff \with { instrumentName = \markup { \center-column { "Chords" \line { "To Notes" } } } shortInstrumentName = "C2N" } {\clef treble \setup \chrds }
      \new ChordNames { \chrds }
      \new Staff \with { instrumentName = \markup { \center-column { "Notes" \line { "To Chords" } } } shortInstrumentName = "N2C" } {\clef treble \setup \chrdnts }
      \new ChordNames { \chrdnts }
    >>
    \new ChoirStaff \with { instrumentName = "Chorus" } <<
      \new Staff \with { instrumentName = "S/A" } {
        \clef treble \setup
        <<
          \new Voice = "s" \with { midiInstrument = "violin" } { \voiceOne \sopran }
          \new Voice = "a" \with { midiInstrument = "viola" } { \voiceTwo \alt }
        >>
      }
      \new Staff \with { instrumentName = "T/B" } {
        \clef bass \setup
        <<
          \new Voice = "t" \with { midiInstrument = "cello" } { \voiceThree \tenor }
          \new Voice = "b" \with { midiInstrument = "contrabass" } { \voiceFour \bass }
        >>
      }
    >>
    \new Staff \with { instrumentName = \markup { \center-column { "Basso" \line { "Continuo" } } } shortInstrumentName = "BC" } {
      \clef bass \setup
      <<
        \new Voice { \bc }
        \new FiguredBass { \bcfig }
      >>
    }
  >>
  \layout {}
  \midi {}
}