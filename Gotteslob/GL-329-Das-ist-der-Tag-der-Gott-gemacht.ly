\version "2.24.1"
\language "english"

\include "predefined-guitar-fretboards.ly"

\header {
  dedication = ""
  title = "Das ist der Tag, der Gott gemacht"
  subtitle = "Cantus Firmus: Sopran"
  subsubtitle = "Gotteslob 329"
  instrument = "Orgel"
  composer = "M: nach Johann Leisentrit 1567"
  arranger = "Satz:  https:buschke.com Sven Buschke"
  poet = "T: nach Heinrich Bone 1847/ EGB 1975"
  meter = ""
  piece = ""
  opus = "GL 329"
  copyright = "© 29.04.2023  https:buschke.com Sven Buschke"
  tagline = ""
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
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%
%%%% CF Soprano
%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  c4 b a g e a a g~g r
  g c g a g f8(e) d4 c2 r4
  c g' g f d e8(d) e(f) g4~g r
  c b a g a c b c2.
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  e4 d e e c e d b~b r4
  d e d c c c8(c) b4 g2 r4
  a d c c b b8(b) c(c) c4~c r4
  e d e e f e d e2.
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  g4 g c b g c, d d~d r4
  g g g e e a8(g) g4 e2 r4
  e g e a g g8(e)g(a) e4~e r
  g g c c c g g g2.
}

scoreABass = \relative c {
  \global
  % Music follows here.
  c4 g a e c' a fs g~g r4
  b c b a c a8(c) g4 c2 r4
  a b  c f, g e8(g) c(f,) c'4~c r
  c g a c f, c' g c2.
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
Das ist der Tag, den Gott ge -- macht,
der Freud in al -- le Welt ge -- bracht.
Es freut sich, was sich freu -- en kann,
denn Wun -- der hat der Herr ge -- tan.
}

scoreAFigBass = \figuremode {
  \global
  % Figures follow here.
  s4 s s s s s s s s s
  <6> s s s s s8 s s4 s2 s4
  s s s s s s8 s s s s4 s s
  s s s s s s s2.
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c4 g f e:m c a:m d g2 s4
  g c g a:m g f8(e:m) g4 c2 s4
  c g e:m f d e8:m b:dim c f c2 s4
  c g a:m c f c g c2.
}

scoreAChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
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
    shortInstrumentName = \markup \center-column { "T." "B." }
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

scoreABassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreAFigBass

scoreAChordsPart = <<
  <<\new ChordNames {\scoreAChordNames}{\scoreAChordNames}>>
%  \new FretBoards \scoreAChordNames
>>

\bookpart {
  \score {
    <<
      \scoreAChoirPart
      \scoreABassFiguresPart
      \scoreAChordsPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%
%%%% CF Tenor
%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

scoreBSoprano = \relative c'' {
  \global
  % Music follows here.
  g4 g c b g e fs g~g r4
  g g g e e a8(g) g4 e2 r4
  e g b a g g8(d)g(a) e4~e r
  g g c e, c' c g g2.
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  e4 d e e c c d d~d r4
  d e d c c c8(c) b4 g2 r4
  g d' e c b b8(b) c(c) c4~c r4
  e d f c f g d e2.
}

scoreBTenor = \relative c' {
  \global
  % Music follows here.
  c4 b a g e a a g~g r
  g c g a g f8(e) d4 c2 r4
  c g' g f d e8(d) e(f) g4~g r
  c b a g a c b c2.
  \bar "|."
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  c4 g a e c' a d b~b r4
  b c b a c a8(c) g4 c,2 r4
  c b'  e f, g e8(g) c(f,) c'4~c r
  c g f c' f e g c,2.
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.

}

scoreBFigBass = \figuremode {
  \global
  % Figures follow here.
  s4 s s s s s s s s s
  <6> s s s s s8 s s4 s2 s4
  s s s s s s8 s s s s4 s s
  s s s s s s s2.
}

scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c4 g f e:m c a:m d g2 s4
  g c g a:m g f8(e:m) g4 c2 s4
  c g e:m f d e8:m b c f c2 s4
  c g a:m c f c g c2.
}

scoreBChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
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
  } \lyricsto "soprano" \scoreAVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
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

scoreBBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreBFigBass

scoreBChordsPart = <<
  <<\new ChordNames {\scoreBChordNames}{\scoreBChordNames}>>
%  \new FretBoards \scoreBChordNames
>>

\bookpart {
\header{
    subtitle = "Cantus Firmus: Tenor"
}
  \score {
    <<
      \scoreBChoirPart
      \scoreBBassFiguresPart
      \scoreBChordsPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%
%%%% CF Bass
%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

scoreCSoprano = \relative c'' {
  \global
  % Music follows here.
  c4 g a g c a a b~b r4
  b c b a c a8(c) g4 g2 r4
  c b  e f, g e8(g) c(f,) g4~g r
  c g a b a e g c2.
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  e4 d e e g e fs g~g r4
  d e d c c c8(c) b4 c2 r4
  e d e c b c8(b) c(c) d4~d r4
  e d e e e c d e2.
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  g4 g c, b c c c d~d r4
  g g g e e a8(g) g4 e2 r4
  g g b a g g8(e)g(a) b4~b r
  g g c e, c g' g g2.
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  c4 b a g e a a g~g r
  g c g a g f8(e) d4 c2 r4
  c g' g f d e8(d) e(f) g4~g r
  c b a g a c b c2.
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.

}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.
  s4 s s s s s s s s s
  <6> s s s s s8 s s4 s2 s4
  s s s s s s8 s s s s4 s s
  s s s s s s s2.
}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c4 g f e:m c a:m d g2 s4
  g c g a:m g f8(e:m) g4 c2 s4
  c g e:m f d e8:m b c f c2 s4
  c g a:m c f c g c2.
}

scoreCChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
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
  } \lyricsto "soprano" \scoreAVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
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

scoreCBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreCFigBass

scoreCChordsPart = <<
  <<\new ChordNames {\scoreCChordNames}{\scoreCChordNames}>>
%  \new FretBoards \scoreCChordNames
>>

\bookpart {
\header{
    subtitle = "Cantus Firmus: Bass"
}
  \score {
    <<
      \scoreCChoirPart
      \scoreCBassFiguresPart
      \scoreCChordsPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%
%%%% CF Altus
%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

scoreDSoprano = \relative c'' {
  \global
  % Music follows here.
  e4 d e e c c c d~d r4
  d e d c c c8(c) b4 g2 r4
  e' d e c b b8(b) c(c) c4~c r4
  e d f c f e d e2.
}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  c'4 b a g e a a g~g r
  g c g a g f8(e) d4 c2 r4
  c g' g f d e8(d) e(f) g4~g r
  c b a g a c b c2.
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.
  g4 g c b g e fs g~g r4
  g g g e e a8(g) g4 e2 r4
  g g b a g g8(e)g(a) e4~e r
  g g c e, c g' g g2.
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  c4 g a e c' a d b~b r4
  b c b a c a8(c) g4 c2 r4
  c b  e f, g e8(g) c(f,) c'4~c r
  c g f c' f, c' g c2.
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.

}

scoreDFigBass = \figuremode {
  \global
  % Figures follow here.
  s4 s s s s s s s s s
  <6> s s s s s8 s s4 s2 s4
  s s s s s s8 s s s s4 s s
  s s s s s s s2.
}

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c4 g f e:m c a:m d g2 s4
  g c g a:m g f8(e:m) g4 c2 s4
  c g e:m f d e8:m b c f c2 s4
  c g a:m c f c g c2.
}

scoreDChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
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
  } \lyricsto "soprano" \scoreAVerse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
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

scoreDBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreDFigBass

scoreDChordsPart = <<
  <<\new ChordNames {\scoreDChordNames}{\scoreDChordNames}>>
%  \new FretBoards \scoreDChordNames
>>

\bookpart {
\header{
    subtitle = "Cantus Firmus: Altus"
}
  \score {
    <<
      \scoreDChoirPart
      \scoreDBassFiguresPart
      \scoreDChordsPart
    >>
    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%
%%%% Dux Comes
%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

scoreESoprano = \relative c'' {
  \global
  % Music follows here.
  c4^"C.F. Dux" b a g e a a g~g r2.
  g4^"Bicinium" g c b g c c b~b r2.
  c4 g a e c' a d b~b r2.
  c4^"C.F. Dux Pachebel" b a g e a a g~g r4
  \breathe
  g4^"C.F. Dux" c g a g f8(e) d4 c2 r4 r2
  e4^"Bicinium" d f g f g8(g) fs4 g2 r4 r2
  b4 c b a c a8(c) g4 c2 r4 r2
  g4^"C.F. Dux Pachebel" c g a g f8(e) d4 c2 r4
  \breathe
  c4 g' g f d e8(d) e(f) g4~g r r2
  g4^"Bicinium" e e e fs g8(fs)g(a) b4~b r r2
  g4 b c c b b8(b) c(c) b4~b r4 r2
  c,4^"C.F. Dux Pachebel" g' g f d e8(d) e(f) g4~g r
  \breathe
  c4^"C.F. Dux" b a g a c b c2.
  r2 d4^"Bicinium" d g b, g d' d c2.
  r2 e4 d f c f c d e2.
  r2 c4^"C.F. Dux Pachebel" b a g a c b c2.
  \bar "|."
}

scoreEAlto = \relative c' {
  \global
  % Music follows here.
  s4 s s s s s s s s s2.
  s4 s s s s s s s s s2.
  s4 s s s s s s s s s2.
  e4 d e e c c c d~d r4
  \breathe
  s s s s s s8(s) s4 s2 s4 s2
  s4 s s s s s8(s) s4 s2 s4 s2
  s4 s s s s s8(s) s4 s2 s4 s2
  d4 e d c c c8(c) b4 g2 r4
  \breathe
  s4 s s s s s8 s s s s4 s s s2
  s4 s s s s s8 s s s s4 s s s2
  s4 s s s s s8 s s s s4 s s s2
  g4 d' e c b b8(b) c(c) c4~c r4
  \breathe
  s4 s s s s s s s2.
  s2 s4 s s s s s s s2.
  s2 s4 s s s s s s s2.
  r2 e4 d f c f c d e2.
  \bar "|."
}

scoreETenor = \relative c' {
  \global
  % Music follows here.
  s4 s s s s s s s s s2.
  g4^"C.F. Comes" fs e d b e e d~d r2.
  g4 g c b g e fs g~g r2.
  g4 g c b g e fs g~g r4
  \breathe
  s s s s s s8(s) s4 s2 s4
  r2 c,4^"C.F. Comes" g' c, e d c8(b) a4 g2 r4
  r2 g'4 g g e e a8(g) g4 e2 r4
  r2 g4 g g e e a8(g) g4 e2 r4
  \breathe
  s4 s s s s s8 s s s s4 s s s2
  g4^"C.F. Comes" c c c a b8(a) b(c) d4~d r r2
  e,4 g e a g g8(e)g(a) d4~d r r2
  e,4 g b a g g8(e)g(a) e4~e r
  \breathe
  s4 s s s s s s s2.
  r2 g4^"C.F. Comes" fs e d e g fs g2. r2
  g4 g c e, c g' g g2. r2
  g4 g c e, c g' g g2.
  \bar "|."
}

scoreEBass = \relative c {
  \global
  % Music follows here.
  s4 s s s s s s s s s2.
  s4 s s s s s s s s s2.
  c4_"C.F. Dux" b a g e a a g~g r2.
  c4 g a e c' a d b~b r4
  \breathe
  s s s s s s8(s) s4 s2 s4 s2
  s4 s s s s s8(s) s4 s2 s4
  r2 g4_"C.F. Dux" c g a g f8(e) d4 c2 r4
  r2 b'4 c b a c a8(c) g4 c2 r4
  \breathe
  s4 s s s s s8 s s s s4 s s s2
  s4 s s s s s8 s s s s4 s s s2
  c,4_"C.F. Dux" g' g f d e8(d) e(f) g4~g r r2
  c4 b e f g, e8(g) c(f,) c'4~c r
  \breathe
  s4 s s s s s s s2.
  s2 s4 s s s s s s s2.
  r2 c4_"C.F. Dux" b a g a c b c2. r2
  c4 g f c' f, c' g c2.
  \bar "|."
}

scoreEVerseA = \lyricmode {
  % Lyrics follow here.
Das ist der Tag, den Gott ge -- macht,
}

scoreEVerseB = \lyricmode {
  % Lyrics follow here.
der Freud in al -- le Welt ge -- bracht.
}

scoreEVerseC = \lyricmode {
  % Lyrics follow here.
Es freut sich, was sich freu -- en kann,
}

scoreEVerseD = \lyricmode {
  % Lyrics follow here.
denn Wun -- der hat der Herr ge -- tan.
}

scoreEFigBass = \figuremode {
  \global
  % Figures follow here.
  s4 s s s s s s s s s
  s4 s s s s s s s s s
  s4 s s s s s s s s s
  s4 s s s s s s s s s
  <6> s s s s s8 s s4 s2 s4
  <6> s s s s s8 s s4 s2 s4
  <6> s s s s s8 s s4 s2 s4
  <6> s s s s s8 s s4 s2 s4
  s s s s s s8 s s s s4 s s
  s s s s s s8 s s s s4 s s
  s s s s s s8 s s s s4 s s
  s s s s s s8 s s s s4 s s
  s s s s s s s2.
  s s s s s s s2.
  s s s s s s s2.
  s s s s s s s2.
}

scoreEChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.
  c4 g f e:m c a:m d g2 s4
  g c g a:m g f8(e:m) g4 c2 s4
  c g e:m f d e8:m b c f c2 s4
  c g a:m c f c g c2.
}

scoreEChoirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Sopran" "Alt" }
    shortInstrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreESoprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreEAlto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" {\scoreEVerseA \scoreEVerseA \scoreEVerseA \scoreEVerseA \scoreEVerseB \scoreEVerseB \scoreEVerseB \scoreEVerseB \scoreEVerseC \scoreEVerseC \scoreEVerseC \scoreEVerseC \scoreEVerseD \scoreEVerseD \scoreEVerseD \scoreEVerseD}
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = \markup \center-column { "Tenor" "Bass" }
    shortInstrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \scoreETenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \scoreEBass }
  >>
>>

scoreEBassFiguresPart = \new FiguredBass \with {
  useBassFigureExtenders = ##t
} \scoreEFigBass

scoreEChordsPart = <<
  <<\new ChordNames {\scoreEChordNames}{\scoreEChordNames}>>
%  \new FretBoards \scoreEChordNames
>>

\bookpart {
\header{
    subtitle = "Cantus Firmus: S, A, T, B, Dux Comes, Pachelbel"
}
  \score {
    <<
      \scoreEChoirPart
      \scoreEBassFiguresPart
      \scoreEChordsPart
    >>
    \layout { }
    \midi { }
  }
}
