\version "2.24.1"
\language "english"

\header {
  dedication = ""
  title = "Gelobet sei'st du, Jesus Christ"
  subtitle = "Orgelbüchlein Nr. 6"
  subsubtitle = ""
  instrument = ""
  composer = "Johann Sebastian Bach"
  poet = "Fingerings: Sven Buschke"
  arranger =  ""
  meter = ""
  piece = ""
  opus = "BWV 604"
  #(define licenseUrl "https://buschke.com")
  license = "© Fingerings: Sven Buschke, 19.02.2023"
  copyright = \markup { \rounded-box \pad-markup #0.5 \center-column { \line { \with-url #licenseUrl \license }  } }

  %copyright = "© Fingerings: 19.02.2023, Sven Buschke"
%  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line {    } \line { \small \line { \tiny © Fingerings: 19.02.2023, Sven Buschke   } }  } }
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

 #(set-global-staff-size 19.4)

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

right = \relative c'' {
  \global
  % Music follows here.
  \partial 2
  g2-2|
  g4-2~ g16 a-3 f-1 g-2 a4-3 g8.-2 a16-3|
  b8-4 c-5 c4-2 c4.-2\fermata c16-2 d-3|
  b8.\prall c16 d4 e d8. c16|
  b4 a g\fermata g|
  c4 b8. c16 d4 a|
  g8 fs e4 d\fermata d|
  a' a a b|
  c8 b a4 g8. a16 b4|
  a2\fermata g4 g|
  g g g2~|
  g2\fermata
  \bar "|."
}

leftOne = \relative c' {
  \global
  % Music follows here.
  \clef treble
  \partial 2
  b8.-3 c16-2 d4-1|
  e4~-1 e16 e-1 d8-2 c8.-1 d16-2 r e-1 fs8-2|
  g8.-1 a16-2 r a-2 b8-1 r16 g8.-2 r16 g8.-1|
  g4~ g8. f16 e8. g16~ g g fs8|
  g4~ 16 g  fs8 r16 d8 f16 e4~|
  e16 e fs8 g4~ 16 fs g8~ g fs|
  \clef bass
  d4~ 16 d cs8 d16 a g8 fs8. g16|
  a8. b16 cs8 e r16 d c8 b d|
  e4~ 8 d16 c~c b c8 d4~|
  d16 8.~ 4 8. 16 c8. b16|
  c2~ 8 8~16 d a8|
  b2\fermata
  \bar "|."
}

leftTwo = \relative c' {
  \global
  % Music follows here.
  \clef treble
  \partial 2
  r16 g-5 a8-4 b4-3|
  b-4 c8.-3 bf16-4 r  a-5 b8-4 c4-3|
  r16 d-5 e8-4 f8.-3 16-3~8 e16-4 d-5 e4-4|
  d~ 16 c b8~ 16 g c e a,4|
  g8 b e d16 c~8 b c g|
  a8. ds16 e g, a8 b8. c16 d4|
  \clef bass
  d8. c16 b8 a16 g fs8. e16 r d e8|
  r16 fs g8 r16 a8 g16 f8. 16 g4~|
  4~16 g fs8 g8. fs16 g4~|
  8 fs16 e fs4 r16 g f8 r16 e d8|
  e2~16 8 16 d8. c16|
  d2\fermata
  \bar "|."
}

pedal = \relative c {
  \global
  % Music follows here.
  \partial 2
  r4 r16 g'\rtoe g,\ltoe f'\rtoe|
  e\rtoe e\rtoe e,\ltoe d'\rtoe c4\rtoe f,8\ltoe f'\rtoe e\rtoe c\ltoe|
  g'\rtoe fs\rtoe g\rtoe g,\ltoe c2\rtoe|
  r16 g g'\rtoe a, b8\rtoe g c\rtoe a d\rtoe d,|
  r16 e e'\rtoe b c a d8 g,4 r16 c c, b'|
  a8 a' e4 d4 r16 d d, c'|
  b b' b, a' g8 a d,4 d,|
  d' a8 cs d4 r16 g g, f'|
  e e e, d' c8 d e4 r16 b g' c,|
  d4 r16 d d, c' b4 c8 g|
  r16 c, c' d, e e' e, ds g2~|
  g2\fermata
  \bar "|."
}

\score {
  <<
    \new PianoStaff \with {
      instrumentName = "Organ"
      shortInstrumentName = "Org."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "church organ"
      } \right
      \new Staff = "left" \with {
        midiInstrument = "church organ"
      } { \clef bass << \leftOne \\ \leftTwo >> }
    >>
    \new Staff = "pedal" \with {
      midiInstrument = "church organ"
    } { \clef bass \pedal }
  >>
  \layout { }
  \midi { }
}
