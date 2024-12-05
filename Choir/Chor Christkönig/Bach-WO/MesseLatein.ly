\version "2.24.4"
\language "english"

\header {
  dedication = ""
  title = "Messe in Latein"
  subtitle = ""
  subsubtitle = ""
  instrument = ""
  composer = "XYZ"
  arranger = "Op. xx"
  poet = ""
  meter = ""
  piece = ""
%  opus = "Op. 24"
  copyright = ""
  tagline = ""
}

\layout {
  \context {
    \Score
    \compressEmptyMeasures
  }
}

global = {
  \key c \major
  \time 4/4
  \tempo 4=100
}

tenorKyrieVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  c
}

tenorGloriaVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  d
}

tenorCreadoVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  d
}

tenorSanctusVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  d
}

tenorBenedictusVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  d
}

tenorAgnusDeiVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.
  d
}



verseKyrie = \lyricmode {
  % Lyrics follow here.
  Ky -- ri -- e, e -- le -- i -- son.
  Chris -- te, e -- le -- i -- son.
  Ky -- ri -- e, e -- le -- i -- son.
}

verseGloria = \lyricmode {
  % Lyrics follow here.
  Glo -- ri -- a in ex -- cel -- sis De -- o et in ter -- ra pax ho -- mi -- ni -- bus bo -- nae vo -- lun -- ta -- tis.
  Lau -- da -- mus te, be -- ne -- di -- ci -- mus te, ad -- o -- ra -- mus te, glo -- ri -- fi -- ca -- mus te.
  Gra -- ti -- as agi -- mus ti -- bi propter ma -- gnam glo -- ri -- am tu -- am.
  Do -- mi -- ne De -- us, Rex co -- eles -- tis, De -- us Pa -- ter o -- mni -- po -- tens.
  Do -- mi -- ne Fi -- li uni -- ge -- ni -- te, Je -- su Chris -- te.
  Do -- mi -- ne De -- us, A -- gnus De -- i, Fi -- li -- us Pa -- tris.
  Qui tol -- lis pec -- ca -- ta mun -- di, mi -- se -- re -- re no -- bis.
  Qui tol -- lis pec -- ca -- ta mun -- di, sus -- ci -- pe de -- pre -- ca -- ti -- o -- nem no -- stram.
  Qui se -- des ad dex -- te -- ram Pa -- tris, mi -- se -- re -- re no -- bis.
  Quo -- ni -- am tu so -- lus san -- ctus, tu so -- lus Do -- mi -- nus, tu so -- lus Al -- tis -- si -- mus, Je -- su Chris -- te.
  Cum Sanc -- to Spi -- ri -- tu in glo -- ri -- a De -- i Pa -- tris. A -- men.
}

verseCredo = \lyricmode {
  % Lyrics follow here.
  Cre -- do in un -- um De -- um, Pa -- trem om -- ni -- po -- ten -- tem, fac -- to -- rem co -- eli et ter -- rae, vi -- si -- bi -- li -- um om -- ni -- um et in -- vi -- si -- bi -- li -- um.
  Et in un -- um Do -- mi -- num Je -- sum Chris -- tum, Fi -- li -- um Dei uni -- ge -- ni -- tum, et ex Pa -- tre na -- tum an -- te om -- nia sae -- cu -- la.
  De -- um de Deo, lu -- men de lu -- mi -- ne, De -- um ver -- um de Deo ve -- ro, ge -- ni -- tum, non fac -- tum, con -- sub -- stan -- ti -- a -- lem Pa -- tri: per quem om -- nia fac -- ta sunt.
  Qui propter nos ho -- mi -- nes et propter no -- stram sa -- lu -- tem de -- scen -- dit de co -- elis.
  Et in -- car -- na -- tus est de Spi -- ri -- tu Sanc -- to ex Ma -- ria Vir -- gi -- ne, et ho -- mo fac -- tus est.
  Cru -- ci -- fi -- xus eti -- am pro no -- bis sub Pon -- tio Pi -- la -- to; pas -- sus et se -- pul -- tus est.
  Et re -- s -- urr -- e -- xit ter -- tia die, se -- cund -- um scrip -- tu -- ras.
  Et ascen -- dit in co -- elum, se -- det ad dex -- teram Pa -- tris.
  Et ite -- rum ven -- tu -- rus est cum glo -- ria, ju -- di -- care vi -- vos et mor -- tu -- os, cu -- jus reg -- ni non erit fi -- nis.
  Et in Spi -- ri -- tum Sanc -- tum, Do -- mi -- num et vi -- vi -- fi -- can -- tem: qui ex Pa -- tre Fi -- lio -- que pro -- ce -- dit.
  Qui cum Pa -- tre et Fi -- lio si -- mul ad -- ora -- tur et conglo -- ri -- fi -- ca -- tur: qui lo -- cu -- tus est per Pro -- phe -- tas.
  Et un -- am, sanc -- tam, ca -- tho -- li -- cam et apo -- sto -- li -- cam ec -- cle -- si -- am.
  Con -- fi -- te -- or un -- um bap -- tis -- ma in re -- mis -- si -- o -- nem pec -- ca -- torum.
  Et ex -- spec -- to re -- s -- ur -- rec -- ti -- o -- nem mor -- tuorum, et vit -- am ven -- tu -- ri sae -- cu -- li. Amen.
}

verseSanctus = \lyricmode {
  % Lyrics follow here.
  Sanc -- tus, sanc -- tus, sanc -- tus Do -- mi -- nus De -- us Sa -- ba -- oth.
  Ple -- ni sunt co -- eli et ter -- ra glo -- ria tua.
  Ho -- san -- na in ex -- cel -- sis.

}

verseBenedictus = \lyricmode {
  % Lyrics follow here.
  Be -- ne -- dic -- tus qui ve -- nit in no -- mi -- ne Do -- mi -- ni.
  Ho -- san -- na in ex -- cel -- sis.
}

verseAgnusDei = \lyricmode {
  % Lyrics follow here.
  Ag -- nus Dei, qui tol -- lis pec -- ca -- ta mun -- di, mi -- se -- re -- re no -- bis.
  Ag -- nus Dei, qui tol -- lis pec -- ca -- ta mun -- di, mi -- se -- re -- re no -- bis.
  Ag -- nus Dei, qui tol -- lis pec -- ca -- ta mun -- di, do -- na no -- bis pacem.
}

\score {
\header {
  opus = "Kyrie"
}
  \new Staff \with {
    instrumentName = "Tenor"
    midiInstrument = "choir aahs"
    \consists "Ambitus_engraver"
  } { \clef "treble_8" \tenorKyrieVoice }
  \addlyrics { \verseKyrie }
  \layout { }
  \midi { }
}
\score {
\header {
  opus = "Gloria"
}  
  \new Staff \with {
    instrumentName = "Tenor"
    midiInstrument = "choir aahs"
    \consists "Ambitus_engraver"
  } { \clef "treble_8" \tenorGloriaVoice }
  \addlyrics { \verseGloria }
  \layout { }
  \midi { }
}
\score {
\header {
  opus = "Credo"
}
  \new Staff \with {
    instrumentName = "Tenor"
    midiInstrument = "choir aahs"
    \consists "Ambitus_engraver"
  } { \clef "treble_8" \tenorCreadoVoice }
  \addlyrics { \verseCredo }
  \layout { }
  \midi { }
}
\score {
\header {
  opus = "Sanctus"
}
  \new Staff \with {
    instrumentName = "Tenor"
    midiInstrument = "choir aahs"
    \consists "Ambitus_engraver"
  } { \clef "treble_8" \tenorSanctusVoice }
  \addlyrics { \verseSanctus }
  \layout { }
  \midi { }
}
\score {
\header {
  opus = "Benedictus"
}
  \new Staff \with {
    instrumentName = "Tenor"
    midiInstrument = "choir aahs"
    \consists "Ambitus_engraver"
  } { \clef "treble_8" \tenorBenedictusVoice }
  \addlyrics { \verseBenedictus }
  \layout { }
  \midi { }
}
\score {
\header {
  opus = "Agnus Dei"
}
  \new Staff \with {
    instrumentName = "Tenor"
    midiInstrument = "choir aahs"
    \consists "Ambitus_engraver"
  } { \clef "treble_8" \tenorAgnusDeiVoice }
  \addlyrics { \verseAgnusDei }
  \layout { }
  \midi { }
}