\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "Christus ist auferstanden"
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
  a4 a8 c4 c8 c4(a8) a4 d8 c4 a8 c4 c8 c4. c4 c8\p c4 c8 c4 c8 f,4 f8 f4 g16\f(a) bf4 bf8 bf(a) d a4 c8 c4 f8 d(c) bf a4 c8 c4 bf8 a4
  \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Chri -- stus ist auf -- er -- stan -- den von Tod und Gra -- bes -- ban -- den.
  Er -- lös -- te Men -- schen, freu -- et euch, er -- öff -- net ist das Him -- mel -- reich.
  Hal -- le -- lu -- ja, Hal -- le -- lu -- ja!
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Als Mag -- da -- le -- na wei -- net, beim Gra -- be ihr er -- schei -- net Herr Je -- sus in der Gärt -- ners -- gstalt, der Hei -- land, der uns se -- lig macht.
  Hal -- le -- lu -- ja, Hal -- le -- lu -- ja!
}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  Ein En -- gel stillt die Kla -- gen der Frau -- en, die ver -- za -- gen. Er spricht: 'Wisst, dass heut Je -- sus Christ, den ihr hier sucht, er -- stan -- den ist.'
  Hal -- le -- lu -- ja, Hal -- le -- lu -- ja!
}

verseFour = \lyricmode {
  \set stanza = "4."
  % Lyrics follow here.
  Er tritt auch zu den bei -- den, die sich von sei -- nem Lei -- den er -- zäh -- len und nach Em -- maus gehn, und leh -- ret sie, die Schrift ver -- stehn.
  Hal -- le -- lu -- ja, Hal -- le -- lu -- ja!
}

verseFive = \lyricmode {
  \set stanza = "5."
  % Lyrics follow here.
  Am sel -- ben A -- bend zei -- get, als sich der Tag schon nei -- get, sich Je -- sus sei -- ner Jün -- ger -- schar, die in dem Saal ver -- sam -- melt war.
  Hal -- le -- lu -- ja, Hal -- le -- lu -- ja!
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
  \addlyrics { \verseFive }
  \layout { }
  \midi { }
}
