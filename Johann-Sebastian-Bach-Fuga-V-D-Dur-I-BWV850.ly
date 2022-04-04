\version "2.22.2"
\language "deutsch"

\header {
  title = "Fuga V, D-Dur"
  subtitle = "Well tempered Clavier I"
  composer = "Johann Sebastian Bach"
  opus = "BWV 850"
}

sNotes = \relative c' { \voiceOne
  r1 r  % 1
  r r r  % 3
  r r  % 6
  r r  % 8
  r r  % 10
  r r  % 12
  r r r % 14
  r r  % 17
  r r  % 19
  r r  % 21
  r r  % 23
  r r r % 25 
  \bar "|."
}
aNotes = \relative c' { \voiceTwo
  r1 r  % 1
  r r r  % 3
  r r  % 6
  r r  % 8
  r r  % 10
  r r  % 12
  r r r % 14
  r r  % 17
  r r  % 19
  r r  % 21
  r r  % 23
  r r r % 25
}
tNotes = \relative c { \voiceThree
  r1 r  % 1
  r r r  % 3
  r r  % 6
  r r  % 8
  r r  % 10
  r r  % 12
  r r r % 14
  r r  % 17
  r r  % 19
  r r  % 21
  r r  % 23
  r r r % 25
}
bNotes = \relative c { \voiceFour
  r4 d32 e fis g fis e fis d h'8. h16 a8. a16 fis8. g16 fis8. e16 d4 e  % 1
  a8. e32 fis g a2 g4~ g8. fis32 e fis8. d16 g8. e16 a8. a,16 d8. e16 fis8. e16 d8. h16 e4  % 3
  a,4 r4 r2 r1 % 6
  r4 d,32 e fis g fis e fis d h'8. 16 a8. g16  % 8
  r r  % 10
  r r  % 12
  r r r % 14
  r r  % 17
  r r  % 19
  r r  % 21
  r r  % 23
  r r r % 25
} 

\score {
  \new PianoStaff <<
    \new Staff {\clef "treble" \key d \major \time 4/4 \tempo 4 = 60
                <<
      \new Voice = "soprano" {
        \sNotes
      }
      \\
      \new Voice = "alto" {
        \aNotes
                }
  >>
    }
    \new Staff {\clef "bass" \key d \major
      <<
      \new Voice = "tenor" {
        \tNotes
      }
      
      \new Voice = "bass" {
        \bNotes
      }
      >>
    }
    

  >>
  \layout {}
}

\score {
  \new ChoirStaff <<
    \new Staff {\clef "treble" \key f \major \tempo 4 = 60
                <<
      \new Voice = "sopranos" {\partial 4
        \sNotes
      }
      \\
      \new Voice = "altos" {
        \aNotes
                }
  >>
    }
    \new Staff {\clef "bass" \key f \major
      <<
      \new Voice = "tenor" {
        \tNotes
      }
      
      \new Voice = "bass" {
        \bNotes
      }
      >>
    }
  >>

 \midi {} 
}