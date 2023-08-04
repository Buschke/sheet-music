\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = "A. L., für die Begleitung hin zum C-Schein"
  title = ""
  subsubtitle = "Gotteslob Nr. "
  instrument = "Orgel"
  composer = "M: "
  arranger = \markup { "Satz: " \with-url #"https://buschke.com" "Sven Buschke" }
  poet = "T: "
  meter = ""
  piece = ""
  opus = "GL / EG "
  copyright = \markup { "© Satz: 21.07.2023" \with-url #"mailto:sven@buschke.com" "Sven Buschke" }
  tagline = ""
}

global = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4=50
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  c4 d e f g a b c c b a g f e d c
  \bar "||"
  c e g b d, f a c c a f d b' g e c
  \bar "||"
  c f b e, a d, g c c g d a' e b' f c
  \bar "||"
  c g' d a' e b' f c' c f, b e, a d, g c,
  \bar "||"
  c a' f d b' g e c' c e, g b d, f a c,
  \bar "||"
  c b' a g f e d c c d e f g a b c
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  e g g a c c d e
  e d c c a g g e
  e g b d g, a c e
  e c a g d' c g e
  e a d g, c g b e
  e b g c g d' a e
  e b' g c g d' a e'
  e a, d g, c g b e,
  e c' a g d' b g e'
  e g, b d g, a c e,
  e d' c c a g g e
  e g g a c c d e
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  g b c c e f f g
  g g f e c c b g
  g c d g b, c f g
  g f c b g' e c g
  g c g' c, f b, d g
  g d b f' c g' c, g
  g d b' f' c g' c, g'
  g c, g' c, f b, d g,
  g f' c b g' d c g'
  g c, d g b, c f g,
  g g' f e c c b g
  g b c c e f f g
}

scoreABass = \relative c {
  \global
  % Music follows here.
  c g c f c f d c
  c g f' c f c g c
  c c g g g f' f c
  c f f g, g c c c c f g, c f g, g c c g g f' c g f' c
  c g g f' c g f c' c f g, c f g, g c
  c f f g, g g c c c c g g g f' f c c g f' c f c g c c g c f c f d c
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
  do re mi fa sol la si do
  do si la sol fa mi re do
  do mi sol si re fa la do
  do la fa re si sol mi do
  do fa si mi la re sol do
  do sol re la mi si fa do
  do sol re la mi si fa do
  do fa si mi la re sol do
  do la fa re si sol mi do
  do mi sol si re fa la do
  do si la sol fa mi re do
  do re mi fa sol la si do
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c g c f c f b:dim/d c
  c g f c f c g c
  c c g g g f f c
  c f f g g c c c
  c f g c f g g c c g g f c g f c
  c g g f c g f c c f g c f g g c
  c f f g g g c c c c g g g f f c
  c g f c f c g c c g c f c f b:dim/d c
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
  e, g g a c c d e
  e d c c a g g e
  e g b d g, a c e
  e c a g d' c g e
  e a d g, c g b e
  e b g c g d' a e
  e b' g c g d' a e'
  e a, d g, c g b e,
  e c' a g d' b g e'
  e g, b d g, a c e,
  e d' c c a g g e
  e g g a c c d e
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  g b c c e f f g
  g g f e c c b g
  g c d g b, c f g
  g f c b g' e c g
  g c g' c, f b, d g
  g d b f' c g' c, g
  g d b' f' c g' c, g'
  g c, g' c, f b, d g,
  g f' c b g' d c g'
  g c, d g b, c f g,
  g g' f e c c b g
  g b c c e f f g
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  c,4 d e f g a b c c b a g f e d c
  \bar "||"
  c e g b d, f a c c a f d b' g e c
  \bar "||"
  c f b e, a d, g c c g d a' e b' f c
  \bar "||"
  c g' d a' e b' f c' c f, b e, a d, g c,
  \bar "||"
  c a' f d b' g e c' c e, g b d, f a c,
  \bar "||"
  c b' a g f e d c c d e f g a b c
  \bar "|."
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  c g c f c f d c
  c g f' c f c g c
  c c g g g f' f c
  c f f g, g c c c c f g, c f g, g c c g g f' c g f' c
  c g g f' c g f c' c f g, c f g, g c
  c f f g, g g c c c c g g g f' f c c g f' c f c g c c g c f c f d c
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.
  do re mi fa sol la si do
  do si la sol fa mi re do
  do mi sol si re fa la do
  do la fa re si sol mi do
  do fa si mi la re sol do
  do sol re la mi si fa do
  do sol re la mi si fa do
  do fa si mi la re sol do
  do la fa re si sol mi do
  do mi sol si re fa la do
  do si la sol fa mi re do
  do re mi fa sol la si do
}

scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c g c f c f b:dim/d c
  c g f c f c g c
  c c g g g f f c
  c f f g g c c c
  c f g c f g g c c g g f c g f c
  c g g f c g f c c f g c f g g c
  c f f g g g c c c c g g g f f c
  c g f c f c g c c g c f c f b:dim/d c
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
  % Sekundintervall
  % Grundstellung
  e^"Grundstellung Sekunde" d b a g e d c c d e g a b d e
  % Sextakkord
  a,^"Sextakkord" b c d e f g a a g f e d c b a
  % Quartsextakkord
  f^"Quartsextakkord" g a b c d e f f e d c b a g f
  % Terzintervall
  % Grundstellung
  e^"Grundstellung Terz" g b d g, a c e e c a g d' c g e
  % Sextakkord
  e,^"Sextakkord" g b d g, a c e e c a g d' c g e
  % Quartsextakkord
  e^"Quartsextakkord" g b d g, a c e e c a g d' c g e
  % weitere Intervalle
  e a d g, c g b e
  e b g c g d' a e
  e b' g c g d' a e'
  e a, d g, c g b e,
  e c' a g d' b g e'
  e g, b d g, a c e,
  e d' c c a g g e
  e g g a c c d e
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  g' f e c b a f e e f a b c e f g
  % Sextakkord
  e f g a b c d e e d c b a g f e
  % Quartsextakkord
  a, b c d e f g a a g f e d c b a
  % weitere Intervalle
  g c d g b, c f g
  g f c b g' e c g
  g c g' c, f b, d g
  g d b f' c g' c, g
  g d b' f' c g' c, g'
  g c, g' c, f b, d g,
  g f' c b g' d c g'
  g c, d g b, c f g,
  g g' f e c c b g
  g b c c e f f g
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  c a g f d c b g g b c d f g a c
  % Sextakkord
  a b c d e f g a a g f e d c b a
  % Quartsextakkord
  f d a' f c' a e' c c e a, c f, a d, f
  % weitere Intervalle
  c c g g g f' f c
  c f f g, g c c c c f g, c f g, g c c g g f' c g f' c
  c g g f' c g f c' c f g, c f g, g c
  c f f g, g g c c c c g g g f' f c c g f' c f c g c c g c f c f d c
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  % Sekundintervall
  % Grundstellung
  c,4 d e f g a b c c b a g f e d c
  \bar "||"
  % Sextakkord
  c4 d e f g a b c c b a g f e d c
  \bar "||"
  % Quartsextakkord
  c4 d e f g a b c c b a g f e d c
  \bar "||"
  % Terzintervall
  % Grundstellung
  c e g b d, f a c c a f d b' g e c
  \bar "||"
  % Sextakkord
  c e g b d, f a c c a f d b' g e c
  \bar "||"
  % Quartsextakkord
  c e g b d, f a c c a f d b' g e c
  \bar "||"
  % weitere Intervalle
  c f b e, a d, g c c g d a' e b' f c
  \bar "||"
  c g' d a' e b' f c' c f, b e, a d, g c,
  \bar "||"
  c a' f d b' g e c' c e, g b d, f a c,
  \bar "||"
  c b' a g f e d c c d e f g a b c
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.
  % Sekundintervall
  % Grundstellung
  do re mi fa sol la si do do si la sol fa mi re do
  % Sextakkord
  do re mi fa sol la si do do si la sol fa mi re do
  % Quartsextakkord
  do re mi fa sol la si do do si la sol fa mi re do
  % Sekundintervall
  % Grundstellung
  do re mi fa sol la si do do si la sol fa mi re do
  % Sextakkord
  do re mi fa sol la si do do si la sol fa mi re do
  % Quartsextakkord
  do re mi fa sol la si do do si la sol fa mi re do
  % weitere Intervalle
  do si la sol fa mi re do
  do mi sol si re fa la do
  do la fa re si sol mi do
  do fa si mi la re sol do
  do sol re la mi si fa do
  do sol re la mi si fa do
  do fa si mi la re sol do
  do la fa re si sol mi do
  do mi sol si re fa la do
  do si la sol fa mi re do
  do re mi fa sol la si do
}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  % Sekundintervall
  % Grundstellung
  c d:m e:m f g a:m b:dim c c b:dim a:m g f e:m d:m c
  % Sextakkord
  a:m/c b:dim/d c/e d:m/f e:m/g f/a g/b c c g/b f/a e:m/g d:m/f c/e b:dim/d a:m/c
  % Quartsextakkord
  f/c g/d a:m/e b:dim/f c/g d:m/a e:m/b f/c f/c e:m/b d:m/a c/g b:dim/f a:m/e g/d f/c
  % Terzintervall
  % Grundstellung
%  c c g g g f f c
  c d:m e:m f g a:m b:dim c c b:dim a:m g f e:m d:m c
  % Sextakkord
  a:m/c b:dim/d c/e d:m/f e:m/g f/a g/b c c g/b f/a e:m/g d:m/f c/e b:dim/d a:m/c
  % Quartsextakkord
  f/c g/d a:m/e b:dim/f c/g d:m/a e:m/b f/c f/c e:m/b d:m/a c/g b:dim/f a:m/e g/d f/c
  % weitere Intervalle
  c f g c f g g c c g g f c g f c
  c g g f c g f c c f g c f g g c
  c f f g g g c c c c g g g f f c
  c g f c f c g c c g c f c f b:dim/d c
}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.
  % Sekundintervall
  % Grundstellung
  % Sextakkord
  % Quartsextakkord
  % weitere Intervalle
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
  g b c c e f f g
  g g f e c c b g
  g c d g b, c f g
  g f c b g' e c g
  g c g' c, f b, d g
  g d b f' c g' c, g
  g d b' f' c g' c, g'
  g c, g' c, f b, d g,
  g f' c b g' d c g'
  g c, d g b, c f g,
  g g' f e c c b g
  g b c c e f f g
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  c4 d e f g a b c c b a g f e d c
  \bar "||"
  c e g b d, f a c c a f d b' g e c
  \bar "||"
  c f b e, a d, g c c g d a' e b' f c
  \bar "||"
  c g' d a' e b' f c' c f, b e, a d, g c,
  \bar "||"
  c a' f d b' g e c' c e, g b d, f a c,
  \bar "||"
  c b' a g f e d c c d e f g a b c
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  e, g g a c c d e
  e d c c a g g e
  e g b d g, a c e
  e c a g d' c g e
  e a d g, c g b e
  e b g c g d' a e
  e b' g c g d' a e'
  e a, d g, c g b e,
  e c' a g d' b g e'
  e g, b d g, a c e,
  e d' c c a g g e
  e g g a c c d e
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  c g c f c f d c
  c g f' c f c g c
  c c g g g f' f c
  c f f g, g c c c c f g, c f g, g c c g g f' c g f' c
  c g g f' c g f c' c f g, c f g, g c
  c f f g, g g c c c c g g g f' f c c g f' c f c g c c g c f c f d c
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.
  do re mi fa sol la si do
  do si la sol fa mi re do
  do mi sol si re fa la do
  do la fa re si sol mi do
  do fa si mi la re sol do
  do sol re la mi si fa do
  do sol re la mi si fa do
  do fa si mi la re sol do
  do la fa re si sol mi do
  do mi sol si re fa la do
  do si la sol fa mi re do
  do re mi fa sol la si do
}

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c g c f c f b:dim/d c
  c g f c f c g c
  c c g g g f f c
  c f f g g c c c
  c f g c f g g c c g g f c g f c
  c g g f c g f c c f g c f g g c
  c f f g g g c c c c g g g f f c
  c g f c f c g c c g c f c f b:dim/d c
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