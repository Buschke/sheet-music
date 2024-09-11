\version "2.22.2"

\header {
  title = "Ein feste Burg ist unser Gott"
  subtitle = "EG 362"
  composer = "NN"
  arranger = "Sven Buschke"
  opus = "EG 362"
  copyright = "© Sven Buschke, 5. Juli 2022"
  tagline = ""
}

global = {
  \key c \major
  \time 4/4
  \tempo 2 = 65
}

preambleUp = {\clef treble \global}
preambleDown = {\clef bass \global}
preamblePedal={\clef bass \global}

melody = \relative c' {
  \global
  \repeat unfold 2 {
  c'4 c2 c g a4 c2( b4) a2 g r4 c4
  b2 a g a4 f2( e4 d2) c r4
  }
  c4 e4.( f8 g4)
  a2( g) fis4 g2 c, g' a b c r b
  c b a g a a g4 a2 g4 e2 r4
  c'4 b2 a a a4 f2( e4 d2) c1
  \bar "|."
}

% STROPHE 2

stropheEins = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "1. "
Ein fe -- ste Burg ist un -- ser Gott, ein gu -- te Wehr und Waf -- fen. Er hilft uns frei aus al -- ler Not, die uns jetzt hat be -- trof -- fen. Der alt bö -- se Feind mit Ernst er's jetzt meint; groß Macht und viel List sein grau -- sam Rüs -- tung ist, auf Erd ist nicht seins -- glei -- chen.
}

stropheZwei = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "2. "
Mit uns -- rer Macht ist nichts ge -- tan, wir sind gar bald ver -- lo -- ren;
es streit' für uns der rech -- te Mann, den Gott hat selbst er -- ko -- ren. Fragst du, wer der ist?
Er heißt Je -- sus Christ, der Herr Ze -- ba -- oth,  und ist kein an -- drer Gott, das Feld muss er be -- hal -- ten.
}

stropheDrei = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "3. "
Und wenn die Welt voll Teu -- fel wär und wollt uns gar ver -- schlin -- gen, so fürch -- ten wir uns nicht so sehr, es soll uns doch ge -- lin -- gen. Der Fürst die -- ser Welt, wie sau'r er sich stellt, tut er uns doch nicht; das macht, er ist ge -- richt': ein Wört -- lein kann ihn fäl -- len.
}

stropheVier = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "4. "
Das Wort sie sol -- len las -- sen stahn und kein' Dank da -- zu ha -- ben; er ist bei uns wohl auf dem Plan mit sei -- nem Geist und Ga -- ben. Neh -- men sie den Leib, Gut, Ehr, Kind und Weib: lass fah -- ren da -- hin, sie ha -- ben's kein' Ge -- winn, das Reich muss uns doch blei -- ben.
}

soprano = \relative c' {
  \global
  \repeat unfold 2 {
  c'4 c2 c g a4 c2( b4) a2 g r4 c4
  b2 a g a4 f2( e4 d2) c r4
  }
  c4 e4.( f8 g4)
  a2( g) fis4 g2 c, g' a b c r b
  c b a g a a g4 a2 g4 e2 r4
  c'4 b2 a a a4 f2( e4 d2) c1
  \bar "|."
}

alto = \relative c' {
  \global
  \repeat unfold 2 {
  c'4 c2 c g a4 c2( b4) a2 g r4 c4
  b2 a g a4 f2( e4 d2) c r4
  }
  c4 e4.( f8 g4)
  a2( g) fis4 g2 c, g' a b c r b
  c b a g a a g4 a2 g4 e2 r4
  c'4 b2 a a a4 f2( e4 d2) c1
  \bar "|."
}

tenor = \relative c {
  \global
  \repeat unfold 2 {
  c'4 c2 c g a4 c2( b4) a2 g r4 c4
  b2 a g a4 f2( e4 d2) c r4
  }
  c4 e4.( f8 g4)
  a2( g) fis4 g2 c, g' a b c r b
  c b a g a a g4 a2 g4 e2 r4
  c'4 b2 a a a4 f2( e4 d2) c1
  \bar "|."
}

bass = \relative c {
  \global
  \repeat unfold 2 {
  c'4 c2 c g a4 c2( b4) a2 g r4 c4
  b2 a g a4 f2( e4 d2) c r4
  }
  c4 e4.( f8 g4)
  a2( g) fis4 g2 c, g' a b c r b
  c b a g a a g4 a2 g4 e2 r4
  c'4 b2 a a a4 f2( e4 d2) c1
  \bar "|."
}

pedal = \relative c {
  \global
  \repeat unfold 2 {
  c'4 c2 c g a4 c2( b4) a2 g r4 c4
  b2 a g a4 f2( e4 d2) c r4
  }
  c4 e4.( f8 g4)
  a2( g) fis4 g2 c, g' a b c r b
  c b a g a a g4 a2 g4 e2 r4
  c'4 b2 a a a4 f2( e4 d2) c1
  \bar "|."
}


\score {
  <<
    \new Voice = "m" << \preambleUp \melody >>
    \new Lyrics \lyricsto "m" \stropheEins
    \new Lyrics \lyricsto "m" \stropheZwei
    \new Lyrics \lyricsto "m" \stropheDrei
    \new Lyrics \lyricsto "m" \stropheVier
    \new PianoStaff <<
      %\set PianoStaff.instrumentName = #"Piano  "
      \new Staff = "upper" \relative c' {
        \preambleUp
        <<
          \new Voice = "s" { \voiceOne \soprano }
          \\
          \new Voice ="a" { \voiceTwo \alto }
        >>
      }
      \new Staff = "lower" \relative c {
        \preambleDown
        <<
          \new Voice = "t" { \voiceThree \tenor }
          \\
          \new Voice = "b" { \voiceFour \bass }
        >>
      }
      \new Staff = "lower" \relative c {
        \preambleDown
        <<
          \new Voice = "p" { \pedal }
        >>
      }
    >>
  >>
  \layout {
    %    \context {
    %     \Staff
    %    \remove "Time_signature_engraver"
    %     \remove "Bar_engraver"
    %   }
  }
  \midi {}
}