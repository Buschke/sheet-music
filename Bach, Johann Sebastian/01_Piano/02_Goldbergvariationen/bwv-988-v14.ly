\version "2.24.0"
\language "english"

\paper {
    %indent = 0.0
    markup-system-spacing.basic-distance = #12
    top-system-spacing.basic-distance = #16
    system-system-spacing.basic-distance = #28
    top-markup-spacing.basic-distance = #6
    line-width = 18.0\cm
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 14. a 2 Clav"
        mutopiatitle = "Goldberg Variations - 14"
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
	
 footer = "Mutopia-2013/02/21-1412"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url "http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url "http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url "http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}


sopranoA =   \relative g, {
    \repeat volta 2 { %begin repeated section
        \clef "bass" g8 r8 \clef "treble" g'''4. ~ \upprall g16 [ fs32 g ] | % 1
        a8 r8  \clef "bass" fs,,4 \prallmordent ~ fs16 [ a g fs ] | % 2
        e8 r8 \clef "treble" e''8 ([ d8  ] cs8 [ d16 e ) ] | % 3
        fs,8 r8 \clef "bass" c,4. \upprall c16 [ b32 c ] | % 4
	b8 [ g b d g b, ] | % 5
	c8 [ e g c e, g ] | % 6
	fs8 [ a d, fs a c ] | % 7
	b8 [ g b d ] \clef "treble" g  r8 | % 8
	r16 b'32 [ a b16 ] r16 r16 e,32 [ d e16 ] r16 r16 a,32 [ g a16 ] r16 | % 9
	r16 a'32 [ g a16 ] r16 r16 d,32 [ cs d16 ] r16 r16 g,32 [ fs g16 ] r16 | % 10
	r16 g'32 [ fs g16 ] r16 r16 b,32 [ a b16 ] r16 r16 e,32 [ d e16 ] r16 | % 11
	r16 \clef "bass" g,32 [ fs g16 ] r16 r16 cs,32 [ b cs16 ] r16 r16 g32 [ fs g16 ] r16 \clef "treble" | % 12
	r32 d''32 [ e fs a fs e d ] r32 d32 [ e fs a fs e d ] r32 d32 [ e fs a fs e d ] | % 13
	b'8-. r8 \clef "bass" f,8-. r8 e8-. r8 \clef "treble" | % 14
        r16 e'32 [ d e16 a32 g ] a16 [ d,32 cs d16 g32 fs ] g16 [ cs,32 b cs16 fs32 e ] | % 15
        fs16 [ d cs d ] fs32 [ e d16 a'32 g fs16 ] d'8 r8 | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        fs16 [ a d a ] fs [ a d, fs ] a [ fs g a ] | % 17
        d,16 [ g b g ] d [ g  b, d ] g [ b, c d ] | % 18
        g,16 [ c e c ] \once \override Beam.positions = #'(3.4 . 3.4) a [ c fs, a ] c [ fs, g a] | % 19
   	ds,16 [ fs b fs ] \once \override Beam.positions = #'(1.9 . 1.9) ds [ fs b, ds ] fs [ ds e fs ] | % 20
        \once \override Beam.positions = #'(2.6 . 2.8) b,16 [ e g e ] \once \override Beam.positions = #'(1.3 . 1.3) b [ e g, b ] \once \override Beam.positions = #'(1.8 . 3.0) e [ ds e g ] | % 21   
        c,16 [ f a f ] \once \override Beam.positions = #'(1.7 . 1.7) c [ f a, c ] f [ e f a ] | % 22
        ds,16 [ fs! a fs ] \once \override Beam.positions = #'(1.7 . 1.7) ds [ fs b, ds ] \clef "bass" fs, [ a g fs ] | % 23
        g16 [ b e b ] g [ b e, fs ] g [ e g b ] | % 24
        e16 r16 r16 e,32 [ d e16 ] r16 r16 c'32 [ b c16 ] r16 r16 \clef "treble" a'32 [g ] | % 25
        a16 r16 r16 \clef "bass" d,,32 [ c d16 ] r16 r16 b'32 [ a b16 ] r16 r16 \clef "treble" g'32 [fs ] | % 26
        g16 r16 r16  \clef "bass" c,,32 [ b c16 ] r16 r16 a'32 [ g a16 ] r16 r16 \clef "treble" fs'32 [e ] | % 27
        fs16 r16 r16 d'32 [ c d16 ] r16 r16 g32 [ fs g16 ] r16 r16 b32 [a ] | % 28
        b8-. r8 d,,8-. r8 f8-. r8  | % 29
        r32 e32 [ f g c g f e ] r32 fs32 [ g a c a g fs ] r32 g32 [ a bf cs bf a g ] | % 30
        d'16 [ c!32 b! c16 b32 a ] b16 [ bf32 a bf16 a32 g ] a16 [ d32 c d16 g,32 fs ] | % 31
	g32 ^[ a b c  d c b a ] g16 [ b d, g ] g,8 r8 | % 32
    } %end repeated section
}

lineBreaks = {
	s2. \repeat unfold 2 { \noBreak s2.} %System1
	s2. \repeat unfold 3 { \noBreak s2.} %System2
	s2. \repeat unfold 2 { \noBreak s2.} %System3
	s2. \repeat unfold 1 { \noBreak s2.} %System4
	\pageBreak
	s2. \repeat unfold 1 { \noBreak s2.} %System5
	s2. \repeat unfold 1 { \noBreak s2.} %System6
	s2. \repeat unfold 3 { \noBreak s2.} %System7
	s2. \repeat unfold 3 { \noBreak s2.} %System8
	\pageBreak
	s2. \repeat unfold 1 { \noBreak s2.} %System9
	s2. \repeat unfold 1 { \noBreak s2.} %System10
	s2. \repeat unfold 1 { \noBreak s2.} %System11
	s2. \repeat unfold 1 { \noBreak s2.} %System12
}

soprano = << { \sopranoA } \\ { \lineBreaks } >>

%%
%% Bass Clef
%% 

bass = \relative b{
	\repeat volta 2 { %begin repeated section
        b16 [ g d g ] \once \override Beam.positions = #'(-1.8 . -1.8) b [ g d' b ] g [ b a g ] | % 1
        d'16 [ a fs a ] \once \override Beam.positions = #'(-2.7 . -5.9) d [ a \clef "treble" a' fs ] d [ fs e d ] | % 2
        g16 [ e b e ] g [ e b' g ] e [ b' a g ] | % 3
   	\once \override Beam.positions = #'(-4 . -4.5) d'16 _[ a fs a ] d [ a a' fs ] d [ fs e d] | % 4
        g16 [ d b d ] g [ d b' g ] d [ f e d ] | % 5
        e16 [ c g c ] \once \override Beam.positions = #'(-3 . -3) e [ c g' e ] c [ d c b ] | % 6    
        a16 [ fs d fs ] a [ fs d' a ] \once \override Beam.positions = #'(3 . 3) fs [ a g fs ] | % 7
        g16 [ d b d ] g [ d b' g ] d' [ c b a ] | % 8
        g8 r16 g'32 [ fs g16 ] r16 r16 cs,32 [ b cs16 ] r16 r16 fs,32 [e ] | % 9
        fs16 r16 r16 fs'32 [ e fs16 ] r16 r16 b,32 [ a b16 ] r16 r16 e,32 [d ] | % 10
        e16 r16 r16 e'32 [ d e16 ] r16 r16 g,32 [ fs g16 ] r16 r16 cs,32 [b ] | % 11
        cs16 r16 r16 \clef "bass" e,32 [ d e16 ] r16 r16 a,32 [ g a16 ] r16 r16 fs32 [e ] | % 12
        fs8-. r8 \clef "treble" d'''8-. r8 c8-. r8 \clef "bass" | % 13
        r32 g,32 [ a b d b a g ] r32 g32 [ a bf d bf a g ] r32 gs32 [ a b d b a gs ] | % 14
        a16 [ cs32 b cs16 fs,32 e ] fs16 [ b32 a b16 e,32 d ] e16 [ a32 g a16 d,32 cs ] | % 15
		d32 [ e fs g  a g fs e ] d16 [ fs a, d ] d,8 r8 | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        d'8 r8 \clef "treble" \once \override Voice.Script.padding = #0.6 c'''4.\upprall ~ c16 [ b32 c ] | % 17
        b8 r8 f,4 \upmordent ~ \once \override Beam.positions = #'(3 . 3) f16 [ a g f ] | % 18
        e8 r8  fs'8 [ a8 (  ] ds,8 [ e16 fs ) ] | % 19
        b,8 r8 \clef "bass" a,,4. \downprall ~ a16 [ g32 a ] | % 20
		g8 [ e g b g e ] | % 21
		a8 [ a, a' c b a ] | % 22
		b8 [ ds  fs b ] \once \override Beam.positions = #'(4 . 2.1) b, [ \clef "treble" e'16 ds] | % 23
		e8 [ g ] b [ e16 ds e8 ] r8 \clef "bass" | % 24
		r16 c,,32 [ b c16 ] r16 r16 a'32 [ gs a16 ] r16 r16 e'32 [ d e16 ] r16 | % 25
		r16 b,32 [ a b16 ] r16 r16 g'32 [ fs g16 ] r16 r16 d'32 [ c d16 ] r16 | % 26
		r16 a,32 [ g a16 ] r16 r16 e'32 [ d e16 ] r16 r16 c'32 [ b c16 ] r16 | % 27
		r16  \clef "treble" a'32 [ g a16 ] r16 r16 fs'32 [ e fs16 ] r16 r16 a32 [ g a16 ] r16 | % 28
		r32 g,32 [ a b d b a g ] r32 g32 [ a b d b a g ] r32 g32 [ a b d b a g ] | % 29
		c8-. r8 \clef "bass" a,8-. r8 e8-. r8 | % 30
        fs16 [ a32 g a16 d32 c ] d16 [ g,32 fs g16 c32 b! ] c16 [ fs,32 e fs16 b32 a ] | % 31
        b16 [ g fs g ] b32 [ a g16 d'32 c b16 ] g'8 r8 | % 32
  
    } %end repeated section
}



%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key g \major \time 3/4 \soprano  }
        \new Staff = "lower"  { \clef bass \key g \major \time 3/4 \bass }
    >>
    \layout{  }
    \midi { }

}
