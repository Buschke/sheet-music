\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "Es sollten die Lüfte erschallen"
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
  \key ef \major
  \time 6/8
  \tempo "Andante" 4=100
}

tenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  \partial 8
  bf8
  bf8. bf16 bf8 bf8. bf16 bf8 bf4(g8) af4 c16(af) g8 ef g bf8 8 8 bf4. r4 bf8
  bf8. bf16 bf8 bf8. bf16 bf8 bf4(g8) af4 af8 ef ef g bf bf bf bf4. r4 bf8
  
  \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Es sol -- len die Lüf -- te er -- schal -- len vor Ju -- bel und freu -- di -- gem Ton, da Je -- sus die Mut -- ter Ma -- ria zu sich holt zum himm -- li -- schen Thron. Er hat ja die Woh -- nung be -- rei -- tet beim Va -- ter, dem Schöp -- fer der Welt. Gott schenkt ihr das ewi -- ge Le -- ben, Ma -- ria von Gott aus -- er -- wählt.

}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Auf Er -- den Ma -- ria sich wen -- det in De -- mut und Lie -- be zum Herrn. Gott schenkt ihr die himm -- li -- sche Kro -- ne, sie strahlt uns als Mor -- gen -- s -- tern. Ma -- ria den Men -- schen hell leuch -- tet. Zwölf Ster -- ne ge -- stal -- ten die Kron', der Mond un -- ter ih -- ren Fü -- ßen, das Kleid will ihr ge -- ben die Sonn'.

}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  Herr Je -- sus den Him -- mel macht of -- fen und führt sei -- ne Mut -- ter hin -- ein. Er hat durch den Tod uns er -- lö -- set und lädt uns zu sich al -- le ein. Ma -- ria ist vor -- aus -- ge -- gan -- gen, den Weg sie zum Him -- mel uns weist. Ge -- lobt sei der himm -- li -- sche Va -- ter, Gott Sohn und der Hei -- li -- ge Geist.
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
  \layout { }
  \midi { }
}
