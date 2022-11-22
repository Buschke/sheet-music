\version "2.22.2"
\language "english"

\header {
  dedication = "NN"
  title = "Etude No 11"
  subtitle = "NN"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "Frederic Chopin"
  arranger = "Fingering: Sven Buschke"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "Op. 25 No. 11"
  copyright = "© Sven Buschke"
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
  \key c \major
  \time 4/4
%  \tempo "Lento" 4=50
  \tempo "Lento" 4=200
}

right = \relative c'' {
  \global
  % Music follows here.
  e,4( 8. 16 4 f|
  e c e2)\fermata|
  <g, c e>4( <g c e>8. <g c e>16 <g c e>4 <a c f> |
  <g c e><a c> <<{e'2\fermata}\\{<f, c'>4<gs d'>\fermata}>>)
  \bar "||"
%  \tempo "Allegro con brio" 2=69
  \tempo "Allegro con brio" 2=10
  \ottava#1 \tuplet6/4{f''''16-5( c-2 e-4 a,-1 ds-3 c-2} \tuplet6/4{d a cs a c e,} \tuplet6/4{b' e, bf' c, a' e} \tuplet6/4{gs c, g' c, fs a,}|
  \ottava#0 \tuplet6/4{f' c e a, ds c} \tuplet6/4{d a cs a c e,} \tuplet6/4{b' e, bf' c, a' e} \tuplet6/4{gs c, g' c, fs a,)}|
  \tuplet6/4{f'(c e a, ds c} \tuplet6/4{d a cs a c e,} \tuplet6/4{b' e, bf' c, a' e} \tuplet6/4{gs c, g' c, fs a,}|
  \tuplet6/4{f' c e a, ds c} \tuplet6/4{\ottava #-1 d a cs a c e,} \tuplet6/4{b' e, bf' c, a' e} \tuplet6/4{gs c, a' e c' f,)}|
  \tuplet6/4{\ottava #0 e'( b d f e' b} \tuplet6/4{d f e' b d f,} \tuplet6/4{d' a c f, d a} \tuplet6/4{c f, d a c f,)}|
  \tuplet6/4{} \tuplet6/4{} \tuplet6/4{} \tuplet6/4{}|
  \tuplet6/4{} \tuplet6/4{} \tuplet6/4{} \tuplet6/4{}|
  \tuplet6/4{} \tuplet6/4{} e'4)
}

left = \relative c' {
  \global
  % Music follows here.
  r1|
  r1\fermata|
  c,4( 8. 16 4 f,|
  c f c b)\fermata
  a\sustainOn <a''-5 c-4 e-2>8.( 16-1 4-2 <a c f>\sustainOff|
  <a c e><e a c><a c e>2)|
  a,,4\sustainOn <a' e'>8.( 16 4 <a f'>\sustainOff|
  <a e'>) <<{r4 e2}\\{a,2.}>>|
  gs4\sustainOn <f'' d'>8.( 16 <f c'>4)\sustainOff <a,, a'>->(|
  <gs gs'>)\sustainOn
}

scoreA = \new PianoStaff \with {
    instrumentName = "Klavier"
    shortInstrumentName = "Kl."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  
scoreB = \new PianoStaff \with {
    instrumentName = "Klavier"
    shortInstrumentName = "Kl."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
%     \new Staff = "left" \with {
%       midiInstrument = "acoustic grand"
%     } { \clef bass \left }
  >>

clave = {\new DrumStaff <<
  \drummode {\global
    << {
         hh8 cl hh cl hh cl hh cl
    } \\ {
      bd4 sn4 sn4 sn
    } >>
  }
>>
}

\score {
%  {
%    \clave
    \scoreA
%  }

  \layout { }
%  \midi { }
}
\score {
  {
    \clave
    \scoreB
  }

%  \layout { }
  \midi { }
}
