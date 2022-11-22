\version "2.22.2"
\language "english"

\header {
  dedication = "NN"
  title = "Kirchenmusiker C-Ausbildung"
  subtitle = "Harmonisieren Lieder Gotteslob"
  subsubtitle = "Hausaufgaben KW 43-2022"
  instrument = "Orgel"
  composer = "Sven Buschke"
  arranger = "Unterricht bei: Andreas Lang"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "NN"
  copyright = "NN"
  tagline = "NN"
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
  \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

globalA = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreATenorVoiceA = \relative c' {
  \globalA
  \dynamicUp
  % Music follows here.
  e,4 d c e |
  g f e2 |
  g4 g f e |
  d d c2 |
}

scoreATenorVoiceB = \relative c' {
  c4 c b g |
  a a g2 |
  g4 g a a |
  g( f) e2 \breathe |
  c4 e f g |
  a a g2 |
  f4 g e d8( c) |
  d2 c
}


scoreAVerseA = \lyricmode {
  % Lyrics follow here.
  Hei -- lig bist du, gro -- ßer Gott, hei -- lig, Herr, Gott Ze -- ba -- ot.
}

scoreAVerseB = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Zeu -- gen dei -- ner Herr -- lich -- keit Him -- mel sind und Er -- de.
  Lob und Preis durch al -- le Zeit, dir o Höchs -- ter, wer -- de.
}

scoreAVerseC = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Der da kommt vom ew -- gen Thron, er sei hoch ge -- prie -- sen.
  E -- wig sei dem Got -- tes -- sohn Ehr und Dank er -- wie -- sen.
}

scoreARightA = \relative c'' {
  % Music follows here.
  \transpose c c' {\scoreATenorVoiceA}
}

scoreARightB = \relative c'' {
  % Music follows here.
  \transpose c c' {\scoreATenorVoiceB}
}

scoreALeftA = \relative c' {
  \globalA
  % Music follows here.
  <c, g'>4 <b g'><g' e><g c,> |
  <c, g'><c a'><c g>2 |
  <b d>4<b d><a c><c g> |
  <b g><b g><g e>2 |
}

scoreALeftB = \relative c' {
  % Music follows here.
  <e g>4<e g><g d><b, d> |
  <f c><f c><b d>2 |
  <b d>4<b d><f c><f c> |
  <b d><a c><c g>2 |
  <e, g>4<c g><a c><b d> |
  <f' c><f c><b d>2 |
  <a c>4<b d><c g><g b>8<e g> |
  <g b>2<e g>
}

scoreAPedalA = \relative c {
  \globalA
  % Music follows here.
  c4 g c c |
  c f c2 |
  g'4 g f c |
  g' g c2 |
}

scoreAPedalB = \relative c {
  % Music follows here.
  c4 c g g |
  f f g2 |
  g4 g f f |
  g f e2 |
  c4 c f g |
  f f g2 |
  f4 g c g8 c |
  g2 c
}

scoreAChordNames = \chordmode {
  \globalA
  % Chords follow here.
  
}

scoreAFigBass = \figuremode {
  \globalA
  % Figures follow here.
  
}

scoreATenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} <<\new Voice = "A" { \clef "treble_8" \scoreATenorVoiceA \repeat volta 2 {\scoreATenorVoiceB}} 
%\addlyrics { \scoreAVerseA } 
\new Lyrics \lyricsto "A" { \scoreAVerseA << {\scoreAVerseB} \new Lyrics {\set associatedVoice ="A" {\scoreAVerseC}} >>}
>>

scoreAOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } {\scoreARightA \repeat volta 2 {\scoreARightB}}
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreALeftA \repeat volta 2 {\scoreALeftB} }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreAPedalA \repeat volta 2 {\scoreAPedalB} }
>>

scoreAChordsPart = \new ChordNames \scoreAChordNames

scoreABassFiguresPart = \new FiguredBass \scoreAFigBass

claveA = {\new DrumStaff <<
  \drummode {\globalA
             <<{hh4 cl hh cl} \\
             {bd4 sn sn sn}
             >>
  }
          >>
}

\bookpart {
\header {
  title = "Kirchenmusiker C-Ausbildung"
  subtitle = "Korrektur: Heilig bist du großer Gott"
  subsubtitle = "Hausaufgaben KW 45-2022, Teil 2: Harmonisieren Lieder Gotteslob"
  instrument = "Orgel"
  poet = "T: Aachen M: Joseph Mohr, Franz Braun"
  meter = "NN"
  piece = "T: 1867, M: 1877/1891, 1675"
  opus = "GL 198"
}
  \score {
%    \unfoldRepeats{
%    {
%      \claveA
      <<
        \scoreATenorVoicePart
        \scoreAOrganPart
        \scoreAChordsPart
        \scoreABassFiguresPart
      >>
%    }
%    }
    \layout { }
%    \midi { }
  }
  \score {
    {
      \claveA
      \unfoldRepeats{
        <<
          \scoreATenorVoicePart
          \scoreAOrganPart
          \scoreAChordsPart
          \scoreABassFiguresPart
        >>
      }
    }
%    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalB = {
  \key c \major
  \time 2/2
  \tempo "Andante" 2=50
}

scoreBTenorVoice = \relative c' {
  \globalB
  \dynamicUp
  % Music follows here.
  \partial 4
  g4 |
  a a e g |
  f2 e4 e |
  c' c b a |
  b2 r4 e, |
  d d f g |
  e 2 e4 e |
  d d f g |
  e2 r4 a |
  c2 g4 g |
  a2 a4 e |
  f2 c4 d |
  e2 e4
  \bar "|."
}

scoreBVerseA = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Das Wei -- zen -- korn muß ster -- ben, sonst bleibt es ja al -- lein; der ei -- ne lebt vom an -- dern, für sich kann kei -- ner sein. Ge -- heim -- nis des Glau -- bens: im Tod ist das Le -- ben.
}

scoreBVerseB = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  So gab der Herr sein Le -- ben, ver -- schenk -- te sich wie Brot. Wer die -- ses Brot ge -- nom -- men, ver -- kün -- det sei -- nen Tod. Ge -- heim -- nis des Glau -- bens: im Tod ist das Le -- ben.
}

scoreBVerseC = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  Wer dies Ge -- heim -- nis fei -- ert, soll sel -- ber sein wie Brot; so läßt er sich ver -- zeh -- ren von al -- ler Men -- schen -- not. Ge -- heim -- nis des Glau -- bens: im Tod ist das Le -- ben.
}

scoreBVerseD = \lyricmode {
  \set stanza = "4."
  % Lyrics follow here.
  Als Brot für vie -- le Men -- schen hat uns der Herr er -- wählt; wir le -- ben für -- ein -- an -- der, und nur die Lie -- be zählt. Ge -- heim -- nis des Glau -- bens: im Tod ist das Le -- ben.  
}

scoreBRight = \relative c'' {
  % Music follows here.
  \transpose c c' {\scoreBTenorVoice }
}

scoreBLeft = \relative c' {
  \globalB
  % Music follows here.
  \partial 4
  <c e>4 |
  <f c><f c><c g><b d> |
  <a c>2<c g>4<c g> |
  <f, a><e g><g b><f c> |
  <g d>2 r4 <c g> |
  <g b><g b><a c><b d> |
  <c g>2 <c g>4<c g> |
  <g b><g b><a c><b d> |
  <c g>2 r4 <f c> |
  <e g>2 <b d>4<b d> |
  <f c>2<f c>4<c g> |
  <a c>2<e g>4<g b> |
  <c g>2<c g>4 |
}

scoreBPedal = \relative c {
  \globalB
  % Music follows here.
  \partial 4
  c4 |
  f f c g |
  f2 c4 c |
  f c g' f |
  g2 r4 c |
  g g f g |
  c2 c4 c |
  g g f g |
  c2 r4 f |
  c2 g4 g |
  f2 f4 c |
  f2 c4 g' |
  c2 c4
}

scoreBChordNames = \chordmode {
  \globalB
  % Chords follow here.
  
}

scoreBFigBass = \figuremode {
  \globalB
  % Figures follow here.
  
}

claveB = {\new DrumStaff <<
  \drummode {\globalB
             <<{hh4 cl hh cl} \\
             {bd4 sn sn sn}
             >>
  }
          >>
}

scoreBTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreBTenorVoice }
\addlyrics { \scoreBVerseA }
\addlyrics { \scoreBVerseB }

scoreBOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreBRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreBLeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreBPedal }
>>

scoreBChordsPart = \new ChordNames \scoreBChordNames

scoreBBassFiguresPart = \new FiguredBass \scoreBFigBass

\bookpart {
\header {
  subtitle = "Das Weizenkorn muss sterben"
  poet = "T: Lothar Zenetti M: Johann Lauermann"
  meter = "NN"
  piece = "T: 1971, M: 1972"
  opus = "GL 200"
}
\score {
    <<
      \scoreBTenorVoicePart
      \scoreBOrganPart
      \scoreBChordsPart
      \scoreBBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
  \markup \wordwrap-string 
  "3. Wer dies Geheimnis feiert, soll selber sein wie Brot; so läßt er sich verzehren von aller Menschennot. Geheimnis des Glaubens: im Tod ist das Leben."

  \markup \wordwrap-string 
  "4. Als Brot für viele Menschen hat uns der Herr erwählt; wir leben füreinander, und nur die Liebe zählt. Geheimnis des Glaubens: im Tod ist das Leben."

  \score {
    {
      \claveB
      \repeat unfold 4 {
      <<
        \scoreBTenorVoicePart
        \scoreBOrganPart
        \scoreBChordsPart
        \scoreBBassFiguresPart
      >>
      }
    }
%    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \key c \major
  \time 2/2
  \tempo "Andante" 2=50
}

scoreCTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreCRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreCLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreCPedal = \relative c {
  \global
  % Music follows here.
  
}

scoreCChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

claveC = {\new DrumStaff <<
  \drummode {\globalC
             <<{hh4 cl hh cl} \\
             {bd4 sn sn sn}
             >>
  }
          >>
}

scoreCTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreCTenorVoice }
\addlyrics { \scoreCVerse }

scoreCOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreCRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreCLeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreCPedal }
>>

scoreCChordsPart = \new ChordNames \scoreCChordNames

scoreCBassFiguresPart = \new FiguredBass \scoreCFigBass

\bookpart {
\header {
  subtitle = "Das Weizenkorn muss sterben"
  poet = "T: Aachen M: Joseph Mohr, Franz Braun"
  meter = "NN"
  piece = "T: 1867, M: 1877/1891, 1675"
  opus = "GL 200"
}
  \score {
    <<
      \scoreCTenorVoicePart
      \scoreCOrganPart
      \scoreCChordsPart
      \scoreCBassFiguresPart
    >>
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

scoreDRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreDLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreDPedal = \relative c {
  \global
  % Music follows here.
  
}

scoreDChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreDFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreDTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreDTenorVoice }
\addlyrics { \scoreDVerse }

scoreDOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreDRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreDLeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreDPedal }
>>

scoreDChordsPart = \new ChordNames \scoreDChordNames

scoreDBassFiguresPart = \new FiguredBass \scoreDFigBass

\bookpart {
  \score {
    <<
      \scoreDTenorVoicePart
      \scoreDOrganPart
      \scoreDChordsPart
      \scoreDBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

scoreETenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreEVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreERight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreELeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreEPedal = \relative c {
  \global
  % Music follows here.
  
}

scoreEChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreEFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreETenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreETenorVoice }
\addlyrics { \scoreEVerse }

scoreEOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreERight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreELeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreEPedal }
>>

scoreEChordsPart = \new ChordNames \scoreEChordNames

scoreEBassFiguresPart = \new FiguredBass \scoreEFigBass

\bookpart {
  \score {
    <<
      \scoreETenorVoicePart
      \scoreEOrganPart
      \scoreEChordsPart
      \scoreEBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

scoreFTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreFVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreFRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreFLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreFPedal = \relative c {
  \global
  % Music follows here.
  
}

scoreFChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreFFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreFTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreFTenorVoice }
\addlyrics { \scoreFVerse }

scoreFOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreFRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreFLeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreFPedal }
>>

scoreFChordsPart = \new ChordNames \scoreFChordNames

scoreFBassFiguresPart = \new FiguredBass \scoreFFigBass

\bookpart {
  \score {
    <<
      \scoreFTenorVoicePart
      \scoreFOrganPart
      \scoreFChordsPart
      \scoreFBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

scoreGTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreGVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreGRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreGLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreGPedal = \relative c {
  \global
  % Music follows here.
  
}

scoreGChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreGFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreGTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreGTenorVoice }
\addlyrics { \scoreGVerse }

scoreGOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreGRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreGLeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreGPedal }
>>

scoreGChordsPart = \new ChordNames \scoreGChordNames

scoreGBassFiguresPart = \new FiguredBass \scoreGFigBass

\bookpart {
  \score {
    <<
      \scoreGTenorVoicePart
      \scoreGOrganPart
      \scoreGChordsPart
      \scoreGBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

scoreHTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreHVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreHRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreHLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreHPedal = \relative c {
  \global
  % Music follows here.
  
}

scoreHChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreHFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreHTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreHTenorVoice }
\addlyrics { \scoreHVerse }

scoreHOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreHRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreHLeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreHPedal }
>>

scoreHChordsPart = \new ChordNames \scoreHChordNames

scoreHBassFiguresPart = \new FiguredBass \scoreHFigBass

\bookpart {
  \score {
    <<
      \scoreHTenorVoicePart
      \scoreHOrganPart
      \scoreHChordsPart
      \scoreHBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

scoreITenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreIVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreIRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreILeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreIPedal = \relative c {
  \global
  % Music follows here.
  
}

scoreIChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreIFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreITenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreITenorVoice }
\addlyrics { \scoreIVerse }

scoreIOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreIRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreILeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreIPedal }
>>

scoreIChordsPart = \new ChordNames \scoreIChordNames

scoreIBassFiguresPart = \new FiguredBass \scoreIFigBass

\bookpart {
  \score {
    <<
      \scoreITenorVoicePart
      \scoreIOrganPart
      \scoreIChordsPart
      \scoreIBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

scoreJTenorVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  
}

scoreJVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreJRight = \relative c'' {
  \global
  % Music follows here.
  
}

scoreJLeft = \relative c' {
  \global
  % Music follows here.
  
}

scoreJPedal = \relative c {
  \global
  % Music follows here.
  
}

scoreJChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreJFigBass = \figuremode {
  \global
  % Figures follow here.
  
}

scoreJTenorVoicePart = \new Staff \with {
  instrumentName = "Tenor"
  shortInstrumentName = "T."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef "treble_8" \scoreJTenorVoice }
\addlyrics { \scoreJVerse }

scoreJOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreJRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreJLeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreJPedal }
>>

scoreJChordsPart = \new ChordNames \scoreJChordNames

scoreJBassFiguresPart = \new FiguredBass \scoreJFigBass

\bookpart {
  \score {
    <<
      \scoreJTenorVoicePart
      \scoreJOrganPart
      \scoreJChordsPart
      \scoreJBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}
