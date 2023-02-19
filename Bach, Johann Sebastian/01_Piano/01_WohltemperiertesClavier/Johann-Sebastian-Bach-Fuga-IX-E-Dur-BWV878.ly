\version "2.22.2"
\language "deutsch"

\header {
  title = "Fuga IX, E-Dur"
  subtitle = "Well tempered Clavier II"
  composer = "Johann Sebastian Bach"
  opus = "BWV 878"
}

sNotes = \relative c' { \voiceOne
  r\breve r\breve r\breve %1
  r\breve r\breve r\breve %4
  r\breve r\breve r\breve r\breve %7 
  r\breve r\breve r\breve  %11
  r\breve r\breve r\breve %14
  r\breve r\breve r\breve %17
  r\breve r\breve r\breve %20
  r\breve r\breve r\breve %24
  r\breve r\breve r\breve %28
  r\breve r\breve r\breve %32
  r\breve r\breve r\breve %36
  r\breve r\breve r\breve %40
  \bar "|."
}
aNotes = \relative c' { \voiceTwo
  r\breve r r\breve r\breve % 1
  r r r % 4
  r r r % 7
  r r r % 11
  r r r % 14
  r r r % 17
  r r r % 

}
tNotes = \relative c { \voiceThree
  %r\breve r \breve h1' cis2 e dis cis %1
  %h2. h4 a h cis dis e8 h e2 dis4 e2 gis,4 fis gis2 e fis1~
  %fis4 %4
  r\breve r r %1
  r r r % 
  r r r % 
  r r r % 
  r r r % 
  r r r % 
  r r r % 
  r r r % 
  r r r % 
  r r r % 
  r r r % 
}
bNotes = \relative c { \voiceFour
  e1 fis2 a gis fis e4 dis8 cis dis4 h e fis gis ais h8 fis h2 a4~ %1
  a4 gis8 fis gis2~ gis fis gis a4 h8a gis4 fis e dis cis1 h2 fis %4
  gis2. e4 a2. fis4 h\breve~ h2 r2 r1 r1 h1 %7
  cis e dis cis h1 h2 a2 gis1 fis4 gis a h %11
  cis4 gis cis2~ cis h a1 gis1  r\breve %14
  r\breve r r %17
  r\breve r\breve r\breve %20
  r\breve r\breve r\breve %24
  r\breve r\breve r\breve %28
  r\breve r\breve r\breve %32
  r\breve r\breve r\breve %36
  r\breve r\breve r\breve %40
} 

\score {
  \new PianoStaff <<
    \new Staff {\clef "treble" \key e \major \time 2/1 \tempo 2 = 60
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
    \new Staff {\clef "bass" \key e \major
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