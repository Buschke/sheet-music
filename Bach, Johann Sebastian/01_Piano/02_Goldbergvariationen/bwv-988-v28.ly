\version "2.24.0"
\language "english"

\paper {
    top-markup-spacing.basic-distance = 6\mm
    markup-system-spacing.basic-distance = #15
    system-system-spacing.basic-distance = #23
    top-system-spacing.basic-distance = #13
    line-width = 18.0\cm
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 18)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 28. a 2 Clav"
        mutopiatitle = "Goldberg Variations - 28"
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
	
 footer = "Mutopia-2013/03/22-1420"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url "http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url "http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url "http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

%--------MACROS
flatBeam = \once \override Beam.positions = #'(-0.8 . -0.8 )
flatBeamTwo = \once \override Beam.positions = #'( 0.3 . 0.4 )
liftBeam = \once \override Beam.positions = #'(-3.8 . -2.8 )
liftBeamTwo = \once \override Beam.positions = #'(-1.5 . -0.8 )
shiftNote = \once \override NoteColumn.force-hshift = #0.5
%--------------

sopranoOne =   \relative b'' {
    \repeat volta 2 { %begin repeated section
    \stemUp
        b16 r16 r8 d16 r16 r8 g,16 r16 r8 | % 1
        a16 r16 r8 d16 r16 r8 fs,16 r16 r8 | % 2
        g16 r16 r8 b16 r16 r8 a16 r16 r8 | % 3
        fs16 r16 r8 cs'16 r16 r8 d16 r16 r8 | % 4
        \stemDown g,8 [ \clef bass g,, ] \stemUp a [ \clef treble e'' ] f [ d ] | % 5
        e8 [ \clef bass a,, ] b [ \clef treble fs'' ] s8 a8 | % 6
        b8 [ \clef "bass" a,,8 ] b [ e, ] fs r8 | % 7
        r8 \clef "treble" c'''8 b [ a ] << { g [ fs ] } \\ {s4 } \\ { s4 } \\ {  s8 \shiftNote a, } >> | % 8
        <b d g b>16 [ g'16 fs g ] 
		\stemDown e [ b a b ] g [ b e g ] | % 9
        a16 [ fs e fs ] d [ a g a ] fs [ a d fs ] | % 10
        g16 [ e ds e ] 
		\stemUp b [ g fs g ] e [ g b d ] | % 11
        cs16 [ g fs g ] e [ cs b cs ] a [ cs e g ] | % 12
        fs16 r16 r8 g16 r16 r8 a16 r16 r8 | % 13
        b16 r16 r8 a16 r16 r8 g16 r16 r8 | % 14
        a16 r16 r8 b16 r16 r8 a16 r16 r8 | % 15
        fs16 [ d cs d ] \clef "bass" a16 [ fs e fs ] d4 \clef "treble" | % 16
    } %end of repeated section
     \repeat volta 2 { %begin repeated section
        fs'16 [ a g a ] 
		\stemDown d [ fs e fs ] a [ fs c a ] | % 17
        b16 [ d c d ] g [ b a b ] d [ b f d ] | % 18
        e8 [ b8 ] 
		\stemUp c8 [ ds,8 ] e8 [ \clef bass g,8 ] | % 19
        fs8 [ \clef treble e''8 ] 
		\stemDown ds16 [ fs e fs ] a [ fs ds fs] | % 20
        r32 g32 [ a g a g a g ] 
		r32 g32 [ a g a g a g ] 
		r32 g32 [ a g a g a g ] | % 21
        r32 g32 [ a g a g a g ] 
		r32 g32 [ a g a g a g ] 
		r32 g32 [ a g a g a g ] | % 22
        r32 g32 [ a g a g a g ] 
		r32 g32 [ a g a g a g ] 
		r32 fs32 [ g fs g fs g fs ] | % 23
		\stemDown
        e16 [ g, fs g ] b [ e ds e ] g32 [  (f e16 ) f32 ( e d16 ) ] 
		\stemUp| % 24
        e8 [ e,8 ] ds8 [ d8 ] \flatBeam cs8 [ \stemDown e'8 ] \stemNeutral | % 25
        d8 [ d,8 ] cs8 [ c8 ] \flatBeam b8 [ \stemDown d'8 ] \stemUp | % 26
        r32 c32 [ d c d c d c ] 
		r32 c32 [ d c d c d c ] 
		r32 c32 [ d c d c d c ]  | % 27
        r32 c32 [ d c d c d c ] 
		r32 c32 [ d c d c d c ] 
		r32 c32 [ d c d c d c ] | % 28
        b16 r16 r8 c16 r16 r8 d16 r16 r8 | % 29
        e,8 [ e'8 ] 
		\stemDown f8 [ fs8 ] g8 [ gs8 ] | % 30
        \flatBeamTwo a16 [ \stemUp fs, e fs ] 
		g [ b a b ] c [ a fs d ] | % 31
        g16 [ b a b ] 
		\stemDown d [ g fs g ] b4 | % 32

    } %end repeated section

 
}

sopranoTwo =   \relative c' {
  \repeat volta 2 { %begin repeated section
  \stemDown
        r32 d'32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] | % 1
        r32 d32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] | % 2
        r32 d32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] 
		r32 cs32 [ d cs d cs d cs ] | % 3
        r32 d32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ]  | % 4
		s2 s8 b | % 5
        c8 s8*3 g'8  [ cs,8 ]  | % 6
		d8 [ \clef "bass"   fs,,8 ]  g8 [cs,] d [d,] | % 7
		g8 [ \clef "treble" e'''8 ] d [ c ] b [  c ]  | % 8
        b16 s16 s8 s2 | % 9
		s1*3/4 | % 10
		s1*3/4 | % 11
		s1*3/4 | % 12		
        r32 d,32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] | % 13
        r32 d32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] | % 14
        r32 d32 [ e d e d e d ] 
		r32 d32 [ e d e d e d ] 
		r32 cs32 [ d cs d cs d cs ] | % 15
		s4 \clef "bass" s2 \clef "treble" | % 16 
    } %end of repeated section

	\repeat volta 2 { %begin repeated section
        s1*3/4 | % 17
        s1*3/4 | % 18
        s1*3/4 | % 19
        s1*3/4 | % 20
        b'16 r16 r8 cs16 r16 r8 ds16 r16 r8 | % 21
        e16 r16 r8 ds16 r16 r8 e16 r16 r8 | % 22
        cs16 r16 r8 b16 r16 r8 a16 r16 r8 | % 23
		s1*3/4 | % 24
        s1*3/4 | % 25
        s1*3/4 | % 26
        e16 r16 r8 d16 r16 r8 e16 r16 r8  | % 27
        fs16 r16 r8 e16 r16 r8 fs16 r16 r8 | % 28
        r32 g32 [ a g a g a g ] 
		r32 fs32 [ g fs g fs g fs ] 
		r32 f32 [ g f g f g f ] | % 29
        s1*3/4 | % 30
        s1*3/4 | % 31
        s1*3/4 | % 32


   } %end repeated section

 }

soprano = << \sopranoOne \\ \sopranoTwo>>

%%
%% Bass Clef
%% 

bassOne = \relative g {
	\repeat volta 2 { %begin repeated section
	\stemDown
        g8 [ b'8 ] a8 [ fs,8 ] e8 [ g'8 ] | % 1
        fs,8 [ a'8 ] g8 [ e,8 ] d8 [ fs'8 ] | % 2
        e,8 [ g'8 ] fs8 [ g,8 ] a8 [ e'8 ] | % 3
        d,8 [ fs'8 ] e8 [ g,8 ] fs8 [ c'8 ] \clef "treble" | % 4
		\stemUp
        b'32\rest g32 [ a g a g a g ] 
		b32\rest g32 [ a g a g a g ] 
		b32\rest g32 [ a g a g a g ] | % 5
        b32\rest g32 [ a g a g a g ] 
		b32\rest g32 [ a g a g a g ] 
		b32\rest g32 [ a g a g a g ] | % 6
        b32\rest g32 [ a g a g a g ] 
		d'32\rest g,32 [ a g a g a g ] 
		b32\rest fs32 [ g fs g fs g fs ] | % 7
        b32\rest g32 [ a g a g a g ] 
		b32\rest g32 [ a g a g a g ] 
		b32\rest g32 [ a g a g a g ]  | % 8
        g,16 [ b a b ] e [ g fs g ] b [ g e cs ] | % 9
        fs,16 [ a g a ] d [ fs e fs ] a [ fs d b ] | % 10
        e,16 [ g fs g ] b [ e ds e ] g [ e b g ] | % 11
        a16 [ e' d e ] g [ a g a ] g [ e cs a ] \clef "bass" | % 12
        r32 fs32 [ g fs g fs g fs ] 
		r32 fs32 [ g fs g fs g fs ] 
		r32 fs32 [ g fs g fs g fs ]  | % 13
        r32 fs32 [ g fs g fs g fs ] 
		r32 fs32 [ g fs g fs g fs ] 
		r32 fs32 [ g fs g fs g fs ] | % 14
        r32 fs32 [ g fs g fs g fs ] 
		r32 fs32 [ g fs g fs g fs ] 
		r32 e32 [ fs e fs e fs e ] | % 15
        d,16 [ fs e fs ] a [ d cs d ] fs4 | % 16

    } %end of repeated section
  	    \repeat volta 2 { %begin repeated section
        \stemDown d'8 [ e,8 ] fs8 [ c'8 ] \stemNeutral d,8 [ \clef "treble" fs'8 ] | % 17
        g8 [ a,8 ] b8 [ f'8 ] g,8 [ d''8 ] | % 18
        c16 [ g f g ] e [ c b c ] a [ c e a ]  | % 19
        ds,16 [b as b ] \clef "bass" fs16 [ ds cs ds ] b [ ds fs a ] \clef "treble" | % 20
        b'32\rest e,32 [ fs e fs e fs e ] 
		b'32\rest e,32 [ fs e fs e fs e ] 
		b'32\rest e,32 [ fs e fs e fs e ] | % 21
        b'32\rest e,32 [ fs e fs e fs e ] 
		b'32\rest e,32 [ fs e fs e fs e ] 
		b'32\rest e,32 [ fs e fs e fs e ] | % 22
        b'32\rest e,32 [ fs e fs e fs e ] 
		b'32\rest e,32 [ fs e fs e fs e ] 
		b'32\rest ds,32 [ e ds e ds e ds ] | % 23
        e,16 [ e' ds e ] b [ g fs g ] e [ g b d ] | % 24
        b'32\rest g32 [ a g a g a g ] 
		b32\rest g32 [ a g a g a g ] 
		b32\rest g32 [ a g a g a g ] | % 25
        b32\rest g32 [ a g a g a g ] 
		b32\rest g32 [ a g a g a g ] 
		b32\rest g32 [ a g a g a g ] | % 26
        \flatBeam a,8 [ \stemDown e''8 ] \stemNeutral 
		\stemDown f8 [ fs8 ] g8 [  \clef "bass" fs,,8 ]| % 27
        \liftBeam d8 [ \clef "treble" fs''8 ] g8 [ gs8 ] \liftBeamTwo a8 [ \clef "bass" d,,8 ] 
		\stemUp | % 28
        g,8 [ g,8 ] af8 [ a8 ] bf8 [ b8 ] | % 29
        r32 c'32 [ d c d c d c ] 
		r32 b32 [ c b c b c b ] 
		r32 bf32 [ c bf c bf c bf ] | % 30
		\stemDown 
        fs16 [ d' c d ] b [ g fs g ] d [ fs a c ] | % 31
        b16 [ g fs g ] 
		\stemUp d [ b a b ] g4 | % 32
    } %end repeated section


}

bassTwo = \relative c' {
    \repeat volta 2 { %begin repeated section
	\stemDown	    
		s1*3/4 | % 1
		s1*3/4 | % 2
		s1*3/4 | % 3
        s1*3/4 \clef "treble" | % 4
        b16 r16 r8 c16 r16 r8 d16 r16 r8 | % 5
        c16 r16 r8 d16 r16 r8 e16 r16 r8 | % 6
        d16 r16 r8 e16 r16 r8 a,16 r16 r8 | % 7
        b16 r16 r8 c16 r16 r8 d16 r16 r8 | % 8
		s1*3/4 | % 9
		s1*3/4 | % 10
		s1*3/4 | % 11
		s1*3/4 \clef "bass" | % 12
        d,16 r16 r8 b16 r16 r8 a16 r16 r8 | % 13
        g16 r16 r8 a16 r16 r8 b16 r16 r8 | % 14
        a16 r16 r8 g16 r16 r8 a16 r16 r8 | % 15
		s1*3/4 | % 16
    } %end of repeated section
  
 	   \repeat volta 2 { %begin repeated section
		s1*3/4 | % 17
        s1*3/4 | % 18
        s1*3/4 | % 19
        s1*3/4  \clef "treble" | % 20
        g'16 r16 r8 a16 r16 r8 b16 r16 r8 | % 21
        c16 r16 r8 b16 r16 r8 c16 r16 r8 | % 22
        as16 r16 r8 b16 r16 r8 b16 r16 r8 | % 23
		s1*3/4 | % 24
        c16 r16 r8 b16 r16 r8 a16 r16 r8 | % 25
        b16 r16 r8 a16 r16 r8 g16 r16 r8 | % 26
		s1*3/4 | % 27
        s1*3/4 | % 28
        s1*3/4 | % 29
        c,16 d16\rest d8\rest d16 d16\rest d8\rest e16 d16\rest d8\rest | % 30
		s1*3/4 | % 31
		s1*3/4 | % 32
 
    } %end repeated section
}

nb = \noBreak
myBreaks = {
	\repeat unfold 4 { s2. \nb s2. } %system1-4
	\pageBreak
	s2. \repeat unfold 3 { \nb s2. } %system5
	\repeat unfold 2 { s2. \nb s2. } %system6-7
	s2. \repeat unfold 3 { \nb s2. } %system8
	s2. \nb s2.			 %system9
	\pageBreak
	s2. \nb s2. \nb s2.		 %system10
	\repeat unfold 2 { s2. \nb s2. } %system11-12
	s2. \nb s2. \nb s2.		 %system13
}

bass = << \bassOne \\ \bassTwo \\ \myBreaks >>

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
