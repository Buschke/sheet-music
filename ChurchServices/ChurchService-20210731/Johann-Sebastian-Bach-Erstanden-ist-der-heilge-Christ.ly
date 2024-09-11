\version "2.22.0"

\header {
  composer = "Johann Sebastian Bach"
  arranger = "Sven Buschke"
  title = "Erstanden ist der heilge Christ"
  subtitle = "Orgelbüchlein No. 30"
  opus = "BWV 628"
  tagline = ""
  copyright = \markup {"Arrangement:  Sven Buschke " \char ##x00A9 "2022"}
}

settings = {
  \key bes \major
  \time 4/4
  \tempo 4 = 90
}

s_in = \relative c {
  \settings
  r
}

s_one = \relative c' {
}

s_alt_one = \relative c' {
}

s_alt_two = \relative c' {
}

s_two = \relative c' {
}

a_in = \relative c {
  \settings
  r
}

a_one = \relative c' {
}

a_alt_one = \relative c' {
}

a_alt_two = \relative c' {
}

a_two = \relative c' {
}

t_in = \relative c {
  \settings
  r
}

t_one = \relative c' {
}

t_alt_one = \relative c' {
}

t_alt_two = \relative c' {
}

t_two = \relative c' {
}

pd_in = \relative c {
  \settings
  r
}

pd_one = \relative c' {
}

pd_alt_one = \relative c' {
}

pd_alt_two = \relative c' {
}

pd_two = \relative c' {
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
              \repeat volta 2 { \s_one }
              \alternative { { \s_alt_one } { \s_alt_two } }
              \s_two
              \bar "|."
            }
            \new Voice = "a" {
              \voiceTwo
              \a_in
              \repeat volta 2 { \a_one }
              \alternative { { \a_alt_one } { \a_alt_two } }
              \a_two
              \bar "|."
            }
          >>
        }
        \new Staff = "down" {
          \clef bass
          {
            \t_in
            \repeat volta 2 { \t_one }
            \alternative { { \t_alt_one } { \t_alt_two } }
            \t_two
            \bar "|."
          }
        }
      >>
    }
    \new Staff = "ped" {
      \clef bass
      {
        \pd_in
        \repeat volta 2 { \pd_one }
        \alternative { { \pd_alt_one } { \pd_alt_two } }
        \pd_two
        \bar "|."
      }
    }
  >>
}

sheetmusicmidi = {
  <<
    \new PianoStaff {
      <<
        \new Staff = "up" {
          \clef treble
          <<
            \new Voice = "s"                            {
              \voiceOne
              \s_in
              \repeat unfold 2 { \s_one }
              \alternative { { \s_alt_one } { \s_alt_two } }
              \s_two
              \bar "|."
            }
            \new Voice = "a" {
              \voiceTwo
              \a_in
              \repeat unfold 2 { \a_one }
              \alternative { { \a_alt_one } { \a_alt_two } }
              \a_two
              \bar "|."
            }
          >>
        }
        \new Staff = "down" {
          \clef bass
          {
            \t_in
            \repeat unfold 2 { \t_one }
            \alternative { { \t_alt_one } { \t_alt_two } }
            \t_two
            \bar "|."
          }
        }
      >>
    }
    \new Staff = "ped" {
      \clef bass
      {
        \pd_in
        \repeat unfold 2 { \pd_one }
        \alternative { { \pd_alt_one } { \pd_alt_two } }
        \pd_two
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
  \sheetmusicmidi
  \midi {}
}