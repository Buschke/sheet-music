\version "2.22.1"
\language "deutsch"

\header {
    title = "Violin Sonata No. 8, G Major"
    subtitle = "2nd Movement (Menuett), E flat major"
    composer = "Ludwig van Beethoven"
    opus = "Op. 30 No. 3"
    tagline = ""
    subsubtitle = "https://youtu.be/um6fiALO9pQ?t=435"
}

global = {
    \key es \major
    \time 3/4
    \tempo "Tempo di Minuetto, ma molto moderato e grazioso." 4 = 60
    \partial 4
}

iii = \markup \teeny "III"

violin = \relative c' {
r4 | f\p\downbow( d b)~ b( g b)\upbow~ b( es) es8( as16 g) g4( es g)  f(d f~)( | f8 d es4) <c~ es~> |
<c es>8 c4( b8 as b) | g4 r g'\upbow( | as~ as8. f16 b8.-3 d,16)-0 | es2 f8( as16-2 g) | g2 as8-III\trill( \grace {g16 as} c16 b) | b2 es16( d) c( b) | b2 \cresc \grace b16( as8)( g16 as) | \grace { g16(as b} as4 g) f8(\trill \grace {e16 f} as16 c) | c8( es,4.\sf)\decresc g8.( f16) | es4\p r r |
\mark "A" r1 | r1 | r1 | r4 r4 g\p | g2
}
pianoright = \relative c' {
g'4\p( as~ as8. f16 b8. d,16) | es2 f8( as16 g) | g2 as8\trill\grace {g16 as}( c16 b) | b2 es16( d) c( b) | b2\cresc \grace b16( as8)( g16 as) |
\grace { g16( as b } as4 g) f8\trill( \grace { e16 f} as16 c) | c8\sf( es,4.)\turn   << {g8.\decresc( f16 | es4\p)} \\ {d4} >> r4 r | \clef bass \tuplet 3/2 { r8\cresc f,( b) } \tuplet 3/2 { r <d, f>( b')} \tuplet 3/2 { r <d, f>( b')} |
\tuplet 3/2 { r <es, g>( b')} \tuplet 3/2 { r <es, g>( b')} \tuplet 3/2 { r <f as>( b) }  | \tuplet 3/2 { r <g b>( es')} \tuplet 3/2 { r <g, b>( es')} \tuplet 3/2 { r <as, c>( es')} | \tuplet 3/2 { r <g, b>( es')} \tuplet 3/2 { r b( es)} \tuplet 3/2 { r g,( b)}  |
\tuplet 3/2 { r f( b)} \tuplet 3/2 { r f( d')} \tuplet 3/2 { r <f, as>( d')} | \tuplet 3/2 { r <f, as>( d')} \tuplet 3/2 { r <es, g>( es')} \tuplet 3/2 { r <es, f>( c')} | \tuplet 3/2 { r <es, fis>(\sf c')} \tuplet 3/2 { r <es, g>\decresc( b')} \tuplet 3/2 { r <d, as'>( b')} | <es, g>4\p r \clef treble g' | 
<< {g2 as8. h16 | c2 b8. a16 | g2 \acciaccatura h8 a8. g16} \\ { s2 g4 | g2 | g4 | s2 fis4 } >>
%<< {as8. h16 | c2 b8. a16 |J g2 a8. g16 } 
                                                                                                                                                                                                              %\\ { g4 | g2 g4  | r2 fis4 } >>
g8 g' g g g g | g g g g g g | g g g g g g | g g r g r fis | g4 a8.-. g16 g4-.

}
pianoleft = \relative c {
r4 b( b' as g es d es des c8 as) es'4( g es | d b h |
c c,) <as' f'>( <a fis'> <b g'>) <b, b'> | es es' r | b,( b' as | g es d | es es'8 des c as) | <es es'>4( <g g'> <es es'> |
<d d'> <b b'> <h h'>) | <c c'>( c <as as'> | <a a'> <b b'> b) | es es' r |
<h' d>2 <c es>8. <d f>16 | es2 <d f>8. <c es>8 | <b d>4 <d, b'> <d c'> | <g b>
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