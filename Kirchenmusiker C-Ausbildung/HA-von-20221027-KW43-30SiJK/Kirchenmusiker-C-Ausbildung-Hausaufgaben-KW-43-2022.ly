\version "2.22.2"
\language "english"

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
  c,^"Oktavlage I-V-I, I-IV-I, I-VII-I" b c |
  c c c |
  c b c |
  \breathe
  e^"Terzlage I-V-I, I-IV-I, I-VII-I" d e |
  e f e |
  e8[ d e] e[ f e] |
  \break
  g4^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage" g g |
  g a g |
  r4 r r |
  \breathe
  c^"Oktavlage I-V-I, I-IV-I, I-VII-I" b c |
  c c c |
  c b c |
  \breathe
  e,^"Terzlage I-V-I, I-IV-I, I-VII-I" d e |
  e f e |
  e8[ d e] e[ f e] |
  \break
  <e g>4^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"C-Dur - Tenor solistisch"<d g><e g>
  <e g><f a><e g> |
  <e g\(><d f\)\(><e g\)> |
  \breathe
  <g c>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <g b><g c> |
  <g c><a c><g c> |
  <g c><f b><g c> |
  \breathe
  <c, e>^"Terzlage I-V-I, I-IV-I, I-VII-I" <b d><c e> |
  <c e><c f><c e> |
  <c e>8[<b d><c e>]<c e>[<b f'><c e>] |
  \break
  <c g'>4^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<b g'><c g'> |
  <c g'><c a'><c g'> |
  r4 r r |
  \breathe
  <e c'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <d b'><e c'> |
  <e c'><f c'><e c'> |
  <e c'><d b'><e c'> |
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
  <c e>4 <b d> <c e> |
  <c e> <c f> <c e> |
  <c\( e> <b\)\( d> <c\) e> |
  \breathe
  <e, g><d g><e g> |
  <e g><f a><e g> |
  <e g><d f><e g> |
  \breathe
  <g c><g b><g c> |
  <g c><a c><g c> |
  <g c>8[<f b><g c>]<g c>[<f b><g c>] |
  \break
  % Weite Lage
  <e c'>4<d b'><e c'> |
  <e c'><f c'><e c'> |
  r4 r r |
  \breathe
  <g e'><g d'><g e'> |
  <g e'><a f'><g e'> |
  <g e'><f d'><g e'> |
  \breathe
  <c, g'><b g'><c g'> |
  <c g'><c a'><c g'> |
  <c g'>8\([<b  f'>\)\(<c g'>\)]<c g'>\([<b f'>\)\(<c g'>\)] |
  \break
  % Enge Lage - Tenor solistisch
  c'4 b c |
  c c c |
  c\( b\)\( c\) |
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
  c b c  |
  c c c |
  c8[\( b\)\( c\)] c\([ b\)\( c\)] |
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
  <c, e>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"a-Moll"<b e><c e> |
  <c e><f d><c e> |
  <c e><b d><c e> |
  \breathe
  <e a>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <g b><e a> |
  <e a><a c><e a> |
  <e a><f b><e a> |
  \breathe
  <a c>^"Terzlage I-V-I, I-IV-I, I-VII-I" <g b><a c> |
  <a c><a d><a c> |
  <a c><g b><a c> |
  \break
  <a e'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<g e'><a e'> |
  <a e'><a f'><a e'> |
  <a e'><g d'><a e'> |
  \breathe
  <c, a'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <d b'><c a'> |
  <c a'><f c'><c a'> |
  <c a'><d b'><c a'> |
  \breathe
  <e c'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <e b'><e c'> |
  <e c'><f d'><e c'> |
  <e c'><d b'><e c'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % e-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key e \minor
  <g b>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"e-Moll"<fs b><g b> |
  <g b><c a><g b> |
  <g b><fs a><g b> |
  \breathe
  <b e>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <d fs><b e> |
  <b e><e g><b e> |
  <b e><c fs><b e> |
  \breathe
  <e g>^"Terzlage I-V-I, I-IV-I, I-VII-I" <d fs><e g> |
  <e g><e a><e g> |
  <e g><d fs><e g> |
  \break
  <e b'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<d b'><e b'> |
  <e b'><e c'><e b'> |
  <e b'><d a'><e b'> |
  \breathe
  <g, e'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <a fs'><g e'> |
  <g e'><c g'><g e'> |
  <g e'><a fs'><g e'> |
  \breathe
  <b g'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <b fs'><b g'> |
  <b g'><c a'><b g'> |
  <b g'><a fs'><b g'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % h-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \minor
  <d, fs>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"h-Moll"<cs fs><d fs> |
  <d fs><g e><d fs> |
  <d fs><cs e><d fs> |
  \breathe
  <fs b>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <a cs><fs b> |
  <fs b><b d><fs b> |
  <fs b><g cs><fs b> |
  \breathe
  <b d>^"Terzlage I-V-I, I-IV-I, I-VII-I" <a cs><b d> |
  <b d><b e><b d> |
  <b d><a cs><b d> |
  \break
  <b fs'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<a fs'><b fs'> |
  <b fs'><b g'><b fs'> |
  <b fs'><a e'><b fs'> |
  \breathe
  <d, b'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <e cs'><d b'> |
  <d b'><g d'><d b'> |
  <d b'><e cs'><d b'> |
  \breathe
  <fs d'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <fs cs'><fs d'> |
  <fs d'><g e'><fs d'> |
  <fs d'><e cs'><fs d'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % fis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key fs \minor
  <a cs>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"fis-Moll"<gs cs><a cs> |
  <a cs><d b><a cs> |
  <a cs><gs b><a cs> |
  \breathe
  <cs fs>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <e gs><cs fs> |
  <cs fs><fs a><cs fs> |
  <cs fs><d gs><cs fs> |
  \breathe
  <fs a>^"Terzlage I-V-I, I-IV-I, I-VII-I" <e gs><fs a> |
  <fs a><fs b><fs a> |
  <fs a><e gs><fs a> |
  \break
  <fs, cs'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<e cs'><fs cs'> |
  <fs cs'><fs d'><fs cs'> |
  <fs cs'><e b'><fs cs'> |
  \breathe
  <a, fs'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <b gs'><a fs'> |
  <a fs'><d a'><a fs'> |
  <a fs'><b gs'><a fs'> |
  \breathe
  <cs a'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <cs gs'><cs a'> |
  <cs a'><d b'><cs a'> |
  <cs a'><b gs'><cs a'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % cis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key cs \minor
  <e gs>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"cis-Moll"<ds gs><e gs> |
  <e gs><a fs><e gs> |
  <e gs><ds fs><e gs> |
  \breathe
  <gs cs>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <b ds><gs cs> |
  <gs cs><cs e><gs cs> |
  <gs cs><a ds><gs cs> |
  \breathe
  <cs e>^"Terzlage I-V-I, I-IV-I, I-VII-I" <b ds><cs e> |
  <cs e><cs fs><cs e> |
  <cs e><b ds><cs e> |
  \break
  <cs gs'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<b gs'><cs gs'> |
  <cs gs'><cs a'><cs gs'> |
  <cs gs'><b fs'><cs gs'> |
  \breathe
  <e, cs'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <fs ds'><e cs'> |
  <e cs'><a e'><e cs'> |
  <e cs'><fs ds'><e cs'> |
  \breathe
  <gs e'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <gs ds'><gs e'> |
  <gs e'><a fs'><gs e'> |
  <gs e'><fs ds'><gs e'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % gis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key gs \minor
  <b, ds>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"gis-Moll"<as ds><b ds> |
  <b ds><e cs><b ds> |
  <b ds><as cs><b ds> |
  \breathe
  <ds gs>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <fs as><ds gs> |
  <ds gs><gs b><ds gs> |
  <ds gs><e as><ds gs> |
  \breathe
  <gs b>^"Terzlage I-V-I, I-IV-I, I-VII-I" <fs as><gs b> |
  <gs b><gs cs><gs b> |
  <gs b><fs as><gs b> |
  \break
  <gs ds'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<fs ds'><gs ds'> |
  <gs ds'><gs e'><gs ds'> |
  <gs ds'><fs cs'><gs ds'> |
  \breathe
  <b, gs'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <cs as'><b gs'> |
  <b gs'><e b'><b gs'> |
  <b gs'><cs as'><b gs'> |
  \breathe
  <ds b'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <ds as'><ds b'> |
  <ds b'><e cs'><ds b'> |
  <ds b'><cs as'><ds b'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % dis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key ds \minor
  <fs as>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"dis-Moll"<es as><fs as> |
  <fs as><b gs><fs as> |
  <fs as><es gs><fs as> |
  \breathe
  <as ds>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <cs es><as ds> |
  <as ds><ds fs><as ds> |
  <as ds><b es><as ds> |
  \breathe
  <ds fs>^"Terzlage I-V-I, I-IV-I, I-VII-I" <cs es><ds fs> |
  <ds fs><ds gs><ds fs> |
  <ds fs><cs es><ds fs> |
  \break
  <ds as'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<cs as'><ds as'> |
  <ds as'><ds b'><ds as'> |
  <ds as'><cs gs'><ds as'> |
  \breathe
  <fs, ds'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <gs es'><fs ds'> |
  <fs ds'><b fs'><fs ds'> |
  <fs ds'><gs es'><fs ds'> |
  \breathe
  <as fs'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <as es'><as fs'> |
  <as fs'><b gs'><as fs'> |
  <as fs'><gs es'><as fs'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % es-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key ef \minor
  <gf bf>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"es-Moll"<f bf><gf bf> |
  <gf bf><cf af><gf bf> |
  <gf bf><f af><gf bf> |
  \breathe
  <bf ef>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <df f><bf ef> |
  <bf ef><ef gf><bf ef> |
  <bf ef><cf f><bf ef> |
  \breathe
  <ef gf>^"Terzlage I-V-I, I-IV-I, I-VII-I" <df f><ef gf> |
  <ef gf><ef af><ef gf> |
  <ef gf><df f><ef gf> |
  \break
  <ef, bf'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<df bf'><ef bf'> |
  <ef bf'><ef cf'><ef bf'> |
  <ef bf'><df af'><ef bf'> |
  \breathe
  <gf, ef'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <af f'><gf ef'> |
  <gf ef'><cf gf'><gf ef'> |
  <gf ef'><af f'><gf ef'> |
  \breathe
  <bf gf'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <bf f'><bf gf'> |
  <bf gf'><cf af'><bf gf'> |
  <bf gf'><af f'><bf gf'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % b-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key bf \minor
  <df f>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"b-Moll"<c f><df f> |
  <df f><gf ef><df f> |
  <df f><c ef><df f> |
  \breathe
  <f bf>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <af c><f bf> |
  <f bf><bf df><f bf> |
  <f bf><gf c><f bf> |
  \breathe
  <bf df>^"Terzlage I-V-I, I-IV-I, I-VII-I" <af c><bf df> |
  <bf df><bf ef><bf df> |
  <bf df><af c><bf df> |
  \break
  <bf f'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<af f'><bf f'> |
  <bf f'><bf gf'><bf f'> |
  <bf f'><af ef'><bf f'> |
  \breathe
  <df, bf'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <ef c'><df bf'> |
  <df bf'><gf df'><df bf'> |
  <df bf'><ef c'><df bf'> |
  \breathe
  <f df'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <f c'><f df'> |
  <f df'><gf ef'><f df'> |
  <f df'><ef c'><f df'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % f-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key f \minor
  <af, c>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"f-Moll"<g c><af c> |
  <af c><df bf><af c> |
  <af c><g bf><af c> |
  \breathe
  <c f>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <ef g><c f> |
  <c f><f af><c f> |
  <c f><df g><c f> |
  \breathe
  <f af>^"Terzlage I-V-I, I-IV-I, I-VII-I" <ef g><f af> |
  <f af><f bf><f af> |
  <f af><ef g><f af> |
  \break
  <f c'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<ef c'><f c'> |
  <f c'><f df'><f c'> |
  <f c'><ef bf'><f c'> |
  \breathe
  <af f'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <bf g'><af f'> |
  <af f'><df af'><af f'> |
  <af f'><bf g'><af f'> |
  \breathe
  <c af'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <c g'><c af'> |
  <c af'><df bf'><c af'> |
  <c af'><bf g'><c af'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % c-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key c \minor
  <ef, g>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"c-Moll"<d g><ef g> |
  <ef g><af f><ef g> |
  <ef g><d f><ef g> |
  \breathe
  <g c>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <bf d><g c> |
  <g c><c ef><g c> |
  <g c><af d><g c> |
  \breathe
  <c ef>^"Terzlage I-V-I, I-IV-I, I-VII-I" <bf d><c ef> |
  <c ef><c f><c ef> |
  <c ef><bf d><c ef> |
  \break
  <c g'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<bf g'><c g'> |
  <c g'><c af'><c g'> |
  <c g'><bf f'><c g'> |
  \breathe
  <ef, c'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <f d'><ef c'> |
  <ef c'><af ef'><ef c'> |
  <ef c'><f d'><ef c'> |
  \breathe
  <g ef'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <g d'><g ef'> |
  <g ef'><af f'><g ef'> |
  <g ef'><f d'><g ef'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % g-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key g \minor
  <bf, d>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"g-Moll"<a d><bf d> |
  <bf d><ef c><bf d> |
  <bf d><a c><bf d> |
  \breathe
  <d g>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <f a><d g> |
  <d g><g bf><d g> |
  <d g><ef a><d g> |
  \breathe
  <g bf>^"Terzlage I-V-I, I-IV-I, I-VII-I" <f a><g bf> |
  <g bf><g c><g bf> |
  <g bf><f a><g bf> |
  \break
  <g d'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<f d'><g d'> |
  <g d'><g ef'><g d'> |
  <g d'><f c'><g d'> |
  \breathe
  <bf, g'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <c a'><bf g'> |
  <bf g'><ef bf'><bf g'> |
  <bf g'><c a'><bf g'> |
  \breathe
  <d bf'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <d a'><d bf'> |
  <d bf'><ef c'><d bf'> |
  <d bf'><c a'><d bf'> |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % d-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key d \minor
  <f a>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Enge Lage"^"d-Moll"<e a><f a> |
  <f a><bf g><f a> |
  <f a><e g><f a> |
  \breathe
  <a, d>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <c e><a d> |
  <a d><d f><a d> |
  <a d><bf e><a d> |
  \breathe
  <d f>^"Terzlage I-V-I, I-IV-I, I-VII-I" <c e><d f> |
  <d f><d g><d f> |
  <d f><c e><d f> |
  \break
  <d a'>^"Quintlage I-V-I, I-IV-I, I-VII-I"^"Weite Lage"<c a'><d a'> |
  <d a'><d bf'><d a'> |
  <d a'><c g'><d a'> |
  \breathe
  <f, d'>^"Oktavlage I-V-I, I-IV-I, I-VII-I" <g e'><f d'> |
  <f d'><bf f'><f d'> |
  <f d'><g e'><f d'> |
  \breathe
  <a f'>^"Terzlage I-V-I, I-IV-I, I-VII-I" <a e'><a f'> |
  <a f'><bf g'><a f'> |
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
  c b c |
  c d c |
  c b c |
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
  b b b |
  b c b |
  b a b |
  \break
  % Weite Lage
  g fs g |
  g a g |
  g fs g |
  \breathe
  b, d b |
  b e b |
  b c b |
  \breathe
  e d e |
  e e e |
  e d e |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % h-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \minor
  % Enge Lage
  b' a b |
  b b b |
  b a b |
  \breathe
  d, e d |
  d g d |
  d e d |
  \breathe
  fs fs fs |
  fs g fs |
  fs e fs |
  \break
  % Weite Lage
  d cs d |
  d e d |
  d cs d |
  \breathe
  fs, a fs |
  fs b fs |
  fs g fs |
  \breathe
  b a b |
  b b b |
  b a b |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % fis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key fs \minor
  % Enge Lage
  fs' e fs |
  fs fs fs |
  fs e fs |
  \breathe
  a b a |
  a d a |
  a b a |
  \breathe
  cs cs cs |
  cs d cs |
  cs b cs |
  \break
  % Weite Lage
  a gs a |
  a b a |
  a gs a |
  \breathe
  cs, e cs |
  cs fs cs |
  cs d cs |
  \breathe
  fs e fs |
  fs fs fs |
  fs e fs |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % cis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key cs \minor
  % Enge Lage
  cs b cs |
  cs cs cs |
  cs b cs |
  \breathe
  e fs e |
  e a e |
  e fs e |
  \breathe
  gs gs gs |
  gs a gs |
  gs fs gs |
  \break
  % Weite Lage
  e ds e |
  e fs e |
  e ds e |
  \breathe
  gs, b gs |
  gs cs gs |
  gs a gs |
  \breathe
  cs b cs |
  cs cs cs |
  cs b cs |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % gis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key gs \minor
  % Enge Lage
  gs fs gs |
  gs gs gs |
  gs fs gs |
  \breathe
  b cs b |
  b e b |
  b cs b |
  \breathe
  ds ds ds |
  ds e ds |
  ds cs ds |
  \break
  % Weite Lage
  b as b |
  b cs b |
  b as b |
  \breathe
  ds, fs ds |
  ds gs ds |
  ds e ds |
  \breathe
  gs fs gs |
  gs gs gs |
  gs fs gs |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % dis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key ds \minor
  % Enge Lage
  ds cs ds |
  ds ds ds |
  ds cs ds |
  \breathe
  fs gs fs |
  fs b fs |
  fs gs fs |
  \breathe
  as as as |
  as b as |
  as gs as |
  \break
  % Weite Lage
  fs' es fs |
  fs gs fs |
  fs es fs |
  \breathe
  as, cs as |
  as ds as |
  as b as |
  \breathe
  ds cs ds |
  ds ds ds |
  ds cs ds |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % es-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key ef \minor
  % Enge Lage
  ef df ef |
  ef ef ef |
  ef df ef |
  \breathe
  gf af gf |
  gf cf gf |
  gf af gf |
  \breathe
  bf bf bf |
  bf cf bf |
  bf af bf |
  \break
  % Weite Lage
  gf f gf |
  gf af gf |
  gf f gf |
  \breathe
  bf, df bf |
  bf ef bf |
  bf cf bf |
  \breathe
  ef df ef |
  ef ef ef |
  ef df ef |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % b-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key bf \minor
  % Enge Lage
  bf' af bf |
  bf bf bf |
  bf af bf |
  \breathe
  df ef df |
  df gf df |
  df ef df |
  \breathe
  f f f |
  f gf f |
  f ef f |
  \break
  % Weite Lage
  df, c df |
  df ef df |
  df c df |
  \breathe
  f, af f |
  f bf f |
  f gf f |
  \breathe
  bf af bf |
  bf bf bf |
  bf af bf |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % f-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key f \minor
  % Enge Lage
  f ef f |
  f f f |
  f ef f |
  \breathe
  af bf af |
  af df af |
  af bf af |
  \breathe
  c c c |
  c df c |
  c bf c |
  \break
  % Weite Lage
  af g af |
  af bf af |
  af g af |
  \breathe
  c ef c |
  c f c |
  c df c |
  \breathe
  f ef f |
  f f f |
  f ef f |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % c-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key c \minor
  % Enge Lage
  c bf c |
  c c c |
  c bf c |
  \breathe
  ef f ef |
  ef af ef |
  ef f ef |
  \breathe
  g g g |
  g af g |
  g f g |
  \break
  % Weite Lage
  ef d ef |
  ef f ef |
  ef d ef |
  \breathe
  g, bf g |
  g c g |
  g af g |
  \breathe
  c bf c |
  c c c |
  c bf c |
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
  bf c bf |
  bf ef bf |
  bf c bf |
  \breathe
  d d d |
  d ef d |
  d c d |
  \break
  % Weite Lage
  bf a bf |
  bf c bf |
  bf a bf |
  \breathe
  d, f d |
  d g d |
  d ef d |
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
  f bf f |
  f g f |
  \breathe
  a a a |
  a bf a |
  a g a |
  \break
  % Weite Lage
  f e f |
  f g f |
  f e f |
  \breathe
  a, c a |
  a d a |
  a bf a |
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
  a b a |
  \breathe
  a e a |
  a d a |
  a g a |
  \breathe
  a e a |
  a d a |
  a b a |
  \break
  % Weite Lage
  a e a |
  a d a |
  a b a |
  \breathe
  a e a |
  a d a |
  a g a |
  \breathe
  a e a |
  a d a |
  a b a |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % e-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key e \minor
  % Enge Lage
  e' b e |
  e a e |
  e fs e |
  \breathe
  e b e |
  e a e |
  e d e |
  \breathe
  e b e |
  e a e |
  e fs e |
  \break
  % Weite Lage
  e b e |
  e a e |
  e fs e |
  \breathe
  e b e |
  e a e |
  e d e |
  \breathe
  e b e |
  e a e |
  e fs e |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % h-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key b \minor
  % Enge Lage
  b fs b |
  b e b |
  b cs b |
  \breathe
  b fs b |
  b e b |
  b a b |
  \breathe
  b fs b |
  b e b |
  b cs b |
  \break
  % Weite Lage
  b fs b |
  b e b |
  b cs b |
  \breathe
  b fs b |
  b e b |
  b a b |
  \breathe
  b fs b |
  b e b |
  b cs b |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % fis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key fs \minor
  % Enge Lage
  fs' cs fs |
  fs b fs |
  fs gs fs |
  \breathe
  fs cs fs |
  fs b fs |
  fs e fs |
  \breathe
  fs cs fs |
  fs b fs |
  fs gs fs |
  \break
  % Weite Lage
  fs cs fs |
  fs b fs |
  fs gs fs |
  \breathe
  fs cs fs |
  fs b fs |
  fs e fs |
  \breathe
  fs cs fs |
  fs b fs |
  fs gs fs |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % cis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key cs \minor
  % Enge Lage
  cs gs cs |
  cs fs cs |
  cs ds cs |
  \breathe
  cs gs cs |
  cs fs cs |
  cs b cs |
  \breathe
  cs gs cs |
  cs fs cs |
  cs ds cs |
  \break
  % Weite Lage
  cs gs cs |
  cs fs cs |
  cs ds cs |
  \breathe
  cs gs cs |
  cs fs cs |
  cs b cs |
  \breathe
  cs gs cs |
  cs fs cs |
  cs ds cs |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % gis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key gs \minor
  % Enge Lage
  gs ds gs |
  gs cs gs |
  gs as gs |
  \breathe
  gs ds gs |
  gs cs gs |
  gs fs gs |
  \breathe
  gs ds gs |
  gs cs gs |
  gs as gs |
  \break
  % Weite Lage
  gs ds gs |
  gs cs gs |
  gs as gs |
  \breathe
  gs ds gs |
  gs cs gs |
  gs fs gs |
  \breathe
  gs ds gs |
  gs cs gs |
  gs as gs |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % dis-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key ds \minor
  % Enge Lage
  ds as ds |
  ds gs ds |
  ds es ds |
  \breathe
  ds as ds |
  ds gs ds |
  ds cs ds |
  \breathe
  ds as ds |
  ds gs ds |
  ds es ds |
  \break
  % Weite Lage
  ds' as ds |
  ds gs ds |
  ds es ds |
  \breathe
  ds as ds |
  ds gs ds |
  ds cs ds |
  \breathe
  ds as ds |
  ds gs ds |
  ds es ds |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % es-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key ef \minor
  % Enge Lage
  ef bf ef |
  ef af ef |
  ef f ef |
  \breathe
  ef bf ef |
  ef af ef |
  ef df ef |
  \breathe
  ef bf ef |
  ef af ef |
  ef f ef |
  \break
  % Weite Lage
  ef bf ef |
  ef af ef |
  ef f ef |
  \breathe
  ef bf ef |
  ef af ef |
  ef df ef |
  \breathe
  ef bf ef |
  ef af ef |
  ef f ef |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % b-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key bf \minor
  % Enge Lage
  bf f bf |
  bf ef bf |
  bf c bf |
  \breathe
  bf f bf |
  bf ef bf |
  bf af bf |
  \breathe
  bf f bf |
  bf ef bf |
  bf c bf |
  \break
  % Weite Lage
  bf f bf |
  bf ef bf |
  bf c bf |
  \breathe
  bf f bf |
  bf ef bf |
  bf af bf |
  \breathe
  bf f bf |
  bf ef bf |
  bf c bf |
  \break
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % f-Moll
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \key f \minor
  % Enge Lage
  f c f |
  f bf f |
  f g f |
  \breathe
  f c f |
  f bf f |
  f ef f |
  \breathe
  f c f |
  f bf f |
  f g f |
  \break
  % Weite Lage
  f' c f |
  f bf f |
  f g f |
  \breathe
  f c f |
  f bf f |
  f ef f |
  \breathe
  f c f |
  f bf f |
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
  c bf c |
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
  c bf c |
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
