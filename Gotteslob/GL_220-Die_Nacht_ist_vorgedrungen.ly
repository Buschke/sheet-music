\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"
\header {
  dedication = "Meinem Lehrer Andreas Lang gewidment, für die Begleitung hin zum C-Schein"
  title = "Die Nacht ist vorgedrungen"
  subsubtitle = "Gotteslob Nr. 220"
  instrument = "Orgel"
  composer = "M: Johannes Petzold, 1939"
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: Jochen Klepper, 1938"
  meter = ""
  piece = ""
  opus = "GL 220"
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

global = {
  \key d \major
  \time 3/2
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 2
    fs,2|
    b b a4 fs|
    g2 fs e|
    fs4 d b( cs) d2|
  } \alternative {
    {\time 2/2 e1}
    {\time 2/2 fs2 r4 e|}
  }
  \time 3/2 e fs g2 fs|
  \time 2/2 e e4 b'|
  \time 3/2 cs d cs2 b4( a)|
  b1\breathe fs2|
  b a g4 fs|
  \time 2/2 e( d) e fs|
  \time 3/2 d2 b e4 e|
  fs1|
  \bar "|."
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

scoreAVerseA = \lyricmode {
  % Lyrics follow here.
  Die Nacht ist vor -- ge -- drun -- gen,
  der Tag ist nicht mehr fern!
}

scoreAVerseB = \lyricmode {
  % Lyrics follow here.
  So sei nun Lob ge -- sun -- gen
  dem hel -- len Mor -- gen --
}

scoreAVerseC = \lyricmode {
  % Lyrics follow here.
  -- stern! Auch wer zur Nacht ge -- wei -- net,
  der stim -- me froh mit ein.
  Der Mor -- gen -- stern be -- schei -- net
  auch dei -- ne Angst und Pein.
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \partial 2

}

scoreAFigBass = \figuremode {
  \global
  % Figures follow here.
}

scoreAChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreASoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreAAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" {<<\scoreAVerseA \new Lyrics {\set associatedVoice = "soprano" \scoreAVerseB}>> \scoreAVerseC}
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreATenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreABass }
  >>
>>

scoreAChordsPart = <<
  \new ChordNames \scoreAChordNames
  %   \scoreAChordNames
  %   \new FretBoards \scoreAChordNames
>>

scoreABassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreAFigBass

\bookpart {
  \header {
    subtitle = "Cantus firmus im Sopran"
  }
  \score {
    <<
      \scoreAChoirPart
      \scoreAChordsPart
      \scoreABassFiguresPart
    >>
    \layout { }
    \midi {
      \tempo 4=100
    }
  }
}

scoreBSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreBAlto = \relative c' {
  \global
  % Music follows here.

}

scoreBTenor = \relative c' {
  \global
  % Music follows here.

}

scoreBBass = \relative c {
  \global
  % Music follows here.

}

scoreBVerseA = \lyricmode {
  % Lyrics follow here.
  Dem al -- le En -- gel die -- nen,
  wird nun ein Kind und Knecht.
  Gott sel -- ber ist er -- schie -- nen
  zur Süh -- ne für sein Recht.
  Wer schul -- dig ist auf Er -- den,
  ver -- hüll nicht mehr sein Haupt.
  Er soll er -- ret -- tet wer -- den,
  wenn er dem Kin -- de glaubt.
}

scoreBVerseB = \lyricmode {
  % Lyrics follow here.

}

scoreBVerseC = \lyricmode {
  % Lyrics follow here.

}

scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreBFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreBChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreBSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreBAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" {<<\scoreBVerseA \new Lyrics {\set associatedVoice = "soprano" \scoreBVerseB}>> \scoreBVerseC}
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreBTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreBBass }
  >>
>>

scoreBChordsPart = <<
  \new ChordNames \scoreBChordNames
  %   \scoreBChordNames
  %   \new FretBoards \scoreBChordNames
>>

scoreBBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreBFigBass

\bookpart {
  \header {
    subtitle = "Cantus firmus im Tenor"
  }
  \score {
    <<
      \scoreBChoirPart
      \scoreBChordsPart
      \scoreBBassFiguresPart
    >>
    \layout { }
    \midi {
      \tempo 4=100
    }
  }
}

scoreCSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreCAlto = \relative c' {
  \global
  % Music follows here.

}

scoreCTenor = \relative c' {
  \global
  % Music follows here.

}

scoreCBass = \relative c {
  \global
  % Music follows here.

}

scoreCVerseA = \lyricmode {
  % Lyrics follow here.
  Die Nacht ist schon im Schwin -- den,
  macht euch zum Stal -- le auf!
  Ihr sollt das Heil dort fin -- den,
  das al -- ler Zei -- ten Lauf
  von An -- fang an ver -- kün -- det,
  seit eu -- re Schuld ge -- sch -- ah.
  Nun hat sich euch ver -- bün -- det,
  den Gott selbst aus -- er -- sah.
}

scoreCVerseB = \lyricmode {
  % Lyrics follow here.

}

scoreCVerseC = \lyricmode {
  % Lyrics follow here.

}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreCChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreCSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreCAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" {<<\scoreCVerseA \new Lyrics {\set associatedVoice = "soprano" \scoreCVerseB}>> \scoreCVerseC}
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreCTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreCBass }
  >>
>>

scoreCChordsPart = <<
  \new ChordNames \scoreCChordNames
  %   \scoreCChordNames
  %   \new FretBoards \scoreCChordNames
>>

scoreCBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreCFigBass

\bookpart {
  \header {
    subtitle = "Cantus firmus im Bass"
  }
  \score {
    <<
      \scoreCChoirPart
      \scoreCChordsPart
      \scoreCBassFiguresPart
    >>
    \layout { }
    \midi {
      \tempo 4=100
    }
  }
}

scoreDSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreDAlto = \relative c' {
  \global
  % Music follows here.

}

scoreDTenor = \relative c' {
  \global
  % Music follows here.

}

scoreDBass = \relative c {
  \global
  % Music follows here.

}

scoreDVerseA = \lyricmode {
  % Lyrics follow here.
  Noch man -- che Nacht wird fal -- len
  auf Men -- schen -- leid und -schuld.
  Doch wan -- dert nun mit al -- len
  der Stern der Got -- tes -- huld.
  Be -- glänzt von sei -- nem Lich -- te,
  hält euch kein Dun -- kel mehr,
  von Got -- tes An -- ge -- sich -- te
  kam euch die Ret -- tung her.
}

scoreDVerseB = \lyricmode {
  % Lyrics follow here.

}

scoreDVerseC = \lyricmode {
  % Lyrics follow here.

}

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreDFigBass = \figuremode {
  \global
  % Figures follow here.

}

scoreDChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Soprano" "Alto" }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreDSoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreDAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" {<<\scoreDVerseA \new Lyrics {\set associatedVoice = "soprano" \scoreDVerseB}>> \scoreDVerseC}
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreDTenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreDBass }
  >>
>>

scoreDChordsPart = <<
  \new ChordNames \scoreDChordNames
  %   \scoreDChordNames
  %   \new FretBoards \scoreDChordNames
>>

scoreDBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreDFigBass

\bookpart {
  \header {
    subtitle = "Cantus firmus im Alt"
  }
  \score {
    <<
      \scoreDChoirPart
      \scoreDChordsPart
      \scoreDBassFiguresPart
    >>
    \layout { }
    \midi {
      \tempo 4=100
    }
  }
}