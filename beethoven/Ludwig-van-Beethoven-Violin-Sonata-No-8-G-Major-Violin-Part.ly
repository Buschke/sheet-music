\version "2.22.1"
\language "deutsch"

\header {
    title = "Violin Sonata No. 8, G Major - Violin Part"
    subtitle = "2nd Movement (Menuett), E flat major"
    composer = "Ludwig van Beethoven"
    opus = "Op. 30 No. 3"
    poet = \markup \box { \pad-around #1 {"Violin Solo"}}	%% placé en haut à gauche
    instrumentHeader = \markup {"Violin"}

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
\mark "A"
r1 | r1 | r1 | r4 r4 g\p | g2
}

\score {
    \new Staff {\clef violin \global
        \violin
    }
    \layout {}
    \midi {}
}