\version "2.22.0"

\header {
  composer = "Johann Sebastian Bach"
  arranger = "Sven Buschke"
  title = "Komm, Gott Schöpfer, heiliger Geist"
  subtitle = "Orgelbüchlein No. 33"
  opus = "BWV 631"
  tagline = ""
  copyright = \markup {"Arrangement:  Sven Buschke " \char ##x00A9 "2022"}
}

settings = {
  \key c \major
  \time 12/8
  \tempo 4 = 90
}

s_in = \relative c' {\settings
  \partial 4.
  g'4.
 % a g f g
  %c d c c
  r4. r r r
  r4. r r r
  r4. r r r
  r4. r r r
  r4. r r r
  r4. r r r
  r4. r r r
  r4. r r

}

a_in = \relative c' {
  \settings
  \partial 4.
  r4.
 % r8 d16 c d8
  %e c f
  r4. r r r
  r4. r r r
  r4. r r r
  r4. r r r
  r4. r r r
  r4. r r r
  r4. r r r
  r4. r r
}

t_in = \relative c {
  \settings
  \partial 4.
  r4.
%  r8 b16 a b8
  %c
  r4. r r r
  r4. r r r
  r4. r r r
  r4. r r r
  r4. r r r
  r4. r r r
  r4. r r r
  r4. r r
}

pd_in = \relative c {
  \settings
  \partial 4.
  r4.
 % r8 r g'
 % r r f
  r4. r r r
  r4. r r r
  r4. r r r
  r4. r r r
  r4. r r r
  r4. r r r
  r4. r r r
  r4. r r


}

sheetmusic = {
  <<
    \new PianoStaff {
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
    \new Staff = "ped" {
      \clef bass
      {
        \pd_in
        \bar "|."
      }
    }
  >>
}

\score {
  \sheetmusic
  \layout {}
}

\score {
  \sheetmusic
  \midi {}
}