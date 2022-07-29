\version "2.22.0"

\header {
  composer = "Johann Sebastian Bach"
  arranger = "Arrangement: Sven Buschke"
  title = "Erstanden ist der heilge Christ"
  subtitle = "Orgelbüchlein No. 30"
  instrument = "Organ 2 man, 1 ped"

  opus = "BWV 628"
  tagline = ""
  copyright = \markup {"Arrangement:  Sven Buschke " \char ##x00A9 "25. Juli 2022"}
}

settings = {
  \key d \major
  \time 3/2
  \tempo 2 = 25
}

s_in = \relative c' {\settings
  \partial 2
  d'2-5
  d1-5 d2-5
  cis\finger "4-3"( cis4) d-4 e2-5
  d-5 cis-4 b
  a1\fermata a2
  b2. cis4 d2
  cis1 b2
  a1 g2
  fis1\fermata e2
  fis1 g2
  a1 g2
  fis1 e2 d1\fermata d2 e2. fis4 g2
  fis1 e2
  d b cis
  d1
  r8
}

a_in = \relative c' {
  \settings
  \partial 2
  r8 \override Fingering.color = #red a-3 b-2 cis-1 \revert Fingering.color
  d4-1 e-2 fis-3 g-1 a-2
  b-3 cis b-2 a2-1 r8 \override Fingering.color = #red cis,-4 d-3 e-2 \revert Fingering.color
  fis-2 e fis gis-3 a2.-1 gis4
  r8 fis e d cis4 e( e8) e d c
  b4 e g2 fis4 a(
  a) e a2. gis4(
  gis8) g fis e dis e dis cis b4 e(
  e2) dis r8 d cis b
  cis4 d e8 ais, b cis d2
  cis4 b cis d e2(
  e4) a, d cis8 b cis2(
  cis8) cis b ais b fis g a b2(
  b8) gis a b cis4 d e2(
  e8) a, b cis d4 d2 cis8 b
  a4 a2 d,4 g8 b a g
  fis g fis e d2 r8
}

t_in = \relative c {
  \settings
  \partial 2
  r2
  r8 a-4 b cis d cis-4 d e fis e-4 fis gis
  a e fis gis a gis a b cis2(
  cis4) b r8 a b cis d cis d e
  cis d cis b a b a g fis2
  r8 a g fis e g fis e d e fis gis
  a gis a b cis b cis dis eis fis eis dis
  cis4 c b b,4 e8 fis g a
  b ais b cis dis cis b a gis4 g
  r8 fis e d cis e d cis b cis d e
  fis e fis g a g a b cis a b cis
  d cis, d e fis e fis gis ais fis gis ais
  b4 fis b,8 d e fis g a g fis
  e4 fis8 gis a fis e d cis e d cis
  d fis g a b cis b a g b a g
  fis d e fis g a g fis e g fis e
  d b a g fis g fis e d\fermata
}

pd_in = \relative c {
  \settings
  \partial 2
  r2
  r2 r r4 d
  a'2 r r4 a,
  d2 r r4 e,
  a1\fermata r4 d
  g2 r r4 d
  a'2 r r4 cis,
  fis2 r r4 e, b'1\fermata r4 e
  ais,2 r r4 b
  fis2 r r4 a
  d,2 r r4 fis'
  b,1\fermata r4 g
  cis2 r r4 a
  d2 r r4 cis
  fis,2 r r4 a
  d,1 r8
}

sheetmusic = {
  <<
%    \new PianoStaff  \with {midiInstrument = "church organ"} {
     \new PianoStaff  \with {midiInstrument = "acoustic grand"} {
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
%    \new Staff = "ped"  \with {midiInstrument = "church organ"} {
    \new Staff = "ped"  \with {midiInstrument = "trumpet"} {
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
      "" "Gedackt 8'" "" "Subbass 16'" ""
      "" "Prästant 4'" "" "Choralbass 4'"  ""
      "" "Octave 2'" "" "Zinke 8'" ""
     "" "Cymbal 4fach 1'" "" "" ""
    }
}

% midi count in
clave = {\new DrumStaff <<
  \drummode {\settings
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
      \repeat unfold 16 hh16
    } \\ {
      bd4 sn4 bd4 sn4
    } >>
  }
>>
}

%claveOld = {
 %       \new DrumStaff {
%            \drummode {\settings
%                sn2 cl
%            }
%        }
%}

\score {{
%  \clave
  \sheetmusic
        }
  \layout {}
}

\score {{
  \clave
  \sheetmusic
        }
  \midi {}
}