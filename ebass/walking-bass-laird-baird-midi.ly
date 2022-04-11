% Lily was here -- automatically converted by /usr/local/bin/midi2ly from walking-bass-laird-baird.midi
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
    
  \set Staff.instrumentName = "Laird Baird"
  
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] GNU LilyPond 2.22.0           
  
  \time 4/4 
  
  \tempo 4 = 152 
  \skip 1*36 
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  % [INSTRUMENT_NAME] bright acoustic
  \skip 1*36 
}

trackBchannelB = \relative c {
  <bes' d a' f >1 
  | % 2
  <a c g' e >2 <d, ges c a > 
  | % 3
  <g bes f' d > <c, e bes' g > 
  | % 4
  <f aes ees' c > <bes d aes' f > 
  | % 5
  <ees, g des' bes >1 
  | % 6
  <ees ges des' bes >2 <aes c ges' ees > 
  | % 7
  <d, f c' a > <g b f' d > 
  | % 8
  <des e b' aes > <ges bes e des > 
  | % 9
  <c, ees bes' g >1 
  | % 10
  <f a ees' c > 
  | % 11
  <bes d a' f >2 <g b f' d > 
  | % 12
  <c, ees bes' g > <f a ees' c > 
  | % 13
  <bes d a' f >1 
  | % 14
  <a c g' e >2 <d, ges c a > 
  | % 15
  <g bes f' d > <c, e bes' g > 
  | % 16
  <f aes ees' c > <bes d aes' f > 
  | % 17
  <ees, g des' bes >1 
  | % 18
  <ees ges des' bes >2 <aes c ges' ees > 
  | % 19
  <d, f c' a > <g b f' d > 
  | % 20
  <des e b' aes > <ges bes e des > 
  | % 21
  <c, ees bes' g >1 
  | % 22
  <f a ees' c > 
  | % 23
  <bes d a' f >2 <g b f' d > 
  | % 24
  <c, ees bes' g > <f a ees' c > 
  | % 25
  <bes d a' f >1 
  | % 26
  <a c g' e >2 <d, ges c a > 
  | % 27
  <g bes f' d > <c, e bes' g > 
  | % 28
  <f aes ees' c > <bes d aes' f > 
  | % 29
  <ees, g des' bes >1 
  | % 30
  <ees ges des' bes >2 <aes c ges' ees > 
  | % 31
  <d, f c' a > <g b f' d > 
  | % 32
  <des e b' aes > <ges bes e des > 
  | % 33
  <c, ees bes' g >1 
  | % 34
  <f a ees' c > 
  | % 35
  <bes d a' f >2 <g b f' d > 
  | % 36
  <c, ees bes' g > <f a ees' c > 
  | % 37
  
}

trackB = <<

  \clef bass
  
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
>>


trackCchannelA = {
  
  % [INSTRUMENT_NAME] acoustic bass
  

  \key bes \major
  \skip 1*36 
}

trackCchannelB = \relative c {
  bes4 d, bes d 
  | % 2
  a e' d a' 
  | % 3
  d, g a, d 
  | % 4
  f, f bes d 
  | % 5
  ees f g bes 
  | % 6
  ees, ees aes aes 
  | % 7
  d, d g g 
  | % 8
  des des ges ges 
  | % 9
  c, d ees e 
  | % 10
  f g g b 
  | % 11
  bes bes d d 
  | % 12
  c f, g a 
  | % 13
  bes f d bes 
  | % 14
  a e' a, d 
  | % 15
  g d des ges 
  | % 16
  f c' bes d, 
  | % 17
  ees g bes des 
  | % 18
  des g, bes des 
  | % 19
  c d g, d' 
  | % 20
  des ges, bes des 
  | % 21
  c d ees g, 
  | % 22
  f g g c 
  | % 23
  bes d aes des 
  | % 24
  c g f a, 
  | % 25
  bes d f g 
  | % 26
  a e a, d 
  | % 27
  g d des ges 
  | % 28
  f c' bes d, 
  | % 29
  ees f g bes 
  | % 30
  ees bes c ees 
  | % 31
  d f bes, f' 
  | % 32
  des ges, bes des 
  | % 33
  c g ees c 
  | % 34
  f a, f a 
  | % 35
  bes d g b, 
  | % 36
  c g' f a, 
  | % 37
  
}

trackC = <<

  \clef bass
  
  \context Voice = voiceA \trackCchannelA
  \context Voice = voiceB \trackCchannelB
>>


trackDchannelA = {
  
  % [INSTRUMENT_NAME] acoustic guitar (nylon)
  

  \key bes \major
  \skip 1*36 
}

trackDchannelB = \relative c {
  bes d, bes d 
  | % 2
  a e' d a' 
  | % 3
  d, g a, d 
  | % 4
  f, f bes d 
  | % 5
  ees f g bes 
  | % 6
  ees, ees aes aes 
  | % 7
  d, d g g 
  | % 8
  des des ges ges 
  | % 9
  c, d ees e 
  | % 10
  f g g b 
  | % 11
  bes bes d d 
  | % 12
  c f, g a 
  | % 13
  bes f d bes 
  | % 14
  a e' a, d 
  | % 15
  g d des ges 
  | % 16
  f c' bes d, 
  | % 17
  ees g bes des 
  | % 18
  des g, bes des 
  | % 19
  c d g, d' 
  | % 20
  des ges, bes des 
  | % 21
  c d ees g, 
  | % 22
  f g g c 
  | % 23
  bes d aes des 
  | % 24
  c g f a, 
  | % 25
  bes d f g 
  | % 26
  a e a, d 
  | % 27
  g d des ges 
  | % 28
  f c' bes d, 
  | % 29
  ees f g bes 
  | % 30
  ees bes c ees 
  | % 31
  d f bes, f' 
  | % 32
  des ges, bes des 
  | % 33
  c g ees c 
  | % 34
  f a, f a 
  | % 35
  bes d g b, 
  | % 36
  c g' f a, 
  | % 37
  
}

trackD = <<

  \clef bass
  
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
