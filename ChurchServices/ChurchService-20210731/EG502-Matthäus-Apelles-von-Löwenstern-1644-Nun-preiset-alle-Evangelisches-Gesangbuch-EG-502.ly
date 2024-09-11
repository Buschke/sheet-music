\version "2.22.0"

\header {
  composer = "Matthäus Apelles von Löwenstern 1644"
  arranger = "Arrangement: Sven Buschke"
  title = "Nun preiset alle"
  subtitle = "Evangelisches Gesangbuch"
  %instrument = "2 man 1 ped"
  opus = "EG 502"
  tagline = ""
  copyright = "Arrangement:  Sven Buschke © 25. Juli 2022"
}

pieceSettings = {
  \key f \major
  \time 6/4
  \tempo 4 = 70
}

melody_intonation = \relative c' {\pieceSettings
 \partial 2.
 r2.^"Intonation"
 r1. r r r r
%  \bar "|.|"
%  \bar "||"
}

melody = \relative c' {
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
  \partial 2.
  f8^"Intonation" e f4 g
  a2 bes 4 c f, c'
  d2.bes4. a8 g4
  c2. a4. g8 f4
  bes2 a4 g2.

  f2.( f2.)
%  \bar "||"
}

soprano = \relative c' {
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
  \partial 2.
  r2.
  r1.
  r4 d e f d2
  f4 c d e c2
  d4 e f e8 d e4 d
  c2 bes4 <a c>2.
}

alto = \relative c' {
 \partial 2.
 c4 d e
 f c2 \breathe e4. e8 f4
 f4. f8 f4 \breathe f f f
 e e2 \breathe f4. f8 d4
 e4. e8 e4 \breathe
 e e fis
 g2 f4 es2 g4
 fis2 g4 \breathe f4. f8 f4
 f4. f8 f4 d2 f4
 e2 f4 \breathe f4. f8 f4
 f4. f8 f4 d e f
 f e2 c2.

}

tenor_intonation = \relative c {\pieceSettings
  \partial 2.
  r2.
  r1. r r r r
}

tenor = \relative c {
 \partial 2.
 a'4 a c
 c a2 c4. c8 c4
 d4. d8 d4 c c f,
 g c2 c4. c8 g4
 g4. g8 g4
 c c c
 d2 bes4 g2 d'4
 d2 bes4 bes4. c8 d4
 a4. d8 c4 bes2 c4
 c2 a4 bes4. c8 d4
 a4. d8 c4
 bes2 c4
 c2 g4 a2.
}

bass_intonation = \relative c {\pieceSettings
  \partial 2.
  r2.
  f8 e f4 g a2 f4
  bes8 a bes4 c d8 c bes2
  a8 g a4 bes c8 bes a2
  g f4 c c' bes
  a8 g a4 g f2.
}

bass = \relative c {
 \partial 2.
 f4 d c
 f f,2 c'4. c8 f4
 bes,4. bes8  bes4
 f' f d
 c c2 f,4. f8 g4
 c4. c8 c4
 c c a
 g2 bes4 c2 g4
 d'2 g,4 bes4. bes8 bes4
 f'4. f8 f4 g2 f4
 c2 f4 bes,4. bes8 bes4
 f'4. f8 f4 g2 f4
 c2. f,2.
}

pedal_intonation = \relative c {\pieceSettings
 \partial 2.
 r2.
 r1. r r r r
}

pedal = \relative c {
 \partial 2.
 r2.
 r1. r r r r r r r r r
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

clave = {\new DrumStaff <<
  \drummode {\pieceSettings
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
        hh8 cl hh cl hh cl
    } \\ {
      bd4 sn4 sn4
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