\version "2.24.0"
\language "english"

\paper {

    %indent = 0.0
    top-markup-spacing.basic-distance = 4\mm
    markup-system-spacing.basic-distance = #8
    system-system-spacing.basic-distance = #21
    top-system-spacing.basic-distance = #15
    line-width = 18.0\cm
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 16. Ouverture. a 1 Clav."
        mutopiatitle = "Goldberg Variations - 16"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Harpsichord,Clavichord"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
		comment = "Kollidierende Notenspalten ignorieren."
		%COMMENT: Turn added to Bar18 treble 1st note, as shown on (1741), yet not shown on Bach-Gesellschaft
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2013/03/22-1413"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url "http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url "http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url "http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

%--------MACROS
delayTurn = \once \override Voice.Script.X-offset = #10
staffDown = \change Staff = "lower"
liftTie = \shape #'((0 . 1.8) (0 . 2.2) (0 . 2.2) (0 . 1.8)) Tie
hideTupletBracket = \override TupletBracket.bracket-visibility = ##f
hideTupletNumber = \override TupletNumber.transparent = ##t
tupletBracketDown = \override TupletBracket.direction = #DOWN
ignoreClashNote = \override NoteColumn.ignore-collision = ##t
fixBeamAngle = \once \override Beam.positions = #'(5 . 5)
shiftNoteCol = \once \override NoteColumn.force-hshift = #0.3
vcenterRest = \override MultiMeasureRest.staff-position = #0
%------------

sopranoOne =   \relative g' {
	\set Staff.connectArpeggios = ##t
    \repeat volta 2 { %begin repeated section
    	        \ignoreClashNote
		\stemDown
		b4\rest b32\rest g32 [ a b c d e fs ] g8. [ d16 b8. g16 ] | % 1
		d'4. \prallmordent e8 c4 ~ \downprall 
		c8. [ \tupletBracketDown \tuplet 3/2 {b32 c d ] } | % 2
		\hideTupletBracket \hideTupletNumber
		g,8. [ g'32 fs32 ] g8. [ e16 ] \stemUp \grace d8 \stemDown cs8. [ b'16 a8. g16 ] | % 3
		\stemUp fs4. \downprall \stemDown g8 \stemUp \grace g8 \stemDown a2 ~ | % 4
		a8. [ \tuplet 3/2 { a32 g fs ]  } 
		g8. [ d16 ] _~ d2 | % 5 
		\stemUp \grace f8 
		e8. [ \tuplet 3/2 { d32 c b ] } 
		c8. [ \tuplet 3/2 { b32 a g ] } a8. [ a16] \stemDown g'8. \prallmordent [ g16] | % 6
		\stemUp <d g>4 \arpeggio ~ \stemDown g32 [ b a g fs e d c ] a'8. [ c,16 ] a'8. [ c,16 ] | % 7
		b4 ~ \downprall \stemUp 
		b8. [ \tuplet 3/2 { a32 g fs ] } 
		\stemDown g16 [ d'-. e-. fs-. ] g-. [ fs-. g-. a-. ] | % 8
		b8. [ \tuplet 3/2 {  a32 g fs ] } 
		g8. [ \tuplet 3/2 {  fs32 e ds ] } \stemUp e8. [ b16 cs8. \mordent d16 ] | % 9
		\grace d8 
		cs8. [ \tuplet 3/2 {  e32 fs g ] } a8. [ a16 ] a4 ~ 
		a8. [ \tuplet 3/2 { a32 g fs ] } | % 10
		g8. [ \tuplet 3/2 { fs32 e ds ] } e8. [ b'16 ] d,4. \downprall cs16 [ b16 ] | % 11
		cs8. [ \tuplet 3/2 { d32 cs d ] } d8. \prallprall [ cs32 d ] e4 ~ e32 [ d cs b a g fs e ] | % 12
		d8. [ fs16 a8. \prallmordent b16 ] <a c>4 ~ 
		c8. [ \tuplet 3/2 {  c32 b a ] } | % 13
		\stemDown 
		b8. [ \tuplet 3/2 {  cs32 d e ] }
		d8. \prallprall [ \tuplet 3/2 { cs32 d e ] }
		a,8. [ \tuplet 3/2 {  e'32 fs g ]} a8. [ cs,16 ] \stemUp| % 14
		\delayTurn d4.\turn e8 e4. \downprall d8 |  % 15
    } %end of repeated section

	\alternative {
		{<fs, a d>1 | } % 16
		{ \time 3/8 \stemDown d'8 [ a'16 g fs e ] |} % 16
    } %end alternative

	
    \repeat volta 2   { %begin repeated section
		\stemUp fs8\turn [ g a ] | % 17
		d,16 [ fs e g fs a ]| % 18
		g8 [ fs g ] | % 19
		e8 [ds e ]| % 20
		\liftTie a4. ~ | % 21
		a8 [ g16 e fs ds ] | % 22
		\liftTie b'4. ~ | % 23
		b16 [ c b a g fs ] | % 24
		g16 [ e a e b' e, ] | % 25
		c'16 [ b a g fs e ] | % 26
		d16 [ fs e g fs a ] | % 27
		g16 [ a a8. \prallprall g32 a ] | % 28
		b4 g8 | % 29
		e8 [fs ds ] | % 30
		e4 d8\rest | % 31
		r8 e16 [ d c b ] | % 32
		c8 [ d e ] | % 33
		a,16 [ c b d cs e ] | % 34
		d32 [ e fs16 ] fs8. \downprall [e32 fs] | % 35
		g8 [ fs16 e d c ] | % 36
		b16 [ d c e d f ] | % 37
		\liftTie e4. ~ | % 38
		e16 [ d c b c fs ] | % 39
		\stemDown a16 [ d, c b c a ] | % 40
		b16 [ e d c d gs ] | % 41
		b16 [ e, d c d b ] | % 42
		\stemUp c4. ~| % 43
		c16 [ b a b c a ] | % 44
		d4 b8 | % 45
		g8 [ a fs ] | % 46
    } %end repeated section

	\alternative {
		{g4 b8\rest | b8\rest \stemDown a'16 [g fs e ] | } % 47
		{ \time 2/2 < d, g>1 |} % 46
		
    } %end alternative
\bar "|."
}

sopranoTwo =   \relative c'' {
	\set Staff.connectArpeggios = ##t
	\repeat volta 2 { %begin repeated section
		\stemUp s1| % 1
		s1| % 2
		s1| % 3
		d4 s1*3/4 | % 4
		s2 \grace e8 f4. ^\prallmordent g8 | % 5
		\stemDown c,8 s1*7/8 | % 6
		b4 \arpeggio s1*3/4  | % 7
		s1 | % 8
		s1*15/16 b16| % 9
		a4 b8\rest b16\rest a'16 ds,8. [fs16] b,4 ~ | % 10
		b4 s4 b2 | % 11
		a4 b cs s4 | % 12
		s2 fs,4 s4| % 13
		s1 | % 14
		s2 cs'2 | % 15
	} %end of repeated section
   
	\alternative {
		{s1 | } % 16
		{ \time 3/8 s1*3/8 |} % 16
    } %end alternative

    \repeat volta 2 { %begin repeated section
		\stemUp s1*3/8  | % 17
		s1*3/8  | % 18
		s1*3/8 | % 19
		c4. ~ | % 20
		\fixBeamAngle \shiftNoteCol c16 [ g' fs e ds e ]  | % 21
		b4. ^~  | % 22
		\fixBeamAngle \shiftNoteCol b16 [ cs ds e fs ds ]  | % 23
		\stemDown c,8\rest e8 [ ds ] | % 24
		e4. ~   | % 25
		e4 r8  | % 26
		s1*3/8  | % 27
		s1*3/8  | % 28
		s1*3/8  | % 29
		s1*3/8  | % 30
		s1*3/8  | % 31
		s1*3/8  | % 32
		s1*3/8  | % 33
		s1*3/8  | % 34
		s1*3/8  | % 35
		s1*3/8  | % 36
		s1*3/8  | % 37
		s1*3/8  | % 38
		s1*3/8  | % 39
		s1*3/8  | % 40
		s1*3/8  | % 41
		s1*3/8  | % 42
		s1*3/8  | % 43
		s1*3/8  | % 44
		s1*3/8  | % 45
		s1*3/8  | % 46
	} %end repeated section
	
	\alternative {
		{s1*3/8 | s1*3/8 } % 32
		{ \time 4/4 s1|} % 32
	} %end alternative
}

sopranoThree =   \relative c'' {
	\set Staff.connectArpeggios = ##t
	\repeat volta 2 { %begin repeated section
		s1 | % 1
		s1 | % 2
		s1 | % 3
		s1 | % 4
		s1 | % 5
		s1 | % 6
		s1 | % 7
		s1 | % 8
		s1 | % 9
		s1 | % 10
		s1 | % 11
		s1 | % 12
		s1 | % 13
		s1 | % 14
		s1 | % 15
	} %end of repeated section
   
	\alternative {
		{s1 | } % 16
		{ \time 3/8 s1*3/8 |} % 16
	} %end alternative

	\repeat volta 2  { %begin repeated section
		\stemDown b8\rest d16 [ c b a ] | % 17
		b8 [ c d ] | % 18
		g,16 [ b a c b d ] | % 19
		e,8\rest a16 [ g fs e ]    | % 20
		fs8 [ g a ]   | % 21
		ds,16 [ fs e g fs a ]   | % 22
		g8 [ fs] e8\rest | % 23
		e'8 s4 | % 24
		s1*3/8   | % 25
		s1*3/8   | % 26
		a,8 [ b c ]  | % 27
		d8 [ e fs ]  | % 28
		g4 d8 | % 29
		g,8 [a fs ]   | % 30
		g8 [ gs8. \prallprall fs32 gs ]  | % 31
		a4 gs8  | % 32
		a8 g!4  | % 33
		fs8 [g e ]  | % 34
		fs16 e16\rest e8\rest e8\rest  | % 35
		s1*3/8   | % 36
		s1*3/8   | % 37
		g8\rest fs8 [ g ] \turn   | % 38
		a8 e8\rest e8\rest  | % 39
		s1*3/8   | % 40
		s1*3/8   | % 41
		s1*3/8   | % 42
		e16\rest g16 [ fs g a fs ] | % 43
		d4. _~   | % 44
		d16 [ fs e g fs8 ]   | % 45
		s1*3/8 | % 46
	} %end repeated section

	\alternative {
		{ \staffDown \stemUp \shiftOff b,4 r8|  % 47
		s1*3/8 | } % 48 
		{ \time 4/4 s1|} % 48
	} %end alternative
}

soprano = << \sopranoOne \\ \sopranoTwo  \\ \sopranoThree>>

%%
%% Bass Clef
%% 


bassOne =   \relative d {
	\repeat volta 2 { %begin repeated section
		\stemUp <b d g>4 r4 r4 r8 r16 b'16  | % 1
		a4 s1*3/4   | % 2
		s1   | % 3
		s1   | % 4
		s1   | % 5
		s1   | % 6
		s1   | % 7
		s1   | % 8
		s1   | % 9
		s1   | % 10
		s1   | % 11
		s1   | % 12
		s1   | % 13
		s4 r8 r16 b16 cs4 s4   | % 14
		s1   | % 15
	} %end of repeated section

	\alternative {
		{s1 | } % 16
		{ \time 3/8 s1*3/8 |} % 16
	} %end alternative

	\repeat volta 2  \time 3/8 { %begin repeated section
		s1*3/8 | % 17
		s1*3/8 | % 18
		s1*3/8 | % 19
		s1*3/8 | % 20
		s1*3/8 | % 21
		s1*3/8 | % 22
		\stemDown d,8\rest b'16 [a g fs ] | % 23
		g8 [ a b ] | % 24
		e,16 [ g fs a g b ] | % 25
		a8 [ b c ] | % 26
		fs,16 [ a  g b a c ] | % 27
		b8 [ c d ] | % 28
		g,16 [ b a c a d ]| % 29
		c8 [ a b ] | % 30
		r8 e16 [d c b ] | % 31
		c8 [ d e ] | % 32
		a,16 [ c b d cs e ]| % 33
		d4. ~ | % 34
		d8 a8\rest r8 | % 35
		\stemUp r8 g8 [fs] | % 36
		g4. ~ | % 37
		g8 s8 s8 | % 38
		fs,8 [g \turn a ] | % 39
		d,16 [ fs e g fs a ] | % 40
		g8 [ a \turn  b ] | % 41
		e,16 [ gs fs a gs b ] | % 42
		\stemDown a16 [ e' a g fs e ] | % 43
		fs16 [ g fs e d c ] | % 44
		b16 [ d c e d fs ]| % 45
		e8 [ c d ] | % 46
	} %end repeated section

}

bassTwo = \relative c {
	\repeat volta 2 { %begin repeated section
		\hideTupletBracket \hideTupletNumber \ignoreClashNote
		\stemDown g4 r4 r4 r8 r16 g'16 | % 1
		fs4 ~ fs32 [ d e fs g a b c ] d8. [ a16 fs8. d16 ] | % 2
		e4. g8 e4 ^~ ^\downprall 
		e8. [ \tuplet 3/2 { d32 e fs ] } | % 3
		d8. [ c'32 b ] c8. [ a16 ] fs8. [ e'16 d8. c16 ] | % 4
		b4. ^\downprall b8 
		b8. [ \tuplet 3/2 { c32  b a ] } 
		b8. [ g16 ] | % 5
		c4 ^~ ^\prallmordent 
		c8. [ \tuplet 3/2 { d32 c b ] }
		c8. [ \tuplet 3/2 { b32 a g ] }
		a8. [ \tuplet 3/2 { g32 fs e ] }| % 6
		d2 ^~ \stemUp d16  [ c32 b a g fs e ] d16 [ fs a d ] | % 7
		g,16-. [ d'-. e-. fs-. ] \stemDown g^. [ fs^. g^. a^. ] b4 ^~ ^\prallprall 
		b8. [ \tuplet 3/2 {  a32 g fs ] } | % 8
		g16^. [ b^. cs^. ds^.] e^. [ ds^. e^. fs^. ] g8. [ g,16 g'8. g16 ] | % 9
		g4 ^~ 
		g8. [ \tuplet 3/2 { g32  fs e ] }
		fs8. [ \tuplet 3/2 {  b,32  cs ds ] } e8. [ e16 ] | % 10
		e4 ^~ 
		e8. [ \tuplet 3/2 {  c32 b a ] } gs8. [ b16 e,8. gs16 ] | % 11
		a4 ^~ a16 [ a,32 b cs d e fs ] g8. [ e16 ] cs8. [ a16 ] | % 12
		fs'4 ^~ 
		fs8. [ \tuplet 3/2 {  g32 fs e ] } \stemUp 
		d8. [ \tuplet 3/2 { c32 b a ] } 
		g8. [ \tuplet 3/2 { d'32 e fs ] } \stemDown | % 13
		g8. ^\prallmordent [ g,16  g'8.  g16 ] g4 ~ 
		g8. [ \tuplet 3/2 {  g32 fs e ] } | % 14
		fs16 ~ [ fs32 d e fs g a ] b8. [ g16 ] a4 \stemUp a, | % 15
	} %end of repeated section

	\alternative {
		{d,4 ~ \stemDown d16 [ d'32 e fs g a b ] c8. [ a16 fs8. d16 ] | } % 16
		{ \time 3/8 \stemNeutral d,4 d'8\rest |} % 16
	} %end alternative

	\repeat volta 2 { % begin repeated section
		\vcenterRest
		R1*3/8 | % 17
		R1*3/8 | % 18
		R1*3/8 | % 19
		R1*3/8 | % 20
		R1*3/8 | % 21
		R1*3/8 | % 22
		s1*3/8 | % 23
		s1*3/8 | % 24
		s1*3/8 | % 25
		s1*3/8 | % 26
		s1*3/8 | % 27
		s1*3/8 | % 28
		s1*3/8 | % 29
		s1*3/8 | % 30
		e8 s8 s8 | % 31
		s1*3/8 | % 32
		s1*3/8| % 33
		s1*3/8| % 34
		\stemDown r8 d16 [ c b a ] 
		b8 [c d] | % 36
		g,16 [ b a c b d ] | % 37
		c16 [b a g fs e ]  | % 38
		s1*3/8| % 39
		s1*3/8| % 40
		s1*3/8| % 41
		s1*3/8| % 42
		s1*3/8| % 43
		s1*3/8| % 44
		s1*3/8| % 45
		\stemUp b''8 [ c a] | % 46
	} %end repeated section

	\alternative {
		% {b4 r8 |  s1*3/8 | } % 46-47
		{g,16 [ fs g a b c ] |  d8 [d,] d'8\rest | } % 46-47
		{ \time 2/2 <g, b'>1 |} % 46
	} %end alternative
}

nb = \noBreak
breaks = {
	\repeat unfold 5 { s1 \repeat unfold 1 { \nb s1 } } %systems1-5
	\pageBreak
	\repeat unfold 2 { s1 \repeat unfold 1 { \nb s1 } } %systems6-7
	s1 \nb s1 s1*3/8 			%system8
	s1*3/8 \repeat unfold 4 { \nb s1*3/8 } 	%system9
	s1*3/8 \repeat unfold 4 { \nb s1*3/8 } 	%system10
	\pageBreak
	s1*3/8 \repeat unfold 5 { \nb s1*3/8 } 	%system11
	s1*3/8 \repeat unfold 4 { \nb s1*3/8 } 	%system12
	s1*3/8 \repeat unfold 5 { \nb s1*3/8 } 	%system13
	s1*3/8 \repeat unfold 4 { \nb s1*3/8 } \nb s1 %system14
}

bass = << \bassOne \\ \bassTwo \\ \breaks >>


%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" \with { \consists "Span_arpeggio_engraver" }
	        { \clef treble \key g \major \time 2/2 \soprano  }
        \new Staff = "lower"  { \clef bass \key g \major \time 2/2 \bass }
    >>
    \layout{  }
    \midi { }

}
