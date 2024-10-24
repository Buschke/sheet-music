\version "2.24.0"
\language "english"

\paper {
    top-margin = 8\mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #5
    top-system-spacing.basic-distance = #12
    last-bottom-spacing.basic-distance = #12
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

%#(set-default-paper-size "letter")

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 12. Canone alla Quarta"
        mutopiatitle = "Goldberg Variations - 12"
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
	
 footer = "Mutopia-2014/03/10-1388"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url "http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url "http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url "http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%-------------------definitions
padFerm = \override Voice.Script.padding = #1
adjBeamOne = \once \override Beam.positions = #'( 4.0 . 2.3 )
adjBeamTwo = \once \override Beam.positions = #'( 2.3 . 3.4 )
adjBeamTre = \once \override Beam.positions = #'( -2.4 . -1.4 )
adjBeamQtr = \once \override Beam.positions = #'( 2.8 . 2.3 )
adjBeamCin = \once \override Beam.positions = #'( -2.0 . -3.5 )
adjBeamSix = \once \override Beam.positions = #'( 4.8 . 5.5 )
adjBeamSev = \once \override Beam.positions = #'( -4.8 . -5.8 )
adjBeamOct = \once \override Beam.positions = #'( 5.6 . 5.3 )
adjBeamNov = \once \override Beam.positions = #'( -5.9 . -6.1 )
adjBeamTen = \once \override Beam.positions = #'( -4.9 . -5.1 )

adjTieOne = \shape #'((0 . -0.2) (0 . -0.3) (0 . -0.3) (0 . -0.2)) Tie
adjTieTwo = \shape #'((0 . 0.2) (0 . 0.3) (0 . 0.3) (0 . 0.2)) Tie
adjTieTre = \shape #'((0 . 0.2) (0.7 . 0.7) (-0.7 . 0.7) (0 . 0.2)) Tie
adjTieQtr = \shape #'((0 . -0.2) (0.7 . -0.7) (-0.7 . -0.7) (0 . -0.2)) Tie
adjTieCin = \shape #'((0 . 0.0) (0.7 . 0.5) (-0.7 . 0.5) (0 . 0.0)) Tie

liftRest = \override MultiMeasureRest.staff-position = #8

hidePP = \tweak #'stencil ##f\pp
hideMF = \tweak #'stencil ##f\mf

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

soprano =   \relative g' {
    \repeat volta 2 { %begin repeated section
        r8-\hideMF g16 [ fs ] \adjBeamTwo g8 [ a16 b ] \adjBeamOne c16 [ b a g ] | % 1
        d'16 [ a-\hidePP b cs ] \adjBeamTre d [ e fs g ] a8 r8 | % 2
        r8 g16 [ fs ] \adjBeamCin e16 [ d cs b ] \adjBeamQtr a16 [ g fs g ] | % 3
        g8[-\hideMF fs16 \prall e ] d8 r8 b'4\rest | % 4
        f'16\rest \stemUp d8.^~ d16  [ b-\hidePP a g ] f16 [ e d f ] | % 5
        e16 [ g16 c16 d16 ] e8 a,4-\hideMF a8^~ | % 6
        a16 [ b fs g ] a [ g fs e' ] d [ c b a ] | % 7
        g4 r4 r4 | % 8
        r16-\hidePP fs16 [ g a ] b [ cs d fs ] e [ d cs b ] | % 9
        a16 [ g fs e ] d8 r8 r4 | % 10
        r8 cs'8^~ cs16 [ b-\hideMF a b ] cs [ d e fs ] | % 11
        g8_[ g,16 fs ] \adjTieOne g4 ~ g16 [ b-\hidePP a g ] | % 12
        fs16 [ e fs g ] fs [ a g fs ] e4^~ | % 13
        e8 [ d'-\hideMF cs b ] a [ fs' ] | % 14
        g,4. fs8 e16 [ a g8^~ ] | % 15
        g8 [ fs16 e ] fs [ d'8 cs16 ] d8 r8 | % 16	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        R1*3/4 | % 17
        \stemNeutral \staffUp r8 g,16 [ fs ] g8 [ a16-\hidePP b ] c [ b a g ] | % 18
        \adjTieTre g'4~-\hideMF g16 [ fs! a g ] fs [ g e8 ] | % 19
        \grace e16 \adjTieTwo fs8 ~ [ fs32 es32 fs g! ] fs8 [ a, ] r8 fs'8 | % 20
        g16^[-\hidePP fs g a ] g^[ fs e d ] c [ b a g ] | % 21
        \adjTieCin fs2.^~-\hideMF | % 22
        fs8 [ fs16 g16 ] fs8 [ fs8 ] \adjTieOne fs8 [ g16 a16 ] | % 23
        g4 d'4 \rest e,4 ( | % 24
        e16 ) [ fs16-\hidePP g16 e16 ] fs16 [ g16 gs16 a16 ] b16^[ c16 d16 e16] | % 25
        \stemUp d8 f8\rest f4\rest f4\rest | % 26
        b,16 \rest c,16 [ d16 e16 ] d16 [ ef16 fs!16 g16 ] fs16 [ g16 a16  b16 ] | % 27
        \adjTieCin a2.^~ | % 28
        a8 [ d,  e  fs ] g16 [ b a c ] | % 29
        b8 [ a b c ] \stemNeutral d8. ^\prallmordent [ e16 ] | % 30
        \adjTieTwo d4 ~ d16 [ b c d ] e [ fs g a ] | % 31
        b16 [ g d b ] g8 r8 \padFerm r4^\fermata  | % 32
    } %end repeated section
}


%%
%% Bass Clef
%% 

bassOne =   \relative fs' {
    \repeat volta 2 { %begin repeated section
    \stemUp
        \liftRest R1*3/4 | % 1
        r8 d16 [ e ] d8 [ c!16 b ] a [ b c d ] | % 2
        g,16 [ c b a ] g [ fs e d ] cs8 r8 | % 3
        r8 d16 [ e ] fs [ g a b ] \staffUp \stemDown c [ d e d ] | % 4
        d8 [ e16 fs ] g8 c,8\rest a4\rest | % 5
        \staffDown \stemUp a16\rest  g8. ~ \adjBeamSix g16 [ b \stemDown \staffUp c d ] e [ fs g e ] | % 6
        \adjBeamSev fs16 [ d \stemUp \staffDown a g ] fs8 c'4  c8 ~ | % 7
        \adjBeamOct c16 [ b \stemDown \staffUp e d ] \adjBeamNov c [ d e \stemUp \staffDown fs, ] g [ a b c ] | % 8
        d4 \stemDown \staffUp c4\rest c4\rest | % 9
        c16\rest e16 [ d cs ] \stemUp \staffDown b [ a g e ] fs [ g a b ] | % 10
        \stemDown \staffUp cs16 [ d e fs ] g8 c,8\rest c4\rest | % 11
        \stemUp \staffDown a8\rest a8 ~ a16 [ b cs b ] a [ g fs e ] | % 12
        d8 [ \stemDown \staffUp d'16 e ] \adjTieOne d4_~ d16 [ b cs d ] | % 13
        e16 [ fs e d ] e [ cs d e ] \adjTieOne fs4_~ | % 14
        fs8 [ \stemUp \staffDown g, a b ] \stemDown \staffUp cs [ \stemUp \staffDown e, ] | % 15
        \stemDown \staffUp d'4. e8 fs16 [ cs d8 ] % 16
	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        \stemUp \staffDown
    	r8 d16 [ e ] d8 [ c!16 b ] a [ b c d ] | % 17
        \adjTieTwo d,4 ~ d16 [ e c d ] e [ d f8 ] | % 18
        \grace f16 e8 ~ [ e32 f! e ds ] e8 [ c' ] f,8\rest e8 | % 19
        ds16 [ e ds cs ] ds [ e fs g ] a [ b cs ds ] | % 20
        \stemDown \staffUp \adjTieQtr e2._~ | % 21
	e8 [ e16 ds ] e8 [ e ] e [ ds16 cs ] | % 22
	ds4 a4\rest \adjTieOne fs'4_~ | % 23 
	fs16 [ e ds fs ] e [ d  cs c ] \stemUp \staffDown b [ a  g fs ] % 24
        g8 r8 c4\rest c4\rest | % 25
	\stemDown \staffUp e16\rest a16 [ gs fs ] gs [ f e d ] e [ d c b ] | % 26
        \adjTieQtr c2._~  | % 27
        c8 [ g' fs e ] \adjBeamTen d16 [ \stemUp \staffDown b c a ] | % 28
        b8 [ c b a ] g8. ^\prallprall [ fs16 ] | % 29
        \adjTieTwo g4 ~ g16 [ b a g ] fs [ e d c ] | % 30
        b16 [ d g b ] d8 [ \adjTieTwo g, ~ ] g16 [ a fs8 ] | % 31
        g4 d'4\rest d4\rest | % 32
    } %end repeated section
}

bassTwo =   \relative g {
    \repeat volta 2 { %begin repeated section
    \stemDown
        g4-\hideMF g g | % 1
        fs fs fs | % 2
        e e e | % 3
        d16 [ d, d'8 ] r8 c16 [ b a8 c ] | % 4
        b4 b b | % 5
        c c c | % 6
        d d d | % 7
        g8. [ b,16 ] e [ d c e ] d [ c b a ] | % 8
        b8 [ g ] d'8\rest g16 [ fs g8 e ] | % 9
        fs8 [ b ] d,8\rest b16 [ cs d8 b ]  | % 10
        e16 [ fs g fs ] e8 [ fs  e  d ] | % 11
        cs16 [ d e d ] cs8 [ e ] cs [ a ] | % 12
        d4 d16\rest d16 [ e fs ] g [ a g fs ] | % 13
        g8^[ g, ] d'16\rest e16 [ fs g ] a [ fs e d ] | % 14
        b'16 [ b, e d ] cs [ a d g ] a [ e cs a] | % 15
        d16 [ e d cs ] \stemUp d8 [ a ] d, d'8\rest | % 16
	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        \stemDown d4 d c | % 17
        b8 [ c b a ] g [ a16 b16 ] | % 18
        c8 [ b ] c [ e ] a, [ c ] | % 19
        b4 r4 r4 | % 20
        r8 e8 [ fs g a b ]  | % 21
		c16 [ d c b ] c [ b a g ] a [ fs g a ] | % 22
        b16 [ c b a ] b [ fs ds fs ] b,16^[ ds cs  b ] | % 23
		e16 [ c b a ] g [ b e ds ] e8 [ d ] | % 24
		c8 [ c' ] d,16\rest e16 [ d c ] d [ c b a ] | % 25
		b8 [ b' ] d,16\rest d16^[ c b ] c^[ b a gs ] | % 26
        a8 [ a' ] d,16\rest b'16 [ a g ] a [ g fs e ] | % 27
        fs16 [ e d cs ] d^[ c b a ] b [ a g fs ] % 28
		g16 [ a' g fs ] g [ fs e ds ] e4 ~ | % 29
        e16 [ d c e ] d4. a8 | % 30
        b8 r8 r8 e8 [ c d ] | % 31
        \adjTieOne g,4 ~ g16 [ b d fs ] \padFerm g4_\fermata | % 32
    } %end repeated section
}


bass = << \bassOne \\ \bassTwo>>


%% Merge score - Piano staff in key of G Major, 12/8 time.

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef "treble" \key g \major \time 3/4 \soprano  }
        \context Staff = "lower"  { \clef "bass" \key g \major \time 3/4 \bass }
    >>
    \layout{  }
    \midi { \tempo 4 = 94 }

}
