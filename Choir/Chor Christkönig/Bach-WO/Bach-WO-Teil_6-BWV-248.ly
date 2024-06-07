\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "Herr, wenn die stolzen Feinde schnauben"
  subtitle = "Weihnachtsoratorium, 6. Teil"
  subsubtitle = "Nr. 54 Chorus"
  instrument = "Tenor"
  composer = "Johann Sebastian Bach"
  arranger = ""
  poet = ""
  meter = ""
  piece = ""
  opus = "BWV 248"
  copyright = "Satz: Sven Buschke"
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

globalE = {
  \key d \major
  \time 3/8
  \tempo "Vivace" 4=100 
}

scoreATenorVoice = \relative c' {
  \globalE
  \compressEmptyMeasures
  \dynamicUp
  % Music follows here.
  \partial 8
  r8
  R4. * 47
  r8 r a d4 a8 e'4 a,8 fs' e16 fs g e g(fs e d) fs(d)
  e(d cs b) d(b) e8 d16 cs b cs a4.~ a~ a8 cs e d(e16 d) e cs d8 fs a~ a a,16 cs b a
  gs8 e gs a d4 e16 fs g e a8 d,16(e fs8) a, a e' e fs cs cs fs fs a, d4 a8
  e'4 a,8 fs' e16 fs g e g(fs e d) fs(d) fs(e d cs) e(cs) e(d cs b) d(b) e8 d16 cs b cs a4.~ a~
  a8 cs e d4 cs8 d fs a a a, cs gs e gs a d e e16(fs g e) a8 d,16 e fs8 a,~
  a e' e fs cs cs fs a, r R4.*3 r8 r gs a4 fs'8
  gs,4 e'8 fs, gs a gs16 fs gs a b8 e, e' e e16 d cs d e8 a, d cs d c16 b c d b8 r c
  c(b16 a) b8 b a g cs d e d4 d8~ d cs16 b cs8 d a a a a cs
  fs, d g a d, d'16 e fs8 g a e16(d cs b) cs8 d a e' d gs, b e fs e
  cs r r R4.*7
  r8 r b e4 e8 e cs16(d e8) as, b cs e16(d) fs(e d cs) fs(es) gs(fs e ds) gs4.~ gs16 fs a(gs fs es)
  fs8 cs es fs e16 ds e8 ds fs a a g16 fs e fs b,4 b8 cs e g fs e16 d cs d e8 d fs
  b, r fs b4 b8 b gs16 a b8 e,(fs) gs a a e' fs(cs) fs fs(ds) fs fs(e) b
  b g fs e g b e cs e e(d) a a fs b b4.~ b16 cs d8 e fs g fs
  d r r r2. r8 cs cs fs b, fs' d4 r8 R4.*3
  r8 r d fs4 fs8 e4 e8 d4 cs8 d a r R4.*3^"d"
    r8 r a d4 a8 e'4 a,8 fs' e16 fs g e g(fs e d) fs(d)
  e(d cs b) d(b) e8 d16 cs b cs 
  a8 cs cs d4 d8 a cs e d4 cs8 a a r R4.*3
  r8 r b cs(fs16 e) d(cs) a8(d) cs b e4~ e8 d16 cs d8 d cs fs b, e16 d cs b
  a8(d) cs d4 e8 cs c4 b8 cs d cs16 d e8 fs~ fs b, e~ e a, d g, a b
  e d e d d, g a d, d'16 e fs8 g a e a, cs d a e' d gs, b
  e fs e cs r r r4. r8 b b e a, e' cs4 e8 a, r c fs, fs' ds
  ds(e) b b b b b r e, a e' cs cs(d) a a a a g d' g
  fs b, fs' b, fs' g fs4 a,8 e'4 e8 e(cs) cs cs(d) e d4 fs,8
  bf d d e4 e8 d b e d r r d f16 e f8 f r r fs e16 d e8 fs4\fermata
  \bar "|."
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Herr, wenn die stol -- zen Fein _ _ -- de _ schnau _ _ _ _ _ _ _ _ _ -- ben,
  die stol -- zen _ Fein _ _ _ _ _ _ _ -- de,
  Herr, wenn die stol _ _ _  -- zen Fein -- de schnau -- ben,
    die Fein _ -- de schnau -- ben,
    so gib, dass wir im fe _ -- sten Glau _ _ _ _ _ _ _ _ -- ben, _ im _ fe _ -- sten Glau -- ben, gib, _ dass wir _ im fe _ -- sten Glau -- ben, im fe -- sten Glau _ _ _ -- ben, im fe _ -- sten Glau -- ben
    XXXXXXXXXXnach dei -- ner Macht und Hül -- fe sehn, nach dei -- ner Macht und Hül -- fe sehn, nach
    dei -- ner Macht und Hül -- fe sehn, nach dei -- ner Macht und Hül -- fe, so
    gib, dass wir im fe -- sten Glau -- ben nach dei -- ner Macht und Hül -- fe sehn!oneonesix
  Wir wo -- len dir al -- lein ver -- trau -- en, so kön -- nen wir den schar -- fen Klau -- en des Fein -- des un -- ver -- sehrt ent -- gehn;
  wir wol -- len dir al -- lein ver -- trau -- en, wir wol -- len dir al -- lein ver --
  trau -- en, so kön -- nen wir den schar -- fen Klau -- en des Fein -- des un -- ver -- sehrt ent --
  gehn, un -- ver -- sehrt ent -- gehn.
  Herr, wenn die stol -- zen Fein -- de schnau -- ben,
  Herr, wenn die stol -- zen Fein -- de schnau -- ben, so gib, dass wir im fe -- sten Glau -- ben
  nach dei -- ner Macht und Hül -- fe sehn, nach dei -- ner Macht und Hül -- fe
  sehn, so gib, dass wir im fe -- sten Glau -- ben nach dei -- ner Macht und
  Hül -- fe sehn, dass wir im fe -- sten Glau -- ben nach dei -- ner Macht und
  Hül -- fe sehn, dei -- ner Hül -- fe sehn, Herr, wenn die stol -- zen
  Fein -- de schnau -- ben, so gib, dass wir im fe -- sten Glau -- ben nach dei -- ner
  Macht und Hül -- fe sehn, so gib, dass wir im fe -- sten Glau -- ben
  nach dei -- ner Macht und Hü -- lfe sehn, nach dei -- ner Macht und Hül -- fe sehn!
}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreATenorVoice }
    \addlyrics { \scoreAVerse }
    \layout { }
    \midi { }
  }
}

globalFB = {
  \key g \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreBTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    b4
    b e e8(d) d4 e8(c) a(d) d4\fermata e d g,8(a) b(c) d4 d(c8 b) b4
  }
  \partial 4
  d
  d d8(c) b(c) fs,(b) b(a) a(g) fs4\fermata
  fs g8(a) b(c) b(a) g4 g fs8 e fs4\fermata
  e8 fs g4. a8 b(c) d4~ d(c8 b) b4\fermata
  \bar "|."
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  \repeat volta 2 { <<{Ich steh an dei -- ner Krip -- pen hier, o Je -- su -- lein, mein Le -- ben;}{\new Lyrics{ich kom -- me}}>> }
                       Nimm hin
}

\bookpart {
  \header {
    title = "Ich steh an deiner Krippen hier"
    subsubtitle = "Coro"
  }
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreBTenorVoice }
    \addlyrics { \scoreBVerse }
    \layout { }
    \midi { }
  }
}

globalFC = {
  \key d \major
  \time 4/4
}

scoreCTenorVoice = \relative c' {
  \globalFC
  \dynamicUp
  % Music follows here.
  \partial 4
  r4
  r1
  \repeat volta 2 { R1*10 
  r2 r4 a b8 cs d4 g, a b8(g e a) a4 r
  r1 r2 r4 fs' fs d8(fs) g(e) fs(cs) d4 r r2 r1
  }
  R1*2 r2 r4 e e d d e8 cs fs4.(b,) fs4 r r1 r4 d' d d b b8(as) as4 r r1 r
  r2 r4 e' e4. b8 a4. a8 a(b gs4) a r
  R1*4 r2 r4 d d8 cs16 b a4 a a a1 R1*9 r2 r4\fermata
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  \repeat volta 2 { <<{Nun seid _ ihr wohl ge -- ro -- chen an eu -- rer Fein -- de Schar} \new Lyrics{denn Chris -- tus hat zer -- bro -- chen, was euch zu -- wi -- der war. }>> }
                    Tod, Teu -- fel, Sünd und Höl -- le sind ganz und gar ge -- schwächt;
                    bei Gott hat sei -- ne Stel -- le das mensch -- li -- che Ge -- schlecht.
}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreCTenorVoice }
    \addlyrics { \scoreCVerse }
    \layout { }
    \midi { }
  }
}

scoreDTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreDTenorVoice }
    \addlyrics { \scoreDVerse }
    \layout { }
    \midi { }
  }
}
