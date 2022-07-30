\version "2.22.2"

\header {
  title = "HGDoA 03 - Gloria"
  subtitle = "Hauptgottesdienst ohne des Heiligen Abendmahles"
  composer = "HGDoA"
  arranger = "Sven Buschke"
  opus = "HGDoA 03 / EG 179"
  copyright = "© Sven Buschke, 5. Juli 2022"
  tagline = ""
}

pieceSettings = {
  \key f \major
  \time 3/2
  \tempo 4 = 65
}

stemOff = \hide Staff.Stem
stemOn  = \undo \stemOff

preambleUp = {\clef treble \pieceSettings}
preambleDown = {\clef bass \pieceSettings}
preamblePedal={\clef bass \pieceSettings}

melody_intro = \relative c' {\stemOff
  \pieceSettings
  \cadenzaOn
  c'2 a4 bes c2 a4 g a bes g2 f
  %\bar ";"
  %\bar "!"
%  \bar "||"
  \cadenzaOff
  \stemOn
}

melody_one = \relative c'{
  \repeat volta 2 {
  \partial 4  f4
  a2 bes4 c2 bes4
  a2 g4 a2  \breathe a4 a2 g4 bes( a) g %\bar "'"
  f2( e4) f2 }

}

melody_two = \relative c' {
  \partial 4 f4
  f2 g 4 bes2 a4 g2 f4 g2 \bar "'" g4 a2 bes4 c2 bes4 a2 g4 a2 f4 g2 bes4 a2 g4 f2( e4) \cadenzaOn f1
%  \bar ".|
}

strophe_intro = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "K:"
Eh -- re sei Gott in der Hö __ _ _ -- he!
}

strophe_one_one = \lyricmode {
\set stanza = "G:"
    Al -- lein Gott in der Höh sei Ehr
und Dank für sei -- ne Gna-- de,
}

strophe_one_two = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "G:"
  dar -- um dass nun und nim -- mer --mehr uns rüh -- ren kann kein Scha -- de.
}

strophe_two = \lyricmode {
    \set fontSize = #-.5
    \set stanza = "G:"
      Ein Wohl -- ge --falln Gott an uns hat nun ist groß Fried ohn Un -- ter -- lass,
      all Fehd hat nun ein En -- de.
}

sopran_intro = \relative c' {
  \pieceSettings
  \cadenzaOn
  s2 s4 s s2 s4 s s s s2 s
%  \bar "||"
  \cadenzaOff
  \stemOn
}

sopran_one = \relative c' {

  \repeat volta 2 {
  \partial 4  f4
  a2 bes4 c2 bes4
  a2 g4 a2 \bar "'" a4 a2 g4 bes( a) g
  f2( e4) f2 }
}

sopran_two = \relative c' {
  \partial 4 f4
  f2 g 4 bes2 a4 g2 f4 g2 \bar "'" g4 a2 bes4 c2 bes4 a2 g4 a2 f4 g2 bes4 a2 g4 f2( e4) \cadenzaOn f1
}

alt_intro = \relative c' {
  \pieceSettings
  \cadenzaOn
  s2 s4 s s2 s4 s s s s2 s
  \cadenzaOff
  \stemOn
}

alt_one = \relative c' {

  \repeat volta 2 {
  \partial 4  c4
  f2 f4 e2 d4
  f2 e4 f2 \breathe a4
  a2 g4 bes\( a\) g
  f2\( e4\) f2}

}

alt_two = \relative c' {
  \partial 4 c4
  d2 e4 g2 f4
  es2 c4 e2 \breathe d4
  f2 f4 e2 d4
  f2 d4 cis2
  a4 c2 bes4 c2 c4
  a bes c \cadenzaOn c1
}

tenor_intro = \relative c {
  \pieceSettings
  \cadenzaOn
  s2 s4 s s2 s4 s s s s2 s
  \cadenzaOff
  \stemOn
}

tenor_one = \relative c {
  \repeat volta 2 {
  \partial 4  f4
  c'2 bes4 g2 g4
  c2. c2 \breathe a4
  d2 bes4 g f e
  f2 g4 a2
  %\bar "'"
}
}

tenor_two = \relative c {
  \partial 4 a4
  a2 c4 d2 d4
  bes2 a4 c2 \breathe bes4
  c2 bes4 g2 g4
  f2 g4 e2 \breathe f4
  e2 d4 f2 e4
  f2 g4 \cadenzaOn a1  
}

bass_intro = \relative c {
  \pieceSettings
  \cadenzaOn
  s2 s4 s s2 s4 s s s s2 s
  \cadenzaOff
  \stemOn
}

bass_one = \relative c {
  \repeat volta 2 {
  \partial 4  f,4
  f'2 d4 c2 g4
  a bes c f,2 \breathe  f'4
  d2 g4 es f c
  d2 c4 f,2 }
}

bass_two = \relative c {
  \partial 4 f'4
  d2 c4 g2 d'4
  es2 f4 c2 \breathe g'4
  f e d c2 g4
  d' c bes a2 \breathe d4
  c2 g4 a2 c4
  d2 c4
  \cadenzaOn
  f,1
}

pedal_intro = \relative c {
  \pieceSettings
  \cadenzaOn
  s2 s4 s s2 s4 s s s s2 s
    \cadenzaOff
}

pedal_one = \relative c {
  \repeat volta 2 {
    \partial 4 s4
    s1. s s s1 s4
  }
}

pedal_two = \relative c {
  \partial 4 s4
  s1. s s s s s2 s4 \cadenzaOn s1
  \bar "|."
}

sheetmusic = {
  <<
    \new Staff = "melody" \with { instrumentName = "Melodie" shortInstrumentName = "ml" }  {\clef treble
      \new Voice = "mel" \with { midiInstrument = "voice oohs" } {
        \melody_intro
        \repeat volta 2 { \melody_one }
        \melody_two
      }
                                                                  }
{      \new Lyrics \lyricsto "mel" \strophe_intro
      \new Lyrics \lyricsto "mel" \strophe_one_one 
      \new Lyrics \strophe_one_two \with { alignBelowContext = "strophe_one_one" }
      \new Lyrics \lyricsto "mel" \strophe_two }
          \new StaffGroup = "org" \with { instrumentName = "org" shortInstrumentName = "or" } <<
    \new PianoStaff <<
      %\set PianoStaff.instrumentName = #"Piano  "
      \new Staff = "upper" \relative c' {
        \preambleUp
        <<
          \new Voice = "s" { \voiceOne {\sopran_intro \repeat volta 2 { \sopran_one} \sopran_two }}
          \\
          \new Voice ="a" { \voiceTwo {\alt_intro \repeat volta 2 { \alt_one} \alt_two}}
        >>
      }
      \new Staff = "lower" \relative c {
        \preambleDown
        <<
          \new Voice = "t" { \voiceThree {\tenor_intro \repeat volta 2 { \tenor_one} \tenor_two }}
          \\
          \new Voice = "b" { \voiceFour {\bass_intro \repeat volta 2 { \bass_one} \bass_two }}
        >>
      }
    >>
      \new Staff = "lower" \relative c {
        \preambleDown
        <<
          \new Voice = "p" { {\pedal_intro \repeat volta 2 {\pedal_one} \pedal_two} }
        >>
      }

          >>
  >>
}

sheetmusicmidi = {
  <<
    \new Staff = "mel" {\clef treble
    \new Voice = "mmld" {\pieceSettings
      { << 
        \melody_intro
        \new Lyrics \lyricsto "mmld" \strophe_intro
        >>
       \repeat volta 2 { <<\melody_one
         \new Lyrics \lyricsto "mmld" \strophe_one_one 
         \new Lyrics \lyricsto "mmld" \strophe_one_two
       >>}
       <<
       \melody_two
       \new Lyrics \lyricsto "mmld" \strophe_two
      >>               }
                        
%    \new Lyrics \lyricsto "m" \strophe
%    >>
    }
    }
          \new StaffGroup = "org" \with { instrumentName = "org" shortInstrumentName = "or" } <<
    \new PianoStaff <<
      %\set PianoStaff.instrumentName = #"Piano  "
      \new Staff = "upper" \relative c' {
        \preambleUp
        <<
          \new Voice = "s" { \voiceOne {\sopran_intro \repeat volta 2 { \sopran_one} \sopran_two }}
          \\
          \new Voice ="a" { \voiceTwo {\alt_intro \repeat volta 2 { \alt_one} \alt_two}}
        >>
      }
      \new Staff = "lower" \relative c {
        \preambleDown
        <<
          \new Voice = "t" { \voiceThree {\tenor_intro \repeat volta 2 { \tenor_one} \tenor_two }}
          \\
          \new Voice = "b" { \voiceFour {\bass_intro \repeat volta 2 { \bass_one} \bass_two }}
        >>
      }
    >>
      \new Staff = "lower" \relative c {
        \preambleDown
        <<
          \new Voice = "p" { {\pedal_intro \repeat volta 2 {\pedal_one} \pedal_two} }
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