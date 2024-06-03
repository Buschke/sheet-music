\version "2.24.2"
\language "english"

\header {
  dedication = ""
  title = "Ehre sei dir Gott, gesungen"
  subtitle = "Weihnachtsoratorium, 5. Teil"
  subsubtitle = "Nr. 43 Coro"
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

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem.neutral-direction = #'()
  }
}

global = {
  \key c \major
  \time 4/4
  \tempo "Vivace" 4=100
}

globalA = {
  \key a \major
  \time 3/4
  \tempo "Vivace" 4=100
}

scoreATenorVoice = \relative c' {
  \compressEmptyMeasures
  \globalA
  \dynamicUp
  % Music follows here.
  R2. * 16
  r2.
  r8 cs16(d e8) e fs16 e fs8 e r r4 r
  cs8 cs e cs b b cs cs16(b a8) r r4
  r8 gs16(a b8) b cs16(b) cs8 b b4 gs8 e e' e r r4 r
  e8 e b e ds ds e4 b8 r r4
  r8 a16(b cs8) cs d16(cs) d8 e e(d) cs b a e' r r4 r
  e8 cs cs e e e e e16 d cs8 e4 cs8
  a(b16 cs d e) fs8 e d16(cs)
  b8 gs16 a b cs d8 d4~ d8
  cs16 b cs ds e8 fs e ds fs4 ds8 b ds
  e b16 a b8 e, d'16 cs d8 cs e4 cs8 a e'
  fs4~ fs16 e d cs b8 e e e,16(fs gs a) b8 b e e a,4 g8 fs g16 a
  b8 ds4 fs,8 b fs' e4 r8 b4 d8 cs2.~
  cs8 cs16 b cs8 as fs as b fs'4 fs8 ds b fs ds'~ ds16 e fs g a8 fs e2.~ e~ e2~ e16 ds cs b cs8 ds fs4 b, b8 r a r e' r cs a'4 gs a16 gs fs8 fs e4 b b r r
  R2. * 3
  r2.
  r8 cs16(d e8 fs16 gs a8) cs, b e e e e e e e16(d cs8) r r4
  R2. * 3
  r8 a16(b cs8) d16 b cs8 a d cs d d4(cs16 d e8) a, e'16(d e4) e8 d r r4 r
  r8 gs,16 a b8 b b16 a b8 e, r r4 r r8 d'16 e fs8 fs fs16 e fs8 b, d16(cs b8) b b b
  b d16(cs b8) e fs gs e fs(e) d e fs e4 e8 r r4 r2.
  r4 r8 e4 cs8 a(b16 cs d e) fs8 e d16 cs b8 gs16(a b cs) d8 d4~ d8 cs16(b a b cs d e8) e
  e8(d16 cs d e) fs8 fs4~ fs8 e16(d cs8) d e d cs e4 cs8 a cs d d4 cs8 b e e2.~ e8 a,4 e'8 cs a fs'2.~ fs8 fs16(e fs8) ds b ds
  e b4 b8 gs e b' gs8. a16 b cs d8 b a2.~ a~ a2~ a16 gs fs e fs8 gs b4 e e8 r d r a r fs(d'4 cs d16 cs
  b8) b a(e) e'(d) cs4\fermata r8
  e16(d cs8) b a(b cs) d cs cs cs4 r r r2. r4 r8 fs, b4~ b8 fs'(e) a, b cs b4 r r
  r2. r4 r cs8 fs fs4. b,4 e8 e4. a,8 a a gs4 gs8 bs cs ds ds cs16(bs cs8) cs fs e16 ds e4 r r r2.
  r4 r gs,8 a b4. e8 cs fs fs4 r r r2. r8 d4 cs8 b4~ b8 a16 gs a b cs8~ cs16 a b8 a4 r r  r2. r4 r fs'8 d
  b e4 e8 e a, a fs b2~ b8 a gs cs fs, cs' cs fs,16(gs a8) a b a16 gs a4 r r
  \bar "|."
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Eh -- re sei _ dir, Gott, Eh -- re sei dir, Gott, ge -- sun -- gen,
  Eh -- re sei dir, Gott, Eh -- re sei dir, Gott,
  Eh -- re sei dir, Gott, ge -- sun -- gen,
  Eh -- re sei dir, Gott, Eh -- re sei dir, Gott,
  Eh -- re sei dir, Gott, ge -- sun -- gen _ _,
  dir sei Lob und Dank be -- reit',
  Lob _ _ _ und Dank, Lob _ _ _ und Dank be -- reit',
  dir sei Lob und Dank, Lob _ _ und Dank _ be -- reit',
  dir sei Lob und Dank _ _ _ _ be _ -- reit',
  Lob und Dank be -- reit',
  Lob und Dank be -- reit',
  dir sei Lob und Dank, dir sei Lob, Lob _ _ und Dank be --reit',
  dir sei Lob und Dank, Lob _ _ _ _ und Dank, _ _ _ _
  und Dank be -- reit', dir sei Lob _ _ _ _ _ und Dank be -- reit';
  Eh -- re, Eh -- re sei dir, Gott, ge -- sun -- gen,
  dir sei _ Lob und Dank, dir sei Lob und Dank be -- reit',
  Eh _ _ -- re sei _ dir, Gott, Eh _ _ -- re sei _ dir, Gott, Eh -- re sei dir, Gott, Eh -- re sei dir, Gott, sei dir, Gott, ge -- sun -- gen,
  dir sei Lob und Dank be _ -- reit', Lob und Dank, Lob und
  Dank be -- reit', Lob und Dank be -- reit', dir sei Lob und Dank, Lob und Dank be --reit', dir sei Lob und Dank, Lob und Dank be --
  reit' dir sei Lob und Dank, Lob _ _ _ _ und Dank,  _ _ _ _ und Dank be -- reit', dir sei Lob und Dank be -- reit',
  Dich er -- he -- bet al -- le Welt,
  weil dir un -- ser Wohl ge -- fällt,
  weil an -- heut un -- ser al -- ler Wunsch ge -- lun -- gen, weil uns dein Se -- gen so herr -- lich er -- freut;
  dich er -- he -- bet al -- le Welt,
  weil dir un -- ser _ Wohl _ _ _ ge -- fällt,
  weil an -- heut un -- ser al -- ler Wunsch ge -- lun _ -- gen, weil uns dein Se -- gen so herr -- lich er -- freut.
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

globalB = {
  \key d \major
  \time 4/4
}

scoreBTenorVoice = \relative c' {
  \globalB
  \dynamicUp
  \compressEmptyMeasures
  % Music follows here.
  \partial 2
  d4 r cs r8 as b4 r8 b e e ds e16 fs g8 g e e16 e e8 e r a, d d cs d16 e
  fs8 fs d d16 d d8 d e r
  fs4 r r2 r1 r r2 r8 b, b cs d d d e fs fs r d
  cs4 b8(a) e' e, r4
  r8 fs' fs gs a a g fs g g r e fs b, cs(es) cs4 r8 b~ b d g fs fs fs16 e d8 cs cs a r4
  a8 g fs(g) a a a gs a4 a8 cs d a d4~
  d8 fs e ds e(cs) d(fs) b,2 cs4 r
  R1 * 10
  \bar "|."
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  Wo, wo, wo, wo, wo ist der neu -- ge _ -- bor -- ne Kö -- nig der Jü -- den
  wo ist der neu -- ge _ -- bor -- ne Kö -- nig der Jü -- den? wo,
  wo?
  Wir ha -- ben sei -- nen Stern ge -- se -- hen im Mor -- gen -- lan -- de
  Wir ha -- ben sei -- nen Stern ge -- se -- hen im Mor -- gen -- lan -- de
  sei -- nen Stern ge -- se -- hen im Mor -- gen -- lan -- de
  und sind kom -- men, ihn an -- zu -- be -- ten, ihn an -- zu -- be _ -- ten, ihn an -- zu -- be -- ten.
}

\bookpart {
  \header {
    title = "Wo ist der neugeborne König der Juden"
    subsubtitle = "45. Chor"}
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

globalC = {
  \key a \major
  \time 4/4
}

scoreCTenorVoice = \relative c' {
  \globalC
  \dynamicUp
  % Music follows here.
  \partial 4
  cs8 d
  e4 d8 cs b4(a b) a8 g a4 e'8 d cs2\fermata
  r4 a a gs b8(a) b4 b8(e4) ds8 e4\fermata
  e fs fs fs e e8\((d) e(ds)\) e4\fermata
  e d8(c) d(e) fs4\fermata
  fs8 e d4 e a,\fermata
  a b cs8 ds e2~ e8 cs a cs fs d b e cs2.\fermata
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  Dein _ Glanz all _ Fin -- ster _ -- nis ver _ -- zehrt,
  die trü -- be Nacht in Licht ver -- kehrt,
  Leit uns auf dei -- nen We _ -- gen,
  dass dein Ge -- sicht
  und _ herr -- lichs Licht
  wir e -- wig _ schau _ _ -- en mö _ _ _ -- gen.

}

\bookpart {
  \header {
    title = "Dein Glanz all Finsternis verzehrt"
    subsubtitle = "46. Choral"}
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

globalD = {
  \key a \major
  \time 4/4
}

scoreDTenorVoice = \relative c' {
  \globalD
  \dynamicUp
  % Music follows here.
  \repeat volta 2 {
    cs4 b a8(b) cs(d) e(b) b4 b8.(a16) g4\fermata
    b8 cs d e a,4 e a4. gs8 cs2
  }
  e4 e8(ds) e(d) cs(b) a(b) cs(ds) e4 e\fermata
  as,8(b) b4 a a a8 b gs d' cs b cs4\fermata
  \bar "|."
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  <<{ Zwar ist sol -- che Her -- zens -- stu -- be wohl _ kein _ schö -- ner Fürs -- ten -- saal }\new Lyrics{Son -- dern ei -- ne fin -- stre Gru -- be;
  Doch _ so _ -- bald dein Gna -- den -- strahl }>>
  In den -- sel -- ben nur wird blin -- ken,
  wird es vol -- ler Son _ -- nen _ dün _ -- ken.
}

\bookpart {
  \header {
    title = "Zwar ist solche Herzenstube wohl kein schöner Fürstensaal"
    subsubtitle = "53. Choral"}
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

\bookpart {
  \header {
    title = "WO 5. Teil"
    subsubtitle = "BWV 248"}
  \score {
    \header { opus = "43. Coro"}
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
  \score {
    \header { opus = "45. Chor"}
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
  \score {
    \header { opus = "46. Choral"}
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
  \score {
    \header { opus = "53. Choral"}
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