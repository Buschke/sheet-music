\version "2.22.0"

\header {
  composer = "Johann Walter 1524"
  arranger = "Arrangement: Sven Buschke"
  title = "Der Herr ist mein getreuer Hirt"
  subtitle = "Evangelisches Gesangbuch - Psalm 23"
  instrument = "2 man 1 ped"
  opus = "EG 274"
  tagline = ""
  copyright = "© Arrangement: Sven Buschke, 25. Juli 2022"
}

pieceSettings = {
  \key d \major
  \time 4/4
  \tempo 4 = 120
}

%preambleUp = {\clef treble \pieceSettings}
%preambleDown = {\clef bass \pieceSettings}
%preamblePedal={\clef bass \pieceSettings}

melody_intonation = \relative c' {\pieceSettings
  s1^"Intonation"
  s
  s
  s
  s
%  \bar "|.|"
%  \bar "||"
}

melody_one = \relative c' {
  e2^"Choral" e4 b
  e fis4 g8 a fis4
  e r8 %\breathe
  e8 g4 a b a g\( fis\)
%  \bar "|."
}

melody_altone = \relative c' {
  e2
}

melody_alttwo = \relative c' {
  e4 r8 e b'4 a
}

melody_two = \relative c' {
  d' cis b a b r8
  b8 b4 g fis g e fis b, r8
  b8 d4 e fis b g8\( e fis4\) e2
  \bar "|."
}

% STROPHE 2

stropheEins = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "1. "
  Der Herr ist mein getreuer Hirt, hält mich in seiner Hute, darin mir gar nicht mangeln wird jemals an einem Gute. Er weidet mich ohn Unterlass, da aufwächst das wohlschmeckend Gras seines heilsamen Wortes.
}

stropheZwei = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "2. "
  Zum rei -- nen Was -- ser er mich weist, das mich er -- quickt so gu -- te, das ist sein wer -- ter Heil -- ger Geist, der mich macht wohl -- ge -- mu -- te; er füh -- ret mich auf rech -- ter Straß in seim Ge -- bot ohn Un -- ter -- lass um sei -- nes Na -- mens wil -- len.
}

stropheDrei = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "3. "
Ob ich wan -- dert im fins -- tern Tal, fürcht ich doch kein Un -- glüc -- ke in Leid, Ver -- fol -- gung und Trüb -- sal, in die -- ser Wel -- te Tüc -- ke: denn du bist bei mir ste -- tig -- lich, dein Stab und Stec -- ken trö -- sten mich, auf dein Wort ich mich las -- se.
}

stropheVier = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "4. "
Du b'rei -- test vor mir ei -- nen Tisch vor mein' Feind' al -- lent -- hal -- ben, machst mein Herz un -- ver -- za -- get frisch; mein Haupt tust du mir sal -- ben mit dei -- nem Geist, der Freu -- den Öl, und schen -- kest voll ein mei -- ner Seel dei -- ner geist -- li -- chen Freu -- den.
}

stropheFuenf = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "5. "
Gu -- tes und viel Barm -- her -- zig -- keit fol -- gen mir nach im Le -- ben, und ich werd blei -- ben al -- le -- zeit im Haus des Her -- ren e -- ben auf Erd in der christ -- li -- chen G'mein, und nach dem To -- de werd ich sein bei Chris -- tus, mei -- nem Her -- ren.
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
  r1^"Intonation"
  b'2( b4.) d8
  b2( b8) d b4(
  b4.) d8 b4. d8
  b d4 b8 <b e>2
}

sopran_one = \relative c' {
  e2^"Choral" e4 b
  e fis4 g8 a fis4
  e r8 %\breathe
  e8 g4 a b a g\( fis\)
}

sopran_altone = \relative c' {
  e2
}

sopran_alttwo = \relative c' {
  e4 r8 e b'4 a
}

sopran_two = \relative c' {
  d' cis b a b r8
  b8 b4 g fis g e fis b r8
  b,8 d4 e fis b g8\( e fis4\) e2
}

alt_intonation = \relative c' {\pieceSettings
  r2 e2
  e4 b e fis
  g8 a fis4 e4. e8
  g4 a b a
  g fis e2
}

alt_one = \relative c' {
  b2 b4 b
  g c b2
  g4 r8 b e4 fis
  g e2 dis4
}

alt_altone = \relative c' {
  e2
}

alt_alttwo = \relative c' {
  e4 r8 e e4 cis
}

alt_two = \relative c' {
  fis4 e e cis
  dis r8 e d4 c
  a d cis a
  fis r8 b b4 cis
  d d e4.dis8
  b2
}

tenor_intonation = \relative c {\pieceSettings
  s1
  s
  s
  s
  s
}

tenor_one = \relative c' {
  e,4 fis g fis
  e2. dis4
  e r8 g b4 d
  d c b fis
}

tenor_altone = \relative c' {
  g2
}

tenor_alttwo = \relative c' {
  g4 r8 g g4 a
}

tenor_two = \relative c' {
  a4 a g fis
  fis r8 g g4 e
  d d e4. dis8
  e4 r8 g fis4 a
  a g g b
  gis2
}


bass_intonation = \relative c {\pieceSettings
  e2 e4 b
  e fis g8 a fis4
  e4. e8 g4 a
  b a g fis
  e1
}

bass_one = \relative c' {
  e,,2 e'4 d
  c a b2
  e,4 r8 e e'4 d
  g, a b2
}

bass_altone = \relative c' {
  e,2
}

bass_alttwo = \relative c' {
  e,4 r8 e, e'4 fis
}

bass_two = \relative c' {
  d,4 a e' fis
  b, r8 e b4 c
  d b a fis
  e r8 e b'4 a
  d g, c b
  e,2
}


pedal_intonation = \relative c {\pieceSettings
  r1 r r r r
}

pedal_one = \relative c' {
  r1 r r r
}

pedal_altone = \relative c' {
  r2
}

pedal_alttwo = \relative c' {
  r1
}

pedal_two = \relative c' {
  r1 r r r r r2
}


sheetmusic = {
  <<
    \new Staff = "melody" \with { instrumentName = "Melodie" shortInstrumentName = "ml" }  {\clef treble
      \new Voice = "mel" \with { midiInstrument = "voice oohs" } {
        \melody_intonation
        \repeat volta 5 { \melody_one}
        \alternative {{ \melody_altone } { \melody_alttwo }}
        \melody_two
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
                             \new Voice = "s" \with { midiInstrument = "acoustic grand" } { \voiceOne { \sopran_intonation
        \repeat volta 5 { \sopran_one}
        \alternative {{ \sopran_altone } { \sopran_alttwo }}
        \sopran_two
                             } }
                             \new Voice = "a" \with { midiInstrument = "acoustic grand"} { \voiceTwo { \alt_intonation
                                                                                                              \repeat volta 5 { \alt_one}
        \alternative {{ \alt_altone } { \alt_alttwo }}
        \alt_two
                             } }
                           >>
        }
        \new Staff = "down" {\clef bass
        <<
          \new Voice = "t" \with { midiInstrument = "acoustic grand" } { \voiceThree { \tenor_intonation
                                                                                               \repeat volta 5 { \tenor_one}
        \alternative {{ \tenor_altone } { \tenor_alttwo }}
        \tenor_two
          } }
          \new Voice = "b" \with { midiInstrument = "acoustic grand" } { \voiceFour { \bass_intonation
                                                                                              \repeat volta 5 { \bass_one}
        \alternative {{ \bass_altone } { \bass_alttwo }}
        \bass_two
          } }
        >>
        }
      >>
      \new Staff = "ped" \with { instrumentName = "ped" shortInstrumentName = "pd"} {\clef bass
                                                                                      \new Voice = "p" \with { midiInstrument = "acoustic grand" } { \pedal_intonation
        \repeat volta 5 { \pedal_one}
        \alternative {{ \pedal_altone } { \pedal_alttwo }}
        \pedal_two
                                                                                     }
      }
  >>
  >>
}

sheetmusicmidi = {
  <<
    \new Staff = "melody" \with { instrumentName = "Melodie" shortInstrumentName = "ml" }  {\clef treble
      \new Voice = "mel" \with { midiInstrument = "voice oohs" } {
        \melody_intonation
        \repeat unfold 5 { \melody_one}
        \alternative {{ \melody_altone } { \melody_alttwo }}
        \melody_two
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
                             \new Voice = "s" \with { midiInstrument = "acoustic grand" } { \voiceOne { \sopran_intonation
        \repeat unfold 5 { \sopran_one}
        \alternative {{ \sopran_altone } { \sopran_alttwo }}
        \sopran_two
                             } }
                             \new Voice = "a" \with { midiInstrument = "acoustic grand"} { \voiceTwo { \alt_intonation
                                                                                                              \repeat unfold 5 { \alt_one}
        \alternative {{ \alt_altone } { \alt_alttwo }}
        \alt_two
                             } }
                           >>
        }
        \new Staff = "down" {\clef bass
        <<
          \new Voice = "t" \with { midiInstrument = "acoustic grand" } { \voiceThree { \tenor_intonation
                                                                                               \repeat unfold 5 { \tenor_one}
        \alternative {{ \tenor_altone } { \tenor_alttwo }}
        \tenor_two
          } }
          \new Voice = "b" \with { midiInstrument = "acoustic grand" } { \voiceFour { \bass_intonation
                                                                                              \repeat unfold 5 { \bass_one}
        \alternative {{ \bass_altone } { \bass_alttwo }}
        \bass_two
          } }
        >>
        }
      >>
      \new Staff = "ped" \with { instrumentName = "ped" shortInstrumentName = "pd"} {\clef bass
                                                                                      \new Voice = "p" \with { midiInstrument = "acoustic grand" } { \pedal_intonation
        \repeat unfold 5 { \pedal_one}
        \alternative {{ \pedal_altone } { \pedal_alttwo }}
        \pedal_two
                                                                                     }
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