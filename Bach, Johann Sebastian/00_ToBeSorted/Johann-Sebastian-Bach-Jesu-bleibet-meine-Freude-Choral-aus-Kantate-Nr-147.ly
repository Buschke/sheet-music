\version "2.22.2"
\language "english"

\header {
  dedication = "NN"
  title = "Jesu bleibet meine Freude"
  subtitle = "Choral aus Kantate Nr. 147"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "Johann Sebastian Bach"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "NN"
  copyright = "NN"
  tagline = "NN"
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
  \key g \major
  \time 3/4
  \tempo "Andante, in ruhiger Bewegung" 4=50
}

rightA = \relative c'' {
  \global
  % Music follows here.
  \tuplet 3/2 { r8\p g( a } \tuplet 3/2 { b d c } \tuplet 3/2 { c e d }
}

rightB = \relative c'' {
  \tuplet 3/2 { d8 g fs }\tuplet 3/2 { g d b) }\tuplet 3/2 { g a b }
  \tuplet 3/2 { c d e }\tuplet 3/2 { d c b }\tuplet 3/2 { a b g }
  \tuplet 3/2 { fs g a }\tuplet 3/2 { d, fs a }\tuplet 3/2 { c b a }
  \tuplet 3/2 { b g a }\tuplet 3/2 { b d c }\tuplet 3/2 { c e d }
  \tuplet 3/2 { d g fs }\tuplet 3/2 { g d b }\tuplet 3/2 { g a b }
  \tuplet 3/2 { e, d' c }\tuplet 3/2 { b a g }\tuplet 3/2 { d g fs }
  \tuplet 3/2 { g b d }\tuplet 3/2 { g d b }\tuplet 3/2 { g b d }
  <d, g b>2 <e g c>4
  <<{d'2}\\{a4( g)}>> <fs b d>4
  <<{c'2}\\{<g b>4( a)}>><d, g b>
  <d fs a><d fs a>\tuplet 3/2 { r8 c' b }
  \tuplet 3/2 { c a fs }\tuplet 3/2 { d fs a }\tuplet 3/2 { c b a }
  <d, g b>2 <e g c>4
  <<{d'2}\\{g,4( d)}>> <g b>4
  <<{a8 b16 c b4 a}\\{e4 fs8 e fs4}>>
}

rightC = \relative c'' {
  g4~ \tuplet 3/2 { g8 d'( c }\tuplet 3/2 { c e d) }
}

rightD = \relative c'' {
  g4~ \tuplet 3/2 { g8 d'( c }\tuplet 3/2 { c e d }
}

rightE = \relative c'' {
  \tuplet 3/2 { d g fs }\tuplet 3/2 { g d b) }\tuplet 3/2 { g( a b }
  \tuplet 3/2 { c d e }\tuplet 3/2 { d c b }\tuplet 3/2 { a b g }
  \tuplet 3/2 { fs g a }\tuplet 3/2 { d, fs a }\tuplet 3/2 { c b a }
  \tuplet 3/2 { b) g( a }\tuplet 3/2 { b d c }\tuplet 3/2 { c e d }
  \tuplet 3/2 { d g fs }\tuplet 3/2 { g d b) }\tuplet 3/2 { g( a b }
  \tuplet 3/2 { e, d' c }\tuplet 3/2 { b a g }\tuplet 3/2 { d g fs) }
  <<{\tuplet 3/2 { g( b d }\tuplet 3/2 { g d b }\tuplet 3/2 { g b cs) }}\\{g2 r4}>>
  <d fs a d>2\mf<d gs b>4
  <e a c>2<f a c>4
  <<{b4. c16 d}\\{<f, a>2}>><e gs b>4
  <c e a><c e a>\tuplet 3/2 { r8\p f' e }
  \tuplet 3/2 { e a gs }\tuplet 3/2 { a e c }\tuplet 3/2 { a b c }
  \tuplet 3/2 { f e d }\tuplet 3/2 { c b a }\tuplet 3/2 { e a gs }
  <e a c>2\mf<g d'>4
  <<{e'2}\\{<g, c>4( c)}>><g c e>
  <<{d'4. e16 f}\\{<f, a>2}>><g b d>4
  <e g c>--<e g c>--\tuplet 3/2 { g8\p a( bf }
  \tuplet 3/2 { a c b }\tuplet 3/2 { c a f }\tuplet 3/2 { d e f }
  \tuplet 3/2 { e c d }\tuplet 3/2 { e g fs }\tuplet 3/2 { g b a) }
  <d, g b>2\f <e g c>4
  <<{d'2}\\{a4( g)}>><fs b d>4
  <<{c'2}\\{<g b>4( a)}>><d, g b>4
  <d fs a><d fs a>\tuplet 3/2 { r8 c'( b }
  \tuplet 3/2 { c a fs }\tuplet 3/2 { d fs a }\tuplet 3/2 { c b a) }
  <d, g b>2<e g c>4
  <<{d'2}\\{g,4( d)}>><g b>
  <<{a8 b16 c a2}\\{e4 fs8( e) fs4}>>
  <<{\tuplet 3/2 { g8( b d }\tuplet 3/2 { g d b }\tuplet 3/2 { g b d) }}\\{g,2~ \tuplet 3/2 { g8 r r }}>>
  \tuplet 3/2 { (f'\mp d b }\tuplet 3/2 { g b d }\tuplet 3/2 { e c a }
  \tuplet 3/2 { fs a c }\tuplet 3/2 { d b g }\tuplet 3/2 { e g b }
  \tuplet 3/2 { c a fs }\tuplet 3/2 { d fs a }\tuplet 3/2 { c b a }
  \tuplet 3/2 { b\p) g( a }\tuplet 3/2 { b d c }\tuplet 3/2 { c e d }
  \tuplet 3/2 { d g fs }\tuplet 3/2 { g d b) }\tuplet 3/2 { g( a b }
  \tuplet 3/2 { c d e }\tuplet 3/2 { d c b }\tuplet 3/2 { a b g }
  \tuplet 3/2 { fs g a }\tuplet 3/2 { d, fs a }\tuplet 3/2 { c b a }
  \tuplet 3/2 { b\pp) g( a }\tuplet 3/2 { b d c }\tuplet 3/2 { c e d }
  \tuplet 3/2 { d g fs }\tuplet 3/2 { g d b) }\tuplet 3/2 { g( a b }
  \tuplet 3/2 { e, d' c }\tuplet 3/2 { b a g }\tuplet 3/2 { d g fs }
  g2.)\ppp
}

leftA = \relative c' {
  \global
  % Music follows here.
  <g b d>4 <g b d><g c e>
}

leftB = \relative c' {
  <g d'><g b e> \tuplet 3/2 { <g b e>4<g b d>8 }
  \tuplet 3/2 { <a c e>4( fs8) }
  <g d'>4<e c' e>
  <fs a d><a d><fs a d>
  <g b d><g b e><g c e>
  <g d'><g b e><g b e>
  \tuplet 3/2 { <a c e>4( fs8) }<g b e>4\tuplet 3/2 { <a d>4(<a c d>8) }
  <g b d>2.
  <<{<b d>2}\\{g4( fs)}>><e g c>4
  <<{<a d>2}\\{fs4( e)}>><fs b d>4
  <<{c'2}\\{<e, g>4( <fs a>)}>><g b d>
  <fs a d><fs a d>2~
  <fs a d>2.
  <<{<b d>2}\\{g4( fs)}>><e g c>4
  <g d'><g d'><g b e>
  <a c e>
  <<{d8 b}\\{d,4}>><fs c' d>
}

leftC = \relative c' {
  <g b d>2<g c e>4
}

leftD = \relative c' {
  <g b d>2<g c e>4
}

leftE = \relative c' {
  <g d>4<g b e>\tuplet 3/2 { <g b e>4( <g b d>8) }
  \tuplet 3/2 { <a c e>4( fs8) }<g d'>4<e c' e>
  <fs a d><a d><fs a d>
  <g b d><g b e><g c e>
  <g d'><g b e><g b e>
  \tuplet 3/2 { <a c e>4( fs8) }<g b e>4\tuplet 3/2 { <a d>4<a c d>8 }
  <g b d>2~ \tuplet 3/2 { <g b d>4( <g a cs>8) }
  <fs a d>2<gs b d>4
  <a c>2<a c f>4
  <a d f>2<gs b e>4
  <a c e>2<a d f>4
  <a e'><a c f><a c f>
  <a d f><a c fs>\tuplet 3/2 { <a d e>4( <b d e>8) }
  <a c e>2<b d>4
  <g c e><a c e><g c e>
  <f a d>2<g b d>4
  <g c e><g c e>2
  <a c f>4<a d f><g b d>
  <g c e>\tuplet 3/2 { r4 <fs a d>8 }\tuplet 3/2 { <g d'>4( <fs a d>8) }
  <<{<b d>2}\\{g4( fs)}>><e g c>4
  <<{<a d>2}\\{fs4( e)}>><fs b d>4
  <<{c'2}\\{<e, g>4(<fs a>)}>><g b d>
  <fs a d><fs a d>2~
  <fs a d>2.
  <<{<b d>2}\\{g4( fs)}>><e g c>
  <g d'><g d'><g b e>
  <a c e><<{d8( c)}\\{d,4}>><fs c' d>
  <<{<b d>2.~}\\{g2.~}>>
  <<{<b d>2<c e>4}\\{g2.~}>>
  <<{<a c>4<b d>(<b e~>)}\\{g2.}>>
  <<{e'4( d)}\\{<a c>2}>>\tuplet 3/2 { <a c d>4(<fs c' d>8) }
  <g b d>4<g b d><g c e>
  <g d'><g b e>\tuplet 3/2 { <g b e><g b d>8 }
  <<{<c e>4}\\{\tuplet 3/2 { a4( fs8) }}>><g d'>4<e c' e>
  <fs a d><a d><fs a d>
  <g b d><g b e><g c e>
  <g d'><g b e><g b e>
  <<{<c e>4}\\{\tuplet 3/2 { a4( fs8) }}>><g b e>4\tuplet 3/2 { <a d>(<a c d>8) }
  <g b d>2.
}

pedalA = \relative c {
  \global
  % Music follows here.
  g4-- g-- e --
}

pedalB = \relative c {
  b e, e
  a b c
  d, fs d
  g e c
  b' e, d
  c cs d
  g2.
  g4 fs e
  fs e d
  e fs g
  d d2~
  d2.
  g4 fs e
  b' b e,
  c d d
}

pedalC = \relative c {
  g g e
}

pedalD = \relative c {
  g g e
}

pedalE = \relative c {
  b e, e
  a b c
  d, fs d
  g e c
  b' e, d
  c cs d
  g g \tuplet 3/2 { fs4( e8) }
  d4 c' b
  a a8 g f e
  d4 b' e,
  a f d
  c f e
  d ds e
  a a b
  c a e
  f d g
  c, c2
  f4 d g
  c, \tuplet 3/2 { r4 c'8 }\tuplet 3/2 { b4( d,8) }
  g4 fs e
  fs e d
  e fs g
  d d2~
  d2.
  g4 fs e
  b' b e,
  c d d
  g2.~
  g2.~
  g2.~
  g2.~
  g4 g e
  b' e, e
  a b c
  d, fs d
  g e c
  b' e, d
  c cs d
  g2.
  \bar "|."
}

% midi count in
% clave = {\new DrumStaff <<
%   \drummode {\global
%    % bd4 sn4
%     << {
% %      \repeat unfold 16 cl16
% %      \repeat unfold 16 hh16
%         hh16 cl hh cl hh cl hh cl hh cl hh cl hh cl hh cl hh cl
%     } \\ {
%       bd4. sn4. bd4.
%     } >>
%   }
% >>
% }
clave = {\new DrumStaff <<
  \drummode {\global
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
%         hh8 cl hh cl hh cl
        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
    } \\ {
      bd4 sn4 sn4
    } >>
  }
>>
}

\score {
  <<
    \new PianoStaff \with {
      instrumentName = "Orgel"
      shortInstrumentName = "Org."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "church organ"
      } {\rightA \repeat volta 2 {\rightB} \alternative {\rightC \rightD} \rightE }
      \new Staff = "left" \with {
        midiInstrument = "church organ"
      } { \clef bass {\leftA \repeat volta 2 {\leftB} \alternative {\leftC \leftD} \leftE} }
    >>
    \new Staff = "pedal" \with {
      midiInstrument = "church organ"
    } { \clef bass {\pedalA \repeat volta 2 {\pedalB} \alternative {\pedalC \pedalD} \pedalE} }
  >>
  \layout { }
%  \midi { }
}

\score {
  {
    \clave
    <<
      \new PianoStaff \with {
        instrumentName = "Orgel"
        shortInstrumentName = "Org."
      } <<
        \new Staff = "right" \with {
          midiInstrument = "church organ"
        } {\rightA \repeat volta 2 {\rightB} \alternative {\rightC \rightD} \rightE }
        \new Staff = "left" \with {
          midiInstrument = "church organ"
        } { \clef bass {\leftA \repeat volta 2 {\leftB} \alternative {\leftC \leftD} \leftE} }
      >>
      \new Staff = "pedal" \with {
        midiInstrument = "church organ"
      } { \clef bass {\pedalA \repeat volta 2 {\pedalB} \alternative {\pedalC \pedalD} \pedalE} }
    >>
  }
%  \layout { }
  \midi { }
}
