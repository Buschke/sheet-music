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
      \addlyrics { \scoreEVerse }
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
  } \lyricsto "soprano" \scoreFVerse
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
      \addlyrics { \scoreGVerse }
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
  } \lyricsto "soprano" \scoreHVerse
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
      \addlyrics { \scoreIVerse }
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
  } \lyricsto "soprano" \scoreJVerse
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

scoreMChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreMMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreMVerse = \lyricmode {
  % Lyrics follow here.

}

\bookpart {
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

scoreNSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreNAlto = \relative c' {
  \global
  % Music follows here.

}

scoreNTenor = \relative c' {
  \global
  % Music follows here.

}

scoreNBass = \relative c {
  \global
  % Music follows here.

}

scoreNVerse = \lyricmode {
  % Lyrics follow here.

}

scoreNFigBass = \figuremode {
  \global
  % Figures follow here.

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
  \score {
    <<
      \scoreNChoirPart
      \scoreNBassFiguresPart
    >>
    \layout { }
  }
}

scoreOChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreOMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreOVerse = \lyricmode {
  % Lyrics follow here.

}

\bookpart {
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

scorePSoprano = \relative c'' {
  \global
  % Music follows here.

}

scorePAlto = \relative c' {
  \global
  % Music follows here.

}

scorePTenor = \relative c' {
  \global
  % Music follows here.

}

scorePBass = \relative c {
  \global
  % Music follows here.

}

scorePVerse = \lyricmode {
  % Lyrics follow here.

}

scorePFigBass = \figuremode {
  \global
  % Figures follow here.

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
  \score {
    <<
      \scorePChoirPart
      \scorePBassFiguresPart
    >>
    \layout { }
  }
}

scoreQChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreQMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreQVerse = \lyricmode {
  % Lyrics follow here.

}

\bookpart {
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

scoreRSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreRAlto = \relative c' {
  \global
  % Music follows here.

}

scoreRTenor = \relative c' {
  \global
  % Music follows here.

}

scoreRBass = \relative c {
  \global
  % Music follows here.

}

scoreRVerse = \lyricmode {
  % Lyrics follow here.

}

scoreRFigBass = \figuremode {
  \global
  % Figures follow here.

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
  \score {
    <<
      \scoreRChoirPart
      \scoreRBassFiguresPart
    >>
    \layout { }
  }
}

scoreSChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreSMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreSVerse = \lyricmode {
  % Lyrics follow here.

}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreSChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreSMelody }
      \addlyrics { \scoreSVerse }
    >>
    \layout { }
  }
}

scoreTSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreTAlto = \relative c' {
  \global
  % Music follows here.

}

scoreTTenor = \relative c' {
  \global
  % Music follows here.

}

scoreTBass = \relative c {
  \global
  % Music follows here.

}

scoreTVerse = \lyricmode {
  % Lyrics follow here.

}

scoreTFigBass = \figuremode {
  \global
  % Figures follow here.

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
  } \lyricsto "soprano" \scoreTVerse
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
  \score {
    <<
      \scoreTChoirPart
      \scoreTBassFiguresPart
    >>
    \layout { }
  }
}

scoreUChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreUMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreUVerse = \lyricmode {
  % Lyrics follow here.

}

\bookpart {
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

scoreVSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreVAlto = \relative c' {
  \global
  % Music follows here.

}

scoreVTenor = \relative c' {
  \global
  % Music follows here.

}

scoreVBass = \relative c {
  \global
  % Music follows here.

}

scoreVVerse = \lyricmode {
  % Lyrics follow here.

}

scoreVFigBass = \figuremode {
  \global
  % Figures follow here.

}

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
  \score {
    <<
      \scoreVChoirPart
      \scoreVBassFiguresPart
    >>
    \layout { }
  }
}

scoreWChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreWMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreWVerse = \lyricmode {
  % Lyrics follow here.

}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreWChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreWMelody }
      \addlyrics { \scoreWVerse }
    >>
    \layout { }
  }
}

scoreXSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreXAlto = \relative c' {
  \global
  % Music follows here.

}

scoreXTenor = \relative c' {
  \global
  % Music follows here.

}

scoreXBass = \relative c {
  \global
  % Music follows here.

}

scoreXVerse = \lyricmode {
  % Lyrics follow here.

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
  } \lyricsto "soprano" \scoreXVerse
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
  \score {
    <<
      \scoreXChoirPart
      \scoreXBassFiguresPart
    >>
    \layout { }
  }
}

scoreYChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreYMelody = \relative c'' {
  \global
  % Music follows here.

}

scoreYVerse = \lyricmode {
  % Lyrics follow here.

}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreYChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreYMelody }
      \addlyrics { \scoreYVerse }
    >>
    \layout { }
  }
}

scoreZSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreZAlto = \relative c' {
  \global
  % Music follows here.

}

scoreZTenor = \relative c' {
  \global
  % Music follows here.

}

scoreZBass = \relative c {
  \global
  % Music follows here.

}

scoreZVerse = \lyricmode {
  % Lyrics follow here.

}

scoreZFigBass = \figuremode {
  \global
  % Figures follow here.

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
  } \lyricsto "soprano" \scoreZVerse
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
