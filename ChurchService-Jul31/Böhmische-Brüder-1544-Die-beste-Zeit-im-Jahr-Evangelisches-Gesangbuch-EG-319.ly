\version "2.22.0"

\header {
  composer = "Böhmische Brüder 1544"
  arranger = "Arrangement: Sven Buschke"
  title = "Die beste Zeit im Jahr"
  subtitle = "Evangelisches Gesangbuch"
  instrument = "Melodie und Orgel"
  opus = "EG 319"
  tagline = ""
  copyright = "Arrangement:  Sven Buschke © 25. Juli 2022"
}

global = {
  \key d \major
  \time 4/4
  \tempo 4. = 120
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
  \partial 2..
  d8 fis4 a
  fis8 e d4 e
  d r4 a b a b cis
  d4 c b b
  a r a a8 a
  fis4 e fis g
  e r8 e fis e fis g
  a4 d8 e fis g e4 d4.
  \bar "|."
}

% STROPHE 2

stropheEins = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "1. "
Die bes -- te Zeit im Jahr ist mein, da sin -- gen al -- le Vö -- ge -- lein, Him -- mel und Er -- den ist der voll, viel gut Ge -- sang, der lau -- tet wohl.




}

stropheZwei = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "2. "
Vo -- ran die lie -- be Nach -- ti -- gall macht al -- les fröh -- lich ü -- ber -- all mit ih -- rem lieb -- lichen Ge -- sang, des muss sie ha -- ben im -- mer Dank.


}

stropheDrei = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "3. "
Viel -- mehr der lie -- be Her -- re Gott, der sie al -- so ge -- schaf -- fen hat, zu sein die rech -- te Sän -- ger -- in, der Mu -- si -- ka ein Mei -- ste -- rin.


}

stropheVier = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "4. "
Dem singt und springt sie Tag und Nacht, seins Lo -- bes sie nichts mü -- de macht: den ehrt und lobt auch mein Ge -- sang und sagt ihm ei -- nen e -- wgen Dank.
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
  \partial 2..
  d8 fis4 a
  fis8 e d4 e
  d r4 a b a b cis
  d4 c b b
  a r a a8 a
  fis4 e fis g
  e r8 e fis e fis g
  a4 d8 e fis g e4 d4.
}

alto_intonation = \relative c' {\global
                                 r1.
 r1.
 r1.
 r1.
}

alto = \relative c' {\global
  \partial 2..
  r8 r4 r
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
}

tenor_intonation = \relative c {\global
                                 r1.
 r1.
 r1.
 r1.
}

tenor = \relative c {\global
  \partial 2..
  r8 r4 r
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
}

bass_intonation = \relative c {\global
                                r1.
 r1.
 r1.
 r1.
}

bass = \relative c {\global
  \partial 2..
  r8 r4 r
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
}

pedal_intonation = \relative c {\global
                                 c1.
 d1.
 e1.
 f1.
}

pedal = \relative c {\global
  \partial 2..
  r8 r4 r
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
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