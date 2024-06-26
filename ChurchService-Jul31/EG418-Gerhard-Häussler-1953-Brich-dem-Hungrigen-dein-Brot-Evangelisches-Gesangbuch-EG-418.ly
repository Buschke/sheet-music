\version "2.22.0"

\header {
  composer = "Gerhard Häussler 1953"
  arranger = "Arrangement: Sven Buschke"
  title = "Brich dem Hungrigen dein Brot"
  subtitle = "Evangelisches Gesangbuch"
  instrument = "2 man 1 ped"
  opus = "EG 418"
  tagline = ""
  copyright = "Arrangement:  Sven Buschke © 25. Juli 2022"
}

pieceSettings = {
  \key bes \major
  \time 4/4
  \tempo 2 = 40
}

melody_intonation = \relative c' {\pieceSettings
  r1^"Intonation"
  \repeat unfold 4 {r1}
  \time 6/4 r1.
  \time 4/4 r1 r
%  \bar "|.|"
%  \bar "||"
}

melody = \relative c' {
  g'4^"Choral" a bes c c bes c2
  d4 c a bes g2 a bes4 g g f
  es f d2
  \time 6/4 f4 f g2\( a4\) bes
  \time 4/4 a2 g
}

% STROPHE 2

stropheEins = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "1. "
Brich dem Hung -- ri -- gen dein Brot. Die im E -- lend wan -- dern, füh -- re in dein Haus hi -- nein; trag die Last der an -- dern.
}

stropheZwei = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "2. "
Brich dem Hun -- gri -- gen dein Brot; du hast's auch em -- pfan -- gen. De -- nen, die in Angst und Not, stil -- le Angst und Ban -- gen.
}

stropheDrei = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "3. "
Der da ist des Le -- bens Brot, will sich tä -- glich ge -- ben, tritt hin -- ein in uns -- re Not, wird des Le -- bens Le -- ben.
}

stropheVier = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "4. "
Dank sei dir, Herr Je -- su Christ, dass wir dich noch ha -- ben und dass du ge -- kom -- men bist, Leib und Seel zu la -- ben.
}

stropheFuenf = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "5. "
Brich uns Hun -- gri -- gen dein Brot, Sün -- dern wie den From -- men, und hilf, dass an dei -- nen Tisch wir einst al -- le kom -- men.
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

sopran_intonation = \relative c' {\pieceSettings
  g'4^"Intonation"
  a bes c
  c bes c d8 c
  d4 c a bes
  g8 a bes d es4 c
  d8 c d4 bes g
  \time 6/4
  f f g2 a4 bes
  \time 4/4
  a1
  g

%  \bar "||"
}

sopran = \relative c' {
  g'4^"Choral" a bes c c bes c2
  d4 c a bes g2 a bes4 g g f
  es f d2
  \time 6/4 f4 f g2\( a4\) bes
  \time 4/4 a2 g
}

alt_intonation = \relative c' {\pieceSettings
  r1 r
  d4 e f g
  g f g a
  g f es2
  \time 6/4
  d4 c bes2 es
  \time 4/4
  f4 d f es
  d c d2
}

alt = \relative c' {
  g'2 g
  g1
  d
  e4 d c2
  f4 es es d
  bes2 d
  \time 6/4 d4 d es2 f
  \time 4/4 f4 e d2
}

tenor_intonation = \relative c {\pieceSettings
  \repeat unfold 5 {r1}
  \time 6/4 r1.
  \time 4/4 r1 r
}

tenor = \relative c {
  bes'4 c d2c1
  g2 f4 g
  c2
  f,
  bes4 bes c a
  g2 a
  \time 6/4 bes2 bes4 c2 d4
  \time 4/4 c2 g
}

bass_intonation = \relative c {\pieceSettings
  r1 r r r
  g'4 a bes c
  \time 6/4
  a g f es c2
  \time 4/4
  f2 d
  g g,
}

bass = \relative c {
  g'2 f
  es1
  bes2 d4 bes
  c2 f
  d4 es
  c d
  g,2 d'4 c
  \time 6/4 bes2 es4 c f d
  \time 4/4 f2 g
}

pedal_intonation = \relative c {\pieceSettings
  \repeat unfold 5 {r1}
  \time 6/4 r1.
  \time 4/4 r1 r
}

pedal = \relative c {
  \repeat unfold 6 { r1 }
  \time 6/4 r1.
  \time 4/4 r1
}

sheetmusic = {
  <<
    \new Staff = "melody" \with { instrumentName = "Melodie" shortInstrumentName = "mel" }  {\clef treble
                                                                                                   \new Voice = "mel" \with { midiInstrument = "voice oohs" } {
        \melody_intonation
        \repeat volta 5 { \melody }
      }
    }
      \new Lyrics \lyricsto "mel" \stropheEins
      \new Lyrics \lyricsto "mel" \stropheZwei
      \new Lyrics \lyricsto "mel" \stropheDrei
      \new Lyrics \lyricsto "mel" \stropheVier
      \new Lyrics \lyricsto "mel" \stropheFuenf
      \new StaffGroup = "org" \with { instrumentName = "org" shortInstrumentName = "org" } <<
            \new PianoStaff = "man"  \with { instrumentName = "man" shortInstrumentName = "man" } <<
        \new Staff = "up" {\clef treble
                           <<
                             \new Voice = "s" \with { midiInstrument = "acoustic grand" } { \voiceOne { \sopran_intonation \repeat volta 5 {\sopran} } }
                             \new Voice = "a" \with { midiInstrument = "acoustic grand"} { \voiceTwo { \alt_intonation \repeat volta 5 { \alt } } }
                           >>
        }
        \new Staff = "down" {\clef bass
        <<
          \new Voice = "t" \with { midiInstrument = "acoustic grand" } { \voiceThree { \tenor_intonation \repeat volta 5 { \tenor } } }
          \new Voice = "b" \with { midiInstrument = "acoustic grand" } { \voiceFour { \bass_intonation \repeat volta 5 { \bass } } }
        >>
        }
      >>
      \new Staff = "ped" \with { instrumentName = "ped" shortInstrumentName = "ped"} {\clef bass
                                                                                      \new Voice = "p" \with { midiInstrument = "acoustic grand" } { \pedal_intonation \repeat volta 5 { \pedal }}
      }
    >>

  >>
}

sheetmusicmidi = {
  <<
    \new Staff = "melody" \with { instrumentName = "Melodie" shortInstrumentName = "mel" }  {\clef treble
                                                                                                   \new Voice = "mel" \with { midiInstrument = "voice oohs" } {
        \melody_intonation
        \repeat unfold 5 { \melody }
      }
    }
      \new Lyrics \lyricsto "mel" \stropheEins
      \new Lyrics \lyricsto "mel" \stropheZwei
    \new StaffGroup = "org" \with { instrumentName = "org" shortInstrumentName = "org" } <<
            \new PianoStaff = "man"  \with { instrumentName = "man" shortInstrumentName = "man" } <<
        \new Staff = "up" {\clef treble
                           <<
                             \new Voice = "s" \with { midiInstrument = "acoustic grand" } { \voiceOne { \sopran_intonation \repeat unfold 5 {\sopran} } }
                             \new Voice = "a" \with { midiInstrument = "acoustic grand"} { \voiceTwo { \alt_intonation \repeat unfold 5 { \alt } } }
                           >>
        }
        \new Staff = "down" {\clef bass
        <<
          \new Voice = "t" \with { midiInstrument = "acoustic grand" } { \voiceThree { \tenor_intonation \repeat unfold 5 { \tenor } } }
          \new Voice = "b" \with { midiInstrument = "acoustic grand" } { \voiceFour { \bass_intonation \repeat unfold 5 { \bass } } }
        >>
        }
      >>
      \new Staff = "ped" \with { instrumentName = "ped" shortInstrumentName = "ped"} {\clef bass
                                                                                      \new Voice = "p" \with { midiInstrument = "acoustic grand" } { \pedal_intonation \repeat unfold 5 { \pedal }}
      }
    >>

  >>
}

% midi count in
clave = {\new DrumStaff <<
  \drummode {\pieceSettings
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
        hh8 cl hh cl hh cl hh cl
    } \\ {
      bd4 sn4 bd4 sn4
    } >>
  }
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
  {
    %\clave
    \sheetmusic
  }
  \layout {
          \context {
         \Staff
        \remove "Time_signature_engraver"
         %\remove "Bar_engraver"
       }
  }
}

\score {
  {
    \clave
    \sheetmusicmidi
  }
  \midi {}
}