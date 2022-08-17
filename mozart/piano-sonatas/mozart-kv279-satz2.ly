\version "2.22.2"
\language "english"

\header {
  dedication = "NN"
  title = "Klaviersonate Nr. 1"
  subtitle = "2. Satz"
  subsubtitle = "NN"
  instrument = "Klavier"
  composer = "Wolfgang Amadeus Mozart"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "KV 279"
  copyright = "NN"
  tagline = "NN"
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key f \major
  \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=40
  \omit TupletNumber
  \omit TupletBracket
  %\tempo "Andante" 4=69
}

right = \relative c'' {
  \global
  % Music follows here.
  \partial 16
  f,16\f c'4-4 \appoggiatura b8-2 c4 \appoggiatura {b16-2 c d} c4-1 bf'-5 bf, r8\p a-3 \tuplet 3/2 {g-2( bf g) } \tuplet 3/2 { f-1( a-4 f-2)} \tuplet 3/2 {e-1( g e)} bf''4\f( bf,) r8\p a-3
  \tuplet 3/2 { g( bf g)} \tuplet 3/2 {f( a f)} \tuplet 3/2 {e( g e) }
  f4\f \tuplet 3/2 {r8 e\p_1( f} \tuplet 3/2 {g f-1) <g bf>-2-4}
  \tuplet 3/2 { <f a>\f-3-5( <e g>-1-4 <ds fs>-2-3) }
  \tuplet 3/2 {<e g> fs\p-2( g}
  \tuplet 3/2 {a g-1) <a c>-3-5} \tuplet 3/2 { <g bf>\f-2-4( <f a>-1-3 <e g>-1-2)} <f a>4
  <<
    {
      c''-5~ \omit TupletNumber \omit TupletBracket \tuplet 3/2 {c8 cs-4( d)}
      \tuplet 3/2 {c-4( bf) a-4}
      \tuplet 3/2 {a-5( g) f}
      \tuplet 3/2 {e-2 r\p r} s4 s
      \appoggiatura {fs32-3( g a} g2.\f->^"4-5") \appoggiatura {a32_5( g fs} g2.\f->-4-5) \appoggiatura {fs32-3( g a} g2.\f->)
    }
    \\ {
      ef4 d2. \omit TupletNumber \omit TupletBracket \tuplet 3/2 { c8 g'-4\p g } \tuplet 3/2 { g g g} \tuplet 3/2 {g g g}
      \tuplet 3/2 {r b,( d)} \tuplet 3/2 {c\p( b d)} \tuplet 3/2 {c( b d)}
      \tuplet 3/2 {r c( e)} \tuplet 3/2 {d\p( c e)} \tuplet 3/2 {d( c e-2)}
      \tuplet 3/2 {r d( f)} \tuplet 3/2 {e\p( d f)} \tuplet 3/2 {e( d f)}
    }
  >>
  \tuplet 3/2 {r e\p-1( f-2} \tuplet 3/2 {fs g-1 gs-2} \tuplet 3/2 {a-3 b c)}
  d,4\fp~ \tuplet 3/2 {d8\) a'-5( g)}

  \tuplet 3/2 {g32\trill\f f g f ( e8 d)}
  %  \tuplet 3/2 {f\trill\f( e d)}


  \tuplet 3/2 {g-3( gs a)}
  c,4-1
  c32\trill-2 b c b c b ( a32 b)
  %b8.\trill-2( a32 b)
  c4 r r
  \tuplet 3/2 {r8 <d b'>-1-4( <ef c'>-2-5)}
  \tuplet 3/2 {r <e c'>( <d b'>)} \tuplet 3/2 {r <e gs>-1-3( <f a>)}
  \tuplet 3/2 {r <f a-4>( <e g>)} \tuplet 3/2 {r <e g-4>( <d f>)}
  \tuplet 3/2 {r <d f-4>(<c e>)}
  <<
   \omit TupletBracket \omit TupletNumber { {\tuplet 3/2 {r e d)} \tuplet 3/2 {r d_5( c)} \tuplet 3/2 {r c_4( b)}} } \\
    { a4-2 g f }
  >>
  \appoggiatura <f' a>8-2-4\f( <e g>4) \appoggiatura <e g-4>8( <d f>4) \appoggiatura <d f-4>8( <c e>4)
  \tuplet 3/2 {e8\p-3( d) r} r4 r
  \tuplet 3/2 {d8\f-2( ef) r} r4 r
  \tuplet 3/2 {ds8\p-2( e) r} r4 \tuplet 3/2 {fs8\f-2( g) r}
  r4
  \appoggiatura {c,16-1( d e) }

  d32\trill( e d e d e d e d e d e      c16 d)
  %d4.\trill( c16 d)

  \tuplet 3/2 {c8-1( e g-4)}
  a32-3\trill( g a g a g      fs32 g)
  %  g8.-3\trill( fs32 g)
  \tuplet 3/2 {r8 f-2( d)}
  \tuplet 3/2 {c-2( e-4 g,)}
  a32\trill-3( g a g a g         fs32 g)
  %  g8.\trill-3( fs32 g)
  \tuplet 3/2 {r8 f\p-5( <f, b d-4>)}
  <f b d-5>2( <e c'>8) r16
}

right_two = \relative c' {
  \partial 16 c'16\f-1
  g'4-! g-!-3 g-!
  fs8.-2( g32 a) g4 r8. g16\p-3
  g4-2~ \tuplet 3/2 {g8 bf-.-4( a-.}
  \tuplet 3/2 {g-. f-. e-.-4)}
  d4-3( cs) r8. a16\f
  <cs-2 bf'-5>4 <d a'> r8\p f
  \tuplet 3/2 {e-2( g e)}
  \tuplet 3/2 {d-1( f d)}

  \tuplet 3/2 {cs-2( e cs)}
  <e cs'>4\f <f d'> r8.\p f16-3
  \tuplet 3/2 {e8-2( g e)}
  \tuplet 3/2 {d-1( f d)}
  \tuplet 3/2 {cs-2( e cs)}
  c4\f
  f32-2\trill( ef f ef f ef f ef f ef f ef d16 ef)
  %ef4.-2\trill( d16 ef)
  d4 \tuplet 3/2 {r8 g-3( fs} g4)
  \tuplet 3/2 {r8 bf-3( a)} bf4
  \tuplet 3/2 {r8 d-4( cs)}
  \tuplet 3/2 {d\fp( bf g)}
  \tuplet 3/2 {d'\fp( bf g)}
  \tuplet 3/2 {d'\fp( bf g)}
  f4\f-3~ \tuplet 3/2 {f8\f-3( e\p-2( f}
  \tuplet 3/2 {g-1 a bf-3)}
  b16\sf-2( c d c)
  \appoggiatura c16-4( bf8\p)( a16 g)
  \appoggiatura g-4( f8)( e16 d)
  \appoggiatura d8-3( c4\f) \appoggiatura b8-2(c4\f) \appoggiatura {b32-2( c d} c4-1)
  bf'4-5( bf,) r8\p a-3
  \tuplet 3/2 {g-2( bf g)}
  \tuplet 3/2 {f-1( a-4 f-2)}
  \tuplet 3/2 {e-1( g e)}
  bf''4\f-5( bf,) r8.\p bf16
  bf'4\f( bf,) r8\p a-3
  \tuplet 3/2 {a-2( g) r} r4 r
  \tuplet 3/2 {f'8\f-4( b,) r} r4 r
  \tuplet 3/2 {c8 c'-5 c}
  \tuplet 3/2 {c\p c c}
  \tuplet 3/2 {c-4 c c}
  << {\appoggiatura {b32-3 c d}( c2.->-"4-5")} \\ {  \omit TupletNumber \omit TupletBracket \tuplet 3/2 {r8\f e,-1 g-3} \tuplet 3/2 {f\p( e g)} \tuplet 3/2 {f( e g-2)}}>>
  << {\appoggiatura {d'32-5 c b}( c2.->-"4-5")} \\ {  \\\tuplet 3/2 {r8\f f, a} \tuplet 3/2 {g\p( f a)} \tuplet 3/2 {g( f a-2)}}>>
  << {\appoggiatura {b32-3 c d}( c2.->-4)} \\ {  \tuplet 3/2 {r8\f g bf} \tuplet 3/2 {a( g bf)} \tuplet 3/2 {a( g bf)}}>>
  \tuplet 3/2 {r\p (a,-1 bf-2} \tuplet 3/2 {b c-2 cs} \tuplet 3/2 {d-3 e f)}
  g,4\fp( \tuplet 3/2 {g8) d'-5( c)} \tuplet 3/2

  {c32\f\trill( bf c bf a8 g)} %  {bf\f\trill( a g)}

  \tuplet 3/2 {c-3( cs d)} f,4-1
  f32\trill-2( e f e f e d32 e)
  %  e8.\trill-2( d32 e)

  f4 r r
  \tuplet 3/2 {r8\f <g^1 e'-4>( <af^2 f'-5>)}
  \tuplet 3/2 {r8\p <af f'>( <g e'>)}
  \tuplet 3/2 {r8\f <a^1 cs-3>( <bf d>)}
  \tuplet 3/2 {r8\p <bf d-4>( <a c>)}
  \tuplet 3/2 {r8\f <a' c-4>( <g bf>)}
  \tuplet 3/2 {r8\p <g bf>( <f a>)}
  << \omit TupletBracket \omit TupletNumber {\tuplet 3/2 {r a( g)} \tuplet 3/2 {r g( f)} \tuplet 3/2 {r f( e)}} \\ {d4-2( c bf-2)} >>
  <a'-3 c-5>4 <g bf> <f a>
  << {\tuplet 3/2 {r8 a,( g)} \tuplet 3/2 {r g( f)} \tuplet 3/2 {r f-4( e)}} \\ {d4-2( c bf)} >>
  \appoggiatura <bf'-2 d-4>8( <a c>4\f
  \appoggiatura <a c-4>8( <g bf>4
  \appoggiatura <g bf-4>8( <f a>4
  \tuplet 3/2 {a8\p-3( g) r} r4 r
  \tuplet 3/2 {g8\f-2( af) r} r4 r
  \tuplet 3/2 {gs8\p-2( a) r} r4 \tuplet 3/2 {b'8\f-2( c) r}
  r4 \appoggiatura {f,32-1( g a}
  a32\trill-2)(g a g a g a g a g a g f16 g)
  %g4.\trill-2)( f16 g)

  f4 \tuplet 3/2 {r8 e,\p-1( f} \tuplet 3/2 {g f-1) <g-2 bf-4>}
  \tuplet 3/2 {<f-3 a-4>\f( <e-1 g-4> <ds-2 fs-3>)}
  \tuplet 3/2 {<e-1 g-4> fs\p-2( g}
  \tuplet 3/2 {a g-1) <a-2 c-4>}
  \tuplet 3/2 {<g\f-3 bf-5>( <f-2 a-4> <e-1 gs-3>)}
  <f-2 a-4>4 <ef'-2 c'-5>~
  \tuplet 3/2 {<ef c'>8 <d-1 bf'-4>) <c-1 a'-5>(}
  \tuplet 3/2 {<c a'>\p) <bf-2 g'-5> <a-1 f'-4>(}
  \tuplet 3/2 {<a f'>) <bf-2 g'-5> <g-1 e'-4>}
  \tuplet 3/2 {<a-1 f'-5>\f a'-2( c-4) <>}
  d32\trill-2(c d c d c b32 c)
  %c8.\trill-2( b32 c)

  \tuplet 3/2 {r8 bf-2( g-1)}
  \tuplet 3/2 {f-3( a c,)}
  d32\trill-2(c d c d c b32 c)
  %c8.\trill-2( b32 c)


  \tuplet 3/2 {r8 bf\p_5( <bf, e g-4>)}
  <bf e g-5>2( <a f'>8) r16
}


left = \relative c' {
  \global
  % Music follows here.
  \partial 16
  r16
  \tuplet 3/2 { f,8( a c)} \tuplet 3/2 { g( bf c) } \tuplet 3/2 { f,( a c) }
  \tuplet 3/2 { e,( g c) } \tuplet 3/2 { c,( e g) } \tuplet 3/2 { f( a c) }
  \tuplet 3/2 { bf,( d g) } \tuplet 3/2 { c,( f a) } \tuplet 3/2 { c,( g' bf) }
  \tuplet 3/2 { d,( f bf) } \tuplet 3/2 { e,( g c) } \tuplet 3/2 { f,( a c) }
  \tuplet 3/2 { bf,( d g) } \tuplet 3/2 { c,( f a) } \tuplet 3/2 { c,( g' bf) } \tuplet 3/2 {a-2( c a)} f4 r
  <c, c'> r r
  <f f'> \tuplet 3/2 {r8 <ef' ef'> <d d'>} \tuplet 3/2 {<c c'> <bf bf'> <a a'>}
  <bf bf'>4 bf b c r r
  \clef treble \tuplet 3/2 {r8 d'_3(f_1)} \tuplet 3/2 {e(d f)} \tuplet 3/2 {e(d f)}
  \tuplet 3/2 {r e_3(g)} \tuplet 3/2 {f(e g)} \tuplet 3/2 {f(e g)}
  \tuplet 3/2 {r b,-3(d)} \tuplet 3/2 {c( b d)} \tuplet 3/2 {c( b d)}
  c4 r r
  \clef bass <fs, a c>-5( <g b>) r8 <f g b>
  e8 f \tuplet 3/2 {g-5( c e)} \tuplet 3/2 {g,( d f)}
  \tuplet 3/2 {r\p e-4( f} \tuplet 3/2 {fs g gs-4} \tuplet 3/2 {a b c})
  <fs,, fs'>4\f <g g'>\p <b b'>\f
  <c c'>\p <gs gs'>\f <a a'>\p
  <f' f'> << {g2-5} {e'4-1 d} >>
  \tuplet 3/2 {r8 <b,, b'>( <c c'>)} \tuplet 3/2 {r <cs cs'>(<d d'>)} \tuplet3/2 {r <ds ds'>(<e e'>)}
  \tuplet 3/2 {r <f' a c> <f a c>}
  \tuplet 3/2 {<f a c> <f a c> <f a c>}
  \tuplet 3/2 {<f a c> <f a c> <f a c>}
  \tuplet 3/2 {r <fs-4 a c> <fs a c>}
  \tuplet 3/2 {<fs a c> <fs a c> <fs a c>}
  \tuplet 3/2 {<fs a c> <fs a c> <fs a c>}
  \tuplet 3/2 {r <g c e> <g c e>}
  \tuplet 3/2 {<g c e> <g c e> <g c e> }
  \tuplet 3/2 {r <g c e> <g c e> }
  \tuplet 3/2 {<fs a c> <fs a c> <fs a c>}
  \tuplet 3/2 {<g c> <g c> <g c> }
  \tuplet 3/2 {<g b> <g b> <g b> }
  <c, c'>4 \tuplet 3/2 {r8 c'-3( e-2)}
  <<{\tuplet 3/2 {f( d b)}} \\ {g4}>>
  <c, c'>4 \tuplet 3/2 {r8 e-1(c)} g4
  c,2~ c8 r16
}

left_two = \relative c' {
  r16
  \clef treble
  \tuplet 3/2 {c8-5( e g)}
  \tuplet 3/2 {c,( e g)}
  \tuplet 3/2 {c,( e g)}
  \tuplet 3/2 {b,( d g)}
  \tuplet 3/2 {b,( d g)}
  \tuplet 3/2 {b,( d g)}
  \tuplet 3/2 {bf,-4( d g)}
  \tuplet 3/2 {bf,( d g)}
  \tuplet 3/2 {bf,( d g)}
  \tuplet 3/2 {a,( d f)}
  \tuplet 3/2 {a,-4( cs e)}
  \tuplet 3/2 {a,( cs e)}
  \clef bass
  \tuplet 3/2 {g,( cs e)}
  \tuplet 3/2 {f,( a d)}
  \tuplet 3/2 {d,( f a)}
  \tuplet 3/2 {g-5( bf e)}
  \tuplet 3/2 {a,( d f)}
  \tuplet 3/2 {a,( cs e)}
  \tuplet 3/2 {g,( cs e)}
  \tuplet 3/2 {f,( a d)}
  \tuplet 3/2 {d,( f a)}
  \tuplet 3/2 {g( bf e)}
  \tuplet 3/2 {a,( d f)}
  \tuplet 3/2 {a,( cs e)}
  \clef treble
  \tuplet 3/2 {a,( ef' fs)}
  \tuplet 3/2 {a,( c fs)}
  \tuplet 3/2 {a,( c fs)}
  \tuplet 3/2 {<bf,-4 d g> bf'\p-2( a}
  bf4)
  \tuplet 3/2 {r8 <bf^1 d-3>( <a cs>}
  <bf d>4)
  \tuplet 3/2 {r8 <d-4 g-1>( <a-5 fs'-2>} <bf-4 g'-1>4)
  r2.
  << {<f-3 a-1>4( <g-2 bf-1>)} \\ {c,2} >> r4
  r2.
  \clef bass
  \tuplet 3/2 {f,8-5( a c)}
  \tuplet 3/2 {g-4( bf c)}
  \tuplet 3/2 {f,( a c)}
  \tuplet 3/2 {e,( g c)}
  \tuplet 3/2 {c,( e g-1)}
  \tuplet 3/2 {f-4( a c)}
  \tuplet 3/2 {bf,( d g)}
  \tuplet 3/2 {c,( f a)}
  \tuplet 3/2 {c,( g' bf)}
  \tuplet 3/2 {df,-4( e g)}
  \tuplet 3/2 {c,( e g)}
  \tuplet 3/2 {df( e g)}
  \tuplet 3/2 {c,( e g)}
  \tuplet 3/2 {cs,-4( e g)}
  \tuplet 3/2 {d( f a)}
  \tuplet 3/2 {r <b d f> <b d f>)}
  \tuplet 3/2 {<b d f> <b d f> <b d f>)}
  \tuplet 3/2 {<b d f> <b d f> <b d f>)}
  \tuplet 3/2 {r <d, f b> <d f b>)}
  \tuplet 3/2 {<d f b> <d f b> <d f b>)}
  \tuplet 3/2 {<d f b> <d f b> <d f b>)}
  <c e g c>4 r r
  \clef treble
  \tuplet 3/2 {r8 g''-4( bf-2)}
  \tuplet 3/2 {a( g bf)}
  \tuplet 3/2 {a( g bf)}
  \tuplet 3/2 {r8 a-3( c)}
  \tuplet 3/2 {bf( a c)}
  \tuplet 3/2 {bf( a c)}
  \tuplet 3/2 {r8 e,-3( g)}
  \tuplet 3/2 {f( e g)}
  \tuplet 3/2 {f( e g)}
  f4 r r
  <b, d f>( <c e>)
  \clef bass
  r8 <bf,-4 c e>
  <<{f'4}\\{a,8 bf}>>
  \tuplet 3/2 {c-5( f a)}
  \tuplet 3/2 {c,( g' bf)}
  \tuplet 3/2 {r a,\p_4( bf}
  \tuplet 3/2 {b-2 c cs-3}
  \tuplet 3/2 {d e-1 f-2)}
  <b,, b'>4 <c c'> <e e'> <f f'> <cs' cs'> <d d'>
  \clef treble
  << {bf''( a-1 g)} \\ {bf, c2-5} >>
  \clef bass
  \tuplet 3/2 {r8 <e, e'>( <f f'>)}
  \tuplet 3/2 {r <fs fs'>( <g g'>)}
  \tuplet 3/2 {r <gs gs'>( <a a'>)}
  << {bf4( a-1 g)} \\ {bf,4 c2-5} >>
  \tuplet 3/2 {r8 <e e'>( <f f'>)}
  \tuplet 3/2 {r8 <fs fs'>( <g g'>)}
  \tuplet 3/2 {r8 <gs gs'>( <a a'>)}
  \clef treble
  \tuplet 3/2 {r8 <bf d f> <bf d f>}
  \tuplet 3/2 {<bf d f> <bf d f> <bf d f>}
  \tuplet 3/2 {<bf d f> <bf d f> <bf d f>}
  \tuplet 3/2 {r <b d f> <b d f>}
  \tuplet 3/2 {<b d f> <b d f> <b d f>}
  \tuplet 3/2 {<b d f> <b d f> <b d f>}
  \tuplet 3/2 {r <c f> <c f>}
  \tuplet 3/2 {<c f a> <c f a> <c f a>}
  \tuplet 3/2 {r <c f a> <c f a>}
  \tuplet 3/2 {<b f' g> <b f' g> <b f' g>}
  \tuplet 3/2 {<b f' g> <b f' g> <b f' g>}
  \tuplet 3/2 {<c e bf'> <c e bf'> <c e bf'>}
  \tuplet 3/2 {<f-2 a-1> c-4 a-5}
  \clef bass
  <f, f'>4
  r
  <c c'> r r
  <f f'>
  \tuplet 3/2 {r8 <ef' ef'> <d d'>}
  \tuplet 3/2 {<c c'> <bf bf'> <a a'>}
  <bf bf'>4 <c c'> <c, c'>
  <f f'>
  \clef treble
  \tuplet 3/2 {r8 f''\f_3( a_2)}
  << {\tuplet 3/2 {bf-1( g e)}} \\ c4 >>
  \clef bass
  <f, f'>4
  \tuplet 3/2 {r8 a-2( f-3)}
  <c, c'>4
  f2~ f8 r16
}

clave = \new DrumStaff {
  \global
  \drummode {
    <<
      {\tuplet 3/2 {hh8 cl cl} \tuplet 3/2 {hh8 cl cl} hh8.}
      \\
      {bd4 sn sn8.}
    >>
  }
  \version "2.22.2"
}

\score {
  {
    %    \clave
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } {
        \repeat volta 2 {\right}
        \repeat volta 2 {\right_two}
      }
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass {\repeat volta 2 {\left}} \repeat volta 2 {\left_two} }
    >>
  }
  \layout { }
}

\score {
  {
    \clave
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } {
        \repeat unfold 2 {\right}
        \repeat unfold 2 {\right_two}
      }
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass {\repeat unfold 2 {\left}} \repeat unfold 2 {\left_two} }
    >>
  }
  \midi { }
}