%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                                FICHIER Erlkoenig.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                     FRANZ SCHUBERT: Gesang "Erlkönig", für eine Singstimme mit Klavierbegleitung
%                                           AVEC SORTIES PARTITION ET MIDI SEPAREES
%                                                  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.22.0"
\include "italiano.ly"

#(set-global-staff-size 18)

% PAPIER: FORMAT MIXTE ADAPTÉ POUR A4 ET LETTER US
\paper {
 %paper-height = 279\mm
 %paper-width = 210\mm
 line-width = 180\mm
 obsolete-between-system-padding = #0.5  system-system-spacing.padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing.padding = #(/ obsolete-between-system-padding staff-space)
 system-system-spacing = #0.5
}

\header {
 title = \markup { \fontsize #1.5 "Erlkönig" }
 subtitle = \markup { \fontsize #0.1 \bold "Johann Wolfgang von Goethe" \small "(1749-1832)" }
 subsubtitle = " "
 composer = \markup \center-column { \fontsize #3 \bold "Franz Schubert" \small "(1797-1828)" "D 328 (Op. 1, 1815)" }
% MUTOPIA
 mutopiatitle = "Erlkönig"
 mutopiacomposer = "SchubertF"
 mutopiapoet = "Johann Wolfgang von Goethe (1749-1832)"
 mutopiaopus = "D.328 (Op. 1)"
 mutopiainstrument = "Voice and Piano"
 date = "1815"
 source = "C.F. Peters (Band I)"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ph. Raynaud"
 moreInfo = "A source is freely available at http://www.dlib.indiana.edu/variations/scores/"
 footer = "Mutopia-2007/09/07-1030"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url "http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url "http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url "http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           COMMANDES ET FONCTIONS
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           1. POUR AMÉLIORER LA PARTITION
%

% DEPLACER UNE DYNAMIQUE VERS LA GAUCHE, LA DROITE, LE HAUT, LE BAS
dynamG =        \once \override DynamicText.extra-offset = #'(-1 . 0)
dynamD =        \once \override DynamicText.extra-offset = #'(1.5 . 0)
dynamDB =       \once \override DynamicText.extra-offset = #'(1 . -1)
pinceD =        \once \override Hairpin.extra-offset = #'(1 . 0)
pinceDD =       \once \override Hairpin.extra-offset = #'(2 . 0)
pinceDDDD =     \once \override Hairpin.extra-offset = #'(4 . 0)
pinceH =        \once \override Hairpin.extra-offset = #'(0 . 1.5)
pinceMontante = \once \override Hairpin.rotation = #'(15 -1 0)

% DEPLACER UN CRESC/DECRESC
cresD =    { \set crescendoText = \markup { \italic " cresc." } \set crescendoSpanner = #'text }
cresDDDD = { \set crescendoText = \markup { \italic "    cresc." } \set crescendoSpanner = #'text }

% DYNAMIQUE ENTRE PARENTHESES
ppAdLib = \markup { \fontsize #-2 \line { \bold \italic ( \dynamic pp ) } }

% CACHER LE NOMBRE OU LE CROCHET D'UN NOLET
nombreNoletH  = \once \override TupletNumber.extra-offset = #'(0 . 1.5)
noletSansNombre  = \override TupletNumber.transparent = ##t
noletSansCrochet = \override TupletBracket.transparent = ##t

% NOLET SUR DEUX PORTEES
noletTraversantO = {
 \stemUp
 \once \override Stem.length = #17
 \once \override Stem.cross-staff = ##t
 \once \override Flag.style = #'no-flag
}
noletTraversant = {
 \stemUp
 \override Stem.length = #17
 \override Stem.cross-staff = ##t
 \override Flag.style = #'no-flag
}
noletTraversantL = {
 \stemUp
 \override Stem.length = #22
 \override Stem.cross-staff = ##t
 \override Flag.style = #'no-flag
}
noletNormal = {
 \revert   Stem.length
 \override Stem.cross-staff = ##f
}

% SUPPRESSION DU PointAndClick
PDFSimple =
#(define-music-function () ()
   (ly:set-option 'point-and-click #f)
   (make-music 'SequentialMusic 'void #t))
\PDFSimple

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           2. POUR AMÉLIORER LE VOLUME DE LA SORTIE MIDI

% Le volume de la mélodie a été étendu en totalité (de 0 à 1)

% VARIATIONS DU TEMPO
tempoAccA =    { \once \override Score.MetronomeMark.transparent = ##t \tempo 4=154 }
tempoAccB =    { \once \override Score.MetronomeMark.transparent = ##t \tempo 4=156 }
tempoAccC =    { \once \override Score.MetronomeMark.transparent = ##t \tempo 4=158 }
tempoAccD =    { \once \override Score.MetronomeMark.transparent = ##t \tempo 4=160 }
tempoAccE =    { \once \override Score.MetronomeMark.transparent = ##t \tempo 4=161 }
tempoAccF =    { \once \override Score.MetronomeMark.transparent = ##t \tempo 4=162 }
tempoAccG =    { \once \override Score.MetronomeMark.transparent = ##t \tempo 4=163 }
tempoAccH =    { \once \override Score.MetronomeMark.transparent = ##t \tempo 4=164 }
tempoAccI =    { \once \override Score.MetronomeMark.transparent = ##t \tempo 4=165 }
tempoAccJ =    { \once \override Score.MetronomeMark.transparent = ##t \tempo 4=166 }
tempoRecit =   { \once \override Score.MetronomeMark.transparent = ##t \tempo 4=45 }
tempoAndante = { \once \override Score.MetronomeMark.transparent = ##t \tempo 4=70 }

% INSTRUMENTS POUR LA MELODIE
NARRATEUR =    \set Staff.midiInstrument = "trombone"
ENFANT =       \set Staff.midiInstrument = "harmonica"
PERE =         \set Staff.midiInstrument = "clarinet"
ROIDESAULNES = \set Staff.midiInstrument = "pan flute"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                           STRUCTURE GENERALE DU FICHIER
%
%  Les sorties Partition et Midi sont dissociées (le volume de la sortie Midi a été affiné).
%
%  A. MELODIE
%     A1. Notes
%     A2. Dynamiques pour la sortie Midi
%  B. POEME
%  C. PIANO
%     C1. PIANO HAUT: Notes
%     C2. PIANO BAS: Notes (en trois parties: A et C à 1 voix, B à deux voix)
%     C3. PIANO: Dynamiques pour la sortie Partition
%     C4. PIANO: Dynamiques pour la sortie Midi
%  D. SORTIE PARTITION
%  E. SORTIE MIDI
%
% 	                BIENVENUE A TOUTE SUGGESTION POUR AMELIORER LA PARTITION, LA SORTIE MIDI OU LE CODAGE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A1. MELODIE: Notes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

meloNote = \relative do'' {

%1-14
 R1*14
%15
 r2 r4 la
 sib2 la4 sol
 la2. la4
 sib2 sol
%19
 re' r
 r2 r4 re
 re2. sol4
 sol2 mib4 do
 fa2. la,4
%24
 sib2 r4 sib
 mib2. la,4
 \appoggiatura do4 sib2 sib
 mib la,4. la8
%28
 \appoggiatura do4 sib2 r4 sib
 re2. la4
 \appoggiatura do8 sib4 sib r sol
 la2 fad
 sol r
%33
 R1
 R1
 R1
 r2 r4 re
 sol2 r4 re
%38
 sol2 la4. la8
 sib2 si4. si8
 do2 r
 r2 r4 do
%42
 re2. sol,4
 mib'2. do4
 re2 re4 sol,
 mib'2 r
%46
 r r4 do
 reb2. sib4
 la fa r do'
 reb2. do8[( sib)]
%50
 do2 r
 r r4 do,
 mib2. mib4
 fa2. do4
 mib4. re8 re4 r
 R1
%56
 R1
 r2 r4 do'
 re2. sib4
 fa2. do'4
%60
 re2. sib4
 fa2. do'4
 re2. re4
%63
 fa2 do
 do4(  \tuplet 3/2 { si8[ do re] ) } do4 mi,
 fa2. fa4
%66
 do'2. dod4
 re2 sib4 sib8[( si)]
 do2. fa,4
%69
 re'2. re8 re
 sol4. fa8 fa[( mib)] re[( do)]
 sib2 ~( sib8[ do]) re do
 sib2 r4
 re
%73
 mib2 mib4. mib8
 mib[( re)] re4 r re
 mib2 mib4. mib8
 re2 r4 la
 sib la sib si8 si
 do2 dod4. dod8
%79
 re1
 r2 r4 fad,   \bar "||"  \key do \major
 si4 si r fad8 fad
 la4 sol8 sol sol2
 r4 sol la la
%84
 si4 sol re mi8 fad
 sol2 r2
 r2 r4 sol
 sol4 la8[( si)] do4 do8 dod
 re 4sol, mi' re8 do!
%89
 si4 mi, do' la8 la
 si4 mi, do' la8 la
 la4 sold8[( la)] si4 sol8 sol
 la4 re,8 re si'4 r8 sol
%93
 sol4 la8 si do4 re8 mi
 fa4 re8 si do4 r8 sol
 sol4 la8 si do4 re8 mi
 sol8[( fa)] re si do4 r4
%97
 r2 r4 mi
 fa2 fa4. fa8
 fa8[( mi)] mi4 r4 mi
 fa2 fa4. fa8
 mi2 r4 si
%102
 do4 si do dod8 dod
 re2 red
 mi1
 r2 r4 sold,4
 dod2 r4 sold
%107
 la2 r4 la
 la2 la4. la8
 re2. re4
 re4 sib8 sol mi4 sib'
 la2 la4 la
%112
 re,2 r2
 R1*3
 r2 r4 re'4
%117
 mib4. sib8 sib4 mib
 re4 re8 mib fa4 mib8 re
 mib2. re4
 dod2 dod4 dod
%121
 re2 re4. sold,8
 la2 la4. la8
 re,2 r4 fa'
 solb2 solb4. solb8
 solb8[( fa)] fa4 r4 fa
%126
 solb2 solb4. solb8
 fa2 r2
 fa2 fad4. fad8
 sol!2 mib4. mib8
 re2. re4   \bar "||" \key sib \major
%131
 sol,2 r2
 r2 r4 re
 re2. re4
 \appoggiatura la'8 sol4 sol r sol
 sol2^\markup { \bold \italic accelerando } la4. la8
%136
 sib2 r4 sib
 sib2 do
 \appoggiatura mib8 re4 re4 r re
 re2 sol4. re8
%140
 mib2 r2
 R1
 r2 r4 do4
 do2. lab4
 reb4. sib8 sol4 sib
%145-148
 lab4 r4 r2
 r4^\markup { \bold \italic "Recit." } r16 lab16 lab sib do4 sib8 lab
 sol4 r8\fermata dod,8 re4 r4
 R1
 \bar "|."
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
meloNotePart = {
 \clef treble
 \time 4/4
 \key sib \major
 \set autoBeaming = ##f
 \meloNote
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
meloNoteMidi = {
 \set Staff.midiInstrument = "trumpet"
 \set Staff.midiMinimumVolume = #0
 \set Staff.midiMaximumVolume = #1
 \meloNote
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           A2. MELODIE: Dynamiques pour la sortie Midi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

meloDynMidi = {

%1-14
 s1*14
%15-34 narrateur
 s1\f
 s1*19
%35-40
 \PERE s1\mf
 s1*5
%41-50
 \ENFANT s1\f
 s1*9
%51-56
 \PERE s1\mf
 s1*5
%57-72
 \ROIDESAULNES s1\mf
 s1*14
 s2
%72-79
 \ENFANT s2\f
 s1*7
%80-85
 \PERE s1\mf
 s1*5
%86-96
 \ROIDESAULNES s1\mp
 s1*10
%97-104
 \ENFANT s1\f
 s1*7
%105-115
 \PERE s1\mf
 s1*10
%116-123
 \ROIDESAULNES s1\mf
 s1*6
 s2\fff
%123-131
 \ENFANT s2\f
 s1*8
%132-148
 \NARRATEUR s1\fff
 s1*2
%135-144 accelerando
 \tempoAccA s1
 \tempoAccB s1
 \tempoAccC s1
 \tempoAccD s1
 \tempoAccE s1
 \tempoAccF s1
 \tempoAccG s1
 \tempoAccH s1
 \tempoAccI s1
 \tempoAccJ s1
%145
 s1
 \tempoRecit s1\mf
 s2 s4 \tempoAndante s4
 s1
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B. POEME
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

poeme = \lyricmode {
 \set fontSize = #-0.5

%15-32
 Wer rei -- tet so spät durch Nacht und Wind?
 Es ist der Va -- ter mit sei -- nem Kind;
 Er hat den Kna -- ben wohl in dem Arm,
 Er faßt ihn si -- cher, er hält ihn warm.

%36-54
 Mein Sohn, was birgst du so bang dein Ge -- sicht?
 Siehst, Va -- ter, du den Erl -- kö -- nig nicht?
 Den Er -- len -- kö -- nig mit Kron' und Schweif?
 Mein Sohn, es ist ein Ne -- bel -- streif.

%57-72
 „Du lie -- bes Kind, komm, geh mit mir!
 Gar schö -- ne Spie -- le spiel' ich mit dir;
 Manch' bun -- te Blu -- men sind an dem Strand,
 Mei -- ne Mut -- ter hat manch gül -- den Ge -- wand.”
 
%72-85
 Mein Va -- ter, mein Va -- ter, und hö -- rest du nicht,
 Was Er -- len -- kö -- nig mir lei -- se ver -- spricht?
 Sei ru -- hig, blei -- be ru -- hig, mein Kind;
 In dür -- ren Blät -- ter säu -- selt der Wind.

%86-96
 „Willst, fei -- ner Kna -- be, du mit mir gehn?
 Mei -- ne Töch -- ter sol -- len dich war -- ten schön;
 Mei -- ne Töch -- ter füh -- ren den nächt -- li -- chen Reihn
 Und wie -- gen und tan -- zen und sin -- gen dich ein,
 Sie wie -- gen und tan -- zen und sin -- gen dich ein.”
 
%97-112
 Mein Va -- ter, mein Va -- ter, und siehst du nicht dort
 Erl -- kö -- nigs Töch -- ter am dü -- stern Ort?
 Mein Sohn, mein Sohn, ich seh' es ge -- nau:
 Es schei -- nen die al -- ten Wei -- den so grau.
 
%116-131
 „Ich lie -- be dich, mich reizt dei -- ne schö -- ne Ge -- stalt;
 Und bist du nicht wil -- lig, so brauch' ich Ge -- walt.”
 Mein Va -- ter, mein Va -- ter, jetzt faßt er mich an!
 Erl -- kö -- nig hat mir ein Leids ge -- tan!

%132-147
 Dem Va -- ter grau -- set's; er rei -- tet ge -- schwind,
 Er hält in Ar -- men das äch -- zen -- de Kind,
 Er -- reicht den Hof mit Mühe und Not;
 In sei -- nen Ar -- men das Kind war tot.
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C1. PIANO HAUT: Notes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pianoHautNote = \relative do' {

 \noletSansCrochet

%1
 \tupletDown
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%2
 \noletSansNombre
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%3
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%4
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%5
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%6
 \tuplet 3/2 { <la sol' la>8[ <la sol' la> <la sol' la>] } \tuplet 3/2 { <la sol' la>8[ <la sol' la> <la sol' la>] }
 \tuplet 3/2 { <la sol' la>8[ <la sol' la> <la sol' la>] } \tuplet 3/2 { <la sol' la>8[ <la sol' la> <la sol' la>] }
%7
 \tuplet 3/2 { <sib sol' sib>8[ <sib sol' sib> <sib sol' sib>] } \tuplet 3/2 { <sib sol' sib>8[ <sib sol' sib> <sib sol' sib>] }
 \tuplet 3/2 { <la fad' la>8[ <la fad' la> <la fad' la>] } \tuplet 3/2 { <la fad' la>8[ <la fad' la> <la fad' la>] }
%8
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%9
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%10
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%11
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%12
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%13 
 \tuplet 3/2 { <la sol' la>8[ <la sol' la> <la sol' la>] } \tuplet 3/2 { <la sol' la>8[ <la sol' la> <la sol' la>] }
 \tuplet 3/2 { <la sol' la>8[ <la sol' la> <la sol' la>] } \tuplet 3/2 { <la sol' la>8[ <la sol' la> <la sol' la>] }
%14 
 \tuplet 3/2 { <sib sol' sib>8[ <sib sol' sib> <sib sol' sib>] } \tuplet 3/2 { <sib sol' sib>8[ <sib sol' sib> <sib sol' sib>] }
 \tuplet 3/2 { <sib sol' sib>8[ <sib sol' sib> <sib sol' sib>] } \tuplet 3/2 { <sib mi sol>8[ <sib mi sol> <sib mi sol>] }
%15 
 \tuplet 3/2 { <la re fad>8[ <la re fad> <la re fad>] } \tuplet 3/2 { <la re fad>8[ <la re fad> <la re fad>] }
 \tuplet 3/2 { <la re fad>8[ <la re fad> <la re fad>] } \tuplet 3/2 { <la re fad>8[ <la re fad> <la re fad>] }
%16 
 \tuplet 3/2 { <sib re sol>8[ <sib re sol> <sib re sol>] } \tuplet 3/2 { <sib re sol>8[ <sib re sol> <sib re sol>] }
 \tuplet 3/2 { <sib re sol>8[ <sib re sol> <sib re sol>] } \tuplet 3/2 { <sib re sol>8[ <sib re sol> <sib re sol>] }
%17 
 \tuplet 3/2 { <la re fad>8[ <la re fad> <la re fad>] } \tuplet 3/2 { <la re fad>8[ <la re fad> <la re fad>] }
 \tuplet 3/2 { <la re fad>8[ <la re fad> <la re fad>] } \tuplet 3/2 { <la re fad>8[ <la re fad> <la re fad>] }
%18 
 \tuplet 3/2 { <sib re sol>8[ <sib re sol> <sib re sol>] } \tuplet 3/2 { <sib re sol>8[ <sib re sol> <sib re sol>] }
 \tuplet 3/2 { <sib re sol>8[ <sib re sol> <sib re sol>] } \tuplet 3/2 { <sib re sol>8[ <sib re sol> <sib re sol>] }
%19 
 \tuplet 3/2 { <la re fad>8[ <la re fad> <la re fad>] } \tuplet 3/2 { <la re fad>8[ <la re fad> <la re fad>] }
 \tuplet 3/2 { <la re fad>8[ <la re fad> <la re fad>] } \tuplet 3/2 { <la re fad>8[ <la re fad> <la re fad>] }
%20 
 \tuplet 3/2 { <la re fad>8[ <la re fad> <la re fad>] } \tuplet 3/2 { <la re fad>8[ <la re fad> <la re fad>] }
 \tuplet 3/2 { <la re fad>8[ <la re fad> <la re fad>] } \tuplet 3/2 { <la re fad>8[ <la re fad> <la re fad>] }
%21 
 \tuplet 3/2 { <si re fa! sol>8[ <si re fa sol> <si re fa sol>] } \tuplet 3/2 { <si re fa sol>8[ <si re fa sol> <si re fa sol>] }
 \tuplet 3/2 { <si re fa sol>8[ <si re fa sol> <si re fa sol>] } \tuplet 3/2 { <si re fa sol>8[ <si re fa sol> <si re fa sol>] }
%22 
 \tuplet 3/2 { <do mib sol>8[ <do mib sol> <do mib sol>] } \tuplet 3/2 { <do mib sol>8[ <do mib sol> <do mib sol>] }
 \tuplet 3/2 { <do mib sol>8[ <do mib sol> <do mib sol>] } \tuplet 3/2 { <do mib sol do>8[ <do mib sol do> <do mib sol do>] }
%23 
 \tuplet 3/2 { <re fa sib>8[ <re fa sib> <re fa sib>] } \tuplet 3/2 { <re fa sib>8[ <re fa sib> <re fa sib>] }
 \tuplet 3/2 { <do mib fa la>8[ <do mib fa la> <do mib fa la>] } \tuplet 3/2 { <do mib fa la>8[ <do mib fa la> <do mib fa la>] }
%24 
 \tuplet 3/2 { <re fa sib>8[ <re fa sib> <re fa sib>] } \tuplet 3/2 { <re fa sib>8[ <re fa sib> <re fa sib>] }
 \tuplet 3/2 { <re fa sib>8[ <re fa sib> <re fa sib>] } \tuplet 3/2 { <re fa sib>8[ <re fa sib> <re fa sib>] }
%25 
 \tuplet 3/2 { <do mib solb la>8[ <do mib solb la> <do mib solb la>] } \tuplet 3/2 { <do mib solb la>8[ <do mib solb la> <do mib solb la>] }
 \tuplet 3/2 { <do mib solb la>8[ <do mib solb la> <do mib solb la>] } \tuplet 3/2 { <do mib solb la>8[ <do mib solb la> <do mib solb la>] }
%26 
 \tuplet 3/2 { <re fa sib>8[ <re fa sib> <re fa sib>] } \tuplet 3/2 { <re fa sib>8[ <re fa sib> <re fa sib>] }
 \tuplet 3/2 { <re fa sib>8[ <re fa sib> <re fa sib>] } \tuplet 3/2 { <re fa sib>8[ <re fa sib> <re fa sib>] }
%27 
 \tuplet 3/2 { <do mib solb la>8[ <do mib solb la> <do mib solb la>] } \tuplet 3/2 { <do mib solb la>8[ <do mib solb la> <do mib solb la>] }
 \tuplet 3/2 { <do mib solb la>8[ <do mib solb la> <do mib solb la>] } \tuplet 3/2 { <do mib solb la>8[ <do mib solb la> <do mib solb la>] }
%28 
 \tuplet 3/2 { <re fa sib>8[ <re fa sib> <re fa sib>] } \tuplet 3/2 { <re fa sib>8[ <re fa sib> <re fa sib>] }
 \tuplet 3/2 { <re fa sib>8[ <re fa sib> <re fa sib>] } \tuplet 3/2 { <re fa sib>8[ <re fa sib> <re fa sib>] }
%29 
 \tuplet 3/2 { <do re la'>8[ <do re la'> <do re la'>] } \tuplet 3/2 { <do re la'>8[ <do re la'> <do re la'>] }
 \tuplet 3/2 { <do re la'>8[ <do re la'> <do re la'>] } \tuplet 3/2 { <do re la'>8[ <do re la'> <do re la'>] }
%30 
 \tuplet 3/2 { <sib re sol>8[ <sib re sol> <sib re sol>] } \tuplet 3/2 { <sib re sol>8[ <sib re sol> <sib re sol>] }
 \tuplet 3/2 { <sib mib sol>8[ <sib mib sol> <sib mib sol>] } \tuplet 3/2 { <sib mib sol>8[ <sib mib sol> <sib mib sol>] }
%31 
 \tuplet 3/2 { <la mib' sol>8[ <la mib' sol> <la mib' sol>] } \tuplet 3/2 { <la mib' sol>8[ <la mib' sol> <la mib' sol>] }
 \tuplet 3/2 { <la re fad>8[ <la re fad> <la re fad>] } \tuplet 3/2 { <la re fad>8[ <la re fad> <la re fad>] }
%32
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%33
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%34
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%35
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%36
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%37
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%38
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <la sol' la>8[ <la sol' la> <la sol' la>] } \tuplet 3/2 { <la sol' la>8[ <la sol' la> <la sol' la>] }
%39
 \tuplet 3/2 { <sib sol' sib>8[ <sib sol' sib> <sib sol' sib>] } \tuplet 3/2 { <sib sol' sib>8[ <sib sol' sib> <sib sol' sib>] }
 \tuplet 3/2 { <si re fa lab si>8[ <si re fa lab si> <si re fa lab si>] } \tuplet 3/2 { <si re fa lab si>8[ <si re fa lab si> <si re fa lab si>] }
%40
 \tuplet 3/2 { <do mib sol do>8[ <do mib sol do> <do mib sol do>] } \tuplet 3/2 { <do mib sol do>8[ <do mib sol do> <do mib sol do>] }
 \tuplet 3/2 { <do mib sol do>8[ <do mib sol do> <do mib sol do>] } \tuplet 3/2 { <do mib sol do>8[ <do mib sol do> <do mib sol do>] }
%41
 \tuplet 3/2 { <do mib sol do>8[ <do mib sol do> <do mib sol do>] } \tuplet 3/2 { <do mib sol do>8[ <do mib sol do> <do mib sol do>] }
 \tuplet 3/2 { <do mib sol do>8[ <do mib sol do> <do mib sol do>] } \tuplet 3/2 { <do mib sol do>8[ <do mib sol do> <do mib sol do>] }
%42
 \tuplet 3/2 { <re fa lab si>8[ <re fa lab si> <re fa lab si>] } \tuplet 3/2 { <re fa lab si>8[ <re fa lab si> <re fa lab si>] }
 \tuplet 3/2 { <re fa lab si>8[ <re fa lab si> <re fa lab si>] } \tuplet 3/2 { <re fa sol si>8[ <re fa sol si> <re fa sol si>] }
%43
 \tuplet 3/2 { <do mib sol do>8[ <do mib sol do> <do mib sol do>] } \tuplet 3/2 { <do mib sol do>8[ <do mib sol do> <do mib sol do>] }
 \tuplet 3/2 { <do mib sol do>8[ <do mib sol do> <do mib sol do>] } \tuplet 3/2 { <do mib sol do>8[ <do mib sol do> <do mib sol do>] }
%44
 \tuplet 3/2 { <re fa lab si>8[ <re fa lab si> <re fa lab si>] } \tuplet 3/2 { <re fa lab si>8[ <re fa lab si> <re fa lab si>] }
 \tuplet 3/2 { <re fa lab si>8[ <re fa lab si> <re fa lab si>] } \tuplet 3/2 { <re fa sol si>8[ <re fa sol si> <re fa sol si>] }
%45
 \tuplet 3/2 { <do mib sol do>8[ <do mib sol do> <do mib sol do>] } \tuplet 3/2 { <do mib sol do>8[ <do mib sol do> <do mib sol do>] }
 \tuplet 3/2 { <do mib sol do>8[ <do mib sol do> <do mib sol do>] } \tuplet 3/2 { <do mib solb do>8[ <do mib solb do> <do mib solb do>] }
%46
 \tuplet 3/2 { <la do mib fa>8[ <la do mib fa> <la do mib fa>] } \tuplet 3/2 { <la do mib fa>8[ <la do mib fa> <la do mib fa>] }
 \tuplet 3/2 { <la do mib fa>8[ <la do mib fa> <la do mib fa>] } \tuplet 3/2 { <la do mib fa>8[ <la do mib fa> <la do mib fa>] }
%47
 \tuplet 3/2 { <sol sib reb mi>8[ <sol sib reb mi> <sol sib reb mi>] } \tuplet 3/2 { <sol sib reb mi>8[ <sol sib reb mi> <sol sib reb mi>] }
 \tuplet 3/2 { <sol sib reb mi>8[ <sol sib reb mi> <sol sib reb mi>] } \tuplet 3/2 { <sol sib reb mi>8[ <sol sib reb mi> <sol sib reb mi>] }
%48
 \tuplet 3/2 { <la do fa>8[ <la do fa> <la do fa>] } \tuplet 3/2 { <la do fa>8[ <la do fa> <la do fa>] }
 \tuplet 3/2 { <la do fa>8[ <la do fa> <la do fa>] } \tuplet 3/2 { <la do fa>8[ <la do fa> <la do fa>] }
%49
 \tuplet 3/2 { <sol sib reb mi>8[ <sol sib reb mi> <sol sib reb mi>] } \tuplet 3/2 { <sol sib reb mi>8[ <sol sib reb mi> <sol sib reb mi>] }
 \tuplet 3/2 { <sol sib reb mi>8[ <sol sib reb mi> <sol sib reb mi>] } \tuplet 3/2 { <sol sib reb mi>8[ <sol sib reb mi> <sol sib reb mi>] }
%50
 \tuplet 3/2 { <do fa>8[ fa fa] } \tuplet 3/2 { fa8[ fa fa] } \tuplet 3/2 { fa8[ fa fa] } \tuplet 3/2 { fa8[ fa fa] }
%51
 \tuplet 3/2 { fa8[ fa  fa] } \tuplet 3/2 { fa8[ fa  fa] } \tuplet 3/2 { fa8[ fa  fa] } \tuplet 3/2 { fa8[ fa  fa] }
%52
 \tuplet 3/2 { fa8[ fa  fa] } \tuplet 3/2 { fa8[ fa  fa] } \tuplet 3/2 { fa8[ fa  fa] } \tuplet 3/2 { fa8[ fa  fa] }
%53
 \tuplet 3/2 { fa8[ fa  fa] } \tuplet 3/2 { fa8[ fa  fa] } \tuplet 3/2 { fa8[ fa  fa] } \tuplet 3/2 { fa8[ fa  fa] }
%54
 \tuplet 3/2 { <re fa>8[ <re fa> <re fa>] } \tuplet 3/2 { <re fa>8[ <re fa> <re fa>] }
 \tuplet 3/2 { <re fa>8[ <re fa> <re fa>] } \tuplet 3/2 { <re fa>8[ <re fa> <re fa>] }
%55
 \tuplet 3/2 { <re fa>8[ <re fa> <re fa>] } \tuplet 3/2 { <re fa>8[ <re fa> <re fa>] }
 \tuplet 3/2 { <re fa>8[ <re fa> <re fa>] } \tuplet 3/2 { <re fa>8[ <re fa> <re fa>] }
%56
 \tuplet 3/2 { <do mib>8[ <do mib> <do mib>] } \tuplet 3/2 { <do mib>8[ <do mib> <do mib>] }
 \tuplet 3/2 { <do mib>8[ <do mib> <do mib>] } \tuplet 3/2 { <do mib>8[ <do mib> <do mib>] }
%57
 \tuplet 3/2 { re8[ re  re] } \tuplet 3/2 { re8[ re  re] } \tuplet 3/2 { do8[ do  do] } \tuplet 3/2 { do8[ do  do] }
%58
 \stemUp
 \tuplet 3/2 { r8  <re fa>[ <re fa>] } \tuplet 3/2 { r <re fa>[ <re fa>] }
 \tuplet 3/2 { r8  <re fa>[ <re fa>] } \tuplet 3/2 { r <re fa>[ <re fa>] }
%59
 \tuplet 3/2 { r8  <mib fa>[ <mib fa>] } \tuplet 3/2 { r <mib fa>[ <mib fa>] }
 \tuplet 3/2 { r8  <mib fa>[ <mib fa>] } \tuplet 3/2 { r <mib fa>[ <mib fa>] }
%60
 \tuplet 3/2 { r8  <re fa>[ <re fa>] } \tuplet 3/2 { r <re fa>[ <re fa>] }
 \tuplet 3/2 { r8  <re fa>[ <re fa>] } \tuplet 3/2 { r <re fa>[ <re fa>] }
%61
 \tuplet 3/2 { r8  <mib fa>[ <mib fa>] } \tuplet 3/2 { r <mib fa>[ <mib fa>] }
 \tuplet 3/2 { r8  <mib fa>[ <mib fa>] } \tuplet 3/2 { r <mib fa>[ <mib fa>] }
%62
 \tuplet 3/2 { r8  <re fa>[ <re fa>] } \tuplet 3/2 { r <re fa>[ <re fa>] }
 \tuplet 3/2 { r8  <re fa>[ <re fa>] } \tuplet 3/2 { r <re fa>[ <re fa>] }
%63
 \tuplet 3/2 { r8  <do fa>[ <do fa>] } \tuplet 3/2 { r <do fa>[ <do fa>] }
 \tuplet 3/2 { r8  <do fa>[ <do fa>] } \tuplet 3/2 { r <do fa>[ <do fa>] }
%64
 \tuplet 3/2 { r8  <do mi>[ <do mi>] } \tuplet 3/2 { r <do mi>[ <do mi>] }
 \tuplet 3/2 { r8  <do mi>[ <do mi>] } \tuplet 3/2 { r <do mi>[ <do mi>] }
%65
 \tuplet 3/2 { r8  <do fa>[ <do fa>] } \tuplet 3/2 { r <do fa>[ <do fa>] }
 \tuplet 3/2 { r8  <do fa>[ <do fa>] } \tuplet 3/2 { r <do fa>[ <do fa>] }
%66
 \tuplet 3/2 { r8  <mib! fa>[ <mib fa>] } \tuplet 3/2 { r <mib fa>[ <mib fa>] }
 \tuplet 3/2 { r8  <mib fa>[ <mib fa>] } \tuplet 3/2 { r <mib fa>[ <mib fa>] }
%67
 \tuplet 3/2 { r8  <re fa>[ <re fa>] } \tuplet 3/2 { r <re fa>[ <re fa>] }
 \tuplet 3/2 { r8  <re fa>[ <re fa>] } \tuplet 3/2 { r <re fa>[ <re fa>] }
%68
 \tuplet 3/2 { r8  <mib fa>[ <mib fa>] } \tuplet 3/2 { r <mib fa>[ <mib fa>] }
 \tuplet 3/2 { r8  <mib fa>[ <mib fa>] } \tuplet 3/2 { r <mib fa>[ <mib fa>] }
%69
 \tuplet 3/2 { r8  <re fa>[ <re fa>] } \tuplet 3/2 { r <re fa>[ <re fa>] }
 \tuplet 3/2 { r8  <re fa>[ <re fa>] } \tuplet 3/2 { r <re fa>[ <re fa>] }
%70
 \tuplet 3/2 { r8  <re fa>[ <re fa>] } \tuplet 3/2 { r <re fa>[ <re fa>] }
 \tuplet 3/2 { r8  <do mib>[ <do mib>] } \tuplet 3/2 { r <do mib>[ <do mib>] }
%71
 \tuplet 3/2 { r8  re[ re] } \tuplet 3/2 { r re[ re] } \tuplet 3/2 { r8  do[ do] } \tuplet 3/2 { r do[ do] }
%72
 \tuplet 3/2 { \noletTraversantO \change Staff = down <re, fa sib>[ \change Staff = up <re' re'> <re re'>] }
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
%73
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
%74
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
%75
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
%76
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
%77
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
%78
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
%79
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
%80
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <mi sol dod>8[ <mi sol dod> <mi sol dod>] }
 \tuplet 3/2 { <re fad si>8[ <re fad si> <re fad si>] } \tuplet 3/2 { <dod fad lad>8[ <dod fad lad> <dod fad lad>] }
 \bar "||"  \key do \major
%81
 \tuplet 3/2 { <re fad si>8[ <re fad si> <re fad si>] } \tuplet 3/2 { <re fad si>8[ <re fad si> <re fad si>] }
 \tuplet 3/2 { <re fad si>8[ <re fad si> <re fad si>] } \tuplet 3/2 { <red fad la!>8[ <red fad la> <red fad la>] }
%82
 \tuplet 3/2 { <si mi sol>8[ <si mi sol> <si mi sol>] } \tuplet 3/2 { <si mi sol>8[ <si mi sol> <si mi sol>] }
 \tuplet 3/2 { <si mi sol>8[ <si mi sol> <si mi sol>] } \tuplet 3/2 { <si mi sol>8[ <si mi sol> <si mi sol>] }
%83
 \tuplet 3/2 { <si mi sol>8[ <si mi sol> <si mi sol>] } \tuplet 3/2 { <si mi sol>8[ <si mi sol> <si mi sol>] }
 \tuplet 3/2 { <do mi la>8[ <do mi la> <do mi la>] } \tuplet 3/2 { <do mi la>8[ <do mi la> <do mi la>] }
%84
 \tuplet 3/2 { <si re sol>8[ <si re sol> <si re sol>] } \tuplet 3/2 { <si re sol>8[ <si re sol> <si re sol>] }
 \tuplet 3/2 { <do re fad>8[ <do re fad> <do re fad>] } \tuplet 3/2 { <do re fad>8[ <do re fad> <do re fad>] }
%85
 \tuplet 3/2 { <si re sol>8[ <si re sol> <si re sol>] } \tuplet 3/2 { <si re sol>8[ <si re sol> <si re sol>] }
 \tuplet 3/2 { <si re sol>8[ <si re sol> <si re sol>] } \tuplet 3/2 { <si re sol>8[ <si re sol> <si re sol>] }
%86
 \tuplet 3/2 { <si fa'! sol>8[ <si fa' sol> <si fa' sol>] } \tuplet 3/2 { <si fa' sol>8[ <si fa' sol> <si fa' sol>] }
 \tuplet 3/2 { <do fa sol>8[ <do fa sol> <do fa sol>] } \tuplet 3/2 { <re fa sol>8[ <re fa sol> <re fa sol>] }
%87
 \tuplet 3/2 { sol,8[ do mi] } \tuplet 3/2 {sol[ mi do] } \tuplet 3/2 { sol8[ do mi] } \tuplet 3/2 {sol[ mi do] }
%88
 \tuplet 3/2 { sol8[ si fa'] } \tuplet 3/2 { sol[ fa si,] } \tuplet 3/2 { sol8[ do mi] } \tuplet 3/2 {sol[ mi do] }
%89
 \tuplet 3/2 { si8[ re mi] } \tuplet 3/2 { sold[ mi re] } \tuplet 3/2 { la8[ do mi] } \tuplet 3/2 { la[ mi do] }
%90
 \tuplet 3/2 { si8[ re mi] } \tuplet 3/2 { sold[ mi re] } \tuplet 3/2 { la8[ do mi] } \tuplet 3/2 { la[ mi do] }
%91
 \tuplet 3/2 { la8[ do re] } \tuplet 3/2 { fad[ re do] } \tuplet 3/2 { sol8[ si re] } \tuplet 3/2 { sol[ re si] }
%92
 \tuplet 3/2 { la8[ do re] } \tuplet 3/2 { fad[ re do] } \tuplet 3/2 { sol8[ si re] } \tuplet 3/2 { sol[ re si] }
%93
 \tuplet 3/2 { sol8[ si fa'!] } \tuplet 3/2 { sol[ fa si,] } \tuplet 3/2 { sol8[ do mi] } \tuplet 3/2 {sol[ mi do] }
%94
 \tuplet 3/2 { sol8[ re' fa] } \tuplet 3/2 { sol[ fa re] } \tuplet 3/2 { sol,8[ do mi] } \tuplet 3/2 {sol[ mi do] }
%95
 \tuplet 3/2 { sol8[ si fa'] } \tuplet 3/2 { sol[ fa si,] } \tuplet 3/2 { sol8[ do mi] } \tuplet 3/2 {sol[ mi do] }
%96
 \tuplet 3/2 { sol8[ re' fa] } \tuplet 3/2 { sol[ fa re] }
 \tuplet 3/2 { do8 <mi mi'>[ <mi mi'>] } \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] }
%97
 \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] } \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] }
 \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] } \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] }
%98
 \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] } \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] }
 \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] } \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] }
%99
 \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] } \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] }
 \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] } \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] }
%100
 \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] } \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] }
 \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] } \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] }
%101
 \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] } \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] }
 \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] } \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] }
%102
 \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] } \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] }
 \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] } \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] }
%103
 \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] } \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] }
 \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] } \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] }
%104
 \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] } \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] }
 \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] } \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] }
%105
 \tuplet 3/2 { <mi mi'>8[ <mi mi'> <mi mi'>] } \tuplet 3/2 { <fad la red>8[ <fad la red> <fad la red>] }
 \tuplet 3/2 { <mi sold dod>8[ <mi sold dod> <mi sold dod>] } \tuplet 3/2 { <red sold sid>8[ <red sold sid> <red sold sid>] }
%106
 \tuplet 3/2 { <dod dod'>8[ <dod dod'> <dod dod'>] } \tuplet 3/2 { <dod dod'>8[ <dod dod'> <dod dod'>] }
 \tuplet 3/2 { <dod dod'>8[ <dod dod'> <dod dod'>] } \tuplet 3/2 { <dod dod'>8[ <dod dod'> <dod dod'>] }
%107
 \tuplet 3/2 { <dod dod'>8[ <dod dod'> <dod dod'>] } \tuplet 3/2 { <dod dod'>8[ <dod dod'> <dod dod'>] }
 \tuplet 3/2 { <dod dod'>8[ <dod dod'> <dod dod'>] } \tuplet 3/2 { <dod dod'>8[ <dod dod'> <dod dod'>] }
%108
 \tuplet 3/2 { <mi sol! la dod>8[ <mi sol la dod> <mi sol la dod>] } \tuplet 3/2 { <mi sol la dod>8[ <mi sol la dod> <mi sol la dod>] }
 \tuplet 3/2 { <mi sol la dod>8[ <mi sol la dod> <mi sol la dod>] } \tuplet 3/2 { <mi sol la dod>8[ <mi sol la dod> <mi sol la dod>] }
%109
 \tuplet 3/2 { <fa! la re>8[ <fa la re> <fa la re>] } \tuplet 3/2 { <fa la re>8[ <fa la re> <fa la re>] }
 \tuplet 3/2 { <fa la re>8[ <fa la re> <fa la re>] } \tuplet 3/2 { <fa la re>8[ <fa la re> <fa la re>] }
%110
 \tuplet 3/2 { <mi sib' re>8[ <mi sib' re> <mi sib' re>] } \tuplet 3/2 { <mi sib' re>8[ <mi sib' re> <mi sib' re>] }
 \tuplet 3/2 { <mi sib' re>8[ <mi sib' re> <mi sib' re>] } \tuplet 3/2 { <mi sib' re>8[ <mi sib' re> <mi sib' re>] }
%111
 \tuplet 3/2 { <fa la re>8[ <fa la re> <fa la re>] } \tuplet 3/2 { <fa la re>8[ <fa la re> <fa la re>] }
 \tuplet 3/2 { <mi la dod>8[ <mi la dod> <mi la dod>] } \tuplet 3/2 { <mi la dod>8[ <mi la dod> <mi la dod>] }
%112
 \tuplet 3/2 { <fa la re>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
%113
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
%114
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
%115
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
%116
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
 \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] } \tuplet 3/2 { <re re'>8[ <re re'> <re re'>] }
%117
 \stemNeutral
 \tuplet 3/2 { <sol sib mib>8[ <sol sib mib> <sol sib mib>] } \tuplet 3/2 { <sol sib mib>8[ <sol sib mib> <sol sib mib>] }
 \tuplet 3/2 { <sol sib mib>8[ <sol sib mib> <sol sib mib>] } \tuplet 3/2 { <sol sib mib>8[ <sol sib mib> <sol sib mib>] }
%118
 \tuplet 3/2 { <fa lab dob re>8[ <fa lab dob re>]  <fa lab dob re>] } \tuplet 3/2 { <fa lab dob re>8[ <fa lab dob re>]  <fa lab dob re>] }
 \tuplet 3/2 { <fa lab dob re>8[ <fa lab dob re>]  <fa lab dob re>] } \tuplet 3/2 { <fa lab dob re>8[ <fa lab dob re>]  <fa lab dob re>] }
%119
 \tuplet 3/2 { <sol sib mib>8[ <sol sib mib> <sol sib mib>] } \tuplet 3/2 { <sol sib mib>8[ <sol sib mib> <sol sib mib>] }
 \tuplet 3/2 { <sol sib mib>8[ <sol sib mib> <sol sib mib>] } \tuplet 3/2 { <sol sib re>8[ <sol sib re> <sol sib re>] }
%120
 \tuplet 3/2 { <mi! sib'dod>8[ <mi sib'dod> <mi sib'dod>] } \tuplet 3/2 { <mi sib'dod>8[ <mi sib'dod> <mi sib'dod>] }
 \tuplet 3/2 { <mi sib'dod>8[ <mi sib'dod> <mi sib'dod>] } \tuplet 3/2 { <mi sib'dod>8[ <mi sib'dod> <mi sib'dod>] }
%121
 \tuplet 3/2 { <fa si! re>8[ <fa si re> <fa si re>] } \tuplet 3/2 { <fa si re>8[ <fa si re> <fa si re>] }
 \tuplet 3/2 { <fa si re>8[ <fa si re> <fa si re>] } \tuplet 3/2 { <fa si re>8[ <fa si re> <fa si re>] }
%122
 \tuplet 3/2 { <fa la re>8[ <fa la re> <fa la re>] } \tuplet 3/2 { <fa la re>8[ <fa la re> <fa la re>] }
 \tuplet 3/2 { <mi la dod>8[ <mi la dod> <mi la dod>] } \tuplet 3/2 { <mi la dod>8[ <mi la dod> <mi la dod>] }
%123
 \tuplet 3/2 { <fa la re>8[ <fa fa'> <fa fa'>] } \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] }
 \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] } \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] }
%124
 \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] } \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] }
 \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] } \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] }
%125
 \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] } \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] }
 \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] } \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] }
%126
 \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] } \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] }
 \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] } \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] }
%127
 \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] } \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] }
 \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] } \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] }
%128
 \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] } \tuplet 3/2 { <fa fa'>8[ <fa fa'> <fa fa'>] }
 \tuplet 3/2 { <fad fad'>8[ <fad fad'> <fad fad'>] } \tuplet 3/2 { <fad fad'>8[ <fad fad'> <fad fad'>] }
%129
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol la mib'>8[ <sol la mib'> <sol la mib'>] } \tuplet 3/2 { <sol la mib'>8[ <sol la mib'> <sol la mib'>] }
%130
 \tuplet 3/2 { <sol sib re>8[ <sol sib re> <sol sib re>] } \tuplet 3/2 { <sol sib re>8[ <sol sib re> <sol sib re>] }
 \tuplet 3/2 { <fad la re>8[ <fad la re> <fad la re>] } \tuplet 3/2 { <fad la re>8[ <fad la re> <fad la re>] }
 \bar "||" \key sib \major
%131
 \tuplet 3/2 { <sol, sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%132
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%133
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%134
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%135
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <la sol' la>8[ <la sol' la> <la sol' la>] } \tuplet 3/2 { <la sol' la>8[ <la sol' la> <la sol' la>] }
%136
 \tuplet 3/2 { <sib sol' sib>8[ <sib sol' sib> <sib sol' sib>] } \tuplet 3/2 { <sib sol' sib>8[ <sib sol' sib> <sib sol' sib>] }
 \tuplet 3/2 { <sib sol' sib>8[ <sib sol' sib> <sib sol' sib>] } \tuplet 3/2 { <sib sol' sib>8[ <sib sol' sib> <sib sol' sib>] }
%137
 \tuplet 3/2 { <sib sol' sib>8[ <sib sol' sib> <sib sol' sib>] } \tuplet 3/2 { <sib sol' sib>8[ <sib sol' sib> <sib sol' sib>] }
 \tuplet 3/2 { <do la' do>8[ <do la' do> <do la' do>] } \tuplet 3/2 { <do la' do>8[ <do la' do> <do la' do>] }
%138
 \tuplet 3/2 { <re sib' re>8[ <re sib' re> <re sib' re>] } \tuplet 3/2 { <re sib' re>8[ <re sib' re> <re sib' re>] }
 \tuplet 3/2 { <re sib' re>8[ <re sib' re> <re sib' re>] } \tuplet 3/2 { <re sib' re>8[ <re sib' re> <re sib' re>] }
%139
 \tuplet 3/2 { <fa sol si re>8[ <fa sol si re> <fa sol si re>] } \tuplet 3/2 { <fa sol si re>8[ <fa sol si re> <fa sol si re>] }
 \tuplet 3/2 { <fa sol si re>8[ <fa sol si re> <fa sol si re>] } \tuplet 3/2 { <fa sol si re>8[ <fa sol si re> <fa sol si re>] }
%140
 \tuplet 3/2 { <mib sol do>8[ <mib sol do> <mib sol do>] } \tuplet 3/2 { <mib sol do>8[ <mib sol do> <mib sol do>] }
 \tuplet 3/2 { <mib sol do>8[ <mib sol do> <mib sol do>] } \tuplet 3/2 { <mib sol do>8[ <mib sol do> <mib sol do>] }
%141
 \tuplet 3/2 { <do do'>8[ <do do'> <do do'>] } \tuplet 3/2 { <do do'>8[ <do do'> <do do'>] }
 \tuplet 3/2 { <do do'>8[ <do do'> <do do'>] } \tuplet 3/2 { <do do'>8[ <do do'> <do do'>] }
%142
 \tuplet 3/2 { <do do'>8[ <do do'> <do do'>] } \tuplet 3/2 { <do do'>8[ <do do'> <do do'>] }
 \tuplet 3/2 { <do do'>8[ <do do'> <do do'>] } \tuplet 3/2 { <do do'>8[ <do do'> <do do'>] }
%143
 \tuplet 3/2 { <do mib lab do>8[ <do mib lab do> <do mib lab do>] } \tuplet 3/2 { <do mib lab do>8[ <do mib lab do> <do mib lab do>] }
 \tuplet 3/2 { <do mib lab do>8[ <do mib lab do> <do mib lab do>] } \tuplet 3/2 { <do mib lab do>8[ <do mib lab do> <do mib lab do>] }
%144
 \tuplet 3/2 { <reb fab sol sib>8[ <reb fab sol sib> <reb fab sol sib>] } \tuplet 3/2 { <reb fab sol sib>8[ <reb fab sol sib> <reb fab sol sib>] }
 \tuplet 3/2 { <reb fab sol sib>8[ <reb fab sol sib> <reb fab sol sib>] } \tuplet 3/2 { <reb fab sol sib>8[ <reb fab sol sib> <reb fab sol sib>] }
%145
 \tuplet 3/2 { <do mib lab>8[ <do mib lab> <do mib lab>] } \tuplet 3/2 { <do mib lab>8[ <do mib lab> <do mib lab>] }
 \tuplet 3/2 { <do mib lab>8[ <do mib lab> <do mib lab>] } \tuplet 3/2 { <do mib lab>8[ <do mib lab> <do mib lab>] }
%146-148
 <do mib lab>2 r2
 r8 <sib mi sol>4\fermata r8 r4 <la! do re fad>8^\markup { \bold \italic "Andante." } r8
 <sol sib re sol>4 r4 r2
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
pianoHautNotePart = {
 \clef treble
 \time 4/4
 \key sib \major
 \set autoBeaming = ##f
 s1*0^\markup {
  { \bold \large { \hspace #-3.0 \italic "Schnell. " } }
  { (\smaller \general-align #Y #DOWN \note {4} #1 = 152) }
 }
 \pianoHautNote
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
pianoHautNoteMidi = {
 \set Staff.midiInstrument = "acoustic grand"
 \unfoldRepeats { \pianoHautNote }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C2. PIANO BAS: Notes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%--------------------------------------------------------------------- A: 1-49: 1 VOIX
pianoBasNoteA = \relative do {

 \noletSansCrochet
%1
 \tupletDown
 R1
 \stemUp \tuplet 3/2 { sol8_([ la sib] } \nombreNoletH \tuplet 3/2 { do[ re mib]) } re4-! sib-!
 sol-! r r2
%4
 \tuplet 3/2 { sol8_([ la sib] } \nombreNoletH \tuplet 3/2 { do[ re mib]) } re4-! sib-!
 sol-! r r2
 <do,do'>2. <dod dod'>4
 <re re'>1
 sol4 r r2
%9
 \noletSansNombre
 \tuplet 3/2 { sol8_([ la sib] } \tuplet 3/2 { do[ re mib]) } re4-! sib-!
 sol r r2
 \tuplet 3/2 { sol8_([ la sib] } \tuplet 3/2 { do[ re mib]) } re4-! sib-!
 sol r r2
 \set doubleSlurs = ##t <do,do'>1(
%14
 <dod dod'>) \set doubleSlurs = ##f
 \tuplet 3/2 { re8_([ fad sol] } \tuplet 3/2 { la[ si dod]) } re2 ~
 re1
 \tuplet 3/2 { re,8_([ fad sol] } \tuplet 3/2 { la[ si dod]) } re2 ~
 re1
%19
 \tuplet 3/2 { re,8_([ fad sol] } \tuplet 3/2 { la[ si dod]) } re2 ~
 re1
 <sol,, sol'>1(
 do2.) mib4
 fa r fa, r
%24
 \stemNeutral \tuplet 3/2 { sib'8 ^([do re] } \tupletUp \tuplet 3/2 { mib[ fa solb]) } fa4-! sib,-!
 sib,1
 \tupletDown \tuplet 3/2 { sib'8 ^([do re] } \tupletUp \tuplet 3/2 { mib[ fa solb]) } fa4-! sib,-!
 sib,1
%28
 \tupletDown \tuplet 3/2 { sib'8 ^([do re] } \tupletUp \tuplet 3/2 { mib[ fa solb]) } fa4-! sib,-!
 fad1(
 sol4-!) r mib-! r
 do-! r re-! r
 sol, r r2
%33
 \stemUp \tuplet 3/2 { sol'8_([ la sib] } \tuplet 3/2 { do[ re mib]) } re4-! sib-!
 sol r r2
 \tuplet 3/2 { sol8_([ la sib] } \tuplet 3/2 { do[ re mib]) } re4-! sib-!
 sol r r2
 R1
%38
 R1
 r2 sol->
 \tuplet 3/2 { do,8_([ mib fa] } \tuplet 3/2 { sol[ la si]) } do2
 \tuplet 3/2 { do,8_([ mib fa] } \tuplet 3/2 { sol[ la si]) } do2 ~
%42
 do1
 \tuplet 3/2 { do,8_([ mib fa] } \tuplet 3/2 { sol[ la si]) } do2 ~
 do1
 \tuplet 3/2 { do,8_([ mib fa] } \tuplet 3/2 { sol[ la si]) } do2
%46
 \tuplet 3/2 { fa,8_([ la sib!] } \tuplet 3/2 { do[ re mi]) } \stemDown fa2 ~
 fa1
 \stemUp \tuplet 3/2 { fa,8_([ la sib] } \tuplet 3/2 { do[ re mi]) } \stemDown fa2 ~
 fa1
}

%--------------------------------------------------------------------- B: 50-71: 2 VOIX

pianoBasNoteB = { <<
 \context Voice = pianoBasHaut {
  \voiceOne \relative do {

 \noletSansCrochet \noletSansNombre
 \set autoBeaming = ##f
%50
 \noletTraversantL
 \tuplet 3/2 { <fa la>8 fa fa } \tuplet 3/2 { fa8 fa fa } \tuplet 3/2 { fa8 fa fa } \tuplet 3/2 { fa8 fa fa }
%51
 \tuplet 3/2 { fa8 fa fa } \tuplet 3/2 { fa8 fa fa } \tuplet 3/2 { fa8 fa fa } \tuplet 3/2 { fa8 fa fa }
%52
 \noletTraversant
 \tuplet 3/2 { fa8 fa fa } \tuplet 3/2 { fa8 fa fa } \tuplet 3/2 { fa8 fa fa } \tuplet 3/2 { fa8 fa fa }
%53
 \tuplet 3/2 { fa8 fa fa } \tuplet 3/2 { fa8 fa fa } \tuplet 3/2 { fa8 fa fa } \tuplet 3/2 { fa8 fa fa }
%54
 \tuplet 3/2 { fa8 fa fa } \tuplet 3/2 { fa8 fa fa } \tuplet 3/2 { fa8 fa fa } \tuplet 3/2 { fa8 fa fa }
%55
 \noletTraversantL
 \tuplet 3/2 { fa8 fa fa } \tuplet 3/2 { fa8 fa fa } \tuplet 3/2 { fa8 fa fa } \tuplet 3/2 { fa8 fa fa }
%56
 \tuplet 3/2 { sol8 sol sol } \tuplet 3/2 { sol8 sol sol }  \noletNormal \tuplet 3/2 { sol8 sol \noletTraversantL sol } \tuplet 3/2 { sol8 sol sol }
%57
 \tuplet 3/2 { <fa sib>8 <fa sib> <fa sib> } \tuplet 3/2 { <fa sib>8 <fa sib> <fa sib> } \tuplet 3/2 { <fa la>8 <fa sib> <fa sib> } \tuplet 3/2 { <fa la>8 <fa sib> <fa sib> }
%58
 \tuplet 3/2 { s8 <fa sib> <fa sib> } \tuplet 3/2 { s8 <fa sib> <fa sib> } \tuplet 3/2 { s8 <fa sib> <fa sib> } \tuplet 3/2 { s8 <fa sib> <fa sib> }
%59
 \tuplet 3/2 { s8 <fa la> <fa la> } \tuplet 3/2 { s8 <fa la> <fa la> } \tuplet 3/2 { s8 <fa la> <fa la> } \tuplet 3/2 { s8 <fa la> <fa la> }
%60
 \noletTraversant
 \tuplet 3/2 { s8 <fa sib> <fa sib> } \tuplet 3/2 { s8 <fa sib> <fa sib> } \tuplet 3/2 { s8 <fa sib> <fa sib> } \tuplet 3/2 { s8 <fa sib> <fa sib> }
%61
 \tuplet 3/2 { s8 <fa la> <fa la> } \tuplet 3/2 { s8 <fa la> <fa la> } \tuplet 3/2 { s8 <fa la> <fa la> } \tuplet 3/2 { s8 <fa la> <fa la> }
%62
 \tuplet 3/2 { s8 <fa sib> <fa sib> } \tuplet 3/2 { s8 <fa sib> <fa sib> } \tuplet 3/2 { s8 <fa sib> <fa sib> } \tuplet 3/2 { s8 <fa sib> <fa sib> }
%63
 \tuplet 3/2 { s8 la la } \tuplet 3/2 { s8 la la } \tuplet 3/2 { s8 la la } \tuplet 3/2 { s8 la la }
%64
 \tuplet 3/2 { s8 <sol sib> <sol sib> } \tuplet 3/2 { s8 <sol sib> <sol sib> }
  \tuplet 3/2 { s8 <sol sib> <sol sib> } \tuplet 3/2 { s8 <sol sib> <sol sib> }
%65
 \tuplet 3/2 { s8 <fa la> <fa la> } \tuplet 3/2 { s8 <fa la> <fa la> } \tuplet 3/2 { s8 <fa la> <fa la> } \tuplet 3/2 { s8 <fa la> <fa la> }
%66
 \tuplet 3/2 { s8 <fa la> <fa la> } \tuplet 3/2 { s8 <fa la> <fa la> } \tuplet 3/2 { s8 <fa la> <fa la> } \tuplet 3/2 { s8 <fa la> <fa la> }
%67
 \tuplet 3/2 { s8 <fa sib> <fa sib> } \tuplet 3/2 { s8 <fa sib> <fa sib> } \tuplet 3/2 { s8 <fa sib> <fa sib> } \tuplet 3/2 { s8 <fa sib> <fa sib> }
%68
 \tuplet 3/2 { s8 <fa la> <fa la> } \tuplet 3/2 { s8 <fa la> <fa la> } \tuplet 3/2 { s8 <fa la> <fa la> } \tuplet 3/2 { s8 <fa la> <fa la> }
%69
 \tuplet 3/2 { s8 <fa sib> <fa sib> } \tuplet 3/2 { s8 <fa sib> <fa sib> } \tuplet 3/2 { s8 <fa sib> <fa sib> } \tuplet 3/2 { s8 <fa sib> <fa sib> }
%70
 \tuplet 3/2 { s8 <sol si> <sol si> } \tuplet 3/2 { s8 <sol si> <sol si> } \tuplet 3/2 { s8 sol sol } \tuplet 3/2 { s8 sol sol }
%71
 \tuplet 3/2 { s8 <fa sib!> <fa sib> } \tuplet 3/2 { s8 <fa sib> <fa sib> }
  \tuplet 3/2 { s8 <mib fa la> <mib fa la> } \tuplet 3/2 { s8 <mib fa la> <mib fa la> }
 \noletNormal
  }
 }

 \context Voice = pianoBasBas {
  \voiceTwo \relative do,, {
 \noletSansCrochet
 
%50-55
 \stemDown \slurDown \noletSansNombre
 \tuplet 3/2 { fa8([ la sib] } \tuplet 3/2 { do8[ re mi]) } fa2 ~
 fa1
 R1
 R1
 sib1
 r4 sib_. fa4_. re_.
%56-60
 mib4_. r do4_. r
 fa4_. r fa4_. r
 <sib, sib'>8 r <sib sib'> r <sib sib'> r <sib sib'> r
 <sib sib'>8 r <sib sib'> r <sib sib'> r <sib sib'> r
 <sib sib'>8 r <sib sib'> r <sib sib'> r <sib sib'> r
%61-65
 <sib sib'>8 r <sib sib'> r <sib sib'> r <sib sib'> r
 <sib sib'>8 r <sib sib'> r <sib sib'> r <sib sib'> r
 <do do'>8 r <do do'> r <do do'> r <do do'> r
 <do do'>8 r <do do'> r <do do'> r <do do'> r
 <fa, fa'>8 r <fa fa'> r <fa fa'> r <fa fa'> r
%66-71
 <fa fa'>8 r <fa fa'> r <fa fa'> r <fa fa'> r
 <sib sib'>8 r <sib sib'> r <sib sib'> r <sib sib'> r
 <fa fa'>8 r <fa fa'> r <fa fa'> r <fa fa'> r
 <sib sib'>8 r <sib sib'> r <sib sib'> r <sib sib'> r
 <sol sol'>8 r <sol sol'> r <do do'> r <do do'> r
 fa8 r fa r fa r fa r
 
  }
 }
 >>
}


%--------------------------------------------------------------------- C: 72-148: 1 VOIX
pianoBasNoteC = \relative do {

 \noletSansCrochet \noletSansNombre
%72
 \stemDown <sib, sib'>4 r r \set doubleSlurs = ##t <si' si'>(
%73
 <do do'>2) <la la'>
 \stemNeutral <fad fad'> r4 <si si'>(
 <do do'>2) \set doubleSlurs = ##f <la la'>
 <fad fad'> r4 fad'\(
 sol fad sol sold\)
 la2\( lad
%79
 si!1\) ~
 si4 mi,!-! fad-! fad-!    \bar "||"  \key do \major
 si,1
 mi,1 ~
 mi4 mi-! do-! do-!
%84
 re-. r re-. r
 sol2 re4 si
 sol2 la4 si
 <do do'>8 r <do do'> r <do do'> r <do do'> r
 <do do'>8 r <do do'> r <do do'> r <do do'> r
%89
 <mi mi'>8 r <mi mi'> r la r la r
 <mi mi'>8 r <mi mi'> r la r la r
 <re, re'>8 r <re re'> r sol r sol r
 <re re'>8 r <re re'> r sol r sol r
%93
 <sol, sol'>4 r8 <sol sol'>8 <sol sol'>4 r8 <sol sol'>8
 <sol sol'>4 r8 <sol sol'>8 do4 r8 <sol sol'>8
 <sol sol'>4 r8 <sol sol'>8 <sol sol'>4 r8 <sol sol'>8
 <sol sol'>4 r8 <sol sol'>8 <do do'>4 r4
%97
 r2 r4 \set doubleSlurs = ##t <dod' dod'>_>(
 <re re'>2) <si si'>
 <sold sold'>2 r4 <dod dod'>4_>(
 <re re'>2)  \set doubleSlurs = ##f <si si'>
 <sold sold'>2 r4 sold'\(
%102
 la4 sold la lad\)
 si2\( sid
 dod1\)~
 dod4 fad,-! sold-! sold-!
 dod,2 r2
%107
 R1
 <la la'>1^\(
 re2\) r2
 <sol, sol'>1
 <la la'>2 <la la'>
%112
 <re, re'>4 r4 r2
 \tupletUp \tuplet 3/2 { re'8([ mi fa] } \tuplet 3/2 { sol[ la sib]) } la4-! fa-!
 re4 r4 r2
 \tuplet 3/2 { re8([ mi fa] } \tuplet 3/2 { sol[ la sib]) } la4-! fa-!
 re4 r4 r2
%117
 <mib, mib'>1
 <mib mib'>1
 <mib mib'>1
 <sol sol'>1
%121
 <sold sold'>1
 <la la'>2 <la la'>
 <re, re'>2 r4 \set doubleSlurs = ##t <re're'>_>(
 <mib mib'>2) <do do'>
 <la la'>2 r4 <re re'>_>(
%126
 <mib mib'>2) \set doubleSlurs = ##f <do do'>
 <la la'>2 r2 
 <si'! re>2 <do re>
 <sib re>2 <do, do'>
 <re re'>2 <re re'> \bar "||" \key sib \major
%131
 \tuplet 3/2 { <sol,, sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%132
 \stemUp \tuplet 3/2 { sol'8_([ la sib] } \tuplet 3/2 { do[ re mib]) } re4-! sib-!
%133
 \tuplet 3/2 { <sol, sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%134
 \stemUp \tuplet 3/2 { sol'8_([ la sib] } \tuplet 3/2 { do[ re mib]) } re4-! sib-!
%135
 \tuplet 3/2 { <sol, sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%136
 \stemUp \tuplet 3/2 { sol'8_([ la sib] } \tuplet 3/2 { do[ re mib]) } re4-! sib-!
%137
 \tuplet 3/2 { <sol, sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%138
 \stemUp \tuplet 3/2 { sol'8_([ la sib] } \tuplet 3/2 { do[ re mib]) } re4-! sib-!
%139
 \tuplet 3/2 { <sol, sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
 \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] } \tuplet 3/2 { <sol sol'>8[ <sol sol'> <sol sol'>] }
%140
 \tuplet 3/2 { do8_([ re mib] } \tuplet 3/2 { fa[ sol lab]) } sol4-! mib-!
%141-142
 <do do'>2 <reb reb'>4-. <re re'>4-.
 <mib mib'>4-. <mi mi'>4-. <fa fa'>4-. <sol sol'>4-.
%143
 \stemDown
 \tuplet 3/2 { <lab lab'>8[ <lab lab'> <lab lab'>] } \tuplet 3/2 { <lab lab'>8[ <lab lab'> <lab lab'>] }
 \tuplet 3/2 { <lab lab'>8[ <lab lab'> <lab lab'>] } \tuplet 3/2 { <lab lab'>8[ <lab lab'> <lab lab'>] }
%144
 \tuplet 3/2 { <lab lab'>8[ <lab lab'> <lab lab'>] } \tuplet 3/2 { <lab lab'>8[ <lab lab'> <lab lab'>] }
 \tuplet 3/2 { <lab lab'>8[ <lab lab'> <lab lab'>] } \tuplet 3/2 { <lab lab'>8[ <lab lab'> <lab lab'>] }
%145
 \tuplet 3/2 { <lab lab'>8[ <lab lab'> <lab lab'>] } \tuplet 3/2 { <lab lab'>8[ <lab lab'> <lab lab'>] }
 \tuplet 3/2 { <lab lab'>8[ <lab lab'> <lab lab'>] } \tuplet 3/2 { <lab lab'>8[ <lab lab'> <lab lab'>] }
%146-148
 <do mib lab>2 r2
 \stemUp r8 <dod, dod'>4\fermata r8 r4 <re re'>8 r8
 <sol, sol'>4 r4 r2
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LA PARTITION
pianoBasNotePart = {
 \clef bass
 \time 4/4
 \key sib \major
 \set autoBeaming = ##f
 \pianoBasNoteA \pianoBasNoteB \pianoBasNoteC
}

%%%%%%%%%%%%%%%%%%%% RÉSUMÉ POUR LE MIDI
pianoBasNoteMidi = {
 \set Staff.midiInstrument = "acoustic grand"
 \unfoldRepeats { \pianoBasNoteA \pianoBasNoteB \pianoBasNoteC }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO: Dynamiques pour la sortie Partition
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DYNAMIQUES COMMUNES

pianoDynPart = {
 \override DynamicTextSpanner.style = #'none

%1-5
 s1\f
 s1*4
%6-12
 s2.\cr \tuplet 3/2 { s4 s8\! }
 s2.\decr \tuplet 3/2 { s4 s8\! }
 s1*5
%13-24
 \dynamD s1\pp  s1*11
%25-26
 \pinceD s4\decr \tuplet 3/2 { s4 s8\! } s2
 s1
%27-28
 \pinceD s4\decr \tuplet 3/2 { s4 s8\! } s2
 s1
%29-31
 \pinceD s4\decr \tuplet 3/2 { s4 s8\! } s2
 s1*2
%32-34
 \dynamDB s1\f  s1*2
%35-37
 \dynamD s1\pp  s1*2
%38-43
 \cresDDDD s2\cr s2\!
 s1
 s1\f
 s1-\ppAdLib
 s1*2
%44-47
 \pinceD s2.\decr \tuplet 3/2 { s4 s8\! }
 \dynamD s1\mf
 \dynamD s1\p
 s1
%48-55
 \dynamD s1\mf
 s1*7
%56-57
 s2 \dimTextDecresc s4\decr s4\!
 s1
%58-71
 \dynamD s1\pp
 s1*13
%72-75
 s2 s2\f
 s1*3
%76-77
 s2 s2\p
 s1
%78-80
 \dimTextDecresc s2\decr s2\!
 \pinceDD s2.\cr \tuplet 3/2 { s8 s8\! s8 }
 s4\decr \tuplet 3/2 { s4 s8\! } s2
%81-84
 s1*4
%85
 \pinceDD s2.\cr \tuplet 3/2 { s8 s8\! s8 }
 s2.\decr \dynamD s4\!\ppp
%87-95
 s1*9
%96-97
 s2. \tuplet 3/2 { s4\f\decr s8\! }
 s1
%98-102
 s1*5
%103-105
 \dimTextDecresc s2\decr s2\!
 s4 s2\cr \tuplet 3/2 { s4 s8\! }
 s4\decr \tuplet 3/2 { s4 s8\! } s2
 s1*2
%108-111
 \pinceD s4\decr \tuplet 3/2 { s4 s8\! } s2
 s1
 \cresDDDD s2\cr s2\!
 s1
%112-114
 \dynamD \pinceD s2\ff\decr s4 \tuplet 3/2 { s4 s8\! }
 s1*2
%115-122
 \dynamD s1\p
 s1
 \dynamD s1\pp
 s1*5
%123-127
 \dynamD \pinceD s2\fff\decr s8 s4.\!
 s1*4
%128-130
 s2\sf s2\sf
 s2\sf s2\sf
 s2\sf s2\sf
%131-134
 \dynamG s1\f
 s1*3
%135-138
 s2 \cresD s4\cr s4\!
 s1*3
%139-140
 s2\decr \tuplet 3/2 { s4 s8\! } s4
 \dynamD s1\ff
%141-144
 s2 s2\cr
 s2. \tuplet 3/2 { s4 s8\! }
 s1\sf
 s1\sf
%145-148
 s2.\fp\decr \tuplet 3/2 { s4 s8\! }
 \dynamD s1\pp
 s8 s4\p s8 s4 s8\f s8
 s1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DYNAMIQUES SUPPLEMENTAIRES POUR LA PORTEE DU BAS
pianoBasDynPart = {
%1
 s1
 s1\f
%3-14
 s1*12
%15-18
 s2 \pinceH s4\decr \tuplet 3/2 { s4 s8\! }
 s1
 s2 \pinceH s4\decr \tuplet 3/2 { s4 s8\! }
 s1
%19-49
 s1*31
%50-53
 \pinceMontante \pinceDDDD s4\decr s4\! s2
 s1*3
%54-71
 s4\decr \tuplet 3/2 { s4 s8\! } s2
 s1*17
%72-75
 s2. \pinceD  \tuplet 3/2 { s4\decr s8\! }
 s1
 s2. \pinceD s8\decr s8
 s4\! s4 s2
%76-148
 s1*73
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO: Dynamiques pour la sortie Midi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DYNAMIQUES POUR LA PORTEE DU HAUT

pianoHautDynMidi = {

%1-5
 s1\f s1*4
%6-11
 s1\cr s1\!\decr s1\!\f s1*4
%13-14
 s1\pp s1
%15-24
 s1*10
%25-34
 s2\mp\decr s2\!\pp
 s1
 s2\mp\decr s2\!\pp
 s1
 s2\mp\decr s2\!\pp
 s1
%31-34
 s1
 s1\f
 s1*2
%35-37
 s1\pp s1 s1
%38-43
 s1\cr
 s1
 s1\!\f
 s1
 s1*2
%44-48
 s1\decr
 s1\!\mf
 s1\p
 s1
 s1\mf
%49-55
 s1*7
%56-57
 s2 s2\decr
 s1
%58-71
 s1\!\pp
 s1*13
%72-77
 s2 s2\f
 s1*3
 s2 s2\p
 s1
%78-80
 s1\decr
 s1\!\pp\cr
 s2\!\mf\decr s2\!\p
%81-84
 s1*4
%85
 s1\cr
 s2.\!\decr s4\!\ppp
%87-95
 s1*9
%96-97
 s2 s8 s4.\f\decr
 s1\!\mp
%98-102
 s1*5
%103-107
 s2\decr s2\!\pp
 s4 s2.\cr
 s2\!\mf\decr s2\!\p
 s1*2
%108-114
 s2\decr s2\!\pp
 s1
 s1\cr
 s1
 s1\!\ff\decr
 s1\!\f
 s1
%115-122
 s1\p
 s1
 s1\pp
 s1*5
%123-127
 s2.\fff\decr s4\!\f
 s1*4
%128-131
 s4\sf s4\f s4\sf s4\f
 s4\sf s4\f s4\sf s4\f
 s4\sf s4\f s4\sf s4\f
 s1
%132-134
 s1*3
%135-138
 s2 s2\cr
 s1*3
%139-140
 s2.\!\ff\decr s4\!\f
 s1
%141-148
 s2 s2\cr
 s2.\!\ff s4
 s4\sf s2.\f
 s4\sf s2.\f
 s8\ff s8\f s2.\decr
 s1\!\pp
 s8 s4\p s4. s8\f s8
 s1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DYNAMIQUES POUR LA PORTEE DU BAS

pianoBasDynMidi = {

%1-5
 s1\f s1*4
%6-11
 s1\cr s1\!\decr s1\!\f s1*4
%13-14
 s1\p s1
%15-24
 s2\cr s2\!\mf\decr
 s2\!\p s2
 s2\cr s2\!\mf\decr
 s2\!\p s2
 s1*6
%25-34
 s2\mp\decr s2\!\pp
 s1
 s2\mp\decr s2\!\pp
 s1
 s2\mp\decr s2\!\pp
 s1
%31-34
 s1
 s1\f
 s1*2
%35-37
 s1\pp s1 s1
%38-43
 s1\cr
 s1
 s1\!\f
 s1
 s1*2
%44-48
 s1\decr
 s1\!\mf
 s1\p
 s1
 s1\f
%49-55
 s1
 s2\decr s2\!\p
 s1\f
 s1
 s1
 s2\decr s2\!\p
 s1\f
%56-57
 s2 s2\decr
 s1
%58-71
 s1\!\pp
 s1*13
%72-77
 s2 s2\f\decr
 s2\!\mp s2\f
 s2 s2\decr
 s2\!\mp s2\f
 s2 s2\p
 s1
%78-80
 s1\decr
 s1\!\pp\cr
 s2\!\decr s2\!\p
%81-84
 s1*4
%85
 s1\cr
 s2.\!\decr s4\!\ppp
%87-95
 s1*9
%96-97
 s2 s8 s4.\f\decr
 s1\!\mp
%98-102
 s1*5
%103-107
 s2\decr s2\!\p
 s4 s2.\cr
 s2\!\decr s2\!\p
 s1*2
%108-114
 s2\decr s2\!\pp
 s1
 s1\cr
 s1
 s1\!\ff\decr
 s1\!\f
 s1
%115-122
 s1\p
 s1
 s1\pp
 s1*5
%123-127
 s2.\fff\decr s4\!\f
 s1*4
%128-131
 s4\sf s4\f s4\sf s4\f
 s4\sf s4\f s4\sf s4\f
 s4\sf s4\f s4\sf s4\f
 s1
%132-134
 s1*3
%135-138
 s2 s2\cr
 s1*3
%139-140
 s2.\!\ff\decr s4\!\f
 s1
%141-148
 s2 s2\cr
 s2.\!\ff s4
 s4\sf s2.\f
 s4\sf s2.\f
 s8\ff s8\f s2.\decr
 s1\!\pp
 s8 s4\p s8 s4\fermata s8\f s8
 s1
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           D. SORTIE PARTITION (pas de \midi)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
 <<
  \new Voice = "mel" << \meloNotePart >>
  \new Lyrics \lyricsto "mel" \poeme
  \new PianoStaff <<
   \new Staff = "up" << \pianoHautNotePart >>
   \new Dynamics = "dynamics" \pianoDynPart
   \new Staff = "down" << \pianoBasNotePart >>
   \new Dynamics = "downdyn" \pianoBasDynPart
  >>
 >>
 \layout {
 	\context { \Staff \RemoveEmptyStaves }
 	\context {
   \Score
   \override VerticalAxisGroup.remove-first = ##t
	  \override SpacingSpanner.spacing-increment = #1.0
	 }
  % [Convert-ly] The Dynamics context is now included by default.
  \context {
   \PianoStaff
   \accepts Dynamics
  }
 }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           E. SORTIE MIDI (pas de \layout)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
 <<
  \new Voice = "mel" << \meloNoteMidi \meloDynMidi >>
  \new PianoStaff <<
   \new Staff = "up" << \pianoHautNoteMidi \pianoHautDynMidi >>
   \new Staff = "down" << \pianoBasNoteMidi \pianoBasDynMidi >>
  >>
 >>
  \midi {
	  \tempo 4 = 152
  \context {
   \PianoStaff
   \accepts Dynamics
  }
 }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                                         FIN DU FICHIER Erlkoenig.ly
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
