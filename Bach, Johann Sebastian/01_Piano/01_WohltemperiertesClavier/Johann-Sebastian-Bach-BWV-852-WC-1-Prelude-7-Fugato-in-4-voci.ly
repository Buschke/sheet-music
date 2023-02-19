%\version "2.22.2"
%\language "deutsch"

\header {
  title = "WC 1 - Prelude 7 - Fugato in 4 voci"
  subtitle = "Es-Dur, Wohltemperiertes Clavier 1"
  composer = "Johann Sebastian Bach"
  opus = "BWV 852"
  copyright = "Public Domain"
  tagline = ""
}

global = {
  \key es \major
  \time 4/4
  \tempo 4 = 100}


preambleUp = {\clef treble \global}
preambleDown = {\clef bass \global}

soprano = \relative c'' {
  \global
  
  r2 des~ | % m. 1
  des16 c des es des c bes as f'2~ | % m. 2
  f16 d! es f es d c bes as'2~ | % m. 3
  as16 f g as g f es d g2~ | % m. 4
  g16 es f g f es d c c'2~ | % m. 5
  c16 a! bes c bes a g f bes a g f es d c bes | % m. 6
  es2~ es16 es f g f es d c | % m. 7
  d32 c d es d c bes a! bes a bes c bes as g f g f g as g f es d es d es f es d c bes | % m. 8
  r32 c d es f g a! bes c a f g a bes c d es8~ es32 f64 es d32 es es8. d16 \bar "||" | % m. 9
  d4 r r2 | % m. 10
  R1 | % m. 11
  r4 bes es2 | % m. 12
  d4 es2 as4~ | % m. 13
  as4 g2 f8 es | % m. 14
  d4 es2 d4 | % m. 15
  e!4 f2 es4 | % m. 16
  d4 g2 f4~ | % m. 17
  f4 es2 d4~ | % m. 18
  d4 c8 bes a!4 bes~ | % m. 19
  bes4 es2 d4 | % m. 20
  c2 bes | % m. 21
  as2 g~ | % m. 22
  g4 f8 es d!2 | % m. 23
  es2. d8 c | % m. 24
  d4 r r2 | % m. 25
  r2 r16 as' bes c bes as g f | % m. 26
  g16 es' f g f es d c bes8 c16 d es d c bes | % m. 27
  as16 g f es as8 as as4 g~ | % m. 28
  g4 a! bes8 c d4~ | % m. 29
  d4 d16 d c bes a!8 bes16 c d4~ | % m. 30
  d~ d16 c d es f4 r | % m. 31
  r16 f g as! g f es d es2~ | % m. 32
  es16 es f g f es d c d2~ | % m. 33
  d4 c~ c8 bes a!4 | % m. 34
  g4 r f bes~ | % m. 35
  bes as des2~ | % m. 36
  des16 bes c des c bes as g f2~ | % m. 37
  f4 e! f c'~ | % m. 38
  c4 b! es2~ | % m. 39
  es16 es f g f es d c b! f' g as g f es d | % m. 40
  c16 b! c d d8. c16 c4 r | % m. 41
  r16 bes c des c bes as g f8 g16 as bes as g f | % m. 42
  es16 d c bes es'8 es es4 d | % m. 43
  g2. f4 | % m. 44
  b,!4 c8 d es e! f g | % m. 45
  as2~ as16 as bes c bes as g f | % m. 46
  es2 bes~ | % m. 47
  bes4~ bes16 as bes c f,4 f | % m. 48
  es2 d4 r | % m. 49
  as'2~ as16 f g as g f es d | % m. 50
  c4~ c16 c d es f4~ f16 es f g | % m. 51
  as2~ as8 g as bes | % m. 52
  c4~ c16 es d c b!8 c16 d es d c bes | % m. 53
  as16 g f es d d' es f b,!8 c16 d c bes as g | % m. 54
  c2~ c8 d e!4 | % m. 55
  f16 c des es des c bes as g4 r | % m. 56
  r16 as' bes c bes as g f as g f es as4~ | % m. 57
  as4 g! as8 es as4~ | % m. 58
  as4 g c2 | % m. 59
  bes4~ bes16 bes as g f8 g16 as g f es d | % m. 60
  es8 f16 g as8 as~ as16 g as bes as g f es | % m. 61
  f8 g16 as bes as g f es d c bes es8 es | % m. 62
  es4 r16 d es f bes,2~ | % m. 63
  bes4 as2 g4 | % m. 64
  c2 bes4 es~ | % m. 65
  es4 d ges2 | % m. 66
  f4 es~ es d | % m. 67
  es2 d!4 des~ | % m. 68
  des16 bes c des c bes c as d!2 | % m. 69
  es1 \fermata \bar "|." | % m. 70
  
}

alto = \relative c'' {
  \global
  
  r16 g16 as bes as g f es~ es2~ | % m. 1
  es8 r r4 as2~ | % m. 2
  as8 r r4 bes2~ | % m. 3
  bes8 r r4 es2~ | % m. 4
  es16 r r8 r4 c2 | % m. 5
  d8 r r4 r2 | % m. 6
  R1 | % m. 7
  R1 | % m. 8
  r2 c \bar "||" | % m. 9
  f,4 r r2 | % m. 10
  r2 es4 as~ | % m. 11
  as4 g2 f4~ | % m. 12
  f4 g2 c4 | % m. 13
  bes2 c | % m. 14
  bes2~ bes4. as8 | % m. 15
  g4 c b! c8 bes | % m. 16
  as4 bes as2~ | % m. 17
  as4 g f g8 as | % m. 18
  g2 f~ | % m. 19
  f4 es16 d' c bes a!4 bes~ | % m. 20
  bes4 as!2 g4~ | % m. 21
  g4 f2 es8 des | % m. 22
  c2. bes4~ | % m. 23
  bes4 a! bes2~ | % m. 24
  bes16 bes' c d c bes a! g f8 g16 a bes a g f | % m. 25
  es16 d c bes es8 es es4 d | % m. 26
  es4 r r2 | % m. 27
  R1 | % m. 28
  R1 | % m. 29
  bes4 es2 d4 | % m. 30
  g2 r16 a! bes c bes a g f | % m. 31
  bes2~ bes16 bes c d c bes a! g | % m. 32
  a!2~ a8 d, g f | % m. 33
  es2 d4 c | % m. 34
  bes4 es2 d4 | % m. 35
  g4 f~ f16 f g as g f e! f | % m. 36
  e!2 r16 es des c bes4~ | % m. 37
  bes16 bes c des c bes as g as4 r | % m. 38
  r16 f' g as g f es d c g' as bes! as g f es | % m. 39
  f2 d4 es~ | % m. 40
  es8 as g f es4 as~ | % m. 41
  as4 g c bes~ | % m. 42
  bes1~ | % m. 43
  bes2~ bes16 bes c des c bes as g | % m. 44
  f4 g8 b! c4 d8 e! | % m. 45
  f16 es f g f es d c d2~ | % m. 46
  d16 bes c des c bes as g f8 g16 as bes as g f | % m. 47
  es16 d c bes es8 es es4 d | % m. 48
  c2 r16 f g as g f es d | % m. 49
  c8 d16 es f es d c bes as g f bes8 bes | % m. 50
  bes16 g a! bes a4~ a16 a b! c b4~ | % m. 51
  b8 b! c d es2~ | % m. 52
  es16 es f g f4 g2 | % m. 53
  r2 d4 g~ | % m. 54
  g4 f bes2~ | % m. 55
  bes8 as des4~ des c | % m. 56
  f2 es4~ es16 es f ges | % m. 57
  f16 es des c bes4 r16 bes c des c bes as g | % m. 58
  f8 g16 as bes as g f es8 f16 g as8 \tieDashed as~ \tieSolid | % m. 59
  as16 g as bes c2 bes4 | % m. 60
  es2 d4 es | % m. 61
  c4 r r r16 g as bes | % m. 62
  as16 g f es f4~ f16 f g as g f es des | % m. 63
  c4 f2 es4 | % m. 64
  as2. g4 | % m. 65
  f4 bes2 a!4 | % m. 66
  d4 bes bes4. as8 | % m. 67
  g16 bes c des c bes as g f8 g16 as bes as g f | % m. 68
  es4 as~ as16 as bes ces bes as g as32 f | % m. 69
  g1 \fermata \bar "|." | % m. 70
  
}

tenor = \relative c' {
  \global
  
  r2 r16 g as bes as g f es | % m. 1
  as2~ as16 as bes c bes as g f | % m. 2
  \clef treble d'2~ d16 d es f es d c bes | % m. 3
  es2~ es16 es f g f es d c | % m. 4
  bes c d es d c bes as \clef bass g es f g f es d c | % m. 5
  f16 c d es d c bes a! d bes c d c bes a g | % m. 6
  r16 es' f g f es d c a'!2| % m. 7
  bes1 | % m. 8
  a!1 \bar "||" | % m. 9
  \clef treble bes4 es2 d4 | % m. 10
  c2 bes4 c | % m. 11
  d4 es des c | % m. 12
  bes2 es | % m. 13
  f4 es2 as4~ | % m. 14
  as4 g f2 | % m. 15
  c2 d4 es | % m. 16
  f8 es d4 es f | % m. 17
  bes,2 bes~ | % m. 18
  bes4 es8 d c4 d8 c | % m. 19
  bes8 a? bes4 c d8 es | % m. 20
  f4. es8 d bes es4~ | % m. 21
  es4 bes2.~ | % m. 22
  bes4 \clef bass as8 g f4 g8 f | % m. 23
  es4. f8 g4 f8 es | % m. 24
  f4 r r2 | % m. 25
  R1 | % m. 26
  es4 a2 g4 | % m. 27
  c2 bes4~ bes16 \clef treble d es f | % m. 28
  es16 d c bes es8 c f4~ f16 f g as! | % m. 29
  g16 f es d g4 f2~ | % m. 30
  f4 es8 d c4 d~ | % m. 31
  d16 d es f es d c bes c2~ | % m. 32
  c2~ c4 \clef bass bes~ | % m. 33
  bes16 g a! bes a g fis g fis8 g4 fis8 | % m. 34
  r16 g as! bes as g f es bes'4 r| % m. 35
  r16 bes c des c bes as g as8 bes16 c bes8 as | % m. 36
  g4 as2~ as16 as g f | % m. 37
  g2 f4 r | % m. 38
  d4 g2 es4 | % m. 39
  as2 g4 c~ | % m. 40
  c4. b!8 c4 r | % m. 41
  \clef treble bes4 es2 d4 | % m. 42
  g2 f~ | % m. 43
  f16 bes, c des c bes as g c2 | % m. 44
  d4 es8 f g g as bes! | % m. 45
  c4 r r2 | % m. 46
  \clef bass es,,4 as2 g4 | % m. 47
  c2~ c16 a! bes c bes as g f | % m. 48
  ges4 f f r | % m. 49
  R1 | % m. 50
  R1 | % m. 51
  R1 | % m. 52
  c4 f2 es4 | % m. 53
  as2 g | % m. 54
  r16 c des es des c bes as g2 | % m. 55
  r4 r16 as bes c bes as g f g8 r | % m. 56
  R1 | % m. 57
  r4 r16 bes c des c4 r | % m. 58
  r16 d! es f es4 r16 c des es des c bes as | % m. 59
  es'2 d! | % m. 60
  r16 c des es des c bes as bes2 | % m. 61
  as4 r16 f g as bes4 r16 bes c des | % m. 62
  c16 bes as g as4~ as8 g16 f g4~ | % m. 63
  g16 es f g f es d c bes as' bes c bes as g f | % m. 64
  es4 r r2 | % m. 65
  r16 \clef treble c' d es f as g f es f es d c es d c | % m. 66
  as'!4 g f2 | % m. 67
  \clef bass es,4 as2 g4 | % m. 68
  c2 ces | % m. 69
  bes1 \fermata \bar "|." | % m. 70
   
}

bass = \relative c {
  \global
  es1~ | % m. 1
  es1~ | % m. 2
  es2 r | % m. 3
  R1 | % m. 4
  R1 | % m. 5
  R1 | % m. 6
  c1 | % m. 7
  bes1~ | % m. 8
  bes1~ \bar "||" | % m. 9
  bes4 r f' bes~ | % m. 10
  bes4 as g2 | % m. 11
  f4 es2 as4~ | % m. 12
  as4 g c2 | % m. 13
  d4 es as,2 | % m. 14
  bes1~ | % m. 15
  bes4 as g c~ | % m. 16
  c4 bes c d | % m. 17
  g,4. as8 bes4 bes, | % m. 18
  es2. d4 | % m. 19
  g2 f~ | % m. 20
  f2 g4~ g16 f es d | % m. 21
  c4 d es~ es16 des c bes | % m. 22
  as2 bes | % m. 23
  c2 bes~ | % m. 24
  bes4 es2 d4 | % m. 25
  g2 f | % m. 26
  es4. f8 g f es d | % m. 27
  c16 es f g f es d c es d c bes es8 d | % m. 28
  c4~ c16 c d es d c bes a! bes8 bes' | % m. 29
  es,2 r16 f g a! bes a g f | % m. 30
  es16 d c bes es8 es es4 d | % m. 31
  g2~ g16 g a! bes a g f es | % m. 32
  f2 r16 fis g a! g f! es d | % m. 33
  c2 d | % m. 34
  g,4 r r16 d' es f es d c bes | % m. 35
  e!4 f2 bes,4 | % m. 36
  c2 des | % m. 37
  c2 r16 f, g as g f es d | % m. 38
  g2 c | % m. 39
  f2. es4 | % m. 40
  as8 f g4 r16 c, des es des c bes! as | % m. 41
  es'2 as | % m. 42
  g4~ g16 f g as bes as bes c bes as g f | % m. 43
  e!2 as~ | % m. 44
  as16 f g as g f es d c bes c des c bes as g | % m. 45
  f4 bes2 g4 | % m. 46
  c2 d8 bes es d | % m. 47
  c4. bes8 a!4 bes~ | % m. 48
  bes16 a! bes c bes a g! f bes4 es~ | % m. 49
  es4 d g~ g8 f | % m. 50
  e!4 f8 es d2~ | % m. 51
  d16 d es f es d c b! c b c d c bes as g | % m. 52
  as2 r16 g a! b! c4~ | % m. 53
  c16 c d es f8 f f4 es | % m. 54
  as2 r16 e! f g f e d c | % m. 55
  f2. es16 c des es | % m. 56
  des16 c bes as des8 des des4 c | % m. 57
  des4 es as f | % m. 58
  bes8 r r4 r2 | % m. 59
  R1 | % m. 60
  r2 bes,4 es4~ | % m. 61
  es4 d g2~ | % m. 62
  g4 r16 g f es d8 es16 f es d c bes | % m. 63
  as2 d,16 r r8 es'4 | % m. 64
  r16 c des es des c bes as es' d! c bes as' g f es | % m. 65
  bes'1~ | % m. 66
  bes16 f es d es f g as bes,2 | % m. 67
  es1~ | % m. 68
  es1~ | % m. 69
  es1 \fermata \bar "|." | % m. 70
   
}



\score {
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
  \layout { }
}

\score {
  \new PianoStaff <<
   \new Staff = "upper" \relative c' {\preambleUp
  <<
  \new Voice { \voiceOne \soprano }
  \\
  \new Voice { \voiceTwo \alto }
  >>
}
    \new Staff = "lower" \relative c {\preambleDown
  <<
    \new Voice { \voiceThree \tenor }
    \\
    \new Voice { \voiceFour \bass }
  >>
}
  >>
  \midi { }
}