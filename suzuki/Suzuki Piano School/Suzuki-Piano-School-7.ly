%\version "2.24.1"
\version "2.6.0"
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
  \tempo "Andante grazioso" 8=112
}

ATemaRight = {
  \repeat volta 2 {
%    cs8.^\markup { \large "Andante grazioso" }\p^\markup { \huge "TEMA" }( d16) cs8 e4 e8
    cs8.^\markup { \huge "TEMA" }( d16) cs8 e4 e8
    b8.( cs16) b8 d4 d8 a4 a8 b4 b8
    cs4 << { e16( d) cs4( b8) } \\ { b8 a4( gs8) } >>
    cs8.( d16) cs8 e4 e8 b8.( cs16) b8 d4 d8
    a4 b8 cs4 <fs, b d>8\sf <e a cs>4\p <d e gs b>8 <cs e a>4 r8
  }
  \repeat volta 2 {
    e'8.( fs16) e8 fs4 fs8
    \grace { fs16[ gs] } a8.( gs16) fs8 fs8( e) e\staccato
    e8\sf( cs) a\staccato e'8\sf( d) b\staccato e8\sf( cs) a\staccato
    << { cs4( b8) } \\ { a4( gs8) } >>
    cs8.\p( d16) cs8 e4 e8 b8.( cs16) b8 d4 d8
    a4 b8 cs4 <fs, b d>8\sf <e a cs>4\p <e gs b>8
    << { <gs b>4( <a cs>8) } \\ { e4. } >>
    <<
      {
        <a cs>4 <gs d'>8 <a e'>4
        \once \override Voice.Slur #'attachment = #'(head . stem)
        \stemDown fs'16( gs32 a \stemUp a,4) cs16( b) a4 r8
      } \\
      { e4\f e8 e4 s8 s4 gs8 a4 s8 }
    >>
  }
}

AVarIRight = {
  \tempo "Moderato" 4=92
  \time 6/8
   \repeat volta 2 { \override Voice.TextScript #'padding = #3.0
 bs16_\p^\markup { \huge "VAR.I." } cs r cs( bs cs) ds( e) r e( fs e)
 e16( b!) r b( as b) cs( d!) r d( e d)
 d16( a!) r a( gs a) as( b) r b( as b)
 bs( cs bs cs e d cs b a! gs fs e)
 <e a cs>4\f <b' d>8 <bs ds>8( <cs e>8) r16 <a cs>16
 <e gs b!>8\staccato <e gs b>\staccato <e a cs>\staccato
 << { <as cs>8([ <b d>]) } \\ { e,4 } >> r16 <gs b>
 a!8\staccato[ a8\staccato] b16^\trill([ a32 b] cs8\staccato)[ cs8\staccato] <fs, b d>8
 <e a cs>8 <e a cs> <d e gs b> <cs e a> r r }
 \repeat volta 2 { ds'16\p( e) r e( ds e) es( fs) r fs( es fs)
 gs16( a) fss( gs) es( fs) ds( e!) r e16\staccato( e\staccato e\staccato)
 e16\sf( cs a) e'\p\staccato( e\staccato e\staccato)
 e16\sf( d gs,) e'\p\staccato( e\staccato e\staccato)
 e16\sf( cs a) e'\p( cs a) <a cs>4( <gs b>8)
 bs16( cs) r cs( bs cs) ds( e) r e( fs e)
 e16( b!) r b( as b) cs( d!) r d( e d)
 d16( a!) r a16( cs b) d( cs) r cs( e d)
 bs16( cs) r cs( d b!) << { b8.( bs16 cs8) } \\ { gs4( a8) } >>
 <e a cs>8\f <e a cs> <e gs d'> <e a e'> <a e'>
 << { fs'16( gs32 a) } \\ { a,8 } >>
 <cs, e a>8 <cs e a> <d e gs b> <cs e a> r r }
}

AVarIIRight = {
  \tempo "Moderato" 8=112
    \repeat volta 2 { \override Voice.TextScript #'padding = #3.0
 cs'8\staccato\p^\markup { \huge "VAR.II." } cs\staccato d16^\trill([ cs32 d e8]) r8
 fs32( e d cs b8) b\staccato cs16^\trill([ b32 cs d8]) r8
 \stemDown e32( d cs b a8) a\staccato a16^\trill([ gs32 a] b8) b\staccato
 b16^\trill([ a32 b] cs8) cs\staccato
 << { e16.( d32) cs4( b8) } \\ { b8 a4( gs8) } >>
 \set Voice.tupletSpannerDuration = #(ly:make-moment 1 8)
 \times 2/3 { \stemUp cs16\f([ a e] cs'[ a e] d'[ b e,] e'[ cs e,] e'[ cs e,]) }
 \stemDown fs'32( e d cs
 \times 2/3 { \stemUp b16[ gs e] b'[ gs e] cs'[ a e] d'[ b e,] d'[ b e,]) }
 \stemDown e'32( d cs b
 \times 2/3 { \stemUp a16[ e cs] a'[ e cs] b'[ e, d] cs'[ a e] cs'[ a e] d'[ b fs]
 cs'[ a e] cs'[ a e] b'[ gs d] a'[ e cs] } a8) r }
 \repeat volta 2 \relative c'' { \stemDown e8\p\staccato d\staccato e\staccato fs\staccato r
 fs32^\prall( e fs gs a8) gs8\staccato fs\staccato e\staccato r
 cs32^\prall( b cs d e8 cs) r16 r32 \stemUp a32 \stemDown e'8( d) r16 r32 b\staccato
 e8\f( cs) a\staccato \stemUp <a cs>4\sf\>( <gs b>8\!)
 \stemDown cs8\staccato\p cs\staccato d16^\trill([ cs32 d e8]) r8
 fs32( e d cs b8) b\staccato cs16^\trill([ b32 cs d8]) r8
 e32( d cs b \stemUp a8) a\staccato b16^\trill([ a32 b] \stemDown cs8) cs\staccato
 d16^\trill([ cs32 d] cs8) cs\staccato
 \stemUp b16^\trill([ a32 b]) << { b8( bs cs) } \\ { gs4( a8) } >>
 \set Voice.tupletSpannerDuration = #(ly:make-moment 1 8)
 \times 2/3 { \stemUp cs16\f([ a e] cs'[ a e] d'[ gs, e]
 \stemDown e'[ cs a] e'[ cs a] fs'[ b, a]
 \stemUp cs[ a e] cs'[ a e] b'[ gs d] a'[ e cs]) } a8 r8 }
}

AVarIIIRight = {
  \tempo "Moderato" 4=82
  \key a \minor
 \repeat volta 2 { \override Voice.TextScript #'padding = #3.0
 \stemDown c'16\p^\markup { \huge "VAR.III." }( b a b c d e ds f e d c
 b16 a gs a b c d cs e d c b
 a e' ds e c a gs e' f e d b) b( a gs a b c)
 \stemUp <a c>4( <gs b>8)
 \stemDown <c c'>16\f( <b b'> <a a'> <b b'> <c c'> <d d'>
 <e e'> <ds ds'> <f f'> <e e'> <d d'> <c c'>)
 <b b'>( <a a'> <gs gs'> <a a'> <b b'> <c c'>
 <d d'> <cs cs'> <e e'> <d d'> <c c'> <b b'>)
 <a a'>( <gs gs'> <a a'> <c c'> <b b'> <d d'>
 <c c'> <b b'> <c c'> <e e'> <d d'> <f f'>)
 <e e'>16( <ds ds'> <e e'>) <e, e'>( <fs fs'> <gs gs'>) <a a'>4 r8 }
 \repeat volta 2 { a16( gs a a' gs g) g( f e f e f
 a gs a gs a f) f( e ds e ds e)
 e( d! c b a e' f d b a gs b)
 b16\<( a) c( b) d( c16\!) \grace { b32[ c d] } <a c>4\sf\>( <gs b>8\!)
 c16\p( b a b c d e ds f e d c b a gs a b c d cs e d c b
 a gs a c b d c b c e d f e ds e e, fs gs \stemUp a gs a e c e)
 \stemDown <a a'>16\f( <gs gs'> <a a'> <c c'> <b b'> <d d'>
 <c c'> <b b'> <c c'> <e e'> <d d'> <f f'>)
 <e e'>( <ds ds'> <e e'>) <e, e'>( <fs fs'> <gs gs'>) <a a'>4 r8 }
}

AVarIVRight = {
  \tempo "Moderato" 4=76
  \key a \major
  \time 6/8
  \repeat volta 2 { << { s8^\markup { \huge "VAR.IV." } <a' cs>8( <b d>) <cs e>( <b d> <a cs>)
 s8 <gs b>( <a cs>) <b d>( <a cs> <gs b>)
 s8 a8 s4 b8 s8 <a cs>( <b d> <a cs>) <gs b> s4
 s8 <a cs>8( <b d>) <cs e>( <b d> <a cs>)
 s8 <gs b>( <a cs>) <b d>( <a cs> <gs b>)
 s8 <cs, a'>( <e b'>) <a cs> s4 s8 <a cs>( <gs b>) a8 s4 } \\
 { <a, cs>16\p e_\markup { \bold \italic "legato" } <a cs> e <b' d> e,
 <cs' e> e, <b' d> e, <a cs> e
 <gs b> e <gs b> e <a cs> e <b' d> e, <a cs> e <gs b> e
 <e a> cs <e a> cs <e a> cs <gs' b> e <gs b> e <gs b> e
 <a cs> e <b' d> e, <a cs> e <gs b> e \slurUp ds'( e) ds( e)
 <a, cs>\f e <a cs> e <b' d> e, <cs' e> e, <b' d> e, <a cs> e
 <gs b> e <gs b> e <a cs> e <b' d> e, <a cs> e <gs b> e
 <e a> cs <e a> cs <gs' b> e <a cs> e <a cs> e <b' d> e,
 <a cs> e <a cs> e <gs b> e a\staccato e\staccato cs\staccato e\staccato a8 } >> }
 \repeat volta 2 { e8.\p( fs32 e d cs b a es'16 fs) fs8\staccato r
 a16( gs b a gs fs ds e!) e8\staccato r
 << { \stemDown e8.\sfp( fs32 e d cs b a e'16\sfp d8 e32 d cs b a gs
 \stemUp a8 gs a) <a cs>4( <gs b>8) } \\ { s2 s4 s4 ds8 e4.\sf } >>
 << { s8 <a' cs>( <b d>) <cs e>( <b d> <a cs>)
 s8 <gs b>( <a cs>) <b d>( <a cs> <gs b>)
 s8 <cs, a'>( <e b'>) <a cs> s4 } \\
 { <a, cs>16\p e <a cs> e <b' d> e, <cs' e> e, <b' d> e, <a cs> e
 <gs b> e <gs b> e <a cs> e <b' d> e, <a cs> e <gs b> e
 <e a> cs <e a> cs <gs' b> e <a cs> e <a cs> fs <b d> fs} >>
 << { s8 <a' cs>( <gs b>) b( bs cs)  } \\ { s4 s8 gs4 a8 } \\
 { \stemDown <a, cs>16 e <a cs> e <gs b> e <gs b> e <gs bs> e <a cs> e } >>
 << { s8 <a' cs>( <b! d>) <cs e> s4 s8 <a cs>( <gs b>) a s4 }
 \\ { <a, cs>16\f e <a cs> e <b'! d> e, <cs' e> a <cs e> a <d fs> a
 <a cs> e <a cs> e <gs b> e a\staccato e\staccato cs\staccato e\staccato a8  } >> }
}

AVarVRight = {
  \tempo "Adagio" 8=52
  \time 6/8
 \repeat volta 2 { cs'8\p^\markup { \huge "VAR. V." } cs8.( d16)
 fs16( e) r16 e16\staccato fs32( e d cs)
 cs16([ b]) b8.([ cs16]) e8( d!16) r32 d\staccato e32( d cs b)
 b16( a) r32 a( gs a b a d! cs as16 b) r32 b32( as b cs b e d!)
 d32( cs bs cs d cs bs cs e d cs d
 cs b as b a gs fss gs fs e ds e)
 <a cs>16\f\staccato[ <a cs>8] <as cs>16\p([ <b d> <bs ds>] <cs e>32)
 a32\staccato b\staccato cs\staccato d\staccato e\staccato fs\staccato gs\staccato
 a( b cs) r
 <a, cs>32\f([ <gs b>) <gs b>8] <gs b>16\p([ <a c> <as cs>] <b d>32)
 b32\staccato cs\staccato d\staccato e\staccato fs\staccato gs\staccato a!\staccato b( cs d) r
 b,32( a) a16 ~ a32 a( d cs as b e d bs cs) a'!\staccato a\staccato
 a32\staccato a\staccato a\staccato a\staccato a( fs d b) \break
 \alternative {
 { \once \override TextScript #'script-priority = #-100 e16.^\turn^\markup { \sharp }( fs32)
 << { a,8.( cs32 b) <gs b>8([ a16) r32. e64] } \\ { a8. gs16 e4 } >>
 fs64([ a gs b] a[ cs b d!]) }
 { \once \override TextScript #'script-priority = #-100 e16.^\turn^\markup { \sharp }( fs32)
 << { a,8.( cs32 b) b8([ a16.^\markup { \translate #(cons 2 -2) { \musicglyph #"scripts.turn" } } b32
 cs16.^\markup { \translate #(cons 2 -2) { \musicglyph #"scripts.turn" } } d32]) } \\ { a8. gs16 <e gs>4 } s8 >> }
 }}
 \repeat volta 2 \relative c'' { e16.\p( fs64 e d16)[ cs16\staccato( b\staccato a\staccato]) a16.([ fs'32) fs8]
 d,8\f ~ d64([ fs e d] e[ fs g a] b[ cs d e])
 \set Voice.tupletSpannerDuration = #(ly:make-moment 1 8) \times 2/3 { fs32[ g\staccato a\staccato] }
 b32\staccato cs\staccato d32.\staccato fs,64 a16.([ fs32 e16] e16\staccato[ e\staccato e\staccato])
 fs32\sfp( e cs b a16) e'16\staccato( e\staccato e\staccato)
 fs32\sfp( e d b gs16) e'16\staccato( e\staccato e\staccato)
 fs32\sfp( e cs a) fs'( e d b) fs'( e cs a) cs8\>([ b32) e,\!\p( e' e,] ds' e, d' e,)
 cs'8 cs( ~ cs32 \set Voice.tupletSpannerDuration = #(ly:make-moment 1 8) \times 2/3 { d64[ cs b] }
 cs32[ d] fs16[ e32]) r32 ds'16 e32 r64 e,64\staccato fs32([ e d! cs])
 cs16( b8) b( \grace { cs32[ b as] } b32 cs e16 d!32) r32 cs'16( d32) r64 d,64\staccato e32([ d cs b])
 b16( a) ~ a32 a d!( cs as b e d bs cs) a'!\staccato a\staccato
 a32\staccato_\markup { \italic "cresc." }( a\staccato a\staccato a\staccato) a32( fs d b)
 e16\f \grace { fs32[ e ds] } e32 fs
 << { a,8. b16 b8.( bs16 cs8) } \\ { a8. gs16 gs4( a8) } >>
 \grace { e32[ a] } cs8\f( ~
 \set Voice.tupletSpannerDuration = #(ly:make-moment 1 16)
 \times 2/3 { cs32[ e d] cs[ d e] d[ fs e] d[ e fs] } e64[ a, b cs]
 d64[ e fs gs] a[ b cs b] a[ gs fs es] fs[ gs a gs] b[ a gs fs])
 \alternative {
 { e!32\staccato\p e'( cs a e\staccato) a( e cs e d cs b)
 <gs b>8([ \set Voice.tupletSpannerDuration = #(ly:make-moment 1 16)
 \times 2/3 { a32) e\staccato fs\staccato] g\staccato[ gs\staccato a\staccato]
 as32\staccato[ b\staccato bs\staccato] cs\staccato[ d\staccato ds\staccato] } }
 { e!32\staccato\p e'( cs a e\staccato) a( e cs e d cs b) << { <gs b>4( a8) } \\ { e4. } >> \bar "||" }
 }}
}

AVarVIRight = {
  \tempo "Allegro" 4=118
  \time 4/4
   \repeat volta 2 { cs'8\staccato\p^\markup { \huge "VAR. VI." }
 \appoggiatura d16 cs16( b' cs,8) d\staccato fs( e) d\staccato cs\staccato
 b'8\staccato \appoggiatura cs,16 b'16( as b8) cs,\staccato e( d) cs\staccato b'\staccato
 gs8( a!) r8 as r b r bs
 \appoggiatura d,16 cs8\staccato cs\staccato \appoggiatura e16 d8\staccato d8\staccato cs4( b'!8) r8
 cs,16\f( a' e a cs, a' d, b' e, cs e cs fs e d cs b' gs e gs b gs cs, a' d, b' d, b' e, d cs b'
 a cs, b' a b d, cs b' cs, e a e fs a b, d cs e a, cs b' d, gs, b' a e cs e a4) }
 \repeat volta 2 \relative c'' { a16\p( b cs d e fs gs a gs fs es fs es fs es fs
 a16 gs a gs b a gs fs) fs( e! ds e ds e ds e)
 e16\f\staccato( a cs b a gs fs e d! gs b a gs fs e d
 cs e a gs fs e d cs b a gs fs e) r r8
 cs'8\p\staccato \appoggiatura d16 cs16( b cs8) d\staccato fs( e) d\staccato cs\staccato
 b8\staccato \appoggiatura cs16 b16( as b8) cs\staccato e( d) cs\staccato b\staccato
 gs8( a!) r8 b r \appoggiatura bs16 cs8 r \appoggiatura e16 d8
 r8 \appoggiatura d16 cs8 r \appoggiatura cs16 b8 << { b8([ bs] cs) } \\ { gs4( a8) } >> r8
 cs16\f( a e' cs d b! fs' d e cs a' e gs fs e d
 \alternative {
 { cs e a, cs b d gs, b a e cs e a4) }
 { cs16( e a, cs b d gs, b a_\markup { \italic "dim." } b cs d e fs gs a }
}}
 gs16\p fs es fs b a) gs\staccato fs\staccato fs( e ds e a, cs e a
 gs fs es fs b a) gs\staccato fs\staccato e8. e16\staccato \grace \relative c'' { fs32[ e ds] } e4
 r8 r16 d!\staccato \grace \relative c'' { e32[ d cs] } d4 r8 r16 cs\staccato \grace \relative c'' { d32[ cs b] } cs4
 r8 r16 b\staccato \grace \relative c'' { cs32[ b as] } b4 r16 e\f( ds e fs e ds e)
 r16 d!( cs d e d cs d) r cs( bs cs d cs bs cs)
 r16 b!( as b cs b as b) a8 cs16\p([ a] e' d b gs a4)
 <gs b e>4\f <a cs e a>8 cs16([ a] e' d b gs a4) <gs b e>\f <a cs e a> r \bar "||"
}

scoreARight = \relative c'' {
  \globalA
  % Music follows here.
  %  cs8.-2\p\(d16 cs8\) e4-4 e8-5
  %  b8.-2\(cs16 b8\) d4-4 d8 a4-1 a8 b4 b8-2
  % Tema
  \ATemaRight
  \break
  % Var 1
  \time 6/8
  \AVarIRight
 \break
 % Var 2
 \AVarIIRight
 \break
 % Var 3
 \AVarIIIRight
 \break
 % Var 4
 \AVarIVRight
 \break
 % Var 5
 \AVarVRight
 \break
 % Var 6
 \AVarVIRight
}

ATemaLeft = { \repeat volta 2 {
    <<
      {
        e4 e8 e4 e8 e4 e8 e4 e8 e4 e8 e4 e8 e4 s2
        e4 e8 e4 e8 e4 e8 e4 e8 e4 e8 e4 s8 s4 e,,8 a4 r8
      } \\
      {
        a'8.\p( b16) a8 cs4 cs8 gs8.( a16) gs8 b4 b8 fs4 fs8 gs4 gs8 a4 d,8 e4.
        a8.( b16) a8 cs4 cs8 gs8.( a16) gs8 b4 b8 fs4 gs8 a4 d,8\sf e4\p s2
      }
    >>
  }
  \repeat volta 2 {
    a8( cs e a, d fs a, d fs a, cs e)
    <a, cs>4\sf r8 <gs d'>4\sf r8 <a cs>4\sf <fs ds'>8 <e e'>4.
    <<
      { e'4 e8 e4 e8 e4 e8 e4 e8 e4 e8 e4 s8 s4 e,,8 a4. } \\
      { a'8.\p( b16) a8 cs4 cs8 gs8.( a16) gs8 b4 b8 fs4 gs8 a4 d,8\sf e4\p s2 }
    >>
    <a, a'>4\f <b b'>8 <cs cs'>4 <d d'>8 <e cs'>4 <e d'>8 <a cs>4 r8
  }
}

AVarILeft = {
    \time 6/8
 \repeat volta 2 { r8 <a e'>\p r r <cs e> r r <gs e'> r r <b e> r
 r <fs e'> r r <gs e'> r <a e'>4 <d, fs>8 <e gs>4 r8
 a,16\f a' a a a a a, a' a a a a e, e' e e e e e, e' e e e e fs, fs' fs fs gs, gs' a, a' a a d,, d'
 e,16 e' e e e, e' a,,8 a' r }
 \repeat volta 2 { r8 <a' cs>8\p r r <a d> r <a fs'> <a e'> <a d> r <a cs> r
 <a cs e>4. <b d e>4. <cs e>4 <fs, a ds>8 <e e'>4.
 r8 <a e'> r r <cs e> r r <gs e'> r r <b e> r r <fs e'> <gs e'> r <a e'> <d, b'>
 r8 <e a> <e gs> a e a,
 a,16\f a' a a b, b' cs, cs' cs cs d, d' e, e' e e e, e' a,,8 a' r }
}

AVarIILeft = {
   \repeat volta 2 \relative c' { \set Voice.tupletSpannerDuration = #(ly:make-moment 1 8)
 \times 2/3 { a16\p[ ds e_\markup{ \large "legato" }] a,[ ds e] b[ ds e]
 cs[ ds e] cs[ ds e] a,[ ds e]
 gs,[ ds' e] gs,[ ds' e] a,[ ds e] b[ ds e] b[ ds e] gs,[ ds' e]
 fs,[ ds' e] fs,[ ds' e] fs,[ ds' e] gs,[ d'! e] gs,[ d' e] gs,[ d' e]
 a,[ cs e] a,[ cs e] d,[ fs b] e,[ a cs] e,[ a cs] e,[ gs b] }
 a,8\f \grace gs'16 a8 r8 a,8 \grace gs'16( a8) r8 e,8 \grace ds'16 e8 r8 e,8 \grace ds'16( e8) r8
 fs,8 \grace es'16 fs8 \grace fss16 gs8 a,8 \grace gs'16 a8 \grace cs,16 d8
 e,8 \grace ds'16 e8 \grace ds16 e8 a,,8 \grace gs'16 a8 r8 }
  \repeat volta 2 \relative c' { \set Voice.tupletSpannerDuration = #(ly:make-moment 1 8)
 \clef treble \times 2/3 { a16\p[ cs_\markup{ \large "legato" } e] a,[ cs e] a,[ cs e]
 a,[ d fs] a,[ d fs] a,[ d fs]
 a,[ fs' a] a,[ e' gs] a,[ d fs] a,[ cs e] a,[ cs e] a,[ cs e]
 a,[ cs e] a,[ cs e] a,[ cs e] b[ d e] b[ d e] b[ d e]
 a,\f[ cs e] a,[ cs e] \clef bass fs,[ a ds] } <e, e'>4.
 \times 2/3 { a16\p[ ds e] a,[ ds e] b[ ds e] cs[ ds e] cs[ ds e] a,[ ds e]
 gs,[ ds' e] gs,[ ds' e] a,[ ds e] b[ ds e] b[ ds e] gs,[ ds' e]
 fs,[ ds' e] fs,[ ds' e] gs,[ d' e] a,[ cs e] a,[ cs e] d,[ fs b]
 e,[ a cs] e,[ a cs] e,[ gs b] }
 << { d4( cs8) } \\ { <a e'>4. } >>
 a,8\f \grace gs'16 a8 \grace as16 b8 cs,8 \grace bs'16 cs8 \grace cs16 d8
 e,,8 \grace ds'16 e8 \grace ds16 e8 a,,8 \grace gs'16 a8 r8 }
}

AVarIIILeft = {
  \key a \minor
   \repeat volta 2 {
 a'16\p e'_\markup { \italic \large "legato" } c e a, e' a, e' c e a, e' e, e' b e e, e' e, e' b e e, e'
 a,16 e' c e a, e' b e d e b e c e b e a, e' e, e' ds e e, e'
 a,16\f e' c e a, e' a, e' c e a, e' e, e' b e e, e' e, e' b e e, e'
 a,16 e' c e gs, e' a, e' c e f, d' e, c' a c e, b'
 \stemDown a,16\staccato c\staccato e\staccato a\staccato a,8 }
 \repeat volta 2 { << { c4( cs8) d4. f16( e f e f d) d( c b c b c)
 c16( d e d c8) b16( c d e f8) e8 e e s4 s8 } \\
 { a,4. a4. a4. a4. a4. gs16 a b c d8 c8( gs a) ds,4( e8) } >>
 a16\p( e' c e a, e' a, e' c e a, e' e, e' b e e, e' e, e' b e e, e'
 a, e' c e gs, e' a, e' c e f, d' e, c' a c e, b') <a, a'>4 r8
 \stemUp a16\f( e' c e gs, e' a, e' c e f, d' e, c' a c e, b')
 a,16\staccato c\staccato e\staccato a\staccato a,8 }
}

AVarIVLeft = {
  \key a \major
  \time 6/8
   \repeat volta 2 { <a'' a'>8\p s8 s2 <e e'>8 s8 s2 <a a'>8 s <a a'> <e e'> s <e e'> s2 e''8 e,
 <a, a'>8\f s8 s2 <e e'>8 s8 s2 <a a'>8 s8 s4 <fs fs'>8 <d d'> <e e'> s8 s4 a'8 a, }
 \repeat volta 2 \relative c' { a16\p( cs e cs e cs a d fs d fs d a d fs d fs d a cs e cs e cs)
 <a, cs>8 <a' cs> r <b, d> <b' d> r <cs e>( <b d> <a cs>)
 << { <a cs>4( <gs b>8) } \\ { e4. } >>
 <a, a'>8\p s8 s2 <e e'>8 s8 s2 <a a'>8 s8 s4 <fs fs'>8 <d d'> <e e'>8 s8 s2
 <a a'>8\f s8 s4 <a a'>8 <d, d'> <e e'>8 s8 s4 a'8 a, }
}

AVarVLeft = {
   \repeat volta 2 { a32\p( e' cs e a, e' cs e a, e' b e cs e a, e' cs e a, e' cs e a, e'
 gs, e' ds e gs, e' ds e gs, e' a, e' as, e' ds e b e ds e gs, e' e, e'
 fs, e' ds e fs,8) r8 gs32( e' ds e) gs,8 r8 <a e'>8 <fs a> <d b'> <e gs> r r
 a,32\f a' a a a\p a a a a a a a a8 r r e,32\f e' e e e\p e e e e e e e e8 r r
 r8 <fs e'> <gs e'> <a e'> r <d, fs b> \break
 \alternative {
 { << { <a' cs>4( <b d>8) d8([ cs]) } \\ { e,4. a4 } >> r8 }
 { << { <a cs>4( <b d>8) d8([ cs]) } \\ { e,4. a4 } >> r8 }
   }}
 \repeat volta 2 { \clef treble a32\p( a' cs, a' a, gs' b, gs' a, g' cs, g' a, fs' d fs
 \clef bass fs, d' a d d, a' fs a) a,( fs' d fs a, fs' d fs a, fs' d fs) << { d8[ cs] } \\ { a8[ a] } >> r8
 <a' cs e>4. <b d e>4. <a cs e>8 <gs b e> <a cs e> << { <a cs>8([ <gs b>]) } \\ { e4 } >> r8
 a32( e' cs e a, e' cs e a, e' b e cs e a, e' cs e a, e' cs e a, e'
 gs, e' ds e gs, e' ds e gs, e' a, e' b e ds e gs, e' b e e, e' gs, e'
 fs, e' ds e fs, e' ds e gs, e' ds e a,8) r <d,! fs b>
 << { <a' cs>4 <b d>8 d4( cs8) } \\ { e,4. <a e'>4. } >>
 a,32( cs e a a, cs e a b, d gs b <cs, a'>4) <d a'>8
 \alternative {
 { <e cs'>8 <e cs'> <e gs d'> << { d'8([ cs]) } \\ { a4 } >> r8 }
 { <e cs'>8 <e cs'> <e gs d'> << { d'4( cs8) } \\ { a4. } >> \bar "||" }
 }}
}

AVarVILeft = {
  \time 4/4
 \repeat volta 2 { a'8_\markup { \italic "legato" } e' b e cs e a, e' gs, e' a, e' b e d e
 cs e cs e gs, e' gs, e' a, e' d, b' << { a4( gs8) } \\ { e4. } >> r8
 <a,, cs e a>4\arpeggio r \clef treble <a'' cs e a>\arpeggio r
 \clef bass <e, gs b e>4\arpeggio r <e' gs b e>\arpeggio r
 fs,8 fs' gs, gs' a cs d gs, a fs d e a,4 a, }
 \repeat volta 2 { a''8( e' cs e a, fs' d fs a, fs' d fs a, e' cs e)
 <a,, cs e a>4\arpeggio r <b d gs b>\arpeggio r
 <cs e a cs>\arpeggio <d fs b d>\arpeggio <e gs b e>\arpeggio r16 d'([ cs b]
 a8 e' b e cs e a, e' gs, e' a, e' b e gs, e' fs, e' gs, e' a, e' d, b' e, a e gs) <a d e>4( <a cs e>8) r
 a,16_\markup { \italic "legato" } cs e a b, d gs b cs, e a cs d, fs b d
 \alternative {
 { e,16 a cs e e,, gs b e a, cs e a a,4  }
 { e'16 a cs e e, gs b d <a cs>8 <cs e> <cs e> <cs e> }
 }}
 a8\p <d fs> <d fs> <d fs> a <cs e> <cs e> <cs e> a <d fs> <d fs> <d fs> <a cs e>4 r
 <d, b'>4 r <e a> r <d gs> r <cs a'> r <d b'> r <e a> r <e gs> r a r r <e gs b e> <a, cs e a> r
 r4 <e' gs b e> <a, cs e a> r4 \bar "||"
}


scoreALeft = \relative c' {
  \globalA
  % Music follows here.
  %  <<{e4-1 e8 e4-1 e8-1}\\{a,8.-5 b16 a8 cs4-3 cs8-2}>>
  \ATemaLeft
  \break
  % Var 1
  \AVarILeft
 \break
 % Var 2
  \AVarIILeft
 \break
 % Var 3
  \AVarIIILeft
 \break
 % Var 4
  \AVarIVLeft
 \break
 % Var 5
  \AVarVLeft
 \break
 % Var 6
  \AVarVILeft
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
  \key a \major
%  \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=134
}

BMenuettoRight = {
   \repeat volta 2 { \grace { cs,32([ e] } a2\f^\markup { \large "MENUETTO." })( e4)
 cs'8( d16 b a4) r4 e'8\p( fs16 d cs4) cs'4\staccato ds,4( e4.) es8\staccato
 gs8\>( fs e! d! cs b\! a gs e' d) r4 b8( a_\markup { \italic "cresc." } fs' e) r4
 cs8\f( b g'! fs) r4 fs,4\p e'8( d cs b a gs! a4) r4
 \grace { b32[ e gs] } b2.\f b16( a gs fs) fs( e ds cs b a gs a gs b e gs b2)
 b16( a gs fs) fs( e ds cs b a gs a gs b a gs a b cs ds e fs gs a
 b cs ds e ds cs b a gs fs e ds)
 << { \stemDown cs8\p[ r16 cs']( s4 \stemUp gs8 fs e4) } \\ { s4 e4 ds e } >> r4 r }
 \repeat volta 2 \relative c' { \appoggiatura e32 e'4\f \appoggiatura fs,32 fs'4 \appoggiatura g,32 g'4
 b,4\p( as) r8 r16 as\staccato
 %\setTextCresc
 cs4\<( b) r8 r16 b16\staccato d!4( cs) r8 r16 cs16\staccato\!
 e8\f( d) f( e) g( f) a,4\p( gs!) r8 r16 gs\staccato b4( a) r8 r16 a\staccato
 %\setTextCresc
 cs4\<( b) r8 r16 b\staccato d8([ c b a] a'\staccato) a\staccato\! b8\f( a g f e ds)
 c'2( ds,4) e4. fs!16( e) e( d! cs! b)
 \grace { cs,32([ e] } a2\f)( e4) cs'8( d16 b a4) r4 e'8\p( fs16 d cs4) cs'4\staccato
 ds,4( e4.) es8\staccato gs8\>( fs e! d! cs b\! a gs e' d) r4
 b8( a_\markup { \italic "cresc." } fs' e) r4 b8\f( a a' g) r4 g8\p( fs e d cs b)
 e8[ \grace { fs32[ e d] } e16 fs] a,4( gs) \grace { a16[ cs] } e4\f e2
 e16( d cs b) b( a gs fs e d cs d cs e a cs e4.) e'8
 e16( d cs b) b( a gs fs e d cs d cs e d cs d e fs gs a b cs d
 e d cs b a gs fs e d cs b a) fs'8.^\trill([ gs32 a] a,4) << { cs8 b a4 } \\ { gs4 a } >> r4 r }
}

BTrioRight = {
 \key d \major
 \repeat volta 2 { <fs, a>8\p^\markup { \large "Trio." }( a, <d fs> a <e' g> a,
 <fs' a> a,) <d fs>( <cs e> <d fs> <e g>) <fs a>( d <g b> d <g cs> e <fs d'> a)
 \new Voice { \stemDown \slurUp <d, fs'>( <cs e> <d fs> <e g>)
 \slurDown <fs a>( d <g b> d <g cs> e <fs d'>) a <fs d'> <e cs'> <d b'> <cs a'> }
 \new Voice { \stemDown <b gs'>8( e <cs a'> e <a cs> e <gs b> e) <fs d'> <e cs'> <d b'> <cs a'>
 \slurDown <b gs'>8( e <cs a'> e <a cs> e <gs b>[ e]) }
 \new Voice { << { \stemUp \slurUp cs'8( b cs d! e a,) cs( e, b' e, \stemDown a e)
 \slurDown <a cs>8\p( <gs b> <a cs> <b d>) } \\
 { \stemDown e,2\f ~ e4 a gs s2 s4 } >> \stemDown \slurDown <cs e>8( e, <a cs> e <gs b> e a e fs\f d' b gs
 \stemUp a e fs d' b gs a\> gs a b g e\!) } }
 \repeat volta 2 { \new Voice { \stemUp \slurDown <fs a>8\p( b, <ds fs> b <e g> b \stemDown <fs' a> b, <ds fs> b <e g> b
 <fs' a>8 b, <ds fs> b <e g> b <fs' a>4) } <b b'>8\f <a a'> <g g'> <fs fs'>
 <e e'>4 <e e'> <b' b'> <e, e'> <b' b'>8 <a a'> <g g'> <fs fs'>
 <e e'>4 <e e'> <b' b'> <e, e'> e'8\p\staccato d\staccato e\staccato f\staccato
 g4 g4. g8 c!4( g) r g4
 %\setTextCresc
 g4.\< g8 c!4( g) r8 r16 g e'4( g,) r8 r16 g e'4( g,) r8 r16 g\!
 g8\f( f e f e d cs\staccato) gs'( a gs a e g! f e f e d a' gs a e f d
 a'8 gs a e f d a\> gs a gs a gs\!)
 <fs! a>8\p( a, <d fs> a <e' g!> a, <fs' a> d) <b' d>( <a cs> <g b> <fs a>)
 \new Voice { \stemDown \slurUp g8( d <fs a> d <g b> d <fs a> d) <b' d>( <a cs> <g b> <fs a>)
 \slurDown <e g>( d <fs a> d <g b> d <fs a> d) \slurUp <g b>( <fs a> <e g> <d fs>)
 <cs e>( a <d a'> a <d fs> a <cs e> a) <g' b>( <fs a> <e g> <d fs>) <cs e>8( a <fs' a> a, <d fs> a <cs e> a')
 << { d8( cs d b) a4 g e fs8[ a] } \\ { d,2\f ~ d8 a d b cs a d4 } >> \slurDown <b' d>8\p( <as cs> <b d> <g b>)
 <fs a!>( d <e g> b <cs e> a <d fs>[ a']) }
 \slurUp a8( g e cs d fs a g e cs
 \alternative { { d8\staccato) \slurDown cs\>( d e fs g\!) } { d4 r r \bar "||" } }}
}

scoreBRight = \relative c'' {
  \globalB
  % Music follows here.
  \BMenuettoRight
  \break
  \BTrioRight
}

BMenuettoLeft = {
   \repeat volta 2 \relative c { \grace { s32 s32 } <a a'>2( <e e'>4) <cs' cs'>4( <a a'>4) r4 r r \clef treble <a' fs'>4\staccato <b a'>4( <e gs>) r
 R2. \clef bass e,8( d' b d b d e, cs' a cs a cs d, b' fs b fs b) d,4 r r <d d'>4( <a' cs>) r
 e8( gs b gs fs e ds e fs b, cs ds e gs b gs fs e ds e fs b, cs ds e4) r r R2.
 \clef treble << { fs'4( gs a) gs } \\ { a,4 b2 } >> \clef bass e,4 r }
 \repeat volta 2 \relative c { \appoggiatura s32 R2. fs8( cs' fs e d cs fs, d' fs d cs b fs as e' cs b as b4) r r
 e,8( b' e d cs b e, cs' e cs b a e gs d' b a gs a2) <g, g'>4 <f f'>2 r4
 << { a'8( gs a c b a gs4) } \\ { f2.\sfp e4 } >> r4 r
 <a, a'>2 <e e'>4 <cs' cs'>4 <a a'> r r r \clef treble <a' fs'>4\staccato <b a'>( <e gs>4) r R2.
 \clef bass e,8( d' b d b d e, cs' a cs a cs e, cs' a cs a cs) <d, a' d>4 r r
 << { cs8.( d16) cs'4( b) } \\ { s4 e,2 } >> a8( cs e cs b a gs a b e, fs gs a cs e cs b a gs a b e, fs gs a4)
 <fs a>4 <d fs a> <cs e a> r r << { a'4( cs d) cs } \\ { d,4 e2 a4 } >> a,4 r }
}

BTrioLeft = {
 \key d \major
 \repeat volta 2 { <d,, d'>2. ~ <d d'>4 r4 r r r <a' a'>4 <d, d'>
 \new Voice { \change Staff="up" \stemUp \slurUp \clef treble fs''8^\markup { "L.H." }( e fs g) a4( b cs) d d4\rest d4\rest }
 e,,,4 cs a e' \new Voice { \change Staff="up" \stemUp \slurUp d'''8( cs b a)
 \appoggiatura ds32 e4 \appoggiatura ds32 e4 \appoggiatura ds32 e4 \appoggiatura ds32 e4 }
 a,,,,8( gs a b cs4) e e, a \new Voice { \change Staff="up" \stemUp \slurUp cs'''8( b cs d e4 cs b a) }
 <d,,, b'>4 <e d'> <a cs> <d, b'> <e d'> <a cs> r4 r }
 \repeat volta 2 { <b b'>2. ~ <b b'>4
 \new Voice { \change Staff="up" \stemUp \slurUp c''''8( b a g fs4) a8( g fs e ds4) } <b,, b'>8 <a a'> <g g'> <fs fs'>
 <e e'>4 <e e'> <b' b'> <e, e'> <b' b'>8 <a a'> <g g'> <fs fs'> <e e'>4 <e e'> <b' b'> <e, e'> r r \clef treble
 << { \override Staff.NoteCollision #'merge-differently-headed = ##t
 c''8( e g e f d c e g e f d c e g e f d c e g e c e bf c e g e c a cs! e g e cs <a d>2) e'8( f <a, e'>4) } \\
 { c2 b4 c2 b4 c2 b4 c2 f,4\rest bf2 f4\rest a2 f4\rest s2 gs4 s4 } >> r4 r
 <bf d gs>2. <a cs! a'>4 r <a d f> <a cs e> r <a d f> <a cs e> r r
 \clef bass <d,, d'>2. ~ <d d'>4 r r
 \new Voice { b'4( a g) d'4 \change Staff="up" \stemUp \slurUp d'''8( cs b a) g4( a b) a b\rest b\rest
 \change Staff="down" \stemUp a,,,4( fs d) a'4 \change Staff="up"  \slurUp b'''8( a g fs)
 \appoggiatura gs32 a4 \appoggiatura gs32 a4 \appoggiatura gs32 a4 \appoggiatura gs32 a4
 \change Staff="down" \stemDown \slurUp b,,8( as b g) fs4 e \stemUp a, \stemDown d
 \change Staff="up" \stemUp \slurUp d'''8( cs d b) a4( g e) fs }
 << { \new Voice { \change Staff="up" \stemDown d,4\f } g, fs
 \new Voice { \change Staff="up" \stemDown d'4 } g, } \\ { g,4 a d g, a } >>
 \alternative { { << { fs'4 } \\ { d4 } >> r4 r } { <d fs>4 d,_\markup { \center-align { "Menuetto D.C." } } r4 \bar"||" } }}
}

scoreBLeft = \relative c' {
  \globalB
  % Music follows here.
  \BMenuettoLeft
  \break
  \BTrioLeft
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

dynamics = {
  s4\p s2*4
  s2*3 s4 s4\mp s2*2
  s2*5 s4 s4\p
  s2*2 s2\cresc s8\fz s8\p s4 s2*2
  s2 s4 s8\f s8 s2*3
  s2*4 s4 s4\p
  s2*2 s2\< s2\>
  s2\! s2*2 s4 s4\f
  s2*5
  s2*2 s4 s4\p s2*2
  s2\< s4\! s4\cresc s2\> s2 s2\p
  s4 s4\f s2*4
  s2*3 s4 s4\p
  s2*5
  s2*2 s4 s4\mp s2*3
  s2*4 s4 s4\p s2
  s2 s2\cresc s8\fz s8\p s4 s2*3
  s4 s4\f s2*3
  s2*4
  s4 s2 s2\f s2 s2
  s2*3 s2\f s2
  s2*4
  s2\p s2*3
  s2*3 s2\f
  s2*5
  s2*3 s2\f s4 s4\ff s2
}

righta = \transpose c c'' {
  b,16-4( a, gs, a,-1 |
  c8)-.-3 r d16-3( c b, c |
  e8)-.-4 r f16-4( e ds e-1 |
  b-4 a gs a b a gs a |
  c'4)\accent a8-.-2 c'-.-4 |
  \grace { g!32[( a)] } b8-.-> <fs a>-.-2-4 <e g>-. <fs a>-. |
  \grace { g32[( a)] } b8-.-> <fs a>-.-2-4 <e g>-. <fs a>-. |
  \grace { g32[( a)] } b8-.-> <fs a>-.-4 <e g>-. <ds fs>-.-2-4 |
  e4--
}

rightaa = \transpose c c'' {
  b,16( a, gs, a, |
  c8)-. r d16( c b, c |
  e8)-. r f16( e ds e |
  b a gs a b a gs a |
  c'4*1/2) s8 a8-.-2 b-. |
  c'-.\accent b-. a-.-1  gs-.-2 a-. e-. f-.-4 d-.-2 |
  c4-- b,8.-2\trill( a,32 b, |
  a,4)--
}

rightb = \transpose c c'' {
  <c e>8[-.-1-3 <d! f!>-.] |
  <e g>-.-1-3 <e g>-. a16-4( g f e) |
  << { d4\accent-4 } \\ { b,8-2( g,) } >> <c e>8-. <d! f!>-. |
  <e g>-. <e g>-. a16-4( g f e) |
  <b, d>4\accent---2-4 <a, c>8-.-1-3 <b, d>-. |
  <c e>-.-1-3 <c e>-. f16-4( e d c) |
  << { b,4\accent-4 } \\ { gs,8-2( e,) } >> <a, c>8-. <b, d>-. |
  <c e>-. <c e>-. f16( e d c) |
  <gs, b,>4\accent---2-4
}

rightc = \relative c''' {
  <a a,>8-. <b b,>-. |
  <cs cs,>4\accent\tenuto <a a,>8-. <b b,>-. <cs cs,>-.\accent <b b,>-. <a a,>-. <gs gs,>-. |
  <fs fs,>-. <gs gs,>-. <a a,>-. <b b,>-. <gs gs,>-4( <e e,>)-. <a a,>8-. <b b,>-. |
  <cs cs,>4\accent\tenuto <a a,>8-. <b b,>-. <cs cs,>-.\accent <b b,>-. <a a,>-. <gs gs,>-. |
  <fs fs,>-. <b b,>-. <gs gs,>-. <e e,>-. |
  <a a,>4\tenuto
}

rightco = \relative c'' {
  a16( a' b, b' |
  cs,\accent cs') r8 a,16( a' b, b' cs, cs' b, b' a, a' gs, gs') |
  fs,( fs' gs, gs' a, a' b, b' gs, gs' e, e') a,16( a' b, b' |
  cs,\accent cs') r8 a,16( a' b, b' cs, cs' b, b' a, a' gs, gs') |
  fs,( fs' b, b' gs, gs' e, e'
}

rightcoa = \transpose c c' {
  <a a'>4)
}

rightcoat = \transpose c c' {
  <a a'>4\tenuto )
  << { cs''8. cs''16 } \\ { cs'4 } >>
}

rightd = \relative c''' {
  cs16-3( d cs b a b a gs-3 fs a gs fs |
  es fs gs es cs-2 ds es cs |
  fs-4 es-1 fs gs a gs a-1 b |
  cs bs cs bs cs d cs b) |
  a( b a gs-3 fs a gs fs |
  e! fs gs e cs-2 ds e cs |
  ds-3 e fs ds bs-1 cs ds bs |
  cs4--)
}

righte = \relative c''' {
  e,16-5( d! cs b! |
  a b cs d-1 e fs gs a) |
  a\accent-4( gs fs e) e-5( d cs b |
  a-1 b cs d-1 e fs gs a) |
  as8\accent-3( b-.-4) e,16-5( d cs b |
  a b cs d-1 e fs gs a) |
  a\accent-4( gs fs e) e-4( d cs b |
  cs-3 e a,-1 cs-4 b d gs,-2 b-4 |
  a4)-- cs'16( d cs b a b a gs fs a gs fs |
  es fs gs es cs ds es cs) |
  fs( es fs gs a gs a b |
  cs-3 bs cs bs cs bs cs as-2 |
  d)-4( cs d cs d cs d cs |
  d cs b a gs-2 a b gs |
  a b cs fs,-2 es fs gs es fs4)--
}

strum = \transpose c c { <<
  { cs'2\accent } \\
  { <cs e a>4\arpeggio }
>>
}

rightf = \transpose c c'' {
  << \strum \\ { s4 } >> |
  \strum |
  d'16-4( cs')-. b-. cs'-. d'( cs')-. b-. cs' |
  <d' a fs>2\accent |
  \repeat unfold 4 { \grace d'8( <cs' a e>8)-. } |
  << { b4.-3( e'8)-. } \\ { <gs e>2 } >> |
  << \strum \\ s4 >> |
  \strum |
  d'16( cs')-. b-. cs'-. d'( cs')-. b-. cs' |
  <d' a fs>2\accent |
  \grace d'8( <cs' a e>2)-. |
  \repeat unfold 4 { \grace cs'8( <b gs e>8)-. } |

  a4-- \grace { e32[( a)] } cs'8.-.-4 cs'16 |
  \repeat unfold 2 { \grace { e32[( a)] } cs'2\accent } |
  d'16( cs')-. b-. cs'-. d'( cs')-. b-. cs' |
  d'2\accent |
  \repeat unfold 4 { \grace { d'8( } cs'8)-. } |
  b4.-2( e'8)-. |
  << \strum \\ s4 >> |
  \strum |
  d'16( cs')-. b-. cs'-. d'( cs')-. b-. cs' |
  <d' a fs>2\accent |
  \grace { d'8( } <cs' a e>2)-. |
  \repeat unfold 4 { \grace { cs'8( } <b gs e>8)-. } |
  <a, cs e a-->4. <cs cs'>8-. |
  <a, a-->4. <e e'>8-. |
  <a, a-->4. <cs cs'>8-. |
  <a, a>-. <cs cs'>8-. <a, a>-. <e e'>8-. |
  <a, a>4-. <a, cs e a >4-.( |
  <a, cs e a >4)-. r4
}

lefta = {
  r4 |
  a8(-5 <c' e'>)-. <c' e'>-. <c' e'>-. |
  a8( <c' e'>)-. <c' e'>-. <c' e'>-. |
  a8-. <c' e'>-. a8-. <c' e'>-. |
  a8( <c' e'>)-. <c' e'>-. <c' e'>-. |
  e-.-> <b e'>-. <b e'>-. <b e'>-. |
  e-.-> <b e'>-. <b e'>-. <b e'>-. |
  e-.-> <b e'>-. b,-. b-. |
  e4--
}

leftaa = {
  r4 |
  a8( <c' e'>)-. <c' e'>-. <c' e'>-. |
  a8( <c' e'>)-. <c' e'>-. <c' e'>-. |
  a8-. <c' e'>-. a8-. <c' e'>-. |
  f8( <a ds'>)-. <a ds'>-. <a ds'>-. |
  e-. <a e'>-.  d!-. <f b>-. |
  c-. <e a>-. d-. <f b>-. |
  <e a>-.-4-1 <e a>-. <e gs>-.-4-2 <e gs>-. |
  <a, a>4--
}

leftb = {
  \repeat unfold 2 { r4 | c8-. c'-. e-. e'-. | g4 }
  \repeat unfold 2 { r4 | a,8-. a-. c-. c'-. | e4 }
}

stra = {
  \grace { a,32[( cs  e)] }
  a8-.-> a-.
}

strd = {
  \grace { d,32[( fs,  a,)] }
  d8-.-> d-.
}

strdis = {
  \grace { ds,32[( fs,  a,)] }
  ds8-.-> ds-.
}

stre = {
  \grace { e,32[( gs,  b,)] }
 e8-.-> e-.
}

stral = { \stra a8-. a-. }
strdl = { \strd d8-. d-. }
strel = { \stre e8-. e-. }

leftc = {
  r4 \stral \stral \strd \strdis \strel \stral \stral \strd \stre
}

leftd = \relative c {
  r4 |
  fs8-5( <a cs>)-. <a cs>-. <a cs>-. |
  gs8-4( <b cs>)-. <b cs>-. <b cs>-. |
  fs8( <a cs>)-. <a cs>-. <a cs>-. |
  es8( <gs cs>)-. <gs cs>-. <gs cs>-. |
  fs8( <a cs>)-. <a cs>-. <a cs>-. |
  gs8( <cs e!>)-. <cs e>-. <cs e>-. |
  gs8( <ds' fs>)-. <ds fs>-. <ds fs>-. |
  <cs e>4--
}

lefte = \relative c' {
  r4 |
  a8( <cs e>)-. <cs e>-. <cs e>-. |
  b-. <d e>-. gs,-. <d' e>-. |
  a8( <cs e>)-. <cs e>-. <cs e>-. |
  e,8( <gs d'>)-. <gs d'>-. <gs d'>-. |
  a8( <cs e>)-. <cs e>-. <cs e>-. |
  b-. <d e>-. gs,-. <d' e>-. |
  a-.-1 fs-.-2 d-. e-. a,-. a'-. r4 |

  fs8( <a cs>)-. <a cs>-. <a cs>-. |
  gs8( <b cs>)-. <b cs>-. <b cs>-. |
  fs8( <a cs>)-. <a cs>-. <a cs>-. |
  cs,( <gs' cs>)-. <g cs>-. <fs cs'>-. |
  b,8( <fs' b>)-. <fs b>-. <fs b>-. |
  b,8( <gs'! b>)-. <gs b>-. <gs b>-. |
  cs,-. <fs a>-. cs-. <gs' b>-. <fs a>4--
}

leftf = {
  \stral \stral \stral \strdl \stral \strel \stral \stral \stral \strdl \stral \strel
  a16( e' cs' e' a e' cs'  e')
  \repeat unfold 6 { a16 e' cs' e' }
  \repeat unfold 2 { a16 fs' d' fs' }
  \repeat unfold 2 { a16 e' cs' e' }
  \repeat unfold 2 { e16 e' gs e' }
  \stral \stral \stral \strdl \stral \strel \stral \stral \stral \stra \stra
  a,4-. <a, cs e a  >-.( < a, cs e a >)-. r4
}

right = {
  \clef G
  \key a \minor
  \partial 4
  \repeat volta 2 { \righta }
  \repeat volta 2 { \rightb \rightaa }
  \key a \major
  \repeat volta 2 { \rightc }
  \repeat volta 2 { \rightd }
  \repeat volta 2 { \righte }
  \repeat volta 2 { \rightc }
  \key a \minor
  \repeat volta 2 { \righta }
  \repeat volta 2 { \rightb \rightaa }
  \key a \major
  % These repeat commands form a manual volta+alternative set for the
  % purpose of fixing a warning regarding an inability to end a volta
  % spanner. One other way to fix this is to have the alternative
  % clause encompass the entire 2nd alternative which has the
  % consequence of extending the volta line to the end of the
  % piece. (I tried shortening the line which worked but still gave
  % the warning.)
  \set Score.repeatCommands = #'(start-repeat)
  \rightco
  \set Timing.measureLength = #(ly:make-moment 1 4)
  \set Score.repeatCommands = #'((volta "1"))
  \rightcoa
  \set Score.repeatCommands = #'((volta #f) (volta "2") end-repeat)
  \set Timing.measureLength = #(ly:make-moment 2 4)
  \once\override Slur #'positions = #'(4 . 4)
  \hideNotes \grace a'16.^( \unHideNotes
  \rightcoat
  \set Score.repeatCommands = #'((volta #f))
  \barNumberCheck #98
  \rightf
  \bar "|."
}

left = {
  \clef F
  \partial 4
  \repeat volta 2 { \lefta }
  \repeat volta 2 { \leftb \leftaa }
  \key a \major
  \repeat volta 2 { \leftc a,4^\tenuto }
  \repeat volta 2 { \leftd }
  \repeat volta 2 { \lefte }
  \repeat volta 2 { \leftc a,4^\tenuto }
  \key a \minor
  \repeat volta 2 { \lefta }
  \repeat volta 2 { \leftb \leftaa }
  \key a \major
  \leftc
  \set Timing.measureLength = #(ly:make-moment 1 4)
  a,4
  \set Timing.measureLength = #(ly:make-moment 2 4)
  \stra a8-. a8-.
  \leftf
  \bar "|."
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
  %\override NoteHead.color=#red
  %\right
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
  %\override NoteHead.color=#red
  %\left
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
