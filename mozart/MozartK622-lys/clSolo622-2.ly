\version "2.22.1"
\language "deutsch"

\header {
    title = "Violin Sonata"
    subtitle = "E flat major, 2nd Movement"
    composer = "Ludwig van Beethoven"
    opus = "Op. 30 No. 3"
    tagline = ""
}

global = {
    \key es \major
    \time 3/4
    \tempo "Tempo di Minuetto, ma molto moderato e grazioso." 4 = 60
    \partial 4
}

iii = \markup \teeny "III"

violin = \relative c' {
r4 | f\p\downbow( d b)~ b( g) b\upbow~ b( es) es8( as16 g) g4( es g)  f(d f~) | f8 d es4) <c~ es~> |
<c es>8 c4( b8 as b) | g4 r g'\upbow( | as~ as8. f16 b8.-3 d,16)-0 | es2 f8( as16-2 g) | g2 as8\scrIII\trill( \grace {g16 as} c16 b) | b2 \cresc \grace b16( as8)( g16 as) | \grace { g16(as b} as4 g) f8(\trill \grace {e16 f} as16 c) | c8( es,4.\sf)\decr g8.( f16) | es4\p r r
}
pianoright = \relative c' {
g'4( as~ as8. f16 b8. d,16) | es2 f8( as16 g) | g2 as8( c16 b) | b2 es16( d) c( b) | b2 \grace b8( as8)( g16 as) |
\grace { g16( as b } as4 g) f8\trill( \grace { e16 f} as16 c) | c8( es,4.)\turn  << {g8.( f16 | es4)} \\ {d4} >> r4 r | \clef bass \tuplet 3/2 { r8 f,( b) } \tuplet 3/2 { r <d, f>( b')} \tuplet 3/2 { r <d, f>( b')} |
\tuplet 3/2 { r <es, g> b'} \tuplet 3/2 { r <es, g> b'} \tuplet 3/2 { r <f as> b }  | \tuplet 3/2 { r <d, f> b'} \tuplet 3/2 { r <d, f> b'} \tuplet 3/2 { r <d, f> b'} | \tuplet 3/2 { r <d, f> b'} \tuplet 3/2 { r <d, f> b'} \tuplet 3/2 { r <d, f> b'}  |
\tuplet 3/2 { r <d, f> b'} \tuplet 3/2 { r <d, f> b'} \tuplet 3/2 { r <d, f> b'} | \tuplet 3/2 { r <d, f> b'} \tuplet 3/2 { r <d, f> b'} \tuplet 3/2 { r <d, f> b'} | \tuplet 3/2 { r <d, f> b'} \tuplet 3/2 { r <d, f> b'} \tuplet 3/2 { r <d, f> b'} |

}
pianoleft = \relative c {
r4 b( b' as g es d es des c8 as) es'4( g es | d b h |
c c,) <as' f'>( <a fis'> <b g'>) <b, b'> | es es' r | b,( b' as | g es d | es es'8 des c as) | <es es'>4( <g g'> <es es'> |
<d d'> <b b'> <h h'>)
}

\score {<<
    \new Staff {\clef violin \global
        \violin
    }
    \new PianoStaff <<
    \new Staff {\clef violin \global
        \pianoright
    }
    \new Staff {\clef bass \global
        \pianoleft
    }
    >>
    >>
    \layout {}
    \midi {}
}