\version "2.22.2"
\language "deutsch"

\header {
  dedication = "NN"
  title = "Kirchenmusiker C-Ausbildung"
  subtitle = "Harmonisieren I-IV-V-VII - Dur"
  subsubtitle = "Hausaufgaben KW 43-2022"
  instrument = "Orgel"
  composer = "Sven Buschke"
  arranger = "Unterricht bei: Andreas Lang"
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
  \time 3/4
  \tempo "Andante" 4=50
}

scoreARight = \relative c'' {
  \global
  % Music follows here.
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % C-Dur
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key c \major
  g^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"C-Dur - Sopran solistisch"g g |
  g a g |
  g\( f\)\( g\) |
  \breathe
  c,^"Oktavlage I-V-I, I-IV-I, I-VII-I" h c |
  c c c |
  c h c |
  \breathe
  e^"Terzlage I-V-I, I-IV-I, I-VII-I" d e |
  e f e |
  e8[ d e] e[ f e] |
  \break
  g4^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage" g g |
  g a g |
  r4 r r |
  \breathe
  c^"Oktavlage I-V-I, I-IV-I, I-VII-I" h c |
  c c c |
  c h c |
  \breathe
  e,^"Terzlage I-V-I, I-IV-I, I-VII-I" d e |
  e f e |
  e8[ d e] e[ f e] |
  \break
  <e g>4^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"C-Dur - Tenor solistisch"<d g><e g>
  <e g><f a><e g> |
  <e g\(><d f\)\(><e g\)> |
  \breathe
  <g c>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <g h><g c> |
  <g c><a c><g c> |
  <g c><f h><g c> |
  \breathe
  <c, e>^"Terzlage I-V-I, I-IV-I, I-VII-I" <h d><c e> |
  <c e><c f><c e> |
  <c e>8[<h d><c e>]<c e>[<h f'><c e>] |
  \break
  <c g'>4^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<h g'><c g'> |
  <c g'><c a'><c g'> |
  r4 r r |
  \breathe
  <e c'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <d h'><e c'> |
  <e c'><f c'><e c'> |
  <e c'><d h'><e c'> |
  \breathe
  <g e'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <g d'><g e'> |
  <g e'><a f'><g e'> |
  <g\( e'>8[<f\)\( d'><g\) e'>]<g\( e'>[<f\)\( d'><g\) e'>] |
  \break
  \bar "|."  
}

scoreALeft = \relative c' {
  \global
  % Music follows here.
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % C-Dur
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key c \major
  % Enge Lage - Sopran solistisch
  <c e>4 <h d> <c e> |
  <c e> <c f> <c e> |
  <c\( e> <h\)\( d> <c\) e> |
  \breathe
  <e, g><d g><e g> |
  <e g><f a><e g> |
  <e g><d f><e g> |
  \breathe
  <g c><g h><g c> |
  <g c><a c><g c> |
  <g c>8[<f h><g c>]<g c>[<f h><g c>] |
  \break
  % Weite Lage
  <e c'>4<d h'><e c'> |
  <e c'><f c'><e c'> |
  r4 r r |
  \breathe
  <g e'><g d'><g e'> |
  <g e'><a f'><g e'> |
  <g e'><f d'><g e'> |
  \breathe
  <c, g'><h g'><c g'> |
  <c g'><c a'><c g'> |
  <c g'>8\([<h  f'>\)\(<c g'>\)]<c g'>\([<h f'>\)\(<c g'>\)] |
  \break
  % Enge Lage - Tenor solistisch
  c'4 h c |
  c c c |
  c\( h\)\( c\) |
  \breathe
  e d e |
  e f e |
  e d e |
  \breathe
  g, g g |
  g a g |
  g8[ f g] g[ f g] |
  \break
  % Weite Lage
  e4 d e |
  e f e |
  r4 r r |
  \breathe
  g g g |
  g a g |
  g f g |
  \breathe
  c h c  |
  c c c |
  c8[\( h\)\( c\)] c\([ h\)\( c\)] |
  \break
  \bar "|."  
}

scoreAPedal = \relative c {
  \global
  % Music follows here.
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % C-Dur
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key c \major
  % Enge Lage - Sopran solistisch
  c4 g c |
  c f c |
  c d c |
  \breathe
  c g c |
  c f c |
  c d c |
  \breathe
  c g c |
  c f c |
  c8[ d c] c[ d c] |
  \break
  % Weite Lage
  c4 g c |
  c f c |
  r4 r r  |
  \breathe
  c g c |
  c f c |
  c d c |
  \breathe
  c g c |
  c f c |
  c8[ d c] c[ d c] |
  \break
  % Enge Lage - Tenor solistisch
  c4 g c |
  c f c |
  c d c |
  \breathe
  c g c |
  c f c |
  c d c |
  \breathe
  c g c |
  c f c |
  c8[ d c] c[ d c] |
  \break
  % Weite Lage
  c4 g c |
  c f c |
  r4 r r  |
  \breathe
  c g c |
  c f c |
  c d c |
  \breathe
  c g c |
  c f c |
  c8[ d c] c[ d c] |
  \break
  \bar "|."  
}

scoreAChordNames = \chordmode {
  \global
  % Chords follow here.
%   c4 g c
%   c f c
%   c h c    
}

scoreAFigBass = \figuremode {
  \global
  % Figures follow here.
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % C-Dur
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s8 <6> s s <6> s |
  s2. s |
  s4 s s |
  s2. s |
  s4 <6> s |
  s2. s |
  s8 <6> s s <6> s |
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s8 <6> s s <6> s |
  s2. s |
  s4 s s |
  s2. s |
  s4 <6> s |
  s2. s |
  s8 <6> s s <6> s |
}

claveA = {\new DrumStaff <<
  \drummode {\global
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
         hh8 cl hh cl hh cl
%        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
    } \\ {
      bd4 sn4 sn4
    } >>
  }
>>
}

scoreAOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreARight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreALeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreAPedal }
>>

scoreAChordsPart = \new ChordNames \scoreAChordNames

scoreABassFiguresPart = \new FiguredBass \scoreAFigBass

\bookpart {
  \score {
%    {
%    \claveA
    <<
      \scoreAOrganPart
      \scoreAChordsPart
      \scoreABassFiguresPart
    >>
%    }
    \layout { }
%    \midi { }
  }
  \score {
    {
      \claveA
      <<
        \scoreAOrganPart
        \scoreAChordsPart
        \scoreABassFiguresPart
      >>
    }
%    \layout { }
    \midi { }
  }
}

scoreBRight = \relative c'' {
  \global
  % Music follows here.
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % a-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key a \minor
  <c, e>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"a-Moll"<h e><c e> |
  <c e><f d><c e> |
  <c e><h d><c e> |
  \breathe
  <e a>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <g h><e a> |
  <e a><a c><e a> |
  <e a><f h><e a> |
  \breathe
  <a c>^"Terzlage I-V-I, I-IV-I, I-VII-I" <g h><a c> |
  <a c><a d><a c> |
  <a c><g h><a c> |
  \break
  <a e'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<g e'><a e'> |
  <a e'><a f'><a e'> |
  <a e'><g d'><a e'> |
  \breathe
  <c, a'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <d h'><c a'> |
  <c a'><f c'><c a'> |
  <c a'><d h'><c a'> |
  \breathe
  <e c'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <e h'><e c'> |
  <e c'><f d'><e c'> |
  <e c'><d h'><e c'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % e-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key e \minor
  <g h>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"e-Moll"<fis h><g h> |
  <g h><c a><g h> |
  <g h><fis a><g h> |
  \breathe
  <h e>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <d fis><h e> |
  <h e><e g><h e> |
  <h e><c fis><h e> |
  \breathe
  <e g>^"Terzlage I-V-I, I-IV-I, I-VII-I" <d fis><e g> |
  <e g><e a><e g> |
  <e g><d fis><e g> |
  \break
  <e h'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<d h'><e h'> |
  <e h'><e c'><e h'> |
  <e h'><d a'><e h'> |
  \breathe
  <g, e'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <a fis'><g e'> |
  <g e'><c g'><g e'> |
  <g e'><a fis'><g e'> |
  \breathe
  <h g'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <h fis'><h g'> |
  <h g'><c a'><h g'> |
  <h g'><a fis'><h g'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % h-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key h \minor
  <d, fis>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"h-Moll"<cis fis><d fis> |
  <d fis><g e><d fis> |
  <d fis><cis e><d fis> |
  \breathe
  <fis h>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <a cis><fis h> |
  <fis h><h d><fis h> |
  <fis h><g cis><fis h> |
  \breathe
  <h d>^"Terzlage I-V-I, I-IV-I, I-VII-I" <a cis><h d> |
  <h d><h e><h d> |
  <h d><a cis><h d> |
  \break
  <h fis'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<a fis'><h fis'> |
  <h fis'><h g'><h fis'> |
  <h fis'><a e'><h fis'> |
  \breathe
  <d, h'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <e cis'><d h'> |
  <d h'><g d'><d h'> |
  <d h'><e cis'><d h'> |
  \breathe
  <fis d'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <fis cis'><fis d'> |
  <fis d'><g e'><fis d'> |
  <fis d'><e cis'><fis d'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % fis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key fis \minor
  <a cis>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"fis-Moll"<gis cis><a cis> |
  <a cis><d h><a cis> |
  <a cis><gis h><a cis> |
  \breathe
  <cis fis>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <e gis><cis fis> |
  <cis fis><fis a><cis fis> |
  <cis fis><d gis><cis fis> |
  \breathe
  <fis a>^"Terzlage I-V-I, I-IV-I, I-VII-I" <e gis><fis a> |
  <fis a><fis h><fis a> |
  <fis a><e gis><fis a> |
  \break
  <fis, cis'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<e cis'><fis cis'> |
  <fis cis'><fis d'><fis cis'> |
  <fis cis'><e h'><fis cis'> |
  \breathe
  <a, fis'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <h gis'><a fis'> |
  <a fis'><d a'><a fis'> |
  <a fis'><h gis'><a fis'> |
  \breathe
  <cis a'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <cis gis'><cis a'> |
  <cis a'><d h'><cis a'> |
  <cis a'><h gis'><cis a'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % cis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key cis \minor
  <e gis>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"cis-Moll"<dis gis><e gis> |
  <e gis><a fis><e gis> |
  <e gis><dis fis><e gis> |
  \breathe
  <gis cis>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <h dis><gis cis> |
  <gis cis><cis e><gis cis> |
  <gis cis><a dis><gis cis> |
  \breathe
  <cis e>^"Terzlage I-V-I, I-IV-I, I-VII-I" <h dis><cis e> |
  <cis e><cis fis><cis e> |
  <cis e><h dis><cis e> |
  \break
  <cis gis'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<h gis'><cis gis'> |
  <cis gis'><cis a'><cis gis'> |
  <cis gis'><h fis'><cis gis'> |
  \breathe
  <e, cis'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <fis dis'><e cis'> |
  <e cis'><a e'><e cis'> |
  <e cis'><fis dis'><e cis'> |
  \breathe
  <gis e'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <gis dis'><gis e'> |
  <gis e'><a fis'><gis e'> |
  <gis e'><fis dis'><gis e'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % gis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key gis \minor
  <h, dis>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"gis-Moll"<ais dis><h dis> |
  <h dis><e cis><h dis> |
  <h dis><ais cis><h dis> |
  \breathe
  <dis gis>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <fis ais><dis gis> |
  <dis gis><gis h><dis gis> |
  <dis gis><e ais><dis gis> |
  \breathe
  <gis h>^"Terzlage I-V-I, I-IV-I, I-VII-I" <fis ais><gis h> |
  <gis h><gis cis><gis h> |
  <gis h><fis ais><gis h> |
  \break
  <gis dis'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<fis dis'><gis dis'> |
  <gis dis'><gis e'><gis dis'> |
  <gis dis'><fis cis'><gis dis'> |
  \breathe
  <h, gis'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <cis ais'><h gis'> |
  <h gis'><e h'><h gis'> |
  <h gis'><cis ais'><h gis'> |
  \breathe
  <dis h'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <dis ais'><dis h'> |
  <dis h'><e cis'><dis h'> |
  <dis h'><cis ais'><dis h'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % dis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key dis \minor
  <fis ais>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"dis-Moll"<eis ais><fis ais> |
  <fis ais><h gis><fis ais> |
  <fis ais><eis gis><fis ais> |
  \breathe
  <ais dis>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <cis eis><ais dis> |
  <ais dis><dis fis><ais dis> |
  <ais dis><h eis><ais dis> |
  \breathe
  <dis fis>^"Terzlage I-V-I, I-IV-I, I-VII-I" <cis eis><dis fis> |
  <dis fis><dis gis><dis fis> |
  <dis fis><cis eis><dis fis> |
  \break
  <dis ais'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<cis ais'><dis ais'> |
  <dis ais'><dis h'><dis ais'> |
  <dis ais'><cis gis'><dis ais'> |
  \breathe
  <fis, dis'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <gis eis'><fis dis'> |
  <fis dis'><h fis'><fis dis'> |
  <fis dis'><gis eis'><fis dis'> |
  \breathe
  <ais fis'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <ais eis'><ais fis'> |
  <ais fis'><h gis'><ais fis'> |
  <ais fis'><gis eis'><ais fis'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % es-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key es \minor
  <ges b>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"es-Moll"<f b><ges b> |
  <ges b><ces as><ges b> |
  <ges b><f as><ges b> |
  \breathe
  <b es>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <des f><b es> |
  <b es><es ges><b es> |
  <b es><ces f><b es> |
  \breathe
  <es ges>^"Terzlage I-V-I, I-IV-I, I-VII-I" <des f><es ges> |
  <es ges><es as><es ges> |
  <es ges><des f><es ges> |
  \break
  <es, b'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<des b'><es b'> |
  <es b'><es ces'><es b'> |
  <es b'><des as'><es b'> |
  \breathe
  <ges, es'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <as f'><ges es'> |
  <ges es'><ces ges'><ges es'> |
  <ges es'><as f'><ges es'> |
  \breathe
  <b ges'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <b f'><b ges'> |
  <b ges'><ces as'><b ges'> |
  <b ges'><as f'><b ges'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % b-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \minor
  <des f>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"b-Moll"<c f><des f> |
  <des f><ges es><des f> |
  <des f><c es><des f> |
  \breathe
  <f b>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <as c><f b> |
  <f b><b des><f b> |
  <f b><ges c><f b> |
  \breathe
  <b des>^"Terzlage I-V-I, I-IV-I, I-VII-I" <as c><b des> |
  <b des><b es><b des> |
  <b des><as c><b des> |
  \break
  <b f'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<as f'><b f'> |
  <b f'><b ges'><b f'> |
  <b f'><as es'><b f'> |
  \breathe
  <des, b'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <es c'><des b'> |
  <des b'><ges des'><des b'> |
  <des b'><es c'><des b'> |
  \breathe
  <f des'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <f c'><f des'> |
  <f des'><ges es'><f des'> |
  <f des'><es c'><f des'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % f-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key f \minor
  <as, c>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"f-Moll"<g c><as c> |
  <as c><des b><as c> |
  <as c><g b><as c> |
  \breathe
  <c f>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <es g><c f> |
  <c f><f as><c f> |
  <c f><des g><c f> |
  \breathe
  <f as>^"Terzlage I-V-I, I-IV-I, I-VII-I" <es g><f as> |
  <f as><f b><f as> |
  <f as><es g><f as> |
  \break
  <f c'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<es c'><f c'> |
  <f c'><f des'><f c'> |
  <f c'><es b'><f c'> |
  \breathe
  <as f'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <b g'><as f'> |
  <as f'><des as'><as f'> |
  <as f'><b g'><as f'> |
  \breathe
  <c as'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <c g'><c as'> |
  <c as'><des b'><c as'> |
  <c as'><b g'><c as'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % c-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key c \minor
  <es, g>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"c-Moll"<d g><es g> |
  <es g><as f><es g> |
  <es g><d f><es g> |
  \breathe
  <g c>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <b d><g c> |
  <g c><c es><g c> |
  <g c><as d><g c> |
  \breathe
  <c es>^"Terzlage I-V-I, I-IV-I, I-VII-I" <b d><c es> |
  <c es><c f><c es> |
  <c es><b d><c es> |
  \break
  <c g'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<b g'><c g'> |
  <c g'><c as'><c g'> |
  <c g'><b f'><c g'> |
  \breathe
  <es, c'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <f d'><es c'> |
  <es c'><as es'><es c'> |
  <es c'><f d'><es c'> |
  \breathe
  <g es'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <g d'><g es'> |
  <g es'><as f'><g es'> |
  <g es'><f d'><g es'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % g-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key g \minor
  <b, d>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"g-Moll"<a d><b d> |
  <b d><es c><b d> |
  <b d><a c><b d> |
  \breathe
  <d g>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <f a><d g> |
  <d g><g b><d g> |
  <d g><es a><d g> |
  \breathe
  <g b>^"Terzlage I-V-I, I-IV-I, I-VII-I" <f a><g b> |
  <g b><g c><g b> |
  <g b><f a><g b> |
  \break
  <g d'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<f d'><g d'> |
  <g d'><g es'><g d'> |
  <g d'><f c'><g d'> |
  \breathe
  <b, g'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <c a'><b g'> |
  <b g'><es b'><b g'> |
  <b g'><c a'><b g'> |
  \breathe
  <d b'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <d a'><d b'> |
  <d b'><es c'><d b'> |
  <d b'><c a'><d b'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % d-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key d \minor
  <f a>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"d-Moll"<e a><f a> |
  <f a><b g><f a> |
  <f a><e g><f a> |
  \breathe
  <a, d>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <c e><a d> |
  <a d><d f><a d> |
  <a d><b e><a d> |
  \breathe
  <d f>^"Terzlage I-V-I, I-IV-I, I-VII-I" <c e><d f> |
  <d f><d g><d f> |
  <d f><c e><d f> |
  \break
  <d a'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<c a'><d a'> |
  <d a'><d b'><d a'> |
  <d a'><c g'><d a'> |
  \breathe
  <f, d'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <g e'><f d'> |
  <f d'><b f'><f d'> |
  <f d'><g e'><f d'> |
  \breathe
  <a f'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <a e'><a f'> |
  <a f'><b g'><a f'> |
  <a f'><g e'><a f'> |
  \bar "|."
}

scoreBLeft = \relative c' {
  \global
  % Music follows here.
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % a-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key a \minor
  % Enge Lage
  a g a |
  a a a |
  a g a |
  \breathe
  c d c |
  c f c |
  c d c |
  \breathe
  e e e |
  e f e |
  e d e |
  \break
  % Weite Lage
  c h c |
  c d c |
  c h c |
  \breathe
  e, g e |
  e a e |
  e f e |
  \breathe
  a g a |
  a a a |
  a g a |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % e-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key e \minor
  % Enge Lage
  e d e |
  e e e |
  e d e |
  \breathe
  g a g |
  g c g |
  g a g |
  \breathe
  h h h |
  h c h |
  h a h |
  \break
  % Weite Lage
  g fis g |
  g a g |
  g fis g |
  \breathe
  h, d h |
  h e h |
  h c h |
  \breathe
  e d e |
  e e e |
  e d e |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % h-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key h \minor
  % Enge Lage
  h' a h |
  h h h |
  h a h |
  \breathe
  d, e d |
  d g d |
  d e d |
  \breathe
  fis fis fis |
  fis g fis |
  fis e fis |
  \break
  % Weite Lage
  d cis d |
  d e d |
  d cis d |
  \breathe
  fis, a fis |
  fis h fis |
  fis g fis |
  \breathe
  h a h |
  h h h |
  h a h |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % fis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key fis \minor
  % Enge Lage
  fis' e fis |
  fis fis fis |
  fis e fis |
  \breathe
  a h a |
  a d a |
  a h a |
  \breathe
  cis cis cis |
  cis d cis |
  cis h cis |
  \break
  % Weite Lage
  a gis a |
  a h a |
  a gis a |
  \breathe
  cis, e cis |
  cis fis cis |
  cis d cis |
  \breathe
  fis e fis |
  fis fis fis |
  fis e fis |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % cis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key cis \minor
  % Enge Lage
  cis h cis |
  cis cis cis |
  cis h cis |
  \breathe
  e fis e |
  e a e |
  e fis e |
  \breathe
  gis gis gis |
  gis a gis |
  gis fis gis |
  \break
  % Weite Lage
  e dis e |
  e fis e |
  e dis e |
  \breathe
  gis, h gis |
  gis cis gis |
  gis a gis |
  \breathe
  cis h cis |
  cis cis cis |
  cis h cis |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % gis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key gis \minor
  % Enge Lage
  gis fis gis |
  gis gis gis |
  gis fis gis |
  \breathe
  h cis h |
  h e h |
  h cis h |
  \breathe
  dis dis dis |
  dis e dis |
  dis cis dis |
  \break
  % Weite Lage
  h ais h |
  h cis h |
  h ais h |
  \breathe
  dis, fis dis |
  dis gis dis |
  dis e dis |
  \breathe
  gis fis gis |
  gis gis gis |
  gis fis gis |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % dis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key dis \minor
  % Enge Lage
  dis cis dis |
  dis dis dis |
  dis cis dis |
  \breathe
  fis gis fis |
  fis h fis |
  fis gis fis |
  \breathe
  ais ais ais |
  ais h ais |
  ais gis ais |
  \break
  % Weite Lage
  fis' eis fis |
  fis gis fis |
  fis eis fis |
  \breathe
  ais, cis ais |
  ais dis ais |
  ais h ais |
  \breathe
  dis cis dis |
  dis dis dis |
  dis cis dis |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % es-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key es \minor
  % Enge Lage
  es des es |
  es es es |
  es des es |
  \breathe
  ges as ges |
  ges ces ges |
  ges as ges |
  \breathe
  b b b |
  b ces b |
  b as b |
  \break
  % Weite Lage
  ges f ges |
  ges as ges |
  ges f ges |
  \breathe
  b, des b |
  b es b |
  b ces b |
  \breathe
  es des es |
  es es es |
  es des es |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % b-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \minor
  % Enge Lage
  b' as b |
  b b b |
  b as b |
  \breathe
  des es des |
  des ges des |
  des es des |
  \breathe
  f f f |
  f ges f |
  f es f |
  \break
  % Weite Lage
  des, c des |
  des es des |
  des c des |
  \breathe
  f, as f |
  f b f |
  f ges f |
  \breathe
  b as b |
  b b b |
  b as b |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % f-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key f \minor
  % Enge Lage
  f es f |
  f f f |
  f es f |
  \breathe
  as b as |
  as des as |
  as b as |
  \breathe
  c c c |
  c des c |
  c b c |
  \break
  % Weite Lage
  as g as |
  as b as |
  as g as |
  \breathe
  c es c |
  c f c |
  c des c |
  \breathe
  f es f |
  f f f |
  f es f |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % c-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key c \minor
  % Enge Lage
  c b c |
  c c c |
  c b c |
  \breathe
  es f es |
  es as es |
  es f es |
  \breathe
  g g g |
  g as g |
  g f g |
  \break
  % Weite Lage
  es d es |
  es f es |
  es d es |
  \breathe
  g, b g |
  g c g |
  g as g |
  \breathe
  c b c |
  c c c |
  c b c |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % g-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key g \minor
  % Enge Lage
  g f g |
  g g g |
  g f g |
  \breathe
  b c b |
  b es b |
  b c b |
  \breathe
  d d d |
  d es d |
  d c d |
  \break
  % Weite Lage
  b a b |
  b c b |
  b a b |
  \breathe
  d, f d |
  d g d |
  d es d |
  \breathe
  g f g |
  g g g |
  g f g |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % d-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key d \minor
  % Enge Lage
  d'' c d |
  d d d |
  d c d |
  \breathe
  f, g f |
  f b f |
  f g f |
  \breathe
  a a a |
  a b a |
  a g a |
  \break
  % Weite Lage
  f e f |
  f g f |
  f e f |
  \breathe
  a, c a |
  a d a |
  a b a |
  \breathe
  d c d |
  d d d |
  d c d |
  \bar "|."
}

scoreBPedal = \relative c {
  \global
  % Music follows here.
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % a-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key a \minor
  % Enge Lage
  a e a |
  a d a |
  a h a |
  \breathe
  a e a |
  a d a |
  a g a |
  \breathe
  a e a |
  a d a |
  a h a |
  \break
  % Weite Lage
  a e a |
  a d a |
  a h a |
  \breathe
  a e a |
  a d a |
  a g a |
  \breathe
  a e a |
  a d a |
  a h a |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % e-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key e \minor
  % Enge Lage
  e' h e |
  e a e |
  e fis e |
  \breathe
  e h e |
  e a e |
  e d e |
  \breathe
  e h e |
  e a e |
  e fis e |
  \break
  % Weite Lage
  e h e |
  e a e |
  e fis e |
  \breathe
  e h e |
  e a e |
  e d e |
  \breathe
  e h e |
  e a e |
  e fis e |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % h-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key h \minor
  % Enge Lage
  h fis h |
  h e h |
  h cis h |
  \breathe
  h fis h |
  h e h |
  h a h |
  \breathe
  h fis h |
  h e h |
  h cis h |
  \break
  % Weite Lage
  h fis h |
  h e h |
  h cis h |
  \breathe
  h fis h |
  h e h |
  h a h |
  \breathe
  h fis h |
  h e h |
  h cis h |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % fis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key fis \minor
  % Enge Lage
  fis' cis fis |
  fis h fis |
  fis gis fis |
  \breathe
  fis cis fis |
  fis h fis |
  fis e fis |
  \breathe
  fis cis fis |
  fis h fis |
  fis gis fis |
  \break
  % Weite Lage
  fis cis fis |
  fis h fis |
  fis gis fis |
  \breathe
  fis cis fis |
  fis h fis |
  fis e fis |
  \breathe
  fis cis fis |
  fis h fis |
  fis gis fis |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % cis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key cis \minor
  % Enge Lage
  cis gis cis |
  cis fis cis |
  cis dis cis |
  \breathe
  cis gis cis |
  cis fis cis |
  cis h cis |
  \breathe
  cis gis cis |
  cis fis cis |
  cis dis cis |
  \break
  % Weite Lage
  cis gis cis |
  cis fis cis |
  cis dis cis |
  \breathe
  cis gis cis |
  cis fis cis |
  cis h cis |
  \breathe
  cis gis cis |
  cis fis cis |
  cis dis cis |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % gis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key gis \minor
  % Enge Lage
  gis dis gis |
  gis cis gis |
  gis ais gis |
  \breathe
  gis dis gis |
  gis cis gis |
  gis fis gis |
  \breathe
  gis dis gis |
  gis cis gis |
  gis ais gis |
  \break
  % Weite Lage
  gis dis gis |
  gis cis gis |
  gis ais gis |
  \breathe
  gis dis gis |
  gis cis gis |
  gis fis gis |
  \breathe
  gis dis gis |
  gis cis gis |
  gis ais gis |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % dis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key dis \minor
  % Enge Lage
  dis ais dis |
  dis gis dis |
  dis eis dis |
  \breathe
  dis ais dis |
  dis gis dis |
  dis cis dis |
  \breathe
  dis ais dis |
  dis gis dis |
  dis eis dis |
  \break
  % Weite Lage
  dis' ais dis |
  dis gis dis |
  dis eis dis |
  \breathe
  dis ais dis |
  dis gis dis |
  dis cis dis |
  \breathe
  dis ais dis |
  dis gis dis |
  dis eis dis |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % es-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key es \minor
  % Enge Lage
  es b es |
  es as es |
  es f es |
  \breathe
  es b es |
  es as es |
  es des es |
  \breathe
  es b es |
  es as es |
  es f es |
  \break
  % Weite Lage
  es b es |
  es as es |
  es f es |
  \breathe
  es b es |
  es as es |
  es des es |
  \breathe
  es b es |
  es as es |
  es f es |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % b-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \minor
  % Enge Lage
  b f b |
  b es b |
  b c b |
  \breathe
  b f b |
  b es b |
  b as b |
  \breathe
  b f b |
  b es b |
  b c b |
  \break
  % Weite Lage
  b f b |
  b es b |
  b c b |
  \breathe
  b f b |
  b es b |
  b as b |
  \breathe
  b f b |
  b es b |
  b c b |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % f-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key f \minor
  % Enge Lage
  f c f |
  f b f |
  f g f |
  \breathe
  f c f |
  f b f |
  f es f |
  \breathe
  f c f |
  f b f |
  f g f |
  \break
  % Weite Lage
  f' c f |
  f b f |
  f g f |
  \breathe
  f c f |
  f b f |
  f es f |
  \breathe
  f c f |
  f b f |
  f g f |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % c-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key c \minor
  % Enge Lage
  c g c |
  c f c |
  c d c |
  \breathe
  c g c |
  c f c |
  c b c |
  \breathe
  c g c |
  c f c |
  c d c |
  \break
  % Weite Lage
  c g c |
  c f c |
  c d c |
  \breathe
  c g c |
  c f c |
  c b c |
  \breathe
  c g c |
  c f c |
  c d c |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % g-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key g \minor
  % Enge Lage
  g d g |
  g c g |
  g a g |
  \breathe
  g d g |
  g c g |
  g f g |
  \breathe
  g d g |
  g c g |
  g a g |
  \break
  % Weite Lage
  g d g |
  g c g |
  g a g |
  \breathe
  g d g |
  g c g |
  g f g |
  \breathe
  g d g |
  g c g |
  g a g |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % d-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key d \minor
  % Enge Lage
  d' a d |
  d g d |
  d e d |
  \breathe
  d a d |
  d g d |
  d c d |
  \breathe
  d a d |
  d g d |
  d e d |
  \break
  % Weite Lage
  d a d |
  d g d |
  d e d |
  \breathe
  d a d |
  d g d |
  d c d |
  \breathe
  d a d |
  d g d |
  d e d |
  \bar "|."
}

scoreBChordNames = \chordmode {
  \global
  % Chords follow here.
  
}

scoreBFigBass = \figuremode {
  \global
  % Figures follow here.
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % a-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |   
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % e-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |   
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % h-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |   
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % fis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |   
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % cis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |   
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % gis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |   
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % dis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |   
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % es-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |   
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % b-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |   
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % f-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |   
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % c-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |   
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % g-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |   
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % d-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |
  s2. s |
  s4 <6> s |    
  s2. s |
  s4 <6> s |   
}

claveB = {\new DrumStaff <<
  \drummode {\global
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
         hh8 cl hh cl hh cl
%        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
    } \\ {
      bd4 sn4 sn4
    } >>
  }
>>
}

scoreBOrganPart = <<
  \new PianoStaff \with {
    instrumentName = "Orgel"
    shortInstrumentName = "Org."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "church organ"
    } \scoreBRight
    \new Staff = "left" \with {
      midiInstrument = "church organ"
    } { \clef bass \scoreBLeft }
  >>
  \new Staff = "pedal" \with {
    midiInstrument = "church organ"
  } { \clef bass \scoreBPedal }
>>

scoreBChordsPart = \new ChordNames \scoreBChordNames

scoreBBassFiguresPart = \new FiguredBass \scoreBFigBass

\bookpart {
\header {
  subtitle = "Harmonisieren I-IV-V-VII - Moll"
}

  \score {
%    {
%      \claveB
      <<
        \scoreBOrganPart
        \scoreBChordsPart
        \scoreBBassFiguresPart
       >>
%    }
    \layout { }
%    \midi { }
  }
  \score {
    {
      \claveB
      <<
        \scoreBOrganPart
        \scoreBChordsPart
        \scoreBBassFiguresPart
      >>
    }
%    \layout { }
    \midi { }
  }}
