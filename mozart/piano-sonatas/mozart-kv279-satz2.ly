\version "2.22.2"
\language "english"

\header {
  dedication = "NN"
  title = "Klaviersonate Nr. 1"
  subtitle = "2. Satz"
  subsubtitle = "NN"
  instrument = "NN"
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
  \partial 16
  \tempo "Andante" 4=50
}

right = \relative c'' {
  \global
  % Music follows here.

  f,16\f c'4-4 \appoggiatura b8-2 c4 \appoggiatura {b16-2 c d} c4-1 bf'-5 bf, r8\p a-3 \tuplet 3/2 {g-2( bf g) } \tuplet 3/2 { f-1( a-4 f-2)} \tuplet 3/2 {e-1( g e)} bf''4\f( bf,) r8\p a-3
  \tuplet 3/2 { g( bf g)} \tuplet 3/2 {f( a f)} \tuplet 3/2 {e( g e) }
  f4\f \tuplet 3/2 {r8 e\p_1( f} \tuplet 3/2 {g f-1) <g bf>-2-4}
  \tuplet 3/2 { <f a>\f-3-5( <e g>-1-4 <ds fs>-2-3) }
  \tuplet 3/2 {<e g> fs\p-2( g}
  \tuplet 3/2 {a g-1) <a c>-3-5} \tuplet 3/2 { <g bf>\f-2-4( <f a>-1-3 <e g>-1-2)} <f a>4
  <<{c''-5( \tuplet 3/2 {c8) cs-4( d)}
  \tuplet 3/2 {c-4( b) a-4}
  \tuplet 3/2 {a-5( g) f}
  \tuplet 3/2 {e-2 s\p s} s4 s
  \appoggiatura {fs32-3( g a} g2.\f->^"4-5") \appoggiatura {a32_5( g fs} g2.\f->-4-5) \appoggiatura {fs32-3( g a} g2.\f->)
    }
  || { ef4 d2. \tuplet 3/2 { c8 g'-4\p g } \tuplet 3/2 { g g g} \tuplet 3/2 {g g g}
  \tuplet 3/2 {r b,( d)} \tuplet 3/2 {c\p( b d)} \tuplet 3/2 {c( b d)}
  \tuplet 3/2 {r c( e)} \tuplet 3/2 {d\p( c e)} \tuplet 3/2 {d( c e-2)}
  \tuplet 3/2 {r d( f)} \tuplet 3/2 {e\p( d f)} \tuplet 3/2 {e( d f)}
  }
  >>
  \tuplet 3/2 {r e\p-1( f-2} \tuplet 3/2 {fs g-1 gs-2} \tuplet 3/2 {a-3 b c)}
  d,4\fp( \tuplet 3/2 {d8) a'-5( g)} \tuplet 3/2 {f\trill\f( e d)}
  \tuplet 3/2 {g-3( gs a)}
  c,4-1 b8.\trill-2( a32 b)
  c4 r r
  \tuplet 3/2 {r8 <d b'>-1-4( <ef c'>-2-5)}
  \tuplet 3/2 {r <e c'>( <d b'>)} \tuplet 3/2 {r <e gs>-1-3( <f a>)}
  \tuplet 3/2 {r <f a-4>( <e g>)} \tuplet 3/2 {r <e g-4>( <d f>)}
  \tuplet 3/2 {r <d f-4>(<c e>)}
  <<
  { {\tuplet 3/2 {r e d)} \tuplet 3/2 {r d_5( c)} \tuplet 3/2 {r c_4( b)}} } \\
  { a4-2 g f }
  >>
  \appoggiatura <f' a>8-2-4\f( <e g>4) \appoggiatura <e g-4>8( <d f>4) \appoggiatura <d f-4>8( <c e>4)
  \tuplet 3/2 {e8\p-3( d) r} r4 r
  \tuplet 3/2 {d8\f-2( ef) r} r4 r
  \tuplet 3/2 {ds8\p-2( e) r} r4 \tuplet 3/2 {fs8\f-2( g) r}
  r4 \appoggiatura {c,32-1( d e) } d4.\trill( c16 d)
    \tuplet 3/2 {c8-1( e g-4)} g8.-3\trill( fs32 g) \tuplet 3/2 {r8 f-2( d)}
    \tuplet 3/2 {c-2( e-4 g,)} g8.\trill-3( fs32 g) \tuplet 3/2 {r8 f\p-5( <f, b d-4>)}
    <f b d-5>2( <e' c>8) r16
}

left = \relative c' {
  \global
  % Music follows here.
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
  c,2( c8) r16
}

\score {
  \new PianoStaff \with {
    instrumentName = "Klavier"
    shortInstrumentName = "Kl."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \repeat volta 2 {\right}
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \repeat volta 2 {\left} }
  >>
  \layout { }
}

\score {
  \new PianoStaff \with {
    instrumentName = "Klavier"
    shortInstrumentName = "Kl."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \repeat unfold 2 {\right}
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \repeat unfold 2 {\left} }
  >>
  \midi { }
}