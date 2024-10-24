\version "2.24.0"
\language "english"

\paper {
	top-system-spacing.basic-distance = #0.0
	%indent = 0.0
	line-width = 18.0\cm
	ragged-bottom = ##f
	ragged-last-bottom = ##f
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
	title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
	subtitle = "\"Goldberg Variationen\""
	piece = "Variatio 25. a 2 Clav."
	mutopiatitle = "Goldberg Variations - 25"
	composer = "Johann Sebastian Bach (1685-1750)"
	mutopiacomposer = "BachJS"
	opus = "BWV 988"
	date = "1741"
	mutopiainstrument = "Harpsichord,Clavichord"
	style = "Baroque"
	source = "Bach-Gesellschaft Edition 1853 Band 3"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Hajo Dezelski"
	maintainerEmail = "dl1sdz (at) gmail.com"

 footer = "Mutopia-2013/01/22-1419"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url "http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url "http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url "http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

soprano = \relative d'' {
	\repeat volta 2 { %begin repeated section
		r16 d16 [ \grace ef16 d32 cs d16 ] \once \override Slur.direction = #UP \appoggiatura d16 bf'8 ~ [ bf32 a g f ] ef16 [ d8 cs!16 ~ ] | % 1
		cs16 [ c \grace d!16 c32 b c16 ]  \appoggiatura  f16 af8 ~ [ af32 g f ef ] df16 [ c8 b!16 ~ ] | % 2
		b16 [ bf  \appoggiatura  c16 bf32 a bf16 ] fs' [ g8 cs,16 ~ ] cs [ d8 g,16 ] | % 3
		g16 [ a32 bf a8 ] r4 r4 | % 4
		r16 d,16 [ \grace ef16 d32 cs d16 ] d'8 ~ [ d32 c! bf a ] g [ f af16 ~ af32 d, f16 ~ ] | % 5
		f16 [ ef  \appoggiatura  f16 ef32 d ef16 ] ef'8 ~ [ ef32 d c bf ] a32 [ g bf16 ~ bf32 e,32 g16 ~] | % 6
		g16 [ fs \grace g16 fs32 e fs16 ] 
		\tuplet 3/2 { b16 [ c ef! ] } 
		\tuplet 3/2 { cs16  [d fs,! ] } 
		\tuplet 3/2 { bf16 [ a d,] } 
		\tuplet 3/2 { ef16 [ b c ~ ] } | % 7
		c16 [ bf!32 a bf8 ] r4 r4 | % 8
		r32 d32 [ e fs g bf a16 ~ ] a16 [ bf8 b16 ] c16 [ cs8 d16 ] | % 9
		ds16 [ e ~ e32 bf' a g ] fs [ e d8 d16 ] d' [ cs8 c16 ] | % 10
		b16 [ bf ~ bf32 a gs16 ~ ] gs [ a ~ a32 d, c bf ] c [ a bf g! f e f d' ] | % 11
		f,32 \prallprall [ e f16 e8 ] r32 d32 [ cs d e f g a ] bf [ a d16 ~ d32 cs e16 ~ ] | % 12
		e16 [ a, \grace bf16 a32 gs a16 ] \once \override Slur.direction = #UP  \appoggiatura a16 a'8 ~ [ a32 bf (a gs ) ] a-. [ d, c bf c-. c (bf a ) ] | % 13
		a16 [ bf \grace c16 bf32 a bf16 ] bf'8 ~ [ bf32 ef,! d cs ] d [ c'! b8 d,16 ] | % 14
		cs16 [ bf!8 a16 ] ef'!16 [ d ~ d32 cs! e g ] bf16 [ a ~ a64 g f e d32 cs ] | % 15 
	} %end of repeated section
	
	\alternative {
		{cs8\( [ d\) ] r4 r4 }
		{cs8\( [ d\) ] r4 r4 }
	}

 	\repeat volta 2 { %begin repeated section
		r16 a'16 [ \appoggiatura  bf16  a32 gs a16 ] ef! [ d ~ d32 e fs g ] a [ c, ef8 d16 ~ ] | % 17
		d16 [ f  \appoggiatura g16 f32 ef f16 ] af, [ g ~ g32 a b c ] d [ f, af8 g16 ~ ] | % 18
		g16 [ c8 b16 ] c32 [ ef df8 c16 ~ ] c32 [ f ef16 ~ ef32 f ef d ] | % 19
		ef32 [ a! ( bf16 ef, d ) ] r4 r4 | % 20
		r16 bf16 [ \appoggiatura cf16 bf32 af bf16 ] bf [ bf' ~ bf32 cf bf af ] bf16 [ df, ~ df32 cf bf16 ~ ] | % 21
		bf16 [ cf  \appoggiatura df16 cf32 bf cf16 ] cf [ cf' ~ cf32 ff, ef d] ef [ df' c8 ef,16 ] | % 22
		d!16 [ cf8 bf16 ] ff' [ ef ~ ef32 d f af ] cf16 [ bf ~ bf64 af64 gf64 f64 ef32 d ] | % 23
		d8\( [ ef8\) ] r4 r4 | % 24
		r16 g,16 [ \appoggiatura af16 g32 fs g16 ] \once \override Slur.direction = #UP \appoggiatura g16 ef'8 ~ [ ef32 d c bf ] af!16 [ g8 fs!16 ] ~ | % 25
		fs16 [ f \grace g16 f32 e f16 ] df'8 ~ [ df32 c bf af ] gf16 [ f8 e!16 ~ ] | % 26
		e16 [ ef  \appoggiatura f16 ef32 d ef16 ] c'8 ~ [ c32 bf af g ] fs16 [ ef' ~ ef32 d cs16 ] | % 27
		cs16 [ (d) ef, (d) ] r32 e32 [ fs g a bf c d ] ef! [ d g16 ~ g32 fs a16 ~ ] | % 28
		a16 [ d,  \appoggiatura ef16 d32 cs d16 ] d'8 ~ [ d32 c! bf a ] g [ d' f,16 ~ f32 ef d c ] | % 29
		d32 [ af' g f ef d c b ] c [ f ef d c bf a! g ] a [ d c bf a g fs e ] | % 30
		fs32 [ bf a g fs e d cs ] d [ g fs e d c bf a ] bf [ ef d c bf a g fs ] | % 31	
	} %end repeated section

	\alternative {
		{ \grace fs16  g4 r4 r4 |} % 32 % \grace fis16
		{ g4 r4 r4 \bar "|." |}% 32 
	}
}

%%
%% Bass Clef
%% 

bassOne = \relative c' {
	\repeat volta 2 { %begin repeated section
		\stemUp
		bf4 r8 d8 [ c! bf ] | % 1
		a4 r8 c8 [ bf! af ] | % 2
		g4 r8 bf8 [ a g ~ ] | % 3
		g8 [ fs16 e ] fs [ a8 c16 ~ ] c [ fs,8 a16 ~ ] | % 4
		a16 [ fs g8 ] r8 g8 d16 [ f g af ] | % 5
		af8 [ g ] r8 a e16 [ g a bf ] | % 6
		bf8 [ a ] r8 a [ g fs ~ ] | % 7
		fs8 [ g16 fs ] g [ d8 ef16 ~ ] ef32 [ d g16 ~ g32 fs! c'16  ~ ] | % 8
		c16 [ bf32 a bf8 ] r8 g' [ g g ] | %9
		g8 [ fs ] r8 f [ f f ] | % 10
		f8 [ e ] r8 ef [ ef d ] | % 11
		d8 [ cs ] r4 r4 | % 12
		r8 d8 [ d ef ] ef4 | % 13
		r8 e8 [ e f ] f4 | % 14
		r8 fs8 [ fs g ] g4 ~ | % 15
	} %end of repeated section

	\alternative { 
		{ g8 [ fs16 e ] fs4 fs4\rest }
		{ g8 [ fs16 e ] fs4 r4 }
	}
 
	\repeat volta 2 { %begin repeated section
		r8 f8 [ f fs fs g ] | % 17
		g8 [ d ] r8 f8 [ f ef ] | % 18
		ef8 [ d ef e f gf ~] | % 19
		gf8 [ f16 gf ] af [ d,8 ef32 f ] gf [ ef f8 cf16 ] | % 20
		cf16 [ bf ef8 ] ef [ ff ] ff4 | % 21
		r8 f! [ f gf ] gf4 | % 22
		r8 g! [ g af ] af4 ~ | % 23
		af8 [ g!16 f ] g8. [ a32 b ] c [ f, af8 g16 ] | % 24
		f8 [ ef ] r8 \clef "bass" g [ f ef ] | % 25
		d4 r8 f8 [ ef df ] | % 26
		c4 r8 ef16 [ d ] c8 [ bf ] | % 27
		a8. [ a16 ] d8 [ c bf a ] | % 28
		d,8 [ fs fs g g af ] | % 29
		r8 g [ g a! a bf ] | % 30
		r8 a [ a bf bf c ~ ] | % 31
	} %end repeated section

	\alternative {
		{c8 [ bf16 a ] bf4 r4 |} % 32
		{c8\repeatTie [ bf16 a ] bf8 r8 r4 |} % 34
	}
}

bassTwo = \relative g {
	\repeat volta 2 { %begin repeated section
		\stemDown	 
		g4 r8 g8 [ g g ] | % 1
		g8 [ fs ] b, \rest f' [ f f ] | % 2
		f8 [ e ] b8\rest ef8 [ ef ef ] | % 3
		d4 r8 ef8 [ d  c ] | % 4
		bf4 r8 bf8 [ b b ] | % 5
		b8 [ c ] r8 c8 [ cs cs ] | % 6
		cs8 [ d ] r8 d [ d d ] | % 7
		g,4 r8 g [ bf d ] | % 8
		g8. [ d'16 ] g8 [ f! ef! d ] | % 9
		cs8 [ a d c bf a ] | % 10
		g8 [ c ] f, [ fs g gs ] | % 11
		a8 [ bf a g f e ] | % 12
		f4 r8 fs8 [ fs g ] | % 13
		g4 r8 gs8 [ gs a ] | % 14
		a4 r8 a8 [ cs a ] | % 15
	} %end of repeated section

	\alternative { 
		{ d4. c8 [ bf a ] | } % 16
		{ d4. a8 d,4 | } % 16
	}
 
	\repeat volta 2 { %begin repeated section
		\clef "treble" 
		d'4 r8 c [ c bf ] | % 17
		bf8 [ g16 a ] bf8 [ b b c ] | % 18
		c4 r8 g8 [ af a ] | % 19
		bf4 r8 cf8 [ bf af] | % 20
		gf4 r8 g8 [ g  af ] | % 21
		af4 r8 a8 [ a bf ] | % 22
		bf4 r8 bf8 [ d bf ] | % 23
		ef4 r8 f8 [ ef  d ] | % 24
		c4 r8 \clef "bass" c8 [ c c ] | % 25
		c8 [ b ] r8 bf8 [ bf! bf ] | % 26
		bf8 [ a! ] r8 af8 [ af g ] | % 27
		g8 [ fs ] r8 fs8 [ g c, ] | % 28
		bf4 r8 bf8 [ bf b ] | % 29
		b16 [ d c8 ] r8 c8 [ c cs ] | % 30
		cs16 [ e d8 ] r8 d8 d [ d ] | % 31
	} %end repeated section
	
	\alternative {
		{ g4 ~ g8 [ d ] g,16 [ a' bf c ] |} % 32
		{ g4 ~ g16 [ fs g d ] g,4 |} % 32
	}
}

bass = << \bassOne \\ \bassTwo>>

%% Merge score - Piano staff

\score {
	\context PianoStaff <<
	%\set PianoStaff.instrumentName = "Clavier "
	\set PianoStaff.midiInstrument = "harpsichord"
	\new Staff = "upper" { \clef "treble" \key g \minor \time 3/4 \soprano }
	\new Staff = "lower" { \clef "bass" \key g \minor \time 3/4 \bass }
		% \clef "bass" \key bes \major \time 3/4 
	>>
	\layout{ }
	\midi { }
}
