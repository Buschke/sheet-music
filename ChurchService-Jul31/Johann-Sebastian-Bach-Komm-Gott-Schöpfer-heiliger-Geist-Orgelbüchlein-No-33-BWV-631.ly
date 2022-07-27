\version "2.22.0"

\header {
  composer = "Johann Sebastian Bach"
  arranger = "Arrangement: Sven Buschke"
  title = "Komm, Gott Schöpfer, heiliger Geist"
  subtitle = "Orgelbüchlein No. 33"
  instrument = "Organ 2 man, 1 ped"

  opus = "BWV 631"
  tagline = ""
  copyright = \markup {"Arrangement:  Sven Buschke " \char ##x00A9 "25. Juli 2022"}
}

settings = {
  \key c \major
  \time 12/8
  \tempo 2 = 40
}

s_in = \relative c' {
  \settings
  \partial 4.
  g'4.-4
  a-5 g f g
  c d c\fermata c
  g a8. b c4. d
  e e d\fermata d
  e c a g
  b cis d\fermata g,
  c a f a
  g2. g4.\fermata
}

a_in = \relative c' {
  \settings
  \partial 4.
  r8 d16-2 c d8
  e-3 c f d b e c d16 c d8 b e16 d e8(
  e) f16 g a g f8 d g e4.\fermata r8 g16 f g8
  d b e c f16 e f8 g a16 g f e d8 g16 f g8(
  g) e g c16 b a g a fis( fis8) g16 fis g a b a g fis g8(
  g) g c g e g( g) f16\prall e f8( f) e16 d e8
  d g16 fis g8( g) g16 fis g8(( g)) f16 e f8 f e16 d e8(
  e) c f( f) e16 d e8( e) d16 cis d e f g f e d c
  b d g,8 c16 d e d e8. f16 d4.
}

t_in = \relative c {
  \settings
  \partial 4.
  r8 b'16 a b8
  c a d b g c a b16 a b8 g c16 b c8
  a16 g a b c8( c) b16\prall a b8 c\mordent g16 f g8 c, e'16 d e8
  b g c f, d'16 c d8 e e, a f d g
  c,16 e g f e d e8 c c'( c) b16\prall a b8 g b16 a b g
  c,8 c'16 b c8 e, c'16 b c8 f, a d b g c
  g16 a b c d b e g, a bes a g a8 d, d' b g c
  c,16 e f g a bes c d c bes a8( a16) d, f a bes8 a16 cis, d e f8(
  f) e16 d e f g8 c, c'\mordent( c) b16\prall a b8
}

pd_in = \relative c {
  \settings
  \partial 4.
  r8 r g'
  r r f r r e r r d r r e
  r r f r r g c,4.\fermata r8 r c
  r r e r r d r r c r r b
  r r c r r c, g'4.\fermata r8 r g
  r r c r r e r r f r r g
  r r g, r r e d4.\fermata r8 r e
  r r a r r cis r r d r r a
  r r c r r e g4.\fermata
}

sheetmusic = {
  <<
    \new PianoStaff \with {midiInstrument = "church organ"} {
      <<
        \new Staff = "up" {
          \clef treble
          <<
            \new Voice = "s"                            {
              \voiceOne
              \s_in
              \bar "|."
            }
            \new Voice = "a" {
              \voiceTwo
              \a_in
              \bar "|."
            }
          >>
        }
        \new Staff = "down" {
          \clef bass
          {
            \t_in
            \bar "|."
          }
        }
      >>
    }
    \new Staff = "ped" \with {midiInstrument = "church organ"} {
      \clef bass
      {
        \pd_in
        \bar "|."
      }
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
    "Octave 8'" "Gedackt 8'" "" "Prinzipalbass 16'" "POS/HW"
    "Octave 4'" "Praesant 4'" "" "Octavbass 8'"  ""
    "Doublette 2'" "Octave 2'" "" "Choralbass 4'" ""
    "Mixtur 4fach 2'" "Cymbal 4'" "" "Posaune 16'" ""
    "" "" "" "Zinke 8'" ""
  }
}
%\wordwrap-string {\bold Registrierung: " \bold "I. HW " "(C - g''): Octave 8', Octave 4', Doublette 2', Mixtur 4fach 2', II. RP (C - g''): Gedackt 8', Praestant 4', Octave 2', Cymbal 4fach 1', III. SW (C - g''): , PD (C - f'): Prinzipalbass 16', Octavbass 8', Choralbass 4', Posaune 16', Zinke 8', Spielhilfe: POS/HW"}

% midi count in
% midi count in
clave = {\new DrumStaff <<
  \drummode {\settings
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
        hh16 cl hh cl hh cl hh cl hh cl hh cl hh cl hh cl hh cl
    } \\ {
      bd4. sn4. bd4.
    } >>
  }
>>
}

\score {
  {
    %  \markuplist \box {
%    \clave
    \sheetmusic
  }
  \layout {}
}

\score {
  {
    \clave
    \sheetmusic
  }
  \midi {}
}