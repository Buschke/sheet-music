\header {
  title = "Wachet auf, ruft uns die Stimme"
  subtitle = "EG 147"
  composer = "NN"
  arranger = "Sven Buschke"
  opus = "EG 147"
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
    c2 e g2. g4 g g a( g a2) g r4
    g c g c e d e d2 g, r4
    g c g a e f d c2 r2
    c2 e g2. g4 g g a( g a2) g r4
    g c g c e d e d2 g, r4
    g c g a e f d c2 r2
    g'4 g2. f4 e d c2 r4
    g'4 g2. f4 e d c2
    d4 e f2 e g a4 b c2 c4 e
    d2 c g c4 g a e f d c1
}

% STROPHE 2

stropheEins = \lyricmode {
 \set fontSize = #-.5
 \set stanza = "1. "
»Wa -- chet auf«, ruft uns die Stim -- me
der Wäch -- ter sehr hoch auf der Zin -- ne,
»wach auf, du Stadt Je -- ru -- sa -- lem!
Mit -- ter -- nacht heißt die -- se Stun -- de«;
sie ru -- fen uns mit hel -- lem Mun -- de:
»Wo seid ihr klu -- gen Jung -- frau -- en?
Wohl -- auf, der Bräut' -- gam kommt, steht auf, die Lam -- pen nehmt!
Hal -- le -- lu -- ja! Macht euch be -- reit zu der
Hoch -- zeit, ihr müs -- set ihm ent -- ge -- gen -- gehn!«
}

% STROPHE 2

stropheZwei = \lyricmode {
 \set fontSize = #-.5
 \set stanza = "2. "
Zi -- on hört die Wäch -- ter sin -- gen,
das Herz tut ihr vor Freu -- de sprin -- gen,
sie wach -- et und steht ei -- lend auf.
Ihr Freund kommt vom Him -- mel präch -- tig,
von Gna -- den stark, von Wahr -- heit mäch -- tig, ihr Licht wird hell, ihr Stern geht auf.
Nun komm, du wer -- te Kron, Herr Je -- su, Got -- tes Sohn!
Ho -- si -- an -- na! Wir fol -- gen all zum Freu -- den -- saal und hal -- ten mit das Ab -- end -- mahl.
}

% STROPHE 3

stropheDrei = \lyricmode {
 \set fontSize = #-.5
 \set stanza = "3. "
Glo -- ri -- a sei dir ge -- sun -- gen
mit Men -- schen– und mit En -- gel -- zung -- en,
mit Har -- fen und mit Zim -- beln schön.
Von zwölf Per -- len sind die To -- re an dei -- ner Stadt;
wir stehn im Cho -- re der En -- gel hoch um dei -- nen Thron.
Kein Aug hat je ge -- spürt,
kein Ohr hat mehr ge -- hört sol -- che Freu -- de.
Des jauch -- zen wir und sin -- gen dir das Hal  --  le -- lu -- ja für und für.
}

soprano = \relative c' {
  \global
    c2 e g2. g4 g g a( g a2) g r4
    g c g c e d e d2 g, r4
    g c g a e f d c2 r2
    c2 e g2. g4 g g a( g a2) g r4
    g c g c e d e d2 g, r4
    g c g a e f d c2 r2
    g'4 g2. f4 e d c2 r4
    g'4 g2. f4 e d c2
    d4 e f2 e g a4 b c2 c4 e
    d2 c g c4 g a e f d c1
}

alto = \relative c' {
  \global
    c2 e g2. g4 g g a( g a2) g r4
    g c g c e d e d2 g, r4
    g c g a e f d c2 r2
    c2 e g2. g4 g g a( g a2) g r4
    g c g c e d e d2 g, r4
    g c g a e f d c2 r2
    g'4 g2. f4 e d c2 r4
    g'4 g2. f4 e d c2
    d4 e f2 e g a4 b c2 c4 e
    d2 c g c4 g a e f d c1
}

tenor = \relative c {
  \global
    c2 e g2. g4 g g a( g a2) g r4
    g c g c e d e d2 g, r4
    g c g a e f d c2 r2
    c2 e g2. g4 g g a( g a2) g r4
    g c g c e d e d2 g, r4
    g c g a e f d c2 r2
    g'4 g2. f4 e d c2 r4
    g'4 g2. f4 e d c2
    d4 e f2 e g a4 b c2 c4 e
    d2 c g c4 g a e f d c1
}

bass = \relative c {
  \global
    c2 e g2. g4 g g a( g a2) g r4
    g c g c e d e d2 g, r4
    g c g a e f d c2 r2
    c2 e g2. g4 g g a( g a2) g r4
    g c g c e d e d2 g, r4
    g c g a e f d c2 r2
    g'4 g2. f4 e d c2 r4
    g'4 g2. f4 e d c2
    d4 e f2 e g a4 b c2 c4 e
    d2 c g c4 g a e f d c1
}

pedal = \relative c {
  \global
      c2 e g2. g4 g g a( g a2) g r4
    g c g c e d e d2 g, r4
    g c g a e f d c2 r2
    c2 e g2. g4 g g a( g a2) g r4
    g c g c e d e d2 g, r4
    g c g a e f d c2 r2
    g'4 g2. f4 e d c2 r4
    g'4 g2. f4 e d c2
    d4 e f2 e g a4 b c2 c4 e
    d2 c g c4 g a e f d c1
}


\score {
  <<
  \new Voice = "m" << \preambleUp \melody >>
  \new Lyrics \lyricsto "m" \stropheEins
  \new Lyrics \lyricsto "m" \stropheZwei
  \new Lyrics \lyricsto "m" \stropheDrei
  \new PianoStaff <<
    %\set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \relative c' {\preambleUp
  <<
  \new Voice = "s" { \voiceOne \soprano }
  \\
  \new Voice ="a" { \voiceTwo \alto }
  >>
}
    \new Staff = "lower" \relative c {\preambleDown
  <<
   \new Voice = "t" { \voiceThree \tenor }
    \\
   \new Voice = "b" { \voiceFour \bass }
  >>
}
    \new Staff = "lower" \relative c {\preambleDown
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