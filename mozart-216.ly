\language "deutsch"
\header {
  title = "Violinkonzert Nr. 3"
  subtitle = "G-Dur"
  subsubtitle = "2. Satz"
  opus = "Op. 216"
  composer = "Wolfgang Amadeus Mozart"
  copyright = ""
  tagline = ""
}

global = {
  \key d \major
  \time 4/4
  \tempo "Adagio" 8 = 80
}

preambleUp = {\clef treble \global}
preambleDown = {\clef bass \global}

violinsolo = \relative c' {\global
                      \partial 8 a'8-5_I
                      fis8-3( a-5 d-5 fis-2) e16( d) d4 \appoggiatura e32 d16 cis32 h |
                      h16( a) a4 \tupletDown \tuplet 3/2 { a16-5( h-1 g-4) } g4( fis8) d' |
                      \appoggiatura cis16 h8 h \appoggiatura h16 a8 a gis4( g) |
                      fis r r r8 a' |
                      fis( a d fis) e16( d) d4 d16 cis32( h) |
                      a8
}

soprano = \relative c' {
  \global
  c
}

alto = \relative c' {
  \global
  c
}

tenor = \relative c' {
  \global
  c
}

bass = \relative c' {
  \global
  c
}

violinstaff = {
  \new Staff = 'solo' {\preambleUp \violinsolo
}

pianoexcerpt = {
  \new PianoStaff <<
    %\set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \relative c' {\preambleUp
  <<
  \new Voice = "s" { \voiceOne \soprano }
  \\
  \new Voice ="a" { \voiceTwo \alto }
  >>
}
    \new Staff = "lower" \relative c {\preambleDown
  <<
   \new Voice = "t" { \voiceThree \tenor }
    \\
   \new Voice = "b" { \voiceFour \bass }
  >>
}
  >>
}

\score {
  <<
  \violinstaff
  \\
  \pianoexcerpt
  >>
  \layout {}
  \midi {}
}