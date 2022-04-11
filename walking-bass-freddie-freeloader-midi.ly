% Lily was here -- automatically converted by /usr/local/bin/midi2ly from walking-bass-freddie-freeloader.midi
\version "2.14.0"

\layout {
  \context {
    \Voice
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  }
}

trackAchannelA = {


  \key bes \major

  \set Staff.instrumentName = "Freddie Freeloader"

  % [TEXT_EVENT] creator:

  % [TEXT_EVENT] GNU LilyPond 2.22.0

  \time 4/4

  \tempo 4 = 130
  \skip 1*48
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {

  % [INSTRUMENT_NAME] bright acoustic
  \skip 1*48
}

trackBchannelB = \relative c {
  <bes' d aes' f >1
  | % 2
  <bes d aes' f >
  | % 3
  <bes d aes' f >
  | % 4
  <bes d aes' f >
  | % 5
  <ees, g des' bes >
  | % 6
  <ees g des' bes >
  | % 7
  <bes' d aes' f >
  | % 8
  <bes d aes' f >
  | % 9
  <f a ees' c >
  | % 10
  <ees g des' bes >
  | % 11
  <aes c ges' ees >
  | % 12
  <aes c ges' ees >
  | % 13
  <bes d aes' f >
  | % 14
  <bes d aes' f >
  | % 15
  <bes d aes' f >
  | % 16
  <bes d aes' f >
  | % 17
  <ees, g des' bes >
  | % 18
  <ees g des' bes >
  | % 19
  <bes' d aes' f >
  | % 20
  <bes d aes' f >
  | % 21
  <f a ees' c >
  | % 22
  <ees g des' bes >
  | % 23
  <bes' d aes' f >
  | % 24
  <bes d aes' f >
  | % 25
  <bes d aes' f >
  | % 26
  <bes d aes' f >
  | % 27
  <bes d aes' f >
  | % 28
  <bes d aes' f >
  | % 29
  <ees, g des' bes >
  | % 30
  <ees g des' bes >
  | % 31
  <bes' d aes' f >
  | % 32
  <bes d aes' f >
  | % 33
  <f a ees' c >
  | % 34
  <ees g des' bes >
  | % 35
  <aes c ges' ees >
  | % 36
  <aes c ges' ees >
  | % 37
  <bes d aes' f >
  | % 38
  <bes d aes' f >
  | % 39
  <bes d aes' f >
  | % 40
  <bes d aes' f >
  | % 41
  <ees, g des' bes >
  | % 42
  <ees g des' bes >
  | % 43
  <bes' d aes' f >
  | % 44
  <bes d aes' f >
  | % 45
  <f a ees' c >
  | % 46
  <ees g des' bes >
  | % 47
  <bes' d aes' f >
  | % 48
  <bes d aes' f >
  | % 49

}

trackB = <<
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
>>


trackCchannelA = {

  % [INSTRUMENT_NAME] acoustic bass


  \key bes \major
  \skip 1*48
}

trackCchannelB = \relative c {
  bes,4 d bes' a
  | % 2
  aes g c, b
  | % 3
  bes aes g ges
  | % 4
  f bes d f
  | % 5
  ees bes' c b
  | % 6
  bes g aes a
  | % 7
  bes aes aes g
  | % 8
  f e ees des
  | % 9
  c b bes a
  | % 10
  bes f'8 bes ees,4 g8 bes
  | % 11
  aes4 bes c g
  | % 12
  f des c a
  | % 13
  bes f' aes bes
  | % 14
  c b bes d
  | % 15
  ees d ees des
  | % 16
  d aes bes f
  | % 17
  g bes ees d
  | % 18
  c b bes g
  | % 19
  f ees d c
  | % 20
  bes aes g d'
  | % 21
  c g' f a,
  | % 22
  bes f' ees bes'
  | % 23
  aes bes c ges
  | % 24
  f d c b
  | % 25
  bes d' ees d
  | % 26
  bes f c f
  | % 27
  bes, f' d' ees
  | % 28
  d aes bes ees,
  | % 29
  ees bes' ees des
  | % 30
  g, bes ees, e
  | % 31
  f g aes a
  | % 32
  bes aes d, g
  | % 33
  c, b bes a
  | % 34
  bes' b c g
  | % 35
  aes c, des d
  | % 36
  ees aes a f
  | % 37
  bes d ees e
  | % 38
  f g aes g
  | % 39
  f e ees des
  | % 40
  d ees d bes
  | % 41
  ees des c b
  | % 42
  bes g f ees
  | % 43
  d c bes aes
  | % 44
  g des' f4*128/384 f f f f f
  | % 45
  c4 g' f a,
  | % 46
  bes f' ees bes'
  | % 47
  aes ees c ees
  | % 48
  f g aes a
  | % 49

}

trackC = <<

  \clef "bass_8"

  \context Voice = voiceA \trackCchannelA
  \context Voice = voiceB \trackCchannelB
>>


trackDchannelA = {

  % [INSTRUMENT_NAME] acoustic guitar (nylon)


  \key bes \major
  \skip 1*48
}

trackDchannelB = \relative c {
  bes, d bes' a
  | % 2
  aes g c, b
  | % 3
  bes aes g ges
  | % 4
  f bes d f
  | % 5
  ees bes' c b
  | % 6
  bes g aes a
  | % 7
  bes aes aes g
  | % 8
  f e ees des
  | % 9
  c b bes a
  | % 10
  bes f'8 bes ees,4 g8 bes
  | % 11
  aes4 bes c g
  | % 12
  f des c a
  | % 13
  bes f' aes bes
  | % 14
  c b bes d
  | % 15
  ees d ees des
  | % 16
  d aes bes f
  | % 17
  g bes ees d
  | % 18
  c b bes g
  | % 19
  f ees d c
  | % 20
  bes aes g d'
  | % 21
  c g' f a,
  | % 22
  bes f' ees bes'
  | % 23
  aes bes c ges
  | % 24
  f d c b
  | % 25
  bes d' ees d
  | % 26
  bes f c f
  | % 27
  bes, f' d' ees
  | % 28
  d aes bes ees,
  | % 29
  ees bes' ees des
  | % 30
  g, bes ees, e
  | % 31
  f g aes a
  | % 32
  bes aes d, g
  | % 33
  c, b bes a
  | % 34
  bes' b c g
  | % 35
  aes c, des d
  | % 36
  ees aes a f
  | % 37
  bes d ees e
  | % 38
  f g aes g
  | % 39
  f e ees des
  | % 40
  d ees d bes
  | % 41
  ees des c b
  | % 42
  bes g f ees
  | % 43
  d c bes aes
  | % 44
  g des' f4*128/384 f f f f f
  | % 45
  c4 g' f a,
  | % 46
  bes f' ees bes'
  | % 47
  aes ees c ees
  | % 48
  f g aes a
  | % 49

}

trackD = <<

  \clef "bass_8"

  \context Voice = voiceA \trackDchannelA
  \context Voice = voiceB \trackDchannelB
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
    \context Staff=trackC \trackA
    \context Staff=trackC \trackC
    \context Staff=trackD \trackA
    \context Staff=trackD \trackD
  >>
  \layout {}
  \midi {}
}
