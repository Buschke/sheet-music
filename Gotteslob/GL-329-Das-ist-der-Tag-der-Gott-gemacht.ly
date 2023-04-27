\version "2.24.1"
\language "english"

\header {
  title = "Das ist der Tag, der Gott gemacht"
  subtitle = "Cantus Firmus: Sopran"
  subsubtitle = "Gotteslob 329"
  instrument = "Organ"
  composer = "M: nach Johann Leisentrit 1567"
  arranger = \markup {"Satz: " \with-url "https:buschke.com" "Sven Buschke"}
  poet = "T: nach Heinrich Bone 1847/ EGB 1975"
  opus = "GL 329"
  copyright = \markup {"© 25.04.2023 " \with-url "https:buschke.com" "Sven Buschke"}
  % Remove default LilyPond tagline
  tagline = ##f
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
  e4 d e e c c c d~d r4
  d e d c c c8(c) b4 g2 r4
  g d' e c b b8(b) c(c) c4~c r4
  e d f c f c d e2.
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  g4 g c b g e fs g~g r4
  g g g e e a8(g) g4 e2 r4
  e g b a g g8(e)g(a) e4~e r
  g g c e, c g' g g2.
}

scoreABass = \relative c {
  \global
  % Music follows here.
  c4 g a e c' a d b~b r4
  b c b a c a8(c) g4 c2 r4
  c b  e f, g e8(g) c(f,) c'4~c r
  c g f c' f, c' g c2.
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
Das ist der Tag, den Gott ge -- macht,
der Freud in al -- le Welt ge -- bracht.
Es freut sich, was sich freu -- en kann,
denn Wun -- der hat der Herr ge -- tan.
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Soprano" "Alto" }
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
  e g b a g g8(e)g(a) e4~e r
  g g c e, f g g g2.
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  e4 d e e c c c d~d r4
  d e d c c c8(c) b4 g2 r4
  g d' e c b b8(b) c(c) c4~c r4
  e d f c c c d e2.
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
  c g f c' f e g, c2.
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.

}

\bookpart {
\header{
    subtitle = "Cantus Firmus: Tenor"
}
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Soprano" "Alto" }
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
  b c b a c a8(c) g4 c2 r4
  c b  e f, g e8(g) c(f,) c'4~c r
  c g a c a e g c2.
}

scoreCAlto = \relative c' {
  \global
  % Music follows here.
  e4 d e e c c c d~d r4
  d e d c c c8(c) b4 g2 r4
  g d' e c b b8(b) c(c) c4~c r4
  e d f c f c d e2.
}

scoreCTenor = \relative c' {
  \global
  % Music follows here.
  g4 g c b g e e g~g r4
  g g g e e a8(g) g4 e2 r4
  e g b a g g8(e)g(a) e4~e r
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

\bookpart {
\header{
    subtitle = "Cantus Firmus: Bass"
}
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Soprano" "Alto" }
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

\bookpart {
\header{
    subtitle = "Cantus Firmus: Altus"
}
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Soprano" "Alto" }
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
      } \lyricsto "alto" \scoreAVerse
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
  g4^"Bicinium" g c b g e fs g~g r2.
  c4 g a e c' a d b~b r2.
  c4^"C.F. Dux Pachebel" b a g e a a g~g r4
  \breathe
  g4^"C.F. Dux" c g a g f8(e) d4 c2 r4 r2
  d4^"Bicinium" d d b b e8(d) d4 b2 r4 r2
  b'4 c b a c a8(c) g4 c2 r4 r2
  g4^"C.F. Dux Pachebel" c g a g f8(e) d4 c2 r4
  \breathe
  c4 g' g f d e8(d) e(f) g4~g r r2
  e4^"Bicinium" g b a g g8(e)g(a) e4~e r r2
  g4 d' e c b b8(b) c(c) c4~c r4 r2
  c,4^"C.F. Dux Pachebel" g' g f d e8(d) e(f) g4~g r
  \breathe
  c4^"C.F. Dux" b a g a c b c2.
  r2 d4^"Bicinium" d g b, g d' d d2.
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
  r2 d4^"C.F. Comes" g d e d c8(b) a4 g2 r4
  r2 g'4 g g e e a8(g) g4 e2 r4
  r2 g4 g g e e a8(g) g4 e2 r4
  \breathe
  s4 s s s s s8 s s s s4 s s s2
  g4^"C.F. Comes" d' d c a b8(a) b(c) d4~d r r2
  e4 g b a g g8(e)g(a) e4~e r r2
  e4 g b a g g8(e)g(a) e4~e r
  \breathe
  s4 s s s s s s s2.
  r2 g,4^"C.F. Comes" fs e d e g fs g2. r2
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
  c4_"C.F. Dux" g' g f d e8(d) e(f) g4~g r r2
  c,4 b e f, g e8(g) c(f,) c'4~c r
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

\bookpart {
\header{
    subtitle = "Cantus Firmus: S, A, T, B, Dux Comes, Pachelbel"
}
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Soprano" "Alto" }
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
    \layout { }
    \midi { }
  }
}
