\version "2.22.1"
\language "deutsch"

\header {
  title = "Fuga XIV, Fis-Moll"
  subtitle = "Wohltemperiertes Clavier I"
  composer = "Johann Sebastian Bach"
  opus = "BWV 859"
}

sNotes = \relative c' { \voiceOne
d d d d | d d d d | 
%  | r | r | r | r | % 1
%  r | r | r | r | r | %

}
aNotes = \relative c' { \voiceTwo
  e e e e | e e e e
%  | r | r | r | r | % 1
%  r | r | r | r | r | % 

}
tNotes = \relative c { \voiceThree
  h h h h | h2 h
%  | r | r | r | r | % 1
%  r | r | r | r | r | % 

}
bNotes = \relative c { \voiceFour
  d2 d | d d |
%  | r | r | r | r | % 1
%  r | r | r | r | r | % 

} 

\score {
  \new PianoStaff <<
    \new Staff {\clef "treble" \key fis \minor \time 4/4 \tempo 4. = 60
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
    \new Staff {\clef "bass" \key fis \minor
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