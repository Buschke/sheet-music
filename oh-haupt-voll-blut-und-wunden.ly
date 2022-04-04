\language "deutsch"
\header {
  title = "Oh Haupt voll Blut und Wunden"
  subtitle = "Matthäuspassion"
  composer = "Johann Sebastian Bach"
  opus = "BWV "
}

sopranoMusic = \relative c' { a' d c b a g2 a4
e' f f e8 d e4 d2
a4 d c b a g2 a4
e4 f f e8 d e4 d2
f4 e8 d c4 d e f2 f4
c d c b8 a b4 a2
f4 e8 f g4 f e d2 e4
a b a g c a2.
}
altoMusic = \relative c' { f f8 g a4 d,8 e f4 f e f }
tenorMusic = \relative c { d' d8 e f4 g c, d c c }
bassMusic = \relative c { d'8 c b4 a g f b, c f } 
firstWords = \lyricmode { O Haupt voll Blut und Wunden, }
secondWords = \lyricmode { Du ed -- les An -- ge -- sich -- te, }

\score {
  \new ChoirStaff <<
    \new Staff {\clef "treble" \key f \major \tempo 4 = 60
      \new Voice = "sopranos" {\partial 4
        \sopranoMusic
      }
    }
    \new Lyrics = "sopranos"
    \new Lyrics = "altos"
    \new Staff {\clef "alto" \key f \major
      \new Voice = "altos" {
        \altoMusic
      }
    }
    \new Staff {\clef "tenor" \key f \major
        \new Voice = "bass" {
          \tenorMusic
        }
    }
    \new Staff {\clef "bass" \key f \major
      \new Voice = "bass" {
        \bassMusic
      }
    }
    \context Lyrics = "tenor" {    
    
      \lyricsto "tenor" {
        \firstWords
      }
    }
    \context Lyrics = "bass" {
      \lyricsto "bass" {
        \secondWords
      }
    }
  >>
  \layout {}
  \midi {}
}