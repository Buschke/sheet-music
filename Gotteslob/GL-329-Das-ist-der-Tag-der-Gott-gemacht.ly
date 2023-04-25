\version "2.24.1"
\language "english"

\header {
  title = "Das ist der Tag, der Gott gemacht"
  subtitle = "Gotteslob 329"
  subsubtitle = "Cantus Firmus: Sopran"
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

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  c4 b a g e a a g2 r4
  g c g a g f8( e) d4 c2 r4
  c g' g f d e8( d) e( f) g2 r4
  c b a g a c b c2.
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  e4 d c b c c c c2 r4
  c e c f e c8(c) b4 g2 r4
  g d' e c b b8(b) c( c) c2 r4
  e d f c f c d e2.
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  g4 g f e g f f e2 r4
  e a e c c a8(g') g4 e2 r4
  e b' b a g g8(e)g(a) e2 r4
  g g c e c g g g2.
}

scoreABass = \relative c {
  \global
  % Music follows here.
  c,4 g' f e c f f c2 r4
  c a' c, f c f8(c') g4 c2 r4
  c g  e f g e8(g) c(f,) c2 r4
  c g' f c f c g' c2.
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
  c4 b a g e a a g2 r4
  g c g a g f8( e) d4 c2 r4
  c g' g f d e8( d) e( f) g2 r4
  c b a g a c b c2.
  \bar "|."
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  c,4 g' f e c f f c2 r4
  c a c f c f8(c') g4 c2 r4
  c g  e f g e8(g) c(f,) c2 r4
  c g' f c f c g' c2.
}

scoreBVerse = \lyricmode {
  % Lyrics follow here.

}

\bookpart {
\header{
    subsubtitle = "Cantus Firmus: Tenor"
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
  c4 b a g e a a g2 r4
  g c g a g f8( e) d4 c2 r4
  c g' g f d e8( d) e( f) g2 r4
  c b a g a c b c2.
  \bar "|."
}

scoreCVerse = \lyricmode {
  % Lyrics follow here.

}

\bookpart {
\header{
    subsubtitle = "Cantus Firmus: Bass"
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

scoreDSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreDAlto = \relative c' {
  \global
  % Music follows here.
  c'4 b a g e a a g2 r4
  g c g a g f8( e) d4 c2 r4
  c g' g f d e8( d) e( f) g2 r4
  c b a g a c b c2.
  \bar "|."
}

scoreDTenor = \relative c' {
  \global
  % Music follows here.

}

scoreDBass = \relative c {
  \global
  % Music follows here.
  c,4 g' f e c f f c2 r4
  c a c f c f8(c') g4 c2 r4
  c g  e f g e8(g) c(f,) c2 r4
  c g' f c f c g' c2.
}

scoreDVerse = \lyricmode {
  % Lyrics follow here.

}

\bookpart {
\header{
    subsubtitle = "Cantus Firmus: Altus"
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

scoreESoprano = \relative c'' {
  \global
  % Music follows here.
  c4 b a g e a a g2 r4
  g c g a g f8( e) d4 c2 r4
  c g' g f d e8( d) e( f) g2 r4
  c b a g a c b c2.
  \bar "|."
}

scoreEAlto = \relative c' {
  \global
  % Music follows here.

}

scoreETenor = \relative c' {
  \global
  % Music follows here.

}

scoreEBass = \relative c {
  \global
  % Music follows here.

}

scoreEVerse = \lyricmode {
  % Lyrics follow here.

}

\bookpart {
\header{
    subsubtitle = "Cantus Firmus: S, A, T, B, Dux Comes, Pachelbel"
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
      } \lyricsto "soprano" \scoreAVerse
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
