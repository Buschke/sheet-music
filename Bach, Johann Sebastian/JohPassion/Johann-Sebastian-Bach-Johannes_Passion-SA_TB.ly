\version "2.24.4"
\language "english"

\header {
  dedication = ""
  title = "Johannes-Passion Johann Sebastian Bach"
  subtitle = "Johannes-Passion"
  subsubtitle = "Choräle"
  instrument = "CF, Chor und BC"
  composer = "Johann Sebastian Bach"
  arranger = ""
  poet = ""
  meter = "arrangiert: Prof. Dr. iur. Dr. med. Dr. rer.nat. Sven Buschke"
  piece = ""
  opus = "BWV 245"
  copyright = ""
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
  % Add space for instrument names
  indent = 10\mm
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
}

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 3 (1. Choral, p. 23) O große Lieb, o Lieb ohn alle Maße, **g-Moll**
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key g \minor
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreAChordNames = \chordmode {
  \globalA
  \germanChords
  % Chords follow here.
  \partial 4
  g4:min
  s s d\fermata
  s s s g g s g d\fermata
  d:min g s g s s s s s s f bf\fermata
  g:min s s d d bf s ef s s s bf\fermata
  bf s g s s g2.\fermata
  \bar "|."
}

scoreAMelody = \relative c'' {
  \globalA
  % Music follows here.
  \partial 4
  g4
  g g fs\fermata
  d g a bf bf c(bf) a\fermata
  a bf c d8(c) bf4 ef ef d df8(c) c2 bf4\fermata
  bf a g f d8(ef) f4 f g f ef2 d4\fermata
  d' c bf8(a) a2 g2.\fermata
  \bar "|."
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  O gro -- ße Lieb, o Lieb ohn al -- le Ma -- ße,
  die dich ge -- bracht auf die -- se Mar -- ter -- stra -- ße,
  ich leb -- te mit der Welt in Lust und Freu -- den,
  und du mußt lei -- den.
}

\bookpart {
  \header {
    title = "O große Lieb, o Lieb ohn alle Maße"
    subsubtitle = "Nr. 3, 1. Choral, **g-Moll**"
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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 3 (1. Choral, p. 23) O große Lieb, o Lieb ohn alle Maße, **g-Moll**, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
  d4
  ef8(d) c4 d\fermata
  a d8(e) fs4 g g a(g) fs\fermata
  fs g a bf f g8(a) bf4 bf bf bf(a) f\fermata
  g8(f) ef(d) e4 d a d8(ef) f4 f8(ef) ef(d) d(c16 bf c4) bf\fermata
  bf' a g g(fs) d2.\fermata
  \bar "|."
}

scoreBTenor = \relative c' {
  \globalB
  % Music follows here.
  \partial 4
  bf4
  bf a8(g) a4\fermata
  fs g c d d ef(d) d\fermata
  d d ef f8(ef) d(c) bf4 bf8(c) d(bf) g'4 f4.(ef8) d4\fermata
  d c bf a f bf bf bf a bf(f) f\fermata
  f' ef d e d8(c) b2.\fermata
  \bar "|."
}

scoreBBass = \relative c {
  \globalB
  % Music follows here.
  \partial 4
  g'4
  c,8(d) ef4 d\fermata
  c bf a g g' fs(g) d\fermata
  d g c bf af g gf f e f2 bf,4\fermata
  g c cs d d8(c) bf(c) d(bf) ef4 f g(a) bf\fermata
  bf fs g cs,(d) g,2.\fermata
  \bar "|."
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreBFigBass = \figuremode {
  \globalB
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  \partial 4
  s4
  <7 6> <6 4>8 <3> <_+>4\fermata
  <4+> <6> <6/> s s <7 5> s <_+>\fermata
  s s <6> s <2> <6> <6> <6 4> <7- 5> <4> <3> s\fermata
  s <6> <7 5> s s s <6> s <6> <6 5> <6 5> s\fermata
  s <7 5> s <6 5> <8 _+>8 <7> <_!>2.\fermata
  \bar "|."
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
    title = "O große Lieb, o Lieb ohn alle Maße"
    subsubtitle = "Nr. 3, 1. Choral, **g-Moll**"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreBChoirPart
      \scoreBBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (2. Choral, p. 25) Dein Will gescheh, Herr Gott, zugleich, **d-Moll**, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \key d \minor
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreCChordNames = \chordmode {
  \globalC
  \germanChords
  % Chords follow here.
  \partial 4
  d4:min
  s d:min
}

scoreCMelody = \relative c'' {
  \globalC
  % Music follows here.
  \partial 4
  a4
  a8(g) f4 g a8(g) f4 e d\fermata
  a' a g c a8(g) f4 g a\fermata
  a8(b) c4 d8(e) f4 e d cs d\fermata
  d e d c b a gs a\fermata
  d c b c8(bf) a4 a g f\fermata
  a bf a8(g) f4 g f e d\fermata
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  Dein Will ge -- scheh, Herr Gott, zu -- gleich
  auf Er -- den wie im Him -- mel -- reich,
  gib uns Ge -- duld in Lei -- dens -- zeit,
  ge -- hor -- sam sein in Lieb und Leid,
  Wehr und steur al -- lem Fleisch und Blut,
  Das wi -- der dei -- nen Wil -- len tut.
}

\bookpart {
  \header {
    title = "Dein Will gescheh, Herr Gott, zugleich"
    subsubtitle = "Chorläle, Nr. 5, 2. Choral, d-Moll"
    instrument = "CF"
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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 5 (2. Choral, p. 25) Dein Will gescheh, Herr Gott, zugleich, **d-Moll**, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
  f4
  e e8(d) cs(d16 e) a,4 bf8 d4 cs8 a4\fermata
  d' a bf c4. cs8 d(cs) d4 cs\fermata
  c a g f8(a) g(e) f(e) e4 fs\fermata
  g8(f) e4 b' e, f8(e) e(d) e4 e\fermata
  g g8(f16 e) f4 e f f4. e8 c4\fermata
  d d e e8(a,) d4 d4. cs8 a4\fermata
  \bar "|."
}

scoreDTenor = \relative c' {
  \globalD
  % Music follows here.
  \partial 4
  d4
  a a g d' d a8(g) f4\fermata
  d' a bf c4. cs8 d(cs) d4 cs\fermata
  c c8(a) b(cs) d(c) bf4 b a a\fermata
  b b8(a) a(gs) a4. g8 a4 b c\fermata
  b c8(a) g(f) g4 d' d g,8(c) a4\fermata
  a g8(f) e4 a bf b e,8(a) fs4\fermata
  \bar "|."
}

scoreDBass = \relative c {
  \globalD
  % Music follows here.
  \partial 4
  d
  cs d e f g a d,\fermata
  d c bf a8(c) f4 bf8(a) bf4 a\fermata
  a8(g) f4. e8 d4 g gs a d,\fermata
  g c, b a d8(e) f4 e a,\fermata
  g'8(f) e4 d c d8(c) bf4 c f\fermata
  fs g cs, d8(c) bf(a) gs4 a d\fermata
  \bar "|."
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  \scoreCVerse
}

scoreDFigBass = \figuremode {
  \global
  % Figures follow here.
  
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
    title = "Dein Will gescheh, Herr Gott, zugleich"
    subsubtitle = "Chorläle, Nr. 5, 2. Choral, d-Moll"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreDChoirPart
      \scoreDBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 11 (3. Choral, p. 40) Wer hat dich so geschlagen, **A-Dur**, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalE = {
  \key a \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}


scoreEChordNames = \chordmode {
  \globalE
  \germanChords
  % Chords follow here.

}

scoreEMelody = \relative c'' {
  \globalE
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    cs
    a b cs8(d) e4 d2 cs4\fermata
    cs e e b d8(cs) a2 gs4\fermata
    e a b cs8(d16 e) d8(cs) b2.\fermata
    cs4 a b cs8(d) e4 d2 cs4\fermata
    cs8(d) e4 e b cs a2 gs4\fermata
    e a b cs8(d) e(d) cs4 b a\fermata
  }
}

scoreEVerse = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Wer hat dich so ge -- schla -- gen,
  mein Heil, und dich mit Pla -- gen
  so ü --  bel zu -- ge -- richt',
  du bist ja nicht ein Sün -- der
  wie wir und uns -- re Kin -- der,
  von Miss -- e -- ta -- ten weißt du nicht.
}

scoreEVerseB = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Ich, ich und mei -- ne Sün -- den,
  die sich wie Körn -- lein fin -- den
  des San -- des an dem Meer,
  die ha -- ben dir er -- re -- get
  das E -- lend, das dich schlä -- get,
  und das be -- trüb -- te Mart -- er -- heer.
}

\bookpart {
  \header {
    title = "Wer hat dich so geschlagen"
    subsubtitle = "Nr. 11, 3. Choral, A-Dur"
    instrument = "CF"
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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 11 (3. Choral, p. 40) Wer hat dich so geschlagen, **A-Dur**, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
    a'4 fs gs a8(b) cs4 cs(b8 a) gs4\fermata
    a a a gs b8(a) fs2 e4\fermata
    b e fs8(gs) a(b16 cs) b8(a) gs2.\fermata
    gs4 fs e e fs fs(es) fs\fermata
    fs e a8(gs) fs4 e8(ds16 c) fs2 e4\fermata
    e e d cs8(e) a4 a gs e\fermata
  }
}

scoreFTenor = \relative c' {
  \globalF
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e4
    d d e a, a(b) cs\fermata
    fs e e e e e(ds) gs,\fermata
    gs a d e8(a,) gs(a) e'2.\fermata
    cs4 cs b a8(b) cs4 b(gs) as\fermata
    a a a a gs cs(b) b\fermata
    cs cs b e4. fs8 e4 d cs\fermata
  }
}

scoreFBass = \relative c {
  \globalF
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    a'4
    d cs8(b) a4. g8 fs2 es4\fermata
    fs cs8(b) cs(d) e4 a, b(bs) cs\fermata
    d cs b a d e2.\fermata
    es4 fs gs a as b2 fs4\fermata
    fs cs8(b) cs4 ds e e(ds) e\fermata
    cs fs8(e) fs(gs) a4 cs,8(d) e4 e a,\fermata
  }
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  \scoreEVerse
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  \scoreEVerse
}

scoreFVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreEVerseB
}

scoreFFigBass = \figuremode {
  \global
  % Figures follow here.
  
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
    title = "Wer hat dich so geschlagen"
    subsubtitle = "Nr. 11, 3. Choral, A-Dur"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreFChoirPart
      \scoreFBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 14 (4. Choral, p. 50) Petrus, der nicht denkt zurück, **A-Dur**, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalG = {
  \key a \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreGChordNames = \chordmode {
  \globalG
  \germanChords
  % Chords follow here.

}

scoreGMelody = \relative c'' {
  \globalG
  % Music follows here.
  cs4 b a b cs d e2\fermata
  fs4 e d cs8(b) b2 a\fermata
  cs4 e d cs b a gs2\fermata
  a4 b cs cs8(d16 e) d2 cs\fermata
  cs8(b) cs(d) e4 d cs b cs2\fermata
  b4 b cs8(ds) e4 e(ds) e2\fermata
  e4 cs fs4. e8 d4 cs8(b) b2\fermata
  cs4 cs8(d16 e) d4 cs8(b) b2 a\fermata
  \bar "|."
}

scoreGVerse = \lyricmode {
  % Lyrics follow here.
  Pe -- trus, der nicht denkt zu -- rück,
  sei -- nen Gott ver -- nei -- net,
  der doch auf ein erns -- ten Blick
  bit -- ter -- li -- chen wei -- net,
  Je -- su, bli -- cke mich auch an,
  wenn ich nicht will bü -- ßen,
  wenn ich Bö -- ses hab ge -- tan,
  rüh -- re mein Ge -- wis -- sen.
}

\bookpart {
  \header {
    title = "Petrus, der nicht denkt zurück"
    subsubtitle = "Choräle, Nr. 14, 4. Choral, A-Dur"
    instrument = "CF"
  }
  \score {
    <<
      \new ChordNames \scoreGChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreGMelody }
      \addlyrics { \scoreGVerse }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 14 (4. Choral, p. 50) Petrus, der nicht denkt zurück, **A-Dur**, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalH = \globalG

scoreHSoprano = \relative c'' {
  \globalH
  % Music follows here.
  \scoreGMelody
}

scoreHAlto = \relative c' {
  \globalH
  % Music follows here.
  a'4 gs fs e e fs g2\fermata
  fs4 gs a8(b) e,(a) a4(gs) e2\fermata
  a4 b a a gs fs es2\fermata
  fs4 e e fs fs8(a gs fs) gs2\fermata
  fs4 fs cs8(gs') a(b) a4 gs a2\fermata
  fs4 e a b cs(b8 a) gs2\fermata
  gs4 a a g g8(fs) e4 d2\fermata
  fs4 e8(fs) gs4 a a8(fs gs4) e2\fermata
}

scoreHTenor = \relative c' {
  \globalH
  % Music follows here.
  fs4 cs cs b a a a2\fermata
  d4 cs cs8(b) cs(d) e4(d8 cs) cs2\fermata
  e4 e fs e b a gs2\fermata
  a4 b cs cs8(d16 e) d2 cs\fermata
  cs8(b) cs(d) e4 d cs b cs2\fermata
  b4 b cs8(ds) e4 e(ds) e2\fermata
  e4 cs fs4. e8 d4 cs8(d) d2\fermata
  cs4 cs8(d16 e) d4 cs8(b) b2 a\fermata
  \bar "|."
}

scoreHBass = \relative c {
  \globalH
  % Music follows here.
  d4 es fs gs a fs cs2\fermata
  d4 e fs8(gs) a4 e2 a,\fermata
  a'4 gs fs8(gs) a4 es fs cs2\fermata
  fs4 gs a as b2 es,\fermata
  fs8(gs a b) cs4 fs,8(gs) a4 e a,2\fermata
  a'4 gs g fs8(e) as,4(b) e,2\fermata
  cs'4 fs d g e fs b,2\fermata
  fs'8(e) d(cs) b4 cs8(d) e2 a,\fermata
  \bar "|."
}

scoreHVerse = \lyricmode {
  % Lyrics follow here.
  \scoreGVerse
}

scoreHFigBass = \figuremode {
  \global
  % Figures follow here.
  
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
    title = "Petrus, der nicht denkt zurück"
    subsubtitle = "Choräle, Nr. 14, 4. Choral, A-Dur"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreHChoirPart
      \scoreHBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 15 (5. Choral, p. 51) Christus, der uns selig macht, **A-Dur**, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalI = {
  \key a \minor
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreIChordNames = \chordmode {
  \globalI
  \germanChords
  % Chords follow here.

}

scoreIMelody = \relative c'' {
  \globalI
  % Music follows here.
  e4 e e e d c b2\fermata
  c4 d e e d(c) b2\fermata
  a4 b c a a8(g) f4 e2\fermata
  f4 g a a g(f) e2\fermata
  a4 gs a b c b a2\fermata
  c4 d e e d(c) b2\fermata
  a4 b c a a8(g) f4 e2\fermata
  f4 g a a g(f) e2(e1)\fermata
  \bar "|."
}

scoreIVerse = \lyricmode {
  % Lyrics follow here.
  Chris -- tus, der uns se -- lig macht,
  kein Bös' hat be -- gan -- gen,
  der ward für uns in der Nacht
  als ein Dieb ge -- fan -- gen,
  ge -- führt für gott -- lo -- se Leut
  und fälsch -- lich ver -- kla -- get,
  ver -- lacht, ver -- höhnt und ver -- speit,
  wie denn die Schrift sa -- get.
}

\bookpart {
  \header {
    title = "Christus, der uns selig macht"
    subsubtitle = "Choräle, Nr. 15, 5. Choral, A-Dur"
    instrument = "CF"
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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 15 (5. Choral, p. 51) Christus, der uns selig macht, **A-Dur**, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalJ = \globalI

scoreJSoprano = \relative c'' {
  \globalJ
  % Music follows here.
  \scoreIMelody
}

scoreJAlto = \relative c' {
  \globalJ
  % Music follows here.
  gs4 gs a b a a gs2\fermata
  a4 bf bf a a2 gs\fermata
  c4 b a8(b) c(d) e4 d cs2\fermata
  d4 e ef d d2 cs\fermata
  d4 e e fs8(gs) a4 g fs2\fermata
  g4 g g f f(e8 fs) g2\fermata
  a4 e e e a, d cs2\fermata
  d4 e f f e( d2 c4) b1\fermata
  \bar "|."
}

scoreJTenor = \relative c' {
  \globalJ
  % Music follows here.
  b4 b c b8(c) d(e) f4 b,2\fermata
  a4 bf bf a a2 gs\fermata
  c4 b a8(b) c(d) e4 a, a2\fermata
  a4 c c c bf8(c d4) a2\fermata
  a4 b c d e d d2\fermata
  c4 bf a a a8(b c4) d2\fermata
  d8(c) b4 a8(b) c(d) e4 a, a2\fermata
  a4 c c c c8(b a4 gs a) gs1\fermata
  \bar "|."
}

scoreJBass = \relative c {
  \globalJ
  % Music follows here.
  e4 e a g f e8(d) e2\fermata
  a4 g cs, cs d(a) e'2\fermata
  a4 gs a f cs d a2\fermata
  d4 c f, fs g(gs) a2\fermata
  f'4 e8(d) c4 b a b8(c) d2\fermata
  ef4 d cs d8(e) f(g) a4 g2\fermata
  fs4 gs a a,8(b) cs4 d a2\fermata
  d4 c f,8(g) a(b) c4(d) e2(e1)\fermata
  \bar "|."
}

scoreJVerse = \lyricmode {
  % Lyrics follow here.
  \scoreIVerse
}

scoreJFigBass = \figuremode {
  \global
  % Figures follow here.
  
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
    title = "Christus, der uns selig macht"
    subsubtitle = "Choräle, Nr. 15, 5. Choral, A-Dur"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreJChoirPart
      \scoreJBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 17 (6. Choral, p. 63) Ach großer König, groß zu allen Zeiten, **A-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalK = {
  \key a \minor
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreKChordNames = \chordmode {
  \globalK
  \germanChords
  % Chords follow here.

}

scoreKMelody = \relative c'' {
  \globalK
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    a4
    a a gs e a b c c d(c16(b c8)) b4\fermata
    b c d8(e16 f) e4 c f f e8(d) c(d) d2 c4\fermata
    c b a g8(fs) e(fs) g4 g  a g f2 e4\fermata
    e' d c8(b) b2 a2.\fermata
  }
}

scoreKVerse = \lyricmode {
  % Lyrics follow here.
  \set stanza = "1."
  Ach, gro -- ßer Kö -- nig, groß zu al -- len Zei -- ten,
  wie kann ich gnug -- sam die -- se Treu aus -- brei -- ten,
  keins Men -- schen Her -- ze mag in -- des aus -- den -- ken,
  was dir zu schen -- ken.
}

scoreKVerseTwo = \lyricmode {
  % Lyrics follow here.
  \set stanza = "2."
  Ich kann's mit mei -- nen Sin -- nen nicht er -- rei -- chen,
  wo -- mit doch dein Er -- bar -- men zu ver -- glei -- chen,
  wie kann ich dir denn dei -- ne Lie -- bes -- ta -- ten
  im Werk er -- stat -- ten?
}

\bookpart {
  \header {
    title = "Ach großer König, groß zu allen Zeiten"
    subsubtitle = "Choräle, Nr. 17 (6. Choral), a-Moll"
    instrument = "CF"
  }
  \score {
    <<
      \new ChordNames \scoreKChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreKMelody }
      \addlyrics { \scoreKVerse }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 17 (6. Choral, p. 63) Ach großer König, groß zu allen Zeiten, **A-Moll
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalL = \globalK

scoreLSoprano = \relative c'' {
  \globalL
  % Music follows here.
  \scoreKMelody
}

scoreLAlto = \relative c' {
  \globalL
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    c8(d)
    e4 e e b e8(fs) gs4 a a a2 gs4\fermata
    gs a g g f a a a e a(g) g\fermata
    a a8(g) g(fs) e4 e e8(d) cs(d) e4 e e(d) cs\fermata
    a' a8(b) e,(d) f4(e8 d) cs2.
  }
}

scoreLTenor = \relative c' {
  \globalL
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    a8(b)
    c4 c b gs a d e e f(a,) e'\fermata
    e e b c a d d c c c(b) e\fermata
    e fs8(e) c4 b b b bf a a a2 a4\fermata
    c c8(b) a4 a(gs) e2.\fermata
  }
}

scoreLBass = \relative c {
  \globalL
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    a'4
    a,8(b) c(d) e(f) e(d) c(d) c(b) a(b) a(g) f(e) f(d) e4\fermata
    e' a8(g) f(g) c,(d) e(f) d(e) f(g) a(b) a(g) f(e) f(g) c,4\fermata
    a' ds,8(e) fs(d) e(fs) g(fs) e(f) e(d) cs(a) b(cs) d(e) f(g) a4\fermata
    a8(g) fs(gs) a(f) d(b) e4 a,2.\fermata
  }
}

scoreLVerse = \lyricmode {
  % Lyrics follow here.
  \scoreKVerse
}

scoreLVerseTwo = \lyricmode {
  % Lyrics follow here.
  \scoreKVerseTwo
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
  \header {
    title = "Ach großer König, groß zu allen Zeiten"
    subsubtitle = "Choräle, Nr. 17 (6. Choral), a-Moll"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreLChoirPart
      \scoreLBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 22 (7. Choral, p. 93) Durch dein Gefängnis, Gottes Sohn, **E-Dur**, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalM = {
  \key e \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreMChordNames = \chordmode {
  \globalM
  \germanChords
  % Chords follow here.

}

scoreMMelody = \relative c'' {
  \globalM
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e,8(fs)
    gs4 a b b a gs fs\fermata
    b cs ds e ds8(cs) cs2 b4
  }
  \partial 4
  b e ds8(cs) cs4 b a gs8(fs) fs4\fermata
  b a gs fs8(gs) a4 gs fs e\fermata
  \bar "|."
}

scoreMVerse = \lyricmode {
  % Lyrics follow here.
  Durch dein Ge -- fäng -- nis, Got -- tes Sohn,
  muß uns die Frei -- heit kom -- men,
}

scoreMVerseB = \lyricmode {
  % Lyrics follow here.
  dein Ker -- ker ist der Gna -- den -- thron,
  die Frei -- statt al -- ler From -- men;
}

scoreMVerseC = \lyricmode {
  % Lyrics follow here.
  denn gingst du nicht die Knecht -- schaft ein,
  müßt uns -- re Knecht -- schaft ewig sein.
}


\bookpart {
  \header {
    title = "Durch dein Gefängnis, Gottes Sohn"
    subsubtitle = "Choräle, Nr. 22, 7. Choral, E-Dur"
    instrument = "CF"
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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 22 (7. Choral, p. 93) Durch dein Gefängnis, Gottes Sohn, **E-Dur**, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalN = \globalM

scoreNSoprano = \relative c'' {
  \globalN
  % Music follows here.
  \scoreMMelody
}

scoreNAlto = \relative c' {
  \globalN
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    b4
    e e e e e8(ds) e4 ds\fermata
    fs fs as b8(fs) fs(gs) gs4(as) fs
  }
  \partial 4
  gs cs b(b8)(a)a(gs) gs(fs) e4 ds\fermata
  d c b a8(b) c4 b8(e) e(ds) b4\fermata
  \bar "|."
}

scoreNTenor = \relative c' {
  \globalN
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    gs8(a)
    b4 cs d cs8(b) cs4 b b\fermata
    ds cs fs b,8(cs) ds(e) e(ds cs4) ds
  }
  \partial 4
  e gs gs gs8(fs) fs(ds) e(b) b4 b\fermata
  gs8(fs) e4 es fs fs gs8.(a16) b8(fs) gs4\fermata
  \bar "|."
}

scoreNBass = \relative c {
  \globalN
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e,4
    e' cs gs cs fs gs8(a) b4\fermata
    b as gs8(fs) gs(as) b4 e,(fs) b,
  }
  \partial 4
  e8(ds) cs4 gs a b cs8(ds) e4 b\fermata
  b c cs d ds e b e\fermata
  \bar "|."
}

scoreNVerse = \lyricmode {
  % Lyrics follow here.
  \scoreMVerse
}

scoreNVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreMVerseB
}

scoreNVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreMVerseC
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
  \header {
    title = "Durch dein Gefängnis, Gottes Sohn"
    subsubtitle = "Choräle, Nr. 22, 7. Choral, E-Dur"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreNChoirPart
      \scoreNBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 26 (8. Choral, p. 120) In meines Herzens Grunde, **Es-Dur**, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalO = {
  \key ef \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreOChordNames = \chordmode {
  \globalO
  \germanChords
  % Chords follow here.

}

scoreOMelody = \relative c'' {
  \globalO
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    ef,
    bf' bf c d ef2 ef4\fermata
    g f ef ef d ef2.
  }
  \partial 4
  ef8(f) g4 g f ef d8(c d4) bf\fermata
  d ef d c c bf2.\fermata
  bf4 g8(af) bf4 c bf bf(af) g\fermata
  bf af g f f ef2.\fermata
  \bar "|."
}

scoreOVerse = \lyricmode {
  % Lyrics follow here.
  In mei -- nes Her -- zens Grun -- de
  dein Nam und Kreuz al -- lein
}

scoreOVerseB = \lyricmode {
  % Lyrics follow here.
  fun -- kelt all Zeit und Stun -- de;
  drauf kann ich fröh -- lich sein.
}

scoreOVerseC = \lyricmode {
  % Lyrics follow here.
  Er -- schein mir in dem Bil -- de
  zu Trost in mei -- ner Not,
  wie du, Herr Christ, so mil -- de
  dich hast ge -- blut' zu Tod.
}

\bookpart {
  \header {
    title = "In meines Herzens Grunde"
    subsubtitle = "Choräle, Nr. 26, 8. Choral, Es-Dur"
    instrument = "CF"
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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 26 (8. Choral, p. 120) In meines Herzens Grunde, **Es-Dur**, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalP = \globalO

scorePSoprano = \relative c'' {
  \globalP
  % Music follows here.
  \scoreOMelody
}

scorePAlto = \relative c' {
  \globalP
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    bf4
    ef g af g g2 g4\fermata
    c c af g f g2.
  }
  \partial 4
  g8(af) bf4 c c a d8(c d4) bf\fermata
  d ef d c c bf2.\fermata
  bf4 g8(af) bf4 c bf bf(af) g\fermata
  bf af g f f ef2.\fermata
  \bar "|."
}

scorePTenor = \relative c' {
  \globalP
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    g4
    bf ef ef d c2 c4\fermata
    ef c c bf bf bf2.
  }
  \partial 4
  bf4
  ef ef f f f8(ef f4) d\fermata
  f ef f g f8(ef) d2.\fermata
  bf4 bf ef ef df c2 c4\fermata
  bf c d ef d8(c) bf2.\fermata
  \bar "|."
}

scorePBass = \relative c {
  \globalP
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    ef4
    g ef af b, c2 c4\fermata
    c' af f bf bf, ef2.
  }
  \partial 4
  ef4 ef'8(d) c(bf) a4 f bf2 bf,4\fermata
  af' g f ef f bf,2.\fermata
  d4 ef df c8(d) e4 f2 c4\fermata
  df c bf a bf ef2.\fermata
  \bar "|."
}

scorePVerse = \lyricmode {
  % Lyrics follow here.
  \scoreOVerse
}

scorePVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreOVerseB
}

scorePVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreOVerseC
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
  \header {
    title = "In meines Herzens Grunde"
    subsubtitle = "Choräle, Nr. 26, 8. Choral, Es-Dur"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scorePChoirPart
      \scorePBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 28 (9. Choral, p. 130) Er nahm alles wohl in acht, **A-Dur**, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalQ = {
  \key a \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreQChordNames = \chordmode {
  \globalQ
  \germanChords
  % Chords follow here.

}

scoreQMelody = \relative c'' {
  \globalQ
  % Music follows here.
  cs4 b a b cs ds e2\fermata
  fs4 e d cs8(b) b2 a\fermata
  cs4 e d cs b a gs2\fermata
  a4 b cs cs8(d16 e) d2 cs\fermata
  cs4 d e d cs4 b cs2\fermata
  b4 b cs8(ds) e4 e(ds) e2\fermata
  e4 cs fs4. e8 d4 cs8(b) b2\fermata
  cs4 e d cs8(b) b2 a\fermata
  \bar "|."
}

scoreQVerse = \lyricmode {
  % Lyrics follow here.
  Er nahm al -- les wohl in acht
  in der letz -- ten Stun -- de,
  sei -- ne Mut -- ter noch be -- dacht,
  setzt ihr ein Vor -- mun -- de.
  o Mensch ma -- che Rich -- tig -- keit,
  Gott und Men -- schen lie -- be,
  stirb dar -- auf ohn al -- les Leid,
  und dich nicht be -- trü -- be.
}

\bookpart {
  \header {
    title = "Er nahm alles wohl in acht"
    subsubtitle = "Choräle, Nr. 28, 9. Choral, A-Dur"
    instrument = "CF"
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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 28 (9. Choral, p. 130) Er nahm alles wohl in acht, **A-Dur**, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalR = \globalQ

scoreRSoprano = \relative c'' {
  \globalR
  % Music follows here.
  \scoreQMelody
}

scoreRAlto = \relative c' {
  \globalR
  % Music follows here.
  a'4 gs a gs a8(gs) fs4 gs2\fermata
  b4 b gs a a(gs) e2\fermata
  a4 b a gs fs fs es2\fermata
  cs4 e e e a(b) a2\fermata
  a4 a a a a gs a2\fermata
  gs4 e a gs fs2 gs\fermata
  g4 g fs8(gs) a4 a8(gs) a4 gs2\fermata
  a4 b a a a(gs) e2\fermata
  \bar "|."
}

scoreRTenor = \relative c' {
  \globalR
  % Music follows here.
  e4 e e e e b b2\fermata
  d4 b e e fs(e8 d) cs2\fermata
  e4 e fs cs d d g,2\fermata
  fs4 gs a b fs'(e) e2\fermata
  e4 d cs b cs8(d) e4 e2\fermata
  e4 b a b cs(b) b2\fermata
  bf4 a a8(b) cs4 d e e2\fermata
  e4 e fs fs fs(e8 d) cs2\fermata
  \bar "|."
}

scoreRBass = \relative c {
  \globalR
  % Music follows here.
  a'4 e cs e a, b e2\fermata
  b'4 gs e a d,(e) a,2\fermata
  a'4 gs fs e d cs8(b) cs2\fermata
  fs4 e a gs fs(gs) a2\fermata
  a4 fs cs d e e a,2\fermata
  e'8(fs) gs4 fs e a(b) e,2\fermata
  g4 a d, cs b a e'2\fermata
  a4 gs fs e ds(e) a,2\fermata
}

scoreRVerse = \lyricmode {
  % Lyrics follow here.
  \scoreQVerse
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
  \header {
    title = "Er nahm alles wohl in acht"
    subsubtitle = "Choräle, Nr. 28, 9. Choral, A-Dur"
    instrument = "Chor und B.C."
  }  
  \score {
    <<
      \scoreRChoirPart
      \scoreRBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 37 (10. Choral, p. 151) O hilf, Christe, Gottes Sohn, **A-Dur**, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalS = {
  \key c \minor
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreSChordNames = \chordmode {
  \globalS
  \germanChords
  % Chords follow here.

}

scoreSMelody = \relative c'' {
  \globalS
  % Music follows here.
  f4 f f f ef df c2\fermata
  df4 ef f f ef(df) c2\fermata
  bf4 c df bf bf8(af) gf4 f2\fermata
  gf4 af bf bf af(gf) f2\fermata
  bf4 a bf c df c8(bf) bf2\fermata
  df4 ef f f ef(df8 c) c2\fermata
  bf4 c df8(c) bf4 bf8(af) gf4 f2\fermata
  gf4 af bf bf af(gf) f2(f1)
  \bar "|."
}

scoreSVerse = \lyricmode {
  % Lyrics follow here.
  O hilf, Chris -- te, Got -- tes Sohn,
  durch dein bit -- ter Lei -- den,
  daß wir dir stets un -- ter -- tan
  all Un -- tu -- gend mei -- den,
  dei -- nen Tod und sein Ur -- sach
  frucht -- bar -- lich be -- den -- ken,
  da -- für, wie -- wohl arm und schwach,
  dir Dan -- kop -- fer schen -- ken.
}

\bookpart {
  \header {
    title = "O hilf, Christe, Gottes Sohn"
    subsubtitle = "Choräle, Nr. 37, 10. Choral, A-Dur"
    instrument = "C.F. (und B.C.)"
  }
  \score {
    <<
      \new ChordNames \scoreSChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreSMelody }
      \addlyrics { \scoreSVerse }
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 37 (10. Choral, p. 151) O hilf, Christe, Gottes Sohn, **A-Dur**, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalT = \globalS

scoreTSoprano = \relative c'' {
  \globalT
  % Music follows here.
  \scoreSMelody
}

scoreTAlto = \relative c' {
  \globalT
  % Music follows here.
  a'4 a bf c bf bf a2\fermata
  f4 gf af af gf(f) f2\fermata
  f4 f f gf f ef d2\fermata
  ef4 ef ff ff ef2 d\fermata
  f4 ef f gf f f gf2\fermata
  af4 af af bf bf2 a\fermata
  f4 f f gf f ef d2\fermata
  ef4 f gf gf f(ef2 df4) c1
  \bar "|."
}

scoreTTenor = \relative c' {
  \globalT
  % Music follows here.
  c4 c df c8(df) ef(f) gf4 c,2\fermata
  bf4 bf cf bf bf2 a\fermata
  df4 c  bf8(c) df(ef) f(bf,) bf4 bf2\fermata
  bf4 cf df df cf8(df ef4) bf2\fermata
  df4 c bf bf bf8(af) df4 df2\fermata
  f4 c df df ef8(f gf4) f2\fermata
  bf,4 a bf8(c) df(ef) f(bf,) bf4 bf2\fermata
  bf4 df df df df8(cf bf4 a bf) a1
  \bar "|."
}

scoreTBass = \relative c {
  \globalT
  % Music follows here.
  f4 f bf af gf f8(ef) f2\fermata
  bf4 gf d d ef(bf) f'2\fermata
  bf4 a bf gf d ef bf2\fermata
  ef4 cs g g af(a) bf2\fermata
  bf4 c df ef f df gf2\fermata
  f4 af df8(c) bf(af) gf4(f8 ef) f2\fermata
  df4 f bf8(af) gf4 d ef bf2\fermata
  ef4 df gf,8(af) bf(cs) df4(ef) f2(f1)
  \bar "|."
}

scoreTVerse = \lyricmode {
  % Lyrics follow here.
  \scoreSVerse
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
  \header {
    title = "O hilf, Christe, Gottes Sohn"
    subsubtitle = "Choräle, Nr. 37, 10. Choral, A-Dur"
    instrument = "Chor und B.C."
  }
  \score {
    <<
      \scoreTChoirPart
      \scoreTBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalU = {
  \key ef \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreUChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreUMelody = \relative c'' {
  \globalU
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    ef4
    d c bf af8(g) c4 c bf\fermata
    ef d c bf af8(g) c4 c bf\fermata
    bf c d ef8(f) g4 f(ef2 d4) ef2.
  }
  \partial 4
  ef4
  ef f ef8(d) c(d) ef4 ef d\fermata
  d ef f ef8(d) c(d) ef(g) f4 d\fermata
  g g g f ef ef d ef\fermata
  d ef d c bf bf a bf\fermata
  g' f ef d\fermata
  g af8(g) f4 g ef ef d ef\fermata
  ef ef ef f ef ef2. d4 ef2.\fermata
  \bar "|."
}

scoreUVerse = \lyricmode {
  % Lyrics follow here.
  Ach Herr, lass dein lieb En -- ge -- lein
  am letz -- ten End die See -- le mein
  in A -- bra -- hams Schoß tra -- gen,
}

scoreUVerseB = \lyricmode {
  % Lyrics follow here.
  den Leib in sein'm Schlaf -- käm -- mer -- lein
  gar sanft, ohn ein -- ge Qual und Pein,
  ruhn bis am jüngs -- ten Ta -- ge.
}

scoreUVerseC = \lyricmode {
  % Lyrics follow here.
  Als -- denn vom Tod er -- we -- cke mich,
  dass mei -- ne Au -- gen se -- hen dich
  in al -- ler Freud, o Got -- tes Sohn,
  mein Hei -- land und Ge -- na -- den -- thron,
  Herr Je -- su Christ, er -- hö -- re mich, er -- hö -- re mich,
  ich will dich prei -- sen e -- wig -- lich.
}

\bookpart {
  \header {
    title = "Ach Herr, laß dein lieb Engelein"
    subsubtitle = "Choräle, Nr. 40, 11. Choral, Es-Dur"
    instrument = "CF"
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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalV = \globalU

scoreVSoprano = \relative c'' {
  \globalV
  % Music follows here.
  \scoreUMelody
}

scoreVAlto = \relative c' {
  \globalV
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    bf'4
    bf g g f8(ef) ef4 af g\fermata
    g g8(f) ef(f) g(f) ef(d) ef(f) f4 g\fermata
    g af8(c) bf(af) g(f) ef4 f2(g4 af) g2.
  }
  \partial 4
  g4
  af af g4. g8
  f(g) a4 bf\fermata
  bf bf af g af bf c c\fermata
  c bf c c af g f g\fermata
  af g f8(bf) g4 g g f f\fermata
  ef f8(g16 af) g8(a) b4\fermata
  c c b8(c) g4 g gf8(f) f4 g\fermata
  g af af af g f2 f g2.\fermata
}

scoreVTenor = \relative c' {
  \globalV
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    g'4
    f ef d df c8(bf) c(d) ef4\fermata
    g,8(af) bf4 c8(d) ef4 af,8(bf) c(ef) d(c) d4\fermata
    ef ef8(af) g(f) ef(bf) df4 c2(bf) bf2.
  }
  \partial 4
  bf4
  c c c8(d) ef(d) c4 f f\fermata
  f bf, bf bf f' ef8(d) c4 f\fermata
  ef ef ef f f bf, bf bf\fermata
  f' bf,8(c) d4 ef d ef8(d) c4 d\fermata
  bf8(c) d4 ef8(c) g'4\fermata
  c, f8(ef) d(c) d4 c c bf bf\fermata
  df c8(d) ef4 bf bf c2 bf bf2.\fermata
  \bar "|."
}

scoreVBass = \relative c {
  \globalV
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    ef4
    bf' c g bf af af, ef'\fermata
    c g' af ef8(d) c(bf) af4 af' g\fermata
    ef af bf c8(d,) ef4 af,(a bf2) ef2.
  }
  \partial 4
  ef4 af8(g) f4 c c'8(bf) a(g) f4 bf\fermata
  bf8(af) g(f) ef(d) c4 f g a bf\fermata
  ef, ef'8(d) c(bf) af(bf) c(af) bf4 bf, ef\fermata
  f g8(a) bf(g) ef(f) g(ef) c4 f bf,\fermata
  ef bf'4 c g\fermata
  e f8(g) af4 b, c a' bf ef,\fermata
  ef af8(bf) c4 d, ef a,2 bf ef,2.\fermata
  \bar "|."
}

scoreVVerse = \lyricmode {
  % Lyrics follow here.
  \scoreUVerse
}

scoreVVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreUVerseB
}

scoreVVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreUVerseC
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
  \header {
    title = "Ach Herr, laß dein lieb Engelein"
    subsubtitle = "Choräle, Nr. 40, 11. Choral, Es-Dur"
    instrument = "Chor und BC"
  }
  \score {
    <<
      \scoreVChoirPart
      \scoreVBassFiguresPart
    >>
    \layout { }
    \midi { }
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
    \midi { }
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
    \midi { }
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
    \midi { }
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
    \midi { }
  }
}
