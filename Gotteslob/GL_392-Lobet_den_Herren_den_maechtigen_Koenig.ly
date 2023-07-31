\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "Meinem Lehrer Andreas Lang gewidment, für die Begleitung hin zum C-Schein"
  title = "Lobe den Herren, den mächtigen König der Ehren"
  subsubtitle = "Gotteslob Nr. 392"
  instrument = "Orgel"
  composer = "M: Stralsund 1665"
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: Joachim Neander 1680"
  meter = ""
  piece = ""
  opus = "GL 392"
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

global = {
  \key f \major
  \time 9/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 2.
    f4 f c' a4. g8 f4 e d c d e f g2. f
  }
  c'4 c c d2. a4 bf c c4. bf8 a4 g2.\breathe
  c,4 d e f g a g2. f
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 2. a4 a f' c4. c8 a4 g f f f g a c2. a }
  f'4 f f f2. c4 d f f4. d8 c4 c2. f,4 f g a c c c2. a
}

scoreATenor = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {\partial 2. c4 c a' f4. e8 c4 c bf a bf c c e2. c }
  a'4 a a bf2. f4 f a a4. f8 f4 e2.
  c4 bf bf c e f e2. c
}

scoreABass = \relative c, {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 2.
    f4 f f f4. c8 f4 c bf f' bf c, f c2. f
  }
  f4 f f bf2. f4 bf f f4. bf8 f4 c2.\breathe
  f4 bf g f c f c2. f
}

scoreAVerseA = \lyricmode {
  % Lyrics follow here.
  Lo -- be den Her -- ren, den mäch -- ti -- gen Kö -- nig der Eh -- ren,
}

scoreAVerseB = \lyricmode {
  % Lyrics follow here.
  lob ihn, o See -- le, ver -- eint mit den himm -- li -- schen Chö -- ren.
}

scoreAVerseC = \lyricmode {
  % Lyrics follow here.
  Kom -- met zu -- hauf,
  Psal -- ter und Har -- fe, wacht auf,
  las -- set den Lob -- ge -- sang hö -- ren!
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    \partial 2.
    f4 f f f4. c8 f4 c bf f bf c f c2. f
  }
  f4 f f bf2. f4 bf f f4. bf8 f4 c2.
  f4 bf e:dim/g f c f c2. f
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
  \repeat volta 2 {
    \partial 2.
    a4 a f' c4. c8 a4 g f f f g a c2. a
  }
  f'4 f f  f2. c4 d f f4. d8 c4 c2.\breathe
  f,4 f g a c c c2. a
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 2.
    c4 c a' f4. e8 c4 c bf a bf c c e2. c
  }
  a'4 a a bf2. f4 f a a4. f8 f4 e2.
  a,4 bf bf c e f e2. c
}

scoreBTenor = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 2.
    f4 f c' a4. g8 f4 e d c d e f g2. f
  }
  c'4 c c d2. a4 bf c c4. bf8 a4 g2.\breathe
  c,4 d e f g a g2. f
  \bar "|."
}

scoreBBass = \relative c, {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 2.
    f4 f f f4. c8 f4 c bf f' bf c, f c2. f
  }
  f4 f f bf2. f4 bf f f4. bf8 f4 c2.
  f4 bf g f c f c2. f
}

scoreBVerseA = \lyricmode {
  % Lyrics follow here.
  Lo -- be den Her -- ren, der al -- les so herr -- lich re -- gie -- ret,
}

scoreBVerseB = \lyricmode {
  % Lyrics follow here.
  der dich auf Ade -- lers Fit -- ti -- chen si -- cher ge -- füh -- ret,
}

scoreBVerseC = \lyricmode {
  % Lyrics follow here.
  der dich er -- hält,
  wie es dir sel -- ber ge -- fällt;
  hast du nicht die -- ses ver -- spü -- ret?
}

scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    \partial 2.
    f4 f f f4. c8 f4 c bf f bf c f c2. f
  }
  f4 f f bf2. f4 bf f f4. bf8 f4 c2.
  f4 bf e:dim/g f c f c2. f
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
  \repeat volta 2 {
    \partial 2.
    a4 a c f,4. bf8 a4 c f c bf c c e2. f
  }
  e4 e e bf2. f4 bf g g4. bf8 f4 g2.\breathe
  e4 bf c f g f g2. a
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 2.
    c4 c e c4. e8 c4 e f e f g f g2. a
  }
  g4 g g f2. c4 d c c4. d8 c4 bf2.
  g4 d g a bf a bf2. c
}

scoreCTenor = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 2.
    f4 f g f4. g8 f4 c bf g' bf c c bf2. c
  }
  c4 c c bf2. f4 f e e4. f8 f4 d2.
  c4 bf c c e f e2. f
}

scoreCBass = \relative c, {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 2.
    f4 f c' a4. g8 f4 e d c d e f g2. f
  }
  c'4 c c d2. a4 bf c c4. bf8 a4 g2.\breathe
  c,4 d e f g a g2. f
  \bar "|."
}

scoreCVerseA = \lyricmode {
  % Lyrics follow here.
  Lo -- be den Her -- ren, der künst -- lich und fein dich be -- rei -- tet,
}

scoreCVerseB = \lyricmode {
  % Lyrics follow here.
  der dir Ge -- sund -- heit ver -- lie -- hen, dich freund -- lich ge -- lei -- tet.
}

scoreCVerseC = \lyricmode {
  % Lyrics follow here.
  In wie -- viel Not
  hat nicht der gnä -- di -- ge Gott
  über dir Flü -- gel ge -- brei -- tet!
}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    \partial 2.
    f4 f c f4./a e8:dim/g f4 c/e bf/d c bf/d c/e f e2.:dim/g f
  }
  c4 c c bf2./d f4/a bf c c4. bf8 f4/a g2.:m
  c4 bf/d c/e f e:dim/g f/a e2.:dim/g f
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
  \repeat volta 2 {
    \partial 2.
    c4 c a' f4. e8 c4 c bf a bf c c e2. c
  }
  a'4 a a bf2. f4 f a a4. f8 f4 e2.
  a,4 f c' c e f e2. c
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 2.
    f4 f c' a4. g8 f4 e d c d e f g2. f
  }
  c'4 c c d2. a4 bf c c4. bf8 a4 g2.\breathe
  c,4 d e f g a g2. f
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 2.
    a4 a  f' c4. c8 a4 g f f f g a c2. a
  }
  f'4 f f f2. c4 d f f4. d8 c4 c2.
  f,4 bf g a c c c2. a
}

scoreDBass = \relative c, {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 2.
    f4 f f f4. c8 f4 c bf f' bf c, f c2. f
  }
  f4 f f bf2. f4 bf f f4. bf8 f4 c2.\breathe
  f4 bf c f c f c2. f
}

scoreDVerseA = \lyricmode {
  % Lyrics follow here.
  Lo -- be den Her -- ren, der sicht -- bar dein Le -- ben ge -- seg -- net,
}

scoreDVerseB = \lyricmode {
  % Lyrics follow here.
  der aus dem Him -- mel mit Strö -- men der Lie -- be ge -- reg -- net.
}

scoreDVerseC = \lyricmode {
  % Lyrics follow here.
  Den -- ke dar -- an,
  was der All -- mäch -- ti -- ge kann,
  der dir mit Lie -- be be -- geg -- net.
}

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    \partial 2.
    f4 f f f4. c8 f4 c bf f bf c f c2. f
  }
  f4 f f bf2. f4 bf f f4. bf8 f4 c2.
  f4 bf c f c f c2. f
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