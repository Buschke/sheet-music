\version "2.22.0"

\header {
  composer = "Bei Nikolaus Selnecker 1587"
  arranger = "Arrangement: Sven Buschke"
  title = "Nun lasst uns Gott, dem Herren"
  subtitle = "Evangelisches Gesangbuch"
  instrument = "Melodie und Orgel"
  opus = "EG 320"
  tagline = ""
  copyright = "Arrangement:  Sven Buschke © 25. Juli 2022"
}

global = {
  \key g \major
  \time 4/4
  \tempo 2 = 120
}

preambleUp = {\clef treble \global}
preambleDown = {\clef bass \global}
preamblePedal={\clef bass \global}

melody_intonation = \relative c' {\global
  ^"Intonation"
  s2. s
  s2. s
  s2. s
  s2. s
  \bar "|.|"
%  \bar "||"
}

melody = \relative c' {\global
  ^"Choral"
  \partial 2
  g'2 g fis4 e2 g4 a2 g \breathe g
  g a4 fis2 d4 g2 fis \breathe  fis g g4 a2 b4
  a2 a \breathe  b c b4 a2 g4 a2 g
  \bar "|."
}

% STROPHE 2

stropheEins = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "7. "
Wir bit -- ten dei -- ne Gü -- te, wollst uns hin -- fort be -- hü -- ten, uns Gros -- se mit den Klei -- nen; du kannst's nicht bö -- se mei -- nen.


}

stropheZwei = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "8. "
Er -- halt uns in der Wahr -- heit, gib e -- wig -- li -- che Frei -- heit, zu prei -- sen dei -- nen Na -- men durch Je -- sus Chris -- tus. A -- men.
}

stropheDrei = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "3. "

}

stropheVier = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "4. "

}

stropheFuenf = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "5. "



}

stropheSechs = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "6. "


}

stropheSieben = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "7. "
}

stropheAcht = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "8. "

}

soprano_intonation = \relative c' {\global
                          ^"Intonation"
  r2. s
  r2. s
  r2. s
  r2. s
  \bar "||"
}

soprano = \relative c' {\global
  ^"Choral"
  \partial 2
  g'2 g fis4 e2 g4 a2 g \breathe  g
  g a4 fis2 d4 g2 fis \breathe  fis g g4 a2 b4
  a2 a b c b4 a2 g4 a2 g
}

alto_intonation = \relative c' {\global
                                 r1.
 r1.
 r1.
 r1.
}

alto = \relative c' {\global
  \partial 2
  g'2 g fis4 e2 g4 a2 g \breathe  g
  g a4 fis2 d4 g2 fis \breathe fis g g4 a2 b4
  a2 a \breathe  b c b4 a2 g4 a2 g
}

tenor_intonation = \relative c {\global
                                 r1.
 r1.
 r1.
 r1.
}

tenor = \relative c {\global
  \partial 2
  g'2 g fis4 e2 g4 a2 g \breathe  g
  g a4 fis2 d4 g2 fis \breathe fis g g4 a2 b4
  a2 a \breathe  b c b4 a2 g4 a2 g
}

bass_intonation = \relative c {\global
                                r1.
 r1.
 r1.
 r1.
}

bass = \relative c {\global
  \partial 2
  g'2 g fis4 e2 g4 a2 g \breathe  g
  g a4 fis2 d4 g2 fis \breathe  fis g g4 a2 b4
  a2 a b c b4 a2 g4 a2 g
}

pedal_intonation = \relative c {\global
                                 c1.
 d1.
 e1.
 f1.
}

pedal = \relative c {\global
  \partial 2
  g'2 g fis4 e2 g4 a2 g \breathe  g
  g a4 fis2 d4 g2 fis  \breathe fis g g4 a2 b4
  a2 a \breathe  b c b4 a2 g4 a2 g
}

sheetmusic = {
    <<
    \new Voice = "m" \with {midiInstrument = "voice oohs"} << { \preambleUp
                                                                \melody_intonation
                                                                \repeat volta 8 {
                                                                \melody}} >>
    \new Lyrics \lyricsto "m" \stropheEins
    \new Lyrics \lyricsto "m" \stropheZwei
    \new Lyrics \lyricsto "m" \stropheDrei
    \new Lyrics \lyricsto "m" \stropheVier
    \new Lyrics \lyricsto "m" \stropheFuenf
    \new Lyrics \lyricsto "m" \stropheSechs
    \new Lyrics \lyricsto "m" \stropheSieben
    \new Lyrics \lyricsto "m" \stropheAcht
    \new PianoStaff <<
      %\set PianoStaff.instrumentName = #"Piano  "
      \new Staff = "upper" \relative c' {
        \preambleUp
        <<
          \new Voice = "s" \with {midiInstrument = "church organ"} { \voiceOne {
            \soprano_intonation
            \repeat volta 8 {
            \soprano }}}
          \\
          \new Voice ="a" \with {midiInstrument = "church organ"}{ \voiceTwo { \alto_intonation \repeat volta 8 { \alto } } }
        >>
      }
      \new Staff = "lower" \relative c {
        \preambleDown
        <<
          \new Voice = "t" \with {midiInstrument = "church organ"} { \voiceThree { \tenor_intonation \repeat volta 8 { \tenor}} }
          \\
          \new Voice = "b" \with {midiInstrument = "church organ"} { \voiceFour { \bass_intonation \repeat volta 8 {\bass}} }
        >>
      }
      \new Staff = "lower" \relative c {
        \preambleDown
        <<
          \new Voice = "p" \with {midiInstrument = "church organ"} { \pedal_intonation \repeat volta 8 {\pedal} }
        >>
      }
    >>
  >>
}

sheetmusic_midi = {
    <<
    \new Voice = "m" \with {midiInstrument = "voice oohs"} << { \preambleUp
                                                                \melody_intonation
                                                                \repeat unfold 8 {
                                                                \melody}} >>
    \new PianoStaff <<
      %\set PianoStaff.instrumentName = #"Piano  "
      \new Staff = "upper" \relative c' {
        \preambleUp
        <<
          \new Voice = "s" \with {midiInstrument = "church organ"} { \voiceOne {
            \soprano_intonation
            \repeat volta 8 {
            \soprano }}}
          \\
          \new Voice ="a" \with {midiInstrument = "church organ"}{ \voiceTwo { \alto_intonation \repeat unfold 8 { \alto } } }
        >>
      }
      \new Staff = "lower" \relative c {
        \preambleDown
        <<
          \new Voice = "t" \with {midiInstrument = "church organ"} { \voiceThree { \tenor_intonation \repeat unfold 8 { \tenor}} }
          \\
          \new Voice = "b" \with {midiInstrument = "church organ"} { \voiceFour { \bass_intonation \repeat unfold 8 {\bass}} }
        >>
      }
      \new Staff = "lower" \relative c {
        \preambleDown
        <<
          \new Voice = "p" \with {midiInstrument = "church organ"} { \pedal_intonation \repeat unfold 8 {\pedal} }
        >>
      }
    >>
  >>
}

\markup \bold \underline "Registrierung Intonation"
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

\markup \bold \underline "Registrierung Choral"
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
\sheetmusic
  \layout {
    %    \context {
    %     \Staff
    %    \remove "Time_signature_engraver"
    %     \remove "Bar_engraver"
    %   }
  }
}

\score {
  \sheetmusic_midi
  \midi {}
}