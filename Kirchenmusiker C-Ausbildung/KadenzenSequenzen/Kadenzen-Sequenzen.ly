\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = "Quintpendel (QP), Kadenzen (KD), Quintfallsequenzen (QFS)"
  subtitle = ""
  subsubtitle = ""
  instrument = "Orgel"
  composer = ""
  arranger = \markup{"Fingerings: " \with-url "https://buschke.com" "Sven Buschke"}
  poet = "EL: Enge Lage, WL: Weite Lage"
  meter = "5: Quintstellung, 8: Oktavstellung, 3: Terzstellung"
  piece = ""
  opus = ""
  copyright = \markup{"© 24.02.2023" \with-url "https://buschke.com" "Sven Buschke"}
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
  \time 4/4
  \tempo "Andante" 4=100
}

scoreASoprano = \relative c'' {
  \global
  \time 3/4
  % Music follows here.
  g^\markup{\column{\line{QP\super{5}\sub{EL}}\line{I-V-I}}} g g
  g^\markup{\column{\line{QP\super{5}\sub{EL}}\line{I-IV-I}}} a g
  g^\markup{\column{\line{QP\super{5}\sub{EL}}\line{I-VII-I}}} f g
  \bar "||"
  c^\markup{\column{\line{QP\super{8}\sub{EL}}\line{I-V-I}}} b c
  c^\markup{\column{\line{QP\super{8}\sub{EL}}\line{I-IV-I}}} c c
  c^\markup{\column{\line{QP\super{8}\sub{EL}}\line{I-VII-I}}} b c
  \bar "||"
  e,^\markup{\column{\line{QP\super{3}\sub{EL}}\line{I-V-I}}} d e
  e^\markup{\column{\line{QP\super{3}\sub{EL}}\line{I-IV-I}}} f e
  e8^\markup{\column{\line{QP\super{3}\sub{EL}}\line{I-VII-I}}}[d e] e f e
  \bar "||"
  g4^\markup{\column{\line{QP\super{5}\sub{WL}}\line{I-V-I}}} g g
  g^\markup{\column{\line{QP\super{5}\sub{WL}}\line{I-IV-I}}} a g
  g^\markup{\column{\line{QP\super{5}\sub{WL}}\line{I-VII-I}}} r r
  \bar "||"
  c^\markup{\column{\line{QP\super{8}\sub{WL}}\line{I-V-I}}} b c
  c^\markup{\column{\line{QP\super{8}\sub{WL}}\line{I-IV-I}}} c c
  c^\markup{\column{\line{QP\super{8}\sub{WL}}\line{I-VII-I}}} b c
  \bar "||"
  e^\markup{\column{\line{QP\super{3}\sub{WL}}\line{I-V-I}}} d e
  e^\markup{\column{\line{QP\super{3}\sub{WL}}\line{I-IV-I}}} f e
  e8^\markup{\column{\line{QP\super{3}\sub{WL}}\line{I-VII-I}}}[d e] e[f e]
  \bar "|.|"\break
  \time 4/4
  g4,^\markup{\column{\line{KD\super{5}\sub{EL}}\line{I-IV-V-I}}} a g g
  \bar "||"
  c^\markup{\column{\line{KD\super{8}\sub{EL}}\line{I-IV-V-I}}} c b c
  \bar "||"
  e,^\markup{\column{\line{KD\super{3}\sub{EL}}\line{I-IV-V-I}}} f d e
  \bar "||"
  g^\markup{\column{\line{KD\super{5}\sub{WL}}\line{I-IV-V-I}}} a g g
  \bar "||"
  c4^\markup{\column{\line{KD\super{8}\sub{WL}}\line{I-IV-V-I}}} c b c
  \bar "||"
  e^\markup{\column{\line{KD\super{3}\sub{WL}}\line{I-IV-V-I}}} f d e
  \bar "|.|"
  g,^\markup{\column{\line{QFS\super{5}\sub{EL}}\line{I-IV-VII-III-VI-II-V-I}}} a f g e f d g
  \bar "||"
  c^\markup{\column{\line{QFS\super{8}\sub{EL}}\line{I-IV-VII-III-VI-II-V-I}}} c b b a a g g
  \bar "||"
  e^\markup{\column{\line{QFS\super{3}\sub{EL}}\line{I-IV-VII-III-VI-II-V-I}}} f d e c d b c
  \bar "||"
  g''^\markup{\column{\line{QFS\super{5}\sub{WL}}\line{I-IV-VII-III-VI-II-V-I}}} a f g e f d e
  \bar "||"
  c^\markup{\column{\line{QFS\super{8}\sub{WL}}\line{I-IV-VII-III-VI-II-V-I}}} c b b a a g g
  \bar "||"
  e'^\markup{\column{\line{QFS\super{3}\sub{WL}}\line{I-IV-VII-III-VI-II-V-I}}} f d e c d b c
  \bar "|."
  \pageBreak
  \key g \major
    \time 3/4
  % Music follows here.
  d^\markup{\column{\line{QP\super{5}\sub{EL}}\line{I-V-I}}} d d
  d^\markup{\column{\line{QP\super{5}\sub{EL}}\line{I-IV-I}}} e d
  d^\markup{\column{\line{QP\super{5}\sub{EL}}\line{I-VII-I}}} c d
  \bar "||"
  g,^\markup{\column{\line{QP\super{8}\sub{EL}}\line{I-V-I}}} fs g
  g^\markup{\column{\line{QP\super{8}\sub{EL}}\line{I-IV-I}}} g g
  g^\markup{\column{\line{QP\super{8}\sub{EL}}\line{I-VII-I}}} fs g
  \bar "||"
  b^\markup{\column{\line{QP\super{3}\sub{EL}}\line{I-V-I}}} a b
  b^\markup{\column{\line{QP\super{3}\sub{EL}}\line{I-IV-I}}} c b
  b8^\markup{\column{\line{QP\super{3}\sub{EL}}\line{I-VII-I}}}[a b] b c b
  \bar "||"
  d4^\markup{\column{\line{QP\super{5}\sub{WL}}\line{I-V-I}}} d d
  d^\markup{\column{\line{QP\super{5}\sub{WL}}\line{I-IV-I}}} e d
  d^\markup{\column{\line{QP\super{5}\sub{WL}}\line{I-VII-I}}} r r
  \bar "||"
  g^\markup{\column{\line{QP\super{8}\sub{WL}}\line{I-V-I}}} fs g
  g^\markup{\column{\line{QP\super{8}\sub{WL}}\line{I-IV-I}}} g g
  g^\markup{\column{\line{QP\super{8}\sub{WL}}\line{I-VII-I}}} fs g
  \bar "||"
  b,^\markup{\column{\line{QP\super{3}\sub{WL}}\line{I-V-I}}} a b
  b^\markup{\column{\line{QP\super{3}\sub{WL}}\line{I-IV-I}}} c b
  b8^\markup{\column{\line{QP\super{3}\sub{WL}}\line{I-VII-I}}}[a b] b[c b]
  \bar "|.|"\break
  \time 4/4
  d4,^\markup{\column{\line{KD\super{5}\sub{EL}}\line{I-IV-V-I}}} e d d
  \bar "||"
  g^\markup{\column{\line{KD\super{8}\sub{EL}}\line{I-IV-V-I}}} g fs g
  \bar "||"
  b,^\markup{\column{\line{KD\super{3}\sub{EL}}\line{I-IV-V-I}}} c a b
  \bar "||"
  d^\markup{\column{\line{KD\super{5}\sub{WL}}\line{I-IV-V-I}}} e d d
  \bar "||"
  g4^\markup{\column{\line{KD\super{8}\sub{WL}}\line{I-IV-V-I}}} g fs g
  \bar "||"
  b^\markup{\column{\line{KD\super{3}\sub{WL}}\line{I-IV-V-I}}} c a b
  \bar "|.|"
  d^\markup{\column{\line{QFS\super{5}\sub{EL}}\line{I-IV-VII-III-VI-II-V-I}}} e c d b c a d
  \bar "||"
  g,^\markup{\column{\line{QFS\super{8}\sub{EL}}\line{I-IV-VII-III-VI-II-V-I}}} g fs fs e e d d
  \bar "||"
  b'^\markup{\column{\line{QFS\super{3}\sub{EL}}\line{I-IV-VII-III-VI-II-V-I}}} c a b g a fs g
  \bar "||"
  d'^\markup{\column{\line{QFS\super{5}\sub{WL}}\line{I-IV-VII-III-VI-II-V-I}}} e c d b c a b
  \bar "||"
  g'^\markup{\column{\line{QFS\super{8}\sub{WL}}\line{I-IV-VII-III-VI-II-V-I}}} g fs fs e e d d
  \bar "||"
  b^\markup{\column{\line{QFS\super{3}\sub{WL}}\line{I-IV-VII-III-VI-II-V-I}}} c a b g a fs g
  \bar "|."
}

scoreAAlto = \relative c' {
  \global
  \time 3/4
  % Music follows here.
  % QP^5_EL
  e d e
  e f e
  e d e
  % QP^8_EL
  g g g
  g a g
  g f g
  % QP^3_EL
  c, b c
  c c c
  c8[b c]c[b c]
  % QP^5_WL
  c4 b c
  c c c
  c r r
  % QP^8_WL
  e d e
  e f e
  e d e
  % QP^3_WL
  g g g
  g a g
  g8[f g] g[f g]
  \time 4/4
  % KD^5_WE-I-IV-V-I
  e4 f d e
  % KD^8_EL-I-IV-V-I
  g a g g
  % KD^3_EL-I-IV-V-I
  c, c b c
  % KD^5_WL-I-IV-V-I
  c c b c
  % KD^8_WL-I-IV-V-I
  e f d e
  % KD^3_WL-I-IV-V-I
  g a g g
  % QFS^5_EL-I-IV-VII-III-VI-II-V-I
  e f d e c d b c
  % QFS^8_EL-I-IV-VII-III-VI-II-V-I
  g' a f g e f d e
  % QFS^3_EL-I-IV-VII-III-VI-II-V-I
  c c b b a a g g
  % QFS^5_WL-I-IV-VII-III-VI-II-V-I
  c' c b b a a g g
  % QFS^8_WL-I-IV-VII-III-VI-II-V-I
  e f d e c d b c
  % QFS^3_WL-I-IV-VII-III-VI-II-V-I
  g' a f g e f d e
  \bar "|."
  \key g \major
  \time 3/4
  % Music follows here.
  % QP^5_EL
  b' a b
  b c b
  b a b
  % QP^8_EL
  d, d d
  d e d
  d c d
  % QP^3_EL
  g fs g
  g g g
  g8[fs g]g[fs g]
  % QP^5_WL
  g4 fs g
  g g g
  g r r
  % QP^8_WL
  b a b
  b c b
  b a b
  % QP^3_WL
  d, d d
  d e d
  d8[c d] d[c d]
  \time 4/4
  % KD^5_WE-I-IV-V-I
  b4 c a b
  % KD^8_EL-I-IV-V-I
  d e d d
  % KD^3_EL-I-IV-V-I
  g, g fs g
  % KD^5_WL-I-IV-V-I
  g g fs g
  % KD^8_WL-I-IV-V-I
  b c a b
  % KD^3_WL-I-IV-V-I
  d e d d
  % QFS^5_EL-I-IV-VII-III-VI-II-V-I
  b' c a b g a fs g
  % QFS^8_EL-I-IV-VII-III-VI-II-V-I
  d e c d b c a b
  % QFS^3_EL-I-IV-VII-III-VI-II-V-I
  g' g fs fs e e d d
  % QFS^5_WL-I-IV-VII-III-VI-II-V-I
  g g fs fs e e d d
  % QFS^8_WL-I-IV-VII-III-VI-II-V-I
  b' c a b g a fs g
  % QFS^3_WL-I-IV-VII-III-VI-II-V-I
  d e c d b c a b
  \bar "|."
}

scoreATenor = \relative c' {
  \global
  \time 3/4
  % Music follows here.
  % QP^5_EL
  c b c
  c c c
  c b c
  % QP^8_EL
  e d e
  e f e
  e d e
  % QP^3_EL
  g, g g
  g a g
  g8[f g]g[f g]
  % QP^5_WL
  e4 d e
  e f e
  e r r
  % QP^8_WL
  g g g
  g a g
  g f g
  % QP^3_WL
  c b c
  c c c
  c8[b c]c[b c]
  \time 4/4
  % KD^5_EL-I-IV-V-I
  c4 c b c
  % KD^8_EL-I-IV-V-I
  e f d e
  % KD^3_EL-I-IV-V-I
  g, a g g
  % KD^5_WL-I-IV-V-I
  g a g g
  % KD^8_WL-I-IV-V-I
  g a g g
  % KD^3_WL-I-IV-V-I
  c c b c
  % QFS^5_EL-I-IV-VII-III-VI-II-V-I
  c c b b a a g g
  % QFS^8_EL-I-IV-VII-III-VI-II-V-I
  e' f d e c d b c
  % QFS^3_EL-I-IV-VII-III-VI-II-V-I
  g a f g e f d e
  % QFS^5_WL-I-IV-VII-III-VI-II-V-I
  e' f d e c d b c
  % QFS^8_WL-I-IV-VII-III-VI-II-V-I
  g a f g e f d e
  % QFS^3_WL-I-IV-VII-III-VI-II-V-I
  c' c b b a a g g
  \bar "|."
  \key g \major
  \time 3/4
  % Music follows here.
  % QP^5_EL
  g' fs g
  g g g
  g fs g
  % QP^8_EL
  b, a b
  b c b
  b a b
  % QP^3_EL
  d d d
  d e d
  d8[c d]d[c d]
  % QP^5_WL
  b4 a b
  b c b
  b r r
  % QP^8_WL
  d d d
  d e d
  d c d
  % QP^3_WL
  g, fs g
  g g g
  g8[fs g]g[fs g]
  \time 4/4
  % KD^5_EL-I-IV-V-I
  g4 g fs g
  % KD^8_EL-I-IV-V-I
  b c a b
  % KD^3_EL-I-IV-V-I
  d, e d d
  % KD^5_WL-I-IV-V-I
  d e d d
  % KD^8_WL-I-IV-V-I
  d e d d
  % KD^3_WL-I-IV-V-I
  g g fs g
  % QFS^5_EL-I-IV-VII-III-VI-II-V-I
  g' g fs fs e e d d
  % QFS^8_EL-I-IV-VII-III-VI-II-V-I
  b c a b g a fs g
  % QFS^3_EL-I-IV-VII-III-VI-II-V-I
  d' e c d b c a b
  % QFS^5_WL-I-IV-VII-III-VI-II-V-I
  b c a b g a fs g
  % QFS^8_WL-I-IV-VII-III-VI-II-V-I
  d' e c d b c a b
  % QFS^3_WL-I-IV-VII-III-VI-II-V-I
  g g fs fs e e d d
  \bar "|."
}

scoreABass = \relative c {
  \global
  \time 3/4
  % Music follows here.
  % QP^5_EL
  c g c
  c f c
  c d c
  % QP^8_EL
  c g c
  c f, c'
  c d c
  % QP^3_EL
  c g c
  c f c
  c8[d c]c[d c]
  % QP^5_WL
  c4 g c
  c f, c'
  c r r
  % QP^8_WL
  c g c
  c f c
  c d c
  % QP^3_WL
  c g c
  c f c
  c8[d c]c[d c]
  \time 4/4
  % KD^5_EL-I-IV-V-I
  c4 f g c,|
  % KD^8_EL-I-IV-V-I
  c f g c,|
  % KD^3_EL-I-IV-V-I
  c f g, c|
  % KD^5_WL-I-IV-V-I
  c f g, c|
  % KD^8_WL-I-IV-V-I
  c f g, c|
  % KD^3_WL-I-IV-V-I
  c f g c,|
  % QFS^5_EL-I-IV-VII-III-VI-II-V-I
  c f b, e a, d g, c
  % QFS^8_EL-I-IV-VII-III-VI-II-V-I
  c f b, e a, d g, c
  % QFS^3_EL-I-IV-VII-III-VI-II-V-I
  c f b, e a, d g, c
  % QFS^5_WL-I-IV-VII-III-VI-II-V-I
  c f b, e a, d g, c
  % QFS^8_WL-I-IV-VII-III-VI-II-V-I
  c f b, e a, d g, c
  % QFS^3_WL-I-IV-VII-III-VI-II-V-I
  c f b, e a, d g, c
  \bar "|."
  \key g \major
  \time 3/4
  % Music follows here.
  % QP^5_EL
  g' d g
  g c g
  g a g
  % QP^8_EL
  g d g
  g c, g'
  g a g
  % QP^3_EL
  g d g
  g c g
  g8[a g]g[a g]
  % QP^5_WL
  g4 d g
  g c, g'
  g r r
  % QP^8_WL
  g d g
  g c g
  g a g
  % QP^3_WL
  g, d g
  g c g
  g8[a g]g[a g]
  \time 4/4
  % KD^5_EL-I-IV-V-I
  g4 c d g,|
  % KD^8_EL-I-IV-V-I
  g c d g,|
  % KD^3_EL-I-IV-V-I
  g c d, g|
  % KD^5_WL-I-IV-V-I
  g c d, g|
  % KD^8_WL-I-IV-V-I
  g c d, g|
  % KD^3_WL-I-IV-V-I
  g c d g,|
  % QFS^5_EL-I-IV-VII-III-VI-II-V-I
  g c fs, b e, a d, g
  % QFS^8_EL-I-IV-VII-III-VI-II-V-I
  g c fs, b e, a d, g
  % QFS^3_EL-I-IV-VII-III-VI-II-V-I
  g c fs, b e, a d, g
  % QFS^5_WL-I-IV-VII-III-VI-II-V-I
  g c fs, b e, a d, g
  % QFS^8_WL-I-IV-VII-III-VI-II-V-I
  g c fs, b e, a d, g
  % QFS^3_WL-I-IV-VII-III-VI-II-V-I
  g c fs, b e, a d, g
  \bar "|."
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.

}

scoreAFigBass = \figuremode {
  \global
  \time 3/4
  % Figures follow here.
  % QP^5_EL
  r4 r r
  r4 r r
  r4 <6> r
  % QP^8_EL
  r4 r r
  r4 r r
  r4 <6> r
  % QP^3_EL
  r4 r r
  r4 r r
  r4 r r
  % QP^5_WL
  r4 r r
  r4 r r
  r4 r r
  % QP^8_WL
  r4 r r
  r4 r r
  r4 r r
  % QP^3_WL
  r4 r r
  r4 r r
  r4 r r
  \time 4/4
  % KD^5_EL-I-IV-V-I
  r4 r r r
  % KD^8_EL-I-IV-V-I
  r4 r r r
  % KD^3_EL-I-IV-V-I
  r4 r r r
  % KD^5_WL-I-IV-V-I
  r4 r r r
  % KD^8_WL-I-IV-V-I
  r4 r r r
  % KD^3_WL-I-IV-V-I
  r4 r r r
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

scoreABassFiguresPart = \new FiguredBass \scoreAFigBass

\bookpart {
  \score {
    <<
      \scoreAChoirPart
      \scoreABassFiguresPart
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

}

scoreBBass = \relative c {
  \global
  % Music follows here.

}

scoreBVerse = \lyricmode {
  % Lyrics follow here.

}

scoreBFigBass = \figuremode {
  \global
  % Figures follow here.

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
  } \lyricsto "soprano" \scoreBVerse
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

scoreBBassFiguresPart = \new FiguredBass \scoreBFigBass

\bookpart {
  \score {
    <<
      \scoreBChoirPart
      \scoreBBassFiguresPart
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

}

scoreCVerse = \lyricmode {
  % Lyrics follow here.

}

scoreCFigBass = \figuremode {
  \global
  % Figures follow here.

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
  } \lyricsto "soprano" \scoreCVerse
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

scoreCBassFiguresPart = \new FiguredBass \scoreCFigBass

\bookpart {
  \score {
    <<
      \scoreCChoirPart
      \scoreCBassFiguresPart
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

scoreDFigBass = \figuremode {
  \global
  % Figures follow here.

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
  } \lyricsto "soprano" \scoreDVerse
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

scoreDBassFiguresPart = \new FiguredBass \scoreDFigBass

\bookpart {
  \score {
    <<
      \scoreDChoirPart
      \scoreDBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}

scoreESoprano = \relative c'' {
  \global
  % Music follows here.

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

scoreEFigBass = \figuremode {
  \global
  % Figures follow here.

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
  } \lyricsto "soprano" \scoreEVerse
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

scoreEBassFiguresPart = \new FiguredBass \scoreEFigBass

\bookpart {
  \score {
    <<
      \scoreEChoirPart
      \scoreEBassFiguresPart
    >>
    \layout { }
    \midi { }
  }
}
