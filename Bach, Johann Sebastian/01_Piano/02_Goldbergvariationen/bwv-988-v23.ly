\version "2.24.0"
\language "english"

\paper {
    top-margin = 8\mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #10
    top-system-spacing.basic-distance = #12
    last-bottom-spacing.basic-distance = #12
    indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% #(set-default-paper-size "letter")

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 23. a 2 Clav."
        mutopiatitle = "Goldberg Variations - 23"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Harpsichord,Clavichord"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        license = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2014/07/27-1418"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url "http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url "http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url "http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%%------------- definitions
posBeamA = \once \override Beam.positions = #'(0.7 . 0.7)
posBeamB = \once \override Beam.positions = #'(0 . 0)
posBeamC = \once \override Beam.positions = #'(-0.2 . -0.2)
doKneedBm = \once \override Beam.auto-knee-gap = #1
ignoreClash = \temporary \override NoteColumn.ignore-collision = ##t

%---------Pavel's snippet from LSR to change clef at beginning of staff
% Append markup in the text property to the grob
#(define (append-markup grob old-stencil)
  (ly:stencil-combine-at-edge
    old-stencil X RIGHT (ly:text-interface::print grob)))

bassToTreble = {
  \clef treble
  % Fake staff clef appearance
  \once \override Staff.Clef.glyph-name = #"clefs.F"
  \once \override Staff.Clef.Y-offset = #1
  % Append change clef to the time signature
  \once \override Staff.TimeSignature.text = \markup {
    \hspace #1.2
    \raise #-1
    \musicglyph "clefs.G_change"
  }
  \once \override Staff.TimeSignature.stencil = #(lambda (grob)
    (append-markup grob (ly:time-signature::print grob)))
}

sopranoOne =   \relative g' {
    \repeat volta 2 { %begin repeated section
        \stemNeutral
     	b8\rest g8 b'16 [ a g fs ] e [ d cs b ] | % 1
	a16 [ g fs8 ] a'16 [ g fs e ] d [ cs b a ] | % 2
	g16 [ fs e8 ] g'16 [ fs e d ] cs_[ b a g ] | % 3
	fs16 [ e d8 ] b'8\rest b16\rest e,32 [ fs32 ] g^[ a b cs d8 ~ ] | % 4
	\doKneedBm \posBeamC d8 [ b,16 c ] d [ e fs g ] a [ b c d ] | % 5
	\doKneedBm \posBeamB e8 [ c,16 d ] e [ fs g a ] b [ c d e ] | % 6
	\doKneedBm \posBeamA fs8 [ d,16 e ] fs [ g a b ] c [ d e fs ] | % 7
	g8 b,8\rest b16\rest fs'32 [ e d c b a ] g16 b16\rest b8\rest | % 8
	\stemUp r16 b'16 [ b ] b,16\rest b32\rest g'32_[ fs e d16 ] b16\rest b32\rest c32 [ b a g16 ] b16\rest | % 9
	r16 a'16 [ a ] b,16\rest b32\rest d32_[ cs b a16 ] b16\rest b32\rest g32 [ fs e d16 ] b'16\rest | % 10
	r16 g'16 [ g ] b,16\rest b32\rest c!32 [ b a g16 ] b16\rest b32\rest a32 [ g fs e16 ] b'16\rest | % 11
	r16 g'16 [ g ] b,16\rest b32\rest fs32 [ e d cs16 ] b'16\rest b32\rest d,32 [ cs b a16 ] b'16\rest | % 12
	\stemNeutral b16\rest a16 [ a' g ] fs [ e d c ] b [ a g fs ] | % 13
	b16 [ g fs e ] d [ c b a ] g [ b e d ] | % 14
	cs16 [ b a b ] cs [ d e fs ] g [ a b cs ] | % 15
	d16 [ cs32 b a g fs e ] d8 b'8\rest b4\rest | % 16
	\pageBreak
	} %end of repeated section
  
    \repeat volta 2 { %begin repeated section
		a'8 \prallmordent  b,16\rest g'16 \once \stemUp \grace { g16 } fs8  b,16\rest e16 \once \stemUp \grace { e16 } d8 b16\rest c16  | % 17
		b8 \prallprall b16\rest a16 \grace a16 g8 b16\rest fs16 \grace fs16 e8 \clef "bass" d,16\rest d'16 | % 18
		c8 d,16\rest  b'16 \once \stemUp \grace { b16 } a8 d,16\rest g16 \once \stemUp \grace { g16 } fs8 d16\rest e16 | % 19
		\once \stemUp \grace { e16 } ds8 d16\rest fs16 a8 d,16\rest c'16 b8 \prallprall d,16\rest a'16 | % 20
		g8 d8\rest \clef "treble" b''16\rest ds16 [ e fs ] g [ gs a b ] | % 21
		c16 [ a g f ] e [ d c b ] a [ g fs! e ] | % 22
		ds16_[ \once \stemUp \grace { d'!16 } c b8 ] b32\rest b32 [ cs ds e fs g16 ~ ] g [ fs e \prallprall ds ] | % 23
		e32^[ c b a b ] r32 r16 r32 fs32 [ e ds e ] s4 s16 s32 | % 24
		r16 e16 [ f g ] \stemUp a [ b c d ] e8 r8 | % 25
		r16 d16 [ c b ] a [ g fs e ] d8 r8 \clef "bass" | % 26
		r16 d16 r16 b16 r16 d16 r16 b16 r16 b16 r16 g16 | % 27
		r16 g16  r16 e16  r16 g16  r16 e16  r16 e16  r16 c16  | % 28
		r16 c16 r16 a16 r16 c16 r16 e16 r16 g16 r16 b16 | % 29
		r16 d16 r16 b16 r16 d16 r16 \clef "treble" fs!16 r16 a16 r16 c16 | % 30
		r16 cs16 [ d e ] fs [ g a b ] c!8 r8 | % 31
		r16 b16 [ a g ] fs [ e d c ] b8 r8  | % 32
    } %end repeated section
}

sopranoTwo =   \relative b' {
  \repeat volta 2 { %begin repeated section
	  \stemDown
	  s1*3/4 | % 1
	  s1*3/4 | % 2
	  s1*3/4 | % 3
	  s1*3/4 | % 4
	  s1*3/4 | % 5
	  s1*3/4 | % 6
	  s1*3/4 | % 7
	  s1*3/4 | % 8
	  r16 d16 [ d ] s16 s1*2/4 | % 9
	  r16 d16 [ d ] s16 s1*2/4 | % 10
	  r16 b16 [ b ] s16 s1*2/4 | % 11
	  r16 a16 [ a ] s16 s1*2/4 | % 12
	  s1*3/4 | % 13
	  s1*3/4 | % 14
	  s1*3/4 | % 15
	  s1*3/4 | % 16

    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
		s1*3/4 | % 17
		s1*3/4 | % 18
		s1*3/4 | % 19
		s1*3/4 | % 20
		s1*3/4 | % 21
		s1*3/4 | % 22
		s1*3/4 | % 23
		s8 s32 a32 [ g fs g ] s4 s8 s16 s32 | % 24
		r16 c,16 [ d e ] f! [ g a b ] c8 r8 | % 25
		r16 b16 [ a g ] fs [ e d c ] b8 r8 \clef "bass" | % 26
		r16 b16  r16 gs16 r16 b16 r16 g16 r16 g16 r16 e16 | % 27
		r16 e16 r16 cs16 r16 e16 r16 c16 r16 c16 r16 a16 | % 28
		r16 a16 r16 fs16 r16 a16 r16 c16 r16 e16 r16 g16 | %29
		r16 f16 r16 d16 r16 f16 r16 \clef "treble" a16 r16 c16 r16 e16 | % 30
		r16 a16 [ b cs ] d [ e fs g ] a8 r8 | % 31
		r16 d,16 [ c b ] a [ g fs e ] d8 r8 | % 32 

    } %end repeated section
}

soprano = << \sopranoOne \\ \sopranoTwo>>

%%
%% Bass Clef
%% 

bassOne = \relative g' {
	\repeat volta 2 { %begin repeated section
		\stemNeutral
		\bassToTreble \doKneedBm \posBeamA g8 [ b'16 a ] g [ fs e d ] cs_[ b a g ] | % 1
		\doKneedBm \posBeamB fs8 [ a'16 g ] fs [ e d cs ] b^[ a g fs ] | % 2
		\doKneedBm \posBeamC e8 [ g'16 fs ] e [ d cs b ] a^[ g fs e ] | % 3
		\stemNeutral d8 \clef "bass" d,16\rest c'32 [ b ] a [ g fs e d8 ] d8\rest d16\rest c16 | % 4
		b8 d8\rest \clef "treble" b'16 [ c d e ] fs [ g a b ] | % 5
		c16 [ d e8 ] c,16 [ d e fs ] g [ a b c ] | % 6
		d16 [ e fs8 ] d,16 [ e fs g ] a [ b c a ] | % 7
		b32 [ g a b c d e fs ] g16 d16\rest d8\rest d16\rest fs,32 [ e d c b a ] | % 8
		g8 b'16\rest a,16 b8 \prallmordent b'16\rest c,16 d8 \prallmordent b'16\rest e,16 | % 9
		fs8 \prallmordent b16\rest g16 a8 \prallmordent b16\rest b16 cs8 \prallmordent b16\rest d16 | % 10
		e8 \prallmordent b16\rest fs'16 g8 \prallmordent b,16\rest a'16  b8 b,16\rest d16 | % 11
		cs8 b16\rest e16 g,8 b16\rest b16 a8 \prallmordent b16\rest g16 | % 12
		fs8 b16\rest a,16 a' [ g fs e ] d [ c b a ] | % 13
		g16 [ b d c ] b [ a g fs ]  \clef "bass" e_[ d cs b ] | % 14
		a16 [ e' g fs ] e_[ d cs b ] a [ g fs e ] | % 15
		d4_~ d16 [ e32 fs g a b cs ] d8 b8\rest | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
		\stemUp
		r16 d16[ d ] s16 s1*2/4 | % 17
		r16 g16 [ g ] s16 s1*2/4 | % 18
		r16 a'16 [ a ] s16 s1*2/4  | % 19
		r16 c'16 [ c ] s16 s1*2/4 | % 20
		b,16\rest e16_[ d! c ] b [ a g fs ] e [ d c b ] | % 21
		a8 b'8\rest b16\rest gs,16 [ a b ] c [ cs ds e ] | % 22
		fs8 \clef "bass" d,16\rest \stemNeutral a'16 g8 [ c8 ] a8 [ b8 ] | % 23
		e,8 r32 s4 c'32 [ b a b ] r32 r16 r32 f32 [ e d ] | % 24
		c8 d8\rest r16 \stemUp d'16 [ c b ] a [ g  fs  e ]  | % 25
		\ignoreClash d8 r8 r16 c16 [ d e ] fs [ g a b ] \undo \ignoreClash | % 26
		c8 [ c c c a a ] | % 27
		fs8 [ fs fs fs d d ] | % 28
		b8 [ b b d f a ] | % 29
		c8 [ c c \clef "treble" e g b ] | % 30
		d16 r16 r8 \clef "bass" r16 e,16 [ d c! ] b [ a g fs ] | % 31
		g16 [ b, c d ] e [ fs g a ] b8 r8 | % 32
  
    } %end repeated section
}

bassTwo = \relative d, {
    \repeat volta 2 { %begin repeated section
		\stemDown
		s1*3/4 | % 1
		s1*3/4 | % 2
		s1*3/4 | % 3
		s1*3/4 | % 4
		s1*3/4 | % 5
		s1*3/4 | % 6
		s1*3/4 | % 7
		s1*3/4 | % 8
		s1*3/4 | % 9
		s1*3/4 | % 10
		s1*3/4 | % 11
		s1*3/4 | % 12
		s1*3/4 | % 13
		s1*3/4 | % 14
		s1*3/4 | % 15
		s1*3/4 | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
		r16 d16 [ d ] d'16\rest d32\rest e32 [ fs g a16 ] d,16\rest d32\rest a'32 [ b c32 d16 ] d,16\rest | % 17
		r16 g,16 [ g ] d'16\rest d32\rest \clef "treble" \stemNeutral d'32 [ e fs g16 ] b16\rest b32\rest fs32 [ g a b16 ] b16\rest | % 18
		r16 e,16_[ e ] b'16\rest b32\rest b32 [ c d e16 ] b16\rest b32\rest e32 [ fs g a16 ] b,16\rest | % 19
		r16 a'16 [ a ] b,16\rest b32\rest b'32 [ a g fs16 ] b,16\rest b32\rest g'32 [ fs e ds16 ] b16\rest | % 20
		s1*3/4 | % 21
		s1*3/4 | % 22
		s1*3/4 | % 23
		s2 s32 a,32 [ g fs g ]  s16 s32 | % 24
		s8 s8 r16 b16 [ a  g ] fs! [ e  d  c ] | % 25
		b8 r8 r16 a16_[ b c ] d [ e fs g ] | % 26
		a8 [ a a a fs fs ] | % 27
		\stemDown d8 [ d d d b b ] | % 28
		g8 [ g g b d f ] | % 29
		e8 [ e e g b d ] | % 30
		fs16 r16 r8 \clef "bass" r16 g,16 [ fs e ] d [ c b a ] | % 31
		g8 [ a16 b ] c [ d e fs ] g8 r8 | % 32

    } %end repeated section
}

bass = << \bassOne \\ \bassTwo>>

%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key g \major \time 3/4 \soprano  }
        \new Staff = "lower"  { \clef bass \key g \major \time 3/4 \bass }
    >>
    \layout{  }
    \midi { \tempo 4 = 85 }

}
