\version "2.22.1"
\language "deutsch"

\header {
  title = "Oh Haupt voll Blut und Wunden"
  subtitle = "Matthäuspassion, Choral No. 63"
  composer = "Johann Sebastian Bach"
  opus = "BWV 244"
}

sopranoMusic = \relative c' {
a'4 d c b a g2 a4\fermata
e' f f e8 d e4 d2.\fermata
a4 d c b a g2 a4\fermata
e'4 f f e8 d e4 d2.\fermata
f4 e8 d c4 d e f2 f4\fermata
c d c b8 a b4 a2.\fermata
f'4 e8 f g4 f e d2 e4\fermata
a, b a g c a2.\fermata\bar "|."
}
altoMusic = \relative c' {
  f4 f8 g a4 d,8 e f4 f( e) f
  a a a a a8 g f2.
  f4 f8 g a4 d,8 e f4 f( e) f
  a a a a a8 g f2.
  a4 g g8 f f4 b b( a8 g) a4
  a a8 g a4 g8 fis g4 fis2.
  g4 g c c c c( h) c
  f,8 e d e f4 f e f2.
}
tenorMusic = \relative c {
  d'4 d8 e f4 g c, d( c) c\fermata
  e e d d cis a2.\fermata
  d4 d8 e f4 g c, d( c) c\fermata
  e e d d cis a2.\fermata
  d8 c b4 c c b8 c d4( c8 b) c4\fermata
  f8 es d4 d d d d2.\fermata
  d4 c8 d e4 f g a( g) g\fermata
  c, b c c8( b16 a) g8 c c2.\fermata
}
bassMusic = \relative c {
d'8 c b4 a g f b,( c) f
cis d8 e f g a4 a, d2.
d'8 c b4 a g f b,( c) f
cis d8 e f g a4 a, d2.
d4 g a b8 a g4 f2 f4
f b fis g g, d'2.
h4 c c'8 h a4 g f( g) c,
f g a8 b c4 c, f2.
} 
tenorWords = \lyricmode {
  O _ Haupt voll Blut und Wun -- den,
  voll Schmerz __ und vol- ler Hohn!
  O __ Haupt, ___ zu Spott ge- bun- den
  mit ei-__ ner __ Dor- nern- kron!
  O ___ Haupt, sonst schön __ ge - zie- ret
  mit ___ höchs- ter Ehr' und Zier,
  jetzt a - ber hoch schimp- fi- ret:
  ge- grü- ßet seist du ___ mir!
}
bassWords = \lyricmode {
  Du ___ ed --  les An -- ge -- sich -- ___ te,
  vor dem ___ sonst ___ schrickt und scheut
  das ___ gro -- ße Welt -- ge -- rich- te,
  wie bist ___ du ___ so be- speit!
  Wie bist du so ___  er -- blei -- chet,
  wer hat dein Au -- gen -- licht,
  dem sonst kein ___ Licht nicht glei -- chet,
  so schänd -- lich ___ zu -- ge -- richt't?
}

\score {
  \new ChoirStaff <<
    \new Staff {\clef "treble" \key f \major \tempo 4 = 60
                <<
      \new Voice = "sopranos" {\partial 4
        \stemUp \sopranoMusic
      }
      \\
      \new Voice = "altos" {
        \stemDown \altoMusic
                }
  >>
    }
%   \new Staff {\clef "tenor" \key f \major
%       \new Voice = "tenor" {
%         \tenorMusic
%       }
%}
    \new Staff {\clef "bass" \key f \major
      <<
      \new Voice = "tenor" {
        \stemUp \tenorMusic
      }
      
      \new Voice = "bass" {
        \stemDown \bassMusic
      }
      >>
    }
%    \new Lyrics = "tenor"
%   \new Lyrics = "bass"
    \context Lyrics = "tenor" {    
      \lyricsto "tenor" {
       \tenorWords
     }
   }

    \context Lyrics = "bass" {
      \lyricsto "bass" {
        \bassWords
      }
    }
  >>
  \layout {}
  \midi {}
}