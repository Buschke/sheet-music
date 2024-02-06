\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"
\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = "Ich steh' an deiner Krippe hier"
  subsubtitle = "Gotteslob Nr.  256"
  instrument = "Orgel"
  composer = "M: Johann Sebastian Bach 1653?"
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: Paul Gerhardt 1653"
  meter = ""
  piece = ""
  opus = "GL 256"
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

global = {
  \key a \minor
  \time 4/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e, 4 a b c a g4. f8 e4\breathe
    g c,4. b8 c4 d e2 4
  }
  g c g a g f4. g8 e4\breathe
  g c g a g f4. g8 e4\breathe
  e fs gs a8 c b a gs2 a4
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 { 
  \partial 4
  a
  c e e c b4. a8 a4\breathe
  b e,4.e8 e4 f a2 a4 
  }
  b
  e b c b a4. b8 a4\breathe
  b e b c b a4. b8 a4\breathe
  a a b c8 e e c b2 c4
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 { 
  \partial 4
  c,4
  e g a e e4. d8 c4\breathe
  e c4. g8 a4 d c2 c4
  }
  e
  a g e e d4. e8 c4\breathe
  e a e e e d4. e8 c4\breathe
  c d e e8 a gs e e2 e4
}

scoreABass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 { 
  \partial 4
  a4 a e a a e4. d8 a'4\breathe
  e a4. e8 a4 d a2 a4
  }
  e a e a e d4. e8 a4\breathe
  e a e a e d4. e8 a4\breathe
  a d, e a8 a e a e2 a4
}

scoreAVerseA = \lyricmode {
  % Lyrics follow here.
Ich steh' an dei -- ner Krip -- pe hier,
o Je -- su, du mein Le -- ben;
}

scoreAVerseB = \lyricmode {
  % Lyrics follow here.
ich kom -- me, bring' und schen -- ke dir,
was du mir hast ge -- ge -- ben.
}

scoreAVerseC = \lyricmode {
  % Lyrics follow here.
Nimm hin, es ist mein Geist und Sinn,
Herz, Seel' und Mut, nimm al -- les hin
und laß dir's wohl _ ge -- _ fal -- len.
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  \repeat volta 2 {
    \partial 4
    a4:min
    a:min e:min a:min a:min e4.:min f8:min a4:min\breathe
    e:min a4.:min e8:min a4:min d:min a2:min a4:min
  }
  e:min a:min e:min a:min e:min f4. e8:min a4:min\breathe
  e:min a:min e:min a:min e:min f4. e8:min a4:min\breathe
  a:min ds g:dimx a8:min a:min e a:min e2 a4:min
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
  \partial 4
  c,4
  e g a e e4. d8 c4\breathe
  e c4. g8 a4 d c2 c4
  }
  e
  a g e e d4. e8 c4\breathe
  e a e e e d4. e8 c4\breathe
  c d e e8 a gs e e2 e4
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 { 
  \partial 4
  a
  c e e c b4. a8 a4\breathe
  b e,4.e8 e4 f a2 a4 
  }
  b
  e b c b a4. b8 a4\breathe
  b e b c b a4. b8 a4\breathe
  a a b c8 e e c b2 c4

}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e, 4 a b c a g4. f8 e4 g c,4. b8 c4 d e2 4
  }
  g c g a g f4. g8 e4 g c g a g f4. g8 e4 e fs gs a8 c b a g2 a4
  \bar "|."
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 { 
  \partial 4
  a4 a e a a e4. d8 a'4\breathe
  e a4. e8 a4 d a2 a4
  }
  e a e a e d4. e8 a4\breathe
  e a e a e d4. e8 a4\breathe
  a d, e a8 a e a e2 a4
}

scoreBVerseA = \lyricmode {
  % Lyrics follow here.
Da ich noch nicht ge -- bo -- ren war,
da bist du mir ge -- bo -- ren
}

scoreBVerseB = \lyricmode {
  % Lyrics follow here.
und hast dich mir zu ei -- gen gar,
eh’ ich dich kannt’, er -- ko -- ren.
}

scoreBVerseC = \lyricmode {
  % Lyrics follow here.
Eh’ ich durch dei -- ne Hand ge -- macht,
da hast du schon bei dir be -- dacht,
wie du mein woll -- _ test _ wer -- den.
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
  \repeat volta 2 { 
  \partial 4
  a4 a e a a e4. d8 a'4\breathe
  e a4. e8 a4 d a2 a4
  }
  e a e a e d4. e8 a4\breathe
  e a e a e d4. e8 a4\breathe
  a d, e a8 a e a e2 a4
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 { 
  \partial 4
  a
  c e e c b4. a8 a4\breathe
  b e,4.e8 e4 f a2 a4 
  }
  b
  e b c b a4. b8 a4\breathe
  b e b c b a4. b8 a4\breathe
  a a b c8 e e c b2 c4
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 { 
  \partial 4
  c,4
  e g a e e4. d8 c4\breathe
  e c4. g8 a4 d c2 c4
  }
  e
  a g e e d4. e8 c4\breathe
  e a e e e d4. e8 c4\breathe
  c d e e8 a gs e e2 e4
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e, 4 a b c a g4. f8 e4 g c,4. b8 c4 d e2 4
  }
  g c g a g f4. g8 e4 g c g a g f4. g8 e4 e fs gs a8 c b a g2 a4
  \bar "|."
}

scoreCVerseA = \lyricmode {
  % Lyrics follow here.
Ich lag in tie -- fer To -- des -- nacht,
du wa -- rest mei -- ne Son -- ne,
}

scoreCVerseB = \lyricmode {
  % Lyrics follow here.
die Son -- ne, die mir zu -- ge -- bracht
Licht, Le -- ben, Freud’ und Won -- ne.
}

scoreCVerseC = \lyricmode {
  % Lyrics follow here.
O Son -- ne, die das wer -- te Licht
des Glau -- bens in mir zu -- ge -- richt’,
wie schön sind dei -- _ ne _ Strah -- len.
}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  e:min a:min gs:dim a:min f g4.d8:min c4 g c4. gs8:dim a4:min gs:dim a2:min a4:min
  g c g f:
}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.
  <5 3>4 <5 3>4 <6> <6> <6> <5 3>4. <6>8 <6>4 <5 3>4 <5 3>4. <6>8 <6>4 <6>4 <6>2 <6>4
  <5 3>4 <5 3>
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
  \partial 4
  a
  c e e c b4. a8 a4\breathe
  b e,4.e8 e4 f a2 a4 
  }
  b
  e b c b a4. b8 a4\breathe
  b e b c b a4. b8 a4\breathe
  a a b c8 e e c b2 c4
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
    \partial 4
    e 4 a b c a g4. f8 e4 g c,4. b8 c4 d e2 4
  }
  g c g a g f4. g8 e4 g c g a g f4. g8 e4 e fs gs a8 c b a g2 a4
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 { 
  \partial 4
  c,4
  e g a e e4. d8 c4\breathe
  e c4. g8 a4 d c2 c4
  }
  e
  a g e e d4. e8 c4\breathe
  e a e e e d4. e8 c4\breathe
  c d e e8 a gs e e2 e4
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  \repeat volta 2 { 
  \partial 4
  a4 a e a a e4. d8 a'4\breathe
  e a4. e8 a4 d a2 a4
  }
  e a e a e d4. e8 a4\breathe
  e a e a e d4. e8 a4\breathe
  a d, e a8 a e a e2 a4
}

scoreDVerseA = \lyricmode {
  % Lyrics follow here.
Ich se -- he dich mit Freu -- den an
und kann mich nicht satt se -- hen;
}

scoreDVerseB = \lyricmode {
  % Lyrics follow here.
und weil ich nun nichts wei -- ter kann,
bleib’ ich an -- be -- tend ste -- hen.
}

scoreDVerseC = \lyricmode {
  % Lyrics follow here.
O daß mein Sinn ein Ab -- grund wär’
und mei -- ne Seel’ ein wei -- tes Meer,
daß ich dich möch -- _ te _ fas -- sen.
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