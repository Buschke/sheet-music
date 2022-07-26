\version "2.22.0"

\header {
  composer = "Matthäus Apelles von Löwenstern 1644"
  arranger = "Arrangement: Sven Buschke"
  title = "Nun preiset alle"
  subtitle = "Evangelisches Gesangbuch"
  instrument = "Melodie und Orgel"
  opus = "EG 502"
  tagline = ""
  copyright = "Arrangement:  Sven Buschke © 25. Juli 2022"
}

global = {
  \key f \major
  \time 6/4
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
  \partial 2.
  f4 f g
  a f2 \breathe g4. g8 a4
  bes4. bes8 bes4 \breathe a a bes
  c g2 \breathe a4. a8 b4
  c4. c8 c4 \breathe  g g a
  bes2 d4 c2 bes4
  a2 g4 \breathe  d'4. c8 bes4
  c4. bes8 a4 bes2 a4
  g2 f4 \breathe d'4. c8 bes4
  c4. bes8 a4 bes2 a4
  g2. f
  \bar "|."
}

% STROPHE 2

stropheEins = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "1. "
  Nun prei -- set al -- le Got -- tes Barm -- her --zig --keit!
  Lob ihn mit Schal -- le,
  wer -- tes -- te Chris -- ten -- heit!
  Er lässt dich freu -- e dich,
  Is -- ra -- el, sei -- ner Gna -- den,
  freu -- e dich, Is -- ra -- el, sei -- ner Gna -- den!
}

stropheZwei = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "2. "
   Der Herr re -- gie -- ret ü -- ber die gan -- ze Welt;
   was sich nur rüh -- ret, al -- les zu Fuß ihm fällt;
   viel tau -- send En -- gel um ihn schwe -- ben,
   Psal -- ter und Har -- fe ihm Eh -- re ge -- ben,
   Psal -- ter und Har -- fe ihm Eh -- re ge -- ben.
}

stropheDrei = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "3. "
  Wohl -- auf, ihr Hei -- den, las -- set das Trau -- ern sein,
  zur grü -- nen Wei -- den stel -- let euch wil -- lig ein;
  da lässt er uns sein Wort ver -- kün -- den,
  ma -- chet uns le -- dig von al -- len Sün -- den,
  ma -- chet uns le -- dig von al -- len Sün -- den.
}

stropheVier = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "4. "
  Er gibet Speise reichlich und überall, nach Vaters Weise sättigt er allzumal; er schaffet frühn und späten Regen, füllet uns alle mit seinem Segen, füllet uns alle mit seinem Segen.
}

stropheFuenf = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "5. "
  Drum preis und ehre seine Barmherzigkeit; sein Lob vermehre, werteste Christenheit! Uns soll hinfort kein Unfall schaden; freue dich, Israel, seiner Gnaden, freue dich, Israel, seiner Gnaden!
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
  \partial 2.
  f4 f g
  a f2 \breathe g4. g8 a4
  bes4. bes8 bes4 \breathe a a bes
  c g2 \breathe a4. a8 b4
  c4. c8 c4 \breathe  g g a
  bes2 d4 c2 bes4
  a2 g4 \breathe  d'4. c8 bes4
  c4. bes8 a4 bes2 a4
  g2 f4 \breathe d'4. c8 bes4
  c4. bes8 a4 bes2 a4
  g2. f
}

alto_intonation = \relative c' {\global
                                 r1.
 r1.
 r1.
 r1.
}

alto = \relative c' {\global
 \partial 2.
 r2.
 r1.
 r1.
 r1.
 r1.
 r1.
 r1.
 r1.
 r1.
 r1.
 r1.
}

tenor_intonation = \relative c {\global
                                 r1.
 r1.
 r1.
 r1.
}

tenor = \relative c {\global
 \partial 2.
 r2.
 r1.
  r1.
 r1.
 r1.
 r1.
 r1.
r1.
 r1.
 r1.
 r1.
}

bass_intonation = \relative c {\global
                                r1.
 r1.
 r1.
 r1.
}

bass = \relative c {\global
 \partial 2.
 r2.
 r1.
 r1.
 r1.
 r1.
 r1.
 r1.
 r1.
 r1.
 r1.
 r1.
}

pedal_intonation = \relative c {\global
                                 c1.
 d1.
 e1.
 f1.
}

pedal = \relative c {\global
 \partial 2.
 r2.
 r1.
 r1.
 r1.
 r1.
 r1.
 r1.
 r1.
 r1.
 r1.
 r1.
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