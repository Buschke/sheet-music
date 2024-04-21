\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "Der güldne Rosenkranz"
  subtitle = ""
  subsubtitle = ""
  instrument = ""
  composer = ""
  arranger = ""
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  copyright = ""
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key f \major
  \time 6/8
  \tempo "Andante" 4=100
}

tenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  \partial 8
  c8
  c4 c8 c4 g8 a4. r4 c8 d4 f8 f4 c8 c4. r4 a8 c4 c8 a(bf) c d(f) f c4\breathe
  c8 f(c) c c4 bf8 a4. r4
  \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Der gül -- dne Ro -- sen -- kranz,
  ge -- ziert mit Per -- len ganz,
  be -- setzt mit lau -- ter E -- del -- stein,
  ge -- hört Ma -- ri -- a rein.

}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Dem Hei -- land Je -- su Christ auf Er -- den Mut -- ter bist.
  Das Licht der Welt hast du ge -- bracht, das heil die Men -- schen macht.

}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  Du gehst mit dei -- nem Kind, das uns Er -- lö -- sung bringt;
  be -- glei -- test ihn durch Freud und Leid zu Got -- tes Herr -- lich -- keit.
}

verseFour = \lyricmode {
  \set stanza = "4."
  % Lyrics follow here.
  Mein Hei -- land, Je -- sus Christ, der du die Hoff -- nung bist,
  dein Wort und Werk mach uns be -- reit, führ' uns zur E -- wig -- keit.
}

\score {
  \new Staff \with {
    instrumentName = "Tenor"
    shortInstrumentName = "T."
    midiInstrument = "choir aahs"
    \consists "Ambitus_engraver"
  } { \clef "treble_8" \tenorVoice }
  \addlyrics { \verseOne }
  \addlyrics { \verseTwo }
  \addlyrics { \verseThree }
  \addlyrics { \verseFour }
  \layout { }
  \midi { }
}
