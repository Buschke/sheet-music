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
  g g c e, c g' g g2.
}

scoreBAlto = \relative c' {
  \global
  % Music follows here.
  e4 d e e c c c d~d r4
  d e d c c c8(c) b4 g2 r4
  g d' e c b b8(b) c(c) c4~c r4
  e d f c f c d e2.
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
  b c b a c a8(c) g4 c2 r4
  c b  e f, g e8(g) c(f,) c'4~c r
  c g f c' f, c' g c2.
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
  c4 g a e c' a d b~b r4
  b c b a c a8(c) g4 c2 r4
  c b  e f, g e8(g) c(f,) c'4~c r
  c g f c' f, c' g c2.
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
  g4 g c b g e fs g~g r4
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
  g d' e c b b8(b) c(c) c4~c r4
  e d f c f c d e2.
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
  e g b a g g8(e)g(a) e4~e r
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
  c4 b a g e a a g~g r
  c4 b a g e a a g~g r
  c4 b a g e a a g~g r
  c4 b a g e a a g~g r
  \bar "||"
  g c g a g f8(e) d4 c2 r4
  g' c g a g f8(e) d4 c2 r4
  g' c g a g f8(e) d4 c2 r4
  g' c g a g f8(e) d4 c2 r4
  \bar "||"
  c g' g f d e8(d) e(f) g4~g r
  c, g' g f d e8(d) e(f) g4~g r
  c, g' g f d e8(d) e(f) g4~g r
  c, g' g f d e8(d) e(f) g4~g r
  \bar "||"
  c b a g a c b c2.
  c4 b a g a c b c2.
  c4 b a g a c b c2.
  c4 b a g a c b c2.
  \bar "|."
}

scoreEAlto = \relative c' {
  \global
  % Music follows here.
  e4 d e e c c c d~d r4
  e4 d e e c c c d~d r4
  e4 d e e c c c d~d r4
  e4 d e e c c c d~d r4
  \bar "||"
  d e d c c c8(c) b4 g2 r4
  d' e d c c c8(c) b4 g2 r4
  d' e d c c c8(c) b4 g2 r4
  d' e d c c c8(c) b4 g2 r4
  \bar "||"
  g d' e c b b8(b) c(c) c4~c r4
  g d' e c b b8(b) c(c) c4~c r4
  g d' e c b b8(b) c(c) c4~c r4
  g d' e c b b8(b) c(c) c4~c r4
  \bar "||"
  e d f c f c d e2.
  e4 d f c f c d e2.
  e4 d f c f c d e2.
  e4 d f c f c d e2.
  \bar "|."
}

scoreETenor = \relative c' {
  \global
  % Music follows here.
  g4 g c b g e fs g~g r4
  g4 g c b g e fs g~g r4
  g4 g c b g e fs g~g r4
  g4 g c b g e fs g~g r4
  \bar "||"
  g g g e e a8(g) g4 e2 r4
  g g g e e a8(g) g4 e2 r4
  g g g e e a8(g) g4 e2 r4
  g g g e e a8(g) g4 e2 r4
  \bar "||"
  e g b a g g8(e)g(a) e4~e r
  e g b a g g8(e)g(a) e4~e r
  e g b a g g8(e)g(a) e4~e r
  e g b a g g8(e)g(a) e4~e r
  \bar "||"
  g g c e, c g' g g2.
  g4 g c e, c g' g g2.
  g4 g c e, c g' g g2.
  g4 g c e, c g' g g2.
  \bar "|."
}

scoreEBass = \relative c {
  \global
  % Music follows here.
  c4 g a e c' a d b~b r4
  c4 g a e c' a d b~b r4
  c4 g a e c' a d b~b r4
  c4 g a e c' a d b~b r4
  \bar "||"
  b c b a c a8(c) g4 c2 r4
  b c b a c a8(c) g4 c2 r4
  b c b a c a8(c) g4 c2 r4
  b c b a c a8(c) g4 c2 r4
  \bar "||"
  c b  e f, g e8(g) c(f,) c'4~c r
  c b  e f, g e8(g) c(f,) c'4~c r
  c b  e f, g e8(g) c(f,) c'4~c r
  c b  e f, g e8(g) c(f,) c'4~c r
  \bar "||"
  c g f c' f, c' g c2.
  c4 g f c' f, c' g c2.
  c4 g f c' f, c' g c2.
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
