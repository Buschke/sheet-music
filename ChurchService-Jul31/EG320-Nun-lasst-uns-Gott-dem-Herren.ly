\header {
  title = "Nun lasst uns Gott dem Herren"
  subtitle = "EG 320"
  composer = "NN"
  arranger = "Sven Buschke"
  opus = "EG 320"
  copyright = "© Sven Buschke, 5. Juli 2022"
  tagline = ""
}

global = {
  \key g \major
  \time 3/2
  \tempo 2 = 65
}

preambleUp = {\clef treble \global}
preambleDown = {\clef bass \global}
preamblePedal={\clef bass \global}

melody = \relative c' {
  \global
  \partial 2
  g'2 g fis4 e2 g4 a2 g g
  g a4 fis2 d4 g2 fis fis g g4 a2 b4
  a2 a b c b4 a2 g4 a2 g
  \bar "|."
}

% STROPHE 2

stropheEins = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "1. "
  Nun lasst uns Gott dem Her -- ren Dank sa -- gen und ihn eh -- ren für al -- le sei -- ne Ga -- ben, die wir emp -- fan -- gen ha -- ben.
}

stropheZwei = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "2. "
  Den Leib, die Seel, das Le -- ben hat er al -- lein uns ge -- ben; die -- sel -- ben zu be -- wah -- ren, tut er nie et -- was spa -- ren.
}

stropheDrei = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "3. "
  Nahr -- ung gibt er dem Lei -- be; die See -- le muss auch blei -- ben, wie -- wohl töd -- li -- che Wun -- den sind kom -- men von der Sün -- den.
}

stropheVier = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "4. "
  Ein Arzt ist uns ge -- ge -- ben, der sel -- ber ist das Le -- ben; Chris -- tus, für uns ge -- stor -- ben, der hat das Heil er -- wor -- ben.
}

stropheFuenf = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "5. "
  Sein Wort, sein Tauf, sein Nacht -- mahl dient wi -- der al -- les Un -- heil; der Hei -- lig Geist im Glau -- ben lehrt uns da -- auf ver -- trau -- en.
}

stropheSechs = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "6. "
  Durch ihn ist uns ver -- ge -- ben die Sünd, ge -- schenkt das Le -- ben. Im Him -- mel solln wir ha -- ben, o Gott, wie gro -- ße Ga -- ben!
}

stropheSieben = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "7. "
  Wir bit -- ten dei -- ne Gü -- te, wollst uns hin -- fort be -- hü -- ten, uns Gro -- ße mit den Klei -- nen; du kannst's nicht bö -- se mei -- nen.
}

stropheAcht = \lyricmode {
  \set fontSize = #-.5
  \set stanza = "8. "
  Er -- halt uns in der Wahr -- heit, gib e  -- wig -- liche Frei -- heit, zu prei -- sen dei  - nen Na -- men durch Je -- sus Chris -- tus. A -- men.
}

soprano = \relative c' {
  \global
  \partial 2
  g'2 g fis4 e2 g4 a2 g g
  g a4 fis2 d4 g2 fis fis g g4 a2 b4
  a2 a b c b4 a2 g4 a2 g
}

alto = \relative c' {
  \global
  \partial 2
  g'2 g fis4 e2 g4 a2 g g
  g a4 fis2 d4 g2 fis fis g g4 a2 b4
  a2 a b c b4 a2 g4 a2 g
}

tenor = \relative c {
  \global
  \partial 2
  g'2 g fis4 e2 g4 a2 g g
  g a4 fis2 d4 g2 fis fis g g4 a2 b4
  a2 a b c b4 a2 g4 a2 g
}

bass = \relative c {
  \global
  \partial 2
  g'2 g fis4 e2 g4 a2 g g
  g a4 fis2 d4 g2 fis fis g g4 a2 b4
  a2 a b c b4 a2 g4 a2 g
}

pedal = \relative c {
  \global
  \partial 2
  g'2 g fis4 e2 g4 a2 g g
  g a4 fis2 d4 g2 fis fis g g4 a2 b4
  a2 a b c b4 a2 g4 a2 g
}


\score {
  <<
    \new Voice = "m" << \preambleUp \melody >>
    \new Lyrics \lyricsto "m" \stropheEins
    \new Lyrics \lyricsto "m" \stropheZwei
    \new Lyrics \lyricsto "m" \stropheDrei
    \new Lyrics \lyricsto "m" \stropheVier
    \new Lyrics \lyricsto "m" \stropheFuenf
    \new Lyrics \lyricsto "m" \stropheSechs
    \new Lyrics \lyricsto "m" \stropheSieben
    \new Lyrics \lyricsto "m" \stropheAcht
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