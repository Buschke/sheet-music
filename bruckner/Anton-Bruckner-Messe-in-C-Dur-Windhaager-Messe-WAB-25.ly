\version "2.22.2"
\language "english"
\include "articulate.ly"

% \header {
%   dedication = "Dicata Deo"
%   title = "Messe in C-Dur"
%   subtitle = "Kyrie"
%   subsubtitle = "Windhaager Messe"
%   instrument = "Chor"
%   composer = "Anton Bruckner"
%   arranger = "gesetzt: Sven Buschke"
%   poet = "Text: Liturgie; ergänzt Joseph Messner"
%   meter = "Alla Breve, C-Dur"
%   piece = "Windhaag bei Freistadt, 1842"
%   opus = "WAB 25"
%   copyright = "© Sven Buschke, 22.09.2022"
%   tagline = "Bruckern in da house"
% }

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

globalA = {
  \compressEmptyMeasures
  \key c \major
  \time 2/2
  \tempo "Langsam" 2=69
}

globalB = {
  \compressEmptyMeasures
  \key c \major
  \time 4/4
  \tempo "Begeistert, doch nicht zu schnell" 4=69
}

globalC = {
  \compressEmptyMeasures
  \key c \major
  \time 3/4
  \tempo "Kraftvoll, entschieden" 4=69
}

globalD = {
  \compressEmptyMeasures
  \key c \major
  \time 4/4
  \tempo "Ruhig" 4=69
}

globalE = {
  \compressEmptyMeasures
  \key c \minor
  \time 4/4
  \tempo "Andante cantabile" 4=69
}

globalF = {
  \compressEmptyMeasures
  \key c \major
  \time 3/4
  \tempo "Sehr langsam" 4=69
}

scoreASoprano = \relative c'' {
  \globalA
  % Music follows here.

}

scoreAAlto = \relative c' {
  \globalA
  % Music follows here.

}

scoreATenor = \relative c' {
  \globalA
  % Music follows here.
  r1 r r r
  a2 c
  b a
  g( f)
  e r
  r4 c'8.\f c16 c4 b\<
  a2^\markup  \circle {1*} g4 c\mf\sf\>
  d2.( c4)
  b2 \breathe bf\pp
  bf bf\<
  af c4\sf\> c4
  c2( b)\mf
  c\f\<\breathe  c
  c\sf c
  bf a
  a1^\markup  \circle {2} \mf
  g2 g g1\rtoe
  gs2 a
  e' e,
  e2.\f e4
  f2 a
  g(\> e)
  c e\mf
  f(\> d4 g)
  g2 g4\p g\breathe
  a2^\markup \circle{3} e\<
  e( f4 g\sf\>
  a2) g\mf\fermata
  \bar "|."
}

scoreABass = \relative c {
  \globalA
  % Music follows here.

}

scoreASopranoVerse = \lyricmode {
  % Lyrics follow here.

}

scoreAAltoVerse = \lyricmode {
  % Lyrics follow here.

}

scoreATenorVerse = \lyricmode {
  % Lyrics follow here.
  Ky -- ri -- e e -- lei -- son.
  Ky -- ri -- e e -- lei -- son,  e -- lei -- son.
  Chri -- ste e -- lei -- son, e -- lei -- son.
  Ky -- ri -- e e -- lei -- son.
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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 69 2)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreBSoprano = \relative c'' {
  \globalB
  % Music follows here.

}

scoreBAlto = \relative c' {
  \globalB
  % Music follows here.

}

scoreBTenor = \relative c' {
  \globalB
  % Music follows here.
  R1*5
  r4 e,2\f c4
  a'2-> g
  c2. b4
  a gs a b
  e,4. 8 4 r
  g2\p g
  a(\< g4) f
  e2(\sf f)
  e r4 4\mf
  b'4. e,8 4 8 8
  a8.\> 16 e4 c' c,8\pp 8
  d2 e\<
  f4 \breathe g\f a b
  a2 gs
  a r
  c\mf bf4 a
  c( bf) a g
  g4.( f8) f2
  f\< a
  c\sf\> c
  bf\mf g4 gs
  a2\> g
  c\p 4 4
  c( bf) a2
  a2.\mf 4
  2 2
  2.\f
  d4
  2 4 4
  a2.\> 4
  d,2\mf r
  d'2\p c4 4
  4 4 4 b
  a2 b
  c r
  r1 r
  c2 4 4
  c( bf) a2
  2. 4
  2 2
  d2 4 4
  a1\> 4\mf r r d\pp
  d1
  d,4 a'4 4 4
  2\> 2
  b2.\pp\< 4
  a2\sf\> c
  c4(\mf\< d c b)\sf
  a2 r4 a
  d1
  d,4 a'4 4 4
  2 2
  r4 e( gs) b
  c2 a
  e4( f) e2
  r1
  a4. 8 8 8 bf a
  g2 4 4
  a2 2
  4 4 4 r
  g2 bf4 a8 g
  g4. f8 2
  g2\p g
  g\pp g
  c\f g4. 8
  a4. 8
  e4 4
  4 8 8 4 4
  4 4 r2
  c'2\p g
  fs4( a) g2
  e'( d4) c
  c4.( d8) 2
  e2.\ff 4
  d^\markup{\italic rit.}( c b) a
  c2( b)
  c r
  \bar "|."
}

scoreBBass = \relative c {
  \globalB
  % Music follows here.

}

scoreBSopranoVerse = \lyricmode {
  % Lyrics follow here.
    Gloria in excelsis Deo
}

scoreBAltoVerse = \lyricmode {
  % Lyrics follow here.

}

scoreBTenorVerse = \lyricmode {
  % Lyrics follow here.
  Et in ter -- ra pax, in ter -- ra pax ho -- mi -- ni -- bus bo -- nae vo -- lun-- ta -- tis.
  Lau -- dam -- us te,
  be -- ne -- di -- ci -- mus te,
  a -- do -- ra -- mus te,
  glo -- ri -- fi -- ca -- mus te.
  Gra -- ti -- as a -- gi -- mus ti -- bi pro -- pter ma -- gnam glo -- ri -- am tu -- am,
  Do -- mi -- ne De -- us, Rex cae -- les -- tis,
  De -- us pa -- ter o -- mni -- po -- tens.
  Do -- mi -- ne Fi -- li u -- ni -- ge -- ni -- te.
  Do -- mi -- ne De -- us, A -- gnus De -- i, Fi -- li -- us Pa -- tris;
  qui tol -- lis pec -- ca -- ta mun -- di,
  mi -- se -- re -- re no -- bis;
  qui tol -- lis pec -- ca -- ta mun -- di,
  mi -- se -- re -- re no -- bis.
  Quo -- ni -- am Tu so -- lus San -- ctus,
  Tu so -- lus Do -- mi -- nus,
  Tu so -- lus Al -- tis -- si -- mus,
  Ie -- su Chri -- ste,
  cum San -- cto Spi -- ri -- tu
  in glo -- ri -- a De -- i Pa -- tris. A -- men,
  A -- men, A -- men, A -- men, A -- men, A -- men, A -- men.
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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 69 2)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreCSoprano = \relative c'' {
  \globalC
  % Music follows here.

}

scoreCAlto = \relative c' {
  \globalC
  % Music follows here.

}

scoreCTenor = \relative c' {
  \globalC
  % Music follows here.
  g2.\mf
  e2 f4
  e2 d4
  g2( a4)
  g2 r4
  c4 c e
  e( c) a
  c2( d4)
  c8 c a4 c
  c^\markup  \circle {1} a bf
  a2( g4)
  a f a
  c4. c8 c4
  cs2 a4
  a r g
  f f e
  g4. 8 4
  r g4 4
  2 4
  e4^\markup  \circle {2} e f
  e2 d4
  g2( a4)
  g2 r4
  a a b
  c a d8 d
  a2 b4
  a r r
  r1. r r^\markup  \circle {3} r r
  r4 r g8 g
  d'4 e f
  e( g,4.) a8
  g4 g r
  g8 8 4 4
  f4 4 e8 e
  g8 8 4 4
  e2^\markup  \circle {4} f4
  r a c
  c a bf
  a4. 8 g4
  r f( a)
  c4. 8 4
  cs4. 8 a4
  a a a
  bf d c
  d d ds
  e4.^\markup  \circle {5} 8 4
  2( d4)
  c \breathe 4 8 8
  a2 4
  2 c4
  e4. d8 c4
  c
  b
  gs8 8
  a2 4
  8 g8 4 gs
  a2 c4
  b^\markup  \circle {6}( c) a
  b2 g8 g
  af2 g4
  f( g) f
  ef( d) c
  g' g r8 g
  ef'8. 16 d4 c
  g g r
  bf2 4
  af2 bf4
  c2^\markup  \circle {7} af4
  g( af) f
  g2 r4
  g g g
  c2 g4
  a4. 8 e4
  f( g2)
  c,4 r g'
  a f a
  g( c) c
  d2^\markup  \circle {8} 4
  f e d8( c)
  b4 e8 b e, b'
  c4. 8 4
  g2( f4)
  e r r8 g8
  8. 16 4 4
  gs4. 8 8 8
  a8 a b4 c8 c
  d2 c4
  c^\markup  \circle {9} b r8 e,8 4. 8 4~
  4 r r
  gs2 b4
  a a a
  b( c) b
  a a r
  r2. r r r r^\markup  \circle {10} r r r
  r4 r g
  c2 4
  4( g4) fs
  g2 4
  r4 a d8( c)
  b4^\markup  \circle {11} c d
  c2 4
  4( g4 f)
  e r g
  g2 c4
  b c e, g( f) e
  f( e) d
  e( g4.) 8
  a4. 8 g4
  r8^\markup  \circle {12} b8 4 c4
  c( b) r
  c4 c e8 8
  4 c4 a
  c2( d4)
  c a c
  c8 c a4 bf
  a8 8 4 g4
  r2.
  r4 r g8 8
  2^\markup  \circle {13} 4
  f8 8 4 e4
  g2 4
  r4 e f
  e c r
  r2. r r r r
  c'4\ff( c, d) c2 r
  \bar "|."
}

scoreCBass = \relative c {
  \globalC
  % Music follows here.

}

scoreCSopranoVerse = \lyricmode {
  % Lyrics follow here.

}

scoreCAltoVerse = \lyricmode {
  % Lyrics follow here.

}

scoreCTenorVerse = \lyricmode {
  % Lyrics follow here.
  Cre -- do in un -- um De -- um,
  Pa -- trem om -- ni -- po -- ten -- tem,
  fac -- to -- rem cae -- li et ter -- rae,
  vi -- si -- bi -- li -- um om -- ni -- um et in -- vi -- si -- bi -- li -- um.
  Et in u -- num Do -- mi -- num Je -- sum Chris -- tum,
  Fi -- li -- um De -- i un -- i -- ge -- ni -- tum,
%  et ex Patre natum ante omnia saecula.
%  Deum de Deo, lumen de lumine,
  De -- um ve -- rum de De -- o ve -- ro,
  ge -- ni -- tum, non fac -- tum,
  con -- sub -- stan -- ti -- a -- lem Pa -- tri:
  per quem om -- ni -- a fac -- ta sunt.
  Qui prop -- ter nos ho -- mi -- nes
  et prop -- ter nos -- tram sa -- lu -- tem
  de -- scen -- dit de cae -- lis.
  Et in -- car -- na -- tus est de Spi -- ri -- tu Sanc -- to
  ex Ma -- ri -- a Vir -- gi -- ne:
  et ho -- mo fac -- tus est.
  Cru -- ci -- fi -- xus e -- ti -- am pro no -- bis
  sub Pon -- ti -- o Pi -- la -- to;
  pas -- sus, pas -- sus et se -- pul -- tus est,
  et re -- sur -- re -- xit ter -- ti -- a di -- e
  se -- cun -- dum Scri -- ptu -- ras,
  et a -- scen -- dit in cae -- lum,
  se -- det ad dex -- te -- ram Pa -- tris.
  Et i -- te -- rum ven -- tu -- rus est cum glo -- ri -- a,
  ju -- di -- ca -- re vi -- vos et mor -- tu -- os,
  cu -- ius re -- gni non e -- rit fi -- nis.
%   Et in Spi -- ri -- tum Sanc -- tum,
%   Do -- mi -- num et vi -- vi -- fi -- can -- tem:
%   qui ex Pa -- tre Fi -- li -- o -- que pro -- ce -- dit.
%   Qui cum Pa -- tre et Fi -- li -- o,
%   si -- mul a -- do -- ra -- tur
  et con -- glo -- ri -- fi -- ca -- tur:
  qui lo -- cu -- tus est per pro -- phe -- tas.
  Et u -- nam, sanc -- tam, ca -- tho -- li -- cam
  et a -- po -- sto -- li -- cam Ec -- cle -- si -- am.
  Con -- fi -- te -- or u -- num bap -- tis -- ma
  in re -- mis -- si -- o -- nem pec -- ca -- to -- rum.
  Et ex -- pec -- to re -- sur -- rec -- ti -- o -- nem mor -- tu -- o -- rum,
%   et vi -- tam ven -- tu -- ri sae -- cu -- li.
  A -- men.
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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 69 2)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreDSoprano = \relative c'' {
  \globalD
  % Music follows here.

}

scoreDAlto = \relative c' {
  \globalD
  % Music follows here.

}

scoreDTenor = \relative c' {
  \globalD
  % Music follows here.
  R1*3
  <d f>2 <c e>~
  <c e>4 <c e>2( <b d>4
  <a c>2 <b d>)
  <c e> r
  gs4. 8 b2
  c b
  c2. 4
  b1\fermata
  2 4 4
  c2 a4 \breathe c
  b1
  c2 \breathe c~\ff
  c b4 a
  g2~ 2
  4 \breathe 4\p c bf
  a2 g^\markup \italic{rit.}
  a g
  \bar "|."
}

scoreDBass = \relative c {
  \globalD
  % Music follows here.

}

scoreDSopranoVerse = \lyricmode {
  % Lyrics follow here.

}

scoreDAltoVerse = \lyricmode {
  % Lyrics follow here.

}

scoreDTenorVerse = \lyricmode {
  % Lyrics follow here.
  San -- ctus, san -- ctus,
  Do -- mi -- nus De -- us Sa -- ba -- oth.
  Ple -- ni sunt coe -- li et ter -- ra
  glo -- ri -- a tu -- a.
  Ho -- san -- na in ex -- cel -- sis.
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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 69 2)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreEBassVoice = \relative c {
  \globalE
  \dynamicUp
  % Music follows here.

}

scoreEVerse = \lyricmode {
  % Lyrics follow here.

}

scoreESoprano = \relative c'' {
  \globalE
  % Music follows here.

}

scoreEAlto = \relative c' {
  \globalE
  % Music follows here.

}

scoreETenor = \relative c' {
  \globalE
  % Music follows here.
  R1*14
  bf2(\p f4.) bf8
  d2d4 bf
  c( bf) a f
  g( e) f bf
  a( bf g)
  c8 bf
  bf4.^\markup  \circle {2} a8 a4 r
  r bf2 bf4
  f'4.( bf,8) bf2
  r4 c2\< c4
  c2 4 4
  bf2 4 4
  c2 4 4
  bf2 d
  bf  ef,\mf
  ef4( c') bf af
  g2( af4) f
  g2 r
  \bar "|."

}

scoreEBass = \relative c {
  \globalE
  % Music follows here.

}

scoreESopranoVerse = \lyricmode {
  % Lyrics follow here.

}

scoreEAltoVerse = \lyricmode {
  % Lyrics follow here.

}

scoreETenorVerse = \lyricmode {
  % Lyrics follow here.
  Be -- ne di -- ctus,
  qui ve -- nit,
  qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  be -- ne di -- ctus, be -- ne di -- ctus,
  qui ve -- nit in no -- mi -- ne Do -- mi -- ni,
  in no -- mi -- ne Do -- mi -- ni.
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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 69 2)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreEBassVoicePart = \new Staff \with {
  instrumentName = "Bass"
  shortInstrumentName = "B."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \clef bass \scoreEBassVoice }
\addlyrics { \scoreEVerse }

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
%   \scoreEPianoReduction
>>

scoreFSopranoVoice = \relative c'' {
  \globalF
  \dynamicUp
  % Music follows here.

}

scoreFVerse = \lyricmode {
  % Lyrics follow here.

}

scoreFSoprano = \relative c'' {
  \globalF
  % Music follows here.

}

scoreFAlto = \relative c' {
  \globalF
  % Music follows here.

}

scoreFTenor = \relative c' {
  \globalF
  % Music follows here.
  R2.*8
  e4(\p\< d) c
  b\sf\> e \breathe b \p
  a\< gs a
  b2\sf\> a4\p
  a\> gs\pp r
  gs2\mf b4
  a( d) c
  gs2\pp b4
  a2 a4
  b( c b)
  a2 r4
  r2.
  c2\f c4
  cs a cs
  d a a
  g(\f a) d
  d c b
  d e f
   e( g,) a
   g g r
   g2\p g4
   f2
   e4\pp g2 g4
   e2(\> f4)
   e2\ppp r4
   \bar "|."

}

scoreFBass = \relative c {
  \globalF
  % Music follows here.

}

scoreFSopranoVerse = \lyricmode {
  % Lyrics follow here.

}

scoreFAltoVerse = \lyricmode {
  % Lyrics follow here.

}

scoreFTenorVerse = \lyricmode {
  % Lyrics follow here.
  A -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di,
  mi -- se -- re -- re, mi -- se -- re -- re no -- bis.
  A -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di,
  qui tol -- lis pec -- ca -- ta mun -- di,
    do -- na, do -- na no -- bis pa -- cem.
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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 69 2)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

scoreFSopranoVoicePart = \new Staff \with {
  instrumentName = "Sopran"
  shortInstrumentName = "S."
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \scoreFSopranoVoice }
\addlyrics { \scoreFVerse }

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
%   \scoreFPianoReduction
>>

\book {
  \bookpart {
    \header {
      dedication = "Dicata Deo"
      title = "Messe in C-Dur"
      subtitle = "Kyrie"
      subsubtitle = "Windhaager Messe"
      instrument = "Chor"
      composer = "Anton Bruckner"
      arranger = "gesetzt: Sven Buschke"
      poet = "Text: Liturgie; ergänzt Joseph Messner"
      meter = "Alla Breve, C-Dur"
      piece = "Windhaag bei Freistadt, 1842"
      opus = "WAB 25"
      copyright = "© Sven Buschke, 22.09.2022"
%       tagline = "Bruckern in da house"
    }
    \score {
      <<
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
%         \scoreAPianoReduction
      >>
      \layout { }
      \midi { }
    }
  }
  \bookpart {
    \header {
      subtitle = "Gloria"
      instrument = "Chor"
      meter = "4/4-Takt, C-Dur"
      tagline = "Bruckern in da house"
    }
    \score {
      <<
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
%         \scoreBPianoReduction
      >>
      \layout { }
      \midi { }
    }
  }
  \bookpart {
    \header {
      subtitle = "Credo"
      instrument = "Chor"
      meter = "3/4-Takt, C-Dur"
      tagline = "Bruckern in da house"
    }
    \score {
      <<
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
%         \scoreCPianoReduction
      >>
      \layout { }
      \midi { }
    }
  }
  \bookpart {
    \header {
      subtitle = "Sanctus"
      instrument = "Chor"
      meter = "4/4-Takt, C-Dur"
      tagline = "Bruckern in da house"
    }
    \score {
      <<
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
%         \scoreDPianoReduction
      >>
      \layout { }
      \midi { }
    }
  }
  \bookpart {
    \header {
      subtitle = "Benedictus"
      instrument = "Chor"
      meter = "4/4-Takt, c-Moll"
      tagline = "Bruckern in da house"
    }
    \score {
      <<
        \scoreEBassVoicePart
        \scoreEChoirPart
      >>
      \layout { }
      \midi { }
    }
  }
  \bookpart {
    \header {
      subtitle = "Agnus Dei"
      instrument = "Chor"
      meter = "3/4-Takt, C-Dur"
      tagline = "Bruckern in da house"
    }
    \score {
      <<
        \scoreFSopranoVoicePart
        \scoreFChoirPart
      >>
      \layout { }
      \midi { }
    }
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

