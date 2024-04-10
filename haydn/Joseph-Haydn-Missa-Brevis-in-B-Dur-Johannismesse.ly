\version "2.24.3"
\language "english"

\header {
  dedication = ""
  title = "Missa Brevis in B-Dur - Johannismesse"
  subtitle = ""
  subsubtitle = "Kleine Orgelmesse"
  instrument = "Tenor"
  composer = "M: Joseph Haydn, 1732-1809"
  arranger = "Bearbeitet: F. Habel"
  poet = "T: Liturgie"
  meter = "Satz: Sven Buschke"
  piece = "Ausgabe: Anton Böhm"
  opus = "Opus: Hob. XII:7"
  copyright = ""
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreAViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreAViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreATenor = \relative c' {
  \global
  % Music follows here.
  bf4.\p bf8  bf4. bf8 bf4 a16(bf) c8 d(c) bf4
  r1 r2 d8.\f f16 f4
  r2 c8. f16 f4
  r4 r8 c c4 c8 r
  r2 c8. c16 c8 c c4(bf2) a8 a d4(c) c r
  f8.\p f16 f8 f f4(e) f r r2
  c2\f c4 r8 f
  f4 e8 e f4 f, c' f8 f16(ef) d4 \afterGrace ef {c8}
  c4 c8 c c4 d8 ef16(f)
  g8.(ef16) c8 c c4 c
  d\p bf bf4. bf8 bf4 a16(bf) c8 d(c) c4
  ef8.\f ef16 ef4 d8. d16 d8 d d4(c2) bf8 bf
  bf4(a) bf r
  f'8. f16 f4 f8. f16 f8 f f2 f4 r
  r2 r8 bf,\f c(ef) d4 r r2
  \bar "|."  
}

scoreABass = \relative c {
  \global
  % Music follows here.
  
}

scoreASopranoVerse = \lyricmode {
  % Lyrics follow here.
  Ky -- ri --e, e --lei --son, e -- lei --son.
  Ky -- ri --e, Ky -- ri --e, e --lei --son, Ky -- ri --e, e -- lei --son, e -- lei --son.
  Ky -- ri --e, e -- lei --son.
  Chri -- ste, e --lei --son, e -- lei --son.
  Chri -- ste, e --lei --son,
  Chri -- ste, e --lei --son, e -- lei --son, e -- lei --son,
  Ky -- ri --e, e --lei --son, e -- lei --son.
  Ky -- ri --e, Ky -- ri --e, e --lei --son, e -- lei --son.
  Ky -- ri --e, Ky -- ri --e, e --lei --son, e -- lei --son.  
}

scoreAAltoVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreATenorVerse = \lyricmode {
  % Lyrics follow here.
  \scoreASopranoVerse
}

scoreABassVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreAPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreASoprano \\
      \scoreAAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreATenor \\
      \scoreABass
    >>
  }
>>

scoreARehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreASoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreAAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreATenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreABass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreABcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreABcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreAViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreAViolinI

scoreAViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreAViolinII

scoreAChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } { \scoreASoprano }
    \addlyrics { \scoreASopranoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } { \scoreAAlto }
    \addlyrics { \scoreAAltoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreATenor }
    \addlyrics { \scoreATenorVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } { \clef bass \scoreABass }
    \addlyrics { \scoreABassVerse }
  >>
  \scoreAPianoReduction
>>

scoreABassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreABcMusic }
  \new FiguredBass \scoreABcFigures
>>

\bookpart {
  \header {
    subtitle = "Kyrie"
  }
  \score {
    <<
      \scoreAViolinIPart
      \scoreAViolinIIPart
      \scoreAChoirPart
      \scoreABassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreARehearsalMidi "soprano" "soprano sax" \scoreASopranoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreARehearsalMidi "alto" "soprano sax" \scoreAAltoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreARehearsalMidi "tenor" "tenor sax" \scoreATenorVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreARehearsalMidi "bass" "tenor sax" \scoreABassVerse
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Gloria
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalB = {
  \key bf \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Allegro" 4=100
}

scoreBViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreBViolinII = \relative c'' {
  \global
  % Music follows here.
  
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
  bf8\f 8 8 8 8 8
  a8. a16 a4 a8 bf
  c2 c4
  d f8 f f f
  g4 ef8 ef g g16 g
  f4 f8 f f f
  c4 c8 c16 c d8 bf
  bf4(a) a(c4.) c8 c4
  f f8 f f f d d d4. d8  c4. c8 c4
  d(c bf) a a a8 a c4 c c8 c bf4 bf bf8 bf bf4 bf8 bf bf bf bf4 g' g8 g f4 f f8 f e4(d) c bf r r
  r2. r r r r r r r4 r r\fermata
  \bar "||"
  \time 3/4
  \tempo "Adagio" 4=70
  r2.
  r
  r4 r bf\f c bf r
  g' f ef ef d r d2 d4 e2 e4
  r ef ef d2 c4 bf2(a4) g r r
  r2. r r
  r4 r bf\f c bf r
  d\p d d d d r
  f4.\f f8 f4 d2 d4
  ef2 ef4
  f2 ef4 ef2(d4) c r r
  r2. r r
  r4 r ef d ef r8 ef
  c4. c8 d4 bf a r
  d2\f d4 e2 e4
  r ef ef d2 c4 bf2(a4) g r r\fermata
  \bar "||"
  \time 3/4
  \tempo "Allegro" 4=100
  r4 bf4. bf8
  a2 a8(bf) c2 c4 d f f g2 g4
  f8. f16 f4 d c c d8(bf) bf4. a8 a4
  c2. f d c
  d4(c bf) a r a
  c2 c4 bf4. bf8 8 8
  bf4 bf8 8 8 8
  bf4(g') g f2 f4
  ef(d c) bf r r
  r2. r r
  r4 r r
  r r r
  r16 r r r r2
  r4 r r
  r r c\f d r a bf r r
  \bar "|."  
}

scoreBBass = \relative c {
  \global
  % Music follows here.
  
}

scoreBSopranoVerse = \lyricmode {
  % Lyrics follow here.
  % Glória in ex -- cél -- sis Deo
  Et in ter -- ra pax ho -- mí -- ni -- bus bo -- næ vo -- lun -- tá -- tis.
  Lau -- dá -- mus te,
  be -- ne -- dí -- ci -- mus te,
  ad -- o -- rá -- mus te,
  glo -- ri -- fi -- cá -- mus te,
  grá -- ti -- as á -- gi -- mus ti -- bi pro -- pter mag -- nam gló -- ri -- am tu -- am,
  Dó -- mi -- ne De -- us, Rex cæ -- lé -- stis,
  De -- us Pa -- ter om -- ní -- po -- tens.
  Dó -- mi -- ne Fi -- li U -- ni -- gé -- ni -- te.
  %   Ie -- su Chris -- te,
  %   Dó -- mi -- ne De -- us, Ag -- nus Dei, Fí -- li -- us Pa -- tris,
  Qui tol -- lis pec -- cá -- ta mun -- di,
  mi -- se -- ré -- re mi -- se -- ré -- re no -- bis.
  Qui tol -- lis pec -- cá -- ta mun -- di,
  sú --sci -- pe de -- pre -- ca -- ti -- ó -- nem no -- stram.
  Qui se -- des ad déx -- te -- ram Pa -- tris,
  mi -- se -- ré -- re, mi -- se -- ré -- re no -- bis.
  Quó -- ni -- am tu so -- lus Sanc -- tus.
  Tu so -- lus Dó -- mi -- nus,
  tu so -- lus Al -- tís -- si -- mus,
  Ie -- su, Ie -- su Chri -- ste.
  Cum San -- cto Spí -- ri -- tu,
  in gló -- ri -- a De -- i Pa -- tris.
  A -- men, a -- men, a -- men, a -- men.  
}

scoreBAltoVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreBTenorVerse = \lyricmode {
  % Lyrics follow here.
  \scoreBSopranoVerse
}

scoreBBassVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreBPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreBSoprano \\
      \scoreBAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreBTenor \\
      \scoreBBass
    >>
  }
>>

scoreBRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreBSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreBAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreBTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreBBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreBBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreBBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreBViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreBViolinI

scoreBViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreBViolinII

scoreBChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } { \scoreBSoprano }
    \addlyrics { \scoreBSopranoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } { \scoreBAlto }
    \addlyrics { \scoreBAltoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreBTenor }
    \addlyrics { \scoreBTenorVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } { \clef bass \scoreBBass }
    \addlyrics { \scoreBBassVerse }
  >>
  \scoreBPianoReduction
>>

scoreBBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreBBcMusic }
  \new FiguredBass \scoreBBcFigures
>>

\bookpart {
  \header {
    subtitle = "Gloria"
  }
  \score {
    <<
      \scoreBViolinIPart
      \scoreBViolinIIPart
      \scoreBChoirPart
      \scoreBBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreBRehearsalMidi "soprano" "soprano sax" \scoreBSopranoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreBRehearsalMidi "alto" "soprano sax" \scoreBAltoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreBRehearsalMidi "tenor" "tenor sax" \scoreBTenorVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreBRehearsalMidi "bass" "tenor sax" \scoreBBassVerse
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Credo
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \key bf \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreCViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreCViolinII = \relative c'' {
  \global
  % Music follows here.
  
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
  r1
  r2 bf8\f 8 c c16 c
  d8 ef d g f ef16 d ef8. ef16
  d4 r r2
  c4. c8 c4 c, r1
  d'4 c c8 bf a g f d' c d16 d c4 c c r r2
  r1
  r1
  r2 bf4 c  
}

scoreCBass = \relative c {
  \global
  % Music follows here.
  
}

scoreCSopranoVerse = \lyricmode {
  % Lyrics follow here.
  %   Cre -- do in un -- um De -- um,
  %   Pa -- trem om -- ni -- potén -- tem,
  %   fac -- tórem cæ -- li et terræ,
  Vi -- si -- bí -- li -- um ó -- mni -- um et in -- vi -- si -- bí -- li -- um.
  Ie -- sum Chris -- tum
  Et in un -- um Dó -- mi -- num, Ie -- sum Chris -- tum,
  Fí -- li -- um Dei un -- igé -- ni -- tum,
  et ex Pa -- tre na -- tum an -- te óm -- nia sǽ -- cu -- la.
  De -- um de Deo, lu -- men de lú -- mi -- ne, De -- um ver -- um de Deo ve -- ro,
  gé -- ni -- tum, non fac -- tum, con -- sub -- stan -- tiálem Pa -- tri:
  per quem óm -- nia fac -- ta sunt.
  Qui propter nos hó -- mi -- nes et propter no -- stram sa -- lútem
  de -- scén -- dit de cæ -- lis.
  Et in -- carnátus est de Spíri -- tu Sanc -- to
  ex Ma -- ría Vír -- gi -- ne, et ho -- mo fac -- tus est.
  Cru -- cifí -- xus éti -- am pro no -- bis sub Pón -- tio Piláto;
  pas -- sus et sepúl -- tus est,
  et re -- s -- urré -- xit tér -- tia die, secún -- dum Scrip -- túras,
  et ascén -- dit in cælum, se -- det ad déx -- teram Pa -- tris.
  Et íte -- rum ventúrus est cum glória,
  iu -- dicá -- re vi -- vos et mór -- tu -- os,
  cui -- us reg -- ni non erit fi -- nis.
  Et in Spíri -- tum Sanc -- tum, Dó -- mi -- num et vi -- vi -- ficán -- tem:
  qui ex Pa -- tre Fi -- lióque procé -- dit.
  Qui cum Pa -- tre et Fí -- lio si -- mul ad -- orátur et conglo -- ri -- ficátur:
  qui locútus est per pro -- phétas.
  Et un -- am, sanc -- tam, ca -- thó -- li -- cam et apo -- stó -- li -- cam Ec -- clé -- si -- am.
  Con -- fíte -- or un -- um bap -- tís -- ma in re -- mis -- sió -- nem pec -- catórum.
  Et ex -- spéc -- to re -- s -- ur -- rec -- tió -- nem mor -- tuórum,
  et vit -- am ventúri sǽ -- cu -- li. Amen.  
}

scoreCAltoVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreCTenorVerse = \lyricmode {
  % Lyrics follow here.
  \scoreCSopranoVerse
}

scoreCBassVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreCPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreCSoprano \\
      \scoreCAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreCTenor \\
      \scoreCBass
    >>
  }
>>

scoreCRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreCSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreCAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreCTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreCBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreCBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreCBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreCViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreCViolinI

scoreCViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreCViolinII

scoreCChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } { \scoreCSoprano }
    \addlyrics { \scoreCSopranoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } { \scoreCAlto }
    \addlyrics { \scoreCAltoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreCTenor }
    \addlyrics { \scoreCTenorVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } { \clef bass \scoreCBass }
    \addlyrics { \scoreCBassVerse }
  >>
  \scoreCPianoReduction
>>

scoreCBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreCBcMusic }
  \new FiguredBass \scoreCBcFigures
>>

\bookpart {
  \header {
    subtitle = "Credo"
  }  
  \score {
    <<
      \scoreCViolinIPart
      \scoreCViolinIIPart
      \scoreCChoirPart
      \scoreCBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreCRehearsalMidi "soprano" "soprano sax" \scoreCSopranoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreCRehearsalMidi "alto" "soprano sax" \scoreCAltoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreCRehearsalMidi "tenor" "tenor sax" \scoreCTenorVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreCRehearsalMidi "bass" "tenor sax" \scoreCBassVerse
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sanctus
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalD = {
  \key bf \major
  %   \numericTimeSignature
  \time 6/8
  \tempo "Andante" 4=100
}

scoreDViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreDViolinII = \relative c'' {
  \global
  % Music follows here.
  
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
  \partial 2.
  r4 r8\f f4.
  d r8 ef ef d8. d16 e8 f(ef) c
  bf4.(ef4) c8 bf d d  
}

scoreDBass = \relative c {
  \global
  % Music follows here.
  
}

scoreDSopranoVerse = \lyricmode {
  % Lyrics follow here.
  Sanc -- tus, Sanc -- tus, Sanc -- tus Do -- mi -- nus De -- us Sa -- ba -- oth.
  Ple -- ni sunt cae -- li et ter -- ra glo -- ria tua.
  Ho -- san -- na in ex -- cel -- sis.
  Be -- ne -- dic -- tus qui ve -- nit in no -- mi -- ne Do -- mi -- ni.
  Ho -- san -- na in ex -- cel -- sis.  
}

scoreDAltoVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreDTenorVerse = \lyricmode {
  % Lyrics follow here.
    \scoreDSopranoVerse
}

scoreDBassVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreDPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreDSoprano \\
      \scoreDAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreDTenor \\
      \scoreDBass
    >>
  }
>>

scoreDRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreDSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreDAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreDTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreDBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreDBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreDBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreDViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreDViolinI

scoreDViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreDViolinII

scoreDChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } { \scoreDSoprano }
    \addlyrics { \scoreDSopranoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } { \scoreDAlto }
    \addlyrics { \scoreDAltoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreDTenor }
    \addlyrics { \scoreDTenorVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } { \clef bass \scoreDBass }
    \addlyrics { \scoreDBassVerse }
  >>
  \scoreDPianoReduction
>>

scoreDBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreDBcMusic }
  \new FiguredBass \scoreDBcFigures
>>

\bookpart {
  \header {
    subtitle = "Sanctus"
  }
  \score {
    <<
      \scoreDViolinIPart
      \scoreDViolinIIPart
      \scoreDChoirPart
      \scoreDBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreDRehearsalMidi "soprano" "soprano sax" \scoreDSopranoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreDRehearsalMidi "alto" "soprano sax" \scoreDAltoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreDRehearsalMidi "tenor" "tenor sax" \scoreDTenorVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreDRehearsalMidi "bass" "tenor sax" \scoreDBassVerse
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Benedictus
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalE = {
  \key ef \major
  %   \numericTimeSignature
  \time 4/4
  \tempo "Andante" 4=100
}

scoreEViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreEViolinII = \relative c'' {
  \global
  % Music follows here.
  
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
  r1
  \time 6/8
  r4 r8
  r2.
  r4 r8 bf4.\f
}

scoreEBass = \relative c {
  \global
  % Music follows here.
  
}

scoreESopranoVerse = \lyricmode {
  % Lyrics follow here.
  Be -- ne -- dic -- tus qui ve -- nit in no -- mi -- ne Do -- mi -- ni.
  Ho -- san -- na in ex -- cel -- sis.  
}

scoreEAltoVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreETenorVerse = \lyricmode {
  % Lyrics follow here.
  \scoreESopranoVerse
}

scoreEBassVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreEPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreESoprano \\
      \scoreEAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreETenor \\
      \scoreEBass
    >>
  }
>>

scoreERehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreESoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreEAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreETenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreEBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreEBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreEBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreEViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreEViolinI

scoreEViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreEViolinII

scoreEChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } { \scoreESoprano }
    \addlyrics { \scoreESopranoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } { \scoreEAlto }
    \addlyrics { \scoreEAltoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreETenor }
    \addlyrics { \scoreETenorVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } { \clef bass \scoreEBass }
    \addlyrics { \scoreEBassVerse }
  >>
  \scoreEPianoReduction
>>

scoreEBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreEBcMusic }
  \new FiguredBass \scoreEBcFigures
>>

\bookpart {
  \header {
    subtitle = "Benedictus"
  }
  \score {
    <<
      \scoreEViolinIPart
      \scoreEViolinIIPart
      \scoreEChoirPart
      \scoreEBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreERehearsalMidi "soprano" "soprano sax" \scoreESopranoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreERehearsalMidi "alto" "soprano sax" \scoreEAltoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreERehearsalMidi "tenor" "tenor sax" \scoreETenorVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreERehearsalMidi "bass" "tenor sax" \scoreEBassVerse
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Agnus Dei
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalF = {
  \key bf \major
  %   \numericTimeSignature
  \time 3/4
  \tempo "Andante" 4=100
}

scoreFViolinI = \relative c'' {
  \global
  % Music follows here.
  
}

scoreFViolinII = \relative c'' {
  \global
  % Music follows here.
  
}

scoreFSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreFAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreFTenor = \relative c' {
  \global
  % Music follows here.
  r2. r
  r4 r bf  
}

scoreFBass = \relative c {
  \global
  % Music follows here.
  
}

scoreFSopranoVerse = \lyricmode {
  % Lyrics follow here.
  Ag -- nus Dei, qui tol -- lis pec -- ca -- ta mun -- di, mi -- se -- re -- re no -- bis.
  Ag -- nus Dei, qui tol -- lis pec -- ca -- ta mun -- di, mi -- se -- re -- re no -- bis.
  Ag -- nus Dei, qui tol -- lis pec -- ca -- ta mun -- di, do -- na no -- bis pacem.  
}

scoreFAltoVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreFTenorVerse = \lyricmode {
  % Lyrics follow here.
  \scoreFSopranoVerse
}

scoreFBassVerse = \lyricmode {
  % Lyrics follow here.
  
}

scoreFPianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \scoreFSoprano \\
      \scoreFAlto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \scoreFTenor \\
      \scoreFBass
    >>
  }
>>

scoreFRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreFSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreFAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreFTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreFBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreFBcMusic = \relative c {
  \global
  % Music follows here.
  
}

scoreFBcFigures = \figuremode {
  \global
  \override Staff.BassFigureAlignmentPositioning #'direction = #DOWN
  % Figures follow here.
  
}

scoreFViolinIPart = \new Staff \with {
  instrumentName = "Violine I"
  shortInstrumentName = "Vl. I"
  midiInstrument = "violin"
} \scoreFViolinI

scoreFViolinIIPart = \new Staff \with {
  instrumentName = "Violine II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \scoreFViolinII

scoreFChoirPart = <<
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopran"
      shortInstrumentName = "S."
      \consists "Ambitus_engraver"
    } { \scoreFSoprano }
    \addlyrics { \scoreFSopranoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
      \consists "Ambitus_engraver"
    } { \scoreFAlto }
    \addlyrics { \scoreFAltoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \scoreFTenor }
    \addlyrics { \scoreFTenorVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bass"
      shortInstrumentName = "B."
      \consists "Ambitus_engraver"
    } { \clef bass \scoreFBass }
    \addlyrics { \scoreFBassVerse }
  >>
  \scoreFPianoReduction
>>

scoreFBassoContinuoPart = <<
  \new Staff \with {
    instrumentName = "Basso Continuo"
    shortInstrumentName = "B.C."
    midiInstrument = "cello"
  } { \clef bass \scoreFBcMusic }
  \new FiguredBass \scoreFBcFigures
>>

\bookpart {
  \header {
    subtitle = "Agnus Dei"
  }
  \score {
    <<
      \scoreFViolinIPart
      \scoreFViolinIIPart
      \scoreFChoirPart
      \scoreFBassoContinuoPart
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreFRehearsalMidi "soprano" "soprano sax" \scoreFSopranoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreFRehearsalMidi "alto" "soprano sax" \scoreFAltoVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreFRehearsalMidi "tenor" "tenor sax" \scoreFTenorVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreFRehearsalMidi "bass" "tenor sax" \scoreFBassVerse
    \midi { }
  }
}

