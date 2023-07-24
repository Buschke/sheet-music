\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "Meinem Lehrer Andreas Lang gewidment, für die Begleitung hin zum C-Schein"
  title = ""
  subsubtitle = "Gotteslob Nr. "
  instrument = "Orgel"
  composer = "M: "
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: "
  meter = ""
  piece = ""
  opus = "GL "
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

global = {
  \key bf \major
  \time 2/2
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  f,2 bf4 a g2 f  d4 ef f f ef2 d\breathe
  f g4 a bf2 g a4 bf c f, g2 f\breathe
  d c4 bf f'2f g4 bf a g g(fs) g\breathe
  f2 ef4 d c2 bf
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  bf2
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  d2,
}

scoreABass = \relative c' {
  \global
  % Music follows here.
  bf,2 bf4 d, ef2 bf' bf4 ef, bf' bf ef2, bf'
  bf ef4, c bf2 ef c4 bf f bf ef2 bf
  bf f4 bf bf2 bf ef4 bf d ef g(a)g
  bf2 ef4 bf f2 bf
  
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  Lo -- bet den Her -- ren al -- le, die ihn eh -- ren;
laßt uns mit Freu -- den sei -- nem Na -- men sin -- gen
und Preis und Dank zu sei -- nem Al -- tar brin -- gen.
Lo -- bet den Her -- ren!

}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  bf2 bf4 d:m ef2 bf bf4 ef bf bf ef2 bf
  bf ef4 a:dim/c bf2 ef a4:dim/c bf f bf ef2 bf
  bf f4 bf bf2 bf ef4 bf d:m ef g(fs:dim/a)g
  bf2 ef4 bf f2 bf
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
  } \lyricsto "soprano" \scoreAVerse
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
  f,2 bf4 a g2 f  d4 ef f f ef2 d\breathe
  f g4 a bf2 g a4 bf c f, g2 f\breathe
  d c4 bf f'2f g4 bf a g g(fs) g\breathe
  f2 ef4 d c2 bf
  \bar "|."
  
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  
Der unser Leben, das er uns gegeben,
in dieser Nacht so väterlich bedecket
und aus dem Schlaf uns fröhlich auferwecket:
Lobet den Herren!

Daß unsre Sinnen wir noch brauchen können
und Händ und Füße, Zung und Lippen regen,
das haben wir zu danken seinem Segen.
Lobet den Herren!

Daß Feuerflammen uns nicht allzusammen
mit unsern Häusern unversehns gefressen,
das macht’s, daß wir in seinem Schoß gesessen.
Lobet den Herren!

Daß Dieb und Räuber unser Gut und Leiber
nicht angetast’ und grausamlich verletzet,
dawider hat sein Engel sich gesetzet.
Lobet den Herren!

O treuer Hüter, Brunnen aller Güter,
ach laß doch ferner über unser Leben
bei Tag und Nacht dein Huld und Güte schweben.
Lobet den Herren!
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
  } \lyricsto "soprano" \scoreBVerse
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
  f,2 bf4 a g2 f  d4 ef f f ef2 d\breathe
  f g4 a bf2 g a4 bf c f, g2 f\breathe
  d c4 bf f'2f g4 bf a g g(fs) g\breathe
  f2 ef4 d c2 bf
  \bar "|."
  
}

scoreCVerse = \lyricmode {
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
  } \lyricsto "soprano" \scoreCVerse
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
  f,2 bf4 a g2 f  d4 ef f f ef2 d\breathe
  f g4 a bf2 g a4 bf c f, g2 f\breathe
  d c4 bf f'2f g4 bf a g g(fs) g\breathe
  f2 ef4 d c2 bf
  \bar "|."
  
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  
}

scoreDVerse = \lyricmode {
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
  } \lyricsto "soprano" \scoreDVerse
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