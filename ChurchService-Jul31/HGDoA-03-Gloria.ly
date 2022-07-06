\version "2.22.2"

\header {
  title = "HGDoA 03 - Gloria"
  subtitle = "Hauptgottesdienst ohne des Heiligen Abendmahles"
  composer = "HGDoA"
  arranger = "Sven Buschke"
  opus = "HGDoA 03"
  copyright = "© Sven Buschke, 5. Juli 2022"
  tagline = ""
}

global = {
  \key f \major
  \time 3/2
  \tempo 2 = 65
}

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

preambleUp = {\clef treble \global}
preambleDown = {\clef bass \global}
preamblePedal={\clef bass \global}

melody = \relative a' {\stemOff
  \global
  \cadenzaOn
  c2 a4 bes c2 a4 g a bes g2 f
  %\bar ";"
  %\bar "!"
  \bar "||"
  \cadenzaOff
  \stemOn
  \repeat volta 2 {
  \partial 4  f4
  a2 bes4 c2 bes4
  a2 g4 a2 \bar "'" a4 a2 g4 bes( a) g
  f2( e4) f2 }
  \partial 4 f4
  f2 g 4 bes2 a4 g2 f4 g2 \bar "'" g4 a2 bes4 c2 bes4 a2 g4 a2 f4 g2 bes4 a2 g4 f2( e4) f
  \bar "||"
}

strophe = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "K:"
Eh -- re sei Gott in der Hö __ _ _ -- he!
  \set stanza = "G:"
<<
  {
    Al -- lein Gott in der Höh sei Ehr
und Dank für sei -- ne Gna-- de,
  }
\new Lyrics = "secondVerse"
\with { alignBelowContext = "firstVerse" } {
  \set associatedVoice = "m"
      dar -- um dass nun und nim -- mer --mehr uns rüh -- ren kann kein Scha -- de.
}
>>
      Ein Wohl -- ge --falln Gott an uns hat nun ist groß Fried ohn Un -- ter -- lass,
      all Fehd hat nun ein En -- de.
}


soprano = \relative c' {
  \global
  \cadenzaOn
  c2 a4 bes c2 a4 g a bes g2 f
  \bar "||"
  \cadenzaOff
  \stemOn
  \repeat volta 2 {
  \partial 4  f4
  a2 bes4 c2 bes4
  a2 g4 a2 \bar "'" a4 a2 g4 bes( a) g
  f2( e4) f2 }
  \partial 4 f4
  f2 g 4 bes2 a4 g2 f4 g2 \bar "'" g4 a2 bes4 c2 bes4 a2 g4 a2 f4 g2 bes4 a2 g4 f2( e4) f
  \bar "||"
}

alto = \relative c' {
  \global
  \cadenzaOn
  c2 a4 bes c2 a4 g a bes g2 f
  \bar "||"
  \cadenzaOff
  \stemOn
  \repeat volta 2 {
  \partial 4  f4
  a2 bes4 c2 bes4
  a2 g4 a2 \bar "'" a4 a2 g4 bes( a) g
  f2( e4) f2 }
  \partial 4 f4
  f2 g 4 bes2 a4 g2 f4 g2 \bar "'" g4 a2 bes4 c2 bes4 a2 g4 a2 f4 g2 bes4 a2 g4 f2( e4) f
  \bar "||"
}


tenor = \relative c {
  \global
  \cadenzaOn
  c2 a4 bes c2 a4 g a bes g2 f
  \bar "||"
  \cadenzaOff
  \stemOn
  \repeat volta 2 {
  \partial 4  f4
  a2 bes4 c2 bes4
  a2 g4 a2 \bar "'" a4 a2 g4 bes( a) g
  f2( e4) f2 }
  \partial 4 f4
  f2 g 4 bes2 a4 g2 f4 g2 \bar "'" g4 a2 bes4 c2 bes4 a2 g4 a2 f4 g2 bes4 a2 g4 f2( e4) f
  \bar "||"
}

bass = \relative c {
  \global
  \cadenzaOn
  c2 a4 bes c2 a4 g a bes g2 f
  \bar "||"
  \cadenzaOff
  \stemOn
  \repeat volta 2 {
  \partial 4  f4
  a2 bes4 c2 bes4
  a2 g4 a2 \bar "'" a4 a2 g4 bes( a) g
  f2( e4) f2 }
  \partial 4 f4
  f2 g 4 bes2 a4 g2 f4 g2 \bar "'" g4 a2 bes4 c2 bes4 a2 g4 a2 f4 g2 bes4 a2 g4 f2( e4) f
  \bar "||"
}

pedal = \relative c {
  \global
  \cadenzaOn
  c2 a4 bes c2 a4 g a bes g2 f
  \bar "||"
  \cadenzaOff
  \stemOn
  \repeat volta 2 {
  \partial 4  f4
  a2 bes4 c2 bes4
  a2 g4 a2 \bar "'" a4 a2 g4 bes( a) g
  f2( e4) f2 }
  \partial 4 f4
  f2 g 4 bes2 a4 g2 f4 g2 \bar "'" g4 a2 bes4 c2 bes4 a2 g4 a2 f4 g2 bes4 a2 g4 f2( e4) f
  \bar "||"
}


\score {
  <<
    \new Voice = "m" << \preambleUp \melody >>
    \new Lyrics = "firstVerse" \lyricsto "m" \strophe
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
  \layout {     \context {
      \Staff
      \remove "Time_signature_engraver"
    }}
  \midi {}
}