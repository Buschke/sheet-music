\header {
  title = "Brich dem Hungrigen dein Brot"
  subtitle = "EG 418"
  composer = "NN"
  arranger = "Sven Buschke"
  opus = "EG 418"
  copyright = "© Sven Buschke, 5. Juli 2022"
  tagline = ""
}

global = {
  \key c \major
  \time 4/4
  \tempo 2 = 65
}

preambleUp = {\clef treble \global}
preambleDown = {\clef bass \global}
preamblePedal={\clef bass \global}

melody = \relative c' {
  \global
  g'4 a bes c c bes c2
  d4 c a bes g2 a bes4 g g f
  es f d2 f4 f g2( a4) bes a2 g
  \bar "|."
}

% STROPHE 2

stropheEins = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "1. "
Brich dem Hung -- ri -- gen dein Brot. Die im E -- lend wan -- dern, füh -- re in dein Haus hi -- nein; trag die Last der an -- dern.
}

stropheZwei = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "1. "
Brich dem Hun -- gri -- gen dein Brot; du hast's auch em -- pfan -- gen. De -- nen, die in Angst und Not, stil -- le Angst und Ban -- gen.
}

stropheDrei = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "1. "
Der da ist des Le -- bens Brot, will sich tä -- glich ge -- ben, tritt hin -- ein in uns -- re Not, wird des Le -- bens Le -- ben.
}

stropheVier = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "1. "
Dank sei dir, Herr Je -- su Christ, dass wir dich noch ha -- ben und dass du ge -- kom -- men bist, Leib und Seel zu la -- ben.
}

stropheFuenf = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "1. "
Brich uns Hun -- gri -- gen dein Brot, Sün -- dern wie den From -- men, und hilf, dass an dei -- nen Tisch wir einst al -- le kom -- men.
}

soprano = \relative c' {
  \global
  g'4 a bes c c bes c2
  d4 c a bes g2 a bes4 g g f
  es f d2 f4 f g2( a4) bes a2 g
  \bar "|."
}

alto = \relative c' {
  \global
  g'4 a bes c c bes c2
  d4 c a bes g2 a bes4 g g f
  es f d2 f4 f g2( a4) bes a2 g
  \bar "|."
}

tenor = \relative c {
  \global
  g'4 a bes c c bes c2
  d4 c a bes g2 a bes4 g g f
  es f d2 f4 f g2( a4) bes a2 g
  \bar "|."
}

bass = \relative c {
  \global
  g'4 a bes c c bes c2
  d4 c a bes g2 a bes4 g g f
  es f d2 f4 f g2( a4) bes a2 g
  \bar "|."
}

pedal = \relative c {
  \global
  g'4 a bes c c bes c2
  d4 c a bes g2 a bes4 g g f
  es f d2 f4 f g2( a4) bes a2 g
  \bar "|."
}


\score {
  <<
    \new Voice = "m" << \preambleUp \melody >>
    \new Lyrics \lyricsto "m" \stropheEins
    \new Lyrics \lyricsto "m" \stropheZwei
    \new Lyrics \lyricsto "m" \stropheDrei
    \new Lyrics \lyricsto "m" \stropheVier
    \new Lyrics \lyricsto "m" \stropheFuenf
    \new PianoStaff <<
      %\set PianoStaff.instrumentName = #"Piano  "
      \new Staff = "upper" \relative c' {
        \preambleUp
        <<
          \new Voice = "s" { \voiceOne \soprano }
          \\
          \new Voice ="a" { \voiceTwo \alto }
        >>
      }
      \new Staff = "lower" \relative c {
        \preambleDown
        <<
          \new Voice = "t" { \voiceThree \tenor }
          \\
          \new Voice = "b" { \voiceFour \bass }
        >>
      }
      \new Staff = "lower" \relative c {
        \preambleDown
        <<
          \new Voice = "p" { \pedal }
        >>
      }
    >>
  >>
  \layout {
    %    \context {
    %     \Staff
    %    \remove "Time_signature_engraver"
    %     \remove "Bar_engraver"
    %   }
  }
  \midi {}
}