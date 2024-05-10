\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Piano School"
  subsubtitle = "Volume 7"
  instrument = "Piano"
  composer = ""
  arranger = \markup {"Fingering: " \with-url "https://buschke.com" "Sven Buschke"}
  poet = ""
  meter = ""
  piece = ""
  opus = "No. 1"
  copyright = \markup {"© Fingering, 03.05.2023: " \with-url "https://buschke.com" "Sven Buschke"}
%  tagline = ""
  % Remove default LilyPond tagline
  tagline = ##f
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
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 1 / A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \major
%  \numericTimeSignature
  \time 6/8
  \tempo "Andante" 4=100
}

scoreARight = \relative c'' {
  \globalA
  % Music follows here.
  cs8.-2\p\(d16 cs8\) e4-4 e8-5
  b8.-2\(cs16 b8\) d4-4 d8 a4-1 a8 b4 b8-2
  
}

scoreALeft = \relative c' {
  \globalA
  % Music follows here.
  <<{e4-1 e8 e4-1 e8-1}\\{a,8.-5 b16 a8 cs4-3 cs8-2}>>
}

\bookpart {
\header {
  title = "Sonata - Andante Grazioso"
  composer = \markup {\with-url #"" "Wolfgang Amadeus Mozart"}
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1a, Vol. 7 / K. 331"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scoreARight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreALeft }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 2 / B
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalB = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreBRight = \relative c'' {
  \global
  % Music follows here.

}

scoreBLeft = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scoreBRight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreBLeft }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 3 / C
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \key a \minor
%  \numericTimeSignature
  \time 2/4
  \tempo "Allegretto" 4=100
}

scoreCRightA = \relative c'' {
  \partial 4
  b16-4\p( a gs a-1|
  c8-.-3) r d16-3( c b c|
  e8-.-4) r f16-4( e ds e-1|
  b'-4 a gs a b a gs a|
  c4->) a8-.-2 c-4|
  \appoggiatura {g32-2 a} b8-.-> <fs-2 a-4>-. <e g>-. <fs a>-.|
  \appoggiatura {g32-2 a} b8-.-> <fs-2 a-4>-. <e g>-. <fs a>-.|
  \appoggiatura {g32-2 a} b8-.-> <fs-2 a-4>-. <e g>-. <ds-2 fs-4>-.|
  e4--
}

scoreCRightB = \relative c'' {
  \partial 4
  <c-1 e-3>8-.\mp <d f>-.|
  <e-1 g-3>-. <e g>-. a16-4( g f e)|
  <<{d4->-4}\\{b8-2( g)}>>  <c-1 e-3>8-.\mp <d f>-.|
  <e-1 g-3>-. <e g>-. a16-4( g f e)|
  <b-2 d-4>4-> <a-1 c-.-3>8 <b d-.>|
  <c-1 e-3-.> <c e-.> f16-4( e d c)|
  <<{b4->-4}\\{gs8-2( e)}>> <a-1 c-.-3>8 <b d-.>|
  <c-1 e-3-.> <c e-.> f16-4( e d c)|
  <gs---2 b->-4>4 b16-4\p( a gs a-1|
  c8-.-3) r d16-3( c b c|
  e8-.-4) r f16-4( e ds e-1|
  b'\cresc-4 a gs a b a gs a|
  c4\sfz) a8-.-2\p b-.|
  c->-. b-. a-.-1 gs-.-2|
  a-. e-. f-.-4 d-.-2|
  c4-- <<{b8.\trill-2( a32 b| a4--)}\\{\magnifyMusic 0.63 {b32 c b c \tuplet 3/2 { b c b } a32 b|s4}}>>|
}

scoreCRightC = \relative c'' {
  \key a \major
  \partial 4
  <a a'>8-.\f <b b'>-.|
  <cs cs'>4->^\markup {\italic ten.} <a a'>8-. <b b'>-.|
  <cs cs'>->-. <b b'>-. <a a'>-. <gs gs'>-.|
  <fs fs'>-. <gs gs'>-. <a a'>-. <b b'>-.|
  <gs gs'>-. <e e'>-. <a a'>-. <b b'>-.|
  <cs cs'>4->^\markup {\italic ten.} <a a'>8-. <b b'>-.|
  <cs cs'>-. <b b'>-. <a a'>-. <gs gs'>-.|
  <fs fs'>-. <b b'>-. <gs gs'>-. <e e'>-.|
  <a a'>4^\markup {\italic ten.}
}

scoreCRightD = \relative c'' {
  \partial 4
  cs'16\p-3( d cs b|
  a b a gs-3 fs a gs fs|
  es fs gs es cs-2 ds es cs)|
  fs\<-4( es-1 fs gs a gs a-1 b|
  cs\> bs cs bs cs d cs b)|
  a\!( b a gs-3 fs a gs fs|
  e fs gs e cs-2 ds e cs|
  ds-3 e fs ds bs-1 cs ds bs|
  cs4--)
}

scoreCRightE = \relative c'' {
  e16-5\f( d cs b|
  a b cs d-1 e fs gs a)|
  a->-4( gs fs e) e-5( d cs b|
  a-1 b cs d-1 e fs gs a)|
  as8->-3( b-.-4) e,16-5( d cs b|
  a b cs d-1 e fs gs a)|
  a->-4( gs fs e) e-4( d cs b|
  cs-3 e a,-1 cs-4 b d gs,-2 b-4|
  a4--) cs'16\p( d cs b|
  a b a gs fs a gs fs|
  es fs gs es cs ds es cs|
  fs\<)(es fs gs a gs a b|
  cs-3\! bs cs bs cs\cresc bs cs as-2)|
  d-4\!\>( cs d cs d cs d cs|
  d cs b a gs-2 a b gs|
  a\p b cs fs,-2 es fs gs es|
  fs4--)
}

scoreCRightF = \relative c'' {
  \partial 4
  <a a'>8-.\f <b b'>-.|
  <cs cs'>4->^\markup {\italic ten.} <a a'>8-. <b b'>-.|
  <cs cs'>->-. <b b'>-. <a a'>-. <gs gs'>-.|
  <fs fs'>-. <gs gs'>-. <a a'>-. <b b'>-.|
  <gs gs'>-. <e e'>-. <a a'>-. <b b'>-.|
  <cs cs'>4->^\markup {\italic ten.} <a a'>8-. <b b'>-.|
  <cs cs'>-. <b b'>-. <a a'>-. <gs gs'>-.|
  <fs fs'>-. <b b'>-. <gs gs'>-. <e e'>-.|
  <a a'>4--^\markup {\italic ten.}
}

scoreCRightG = \relative c'' {
  \key a \minor
  \partial 4
  b16-4\p( a gs a-1|
  c8-.-3) r d16-3( c b c|
  e8-.-4) r f16-4( e ds e-1|
  b'-4 a gs a b a gs a|
  c4->) a8-.-2 c-4|
  \appoggiatura {g32-2 a} b8-.-> <fs-2 a-4>-. <e g>-. <fs a>-.|
  \appoggiatura {g32-2 a} b8-.-> <fs-2 a-4>-. <e g>-. <fs a>-.|
  \appoggiatura {g32-2 a} b8-.-> <fs-2 a-4>-. <e g>-. <ds-2 fs-4>-.|
  e4--
}

scoreCRightH = \relative c'' {
  \partial 4
  <c-1 e-3>8-.\mp <d f>-.|
  <e-1 g-3>-. <e g>-. a16-4( g f e)|
  <<{d4->-4}\\{b8-2( g)}>>  <c-1 e-3>8-.\mp <d f>-.|
  <e-1 g-3>-. <e g>-. a16-4( g f e)|
  <b-2 d-4>4-> <a-1 c-.-3>8 <b d-.>|
  <c-1 e-3-.> <c e-.> f16-4( e d c)|
  <<{b4->-4}\\{gs8-2( e)}>> <a-1 c-.-3>8 <b d-.>|
  <c-1 e-3-.> <c e-.> f16-4( e d c)|
  <gs---2 b->-4>4 b16-4\p( a gs a-1|
  c8-.-3) r d16-3( c b c|
  e8-.-4) r f16-4( e ds e-1|
  b'\cresc-4 a gs a b a gs a|
  c4\sfz) a8-.-2\p b-.|
  c->-. b-. a-.-1 gs-.-2|
  a-. e-. f-.-4 d-.-2|
  c4-- <<{b8.\trill-2( a32 b| a4--)}\\{\magnifyMusic 0.63 {b32 c b c \tuplet 3/2 { b c b } a32 b|s4}}>>|
}

scoreCRightI = \relative c'' {
  \key a \major
  \partial 4
  a16\f a' b, b'|
  cs, cs' r8 a,16 a' b, b'
  cs, cs' b, b' a, a' gs, gs'
  fs, fs' gs, gs' a, a' b, b'
  gs, gs' e, e' a, a' b, b'
  cs, cs' r8 a,16 a' b, b'
  cs, cs' b, b' a, a' gs, gs'
  fs, fs' b, b' gs, gs' e, e'
}

scoreCRightJ = \relative c'' {
  <a a'>4
}

scoreCRightK = \relative c'' {
  <a a'>4 <<{cs'8. cs16}\\{cs,4}>>
}

scoreCRightL = \relative c'' {
  <cs e a cs>2\arpeggio
  <cs e a cs>2\arpeggio
  d'16-4(cs) b-. cs-. d(cs) b-. cs-.
  <fs, a d>2
  \appoggiatura {d'16} <e, a cs>8 \appoggiatura {d'16} <e, a cs>8\appoggiatura {d'16} <e, a cs>8\appoggiatura {d'16} <e, a cs>8
  <<{b'4.(e8)}\\{<e, gs>2}>>
  <cs e a cs>\arpeggio
  <cs e a cs>\arpeggio
  d'16-4(cs) b-. cs-. d(cs) b-. cs-.
  <fs, a d>2
  \appoggiatura {d'16} <e, a cs>2
  \appoggiatura {cs'16} <e, gs b>8 \appoggiatura {cs'16} <e, gs b>8 \appoggiatura {cs'16} <e, gs b>8 \appoggiatura {cs'16} <e, gs b>8
  a4-3 \appoggiatura {e32 a} cs8.-4 cs16
  \appoggiatura {e,32 a} cs2
  \appoggiatura {e,32 a} cs2
  d16-4(cs) b-. cs-. d(cs) b-. cs-.
  d2
  \appoggiatura {d16} cs8 \appoggiatura {d16} cs8 \appoggiatura {d16} cs8 \appoggiatura {d16} cs8
  b4.(e8)
  <cs, e a cs>2\arpeggio
  <cs e a cs>2\arpeggio
  d'16-4(cs) b-. cs-. d(cs) b-. cs-.
  <fs, a d>2
  \appoggiatura {d'16} <e, a cs>2
  \appoggiatura {cs'16} <e, gs b>8 \appoggiatura {cs'16} <e, gs b>8 \appoggiatura {cs'16} <e, gs b>8 \appoggiatura {cs'16} <e, gs b>8
  <cs a'>4. <cs cs'>8
  <a a'>4. <e' e'>8
  <a, a'>4. <cs cs'>8
  <a a'> <cs cs'> <a a'> <e' e'>
  <a, a'>4 <a cs e a>
  <a cs e a> r
  \bar "|."
}

scoreCRightM = \relative c'' {
  <cs cs'>4->^\markup {\italic ten.} <a a'>8-. <b b'>-.|
  <cs cs'>->-. <b b'>-. <a a'>-. <gs gs'>-.|
  <fs fs'>-. <gs gs'>-. <a a'>-. <b b'>-.|
  <gs gs'>-. <e e'>-. <a a'>-. <b b'>-.|
  <cs cs'>4->^\markup {\italic ten.} <a a'>8-. <b b'>-.|
  <cs cs'>-. <b b'>-. <a a'>-. <gs gs'>-.|
  <fs fs'>-. <b b'>-. <gs gs'>-. <e e'>-.|
  <a a'>4--^\markup {\italic ten.}
}

scoreCRight = \relative c'' {
  \globalC
  % Music follows here.
  \repeat volta 2 { \scoreCRightA }
  \repeat volta 2 { \scoreCRightB }
  \repeat volta 2 { \scoreCRightC }
  \repeat volta 2 { \scoreCRightD }
  \repeat volta 2 { \scoreCRightE }
  \repeat volta 2 { \scoreCRightF }
  \repeat volta 2 { \scoreCRightG }
  \repeat volta 2 { \scoreCRightH }
  \repeat volta 2 { \scoreCRightI \alternative {{\scoreCRightJ} {\scoreCRightK}}}
  \scoreCRightL
}

scoreCLeftA = \relative c' {
  r4|
  a8-5( <c e>8-.) 8-. 8-.
  a( <c e>8-.) 8-. 8-.
  a-. <c e>8-. a-. <c e>-.
  a( <c e>8-.) 8-. 8-.
  e,-.-> <b' e>8-. 8-. 8-.
  e,-.-> <b' e>8-. 8-. 8-.
  e,-.-> <b' e>8-. b,-. b'8-.
  e,4--
}

scoreCLeftB = \relative c' {
  \partial 4
  r4|
  c,8-. c'-. e,-. e'-.|
  g,4 r|
  c,8-. c'-. e,-. e'-.|
  g,4 r|
  a,8-. a'-. c,-. c'-.|
  e,4 r|
  a,8-. a'-. c,-. c'-.|
  e,4 r|
  a8-5( <c e>8-.) 8-. 8-.|
  a( <c e>8-.) 8-. 8-.|
  a-. <c e>8-. a-. <c e>-.|
  f,( <a ds-.>\p) <a ds-.> <a ds-.>|
  e-. <a e'-.> d,-. <f b-.>|
  c-. <e a-.> d-. <f b-.>
  <e-4 a-.-1> <e a-.> <e-4 gs-.-2> <e gs-.>|
  <a, a'-->4
}

scoreCLeftC = \relative c' {
  \key a \major
  \partial 4
  r4|
  \appoggiatura {a,32 cs e} a8-.-> a-.-3 a-.-2 a-.-1
  \appoggiatura {a,32 cs e} a8-.-> a-.-3 a-.-2 a-.-1
  \appoggiatura {d,,32-5 fs-3 a} d8->-.-1 d-.-2 \appoggiatura {ds,32-5 fs-4 a} ds8->-.-1 ds-.-2
  \appoggiatura {e,32-5 gs-3 b} e8->-.-1 e-.-2 e-.-1 e-.-2
  \appoggiatura {a,32 cs e} a8-.-> a-.-3 a-.-2 a-.-1
  \appoggiatura {a,32 cs e} a8-.-> a-.-3 a-.-2 a-.-1
  \appoggiatura {d,,32 fs a} d8-.-> d-. \appoggiatura {e,32 gs b} e8-. e-.
  a,4^\markup {\italic ten.}
}

scoreCLeftD = \relative c' {
  \partial 4
  r4|
  fs,8-5( <a cs>-.) <a cs>-. <a cs>-.|
  gs-4( <b cs>-.) <b cs>-. <b cs>-.|
  fs8( <a cs>-.) <a cs>-. <a cs>-.|
  es8( <gs cs>-.) <gs cs>-. <gs cs>-.|
  fs8( <a cs>-.) <a cs>-. <a cs>-.|
  gs8( <cs e>-.) <cs e>-. <cs e>-.|
  gs8( <ds' fs>-.) <ds fs>-. <ds fs>-.|
  <cs e>4--
}

scoreCLeftE = \relative c' {
  r4|
  a8( <cs e>-.) <cs e>-. <cs e>-.|
  b-. <d e>-. <d e>-. <d e>-. |
  a( <cs e>-.) <cs e>-. <cs e>-.|
  e,( <gs d'>-.) <gs d'>-. <gs d'>-.|
  a( <cs e>-.) <cs e>-. <cs e>-.|
  b-. <d e>-. <d e>-. <d e>-.|
  a-.-1 fs-.-2 d-. e-.|
  a,-. a'-. r4|
  fs8( <a cs>-.) <a cs>-. <a cs>-.|
  gs( <b cs>-.) <b cs>-. <b cs>-.|
  fs( <a cs>-.) <a cs>-. <a cs>-.|
  cs,( <gs' cs>-.) <g cs>-. <fs cs'>-.|
  b,->( <fs' b>-.) <fs b>-. <fs b>-.|
  b,( <gs' b>-.) <gs b>-. <gs b>-.|
  cs,-. <fs a>-. cs-. <gs' b>-. |
  <fs a>4--
}

scoreCLeftF = \relative c' {
  \partial 4
  r4|
  \appoggiatura {a,32 cs e} a8-.-> a-.-3 a-.-2 a-.-1
  \appoggiatura {a,32 cs e} a8-.-> a-.-3 a-.-2 a-.-1
  \appoggiatura {d,,32-5 fs-3 a} d8->-.-1 d-.-2 \appoggiatura {ds,32-5 fs-4 a} ds8->-.-1 ds-.-2
  \appoggiatura {e,32-5 gs-3 b} e8->-.-1 e-.-2 e-.-1 e-.-2
  \appoggiatura {a,32 cs e} a8-.-> a-.-3 a-.-2 a-.-1
  \appoggiatura {a,32 cs e} a8-.-> a-.-3 a-.-2 a-.-1
  \appoggiatura {d,,32 fs a} d8-.-> d-. \appoggiatura {e,32 gs b} e8-. e-.
  a,4--^\markup {\italic ten.}
}

scoreCLeftG = \relative c' {
  \key a \minor
  r4|
  a8-5( <c e>8-.) 8-. 8-.
  a( <c e>8-.) 8-. 8-.
  a-. <c e>8-. a-. <c e>-.
  a( <c e>8-.) 8-. 8-.
  e,-.-> <b' e>8-. 8-. 8-.
  e,-.-> <b' e>8-. 8-. 8-.
  e,-.-> <b' e>8-. b,-. b'8-.
  e,4--
}

scoreCLeftH = \relative c' {
  \partial 4
  r4|
  c,8-. c'-. e,-. e'-.|
  g,4 r|
  c,8-. c'-. e,-. e'-.|
  g,4 r|
  a,8-. a'-. c,-. c'-.|
  e,4 r|
  a,8-. a'-. c,-. c'-.|
  e,4 r|
  a8-5( <c e>8-.) 8-. 8-.|
  a( <c e>8-.) 8-. 8-.|
  a-. <c e>8-. a-. <c e>-.|
  f,( <a ds-.>\p) <a ds-.> <a ds-.>|
  e-. <a e'-.> d,-. <f b-.>|
  c-. <e a-.> d-. <f b-.>
  <e-4 a-.-1> <e a-.> <e-4 gs-.-2> <e gs-.>|
  <a, a'-->4
}

scoreCLeftI = \relative c' {
  \partial 4
  \key a \major
  r4|
  \appoggiatura {a,32\sustainOn cs e} a8-.-> a-.-3 a-.-2\sustainOff a-.-1
  \appoggiatura {a,32\sustainOn cs e} a8-.-> a-.-3\sustainOff a-.-2 a-.-1
  \appoggiatura {d,,32-5\sustainOn fs-3 a} d8->-.-1 d-.-2\sustainOff \appoggiatura {ds,32-5\sustainOn fs-4 a} ds8->-.-1 ds-.-2\sustainOff
  \appoggiatura {e,32-5\sustainOn gs-3 b} e8->-.-1 e-.-2\sustainOff e-.-1 e-.-2
  \appoggiatura {a,32\sustainOn cs e} a8-.-> a-.-3 a-.-2\sustainOff a-.-1
  \appoggiatura {a,32\sustainOn cs e} a8-.-> a-.-3\sustainOff a-.-2 a-.-1
  \appoggiatura {d,,32\sustainOn fs a} d8-.-> d-.\sustainOff \appoggiatura {e,32\sustainOn gs b} e8-. e-.\sustainOff
}

scoreCLeftJ = \relative c' {
  a,4--\sustainOn
  %^\markup {\italic ten.}
}

scoreCLeftK = \relative c' {
  \appoggiatura {a,32\sustainOn cs e}
  a8-.-> a-.-3 a-.-2\sustainOff a-.-1

  %a,4--\sustainOn
  %^\markup {\italic ten.}
}

scoreCLeftL = \relative c' {
  \appoggiatura {a,32\sustainOn cs e} a8-.-> a-.-3 a-.-2\sustainOff a-.-1
  \appoggiatura {a,32\sustainOn cs e} a8-.-> a-.-3\sustainOff a-.-2 a-.-1
  \appoggiatura {a,32\sustainOn cs e} a8-.-> a-.-3 a-.-2\sustainOff a-.-1
  \appoggiatura {d,,32\sustainOn fs a} d8-.-> d-.-3 d-.-2\sustainOff d-.-1
  \appoggiatura {a32\sustainOn cs e} a8-.-> a-.-3 a-.-2\sustainOff a-.-1
  \appoggiatura {e,32\sustainOn gs b} e8-.-> e-.-3 e-.-2\sustainOff e-.-1
  \appoggiatura {a,32\sustainOn cs e} a8-.-> a-.-3 a-.-2\sustainOff a-.-1
  \appoggiatura {a,32\sustainOn cs e} a8-.-> a-.-3 a-.-2\sustainOff a-.-1
  \appoggiatura {a,32\sustainOn cs e} a8-.-> a-.-3 a-.-2\sustainOff a-.-1
  \appoggiatura {d,,32\sustainOn fs a} d8-.-> d-.-3 d-.-2\sustainOff d-.-1
  \appoggiatura {a32\sustainOn cs e} a8-.-> a-.-3 a-.-2\sustainOff a-.-1
  \appoggiatura {e,32\sustainOn gs b} e8-.-> e-.-3 e-.-2\sustainOff e-.-1
  a16-5 e' cs e a,\p e' cs e a, e' cs e a, e' cs e
  a, e' cs e a, e' cs e 
  a, e' cs e a, e' cs e 
  a, fs'-1 d-2 fs a, fs' d fs
  a, e' cs e a,-5 e' cs e 
  e, e' b e e, e' b e
  \appoggiatura {a,,32\sustainOn cs e} a8-.-> a-.-3 a-.-2\sustainOff a-.-1
  \appoggiatura {a,32\sustainOn cs e} a8-.-> a-.-3 a-.-2\sustainOff a-.-1
  \appoggiatura {a,32\sustainOn cs e} a8-.-> a-.-3\sustainOff a-.-2 a-.-1
  \appoggiatura {d,,32\sustainOn fs a} d8-.-> d-.-3 d-.-2\sustainOff d-.-1
  \appoggiatura {a32\sustainOn cs e} a8-.-> a-.-3 a-.-2\sustainOff a-.-1
  \appoggiatura {e,32\sustainOn gs b} e8-.-> e-.-3\sustainOff e-.-2 e-.-1
  \appoggiatura {a,32\sustainOn cs e} a8-.-> a-.-3 a-.-2\sustainOff a-.-1
  \appoggiatura {a,32\sustainOn cs e} a8-.-> a-.-3 a-.-2\sustainOff a-.-1
  \appoggiatura {a,32\sustainOn cs e} a8-.-> a-.-3 a-.-2\sustainOff a-.-1
  \appoggiatura {a,32\sustainOn cs e} a8-.-> a-.-1\sustainOff
  \appoggiatura {a,32\sustainOn cs e} a8-.-> a-.-1\sustainOff
  a,4\sustainOn <a cs e a>\sustainOn
  <a cs e a>\sustainOn r\sustainOff
  \bar "|."
}

scoreCLeft = \relative c' {
  \globalC
  % Music follows here.
  \repeat volta 2 { \scoreCLeftA }
  \repeat volta 2 { \scoreCLeftB }
  \repeat volta 2 { \scoreCLeftC }
  \repeat volta 2 { \scoreCLeftD }
  \repeat volta 2 { \scoreCLeftE }
  \repeat volta 2 { \scoreCLeftF }
  \repeat volta 2 { \scoreCLeftG }
  \repeat volta 2 { \scoreCLeftH }
  \repeat volta 2 { \scoreCLeftI \alternative {{\scoreCLeftJ} {\scoreCLeftK}}}
  \scoreCLeftL
}

\bookpart {
\header {
  title = "Sonata A-Dur - Alla turca - Allegretto"
  composer = \markup {\with-url #"" "Wolfgang Amadeus Mozart"}
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1c, Vol. 7 / K. 331"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scoreCRight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreCLeft }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 4 / D
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalD = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreDRight = \relative c'' {
  \global
  % Music follows here.

}

scoreDLeft = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scoreDRight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreDLeft }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 5 / E
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalE = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreERight = \relative c'' {
  \global
  % Music follows here.

}

scoreELeft = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scoreERight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreELeft }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 6 / F
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalF = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreFRight = \relative c'' {
  \global
  % Music follows here.

}

scoreFLeft = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scoreFRight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreFLeft }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 7 / G
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalG = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreGRight = \relative c'' {
  \global
  % Music follows here.

}

scoreGLeft = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scoreGRight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreGLeft }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 8 / H
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalH = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreHRight = \relative c'' {
  \global
  % Music follows here.

}

scoreHLeft = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scoreHRight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreHLeft }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 9 / I
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalI = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreIRight = \relative c'' {
  \global
  % Music follows here.

}

scoreILeft = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scoreIRight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreILeft }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 10 / J
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalJ = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreJRight = \relative c'' {
  \global
  % Music follows here.

}

scoreJLeft = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scoreJRight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreJLeft }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 11 / K
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalK = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreKRight = \relative c'' {
  \global
  % Music follows here.

}

scoreKLeft = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scoreKRight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreKLeft }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 12 / L
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalL = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreLRight = \relative c'' {
  \global
  % Music follows here.

}

scoreLLeft = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scoreLRight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreLLeft }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 13 / M
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalM = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreMRight = \relative c'' {
  \global
  % Music follows here.

}

scoreMLeft = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scoreMRight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreMLeft }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 14 / N
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalN = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreNRight = \relative c'' {
  \global
  % Music follows here.

}

scoreNLeft = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scoreNRight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreNLeft }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 15 / O
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalO = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreORight = \relative c'' {
  \global
  % Music follows here.

}

scoreOLeft = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scoreORight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreOLeft }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 16 / P
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalP = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scorePRight = \relative c'' {
  \global
  % Music follows here.

}

scorePLeft = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scorePRight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scorePLeft }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 17 / Q
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalQ = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreQRight = \relative c'' {
  \global
  % Music follows here.

}

scoreQLeft = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scoreQRight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreQLeft }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nummer 18 / R
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalR = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreRRight = \relative c'' {
  \global
  % Music follows here.

}

scoreRLeft = \relative c' {
  \global
  % Music follows here.

}

\bookpart {
\header {
  title = ""
  composer = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "Suzuki No. 1, Vol. 2"
  tagline = ""
}
  \score {
    \new PianoStaff \with {
      instrumentName = "Klavier"
      shortInstrumentName = "Kl."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } \scoreRRight
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } { \clef bass \scoreRLeft }
    >>
    \layout { }
    \midi { }
  }
}
