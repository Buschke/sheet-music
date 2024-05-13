\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = ""
  subtitle = "Suzuki Piano School"
  subsubtitle = "Volume 6"
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
  \key c \major
%  \numericTimeSignature
  \time 4/4
  \tempo "Allegro" 4=130
}


%{ Abreviations
  Suffixes rh = right hand
           lh = left hand
  Prefixes pt = principal theme
           st = secondary theme
           cl = close
           dv = development
           cd = coda
           mt = middle theme
%}

#(define afterGraceFraction (cons 15 16))

%%% Right Hand

ptrha = \relative c'' {
  c2-1(\mp e4-3 g-5
  b,4.-1_> c16 d c4) r4
  a'2-3(_\accent g4\< c\!
  g-3_\accent f8\trill\> e16 f e4)\! r4 % \break

  a,8\p\<\( b16 c d-1 e f g\!  a\> g f e d c-4 b a\!
  g8\< a16 b c-1 d e f\!  g\> f e d c \tag #'first b-4 \tag #'second b-3 a g\!
  f8\< g16 a b-1 c d e\!  f\> e d c \tag #'first {b a-4 g f\!} \tag #'second {b-3 a g f-2\!}

  e8\< f16 g  a-1 b c d\!  e\> d c b a \tag #'first g-4 \tag #'second g-3 f e\!\)
}

ptrhb = \relative c'' {
  b8->\f( g')  e-.-3 c-.-1  d-2( g)  e-. c-.
  d4-. <b d g>-. g-.-2 r4
}

ptrh = {
  \ptrha

  \relative c' {
    d8\p\( e16 f  g-1 a b cs    d a\< b cs d-1 e f g\!
    a b c! b  a g f-3 e  f g a g  f e d c!-2 \)
  }

  \ptrhb
}

strha = \relative c' {
  r1
  d''8\mp( b) g4.( a16 b a8 g)
  \acciaccatura a8 g8.\trill-3( fs16-.-2) fs4-3 r2
  d'8\mp( b) g4.( a16 b a8 g)

  \acciaccatura a8 g8.\trill-3( fs16) fs4 r2
}

strhb = \relative c'' {
  d'4->-5 r16 d16-5 b-4 g-2 e4-1 r16 e16(-1 g-2 e)
  c'4-> r16 c( a fs d4)
}

strhc = \relative c'' {
  r16 d16( fs d)
  % 20
  b'4->-5 r16 b( g e c4) r16 c( e c
  a'4->-5) r16 a-5( fs-4 d-2 b4)  r16 g'-5( d-3 b-2
}

strh = {
  \strha
  \strhb
  \strhc
  \relative c'' {
    a2\p) \acciaccatura b8-2 c4-.-3\< \acciaccatura ds8-2 e4-.-3\!

    \acciaccatura { gs8-2 } a4.-> b32( a gs a c8-5 a-3) c( a)
    b-3(\f g-1) d'2-5(\sf c16 b a g)

    \phrasingSlurDown
    \acciaccatura b8-3 \afterGrace a1 \startTrillSpan \( ( {g16 [ a ] )
							    \stopTrillSpan}
     g4\) g16-2( d g b-4 d-5 b-4 g b-4 c-5 a-3 fs-2 a-4
     g4-.) g,16-2( d g b-4 d_> b-4 g b-4 c-> a-3 fs-2 a-4
     g4-.) <d' b'>-. <b g'-4>-. r4
   }
}

dvrh = \relative c'' {
  g4-. g'16-2( d g bf-3 d-5 bf-3 g bf c-5 a-3 fs-2 a-4
  g4-.) g,16-2_( d g bf-3 d bf-3 g bf  c-5 a-3 fs-2 a-4
  g4-.) r r16 g'-2 bf-4 a g f e-4 d

  cs4-.\sf r r16 cs'-3( e d  cs bf a g-3
  f4\sf)  d16-2( a-1 d f-4 a f-4 d-2 f g-5 e-3 cs-2 e-4
  d4-.) d,16-2 a d f-4  a f d-2 f  g-5 e-3 cs e

  r16 d-1( e f  g-1 a b cs d4-.\sf) r4
  r16 b-1( c d e-1 fs gs a b4-.\sf) r
  r16 a-1( e'-5 d c b a g f4-.\sf) r

  r16 g-1( d'-5 c b a g f-3 e4-.\sf) r
  r16 f-1( c'-5 b a g f e-3 d4-.\sf) r
  r16 e-1( b'-5 a gs f e d-3 c4-.\sf) r
  \break
  r16 bf-3 d c  bf a g f-3  e\> f-1 g a  bf c-1 d e\!
}

ptirh = \relative c'' {
  a'4-. r r <c, a'-5>-.
  <c g'-4>-. r r <c g'-5>-.
  <c f-4>-. r r <b f'-5>-.
  <c-2 e-4>-. r r <c e>-.

  d16-5\( d, e f  g a b cs  d a-1 b cs  d-1 e f g-1
  a b c b  a g f e  f g a g  f e d c-2\)

  \ptrhb
}

stvrh = {
  \transpose c f, { \strhb }
  \transpose d g {
    \strhc
     \relative c'' {
       a2\p) \acciaccatura gs8-2 a4-. \acciaccatura gs8 a4-.
     }
  }
  \relative c''' {
    a2\p \acciaccatura gs8-2 a4-. \acciaccatura gs8 a4-.

    g8-1\f( a16 b c-1 d e d c b-4 a g  f e-3d c)

    \phrasingSlurDown
    \acciaccatura e8-3 \afterGrace d1 \startTrillSpan \( ({c16[ d])
							   \stopTrillSpan}
    \phrasingSlurUp
    c4-.\) c16-2\( g_> c e-4  g e-4 c e-4  f_> d-3 b d-3 c4-.
    c,16-2 g-> c e-4  g e-4 c e-4  f-> d-3 b d-3\)
    c4-. <e'-1 g-2 c-5>-. c-2 r

  }
}


%%% Left Hand

ptlha = \relative c'' {
  c,8-5(\p g'-1 e-3 g  c,  g' e g)
  d-4 g-1 f-2 g  c,-5 g'-1 e-3 g
  c, a'-1 f-2 a  c, g'-1 e-3 g
  b,-5 g'-1 d-3 g  c,-4 g'-1 e-2 g

  f4 r4 r4 \clef bass <f, c'>_4-.
  <e c'>-. r4 r4 <e c'>_4-.
  <d c'>-. r4 r4 <d b'>_4-.
}

ptlhb = \relative c' {
  g,16-5\( b-4 d-2 g  g,-5 c-3 e-2 g  g, b d g  g, c e g
  g,4-.\) g'-. g,-. r
}

ptlh = {
  \ptlha
  \relative c {
    <c c'>-. r4 r4 <c-5 e-3>-.
    <f-2 a-1>1
    f4._3( g8 a4. fs8_2)
  }
  \ptlhb
}

stlha = \relative c {
  cs'16->\p-2( d cs d  cs d cs d  c_2-> d c d  c d c d)

  b->_3 d b d \repeat unfold 3 { b d b d }
  c-2\mp d b-3 d  a-4 d b-3 d  c d b d  c d a d
  \repeat unfold 4 { b d b d }

  c d b d  a d b d  c d b d  c d a d
}

stlhb = \relative c' {
  \clef treble r16 b-5( d-4 g-2 b4) r16 c,-5( e-4 g-2 c4)
  r16 a,-5( c-4 fs-2 a4) r16 b,-5( d-4 fs-2 b4)
}

stlhc = \relative c' {
  % 20
  r16 g-5( b-4 e-2 g4) r16 a,-5( c-4 e-2 a4)
  r16 fs,-5( a-4 d-2 fs4) r16 g,-5( b-4 d-2 g4)
}

stlh = {
  \stlha
  \stlhb
  \stlhc
  \relative c' {
    \clef treble \repeat unfold 16 <c e>8-.

    d16_5 b'_1 g_2 b \repeat unfold 3 { d, b' g b }
    \repeat unfold 4 { d, c' fs, c' }

    <g-2 b-1>4 r r <a c d,>
    <g-2 b-1> r r \clef bass <d, a' c>
    <g b> <g g,> <g g,> r
  }
}

dvlha = \relative c' { r16 g_5( a bf  c d e-3 fs g4-.\sf) r }

dvlh = \relative c {
  <g g'>4 r r \clef treble <d'' a' c>(
  <g-3 bf-1>) r r \clef bass <d, a' c>
  \dvlha
  \transpose c d \dvlha
  <d, d'>4 r r \clef treble <a'' e' g>(
  <d-3 f-1>4-.) r r \clef bass <a, e' g>(

  <d_5 f_4>4-.) r r16 d'-3( f e d c-1 b a
  gs4-.)\sf r r16 gs-3( b a gs f!-1 e d
  c4-.)\sf r \clef treble r16 d'-5( a'-1 g f e-1 d c
  \break

  b4-.\sf) r r16 c-5( g' f  e d-1 c b
  a4-.\sf) r r16 b-5( f' e  d c-1 b a
  \clef bass gs4-.\sf) r r16 a-3( c-1 b  a g-1 f e

  d2\sf) <c g' bf>\sf
}

ptilha = \relative c {
  f8-5 g16 a  bf c d-3 e f e d-1 c  bf a-1 g f
}

ptilh = \relative c {
  <f f'>4-. r4 r2
  f8-5\( g16 a  bf c d-3 e f e d-1 c  bf a-1 g f  % \ptilha
  e8 f16 g  a b-4 c d  e d c b  a-1 g f e
  d8 e16 f  g a b-3 c  d c b a  g-1 f e d
  \transpose f c { \ptilha }

  \once \set fingeringOrientations = #'(right)
  <f-2 a-1>1\p\)
  f4.-3 g8 a4. fs8-2

  \ptlhb
}

stvlh = {
  \transpose c f, { \stlhb }
  \transpose d g { \stlhc }
  \relative c' {
    r8 \repeat unfold 7 { <f a>8-. }
    \clef bass r8 \repeat unfold 7 { <fs, c' ef>8-. }
    \repeat unfold 4 { g16-5 e' c-2 e }
    \repeat unfold 4 { g,16 f' b, f' }
    <c-2 e-1>4-. r r <g  d' f>(
    \slurDown
    <c_3 e_1>-.) r r <g, d' f>(
    <c e>) <c c'>-. <c c,> r
  }
}


scoreARight = \relative c'' {
  \globalA
  % Music follows here.
        \override Fingering #'avoid-slur = #'inside
      \keepWithTag #'first
        \repeat volta 2 { \ptrh \strh } \break
      \repeat volta 2 {
	\dvrh
	\phrasingSlurUp
	\keepWithTag #'second
	\transpose c f { \ptrha }
	\ptirh
	\transpose d g, { \strha }
	\stvrh
      }

  \override NoteHead.color=#blue
  \repeat volta 2 {
    \phrasingSlurDotted\=1\(c2-1\mp^\markup{"'Meine Noten' ab hier"} e4-3 g \phrasingSlurSolid \=2\(b,4.-1
    c16 d\=2\) c4 \=1\) r
    a'2-3 g4-2 c <<{\override NoteHead.color = #red \override NoteHead.font-size = #-3 s4 g32 f g f e16 f}\\{g4-3\(f8\trill e16f\)}>> e4-2 r
    a,8-1 b16 c d-1 e f g a g f e d c-4 b a
    g8-1 a16 b c-1 d e f g f e d c b-4 a g
    f8 g16 a b-1 c d e f e d c b a-4 g f
    e8 f16 g a-1 b c d e d c b a g-4 f e
    d8 e16 f g-1 a b cs d a-1 b cs d-1\< e f g a b c b a g-1 f-3 e f g a g f e d-1 c-2
    b8\f g' e c d g e c
    d4 <b d g> g-2 r
    r1
    d''8-5\(b\) g4.-1\(a16 b a8\) g-.
    <<{\override NoteHead.color = #red \override NoteHead.font-size = #-3 a32-3 g-1 a g~ g16 fs-2}\\{g8.\trill\(fs16\)}>> fs4 r2
    d'8\(b\) g4.\(a16 b a8\) g-.
    <<{\override NoteHead.color = #red \override NoteHead.font-size = #-3 a32-3 g-1 a g~ g16 fs-2}\\{g8.\trill\(fs16\)}>> fs4 r2\<
    d'4\f
    r16 d b-4 g-2
    e4
    r16 e-1 g-2 e
    c'4
    r16 c a-4 fs-2
    d4
    r16 d-1 fs-2 d
    b'4
    r16 b g-4 e-2
    c4
    r16 c-1 e-2 c
    a'4
    r16 a fs-4 d-2
    b4
    r16 g' d-3 b-2
    a2\p \appoggiatura {b16-2} c4-3 \appoggiatura {ds16-2} e4-3 \appoggiatura {gs16-2} a4.-3
    b32-4\(a gs a-1\) c8-4(a-2) c(a)
    b-3(g) d'2-5 c16 b a g
    <<{\afterGrace 31/32 a1-23\startTrillSpan {g32-1[a-3]\stopTrillSpan}}\\{\override NoteHead.color=#red \override NoteHead. font-size=#-3 g a g a g a g a g a g a g a g a g a g a g a g a g a g a g a g a}>>
    g4-2 g16-2\f d g b-4 d-5 b-3 g-1 b-4 c-5 a-3 fs-2 a-4
    g4-3
    g,16-2 d g b d b g b c a fs a
    g4-3 <d'-1 b'-5> <b-1 g-5> r
  }
  \repeat volta 2 {
    g4\f g'16-2 d g bf-3 d-5 bf-3 g-1 bf-4 c-5 a-3 fs-2 a-4
    g4-3 g,16-2 d g bf d bf g bf c a fs a
    g4-3 r r16 g'-1 bf-3 a g f-3 e d-1
    cs4-2 r r16 cs'-3 e-1 d cs bf a-1 g-3
    f4 d16-2 a d f-4 a-5 f-3 d-1 f-4 g-5 e-3 cs-2 e-4
  }

}

scoreALeft = \relative c' {
  \globalA
  % Music follows here.
  \override Fingering #'avoid-slur = #'inside
      \repeat volta 2 { \ptlh \stlh }
      \repeat volta 2 {
	\dvlh
	\clef treble \transpose c f { \ptlha }
	\ptilh
	\clef treble \transpose c f { \stlha }
	\stvlh
      }
  \override NoteHead.color=#blue
  \repeat volta 2 {
    \clef treble
    c8-5 g' e g c, g' e g
    d-4 g f g c, g' e g
    c, a' f-2 a c, g' e g
    b, g' d-3 g c, g' e g
    f4 r r \clef bass <f,-5 c'-1>
    <e-5 c'-1> r r <e-5 c'-2>
    <d c'> r r <d b'>
    <c c'> r r <c-5 e-3>
    <f-2 a-1>1
    f4.-3 g8 a4. fs8-2
    g,16 b-4 d-2 g g, c-3 e-2 g g, b d g g, c e g
    g,4 g' g, r
    cs'16-3\p d-1 cs d cs d cs d c d c d c d c d
    b-3 d b d b d b d b d b d b d b d
    c-2 d b d a-4 d b d c d b d c d a d
    b-3 d b d b d b d b d b d b d b d
    c-2 d b d a-4 d b d c d b d c d a d
    \clef treble
    r16 b d-4 g b4
    r16 c, e-4 g c4
    r16 a, c-4 fs a4
    r16 b, d-4 fs b4
    r16 g, b-4 e g4
    r16 a, c-4 e a4
    r16 fs, a-4 d fs4
    r16 g, b-4 d g4
    <c,-4 e-2>8 8 8 8 8 8 8 8
    8 8 8 8 8 8 8 8
    d16-5 b' g-2 b d,-5 b' g-2 b
    d,16-5 b' g-2 b d,-5 b' g-2 b
    d,-5 c' fs,-3 c' d, c' fs,-3 c' d, c' fs, c' d, c' fs, c'
    <g-4 b-2>4 r r <d a' c>
    <g-3 b-1> r r
    \clef bass
    <d, a' c> <g-1 b> <g, g'>4 4 r
  }
  \repeat volta 2 {
    <g g'>4 r r \clef treble <d'' a' c> <g-3 bf-21> r r \clef bass <d, a' c>
    r16 g,-5 a bf c d-1 e-3 fs g4 r
    r16 a,-5 b cs d e-1 fs-3 gs a4 r
    <d,, d'> r r \clef treble <a'' e' g>
  }

}

\bookpart {
  \header {
    title = "Sonata in C-Dur, 1. Satz - Allegro"
    composer = \markup {\with-url #"" "Wolfgang Amadeus Mozart"}
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 4, Vol. 6 / K 545"
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
  \key g \major
%  \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=80
}

%{ Abreviations
  Suffixes rh = right hand
           lh = left hand
  Prefixes pt = principal theme
           st = secondary theme
           cl = close
           dv = development
           cd = coda
           mt = middle theme
%}

#(define afterGraceFraction (cons 15 16))

%%% Right Hand

ptrh = \relative c'' {
  b2-2\p\( d16-4 c b c
  d8.-> b16-2 g4-.\) r4
  g'4.->\(  a16 g fs e d cs

  d8.-> b16-2 g4-.\) r4
  c8.-5->( a16  fs8)(\< a-3 b-1 c)\!
  d8.( b16-4 g'4-5) r4

  a16->-4( g fs g   fs e ds-3 e  d c b c-3)
  b8.-2( c32 b  a8) d-5( cs c
  b4\mp) ~  b16\( g b-2 d-4  c a c e
}

ptendrh = \relative c'' {
  d8. b16-2 g-.\) g-. a-.( b-.  c-. d-. e-. fs-.)
  g-4\mf\( fs g fs a_5-> g fs g fs e d cs-3
  d->-4\mp b-2 d b g4-.\) r4

  c16-5( a-3 c a fs)\( a gs a-1  as b-3 c-1 cs
  d b-1 d-2 b g'4-.->\) r16 b-5( fs-2 g
  ds-2 e c-2 a  g8.) g16-3(  b-5-> a g a)
}

ptlastrh = \relative c'' {
  <a fs>4( g) r
}


ptbrh = \relative c'' {
  d4-3\p\( ~  d16 cs e-4 d-1  g-4 fs e d
  cs8.-2 d16 e4\) r
  e-3_>\( ~ e16 ds fs e-2  a->-5 g fs e

  d8.-2\) e16 fs4 r
  fs_>( ~ fs16 e g e  b'->-5 a g fs)
  e4_>-1( ~ e16 ds fs e a g fs e)

  e d d8  d16 a d fs <fs c> e d e
  <e-4 cs-2>4->( d16-1\p)\( ds e ds fs e d c
  b4-2\p ~ b16 g b d c a c e\)
}

strh = \relative c'' {
  bf4-2\p ~ bf16\( a c bf bf a g fs
  g8.-1 bf16-3 d4-.-5\) r
  d-3 ~ d16\( cs ef d  d-4 c bf a

  bf8.-1 d16-3 g4-.-5\) r
  f-1 ~ f16\( a-3 c-5 bf a g f ef-2
  d4 ~ d16 g-2 bf-4 a g f ef-3 d

  b-1 c ef-3 g  bf,8.-2\mp\)  bf16( d c bf c)
  <c a>4\( bf16-2 a c-3 bf d c ef-3 d-1
  f4\) ~ f16\( af-4 g f-1 ef-4 d c b

  c8. ef16-3 g4\) r
  g-3 ~ g16( fs a g bf-5 cs,-1 bf' cs,)
  cs4-2( d r)

  ef-2-> ~ ef16\( c a'-4 fs-2 c'-5 a-2 ef'-5 fs,-1
  d'4-5\) ~ d16( a-3 bf fs-2 g-4 cs,-2 d-3 bf-4)
  bf-2->( a c-3 ef-5  g,8.-1\p) g16-2( bf-4 a g a)

  <fs-2 a-4>4\(  g16 fs g gs  a gs a as\)
}

cdrh = \relative c'' {
  g16-3\p\( fs a-4 g-1  b-3 a c-4 b-1  d-3 c-2 e-4 d-1
  f4.-3\mf  g16 a g f e d
  ds4 e\) r16  g\mf\( fs e

  d b a-2 e'-5  g,8.-1\p\) g16-3( <fs-2 b-5>-> a g a)
  g\(\< fs a g  b a c b  d c e d\!
  f4.\f  g16 a g f e d
  e4-.\) fs-.->  g-.->

  g,4.-3\mf(  a32 g fs g  <fs b>8 a)
  g16-3 d b' b  b g d' d  d b a b
  g-2 d b' b  b g d' d  d b a b
  g8 r8 <g b,> r8 r4

}



%%% Left Hand

ptlh = \relative c' {
  \clef bass
  g16-5\pp d'-1 b-3 d  g, d' b d  a-4 d-1 c d
  \repeat unfold 3 { g, d' b d }
  g, e'-1 c-2 e    g, e' c e    g, cs-2 as-3 cs

  \repeat unfold 3 { g d' b d }
  \repeat unfold 3 { a d c d }
  g,\( d' b d   e,-5 b'-1 g b  b,-5 g'-1 d-3 g

  <c,-5 e-3>4( g'-1) e\)
  <d-4 g-1>4( fs) r
  g16\p d' b d g, d' b d  g, d' b d
}

ptendlh = \relative c' {
  \repeat unfold 3 { g d' b d }
  g,\mp e' c e  g, e' c e   g, cs as cs
  g\p d' b d \repeat unfold 2 { g, d' b d }

  \repeat unfold 3 { a d c d }
  g, d' b d   e, b' g b  b, g' d g
  c,-5 a'-1 e-3 a  d, b'-1 g-2 b  d, c' a c
}

ptlastlh = \relative c' {
  <c-1 g-4>4( b) r
}

ptblh = \relative c' {
  \clef treble
  d16-\pp-5( a' fs a  d,16 a' fs a  d,16 a' fs a )
  e-4 a g a  \repeat unfold 2 { e a g a }
  cs,-5 a' g a  \repeat unfold 2 { cs, a' g a }

  d,-4 a'-1 fs-2 a  cs,-5 a' d, a'  b,-5 g'-1 d-3 g
  a,-5 fs'-1 d-2 fs  g,-5 e'-1 cs-2 e  fs,-5 d'-1 a-3 d
  b-5 g' e g a,-5 fs' ds fs g, e' b e

  a,->-5\mf fs' d fs  a, fs' d fs  a, g' d g
  <d g>4 fs r
  \clef bass
  g,16 d' b d  g, d' b d  a d c d
}

stlh = \relative c' {
  \clef bass
  g16-4 d' bf d   g, d' bf d   g,-5 ef' bf ef
  \repeat unfold 3 { g, d' bf d }
  \repeat unfold 3 { fs, d' a d }

  g,-4 d' bf d   g, d' bf d   g,-5 ef' bf ef
  \repeat unfold 3 { a,-5 f' c f }
  bf,-4 f' d f  g, d' bf d  d, bf' f bf

  ef,-5 c' g c  f,-5\p d' bf d  f, ef' a, ef'
  <ef bf>4 d r4
  af16-5 f' c f  g, d' b d  f, d' g, d'

  ef,-5 c' g c  d, b' f b  c, c' ef,-4 c'
  cs,-5 bf' e, b'  d,-5 b' g b  ef,-4 b' g b
  d,-5\p bf' g bf d,-5 a'-1 fs-2 a  d,-4 a'-1 fs-2 a

  c,->-5 a'-1 fs-2 a   c, a' fs a  c, a' fs a
  bf,->-5  g'-1 d-2 g  bf, g' d g   bf, g' d g
  c,-5\pp a'-1 ef a  d,-5 a'-1 g-2 a  d, c' fs, c'

  <g c>4 bf r
}

cdlh = \relative c' {
  \clef bass
  <b g>4 r4 r4
  \clef treble
  a16 f' c f  a, f' c f  b, g' d g
  \repeat unfold 3 { c, g' e g }

  b, d c e  \clef bass  d, b' g b  d, c' a c
  <g b>4 r r
  a,16\mf f' c f  b, g' d g  g, g' b,-4 g'
  c,-5 g' e g  c, g' ef g  cs, bf' e, bf'

  d, b' g b  d, b' g b  d, c' a c
  <g b>4 r r8 <c d,>(
  <g-2 b-3>4) r r8 <c d,>(
  <g b>8) r8 g, r r4
}

scoreBRight = \relative c'' {
  \globalB
  % Music follows here.
%  b2-2\p\(d16 c b c\) d8.(b16-2) g4 r
      \repeat volta 2 {	\ptrh \ptendrh \ptlastrh } \break
      \repeat volta 2 {	\ptbrh \ptendrh \ptlastrh }
      \strh \ptrh \ptendrh
      \cdrh
      \bar "|."
}

scoreBLeft = \relative c' {
  \globalB
  % Music follows here.
%  g16-5 d' b d g, d' b
      \repeat volta 2 {	\ptlh \ptendlh \ptlastlh }
      \repeat volta 2 {	\ptblh \ptendlh \ptlastlh }
      \stlh \ptlh \ptendlh
      \cdlh
}

\bookpart {
  \header {
    title = "Sonata in C-Dur, 2. Satz - Andante (G-Dur)"
    composer = \markup {\with-url #"" "Wolfgang Amadeus Mozart"}
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 4, Vol. 6 / K 545"
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
  \key c \major
%  \numericTimeSignature
  \time 2/4
  \tempo "Allegretto" 4=120
}

%{ Abreviations
  Suffixes rh = right hand
           lh = left hand
  Prefixes pt = principal theme
           st = secondary theme
           cl = close
           dv = development
           cd = coda
           mt = middle theme
%}

#(define afterGraceFraction (cons 15 16))

%%% Right Hand

ptrh = \relative c'' {
  <e^3 g-5>8-.\p <e g>-.
  <c-1 e-3>-. r <d-2 f-4>-. <d-2 f-4>-.
  <b-1 d-2>-. r  c16-3\( d e c
  a\< b c-1 cs  d e f\! d-3\>
  c b a-2 g\!\) <e' g>8-.\p <e g>-.
  <c-1 e-3>-. r <a'-2 f-4>-. <a-2 f-4>-.
  <d,-2 b-1>-. r  a'16\mf->-4\( g f e
  cs-2 d e f  a,-4 c b d
  c8\) r
}

strh = \relative c'' {
  e16(-2 fs g) g-.-3
  a16(-4 g fs e)  d-.-3 d-.-2 d-.-1 d-.-2
  e(-4 d c b)  e'\(-4 d c b

  % 11
  gs-2 a b c  e,-1 fs-3 g a
  g\> fs e d\)\! <b'^3 d-5>8-.\p <b d>-.
  <g-1 b-3> r8 <a-3 c-5>-. <a c>-.
  <fs-2 a-5> r8 g16-3\( a b g-4
  ds-2 e g e-4  d b-1 c-4 a-2

  g8\) r g16\p-1( a b c
  d8) r b16-1( c d e
  f8) r d16-1( e f g
  a8)\> af( g fs
  f8)\! r <e g>-.\p <e g>-.
  <c e>-. r <d f>-. <d f>-.
  <b d>-. r c16\( d e c

  a b c cs d e f d
  c b a g\) <e' g>8-.\p <e g>-.
  <c e>-. r <f a>-. <f a>-.
  <b, d>-. r a'16->\mf\( g f e
  cs d e f a, c b d
}

mtrh = \relative c'' {
  c8\) r r4
  e16\p(-3 ds f e) r4
  e16\p( ds f e)  <e-2 c'-5>8-.\mp <e c'>
  <c a'-4> r <d-2 b'-5> <d b'>
  <b gs'-4>-.-4 r a'16\mp-5( e-3 c a)
  c-3 bf bf-3 bf-2 d-3 cs cs-3 cs-2

  #34
  e-3 d-. f-3 e-.  g-3 f-. f-3 e-.
  e-3 ds-. c'4(-5 ds,8-2
  e)-. r b'16(-5 gs-4 e-2 d)
  c-2( e-3 a-5 gs a e-3 c a
  gs-2 b-1 e-2 gs-4 b gs-4 e-2 d

  c-2 e-3 a-5 gs a e-3 c a
  e8-2) r <c' e>-.\mp <c e>-.
  <a c> r <b d> <b d>
  <gs b> r r4
  e16\p ds f e r4

  e''16-3\mp( ds f e  d-1 cs-2 e-3 d)
  d-.-3 c-. c-.-3 b-.  b-.-3 a-. a-.-3 g-.
  g-.-3 f-. f-.-3 e-.  e-.-3 d-. d-.-3 c-.
  bf-2 f'-5 d-4 b-2  a8 gs-2
  a r gs16-2 d'-5 b-3 gs-2

  a8 r gs16( d' b gs
  a8) r gs16\( d' b gs
  a e' c a  b f' d b\)
}

clrha = \relative c'' {
  b16\p-1 f'-4 d-2 b
  a'-5 g f e  d f-4 d-2 b
  a'-4 g f e  d'-5 c b a
  a->-4 g f e  e-4 d c b
}

clrhb = \relative c'' {
  c-2 e-4 g,-1 c-5  e,-2 g-3 c,-1 e-2
  g-3 c-1 <c-1 e-3> <e-3 g-5>  <e-2 g-4> <f d> <c-2 e-4> <d b>
  c( e g, c  e, g c, e
  g-.) c-. <c e>-. <e g>-.  <e g>-. <f d>-. <c e>-. <d b>-.
  c8-. <e g c>-. <c e,>-.  <c e,>-.
  <c e,>4 r
}

clrh = \relative c'' {
  \clrha
  d8 c  \clrha
  \clrhb  \bar "|."
}

%%% Left Hand

ptlh = \relative c' {
  \clef bass
  r4
  <a^3 c-1>8-.\p  <a-3 c-1>8-. <f-5 a-3>-. r
  <g-3 b-1>-.  <g b>-. <g-3 e-5>-. r
  f4.-3( d8
  g-.) r r4
  <a-2 c-1>8-. <a c>-. <d,-5 f-4>-. r

  <g-2 b-1>-.  <g b>-. <e-4 c-5>-. r
  <f-5 a-3>4.\mf( <g-4 f'>8
  <c-2 e-1>-.) c,-.
}

stlh = \relative c' {
  \clef treble
  c16-4 g' e g
  b,-5 g' d g  \clef bass fs, d' a d
  g, d' b d  b, g' d g

  c, a' e a  cs, a' e a
  d,8 r8 r4
  \clef treble
  <e'-3 g-1>8-.\p <e g>-. <c e>-. r
  <d-3 fs-1>-. <d fs>-. <b d>-. r
  \clef bass
  << { g4.-1\( fs8-2 } \\ { c4_5 d } >>

  g8\) g, r4
  <g'-2 b-1>8-. g,-. r4
  <g' b>8-. g,-. r4
  r2
  r2
  <a' c>8-. <a c>-. <f a>-. r
  <g b>-. <g b>-. <e g>-. r

  f4. d8
  g8 r r4
  <a c>8-. <a c>-. <d, f>-. r
  <g b>-. <g b>-. <c, e>-. r
  <f a>4.\mf <g f'>8
}

mtlh = \relative c' {
  <c e>-. c, <c'-3 e-1>-.\mp <c e>-.
  <a c>-. r <b-2 d-1>-. <b d>-.
  <gs-4 b-2>-. r r4
  e'16\p ds f e r4
  e16 ds f e  \clef treble <c-5 e-3>4
  <d f> <e g>

  #34
  << { f8_2 cs-5 d e } \\ { a2-1 } >>
  <f a>8 r <f a> r
  \clef bass
  e,16( e' gs,-3 e'  b-2 e gs, e')
  e, e'-3 a, e'-2  c e a, e'
  e, e' gs, e'  b e gs, e'

  e, e' a, e'  c e a, e'
  c,8 r r4
  e'16-2\p ds f e r4
  e16 ds f e <e,-4 c'-1>8\mp <e c'>
  <c-5 a'-2> r <d-4 b'-1> <d b'>

  <b-5 gs'-2>-. r <gs'-4 b-2>4->
  <a c>8 <b-4 d-2> <c e> cs-2
  \clef treble
  << { \stemDown d8_4( e f e } \\ { \stemUp a2-1 } >>
  <d,-4 f-2>4) \clef bass << { \stemDown e,4-5 } \\ { \stemUp c'8-1 b } >>
  a16-4( c e c  e, b' d b)

  a-4 c e c  e, b' d b
  a c e c  e, b' d b
  a c d c  g d' f d
}

cllha = \relative c {
  f16\pp b g b
  e, c' g c   f, b g b
  e, c' g c   f, d' g, d'
  g, e' c e   g, f' d f
}

cllhb = \relative c' {
  c16-3 e-1 g,-4 c-1  e,-4 g-1  c,-4 e-2
  g8 r g r
  c16(-2 e g, c  e, g  c, e
  g8)-. r g,-. r
  <c c,>-. <e e,>-. <g g,>-. <e e,>-.
  <c c,>4 r
}

cllh =  {
  \cllha
  g16 g e g  \cllha
  \cllhb
}

scoreCRight = \relative c'' {
  \globalC
  % Music follows here.
%  \partial 4
%  <e-3 g-5>8-.\mp 8-. <c-1 e-3> r
      \repeat volta 2 {	\partial 4 \ptrh }
      \strh
      \mtrh
      r4\fermata \ptrh
      \clrh
}

scoreCLeft = \relative c' {
  \globalC
  % Music follows here.
%  \partial 4
%  r4
      \repeat volta 2 { \partial 4 \ptlh }
      \stlh
      \mtlh
      r4\fermata \ptlh
      \cllh
}

\bookpart {
  \header {
    title = "Sonata in C-Dur, 3. Satz - Rondo , Allegretto (C-Dur)"
    composer = \markup {\with-url #"" "Wolfgang Amadeus Mozart"}
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 4, Vol. 6 / K 545"
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
  %  \numericTimeSignature
  \time 4/4
  \tempo "Allegro" 4=130
}

scoreDRight = \relative c'' {
  \globalD
  % Music follows here.
}

scoreDLeft = \relative c' {
  \globalD
  % Music follows here.
}

\bookpart {
  \header {
    title = ""
    composer = \markup {\with-url #"" ""}
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 4, Vol. 6 / K 545"
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
  \key f \major
%  \numericTimeSignature
  \time 3/4
  \tempo "Allegro" 4=132
}

scoreERight = \relative c'' {
  \globalE
  % Music follows here.
  r8  f,[ a f c' f,] |						% bar 1
   f'[ e16 d]  c[ d c bf]  a[ bf a g] |				% bar 2
   f8[ a c a f' c] |						% bar 3
   a'16[ c bf c]  a16[ c bf c]  a16[ c bf c] |			% bar 4
   f,[ a g a]  f[ a g a]  f[ a g a] |				% bar 5
   d,[ f e f]  d[ f e f]  d[ f e f] |				% bar 6
   b,8[ g d' b f' d] |						% bar 7
   g16[ a g f]  e[ f e d]  c[ d c bf!] |				% bar 8
   a8[ d16 c]  b[ c b a]  g[ a g f] |				% bar 9
   e[ f e d]  c8[ c'16 b c8 e,] |					% bar 10
   f[ c' e, c' d, b'] |						% bar 11
  c4 r r |							% bar 12
  r8  c[ e c g' c,] |						% bar 13
   c'[ b16 a]  g[ a g f]  e[ f e d] |				% bar 14
   c[ bf! c a']  c,[ a' bf, a']  c,[ a' a, a'] |			% bar 15
   bf,8[ g bf g d' g,] |					% bar 16
   g'[ f16 ef]  d[ ef d c]  bf[ c bf a] |			% bar 17
   g8[ bf d bf g' d] |						% bar 18
   bf'[ cs, bf' cs, bf' cs,] |				% bar 19
   d[ a f' d a' f] |						% bar 20
   g16[ f g bf]  c,[ bf' d, bf']  e,[ bf' c, bf'] |		% bar 21
   f[ e f a]  b,[ a' cs, a']  d,[ a' b, a'] |			% bar 22
   e[ d e g]  a,[ g' b, g']  cs,[ g' a, g'] |			% bar 23
   f8[ d bf! d g, f'] |						% bar 24
   e[ c a c f, ef'] |						% bar 25
   d16[ f ef f]  d[ f ef f]  d[ f ef f] |			% bar 26
   bf,[ d c d]  bf[ d c d]  bf[ d c d] |			% bar 27
   g,[ bf a bf]  g[ bf a bf]  g[ bf a bf] |			% bar 28
   e,8[ c g' e bf' g] |						% bar 29
   c16[ d c bf]  a[ bf a g]  f[ g f ef] |			% bar 30
   d8[ g16 f]  e[ f e d]  c[ d c bf] |				% bar 31
   a[ bf a g]  f8[ f'16 e f8 a,] |				% bar 32
   bf[ f']  a,[ f']  g,[ e'] | 					% bar 33
  <a, c f>4 r r \bar "|."					% bar 34
}

scoreELeft = \relative c' {
  \globalE
  % Music follows here.
  r2. |								% bar 1
  r8  f,[ a f c' f,]                                              % bar 2
   f'8[ e16 d]  c[ d c bf]  a[ bf a g] |                         % bar 3
   f8[ a c a f' c] \clef "treble"|                              % bar 4
   a'16[ c bf c]  a[ c bf c] a[ c bf c] |                       % bar 5
   f,[ a g a]  f[ a g a]  f[ a g a] |                              % bar 6
   d,[ f e f]  d[ f e f]  d[ f e f] \clef "bass"|                 % bar 7
   b,8[ g c g e' c] |                                            % bar 8
   f16[ g f e]  d[ e d c]  b[ c b a] |                             % bar 9
   g8[ c16 b]  a[ b a g]  f[ g f e] |                              % bar 10
   d[ e d c]  g'[ f e f]  g8[ g,] |                                % bar 11
  r  c[ e c g' c,] |                                             % bar 12
   c'[ b16 a]  g[ a g f]  e[ f e d] |                              % bar 13
   c8[ e g e c' g] |                                             % bar 14
   ef'[ fs, ef' fs, ef' fs,] |                             % bar 15
   g[ f!16 ef]  d[ ef d c]  bf[ c bf a] |                      % bar 16
   g8[ g' bf g d' g,] |                                         % bar 17
   g'[ f16 ef]  d[ ef d c]  bf[ c bf a] |                      % bar 18
   g[ f g e'!]  g,[ e' f, e']  g,[ e' e, e'] |                     % bar 19
   f,[ e f d']  f,[ d' e, d']  f,[ d' d, d'] |                     % bar 20
   bf8[ g e g c, e] |                                           % bar 21
   a[ f d f b, d] |                                              % bar 22
   g[ e cs e a, cs] |                                          % bar 23
   d,16[ d' c! d]  g,[ d' a d]  bf[ d g, d'] |                    % bar 24
   c,[ c' bf c]  f,[ c' g c]  a[ c f, c'] |                       % bar 25
   bf8[ d f d bf' f] |                                         % bar 26
   d'16[ f ef f]  d[ f ef f]  d[ f ef f] |                      % bar 27
   bf,[ d c d]  bf[ d c d]  bf[ d c d] |                        % bar 28
   g,[ bf a bf]  g[ bf a bf]  g[ bf a bf] |                  % bar 29
   e,8[ c f c a' f] |                                            % bar 30
   bf16[ c bf a]  g[ a g f]  e[ f e d] |                         % bar 31
   c8[ f16 e]  d[ e d c]  bf[ c bf a] |                          % bar 32
   g[ a g f]  c'[ bf a bf]  c8[ c,] |                            % bar 33
  f4 r r                                                        % bar 34
  \bar "|."
}

\bookpart {
  \header {
    title = "Invention No. 8 in F-Dur"
    composer = \markup {\with-url #"" "Johann Sebastian Bach"}
    poet = ""
    meter = ""
    piece = ""
    opus = "Suzuki No. 3, Vol. 6 / BWV 779"
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
