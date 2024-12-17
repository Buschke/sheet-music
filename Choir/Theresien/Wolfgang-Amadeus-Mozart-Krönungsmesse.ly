\version "2.24.4"

\header {
  title = "Krönungsmesse"
  composer = "Wolfgang Amadeus Mozart"
  opus = "K. 317"
}

tenorVoice = \relative c' {
  \clef tenor
  \key c \major
  \time 4/4

  % Hier beginnt der Tenorpart
  g4 g g g | a4. a8 a4 a | b4 b b b | c4. c8 c4 c |
  d4 d d d | e4. e8 e4 e | f4 f f f | g4. g8 g4 g |
  
}

textTenor = \lyricmode {
  % Hier beginnt der Text
  Ky -- ri -- e e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son.
}

\score {
  \new Staff \with {
    instrumentName = "Tenor"
  } <<
    \new Voice = "tenor" \tenorVoice
    \new Lyrics \lyricsto "tenor" \textTenor
  >>
}

