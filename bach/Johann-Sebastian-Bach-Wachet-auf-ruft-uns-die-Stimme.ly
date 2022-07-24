\version "2.22.0"

\header {
  composer = "Johann Sebastian Bach"
  title = "Wachet auf, ruft uns die Stimme"
  subtitle = "Schuebler-Chorale"
  opus = "BWV 645"
  tagline = ""
}

settings = {
  \key es \major
}

dex_int = \relative c' {
  \settings
  \partial 8
  bes8 %0
  es16( f g8) g( f) as( g) bes,( as)%1
}

dex_one = \relative c' {
  g'16 es f8 as, g d' es r bes%2
  es16 f g8 g f as g bes, as%3
  g'16 es f8 as, g d' es r bes'%4
  bes4 as16 g f es f es d c bes8 c16 d%5
  es f g f as g f es g8 f r bes,%6
  g' a4 bes8 es,16 d es8 r c%7
  a' bes4 c8 es,16 d es8 r es'%8
  d16 c bes8 bes16 a bes8 bes16 a g f es d c bes%9
  c d es8 es16 d es8 es16 a bes c bes a g f%10
  bes8 f d c16 bes bes es d c d8 bes%11
  g8. a16 a8. g32 a bes4 r8 bes%12
  es16 f g8 g f as g bes, as%13
  g'16 es f8 as, g d' es r bes%14
  es16 f g8 g f as g bes, as%15
  g'16 es f8 as, g d' es r f%16
  g a4 bes8 es,16 d es8 r es%17
  a bes4 c8 f,16 es f8 r4%18
  r r8 bes bes4 as16 g f es%19
  f es d c bes8 c16 d es f g f as g f es%20
}

dex_one_alt_one = \relative c' {
  bes'8 as r4 r r8 bes,%21
  es16 f g8 g f as g bes, as%22
}

dex_one_alt_two = \relative c' {
  g' f r4 r r8 bes%22
}

dex_two = \relative c' {
  bes'4 as16 g f es f es d c bes8 c16 d%24
  es f g f as g f es g8 f r bes,%25
  g' a4 bes8 es,16 d es8 r c%26
  r1 %27
  r1 %28
  r1 %27
  r1 %28
  r1 %29
  r1 %30
  r1 %31
  r1 %32
  r1 %33
  r1 %34
  r1 %35
  r1 %36
  r1 %37
  r1 %38
  r1 %39
  r1 %40
  r1 %41
  r1 %42
  r1 %43
  r1 %44
  r1 %45
  r1 %46
  r1 %47
  r1 %48
  r1 %49
  r1 %50
  r1 %51
  r1 %52
  r1 %53
}

sin_int = \relative c {
  \settings
  \partial 8
  r8 %0
  r1 %1
}

sin_one = \relative c, {
  r1%2
  r1%3
  r1%4
  r1%5
  r1%6
  r1%7
  r1%8
  r1%9
  r1%10
  r1%11
  r1%12
  r1%13
  r1%14
  r1%15
  r1%16
  r1%17
  r1%18
  r1%19
  r1%20
}

sin_one_alt_one = \relative c, {
  r1 %21
  r1 %22
}

sin_one_alt_two = \relative c, {
  r1 %21
}

sin_two = \relative c, {
  r1 %22
  r1 %23
  r1 %24
  r1 %25
  r1 %26
  r1 %27
  r1 %28
  r1 %29
  r1 %30
  r1 %31
  r1 %32
  r1 %33
  r1 %34
  r1 %35
  r1 %36
  r1 %37
  r1 %38
  r1 %39
  r1 %40
  r1 %41
  r1 %42
  r1 %43
  r1 %44
  r1 %45
  r1 %46
  r1 %47
  r1 %48
  r1 %49
  r1 %50
  r1 %51
  r1 %52
  r1 %53
}

ped_int = \relative c, {
  \settings
  \partial 8
  r8 %0
  es4 es es g %1
}

ped_one = \relative c, {
  as'4 bes es, r4%2
  es es es g %3
  as bes es, r%4
  g c bes as%5
  g es bes' d %6
  es d c es%7
  f g a f%8
  bes a g f%9
  es d c es%10
  d8 bes f' f, g a bes d,%11
  es c f4 bes8 c bes as%12
  g f es d c4 c'%13
  g bes es, g%14
  as as' d, es%15
  c d es d%16
  c g c8 d es4(%17
  es8) d g, a bes d, es f%18
  bes a bes c d bes es4%19
  bes as g es%20
}

ped_one_alt_one = \relative c, {
  as'8 bes c4 f, bes8 as%21
  g4 es' d es%22
}

ped_one_alt_two = \relative c, {
  as'8 bes c4 f, bes8 as %21
}

ped_two = \relative c, {
  g'4 c bes as%24
  g es bes' d%25
  es d c es%26
  f g a f%27
  bes a g%28
  f es d c es%29
  d8 bes f' f, g a bes d,%30
  es c f4 bes8 c bes as%31
  g f es d es g as bes%32
  c d es4 bes as%33
  g es bes'8 c d bes%34
  es d c b c g' c bes%35
  as4 es f g%36
  as8 g f e f es d c%37
  b g g' f es4 c%38
  g' b c bes%39
  a c, d es%40
  ges, d g f%41
  es' d c bes%42
  a c bes8 g d' d,%43
  g es f g as g as bes%44
  c bes c d es4 c%45
  as bes c8 bes c d%46
  es d es f g f g as%47
  d, bes bes' as g4 es%48
  bes'8 as g4 as g%49
  f es f bes,%50
  c as bes g%51
  as8 g f es d4 f%52
  bes8 c bes as g c as bes%53
  c d es g as f bes bes,%54
  es1%55
}

sheetmusic = {
  <<
    \new PianoStaff {
      <<
        \new Staff = "dex"  {
          \clef treble
          \dex_int
          \repeat volta 2 {\dex_one}
          \alternative { { \dex_one_alt_one } { \dex_one_alt_two } }
          \dex_two
          \bar "|."
        }
        \new Staff = "sin" {
          \clef bass
          \sin_int
          \repeat volta 2 {\sin_one}
          \alternative { { \sin_one_alt_one } { \sin_one_alt_two } }
          \sin_two
          \bar "|."
        }
      >>
    }
    \new Staff = "ped" {
      \clef bass
      \ped_int
      \repeat volta 2 {\ped_one}
      \alternative { { \ped_one_alt_one } { \ped_one_alt_two } }
      \ped_two
      \bar "|."
    }
  >>
}

sheetmusicmidi = {
  <<
    \new PianoStaff {
      <<
        \new Staff = "dex"  {
          \clef treble
          \dex_int
          \repeat unfold 2 {\dex_one}
          \alternative { { \dex_one_alt_one } { \dex_one_alt_two } }
          \dex_two
          \bar "|."
        }
        \new Staff = "sin" {
          \clef bass
          \sin_int
          \repeat unfold 2 {\sin_one}
          \alternative { { \sin_one_alt_one } { \sin_one_alt_two } }
          \sin_two
          \bar "|."
        }
      >>
    }
    \new Staff = "ped" {
      \clef bass
      \ped_int
      \repeat unfold 2 {\ped_one}
      \alternative { { \ped_one_alt_one } { \ped_one_alt_two } }
      \ped_two
      \bar "|."
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

