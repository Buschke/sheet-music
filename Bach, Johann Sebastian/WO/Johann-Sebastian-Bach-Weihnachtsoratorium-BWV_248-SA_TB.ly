\version "2.24.4"
\language "english"

\header {
  dedication = ""
  title = "Weihnachtsoratorium Johann Sebastian Bach"
  subtitle = "Weihnachtsoratorium"
  subsubtitle = "Choräle"
  instrument = "CF, Chor und BC"
  composer = "Johann Sebastian Bach"
  arranger = ""
  poet = ""
  meter = "arrangiert: Sven Buschke"
  piece = ""
  opus = "BWV 248"
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
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalA = {
  \key a \minor
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=36
}

scoreAChordNames = \chordmode {
  \globalA
  \germanChords
  % Chords follow here.

}

scoreAMelody = \relative c'' {
  \globalA
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e,4
    a g f e d2 e4\fermata
    b' c c b8(c16 d) b4 a2.
  }
  \partial 4
  c4
  b8(a) g4 a b c2 c4\fermata
  g a g f8(e) f4 e2.\fermata
  c'4 b8(c) d4 c b a2 b4\fermata
  e, f e d g8(f) e2.\fermata
  \bar "|."
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Wie soll ich dich emp -- fan -- gen
  Und wie be -- gegn' ich dir,
}

scoreAVerseB = \lyricmode {
  % Lyrics follow here.
  O al -- ler Welt Ver -- lan -- gen,
  O mei -- ner See -- len Zier,
}

scoreAVerseC = \lyricmode {
  % Lyrics follow here.
  O Je -- su, Je -- su, set -- ze
  Mir selbst die Fa -- ckel bei,
  Da -- mit was dich er -- göt -- ze,
  Mir kund und wis -- send sei!
}

\bookpart {
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
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, Chor
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
  \repeat volta 2 {
    \partial 4
    e8(d)
    c(d) d(e) e(d) d(c) c4(b8 a)b4\fermata
    e e a a gs e2.
  }
  \partial 4
  a8(g) f4 e8(d) c4 f f(e8 d) e4\fermata
  e f bf,8(a) a(g) a(d) cs2.\fermata
  d4 d g g8(fs) g4 g(fs) g\fermata
  g c,8(d) c4 f, d' d(c b)\fermata
  \bar "|."
}

scoreBTenor = \relative c' {
  \globalB
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    gs4
    a b c8(d) g,4 a8(gs a4) gs\fermata
    gs a8(b) c4 f e8(d) c2.
  }
  \partial 4
  e4
  d8(c) b4 a8(g) f(g) a4(g8 f) g4\fermata
  c c8(d) e4 d8(cs) d(gs,) a2.\fermata
  a4 g8(a) b4 c8(d) e4 e(d) d\fermata
  c c8(d) b(a) a4 g8(a) b4(a gs)\fermata
  \bar "|."
}

scoreBBass = \relative c {
  \globalB
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e4
    f g a8(b) c4 f,2 e4\fermata
    e a8(g) f(e) d(b) e4 a,2.
  }
  \partial 4
  a'4
  d, e f8(e) d4 a8(b c4) c\fermata
  c f8(e) d(cs) d4 d a2.\fermata
  fs'4 g4. fs8 e4. d8 c(a d4) g,\fermata
  c8(b) a(b) c4 c8(b) b(a) gs4(a e')\fermata
  \bar "|."
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  \scoreAVerse
}

scoreBVerseB = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseB
}

scoreBVerseC = \lyricmode {
  % Lyrics follow here.
  \scoreAVerseC
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
% Nr. 5 (1. Choral, p. 42) Wie soll ich dich empfangen, a-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \key d \major
  %  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=36
}

scoreCChordNames = \chordmode {
  \globalC
  \germanChords
  % Chords follow here.

}

scoreCMelody = \relative c'' {
  \globalC
  % Music follows here.
  \partial 4
  d4
  cs b cs a b cs d r
  r1
  r4 d d a a fs8(g) a4 g fs r
  r2
  r2 r4 fs b b a8(b) cs4 d8(cs) b4 a r
  r1
  r4 d cs b a b8(a) g(fs) e4 d r r2
  r1 r2 r4\fermata
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  Ach, mein herz -- lie -- bes Je -- su -- lein,
  Mach dir ein rein sanft Bet -- te -- lein,
  Zu ruhn in mei -- nes Her -- zens Schrein,
  Dass ich nim -- mer ver -- ges -- se dein.
}

\bookpart {
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
% Nr. 9 (2. Choral, p. 53) Ach, mein herzliebes Jesulein, D-Dur, CF
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
  a'4
  a8(gs) fs4 e fs8(e) d4 e fs r
  r1
  r4 fs8(g) a(g) fs4 e d d e d r r2
  r2 r4 d8(e) fs4 e e8(gs) a4 a a8(gs) e4 r
  r1
  r4 fs8(e) e(fs) fs(e) cs(d) b(cs) d4. cs8 a4 r r2
  r1
  r2 r4\fermata
  \bar "|."
}

scoreDTenor = \relative c' {
  \globalD
  % Music follows here.
  \partial 4
  fs4
  e d cs d8(cs) b(a) g4 a r
  r1
  r4 a d d cs c8(b) a4 a a r r2
  r2 r4 a a gs a8(d) cs(b) a(cs) fs(e) cs4 r
  r1 r4 d8(b) b(a) a(g) a4 g8(fs) e4 a8(g) fs4 r r2
  r1
  r2 r4\fermata
  \bar "|."
}

scoreDBass = \relative c {
  \globalD
  % Music follows here.
  \partial 4
  d4
  a'4. gs8 a(g) fs4 g8(fs) e4 d r
  r1
  r4 d8(e) fs4 fs8(g) a4 a8(g) fs(e) d(cs) d4 r r2
  r2 r4 d ds e8(d) cs(b) a4 fs'8(e) d(e) a,4 r
  r1
  r4 b'8(e,) a4 d,8(g) g(fs) g(a) b(g) a(a,) d4 r r2
  r1
  r2 r4\fermata
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
% Nr. 12 (2. Teil, 1. Choral (3. gesamt), p. 66) Brich an, o schönes Morgenlicht, G-Dur, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalE = {
  \key g \major
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
    g4
    g a b8(cs) d4 d cs d\fermata
    b c b a b a2 g4
  }
  \partial 4
  a a b c c b8(a) b4 a\fermata
  b b b c8(d) e4 e ds e\fermata
  fs g b, c b a2 a4\fermata
  d e d c b8(c) a2 g4\fermata
  \bar "|."
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  Brich an, o schö -- nes Mor -- gen -- licht,
  Und lass den Him -- mel ta -- gen,
}

scoreEVerseB = \lyricmode {
  % Lyrics follow here.
  Du Hir -- ten -- volk, er -- schre -- cke nicht,
  Weil dir die En -- gel sa -- gen,
}

scoreEVerseC = \lyricmode {
  % Lyrics follow here.
  Dass die -- ses schwa -- che Knä -- be -- lein
  Soll un -- ser Trost und Freu -- de sein,
  Da -- zu den Sa -- tan zwin -- gen
  Und letz -- lich Frie -- de brin -- gen.
}

\bookpart {
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
% Nr. 12 (2. Teil, 1. Choral (3. gesamt), p. 66) Brich an, o schönes Morgenlicht, G-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalF = \globalE

scoreFSoprano = \relative c'' {
  \globalE
  % Music follows here.
  \scoreEMelody
}

scoreFAlto = \relative c' {
  \globalF
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    d4
    e fs d8(e) fs4 e8(fs) g4 fs\fermata
    fs e d8(e) fs4 g g(fs) d
  }
  \partial 4
  fs8(g) a4. gs8 a(gs) a4 a gs e\fermata
  e8(ds) e4 e e8(fs) g(fs) fs(g) a4 g\fermata
  a g b b8(a) a(g) g2 fs4\fermata
  g8(fs) e4 fs g8(a) d,4 e(d) d\fermata
  \bar "|."
}

scoreFTenor = \relative c' {
  \globalF
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    b4
    b8(c c) d b(a) a4 a a a\fermata
    b8(a) g(a) b(c) d4 d d4.(c8) b4
  }
  \partial 4
  d8(e) fs(e) d4 e fs b, e8(d) c4\fermata
  g8(a) b(c) d(e) c4 cs b b b\fermata
  d d g g,8(a) b4 e8(d e cs) d4\fermata
  d d8(c) c(b) b(a) g4 g8(fs16 e fs4) b\fermata
  \bar "|."
}

scoreFBass = \relative c {
  \globalF
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    g'8(fs) e4 d g fs8(g) a4 a, d\fermata
    ds e8(fs) g(c,) c'(b) a(g) d'4(d,) g
  }
  \partial 4
  d4 d'8(c) b4 a ds, e e a,\fermata
  e'8(fs) g4 gs a as b b, e\fermata
  d'8(cs) b(a) g(fs) e(fs) g(e) cs(b cs a) d4\fermata
  b c d e8(fs) g4 c,(d) g,\fermata
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
% Nr. 17 (2. Teil, 2. Choral (4. gesamt), p. 73) Schaut hin, dort liegt im finstern Stall, C-Dur, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalG = {
  \key c \major
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
  \partial 4
  c4
  b a b8(a) g4 a b c\fermata
  c c g g8(f) e(f) g4 f e\fermata
  e a a g8(a) b4 c8(b) a4 g\fermata
  c b a g a8(g) f(e) d4 c\fermata
  \bar "|."
}

scoreGVerse = \lyricmode {
  % Lyrics follow here.
  Schaut hin, dort liegt im fins -- tern Stall
  Des Herr -- schaft ge -- het ü -- ber -- all,
  Da Spei -- se vor -- mals sucht ein Rind,
  Da ru -- het itzt der Jung -- frau'n Kind.
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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 17 (2. Teil, 2. Choral (4. gesamt), p. 73) Schaut hin, dort liegt im finstern Stall, C-Dur, Chor
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
  \partial 4
  g'4
  g8(f) e4 fs e8(d) c4 d e\fermata
  e e e d c c c c\fermata
  c c f8(e) d(c) b4 a8(e') f4 e\fermata
  a a8(g) f4 e4. d8 c4. b8 g4\fermata
  \bar "|."
}

scoreHTenor = \relative c' {
  \globalH
  % Music follows here.
  \partial 4
  e4
  d4. c8 d4 c8(b) a(g) f4 g\fermata
  a a8(b) c4 b8(a) g(a) bf4. a8 g4\fermata
  c8(b) a(g) f4 f g8(f) e(c) c'4 c\fermata
  e e8(b) c4 b a8(b) c(a) d,(g) e4\fermata
  \bar "|."
}

scoreHBass = \relative c {
  \globalH
  % Music follows here.
  \partial 4
  c4
  g' a ds, e f8(e) d4 c\fermata
  a8(b) c(d) e(f) g(a) bf4 e, f c\fermata
  a'8(g) f(e) d(c) b(a) g4 a4. b8 c4\fermata
  c8(d) e4. d8(d) c4 b8 a16(b c8) g'(g,) c4\fermata
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
% Nr. 23 (2. Teil, 3. Choral (5. gesamt), p. 103) Wir singen dir in deinem Heer, G-Dur, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalI = {
  \key g \major
  %   \numericTimeSignature
  \time 12/8
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
  \partial 4.
  g'4.
  fs e fs d e fs g r
  r1.
  r4. g g d d4(c8) b4(c8) d4. c b r r2.
  r2. r4. b e e d4(e8) f4. g4(f8) e4. d r
  r1.
  r4. g fs e d e4(d8) c4(b8) a4. g r r2.
  r1.\fermata
  \bar "|."
}

scoreIVerse = \lyricmode {
  % Lyrics follow here.
  Wir sin -- gen dir in dei -- nem Heer
  Aus al -- ler Kraft Lob, Preis und Ehr,
  Dass du, o lang ge -- wünsch -- ter Gast,
  Dich nun -- mehr ein -- ge -- stel -- let hast.
}

\bookpart {
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
% Nr. 23 (2. Teil, 3. Choral (5. gesamt), p. 103) Wir singen dir in deinem Heer, G-Dur, Chor
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

}

scoreJTenor = \relative c' {
  \globalJ
  % Music follows here.

}

scoreJBass = \relative c {
  \globalJ
  % Music follows here.
  
}

scoreJVerse = \lyricmode {
  % Lyrics follow here.
  \scoreIVerse
}

scoreJVerse = \lyricmode {
  % Lyrics follow here.
  
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
% Nr. 28, 3. Teil, 1. Choral (6. gesamt), p. 126) Dies hat er alles uns getan, D-Dur, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalK = {
  \key d \major
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
  \partial 4
  a4
  a a b a d e d2\fermata
  cs8(d) e4 fs e8(d) cs4 b a\fermata
  a d cs8(d) e4 b a8(gs) fs4 e\fermata
  e b' b b cs d8(cs) b4 a8(b cs4 b2) a4 a a2.\fermata
  \bar "|."
}

scoreKVerse = \lyricmode {
  % Lyrics follow here.
  Dies hat er al -- les uns ge -- tan,
  Sein groß Lieb zu zei -- gen an,
  Des freu sich al -- le Chris -- ten -- heit
  Und dank ihm des in E -- wig -- keit.
  Ky -- rie -- leis.
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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 28, 3. Teil, 1. Choral (6. gesamt), p. 126) Dies hat er alles uns getan, D-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalL = \globalK

scoreLSoprano = \relative c'' {
  \globalL
  % Music follows here.
  \scoreKMelody
}

scoreLAlto = \relative c' {
  \globalL
  % Music follows here.
  \partial 4
  e4
  fs fs8(e) d(g) e(cs) a'(g16 fs g8) e fs2\fermata
  a4 a d8(cs) b4 b8(a4) gs8 e4\fermata
  fs8(g) a(b b) a16(gs) a4 gs8(fs) e4. ds8 b4\fermata
  cs8(ds) e4 fs e e8(g) fs(e) ds(es) fs(gs a4 a g2) fs4(fs) e8(d) e4\fermata
  \bar "|."
}

scoreLTenor = \relative c' {
  \globalL
  % Music follows here.
  \partial 4
  cs4
  cs d8(cs) b(e) cs(e) a,(d4) cs8 a2\fermata
  fs'4 e d e e8(fs4) e16(d)cs4\fermata
  a fs'8(e) e4 e e8(b) cs(e) bs(a)gs4\fermata
  a8(fs) gs4 a gs a a8(gs) fs(b) cs(d e4 fs e2) d4(d) cs8(b) cs4\fermata
  \bar "|."
}

scoreLBass = \relative c {
  \globalL
  % Music follows here.
  \partial 4
  a'8(g)
  fs(e) d4 g4.(fs16 e fs8) d a' a, d2\fermata
  fs8(e) d(cs) b(a') gs(e) a(fs) d(e) a4\fermata
  d,8(e) fs(gs) a(b) cs(d) e(ds) cs(a) b4 e,\fermata
  a gs8(fs) e(ds) e(fs) g(e) fs(gs a gs fs e) d(cs) ds(b) e(d) cs(a d4) a2.\fermata
  \bar "|."
}

scoreLVerse = \lyricmode {
  % Lyrics follow here.
  \scoreKVerse
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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 33, 3. Teil, 2. Choral (7. gesamt), p. 141) Ich will dich mit Fleiß bewahren, G-Dur, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalM = {
  \key g \major
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
  g4 g a g a8(b) c4 c(b) c2\fermata
  d4 e c2\fermata
  b8(c) d4 a2\fermata
  d4 d c b8(a) a2 g\fermata
  g4 g a g a8(b) c4 c(b) c2\fermata
  d4 e c2\fermata
  b8(c) d4 a2\fermata
  d4 d c b8(a) a2 g\fermata
  \bar "|."
}

scoreMVerse = \lyricmode {
  % Lyrics follow here.
  Ich will dich mit Fleiß be -- wah -- ren,
  Ich will dir
  Le -- ben hier,
  Dir will ich ab -- fah -- ren,
  Mit dir will ich end -- lich schwe -- ben
  Vol -- ler Freud
  Oh -- ne Zeit
  Dort im an -- dern Le -- ben.
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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 33, 3. Teil, 2. Choral (7. gesamt), p. 141) Ich will dich mit Fleiß bewahren, G-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalN = \globalM

scoreNSoprano = \relative c'' {
  \globalN
  % Music follows here.
  \scoreMMelody
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
  \globalN
  % Music follows here.
  
}

scoreNVerse = \lyricmode {
  % Lyrics follow here.
  \scoreMVerse
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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 35, 3. Teil, 3. Choral (8. gesamt), p. 141) Seid froh dieweil, fis-Moll, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalO = {
  \key fs \minor
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
  \partial 4
  fs,8(gs) a4 gs fs\fermata
  fs8(gs) a4 gs fs\fermata
  cs' b a gs\fermata
  gs a a b b cs cs b a gs2 fs4\fermata
  cs' b a8(gs) gs4\fermata
  cs b a gs\fermata
  gs a a b b cs cs b a8(gs) gs2 fs4\fermata
  \bar "|."
}

scoreOVerse = \lyricmode {
  % Lyrics follow here.
  Seid froh die -- weil,
  seid froh die -- weil,
  Dass eu -- er Heil
  Ist hie ein Gott und auch ein Mensch ge -- bo -- ren,
  Der, wel -- cher ist
  Der Herr und Christ
  In Da -- vids Stadt, von vie -- len aus -- er -- ko -- ren.
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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 35, 3. Teil, 3. Choral (8. gesamt), p. 141) Seid froh dieweil, fis-Moll, Chor
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

}

scorePTenor = \relative c' {
  \globalP
  % Music follows here.

}

scorePBass = \relative c {
  \globalP
  % Music follows here.
  \partial 4
  fs4
  fs16(gs a b cs8) cs, d4\fermata
  d cs8(b) cs4 fs,\fermata
  fs' gs a8(b) cs4\fermata
  cs, fs8(e) d(cs) d(b) e4 a,8(a') gs(fs) fs(es) fs(d) b(gs cs4) fs,\fermata
  fs'8(e) d(cs) bs4 cs\fermata
  a b8(cs) ds(b) e4\fermata
  es8(cs) fs4 fs8(d) g4 gs8(e) a4 as8(fs) b4 bs8(gs) cs4(cs,) fs\fermata
  \bar "|."
}

scorePVerse = \lyricmode {
  % Lyrics follow here.
  \scoreOVerse
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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 42/ 43, 4. Teil, 1. Choral (7. gesamt), p. 192) Jesus richte mein Beginnen, F-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalQ = {
  \key f \major
  %   \numericTimeSignature
  \time 3/4
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
  r2.
  \repeat volta 2 {
    r r r
    c4 a2 g f4 bf c4.(d16 ef) d2. c2 r4
    r2. r r
    d4 bf2 c f,4 bf a2 g2. r
  }
  r r r r
  e'4 c2 a d4 cs d4.(e16 fs) e2. a2 r4
  r2. r r d,4(e) f g(c,) bf a(d) bf g2. f2 r4
  r2. r r r\fermata
  \bar "|."
}

scoreQVerse = \lyricmode {
  % Lyrics follow here.
  Je -- sus rich -- te mein Be -- gin -- nen,
  Je -- sus blei -- be stets bei mir,
  Je -- sus sei mir in Ge -- dan -- ken,
  Je -- sus zäu -- me mir die Sin -- nen,
  Je -- sus sein nur mein Be -- gier,
  Je -- sus sei mir in Ge -- dan -- ken,
  Je -- su, las -- se mich nicht wan -- ken.
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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 42/ 43, 4. Teil, 1. Choral (7. gesamt), p. 192) Jesus richte mein Beginnen, F-Dur, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalR = \globalQ

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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 46/47, 5. Teil, 1. Choral (10. gesamt), p. 141) Dein Glanz all Finsternis verzehrt, A-Dur, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalS = {
  \key a \major
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
  \partial 4
  a4
  a e' e(d8 cs b4) cs d8(cs) b4 a2\fermata
  r4 a b cs d b e fs e\fermata
  cs cs8(d) e4 d cs8(b) a(b cs4) b\fermata
  cs a b8(cs) d4\fermata
  cs b cs d\fermata
  cs b a e'4.(d8 cs4) d8(cs) b2 a2.\fermata
  \bar "|."
}

scoreSVerse = \lyricmode {
  % Lyrics follow here.
  Dein Glanz all Fins -- ter -- nis ver -- zehrt,
  Die trü -- be Nacht in Licht ver -- kehrt,
  Leit uns auf dei -- nen We -- gen,
  Daß dein Ge -- sicht
  Und herr -- lichs Licht
  Wir ewig schau -- en mö -- gen.
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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 46/47, 5. Teil, 1. Choral (10. gesamt), p. 141) Dein Glanz all Finsternis verzehrt, A-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalT = \globalS

scoreTSoprano = \relative c'' {
  \globalT
  % Music follows here.
  \scoreSMelody
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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 53/54, 5. Teil, 2. Choral (11. gesamt), p. 242) Zwar ist solche Herzens Stube, A-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalU = {
  \key a \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreUChordNames = \chordmode {
  \globalU
  \germanChords
  % Chords follow here.

}

scoreUMelody = \relative c'' {
  \globalU
  % Music follows here.
  \repeat volta 2 {
    a4 b cs8(d) e4 a, gs fs e\fermata
    fs gs a b cs8(d) b4 a2
  }
  cs4 cs b cs d cs8(b) b(a) b4\fermata
  fs gs a b cs8(d) b4 a8(gs) a4\fermata
  \bar "|."
}

scoreUVerse = \lyricmode {
  % Lyrics follow here.
  Zwar ist sol -- che Her -- zens Stu -- be
  Wohl kein schö -- ner Fürs -- ten -- saal,
}

scoreUVerseB = \lyricmode {
  % Lyrics follow here.
  Son -- dern ei -- ne fin -- stre Gru -- be;
  Doch so bald dein Gna -- den -- strahl
}

scoreUVerseC = \lyricmode {
  % Lyrics follow here.
  In dem -- sel -- ben nur wird blin -- ken,
  Wird es vol -- ler Son -- nen dün -- ken.
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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 53/54, 5. Teil, 2. Choral (11. gesamt), p. 242) Zwar ist solche Herzens Stube, A-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalV = \globalU

scoreVSoprano = \relative c'' {
  \globalV
  % Music follows here.
  \scoreUMelody
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
  \scoreUVerse
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
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 59/60, 6. Teil, 1. Choral (12. gesamt), p. 286) Ich steh an deiner Krippen hier, G-Dur, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalW = {
  \key g \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
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
    g4
    g8(a) b4 a g a a b\fermata
    g8(a) b4 c d c8(b) a(g a4) g
  }
  \partial 4
  b b a g fs g8(a) b4 a\fermata
  a g fs g d g a b\fermata
  g8(a) b4 c d c8(b) a(g a4) g\fermata
  \bar "|."
}

scoreWVerse = \lyricmode {
  % Lyrics follow here.
  Ich steh an dei -- ner Krip -- pen hier,
  O Je -- su -- lein, mein Le -- ben,
}

scoreWVerseB = \lyricmode {
  % Lyrics follow here.
  Ich kom -- me, bring und schen -- ke dir,
  Was du mir hast ge -- ge -- ben,
}

scoreWVerseC = \lyricmode {
  % Lyrics follow here.
  Nimm hin, es ist mein Geist und Sinn,
  Herz, Seel und Mut, nimm al -- les hin
  Und laß dir's wohl ge -- fal -- len.
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 59/60, 6. Teil, 1. Choral (12. gesamt), p. 286) Ich steh an deiner Krippen hier, G-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalX = \globalW

scoreXSoprano = \relative c'' {
  \globalX
  % Music follows here.
  \scoreWMelody
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
  \scoreWVerse  
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 64/65, 6. Teil, 2. Choral (13. gesamt), p. 296) Nun seid ihr wohl gerochen, D-Dur, CF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalY = {
  \key d \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=50
}

scoreYChordNames = \chordmode {
  \globalY
  \germanChords
  % Chords follow here.

}

scoreYMelody = \relative c'' {
  \globalY
  % Music follows here.
  \partial 4
  r4
  r1
  \repeat volta 2 {
    r
    r r r
    r r r
    r r r
    r2 r4 fs b a g fs e2 fs4 r
    r1
    r2 r4 cs d d cs8.(d32 e) cs4 b r r2 r1
  }
  r1 r
  r2 r4 d cs a b cs d2 d4 r
  r1
  r4 a b a g g8(fs) fs4 r
  r1 r
  r2 r4 d cs e d c b2 cs4 r
  r1 r r
  r2 r4 fs g fs e a fs1
  r r r r r r r r r r r2 r4\fermata
  \bar "|."
}

scoreYVerse = \lyricmode {
  % Lyrics follow here.
  Nun seid ihr wohl ge -- ro -- chen
  An eu -- rer Fein -- de Schar;
}

scoreYVerseB = \lyricmode {
  % Lyrics follow here.
  Denn Chris -- tus hat zer -- bro -- chen,
  Was euch zu -- wi -- der war,
}

scoreYVerseC = \lyricmode {
  % Lyrics follow here.
  Tod, Teu -- fel, Sünd und Höl -- le
  Sind ganz und gar ge -- schwächt,
  Bei Gott hat sei -- ne Stel -- le
  Das mensch -- li -- che Ge -- schlecht.
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nr. 64/65, 6. Teil, 2. Choral (13. gesamt), p. 296) Nun seid ihr wohl gerochen, D-Dur, Chor
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalZ = \globalY

scoreZSoprano = \relative c'' {
  \globalZ
  % Music follows here.
  \scoreYMelody
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
