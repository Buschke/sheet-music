\version "2.24.4"
\language "english"

\header {
  dedication = ""
  title = "Matthäus-Passion Johann Sebastian Bach"
  subtitle = "Matthäus-Passion"
  subsubtitle = "Choräle"
  instrument = "Chor und BC"
  composer = "Johann Sebastian Bach"
  arranger = ""
  poet = ""
  meter = "arrangiert: Prof. Dr. iur. Dr. med. Dr. rer.nat. Sven Buschke"
  piece = ""
  opus = "BWV 244"
  copyright = ""
  tagline = ""
}

\paper {
  % Add space for instrument names
  indent = 10\mm
}

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 3 (1. Choral, p.32) Herzliebster Jesu, CF
%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key b \minor
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=60
}

scoreAChordNames = \chordmode {
  \globalA
  \germanChords
  % Chords follow here.

}

scoreAMelody = \relative c'' {
  \globalA
  % Music follows here.
  \partial 4
  b4
  b b as8(gs) fs4 b cs d d e(d) cs\fermata
  cs d e fs8(e) d4 g g fs8(e) fs4 e2 d4\fermata
  d cs b a fs8(g) a4 a b a g2 fs4\fermata
  fs' e d cs2 b2.\fermata
  \bar "|."
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Herz -- liebs -- ter Je -- su, was hast du ver -- bro -- chen,
  dass man ein solch scharf Ur -- teil hat ge -- spro -- chen?
  Was ist die Schuld, in was für Miss -- e -- ta -- ten bist du ge -- ra -- ten?
}

\bookpart {
  \header {
    title = "Herzliebster Jesu, was hast du verbrochen (Nr. 3 (1))"
    instrument = "C.F. (und B.C.)"
  }
  \score {
    <<
      \new ChordNames \scoreAChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreAMelody }
      \addlyrics { \scoreAVerse }
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 3 (1. Choral, p. 32) Herzliebster Jesu, Chor
%%%%%%%%%%%%%%%%%%%%%

globalB = \globalA

scoreBSoprano = \relative c'' {
  \globalB
  % Music follows here.
  \scoreAMelody
}

scoreBAlto = \relative c' {
  \globalB
  % Music follows here.
  \partial 4
  fs4
  g
  d8(e) fs4 cs fs fs fs fs fs2 fs4\fermata
  fs fs a a b8(a) g4 a a d8(cs) b4(a8 g) fs4\fermata
  fs e d e d8(e) fs4 fs g fs fs8(ds e4) e\fermata
  d g fs fs4.(e8) ds2.\fermata
}

scoreBTenor = \relative c' {
  \globalB
  % Music follows here.
  \partial 4
  d4
  e b cs8(b) as4 b as b8(cs) d4 cs(b) as\fermata
  as b cs d8(cs) d(e) d4 e e d d(cs) a\fermata
  b8(a) g4 g8(fs) e(a) a4 d d d c b4.(as16 b) cs4\fermata
  b b8(as) b4 b(as) fs2.\fermata
}

scoreBBass = \relative c {
  \globalB
  % Music follows here.
  \partial 4
  b'4
  e,8(fs) g4 fs fs8(e) d4 fs b, b' as(b) fs\fermata
  fs b a d, g8(a) b4 cs d8(cs) b(a) g4(a) d,\fermata
  b e8(fs) g4 cs, d d'8(c) b(a) g(fs) e(ds) e2 as,4\fermata
  b cs d8(e) fs2 b,2.\fermata
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}


scoreBFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreBChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreBSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreBAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreBVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Baß" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreBTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreBBass }
  >>
>>

scoreBBassFiguresPart = \new FiguredBass \scoreBFigBass

\bookpart {
  \header {
    title = "Herzliebster Jesu, was hast du verbrochen (Nr. 3 (1))"
    instrument = "Chor und B.C.)"
  }  \score {
    <<
      \scoreBChoirPart
      \scoreBBassFiguresPart
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 10 (2. Choral, p. 49) Ich bins, ich sollte büßen, CF
%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \key af \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=60
}

scoreCChordNames = \chordmode {
  \globalC
  \germanChords
  % Chords follow here.
  \partial 4
  af4
  df s af s s s af\fermata
  s s s ef c f:7 df ef\fermata
  s s bf af s ef2.\fermata
  s4 s s af s bf2 f4\fermata
  f s af s s s2 c4\fermata
  c s s af s s s af\fermata
}

scoreCMelody = \relative c'' {
  \globalC
  % Music follows here.
  \partial 4
  c4
  af bf c8(df) ef4 df2 c4\fermata
  c8(df) ef4 ef bf c af2 g4\fermata
  ef af bf c c bf2.\fermata
  c4 af bf c8(df) ef4 df2 c4\fermata
  c8(df) ef4 ef bf c af2 g4\fermata
  ef af bf c df c df af\fermata
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  Ich bin's, ich soll -- te bü -- ßen,
  An Hän -- den und an Fü -- ßen
  Ge -- bun -- den in der Höll.
  Die Gei -- ßeln und die Ban -- den
  Und was du aus -- ge -- stan -- den,
  Ds hat ver -- die -- net mei -- ne Seel.
}

\bookpart {
  \header {
    title = "Ich bins, ich sollte büßen (Nr. 10 (2))"
    instrument = "C.F. (und B.C.)"
  }
  \score {
    <<
      \new ChordNames \scoreCChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreCMelody }
      \addlyrics { \scoreCVerse }
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 10 (2. Choral, p. 49) Ich bins, ich sollte büßen, Chor
%%%%%%%%%%%%%%%%%%%%%

globalD = \globalC

scoreDSoprano = \relative c'' {
  \globalD
  % Music follows here.
  \scoreCMelody
}

scoreDAlto = \relative c' {
  \globalD
  % Music follows here.
  \partial 4
  af'4
  f g af8(bf) c4 c(bf) af\fermata
  af af8(g) af(f) g(f) ef4 ef(d) ef\fermata
  bf ef df c8(df) ef4 ef2.\fermata
  g4 f ef ef f f8(ef f g) a4\fermata
  af bf af8(g) f4 g g(f) e\fermata
  ef ef8(f) ef(df) c(ef) f(g) af4 g ef\fermata
  \bar "|."
}

scoreDTenor = \relative c' {
  \globalD
  % Music follows here.
  \partial 4
  ef
  df df ef8(df) c(bf) af4(ef') ef\fermata
  f ef ef ef gf, af8(gf af4) bf\fermata
  gf8(ff) ef4 ff8(gf) af4 af g2.\fermata
  cf4 cf8(df) cf(bf) af(bf) cf4 bff8(cf df ef) ff4\fermata
  ff ef8(df) cf4 df gf, cf2 cf4\fermata
  cf cf8(df) cf(bff) af4 af ff' bf,8(cf16 df) cf4\fermata
  \bar "|."
}

scoreDBass = \relative c {
  \globalD
  % Music follows here.
  \partial 4
  af'4
  df8(c) bf4 af4. g8 f4(g) af\fermata
  f c8(bf) c(df) ef(df) c4 f2 ef4\fermata
  df c bf af8(bf) c(df) ef2.\fermata
  e4 f g af a bf(bf,) f'\fermata
  f g af af8(g) f(e) f(g af bf) c4\fermata
  c, f g af8(g) f(ef) d4 ef af,\fermata
  \bar "|."
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  \scoreCVerse
}

scoreDFigBass = \figuremode {
  \globalC
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \partial 4
  s4
  s <6> s4. s8 <6 5>4 <6 5> s\fermata
  <5>8 <6> <6> s <6> s s4 s <7>4 <6> s\fermata
  <6 4 2> <6> <5>8 <6> s s <6> s s2.\fermata
  <6>4 <5>8 <6> <6 5>4 s <6 5> s s <_!>\fermata
  <_-> <6>8 <5>8 s4 <6 4 2> <5 2> <9> <6> <_!>\fermata
  <_-> <7>8 <6> <6 5>4 s <6> <7 5> s s\fermata
  \bar "|."
}

scoreDChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreDSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreDAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreDVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Baß" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreDTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreDBass }
  >>
>>

scoreDBassFiguresPart = \new FiguredBass \scoreDFigBass

\bookpart {
  \header {
    title = "Ich bins, ich sollte büßen (Nr. 10 (2))"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreDChoirPart
      \scoreDBassFiguresPart
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 15 (3. Choral, p.58) Erkenne mich, mein Hüter, E-Dur, C.F.
%%%%%%%%%%%%%%%%%%%%%

globalE = {
  \key e \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=60
}


scoreEChordNames = \chordmode {
  \globalE
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    \partial 4
    e4 a s s s s s e\fermata
    s cs:min s s gs cs2.:min
  }
  \partial 4
  cs4:min
  s s s s s s s\fermata
  e a e s s cs2.\fermata
  s4 b s s b s fs b\fermata
  e s s s b e2.\fermata
  \bar "|."
}

scoreEMelody = \relative c'' {
  \globalE
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    gs4
    cs b a gs fs2 gs4\fermata
    ds' e e ds8(cs) ds4 cs2.
  }
  \partial 4
  e4
  ds8(cs) b4 cs ds e2 e4\fermata
  b cs b a a gs2.\fermata
  e'4 ds8(e) fs4 e ds cs2 ds4\fermata
  gs, a gs fs b gs2.\fermata
  \bar "|."
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  Er -- ken -- ne mich, mein Hü -- ter,
  mein Hir -- te, nimm mich an,
}

scoreEVerseB = \lyricmode {
  % Lyrics follow here.
  von dir, Quell al -- ler Gü -- ter,
  ist mir viel Guts ge -- tan,
}

scoreEVerseC = \lyricmode {
  % Lyrics follow here.
  dein Mund hat mich ge -- la -- bet
  mit Milch und sü -- ßer Kost,
  dein Geist hat mich be -- ga -- bet
  mit man -- cher Him -- mels -- lust.
}

\bookpart {
  \header {
    title = "Erkenne mich mein Hüter"
    subsubtitle = "Choräle, Nr. 15, 3. Choral, E-Dur"
    instrument = "C.F. (und B.C.)"
  }
  \score {
    <<
      \new ChordNames \scoreEChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreEMelody }
      \addlyrics { <<\scoreEVerse \new Lyrics{\scoreEVerseB}>>\scoreEVerseC }
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 15 (3. Choral, p. 49) Erkenne mich mein Hüter, E-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%

globalF = \globalE

scoreFSoprano = \relative c'' {
  \globalF
  % Music follows here.
  \scoreEMelody
}

scoreFAlto = \relative c' {
  \globalF
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e4
    e e e8(fs) fs(e) e4(ds) e\fermata
    fs e8(fs) gs4 gs gs8(fs) e2.
  }
  \partial 4
  cs'8(b)
  a4 gs8(fs) e4 a a( gs8 fs) gs4\fermata
  gs a gs gs fs es2.\fermata
  fs4 fs fs gs fs gs(fs) fs\fermata
  e e8(ds) e4 e ds e2.\fermata
  \bar "|."
}

scoreFTenor = \relative c' {
  \globalF
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    b4
    a b cs8(b) b4 cs(b) b\fermata
    bs gs cs cs bs cs2.
  }
  \partial 4
  gs'4
  fs8(e) ds4 cs8(b) a(b) cs4( b8 a) b4\fermata
  e e e8(ds) cs4 cs cs2.\fermata
  cs4 b b8(as) b(cs) ds(b) gs(cs as4) b\fermata
  b a b cs fs,8(b) b2.\fermata
  \bar "|."
}

scoreFBass = \relative c {
  \globalF
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e4
    a gs cs,8(ds) e4 a,(b) e\fermata
    ds cs8(ds) e(fs) gs4 gs, cs2.
  }
  \partial 4
  cs'4
  fs, gs a8(gs) fs4 e2 e4\fermata
  e a e fs8(gs) a(b) cs2.\fermata
  as4 b ds, gs8(as) b4 e,(fs) b,\fermata
  e8(ds) cs4 b a b e2.\fermata
  \bar "|."
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  \scoreEVerse
}

scoreFVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreEVerseB
}

scoreFVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreEVerseC
}

scoreFFigBass = \figuremode {
  \globalF
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \repeat volta 2 {
    \partial 4
    s4
    s <6> <6>8 <6 5> <9> <8> <6 5>4 s s\fermata
    <6/> s <6> <5 4> <_+> s2.
  }
  \partial 4
  s4
  <6>8 <5> <8> <7> <5>4 <6> <6 4>2 <5 3>4\fermata
  s s s <9> <6> <_+>2.\fermata
  <6 5!>4 s <6>8 <5/> <6> <6 5> s4 <6 5> <_+> s\fermata
  s <6> <6 4> <6 5> s s2.\fermata
  \bar "|."
}

scoreFChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreFSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreFAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" {<<\scoreFVerse \new Lyrics{\scoreFVerseB}>>\scoreFVerseC}
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Baß" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreFTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreFBass }
  >>
>>

scoreFBassFiguresPart = \new FiguredBass \scoreFFigBass

\bookpart {
  \header {
    title = "Erkenne mich mein Hüter"
    subsubtitle = "Choräle, Nr. 15, 3. Choral, E-Dur"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreFChoirPart
      \scoreFBassFiguresPart
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 17 (4. Choral, p. 60) Ich will hier bei dir stehen, Es-Dur, C.F.
%%%%%%%%%%%%%%%%%%%%%

globalG = {
  \key ef \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=60
}

scoreGChordNames = \chordmode {
  \globalG
  \germanChords
  % Chords follow here.

}

scoreGMelody = \relative c'' {
  \globalG
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    g4
    c bf af g f2 g4\fermata
    d' ef ef d8(c) d4 c2.
  }
  \partial 4
  ef4 d8(c) bf4 c d ef2 ef4\fermata
  bf c bf af af g2.\fermata
  ef'4 d8(ef) f4 ef d c2 d4\fermata
  g, af g f bf g2.\fermata
  \bar "|."
}

scoreGVerse = \lyricmode {
  % Lyrics follow here.
  Ich will hier bei dir ste -- hen,
  ver -- ach -- te mich doch nicht,
}

scoreGVerseB = \lyricmode {
  % Lyrics follow here.
  von dir will ich nicht ge -- hen,
  wenn dir dein Her -- ze bricht,
}

scoreGVerseC = \lyricmode {
  % Lyrics follow here.
  wenn dein Herz wird erb -- las -- sen
  im letz -- ten To -- dess -- toß,
  als -- denn will ich dich fas -- sen
  in mei -- nem Arm und Schoß.
}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreGChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreGMelody }
      \addlyrics { <<\scoreGVerse \new Lyrics{\scoreGVerseB}>> \scoreGVerseC }
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 17 (4. Choral, p. 60) Ich will hier bei dir stehen, Es-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%

globalH = \globalG

scoreHSoprano = \relative c'' {
  \globalH
  % Music follows here.
  \scoreGMelody
}

scoreHAlto = \relative c' {
  \globalH
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    ef4
    ef ef ef8(f) f(ef) ef4(d) ef\fermata
    f ef8(f) g4 g g8(f) ef2.
  }
  \partial 4
  c'8(bf) af4 g8(f) ef4 af af(g8 f) g4\fermata
  g af g g f e2.\fermata
  f4 f f g f g(f) f\fermata
  ef ef8(d) ef4 ef d ef2.\fermata
  \bar "|."
}

scoreHTenor = \relative c' {
  \globalH
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    bf4
    af bf c8(bf) bf4 c(bf) bf\fermata
    b g c c b c2.
  }
  \partial 4
  g'4 f8(ef) d4 c8(bf) af(bf) c4(bf8 af) bf4\fermata
  ef ef ef8(d) c4 c c2.\fermata
  c4 bf bf8(a) bf(c) d(bf) g(c) a4 bf\fermata
  bf af bf c f,8(bf) bf2.\fermata
  \bar "|."
}

scoreHBass = \relative c {
  \globalH
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    ef4
    af g c,8(d) ef4 af,4(bf) ef4\fermata
    d c8(d) ef(f) g4 g, c2.
  }
  \partial 4
  c'4 f, g af8(g) f4 ef2 ef4\fermata
  ef af ef f8(g) af(bf) c2.\fermata
  a4 bf d, g8(a) bf4 ef,(f) bf,\fermata
  ef8(d) c4 bf af bf ef2.\fermata
  \bar "|."
}

scoreHVerse = \lyricmode {
  % Lyrics follow here.
  \scoreGVerse
}

scoreHVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreGVerseB
}

scoreHVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreGVerseC
}

scoreHFigBass = \figuremode {
  \globalH
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \repeat volta 2 {
    \partial 4
    s4
    s <6> <6>8 <6 5> <9> <8> <6 5>4 s s\fermata
    <6!> s <6> <5 4> <_!> s2.
  }
  \partial 4
  s4
  <6>8 <5> <8> <7> <5>4 <6> <6 4>2 <5 3>4\fermata
  s s s <9> <6> <_!>2.\fermata
  <6 5>4 s <6>8 <5!> <6> <6 5> s4 <6 5> <_!> s\fermata
  s <6> <6 4> <6 5> s s2.\fermata
  \bar "|."
}

scoreHChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreHSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreHAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" {<<\scoreHVerse \new Lyrics{\scoreHVerseB}>> \scoreHVerseC}
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Baß" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreHTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreHBass }
  >>
>>

scoreHBassFiguresPart = \new FiguredBass \scoreHFigBass

\bookpart {
  \header {
    title = "Ich will hier bei dir stehen"
    subsubtitle = "Choräle, Nr. 17, 4. Choral, Es-Dur"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreHChoirPart
      \scoreHBassFiguresPart
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 25 (5. Choral, p. 90) Was mein Gott, das gscheh allzeit, h-Moll, C.F.
%%%%%%%%%%%%%%%%%%%%%

globalI = {
  \key b \minor
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=60
}

scoreIChordNames = \chordmode {
  \globalI
  \germanChords
  % Chords follow here.
  \partial 4

}

scoreIMelody = \relative c'' {
  \globalI
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    fs,8(g)
    a4 b a d d cs d\fermata
    d c b e d8(cs) cs2 b4
  }
  \partial 4
  b b b c8(b) a4 a gs a\fermata
  a b cs d cs b2 cs4\fermata
  fs,8(g) a4 b a d d cs d\fermata
  d cs b e d8(cs) cs2 b4\fermata
  \bar "|."
}

scoreIVerse = \lyricmode {
  % Lyrics follow here.
  Was mein Gott will, das gescheh all -- zeit,
  sein Will, der ist der bes -- te,
}

scoreIVerseB = \lyricmode {
  % Lyrics follow here.
  zu hel -- fen den' er ist be -- reit,
  die an ihn gläu -- ben fes -- te,
}

scoreIVerseC = \lyricmode {
  % Lyrics follow here.
  er hilft aus Not,
  der from -- me Gott,
  und züch -- ti -- get mit Ma -- ßen,
  wer Gott ver -- traut,
  fest auf ihn baut,
  den will er nicht ver -- las -- sen.
}

\bookpart {
  \header {
    title = "Was mein Gott, das gscheh allzeit, h-Moll, C.F."
    subsubtitle = "Choräle, Nr. 25, 5. Choral, h-Moll"
    instrument = "C.F. (und B.C.)"
  }
  \score {
    <<
      \new ChordNames \scoreIChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreIMelody }
      \addlyrics { <<\scoreIVerse \new Lyrics{\scoreIVerseB}>> \scoreIVerseC }
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 25 (5. Choral, p. 90) Was mein Gott, das gscheh allzeit, Chor
%%%%%%%%%%%%%%%%%%%%%

globalJ = \globalI

scoreJSoprano = \relative c'' {
  \globalJ
  % Music follows here.
  \scoreIMelody
}

scoreJAlto = \relative c' {
  \globalJ
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    d
    d d d d8(e) fs(g) a4 a\fermata
    gs a g8(a) b4 b b(as) fs
  }
  \partial 4
  fs e8(fs) gs4 gs fs fs e e\fermata
  fs fs8(e) e(d) d4 e fs(gs8 es) fs4\fermata
  fs fs fs8(es) fs4 fs e fs8(g) fs4\fermata
  fs e8(fs) gs(as) b4 b b(as) fs\fermata
  \bar "|."
}

scoreJTenor = \relative c' {
  \globalJ
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    b
    a g fs8(g) a(b) a4 e' fs\fermata
    e8(d) e(fs) g4 g fs g(fs8 e) d4
  }
  \partial 4
  d8(c) b4 e8(d) c4 c b c8(d) c4\fermata
  d d8(c) c(b) b(as) as(gs) fs(b d gs,) as4\fermata
  d cs d8(b) cs4 d8(cs) b4 a a\fermata
  a8(b) cs(ds) e4 b8(cs) d4 gs,( cs) ds\fermata
  \bar "|."
}

scoreJBass = \relative c {
  \globalJ
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    b'4
    fs g d8(e) fs(g) a4 a, d\fermata
    b a e'8(fs) g(a) b4 e,(fs) b,
  }
  b'8(a) gs(fs) e4 es fs8(e) ds4 e a,\fermata
  d gs, as b cs d(b) d\fermata
  b' a gs fs b8(a) gs4 a d,\fermata
  fs8(g) a4 gs g fs es(fs) b\fermata
  \bar "|."
}

scoreJVerse = \lyricmode {
  % Lyrics follow here.
  \scoreIVerse
}

scoreJVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreIVerseB
}

scoreJVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreIVerseC
}

scoreJFigBass = \figuremode {
  \globalI
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \repeat volta 2 {
    \partial 4
    s
    <6> s s <6>8 <6 5> <6 4>4 <5 3> s\fermata
    <6/> s <_!> <6> s <6 5> <_+> s
  }
  \partial 4
  s4 <6> <8 _+>8 <7> <6> <5> s4 <6 5> <6 _+>8 <7> s4\fermata
  s <7 6/>8 <6> <6 5>4 s <6/> <6> <6/ 4/ 3> <_+>\fermata
  <5>8 <6> <6>4 <7>8 <6/> s4 s <6 5> s s\fermata
  <6> s <6> <6> <6 4> <6 5> <_+> <_+>\fermata
  \bar "|."
}

scoreJChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreJSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreJAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano"  {<<\scoreJVerse \new Lyrics{\scoreJVerseB}>> \scoreJVerseC }
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Baß" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreJTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreJBass }
  >>
>>

scoreJBassFiguresPart = \new FiguredBass \scoreJFigBass

\bookpart {
  \header {
    title = "Was mein Gott, das gscheh allzeit, h-Moll, C.F."
    subsubtitle = "Choräle, Nr. 25, 5. Choral, h-Moll"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreJChoirPart
      \scoreJBassFiguresPart
    >>
    \layout { }
  }
}

scoreKChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreKMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreKVerse = \lyricmode {
  % Lyrics follow here.

}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreKChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreKMelody }
      \addlyrics { \scoreKVerse }
    >>
    \layout { }
  }
}

scoreLSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreLAlto = \relative c' {
  \global
  % Music follows here.

}

scoreLTenor = \relative c' {
  \global
  % Music follows here.

}

scoreLBass = \relative c {
  \global
  % Music follows here.

}

scoreLVerse = \lyricmode {
  % Lyrics follow here.

}

scoreLFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreLChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreLSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreLAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreLVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Baß" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreLTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreLBass }
  >>
>>

scoreLBassFiguresPart = \new FiguredBass \scoreLFigBass

\bookpart {
  \score {
    <<
      \scoreLChoirPart
      \scoreLBassFiguresPart
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 32 (7. Choral, p. 163) Mir hat die Welt trüglich gericht't, **B-Dur**, CF
%%%%%%%%%%%%%%%%%%%%%

globalM = {
  \key bf \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=60
}

scoreMChordNames = \chordmode {
  \globalM
  \germanChords
  % Chords follow here.
  \partial 4
}

scoreMMelody = \relative c'' {
  \globalM
  % Music follows here.
  \partial 4
  bf4
  bf f' f(ef8 d c4) d ef8(d) c4 bf\fermata
  bf c d ef c f g f\fermata
  d d8(ef) f4 ef d8(c) bf( c d c) c4\fermata
  d bf8(c) d4 ef\fermata
  d c d ef\fermata
  d c bf f'4.(ef8 d4) ef8(d) c2 bf4\fermata
  \bar "|."
}

scoreMVerse = \lyricmode {
  % Lyrics follow here.
  Mir hat die Welt trüg -- lich ge -- richt'
  mit Lü -- gen und mit fal -- schem Gdicht,
  viel Netz und heim -- lich Stri -- cke,
  Herr, nimm mein wahr in die -- ser Gfahr,
  bhüt mich für fal -- schen Tü -- cken.
}

\bookpart {
  \header {
    title = "Mir hat die Welt trüglich gericht't"
    subsubtitle = "Nr. 32, 7. Choral, B-Dur"
    instrument = "C.F. (und B.C.)"
  }
  \score {
    <<
      \new ChordNames \scoreMChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreMMelody }
      \addlyrics { \scoreMVerse }
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 32 (7. Choral, p. 163) Mir hat die Welt trüglich gericht't, **B-Dur**, Chor
%%%%%%%%%%%%%%%%%%%%%

globalN = \globalM

scoreNSoprano = \relative c'' {
  \globalM
  % Music follows here.
  \scoreMMelody
}

scoreNAlto = \relative c' {
  \globalN
  % Music follows here.
  \partial 4
  f4
  g a8(bf) c4(bf8 a g4) f bf a f\fermata
  g fs f e8(f) g4 f4. e8 a4\fermata
  a g f c' bf d,(g) f\fermata
  f g8(a) b4 c\fermata
  bf bf af g\fermata
  f f8(ef) d(ef) f(g a2) g4 g(f8 ef) d4\fermata
  \bar "|."
}

scoreNTenor = \relative c' {
  \globalN
  % Music follows here.
  \partial 4
  d4
  d8(ef) f4 f(g8 f ef4) f bf, f'8(ef) d4\fermata
  ef ef d g, g8(a) bf(c) d(c) c4\fermata
  c bf8(c) d(ef) f4 f g(bf,) a\fermata
  bf8(a) g4 f g\fermata
  g'8(f) ef4 f bf,\fermata
  bf a bf c2. bf4 bf(a) f\fermata
  \bar "|."
}

scoreNBass = \relative c {
  \globalN
  % Music follows here.
  \partial 4
  bf'8(a)
  g4 d a'(bf bf) af g8(ef) f4 bf,\fermata
  ef a, b c8(d) ef4 d8(c) bf(c) f4\fermata
  fs g af a bf8(a) g(f e4) f\fermata
  bf, ef d c\fermata
  g' af8(g) f4 ef\fermata
  bf f' g a8(g f4 fs) g8(f) e4(f) bf,\fermata
  \bar "|."
}

scoreNVerse = \lyricmode {
  % Lyrics follow here.
  \scoreMVerse
}

scoreNFigBass = \figuremode {
  \globalN
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \partial 4
  s4
  <5>8 <6> <5> <6> <6>4 <4>8 <3> <6 4 2>4 <6 4 2> <6>8 <7 5> s4 s\fermata
  s <6/ 5> <6 5!> s <6> <6> <6 5>8 <_!> s4\fermata
  <6 5> <5>8 <6> <6>4 <6 5> s s <7 5>8 <6> s4\fermata
  s <5 3>8 <6 4> <6!>4 s\fermata
  <_-> <5> <6 _-> s\fermata
  s s <5>8 <6> <6>8 <6> <8> <7> <6 5>4 <6>8 <6 4 2> <6 5>4 s s\fermata
  \bar "|."
}

scoreNChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreNSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreNAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreNVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Baß" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreNTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreNBass }
  >>
>>

scoreNBassFiguresPart = \new FiguredBass \scoreNFigBass

\bookpart {
  \header {
    title = "Mir hat die Welt trüglich gericht't"
    subsubtitle = "Nr. 32, 7. Choral, B-Dur"
    instrument = "C.F. (und B.C.)"
  }
  \score {
    <<
      \scoreNChoirPart
      \scoreNBassFiguresPart
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 37 (8. Choral, p. 175) Wer hat dich so geschlagen, F-Dur, CF
%%%%%%%%%%%%%%%%%%%%%

globalO = {
  \key f \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=60
}


scoreOChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreOMelody = \relative c'' {
  \globalO
  % Music follows here.
  \partial 4
  a4
  f g a8(bf) c4 bf2 a4\fermata
  a8(bf) c4 c g a8(g) f2 e4\fermata
  c f g a8(bf16 c) b8(a) g2.\fermata
  a4 f g a8(bf) c4 bf2 a4\fermata
  a8(bf) c4 c g a8(g) f2 e4\fermata
  c f g a g8(a16 bf) a4 g f\fermata
  \bar "|."
}

scoreOVerse = \lyricmode {
  % Lyrics follow here.
  Wer hat dich so ge -- schla -- gen,
  mein Heil, und dich mit Pla -- gen
  so ü -- bel zu -- ge -- richt'?
  Du bist ja nicht ein Sün -- der,
  wie wir und uns -- re Kin -- der,
  von Miss -- e -- ta -- ten weißt du nicht.
}

\bookpart {
  \header {
    title = "Wer hat dich so geschlagen"
    subsubtitle = "Choräle, Nr. 37, 8. Choral, F-Dur"
    instrument = "C.F. (und B.C.)"
  }
  \score {
    <<
      \new ChordNames \scoreOChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreOMelody }
      \addlyrics { \scoreOVerse }
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 37 (8. Choral, p. 175) Wer hat dich so geschlagen, F-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%

globalP = \globalO

scorePSoprano = \relative c'' {
  \globalP
  % Music follows here.
  \scoreOMelody
}

scorePAlto = \relative c' {
  \globalP
  % Music follows here.
  \partial 4
  f4
  d e f8(g) a4 a(g) f\fermata
  f f8(e) f(g) e(d) c4 c(b) c\fermata
  e d c c d e2.\fermata
  e4 d c c d d(g) fs\fermata
  f f f e8(d) c4 c(b) c\fermata
  g c bf a8(c) f4 f e c\fermata
  \bar "|."
}

scorePTenor = \relative c' {
  \globalP
  % Music follows here.
  \partial 4
  c4
  d c8(bf) a4. g8 f4(c') c\fermata
  c c c c c8(b) a(g f4) g\fermata
  bf a g f f c'2.\fermata
  a4 a g f8(g) a4 g8(a bf c) d4\fermata
  d c8(bf) c(d) e4 f f,8(a g f) g4\fermata
  e f8(c') d(e) f(c) bf(f) c'4. bf8 a4\fermata
  \bar "|."
}

scorePBass = \relative c {
  \globalP
  % Music follows here.
  \partial 4
  f4
  bf a8(g) f4. e8 d4(e) f\fermata
  f8(g) a4 a,8(bf) c4 a d2 c4\fermata
  c d e f bf, c2.\fermata
  cs4 d e f fs g(g,) d'\fermata
  d' a8(g) a(bf) c4 f,8(e) d(c d4) c\fermata
  bf a g f d' c8(bf) c4 f,\fermata
  \bar "|."
}

scorePVerse = \lyricmode {
  % Lyrics follow here.
  \scoreOVerse
}


scorePFigBass = \figuremode {
  \globalP
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \partial 4
  s4 s <7 5> s s
}

scorePChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scorePSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scorePAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scorePVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Baß" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scorePTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scorePBass }
  >>
>>

scorePBassFiguresPart = \new FiguredBass \scorePFigBass

\bookpart {
  \header {
    title = "Wer hat dich so geschlagen"
    subsubtitle = "Choräle, Nr. 37, 8. Choral, F-Dur"
    instrument = "C.F. (und B.C.)"
  }
  \score {
    <<
      \scorePChoirPart
      \scorePBassFiguresPart
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 40 (9. Choral, p. 185) Bin ich gleich von dir gewichen, **A-Dur**, CF
%%%%%%%%%%%%%%%%%%%%%

globalQ = {
  \key a \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=60
}

scoreQChordNames = \chordmode {
  \globalQ
  \germanChords
  % Chords follow here.

}

scoreQMelody = \relative c'' {
  \globalQ
  % Music follows here.
  cs4 d e e d cs b b\fermata
  cs d e d8(cs) b4. a8 a2\fermata
  cs4 d e e d cs b b \fermata
  cs d e d8(cs) b4. a8 a2\fermata
  b4 cs d8(cs) d(e) cs4cs b2\fermata
  d4 e fs e8(fs16 g) fs4 e8(d) d2\fermata
  cs4 d e e d cs b b\fermata
  cs d e a,8(b) cs4 b8(a) a4 a\fermata
  \bar "|."
}

scoreQVerse = \lyricmode {
  % Lyrics follow here.
  Bin ich gleich von dir ge -- wi -- chen,
  stell ich mich doch wie -- der ein,
  hat uns doch dein Sohn ver -- gli -- chen
  durch sein Angst und To -- des -- pein.
  Ich ver -- leug -- ne nicht die Schuld,
  a -- ber dei -- ne Gnad und Huld
  ist viel grö -- ßer als die Sün -- de,
  die ich stets in mir be -- fin -- de.
}

\bookpart {
  \header {
    title = "Bin ich gleich von dir gewichen"
    subsubtitle = "Nr. 40, 9. Choral, A-Dur"
    instrument = "C.F. (und B.C.)"
  }
  \score {
    <<
      \new ChordNames \scoreQChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreQMelody }
      \addlyrics { \scoreQVerse }
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 40 (9. Choral, p. 185) Bin ich gleich von dir gewichen, **A-Dur**, Chor
%%%%%%%%%%%%%%%%%%%%%

globalR = \globalQ

scoreRSoprano = \relative c'' {
  \globalR
  % Music follows here.
  \scoreQMelody
}

scoreRAlto = \relative c' {
  \globalR
  % Music follows here.
  a'8(gs) fs4 b8(a) gs4 fs e8(fs) gs4 gs\fermata
  a8(gs) a4 a8(gs) a4 a8(fs) gs4 e2\fermata
  a8(gs) fs4 b8(a) gs4 fs e8(fs) gs4 gs\fermata
  a8(gs) a4 a8(gs) a4 a8(fs) gs4 e2\fermata
  gs4 as b8(as) b4 b as fs2\fermata
  b4 b8(a) a4 b a g8(fs) fs2\fermata
  e4 a gs b8(a) a(gs) a4 e8(fs) gs4\fermata
  a gs8(fs) e(gs) a4 a gs e e\fermata
  \bar "|."
}

scoreRTenor = \relative c' {
  \globalR
  % Music follows here.
  fs8(e) d(cs) b4 cs8(b) a(b) cs(d) e4 e\fermata
  e a,8(b) cs(d) e4 fs e8(d) cs2\fermata
  e4 d8(cs) b4 cs8(b) a(b) cs(d) e4 e\fermata
  e a,8(b) cs(d) e4 fs e8(d) cs2\fermata
  e4 e fs e8(d) g4 fs8(e) d2\fermata
  fs4 e d8(cs) d4 d8(b) cs4 a2\fermata
  a4 b8(cs) b4 cs d8(e) fs4 gs e\fermata
  e d cs8(d) e(fs) e4 d8(cs) cs 4 cs\fermata
  \bar "|."
}

scoreRBass = \relative c {
  \globalR
  % Music follows here.
  fs4 b8(a) gs(fs) e4 fs8(gs) a4 e e\fermata
  a fs cs b8(a) d4 e a,2\fermata
  a'4 b8(a) gs(fs) e4 fs8(gs) a4 e e\fermata
  a fs cs b8(a) d4 e a,2\fermata
  e'4 d8(cs) b4 g'e fs b,2\fermata
  b'4 cs d g, a a, d2\fermata
  a'4 gs8(fs) gs4 cs fs, e8(ds) e4 e\fermata
  a,8(gs) a(b) cs(b) cs(d) e4 e a, a\fermata
  \bar "|."
}

scoreRVerse = \lyricmode {
  % Lyrics follow here.
  \scoreQVerse
}

scoreRFigBass = \figuremode {
  \globalR
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  <5>4 s <6> <6>8 <5> <6>4 <5>8 <6> s4 s\fermata
  s <6> <6> <6> <6 5> s s2\fermata
  <8>8 <7> <5>4 <6> <6>8 <5> <6>4 <5>8 <6> s4 s\fermata
  s <6> <6> <6> <6 5> s s2\fermata
  s4 <7 5 2> s s <6 5 _!> <_+> s2\fermata
  s4 <7>8 <6> s4 <6 5> <6 4> <5 3> s2\fermata
  s4 <7 5> <6> <7>8 <6> <6>4 <6 4 2> <5 4> <3>\fermata
  s <4 7>8 <5> <7>4 <6>8 <6 5>8 <6 4>4 <5 3> s s\fermata
  \bar "|."
}

scoreRChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreRSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreRAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreRVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Baß" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreRTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreRBass }
  >>
>>

scoreRBassFiguresPart = \new FiguredBass \scoreRFigBass

\bookpart {
  \header {
    title = "Bin ich gleich von dir gewichen"
    subsubtitle = "Nr. 40, 9. Choral, A-Dur"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreRChoirPart
      \scoreRBassFiguresPart
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 44 (10. Choral, p. 197) Befiehl du deine Wege, **D-Dur**, CF
%%%%%%%%%%%%%%%%%%%%%

globalS = {
  \key d \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=60
}

scoreSChordNames = \chordmode {
  \globalS
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    \partial 4
    d
    g s s s s s d\fermata
    s b:min s s s b2.:min\fermata
  }
  \partial 4
  b4:min
  s s s s s s s\fermata
  d g s s s s2.\fermata
  s4 a s s s s s a\fermata
  d s s s a d2.\fermata
  \bar "|."
}

scoreSMelody = \relative c'' {
  \globalS
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    fs,4 b a g fs e2 fs4\fermata
    cs' d d cs8(b) cs4 b2.
  }
  \partial 4
  d4
  cs8(b) a4 b cs d2 d4\fermata
  a b a g g fs2.\fermata
  d'4 cs8(d) e4 d cs b2 cs4\fermata
  fs, g fs e a fs2.\fermata
  \bar "|."
}

scoreSVerse = \lyricmode {
  % Lyrics follow here.
  Be -- fiehl du dei -- ne We -- ge
  und was dein Her -- ze kränkt

}

scoreSVerseB = \lyricmode {
  % Lyrics follow here.
  der al -- ler -- treus -- ten Pfle -- ge
  des, der den Him -- mel lenkt,
}

scoreSVerseC = \lyricmode {
  % Lyrics follow here.
  der Wol -- ken, Luft und Win -- den
  gibt We -- ge, Lauf und Bahn,
  der wird auch We -- ge fin -- den,
  da dein Fuß ge -- hen kann.
}

\bookpart {
  \header {
    title = "Befiehl du deine Wege"
    subsubtitle = "Choräle, Nr. 44, 10. Choral, D-Dur, CF"
    instrument = "C.F. (und B.C.)"
  }
  \score {
    <<
      \new ChordNames \scoreSChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreSMelody }
      \addlyrics { <<\scoreSVerse \new Lyrics {\scoreSVerseB}>> \scoreSVerseC }
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 44 (10. Choral, p. 197) Befiehl du deine Wege, **D-Dur**, Chor
%%%%%%%%%%%%%%%%%%%%%

globalT = \globalS

scoreTSoprano = \relative c'' {
  \globalT
  % Music follows here.
  \scoreSMelody
}

scoreTAlto = \relative c' {
  \globalT
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    d4
    d d d8(e) fs(d) d4(cs) d\fermata
    e d8(e) fs4 fs4. e8 d2.
  }
  \partial 4
  fs4 e8(g) fs(e) d4 g g(fs8 e) fs4\fermata
  fs g fs fs e ds2.\fermata
  e4 e e fs8(gs) a4 a(gs) a\fermata
  d,8(cs) b(cs) d4 d8(b) cs4 d2.\fermata
  \bar "|."
}

scoreTTenor = \relative c' {
  \globalT
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    a4
    g a b8(a) a4 b(a) a\fermata
    as b b b as b2.
  }
  \partial 4
  b8(a) g(b) d(cs) b(a) g(a) b4(a8 g) a4\fermata
  d d c b b b2.\fermata
  b4 a b a8(b) cs(a) fs'4(e) e\fermata
  a, g a a a a2.\fermata
  \bar "|."
}

scoreTBass = \relative c {
  \globalT
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    d4 g fs b,8(cs) d4 g,(a) d\fermata
    cs b8(cs) d(e) fs4 fs, b2.
  }
  \partial 4
  b4 e fs g8(fs) e4 d2 d4\fermata
  d g8(fs) e(ds) e(fs) g(a) b2.\fermata
  gs4 a gs fs e ds(e) a,\fermata
  d e fs8(g) a4 a, d2.\fermata
  \bar "|."}

scoreTVerse = \lyricmode {
  % Lyrics follow here.
  \scoreSVerse
}

scoreTVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreSVerseB
}

scoreTVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreSVerseC
}

scoreTFigBass = \figuremode {
  \globalS
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \repeat volta 2 {
    \partial 4
    s4 s <6> <6>8 <6 5> <9> <8> <6 5>4 s s\fermata
    <6/> s <6> <5 4> <_+> s2.\fermata
  }
  \partial 4
  s4
  <6>8 <5> <6> <5> <5>4 <6> <6 4>4 <5 3>8 <4 2> <5 3>4\fermata
  s s <6! 4 2> <9> <6> <_+>2.\fermata
  <6 5>4 s <6> <6> <6 4> <6 5> <_+> s\fermata
  s <7>8 <6> <6>4 <5 4> <3> s2.\fermata
  \bar "|."
}

scoreTChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreTSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreTAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" {<<\scoreTVerse \new Lyrics{\scoreTVerseB}>> \scoreTVerseC}
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Baß" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreTTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreTBass }
  >>
>>

scoreTBassFiguresPart = \new FiguredBass \scoreTFigBass

\bookpart {
  \header {
    title = "Befiehl du deine Wege"
    subsubtitle = "Choräle, Nr. 44, 10. Choral, D-Dur, CF"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreTChoirPart
      \scoreTBassFiguresPart
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 46 (11. Choral, p. 203) Wie wunderbarlich ist doch diese Strafe, h-Moll, C.F.
%%%%%%%%%%%%%%%%%%%%%

globalU = {
  \key b \minor
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=60
}

scoreUChordNames = \chordmode {
  \globalU
  \germanChords
  % Chords follow here.
  \partial 4
  s4
  e:min s s fs:min s s b:min b:min s b:min fs\fermata
  fs:min b:min a d8 d:maj7 g4 e:min e:min b:min s s a:min d\fermata
  d s g s d d s g s s e:min b\fermata
  b:min s s s fs b2.\fermata
  \bar "|."
}

scoreUMelody = \relative c'' {
  \globalU
  % Music follows here.
  \partial 4
  b4
  b b as fs b cs d d e(d) cs\fermata
  cs d e fs8(e) d4 g g fs8(e) fs4 e2 d4\fermata
  d c b a8(g) fs(g) a4 a b a g2 fs4\fermata
  fs' e d8(cs) cs2 b2.\fermata
  \bar "|."
}

scoreUVerse = \lyricmode {
  % Lyrics follow here.
  Wie wun -- der -- bar -- lich ist doch die -- se Stra -- fe,
  der gu -- te Hir -- te lei -- det für die Scha -- fe,
  die Schuld be -- zahlt der Her -- re, der Ge -- rech -- te,
  für sei -- ne Knech -- te.
}

\bookpart {
  \header {
    title = "Wie wunderbarlich ist doch diese Strafe"
    subsubtitle = "Choräle, Nr. 46, 11. Choral, h-Moll"
    instrument = "C.F. (und B.C.)"
  }
  \score {
    <<
      \new ChordNames \scoreUChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreUMelody }
      \addlyrics { \scoreUVerse }
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% Nr. 46 (11. Choral, p. 203) Wie wunderbarlich ist doch diese Strafe, h-Moll, C.F.
%%%%%%%%%%%%%%%%%%%%%

globalV = \globalU

scoreVSoprano = \relative c'' {
  \globalV
  % Music follows here.
  \scoreUMelody
}

scoreVAlto = \relative c' {
  \globalV
  % Music follows here.
  \partial 4
  a'4
  g gs fs cs b fs' fs b cs(b) as\fermata
  fs fs a a b8(a) g(a) b4 b b e,8(fs g4) fs\fermata
  b e, d e d8(e) fs4 fs g fs  fs8(ds e4) d\fermata
  b' b8(as) b4 b8(gs a4) fs2.\fermata
  \bar "|."
}

scoreVTenor = \relative c' {
  \globalV
  % Music follows here.
  \partial 4
  fs4
  e d cs as e' e d8(e) fs4 g(fs) fs\fermata
  as, b cs d8(cs) b4 b e d8(cs) b4 d(cs) a\fermata
  fs gs8(as) b4 e, a d d d8(e) fs4 b,2 b4\fermata
  d cs fs, fs'4.(e8) ds2.\fermata
  \bar "|."
}

scoreVBass = \relative c {
  \globalV
  % Music follows here.
  \partial 4
  ds4
  e es fs fs gs as b b as(b) fs\fermata
  fs b a d, g8(fs) e(fs) g(a) b4 a8(gs) a2 d,4\fermata
  d e8(fs) g4 c, d d'8(c) b(a) g(fs) e(ds) e2 b4\fermata
  b cs d8(e) fs2 b2.\fermata
  \bar "|."
}

scoreVVerse = \lyricmode {
  % Lyrics follow here.
  \scoreUVerse
}

scoreVFigBass = \figuremode {
  \globalV
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \partial 4
  <6 5>4
  s <7 5> <_+> s <6> <6 5> s s <7 5> s <_+>\fermata
  s s s <8>8 <7> s4 s <6> s <6 4 2> <5 4> <3> s\fermata
  s <6> s <6>8 <5> s4 s <7 5> s <6 4 2> <9> <8> <_+>\fermata
  <_!> <7>8 <6/> <6>4 <5 4> <_+> <_+>2.\fermata
  \bar "|."}

scoreVChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreVSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreVAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" \scoreVVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Baß" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreVTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreVBass }
  >>
>>

scoreVBassFiguresPart = \new FiguredBass \scoreVFigBass

\bookpart {
  \header {
    title = "Wie wunderbarlich ist doch diese Strafe"
    subsubtitle = "Choräle, Nr. 46, 11. Choral, h-Moll"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreVChoirPart
      \scoreVBassFiguresPart
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% O Haupt, voll Blut und Wunden, C.F.
%%%%%%%%%%%%%%%%%%%%%

globalW = {
  \key f \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=60
}

scoreWChordNames = \chordmode {
  \globalW
  \germanChords
  % Chords follow here.

}

scoreWMelody = \relative c'' {
  \globalW
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    a4
    d c bf a g2 a4\fermata
    e' f f e8(d) e4 d2.
  }
  \partial 4
  f4
  e8(d) c4 d e f2 f4\fermata
  c d c bf8(a) bf4 a2.\fermata
  f'4 e8(f) g4 f e d2 e4\fermata
  a, bf a g c a2.\fermata
  \bar "|."
}

scoreWVerseOneA = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  O Haupt voll Blut und Wun -- den,
  voll Schmerz und vol -- ler Hohn,
}

scoreWVerseOneB = \lyricmode {
  % Lyrics follow here.
  o Haupt, zum Spott ge -- bun -- den
  mit ei -- ner Dor -- nen -- kron,
}

scoreWVerseOneC = \lyricmode {
  % Lyrics follow here.
  o Haupt, sonst schön ge -- zie -- ret
  mit höchs -- ter Ehr und Zier,
  jetzt a -- ber hoch schimp -- fie -- ret
  ge -- grü -- ßet seist du mir!
}

scoreWVerseTwoA = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Du ed -- les An -- ge -- sich -- te,
  da -- vor sonst schrickt und scheut
}

scoreWVerseTwoB = \lyricmode {
  % Lyrics follow here.
  das gro -- ße Welt -- ge -- wich -- te:
  wie bist du so be -- speit,
  wie bist du so er -- blei -- chet!
}

scoreWVerseTwoC = \lyricmode {
  % Lyrics follow here.
  Wer hat dein Au -- gen -- licht,
  dem sonst kein Licht nicht glei -- chet,
  so schänd -- lich zu -- ge -- richt’?
}

 scoreWVerse = \lyricmode {
   % Lyrics follow here.
  \scoreWVerseOneA
 }

\bookpart {
  \header {
    title = "O Haupt, voll Blut und Wunden"
    instrument = "C.F. (und B.C.)"
  }  
  \score {
    <<
      \new ChordNames \scoreWChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreWMelody }
  \addlyrics { <<\scoreWVerseOneA \new Lyrics {\scoreWVerseOneB} >> \scoreWVerseOneC}
  \addlyrics { <<\scoreWVerseTwoA \new Lyrics {\scoreWVerseTwoB} >> \scoreWVerseTwoC}
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%
% O Haupt, voll Blut und Wunden, Chor
%%%%%%%%%%%%%%%%%%%%%

globalX = \globalW

scoreXSoprano = \relative c'' {
  \globalX
  % Music follows here.
  \scoreWMelody
}

scoreXAlto = \relative c' {
  \globalX
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    f4
    f8(g) a4 d,8(e) f4 f(e) f\fermata
    a a a a a8(g) f2.
  }
  \partial 4
  a4
  g g8(f) f4 bf bf(a8 g) a4\fermata
  a a8(g) a4 g8(fs) g4 fs2.\fermata
  g4 g c c c c(b) c\fermata
  f,8(e) d(e) f4 f e f2.\fermata
}

scoreXTenor = \relative c' {
  \globalX
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    d4
    d8(e) f4 g c, d(c) c\fermata
    e e d d cs a2.
  }
  \partial 4
  d8(c)
  bf4 c c bf8(c) d4(c8 bf) c4\fermata
  f8(ef) d4 d d d d2.\fermata
  d4 c8(d) e4 f g a(g) g\fermata
  c, bf c c8(bf16 a) g8(c) c2.\fermata
}

scoreXBass = \relative c {
  \globalX
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    d'8(c) bf4 a g f bf,(c) f\fermata
    cs d8(e) f(g) a4 a, d2.
  }
  \partial 4
  d4
  g a bf8(a) g4 f2 f4\fermata
  f bf fs g g, d'2.\fermata
  b4 c c'8(b) a4 g f(g) c,\fermata
  f g a8(bf) c4 c, f2.\fermata
}

scoreXVerseOneA = \lyricmode {
  % Lyrics follow here.
  \scoreWVerseOneA
}

scoreXVerseOneB = \lyricmode {
  % Lyrics follow here.
  \scoreWVerseOneB
}

scoreXVerseOneC = \lyricmode {
  % Lyrics follow here.
  \scoreWVerseOneC
}

scoreXVerseTwoA = \lyricmode {
  % Lyrics follow here.
  \scoreWVerseTwoA
}

scoreXVerseTwoB = \lyricmode {
  % Lyrics follow here.
  \scoreWVerseTwoB
}

scoreXVerseTwoC = \lyricmode {
  % Lyrics follow here.
  \scoreWVerseTwoC
}

scoreXVerse = \lyricmode {
  % Lyrics follow here.
  \scoreXVerseOneA
}

scoreXFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreXChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreXSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreXAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" { <<\scoreXVerseOneA \new Lyrics {\scoreXVerseOneB} >> \scoreXVerseOneC}
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" { <<\scoreXVerseTwoA \new Lyrics {\scoreXVerseTwoB} >> \scoreXVerseTwoC}
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Baß" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreXTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreXBass }
  >>
>>

scoreXBassFiguresPart = \new FiguredBass \scoreXFigBass

\bookpart {
  \header {
    title = "O Haupt, voll Blut und Wunden"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreXChoirPart
      \scoreXBassFiguresPart
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 62 (13. Choral, p. 254) Wenn ich einmal soll scheiden, **a-Moll**, C.F.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalY = {
  \key a \minor
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=60
}

scoreYChordNames = \chordmode {
  \globalY
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    \partial 4
    a4:min
    f s s c s s a:min\fermata
    s a:min s s s a2.:min
  }
  \partial 4
  a4:min
  s e:min s s s f a:min\fermata
  c s s s d:min s a s\fermata
  s g s s g s d g\fermata
  c s c s s s a:min e\fermata
  \bar "|."
}

scoreYMelody = \relative c'' {
  \globalY
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e,4
    a g f e d2 e4\fermata
    b' c b8(c16 d) c4 b8(a) a2.
  }
  \partial 4
  c4
  b8(a) g4 a b c2 c4\fermata
  g a g a8(g) f4 e2.\fermata
  c'4 b8(c) d4 c b a2 b4\fermata
  e, f e d g8(f) e2.\fermata
  \bar "|."
}

scoreYVerse = \lyricmode {
  % Lyrics follow here.
  Wenn ich ein -- mal soll schei -- den,
  so schei -- de nicht von mir,
}

scoreYVerseB = \lyricmode {
  % Lyrics follow here.
  wenn ich den Tod soll lei -- den,
  so tritt du denn her -- für,
}

scoreYVerseC = \lyricmode {
  % Lyrics follow here.
  wenn mir am al -- ler -- bängs -- ten
  wird um das Her -- ze sein,
  so reiß mich aus den Ängs -- ten
  kraft dei -- ner Angst und Pein.
}

\bookpart {
  \header {
    title = "Wenn ich einmal soll scheiden (Nr. 62 (13. Choral), a-Moll)"
    instrument = "C.F. (und B.C.)"
  }
  \score {
    <<
      \new ChordNames \scoreYChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreYMelody }
      \addlyrics { <<\scoreYVerse \new Lyrics {\scoreYVerseB}>> \scoreYVerseC }
    >>
    \layout { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 62 (13. Choral, p. 254) Wenn ich einmal soll scheiden, **a-Moll**, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalZ = \globalY

scoreZSoprano = \relative c'' {
  \globalZ
  % Music follows here.
  \scoreYMelody
}

scoreZAlto = \relative c' {
  \globalZ
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    c4
    c8(d) e4 a,8(b) c4 c(b) c\fermata
    e e f e d8(c) c2.
  }
  \partial 4
  e4
  fs e f f g(f) e\fermata
  e e8(d) cs(d) e4 e8(d) d4(cs2)\fermata
  a'4 g g g8(a) b(g) g4(fs) g\fermata
  c, d c d e8(d) d4(c b)\fermata
  \bar "|."
}

scoreZTenor = \relative c' {
  \globalZ
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    a4
    a8(b) c4 d g, a(g) g\fermata
    b a a a gs e2.
  }
  \partial 4
  a8(g)
  fs4 b c d c8(bf4 af8) g4\fermata
  c8(b) a4 bf a a a2.\fermata
  d4 d d8(e16 f) e4 d e(d) d\fermata
  g, g g g8(a) bf4 b(a gs)\fermata
  \bar "|."
}

scoreZBass = \relative c {
  \globalZ
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    a'8(g)
    f4 e d c fs,(g) a\fermata
    gs a d e e a,2.
  }
  a'4 ds e ef d e(f) a,\fermata
  a f e8(d) cs4 d a2.\fermata
  fs'4 g8(a) b4 e,8(fs) g4 cs,(d) g,\fermata
  c b c bf8(a) g4 gs(a e')\fermata
  \bar "|."
}

scoreZVerse = \lyricmode {
  % Lyrics follow here.
  \scoreYVerse
}

scoreZVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreYVerseB
}

scoreZVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreYVerseC
}

scoreZFigBass = \figuremode {
  \globalZ
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \repeat volta 2 {
    \partial 4
    s4 s <6> <7>8 <6> s4 <6 5> s s\fermata
    <6> s <6 5> <6 4> <5_+> s2.
  }
  \partial 4
  s4
  <6>8 <5> s4 <6 4 2> <6> <6 5-> s s\fermata
  s <7>8 <6> <6 5->4 <6>8 <5> s4 <4> <_+>2\fermata
  <6 5!>4 s <6> <6>8 <6 5> s4 <6 5> s s\fermata
  s <6 5> s <6> <8 _->8 <7> <6 5>4 s <_+>\fermata
  \bar "|."
}

scoreZChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreZSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreZAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup.staff-affinity = #CENTER
  } \lyricsto "soprano" { <<\scoreZVerse \new Lyrics {\scoreZVerseB}>> \scoreZVerseC }
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Baß" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreZTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus.X-offset = #2.0
    } { \voiceTwo \scoreZBass }
  >>
>>

scoreZBassFiguresPart = \new FiguredBass \scoreZFigBass

\bookpart {
  \header {
    title = "Wenn ich einmal soll scheiden (Nr. 62 (13. Choral), a-Moll)"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreZChoirPart
      \scoreZBassFiguresPart
    >>
    \layout { }
  }
}

\score {
  {
    <<
      \new ChordNames \scoreAChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreAMelody }
      \addlyrics { \scoreAVerse }
    >> <<
      \scoreBChoirPart
      \scoreBBassFiguresPart
    >> <<
      \new ChordNames \scoreCChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreCMelody }
      \addlyrics { \scoreCVerse }
    >> <<
      \scoreDChoirPart
      \scoreDBassFiguresPart
    >> <<
      \new ChordNames \scoreEChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreEMelody }
      \addlyrics { \scoreEVerse }
    >> <<
      \scoreFChoirPart
      \scoreFBassFiguresPart
    >> <<
      \new ChordNames \scoreGChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreGMelody }
      \addlyrics { \scoreGVerse }
    >> <<
      \scoreHChoirPart
      \scoreHBassFiguresPart
    >> <<
      \new ChordNames \scoreIChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreIMelody }
      \addlyrics { \scoreIVerse }
    >> <<
      \scoreJChoirPart
      \scoreJBassFiguresPart
    >> <<
      \new ChordNames \scoreKChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreKMelody }
      \addlyrics { \scoreKVerse }
    >> <<
      \scoreLChoirPart
      \scoreLBassFiguresPart
    >> <<
      \new ChordNames \scoreMChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreMMelody }
      \addlyrics { \scoreMVerse }
    >> <<
      \scoreNChoirPart
      \scoreNBassFiguresPart
    >> <<
      \new ChordNames \scoreOChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreOMelody }
      \addlyrics { \scoreOVerse }
    >> <<
      \scorePChoirPart
      \scorePBassFiguresPart
    >> <<
      \new ChordNames \scoreQChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreQMelody }
      \addlyrics { \scoreQVerse }
    >> <<
      \scoreRChoirPart
      \scoreRBassFiguresPart
    >> <<
      \new ChordNames \scoreSChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreSMelody }
      \addlyrics { \scoreSVerse }
    >> <<
      \scoreTChoirPart
      \scoreTBassFiguresPart
    >> <<
      \new ChordNames \scoreUChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreUMelody }
      \addlyrics { \scoreUVerse }
    >> <<
      \scoreVChoirPart
      \scoreVBassFiguresPart
    >> <<
      \new ChordNames \scoreWChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreWMelody }
      \addlyrics { \scoreWVerse }
    >> <<
      \scoreXChoirPart
      \scoreXBassFiguresPart
    >> <<
      \new ChordNames \scoreYChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreYMelody }
      \addlyrics { \scoreYVerse }
    >> <<
      \scoreZChoirPart
      \scoreZBassFiguresPart
    >>
  }
  \midi { }
}
