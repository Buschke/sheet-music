\version "2.24.4"
\language "english"

\header {
  dedication = "Taufe Leopold Himmel"
  title = "Canon in D"
  subtitle = ""
  subsubtitle = ""
  instrument = "Orgel"
  composer = "Johann Pachelbel"
  arranger = \markup { "arr.: " \with-url "asdf" "Sven Buschke"}
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  copyright = "Satz: Sven Buschke"
  tagline = "n"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key d \major
  \time 4/4
  \tempo "Getragen" 4=100
}

right = \relative c'' {
  \global
  % Music follows here.
  <<{a1 fs}\\{<d fs>2 <cs e> <b d> <a cs>}>> d1 e\bar "||"
  fs'2 e d cs b a b cs\bar "||"
  <d fs> <cs e> <b d> <a cs> <g b> <fs a> <g b> <e cs'>\bar "||"
  <d' fs> <cs e> <b d> <a cs> <g b> <fs a> <<{b cs}\\{g1}>>\bar "||"
  a4( d e cs d fs a a,) b(g a a g d' cs a)\bar "||"
  <<{d8(cs d fs, a a cs4) d8(d fs4 a) a8(b) g(fs e g fs e d cs b a d4~d8 cs16 d cs4)}\\{fs,2 e4 g fs b cs b b g a2 g4~g8 fs e2}>>\bar "||"
  <fs d'>8(<e cs'><fs d'> fs <cs a'>4 ) <<{cs'4(d) fs(a) a8(b) g(fs e g fs e d cs b a d4~d8 cs16 d cs4)}\\{e,8 g fs4 cs'8 b cs2 b a g4~g8 fs e2}>>\bar "||"
  <<{d'8(fs16 g a8 fs16 g)<cs, a'>(a b cs d e fs g) fs8(d16 e fs8 fs,16 g)a(b a g a fs g a)}\\{a2 r}>> d8(b16 a g8 fs16 e) fs(e d e fs g a b) d8(b16 a) b8(e16 d) cs(b cs d e fs g e)\bar "||"
  <fs d'>8 fs16 g <d a'>8 fs16 g <cs, a'> cs d e fs e fs g
  <d fs>8 <b d>16 <cs e> <d fs>8 fs16 g <<{d4~d8 cs16 d}\\{a b a g a4}>>
  <g b>8 <b d>16 <a cs> <g b>8 <fs a>16 <e g> <fs a> <e g> <d fs> <e g> <fs a> <g b> <a cs><b d>
  <g b>8 <b d>16 <a cs> <b d>8 c16 <b d> <a cs> <b d> <cs e> d <cs e> <d fs> <b g'> <cs a'>\bar "||"
  <a fs'>8(<fs d'>16 <e cs'> <fs d'>8 fs) <cs a'>8(<a' cs>16 <b d> <cs e>8<a cs>)
  <<{b8(d16 e fs8 d)<a fs'>(<a fs'>16 <g e'> <fs d'>8<e cs'>)<g b>(<g b>16 <fs a><g b>8<a cs>)d(fs16 e d8 a <b g'><b d>16 <a cs> b8 b)a(a16 g <fs a>8 a)}\\{fs2 r2 r fs8 a~ a4 r g e d8 e}>>\bar "||"
  <<{a4(d8 fs fs g fs e d4) d8(d d e d cs b4) b8(b d2 d8 c b c <e, a>2)}\\{a1 b2 a g fs g d4 cs}>>\bar "||"
  <<{d'4 fs8 a a b a g fs4 d'~d c b2 d,4 a' b2 a}\\{a,2 d4 cs d fs fs8 g fs e d c b c a2 d cs}>>\bar "||"
  <a d a'><<{a4 e' d fs, fs'4. e8 d4 b'a d, e1}\\{a,4~a8 g fs2 fs4 a b2 <a d> <g b> <a cs>}>><a d fs>\fermata r\bar "|."
}

left = \relative c' {
  \global
  % Music follows here.
  r1 r <g b>2 <fs a> <b d> <a cs>\bar "||"
  <fs d'> <a cs> <fs b> <a cs> <<{d1}\\{g,2 fs}>> <e d'> <a cs>\bar "||"
  <fs d'> <a e'> <<{b cs g a d cs}\\{fs,1 d e}>>\bar "||"
  <<{d'4(fs a g) b,(d fs e) g,(b d a) b(g e a)}\\{a1 fs d s}>>\bar "||"
  <d' fs>2 <cs e> <b d> <a cs> <g b> <fs a> <g b> <e cs'>\bar "||"
  <<{d'2 cs4 e d2 fs4 d e2 d d a}\\{d2 a b fs g d g a}>>\bar "||"
  d,4 d' a a, b b' fs fs' g g, d' d, g g, a a'\bar "||"
  r8 a d fs r e, a cs r d, fs b r cs, fs a r b, d g r fs a d r e, b' d r e, a cs\bar "||"
  d4 fs e16 a, b cs d cs d e d4 fs,8 d'16 e fs g fs e fs8 a,
  r g-. b-. d-. r fs,-. a-. d-. r g,-. b-. d-. r e,-. a-. cs-.\bar "||"
  r a d4 r8 e, a4 d8 b16 cs d8 b d fs, a4 d d,8 a' r d e fs r g, b d cs e, a cs\bar "||"
  r fs,-. a-. d-. r e,-. a-. cs-. r d,-. fs-. b-. r d,-. fs-. a-. r d,-. g-. b-. r fs-. a-. d-. r e,-. b'-. d-. r e,-. a-. cs-.\bar "||"
  \clef treble r a d fs <<{fs4 e r8 d b'4~b a g2 g4 fs fs4. e8 e2}\\{fs8 a, e'4 r2 fs g4 d g8 a, fs'4 fs8 g, b4 e8 e, a cs}>>\bar "||"
  \clef bass <<{fs2 e d cs b4 d fs2 d }\\{fs8 a, d4 cs8 e, a4 d8 fs, b4 a2 b8 d, g4 d'8 fs, a4 b e,}>><a e'>2 <d a' d>\fermata r\bar "|."
}

pedal = \relative c {
  \global
  % Music follows here.
  d2 a b fs g d g a\bar "||"
  d a b fs g d g a\bar "||"
  d a b fs g d g a\bar "||"
  d a b fs g d g a\bar "||"
  d a b fs g d g a\bar "||"
  r1 r r r\bar "||" r r r r\bar "||"
  d2 a b fs g d g a\bar "||"
  d a b fs g d g a\bar "||"
  d a b fs g d g a\bar "||"
  d a b fs g d g a\bar "||"
  d a b fs g d g a\bar "||"
  d a b fs g d g a d\fermata r\bar "|."
}

\score {
  <<
    \new PianoStaff \with {
      instrumentName = "Orgel"
    } <<
      \new Staff = "right" \with {
        midiInstrument = "church organ"
      } \right
      \new Staff = "left" \with {
        midiInstrument = "church organ"
      } { \clef bass \left }
    >>
    \new Staff = "pedal" \with {
      midiInstrument = "church organ"
    } { \clef bass \pedal }
  >>
  \layout { }
  \midi { }
}
