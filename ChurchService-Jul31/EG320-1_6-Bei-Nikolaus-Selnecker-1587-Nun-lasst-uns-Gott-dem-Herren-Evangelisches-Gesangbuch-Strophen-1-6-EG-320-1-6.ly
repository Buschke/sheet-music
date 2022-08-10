\version "2.22.2"

\header {
  composer = "Bei Nikolaus Selnecker 1587"
  arranger = "Arrangement: Sven Buschke"
  title = "Nun lasst uns Gott, dem Herren"
  subtitle = "Evangelisches Gesangbuch, Strophen 1-6"
 % instrument = "2 man 1 ped"
  opus = "EG 320 1-6"
  tagline = ""
  copyright = "Arrangement:  Sven Buschke © 25. Juli 2022"
}

pieceSettings = {
  \key g \major
  \time 3/2
  \tempo 2 = 40
}

melody_intonation = \relative c' {\pieceSettings
  s2^"Intonation"
  s1. s s s2 s
%  \bar "|.|"
%  \bar "||"
}

melody = \relative c' {
  \partial 2
  g'2^"Choral" g fis4 e2 g4 a2 g \breathe g
  g a4 fis2 d4 g2 fis \breathe  fis g g4 a2 b4
  a2 a \breathe  b c b4 a2 g4 a2 g
%  \bar "|."
}

stropheEins = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "1. "
Nun lasst uns Gott dem Her -- ren Dank sa -- gen und ihn eh -- ren für al -- le sei -- ne Ga -- ben, die wir em -- pfan -- gen ha -- ben.
}

stropheZwei = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "2. "
Den Leib, die Seel, das Le -- ben hat er al -- lein uns ge -- ben; die -- sel -- ben zu be -- wah -- ren, tut er nie et -- was spa -- ren.
}

stropheDrei = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "3. "
Nah -- rung gibt er dem Lei -- be; die See -- le muss auch blei -- ben, wie -- wohl töd -- liche Wun -- den sind kom -- men von der Sün -- den.
}

stropheVier = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "4. "
  Ein Arzt ist uns ge -- ge -- ben, der sel -- ber ist das Le -- ben; Chris -- tus, für uns ge -- stor -- ben, der hat das Heil er -- wor -- ben.
}

stropheFuenf = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "5. "
Sein Wort, sein Tauf, sein Nacht -- mahl dient wi -- der al -- les Un -- heil; der Hei -- lig Geist im Glau -- ben lehrt uns da -- rauf ver -- trau -- en.
}

stropheSechs = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "6. "
Durch ihn ist uns ver -- ge -- ben die Sünd, ge -- schenkt das Le -- ben. Im Him -- mel solln wir ha -- ben, o Gott, wie gros -- se Ga -- ben!
}

sopran_intonation = \relative c' {\pieceSettings
  \partial 2
  r2^"Intonation" r1. r r r2 r
}

sopran = \relative c' {
  \partial 2
  g'2^"Choral" g fis4 e2 g4 a2 g \breathe g
  g a4 fis2 d4 g2 fis \breathe  fis g g4 a2 b4
  a2 a \breathe  b c b4 a2 g4 a2 g
}

alt_intonation = \relative c' {\pieceSettings \partial 2 r2 r1. r r r2 r}
alt = \relative c' {
  \partial 2
  d2
  e2 d4 c2 b4
  d2 d \breathe d
  e e4 d2 d4
  b cis d2 \breathe d
  d e4 fis2 g4
  fis2 fis \breathe g
  g g4 fis2 e4
  fis2 g
}
tenor_intonation = \relative c {\pieceSettings
  \partial 2 g'2
  g fis4 e2 g4
  a2 g d'
  d c4 b2 <b d>4
  <b e>2 <a d>2
}
tenor = \relative c {
  \partial 2 b'2
  b b4 g2 g4(
  g4) fis g2 \breathe b
  c c4 a2 g4
  g2 a \breathe a
  b b4 d2 d4
  d2 d \breathe d
  e d4 d2 b4
  d2 b
}
bass_intonation = \relative c {\pieceSettings
  \partial 2 g2
  c a b
  c4 d e fis g a
  b2 g e
  c d
}
bass = \relative c {
  \partial 2
  g'2
  e b4 c2 g4
  d2 g \breathe g
  c a4 d2 b4
  e2 d \breathe d
  g e4 d2 g4
  d2 d \breathe g
  c g4 d2 e4
  d2 g
}
pedal_intonation = \relative c {\pieceSettings \partial 2 r2 r1. r r r2 r }
pedal = \relative c { \partial 2 r2 r1. r r r r r r r2 r }

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
      \new Lyrics \lyricsto "mel" \stropheSechs
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
      \new Lyrics \lyricsto "mel" \stropheDrei
      \new Lyrics \lyricsto "mel" \stropheVier
      \new Lyrics \lyricsto "mel" \stropheFuenf
      \new Lyrics \lyricsto "mel" \stropheSechs
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
  \layout {}
}

\score {
  {
    \clave
    \sheetmusicmidi
  }
  \midi {}
}