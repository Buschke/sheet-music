\version "2.22.2"
\language "english"

\header {
  dedication = "Pro Defunctis"
  title = "Requiem"
  subtitle = "1. Requiem"
  subsubtitle = "Ein Fragment"
  instrument = "Orchester, Chor"
  composer = "Wolfgang Amadeus Mozart"
  arranger = "Franz Xaver Süßmayr, Sven Buschke"
  poet = "Liturgie Ordinarium et Proprium"
  meter = "d-Moll"
  piece = "1791 [1792 [sic]]"
  opus = "KV 626"
  copyright = "© Sven Buschke, 14. August 2022"
  tagline = "Mozart in aeternum"
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  indent = 5\cm
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key d \minor
  \time 4/4
  \tempo "Adagio" 4=40
}

globalwokey = {
  \time 4/4
  \tempo "Adagio" 4=40
}

scoreABassClarinetA = \relative c'' {
  \globalwokey \key a \minor
  \transposition f,
  % Music follows here.
  r1 r
  r2 r4 a'\p~
  a gs a b
  c2 b4 g~
  g( f8 e ds e4 ds8)
  e4 r r2
  r1

}

scoreABassClarinetB = \relative c'' {
  \globalwokey \key a \minor
  \transposition f
  % Music follows here.
  r1
  r4 e2\p( ds4)
  e( fs) g f8 e
  f4 e8 d e4 fs
  g8 fs16 e d2 e8( d)
  c2 b4 a
  g r r2
  r1
}


scoreABassoonA = \relative c {
  \global
  % Music follows here.
  \clef tenor
  r4 d'2\p( cs4)
  d( e) f2
  e2.( fs4)
  g f8 e f4 b,8( e~
  e d16 c d4) e2~
  e4 d~ d8 c b4
  a r r2

}

scoreABassoonB = \relative c {
  \global
  % Music follows here.
  \clef tenor
  r1 r r
  r4 a'2\p( gs4)
  a( b) c2
  a4 d, e2 a4 r r2
}

scoreAClarinetA = \relative c'' {
  \globalwokey \key a \minor
  \transposition bf
  % Music follows here.
  r1 r r r r r
  r2 r4 g8\f g
  g4 r
}

scoreAClarinetB = \relative c'' {
  \globalwokey \key a \minor
  \transposition bf
  % Music follows here.
  r1 r r r r r
  r2 r4 g,8\f g
  c4
}

scoreATrumpetDA = \relative c'' {
  \globalwokey \key a \minor
    \transposition d
  % Music follows here.
  r1 r r r r r
  r4 bf\f a g
  f
}

scoreATrumpetDB = \relative c'' {
  \globalwokey \key a \minor
    \transposition d
  % Music follows here.
  r1 r r r r r
  << \voiceOne {r4 cs,\f d cs  d} \\ \voiceTwo {r4 g,\f f e d} >>
}

scoreATimpani = \relative c {
  \globalwokey \key a \minor
  % Music follows here.
  r1 r r r r r
}

scoreAViolinI = \relative c'' {
  \global
  % Music follows here.
  r1
  r8 a-!\p r a-! r a-! r gs-!
  r a-! r b-! r c-! r c-!
  r bf-! r e,-! r a-! r gs-!
  r c-! r b-! r c-! r e-!
  r d-! r d-! r c-! r b-!
  r a-! r bf'\f-! r a-! r cs-!

}

scoreAViolinII = \relative c'' {
  \global
  % Music follows here.
  r8 d,-!\p r d-! r d-! r cs-!
  r d-! r e-! r f-! r f-!
  r e-! r e-! r e-! r fs-!
  r g-! r cs,-! r d-! r e-!
  r a-! r g-! r g-! r c-!
  r c-! r a-! r a-! r gs-!
  r a-! r <cs e>\f-!
}

scoreAViola = \relative c' {
  \global
  % Music follows here.
  r8 f,\p-! r a-! r g-! r b-!
  r a-! r a-! r a-! r b-!
  r c-! r d-! r c-! r d-!
  r d-! r a-! r a-! r b-!
  r f'-! r f-! r e-! r a-!
  r f-! r f-! r e-! r d-!
  r c-! r g'\f-! r f-! r e-!
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  r1 r r r r r r
  r
  r2 r4 a~
  a8 a gs a4( b)
  c
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  r1 r r r r r r
  r
  r4 d4. d8 cs cs
  d( c) b( e) a,4 f'
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  r1 r r r r r r
  r2 r4 a~
  a8 a g8 g  a4( g
  f) d'
}

scoreABass = \relative c {
  \global
  % Music follows here.
  r1 r r r r r r
  r4 d4. d8 cs cs
  bf4( e) d
}

scoreASopranoVerse = \lyricmode {
  % Lyrics follow here.
  Re -- qui -- em ae -- ter -- nam,
}

scoreAAltoVerse = \lyricmode {
  % Lyrics follow here.
  Re -- qui -- em ae -- ter -- nam,
}

scoreATenorVerse = \lyricmode {
  % Lyrics follow here.
  Re -- qui -- em ae -- ter -- nam,
}

scoreABassVerse = \lyricmode {
  % Lyrics follow here.
  Re -- qui -- em ae -- ter -- nam,
}

scoreACello = \relative c {
  \global
  % Music follows here.
  d8\p-!-\markup {tasto solo} r f-! r e-! r g-! r
  f-! r cs-! r d-! r d-! r
  g,-! r a-! r f'-1 r e-! r
  g,-! r a-! r f'-! r e-! r
  d-! r g-! r c,-! r a-! r
  d-! r d-! r e-! r e-! r
  a-! r g-! r f-! r e-! r
  d-! r d-! r d-! r cs-! r

}

scoreABassClarinetPart = \new Staff \with {
  instrumentName = "Bass-Klarinetten I, II in F"
  shortInstrumentName = "BKl."
  midiInstrument = "clarinet"
} << \voiceOne \scoreABassClarinetA \\ \voiceTwo \scoreABassClarinetB >>

scoreABassoonPart = \new Staff \with {
  instrumentName = "Fagotte I, II"
  shortInstrumentName = "Fg."
  midiInstrument = "bassoon"
} { \clef bass << \voiceOne \scoreABassoonA \\ \voiceTwo \scoreABassoonB >>}

scoreATrumpetCPart = \new Staff \with {
  instrumentName = "Trompeten in D"
  shortInstrumentName = "Tr.D"
  midiInstrument = "trumpet"
} << \scoreATrumpetDA \\ \scoreATrumpetDB >>

scoreAClarinetPart = \new Staff \with {
  instrumentName = "Klarinetten I, II in D"
  shortInstrumentName = "Kl."
  midiInstrument = "clarinet"
} << \scoreAClarinetA \\ \scoreAClarinetB >>

scoreATimpaniPart = \new Staff \with {
  instrumentName = "Pauken in D-A"
  shortInstrumentName = "Pk."
  midiInstrument = "timpani"
} { \clef bass \scoreATimpani }

scoreAViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreAViolinI

scoreAViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreAViolinII

scoreAViolaPart = \new Staff \with {
  instrumentName = "Bratsche"
  shortInstrumentName = "Bra."
  midiInstrument = "viola"
} { \clef alto \scoreAViola }

scoreAChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Sopran"
    shortInstrumentName = "S."
    \consists "Ambitus_engraver"
  } { \scoreASoprano }
  \addlyrics { \scoreASopranoVerse }
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Alt"
    shortInstrumentName = "A."
    \consists "Ambitus_engraver"
  } { \scoreAAlto }
  \addlyrics { \scoreAAltoVerse }
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Tenor"
    shortInstrumentName = "T."
    \consists "Ambitus_engraver"
  } { \clef "treble_8" \scoreATenor }
  \addlyrics { \scoreATenorVerse }
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Bass"
    shortInstrumentName = "B."
    \consists "Ambitus_engraver"
  } { \clef bass \scoreABass }
  \addlyrics { \scoreABassVerse }
>>

scoreACelloPart = \new Staff \with {
  instrumentName = "Cello, K.-Bass & Orgel"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
} { \clef bass \scoreACello }

\score {
  <<
    \scoreABassClarinetPart
    \scoreABassoonPart
    \scoreATrumpetCPart
    \scoreAClarinetPart
    \scoreATimpaniPart
    \scoreAViolinIPart
    \scoreAViolinIIPart
    \scoreAViolaPart
    \scoreAChoirPart
    \scoreACelloPart
  >>
  \layout { }
  \midi { }
}
