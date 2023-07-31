\version "2.24.1"
\language "english"

\header {
  dedication = "Für meine Fortbildung"
  title = "Heilig, heilig, dreimal heilig"
  subtitle = "Gotteslob 733 Nr. 8"
  subsubtitle = ""
  instrument = "Orgel"
  composer = "M: nach J. Herold 1809"
  arranger = "Satz: Sandra Minelgaite"
  poet = "T: Neufassung Speyer 1946"
  meter = ""
  piece = ""
  opus = "GL 733, Nr. 8"
  copyright = "© Satz: Sandra Minelgaite, 29.05.2023"
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
  \key bf \major
  \time 4/4
  \tempo "Andante" 4=100
}

soprano = \relative c'' {
  \global
  % Music follows here.
  \repeat volta 2 {
    d, ef f8 d bf4 g' a8 bf f ef d4\breathe
    f g8 a bf4 c8 d bf4 a bf2
  }
%   bf4 4 4 f8 g af4 4 4 g\breathe
%   c4 4 4 g8 a bf4 4 4 a\breathe
%   bf a g f g f8 ef d2
%   f4 g8 a bf4 c8 d bf4 a bf2
%   \bar "|."
}

sopranoB = \relative c'' {
  % Music follows here.
  bf4 4 4 f8 g af4 4 4 g\breathe
  c4 4 4 g8 a bf4 4 4 a\breathe
  bf a g f g f8 ef d2
  f4 g8 a bf4 c8 d bf4 a bf2
  \bar "|."
}

alto = \relative c' {
  \global
  % Music follows here.

}

tenor = \relative c' {
  \global
  % Music follows here.
  \repeat volta 2 {
  <bf f'>4 <c a'> <d bf'> <d f> <ef bf'>
  <f c'> <d bf'> <d f> <a f'> <g ef'> <f d'> <g ef'> <f d'> <f c'><f d'>2}
  <f' d'>4 4 4 <d bf'> <ef c'>4 4 4 <ef bf'>4 <a f'>4 4 4 <e c'> <f d'>4 4 4 <f c'>
  <f d'> <ef c'> <ef bf'> <d bf'> <ef bf'><d bf'><bf f'>2
  <d bf'>4 <ef c'><f d'><ef c'><f d'><f c'><bf, f'>2
}

tenorB = \relative c' {
  % Music follows here.
%   \repeat volta 2 {
%   <bf f'>4 <c a'> <d bf'> <d f> <ef bf'>
%   <f c'> <d bf'> <d f> <a f'> <g ef'> <f d'> <g ef'> <f d'> <f c'><f d'>2}
  <f' d'>4 4 4 <d bf'> <ef c'>4 4 4 <ef bf'>4 <a f'>4 4 4 <e c'> <f d'>4 4 4 <f c'>
  <f d'> <ef c'> <ef bf'> <d bf'> <ef bf'><d bf'><bf f'>2
  <d bf'>4 <ef c'><f d'><ef c'><f d'><f c'><bf, f'>2
}

bass = \relative c {
  \global
  % Music follows here.

}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Hei -- lig, hei _ -- lig, drei -- mal _ hei _ -- lig bist du, _ Herr, Gott _ Zé -- ba -- ot!
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
Erd und Him -- _ mel dich lob -- _ prei -- _ sen in der _ Hö -- _ he, gro -- ßer Gott.
}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
 Hei -- lig, der in _ dei -- nem Na -- men
 zu uns kommt: Ho -- _ san -- na! A -- men.
 Ihm sei Lob und Herr -- lich -- _ keit, Preis und _ Dank in _ E -- wig -- keit.
}
clave = { \new DrumStaff { \drummode { \global << { \repeat unfold 4 {hh8 cl} } \\ { bd4 sn sn sn } >> }}}

scoreA = {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Soprano" "Alto" }
      shortInstrumentName = \markup \center-column { "S." "A." }
    } <<
      {
      \new Voice = "soprano" \with {
        \consists "Ambitus_engraver"
      } { \voiceOne \soprano }
      \new Voice = "sopranoB" \with {
      } { \voiceOne \sopranoB }
      }
      \new Voice = "alto" \with {
        \consists "Ambitus_engraver"
        \override Ambitus #'X-offset = #2.0
      } { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "sopranoB" \verseThree
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Tenor" "Bass" }
      shortInstrumentName = \markup \center-column { "T." "B." }
    } <<
      \clef treble
      \new Voice = "tenor" \with {
        \consists "Ambitus_engraver"
      } { \voiceOne \tenor }
      \new Voice = "bass" \with {
        \consists "Ambitus_engraver"
        \override Ambitus #'X-offset = #2.0
      } { \voiceTwo \bass }
    >>
  >>
}

\score {
  \scoreA
  \layout { }
}

\score {
  {
    \clave
    \unfoldRepeats {
      \scoreA
    }
  }
  \midi { }
}

% scoreA = {
%   \new ChoirStaff <<
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = \markup \center-column { "Soprano" "Alto" }
%       shortInstrumentName = \markup \center-column { "S." "A." }
%     } <<
%       \new Voice = "soprano" \with {
%         \consists "Ambitus_engraver"
%       } { \voiceOne \soprano }
%       \new Voice = "alto" \with {
%         \consists "Ambitus_engraver"
%         \override Ambitus #'X-offset = #2.0
%       } { \voiceTwo \alto }
%     >>
%     \new Lyrics \with {
%       \override VerticalAxisGroup #'staff-affinity = #CENTER
%     } \lyricsto "soprano" \verseOne
%     \new Lyrics \with {
%       \override VerticalAxisGroup #'staff-affinity = #CENTER
%     } \lyricsto "soprano" \verseTwo
%     \new Staff \with {
%       midiInstrument = "choir aahs"
%       instrumentName = \markup \center-column { "Tenor" "Bass" }
%       shortInstrumentName = \markup \center-column { "T." "B." }
%     } <<
%       \clef treble
%       \new Voice = "tenor" \with {
%         \consists "Ambitus_engraver"
%       } { \voiceOne \tenor }
%       \new Voice = "bass" \with {
%         \consists "Ambitus_engraver"
%         \override Ambitus #'X-offset = #2.0
%       } { \voiceTwo \bass }
%     >>
%   >>
% }
%
% \score {
%   \scoreA
%   \layout { }
% }
%
% \score {
%   {
%     \clave
%     \unfoldRepeats {
%       \scoreA
%     }
%     \new Lyrics \with {
%       \override VerticalAxisGroup #'staff-affinity = #CENTER
%     } \lyricsto "soprano" \verseThree
%   }
%   \midi { }
% }
%
%
