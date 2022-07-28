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

pieceSettings = {
  \key f \major
  \time 6/4
  \tempo 4. = 96
}

melody_intonation = \relative c' {\pieceSettings
  s2.^"Intonation" s
  s2. s
  s2. s
  s2. s
  \bar "|.|"
%  \bar "||"
}

melody = \relative c' {\pieceSettings
  \partial 2.
  f4^"Choral" f g
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
  Nun prei -- set al -- le Got -- tes Barm -- herz -- ig -- keit! Lob ihn mit Schal -- le, wer -- tes -- te Chris -- ten -- heit! Er lässt dich freund -- lich zu sich la -- den; freu -- e dich, Is -- ra -- el, sei -- ner Gna -- den, freu -- e dich, Is -- ra -- el, sei -- ner Gna -- den!
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
  Er gi -- bet Spei -- se reich -- lich und ü -- ber -- all, nach Va -- ters Wei -- se sät -- tigt er all -- zu -- mal; er schaf -- fet frühn und spä -- ten Re -- gen, fül -- let uns al -- le mit sei -- nem Se -- gen, fül -- let uns al -- le mit sei -- nem Se -- gen.
}

stropheFuenf = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "5. "
  Drum preis und eh -- re sei -- ne Barm -- her -- zig -- keit; sein Lob ver -- meh -- re, wer -- tes -- te Chris -- ten -- heit! Uns soll hin -- fort kein Un -- fall scha -- den; freu -- e dich, Is -- ra -- el, sei -- ner Gna -- den, freu -- e dich, Is -- ra -- el, sei -- ner Gna -- den!
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

soprano_intonation = \relative c' {\pieceSettings
  f4^"Intonation" f g f f f
  a f2 \breathe g4. g8 a4
  bes4. bes8 bes4 \breathe a a bes
  c g2 \breathe a4. a8 b4
  \bar "||"
}

soprano = \relative c' {\pieceSettings
  \partial 2.
  f4^Choral f g
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

alto_intonation = \relative c' {\pieceSettings
                                 r1.
 r1.
 r1.
 r1.
}

alto = \relative c' {\pieceSettings
 \partial 2.
 c4 c e
 f d2 e4. e8 f4
 f4. f8 f4 f f f
 f e2 f4. f8 g4
 g4. f8 e4 e e f
 f2 f4 f2 f4
 f2 e4 f4. f8 f4
 f4. f8 f4 f2 f4
 e2 c4 f4. e8 f4
 f4. f8 f4 f2 f4
 e2. c
}

tenor_intonation = \relative c {\pieceSettings
                                 r1.
 r1.
 r1.
 r1.
}

tenor = \relative c {\pieceSettings
 \partial 2.
 a'4 a c
 c bes2 c4. c8 c4
 d4. d8 d4 c c d
 c c2 c4. c8 d4
 e4. a,8 g4 c c c
 d2 bes4 a2 d4
 c2 c4 bes4. a8 d4
 a4. d8 c4 d2 c4
 c2 a4 bes4. g8 d4
 c4. d8 c4 d2 c4
 g2. a
}

bass_intonation = \relative c {\pieceSettings
                                r1.
 r1.
 r1.
 r1.
}

bass = \relative c {\pieceSettings
 \partial 2.
 f4 f c
 f bes,2 c4. c8 f4
 bes,4. bes8 bes4
 f f bes
 f c2 f4. f8 g4
 c4. f8 c4 c c f
 bes2 bes4
 f2 bes4
 f2 c4 bes4. f8 bes4
 f4. bes8 f4 bes2 f4 c2 f4 bes4. c8 bes4 f4. bes8 f4 bes2 f4 c2. f2.
}

pedal_intonation = \relative c {\pieceSettings
 c4. c c c
 f4. f f f
 c4. c c c
 f4. f f f
}

pedal = \relative c {\pieceSettings
 \partial 2.
 f4 f c
 f bes,2 c4. c8 f4
 bes,4. bes8 bes4
 f f bes
 f c2 f4. f8 g4
 c4. f8 c4 c c f
 bes2 bes4
 f2 bes4
 f2 c4 bes4. f8 bes4
 f4. bes8 f4 bes2 f4 c2 f4 bes4. c8 bes4 f4. bes8 f4 bes2 f4 c2. f2.
}

sheetmusic = {
  <<
    \new Staff = "melody" \with { instrumentName = "Melodie" shortInstrumentName = "ml" }  {\clef treble
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
      \new StaffGroup = "org" \with { instrumentName = "org" shortInstrumentName = "or" } <<
      \new PianoStaff = "man"  \with { instrumentName = "man" shortInstrumentName = "mn" } <<
        \new Staff = "up" {\clef treble
                           <<
                             \new Voice = "s" \with { midiInstrument = "acoustic grand" } { \voiceOne { \soprano_intonation \repeat volta 5 {\soprano} } }
                             \new Voice = "a" \with { midiInstrument = "acoustic grand"} { \voiceTwo { \alto_intonation \repeat volta 5 { \alto } } }
                           >>
        }
        \new Staff = "down" {\clef bass
        <<
          \new Voice = "t" \with { midiInstrument = "acoustic grand" } { \voiceThree { \tenor_intonation \repeat volta 5 { \tenor } } }
          \new Voice = "b" \with { midiInstrument = "acoustic grand" } { \voiceFour { \bass_intonation \repeat volta 5 { \bass } } }
        >>
        }
      >>
      \new Staff = "ped" \with { instrumentName = "ped" shortInstrumentName = "pd"} {\clef bass
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
      \new StaffGroup = "org" \with { instrumentName = "org" shortInstrumentName = "org" } <<
      \new PianoStaff = "man"  \with { instrumentName = "man" shortInstrumentName = "man" } <<
        \new Staff = "up" {\clef treble
                           <<
                             \new Voice = "s" \with { midiInstrument = "acoustic grand" } { \voiceOne { \soprano_intonation \repeat unfold 5 {\soprano} } }
                             \new Voice = "a" \with { midiInstrument = "acoustic grand"} { \voiceTwo { \alto_intonation \repeat unfold 5 { \alto } } }
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

\score {
  \sheetmusic
  \layout {}
}

\score {
  \sheetmusicmidi
  \midi {}
}