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

scoreABassClarinetA = \relative c'' {
  \global
  \transposition bf,
  % Music follows here.
  r1 r
  r2 r4 a'\p~
  a
}

scoreABassClarinetB = \relative c'' {
  \global
  \transposition bf,
  % Music follows here.
  r1
  r4 e2\p( ds4)
  e( fs) g f8 e
  f4
}


scoreABassoonA = \relative c {
  \global
  % Music follows here.
  \clef tenor
  r4 d2'( cs4)
  d( e) f2
  e2.( fs4)
  g f8 e f4
}

scoreABassoonB = \relative c {
  \global
  % Music follows here.
  \clef tenor
  r1 r r
  r4 a'2( gs4)
  a( b) c2
}

scoreATrumpetC = \relative c'' {
  \global
  % Music follows here.

}

scoreATimpani = \relative c {
  \global
  % Music follows here.

}

scoreAViolinI = \relative c'' {
  \global
  % Music follows here.
  r1
  r8 a-. r a-. r a-. r gs
  r a r b r c r c
  r bf r e, r a r gs

}

scoreAViolinII = \relative c'' {
  \global
  % Music follows here.
  r8 d,-.\p r d-. r d-. r cs-.
  r d-. r e-. r f-. r f-.

}

scoreAViola = \relative c' {
  \global
  % Music follows here.
  r8 f,\p-. r a-. r g-. r b-.
  r a-. r a-. r a-. r b-.
  r c r d r c r d

}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreAAlto = \relative c' {
  \global
  % Music follows here.

}

scoreATenor = \relative c' {
  \global
  % Music follows here.

}

scoreABass = \relative c {
  \global
  % Music follows here.

}

scoreASopranoVerse = \lyricmode {
  % Lyrics follow here.

}

scoreAAltoVerse = \lyricmode {
  % Lyrics follow here.

}

scoreATenorVerse = \lyricmode {
  % Lyrics follow here.

}

scoreABassVerse = \lyricmode {
  % Lyrics follow here.

}

scoreACello = \relative c {
  \global
  % Music follows here.
  d8\p-.-\markup {tasto solo} r f-. r e-. r g-. r
  f-. r cs-. r d-. r d-. r
  g, r a r f' r e r
  d r g r c, r a r

}

scoreABassClarinetPart = \new Staff \with {
  instrumentName = "Bas-Klarinette"
  shortInstrumentName = "BKl."
  midiInstrument = "clarinet"
} << \voiceOne \scoreABassClarinetA \\ \voiceTwo \scoreABassClarinetB >>

scoreABassoonPart = \new Staff \with {
  instrumentName = "Fagotte"
  shortInstrumentName = "Fg."
  midiInstrument = "bassoon"
} { \clef bass << \voiceOne \scoreABassoonA \\ \voiceTwo \scoreABassoonB >>}

scoreATrumpetCPart = \new Staff \with {
  instrumentName = "Trompeten in C"
  shortInstrumentName = "Tr.C"
  midiInstrument = "trumpet"
} \scoreATrumpetC

scoreATimpaniPart = \new Staff \with {
  instrumentName = "Pauken"
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
  instrumentName = "Cello"
  shortInstrumentName = "Cl."
  midiInstrument = "cello"
} { \clef bass \scoreACello }

\score {
  <<
    \scoreABassClarinetPart
    \scoreABassoonPart
    \scoreATrumpetCPart
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
