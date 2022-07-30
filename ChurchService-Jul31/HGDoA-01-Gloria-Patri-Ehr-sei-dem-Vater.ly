\version "2.22.2"

\header {
  title = "HGDoA 01 - Gloria Patri / Ehr' sei dem Vater'"
  subtitle = "Hauptgottesdienst ohne Feier des Heiligen Abendmahles"
  composer = "HGDoA"
  arranger = "Sven Buschke"
  opus = "HGDoA 01 / EG 177.1"
  copyright = "Public Domain"
  tagline = ""
}

pieceSettings = {
  \key f \major
  \time 4/4
  \tempo 4 = 65
}

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

preambleUp = {\clef treble \pieceSettings}
preambleDown = {\clef bass \pieceSettings}
preamblePedal={\clef bass \pieceSettings}

melody = \relative a' {\stemOff
  \pieceSettings
  \cadenzaOn
  c4 c a bes c c d c c c  \bar "'"
  c a bes bes g g f f  \bar "'"
  c' c f, bes a g a a  \bar "'"
  c c d d c c  \bar "'"
  c c bes a g a bes a g a a  \bar "'"
  c a f bes a g f g f f f
  %\bar ";"
  %\bar "!"
  \bar "|."
}

strophe = \lyricmode {
  \set fontSize = #-.5
  \set stanza = ""
Ehr _ sei dem Va -- ter und dem Sohn, _
und dem Hei _ -- li -- gen Geist, _
wie es war im An _ -- fang, _
jetzt und im -- mer -- dar _
und von E -- wig -- keit zu E _ -- wig --keit, _
A __ _ _ _ _ _ _ _ _ -- men.
}

soprano = \relative c' {
  \pieceSettings
  \cadenzaOn
  c'2 a4 bes c c d c c2  \bar "'"
  c4 a bes2 g4 g f2  \bar "'"
  c'4 c f, bes a g a2  \bar "'"
  c4 c d d c2 \bar "'"
  c4 c bes a g a bes a g a2 \bar "'"
  c4 a f bes a g f g f f2
}

alto = \relative c' {
  \pieceSettings
  \cadenzaOn
  g'2 f4 f g f f e f2
  g4 f f2. e4 f2
  f4 c d d f e f2
  g4 f f g e2
  f4 g f f e f f2 d4 f2
  e d4 d f e f d2 c
}

tenor = \relative c {
  \pieceSettings
  \cadenzaOn
  e'2 c4 d e c bes g a2
  e'4 d d2 c4 c a2
  a4 g a g c c c2
  c4 a a b g2
  a4 c d c c c d2 bes4 d2
  c2 a4 g c c a g bes a2
}

bass = \relative c {
  \pieceSettings
  \cadenzaOn
  c2 f4 d c a bes c f2
  c4 d bes2 c4 c f2
  f4 e d g, a c f2
  e4 f d g c,2
  f4 e d f c f bes, d g d2
  a d4 g, a c d bes2 f'
}

pedal = \relative c {
  \pieceSettings
  \cadenzaOn
  \repeat unfold 10 {s1} s4 s  s
  s4 s s s s s s s s s s
}

sheetmusic = {
  <<
    \new Voice = "m" << \preambleUp \melody >>
    \new Lyrics \lyricsto "m" \strophe
          \new StaffGroup = "org" \with { instrumentName = "org" shortInstrumentName = "or" } <<
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
    >>
      \new Staff = "lower" \relative c {
        \preambleDown
        <<
          \new Voice = "p" { \pedal }
        >>
      }

          >>
  >>
}

sheetmusicmidi = {
  <<
    \new Voice = "m" << \preambleUp \melody >>
    \new Lyrics \lyricsto "m" \strophe
          \new StaffGroup = "org" \with { instrumentName = "org" shortInstrumentName = "or" } <<
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
    >>
      \new Staff = "lower" \relative c {
        \preambleDown
        <<
          \new Voice = "p" { \pedal }
        >>
      }

          >>
  >>
}

clave = {\new DrumStaff <<
  \drummode {\pieceSettings
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
        hh4 cl hh cl 
    } \\ {
      bd4 sn4 bd4 sn4
    } >>
  }
>>
}

\markup \bold \underline "Registrierung"
\markup fwnum =
  \markup \override #'(font-features . ("ss01" "-kern"))
    \number \etc

\markuplist \tiny {
  \override #'(padding . 2)
  \table
    #'(-1 -1 -1 -1 -1)
    {
      \underline { "Hauptwerk C-g''" "Positiv/Schwellwerk C-g''" "Rückpositiv  C-g''" "Pedal C-f'" "Spielhilfe"}
      "" "Gedackt 8'" "" "Subbass 16'" ""
      "" "Prästant 4'" "" "Choralbass 4'"  ""
      "" "Octave 2'" "" "Zinke 8'" ""
     "" "Cymbal 4fach 1'" "" "" ""
    }
}

\score {
  {
    %\clave
    \sheetmusic
  }
  \layout {     \context {
      \Staff
      \remove "Time_signature_engraver"
    }}
}

\score {
  {
    \clave
    \sheetmusicmidi
  }
  \midi {}
}