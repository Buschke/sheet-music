\version "2.24.0"
\language "english"

\paper {
    top-margin = 8\mm
    indent = 6\mm
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
        piece = "    Variatio 20. a 2 Clav."
        mutopiatitle = "Goldberg Variations - 20"
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
	
 footer = "Mutopia-2014/05/24-1416"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url "http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url "http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url "http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}
%-----------------------definitions
hideTuplet = \override TupletNumber.stencil = ##f
showTuplet = \revert TupletNumber.stencil
hideTupletBracket = \override TupletBracket.bracket-visibility = ##f
adjTieDown = \shape #'((0 . -0.2) (0 . -0.3) (0 . -0.3) (0 . -0.2)) Tie
adjTieUp = \shape #'((0 . 0.2) (0 . 0.3) (0 . 0.3) (0 . 0.2)) Tie
adjBeamOne = \once \override Beam.positions = #'( 1.3 . -3.8 )
adjBeamTwo = \once \override Beam.positions = #'( 1.3 . 1.3 )
adjBeamTre = \once \override Beam.positions = #'( -1.3 . -1.3 )
adjBeamQtr = \once \override Beam.positions = #'( 0.3 . 0.3 )

global = { \key g \major \time 3/4 }

soprano =   \relative b' {
    \repeat volta 2 { %begin repeated section
        \stemUp r16 b16 r16 g16 r16 d16 r16 b16 r16 \clef "bass" \stemDown g16 fs e \noBreak | % 1
        fs8 [ a \clef "treble" d fs a d ] \noBreak  | % 2
        \stemNeutral r16 g,16 r16 e16 r16 cs16 r16 a16 r16 \clef "bass" g16 fs e | % 3
        d8 [ fs a \clef "treble" d fs a ]  | % 4
        r16 fs16 r16 d16 r16 b16 r16 g16 r16 \clef "bass" f16 e d | % 5
        c8 [ e g c e g ]  | % 6
        r16 fs16 r16 d16 r16 a16 r16 fs16 r16  d16 [ c d ]  | % 7
        g,8 [ b d g fs c' ] \clef "treble" | % 8
        \tuplet 3/2  { b16 [ a b ] }
        \tuplet 3/2  { cs16 [ b cs ] } \hideTuplet
        \tuplet 3/2  { d16 [ cs d ] }
        \tuplet 3/2  { e16 [ d e ] }
        \tuplet 3/2  { fs16 [ e fs ] }
        \tuplet 3/2  { g16 [ fs g ] }| % 9
        \showTuplet \tuplet 3/2  { a16 [ g a ] }
        \hideTuplet \tuplet 3/2  { b16 [ a b ] }
        \tuplet 3/2  { cs16 [ b cs ] } 
        \tuplet 3/2  { d16 [ cs d ] }
        \tuplet 3/2  { e16 [ d e ] }
        \tuplet 3/2  { fs16 [ e fs ] } | % 10
        g8 r8 \clef "bass" e,,4 \prallmordent r8 \clef "treble" b''8 | % 11
		g'8 r8 \clef "bass" cs,,,4 \prallmordent r8 \clef "treble" g'''8 | % 12
        \showTuplet \tuplet 3/2  { fs16 [ a d, ] }
        \hideTuplet \tuplet 3/2  { e16 [ g cs, ] }
        \tuplet 3/2  { d16 [ fs b, ] }
        \tuplet 3/2  { c16 [ e a, ] }
        \tuplet 3/2  { b16 [ d g, ] }
        \tuplet 3/2  { a16_[ c fs, ] } | % 13
        g8 [ \clef "bass" g, fs a fs d'] \clef "treble" | % 14
        \tuplet 3/2  { cs16 [ a b ] }
        \tuplet 3/2  { cs16 [ d e ] }
        \adjTieDown fs8 ~ \tuplet 3/2 { fs16 [ e d] } 
        b'8 [ cs \turn ] | % 15
        \tuplet 3/2  { d16_[ a fs ] } \clef "bass"
        \tuplet 3/2 { d16 [ a fs ] }
        d8 r8 r4 \clef "treble"  | % 16
    } %end of repeated section
	
     \repeat volta 2 { %begin repeated section
        r16  a'''16 r16 fs16  r16 d16 r16 a16 r16 fs16 r16 d16 \clef "bass" | % 17
        r16  b16 r16 g16 r16 d16 r16 b16 r16  g16 [ a b ] | % 18
        c8 [ g' c e a,  \clef "treble" \adjTieUp c'~ ] | % 19 
        \showTuplet \tuplet 3/2  { c16 [ b as ] }
        \hideTuplet \tuplet 3/2  { b16 [ cs ds ] }
        \tuplet 3/2  { e16 [ ds cs ] }
        \tuplet 3/2  { ds16 [ e fs ] }
        \tuplet 3/2  { g16 [ fs e ] }
        \tuplet 3/2  { fs16 [ g a ] } | % 20
        \showTuplet \tuplet 3/2  { b16 [ a g ] }
        \hideTuplet \tuplet 3/2  { a16 [ b c ] }
        ds,8 [ c'  b \adjTieUp d, ~ ] | % 21
        \tuplet 3/2  { d16 [ cs ds ] }
        \tuplet 3/2  { e16 [ fs g ] }
        as,8 [ g'  fs  a, ] | % 22
        \stemUp \adjBeamOne g8 [ ds \stemDown \clef "bass" e8  c  ds,  \clef "treble" ds'' ] \stemNeutral | % 23
        e8 [ e, ] 
		\hideTupletBracket \showTuplet \tuplet 3/2 { r16  g16 [ b ] }
        \hideTuplet \tuplet 3/2 { e16 [ g ds ] }
        \tuplet 3/2 { e16 [ b g ] }
        \tuplet 3/2 { r16 gs16 [ f' ] } | % 24
        \tuplet 3/2 { e16 [ c a ] }
        \tuplet 3/2 { r16 d,16 [ b' ]}
		\tuplet 3/2 { r16 c,16 [ a' ]}
		\tuplet 3/2 { r16 b,16 [ g' ]}
		\tuplet 3/2 { r16 c,16 [ a' ]}
		\tuplet 3/2 { r16 fs16^[ ef' ]} | % 25
        \tuplet 3/2 { d16^[ b g ] }
        \tuplet 3/2 { r16 c,16 [ a' ]}
		\tuplet 3/2 { r16 b,16 [ g' ]}
		\tuplet 3/2 { r16 a,16 [ fs' ]}
		\tuplet 3/2 { r16 b,16 [ g' ]}
		\tuplet 3/2 { r16 e16 [ d' ]} | % 26
        \tuplet 3/2 { c16 [ a e } c8-. ] c8-. [c-. c-. c'] | % 27 
        \tuplet 3/2 { c16 [ a fs } c8-. ] c8-. [c-. c-. c'-.] | % 28 
        \tuplet 3/2 { b16 [ g d'] }
        \tuplet 3/2 { c16 [ a e' ] }
        \stemDown \adjBeamTre d8 [ \stemUp b, g \stemDown  f''] | % 29
        \stemNeutral \tuplet 3/2 { e16 [ g c,] }
        \tuplet 3/2 { d16 [ f b, ] }
        \tuplet 3/2 { c16 [ e a, ] }
        \tuplet 3/2 { b16^[ d g, ] }
        \tuplet 3/2 { a16 [ c fs,! ] }
        \tuplet 3/2 { g16 [ b e, ] } | % 30
        \tuplet 3/2 { fs16 [ d e ] }
        \tuplet 3/2 { fs16 [ g a ] }
        b,8 ~ \tuplet 3/2 { b16 [ a g ] }
        e'8 [ fs \turn] | % 31
        \tuplet 3/2 { g16 [ d b ] }
		\clef "bass" 
        \tuplet 3/2 { g16 [  d b ] }
        g8 r8 r4 

    } %end repeated section
}

%%
%% Bass Clef
%% 

bass = \relative g {
	\repeat volta 2 { %begin repeated section
        \clef "treble" g8 [ b d g b cs ] | % 1
        r16 d16 r16 a16 r16 fs16 r16 d16 r16 \clef "bass" a16 [ g fs ] | % 2
        e8 [ g a cs e g ]  | % 3
        r16 fs16 r16 d16 r16 a16 r16 fs16 r16 e [ d c]  | % 4
        b8 [ d  g  b  d  f ] | % 5
        r16 e16 r16 c16 r16 g16 r16 e16 r16 c16 [ b a] | % 6
        d8 fs a \clef "treble" d  fs a ] | % 7
        r16 b16 r16 g16 r16 d16 r16 b16 r16 a16 [ g fs]  | % 8
        g8 r8 b''4 \prallmordent r8  e,,8 | % 9
        fs,8 r8 a''4 r8 d,,8 | % 10
		\tuplet 3/2  { b'16 [ c b ] }
        \hideTuplet \tuplet 3/2  { a16 [ b a ] }
        \tuplet 3/2  { g16 [ a g ] }
        \tuplet 3/2  { fs16 [ g fs] }
        \tuplet 3/2  { e16 [ fs e ] }
        \tuplet 3/2  { d16 [ e d ] } \clef "bass" | % 11
	\showTuplet \tuplet 3/2  { cs16 [ d cs ] }
        \hideTuplet \tuplet 3/2  { b16 [ cs b ] }
        \tuplet 3/2  { a16 [ b a ] }
        \tuplet 3/2  { g16 [ a g ] }
        \tuplet 3/2  { fs16 [ g fs ] }
        \tuplet 3/2  { e16 [ fs e ] } % 12
        d8 [ a' fs' a, d, c' ] \clef "treble" | % 13
		\tuplet 3/2  { b16 [ g d' ] }
        \tuplet 3/2  { cs16 [ a e' ] }
        \tuplet 3/2  { d16 [ b fs' ] }
        \tuplet 3/2  { e16 [ cs! g' ] }
        \tuplet 3/2  { fs16 [ d a' ] }
        \tuplet 3/2  { g16 [ e b' ] } | % 14
		a8 ~ \tuplet 3/2  {a16 [ b cs ] }  
		\hideTupletBracket \tuplet 3/2  { d16  [ cs b  } \adjTieDown a8 ] ~  
		\tuplet 3/2  {a16 [g fs ] } 
		\tuplet 3/2  {e16  [fs g ] } | % 15
		fs8 r8 
		\tuplet 3/2  {r16 fs16 [a] } 
		\tuplet 3/2  {d16 [fs a] } 
		d8 r8 \clef "bass" | % 16
    } %end of repeated section

	\repeat volta 2 { %begin repeated section
        d,,,8 [ d, fs a d fs ] | % 17
		g8 [ \clef "treble" b d g ] \adjTieUp b4 \prallmordent ~ | % 18
		\showTuplet \tuplet 3/2  { b16 [ e, ds ] }
        \hideTuplet \tuplet 3/2  { e16 [ fs g ] }
        \tuplet 3/2  { a16 [ g fs ] }
        \tuplet 3/2  { g16 [ a b ] }
        \tuplet 3/2  { c16^[ b a ] }
        \tuplet 3/2  { g16 [ fs e ] } | % 19
		ds8 ~ [ \showTuplet \tuplet 3/2  { ds16  e fs  ] }
        \hideTuplet \tuplet 3/2  { g16 [ fs e ] }
        \tuplet 3/2  { fs16 [ g a ] }
        \clef "bass" b,8 [ a ] | % 20
        \showTuplet \tuplet 3/2  { g16 [ fs e ~ ] }
        \hideTuplet \tuplet 3/2  { e16 [ ds e ] }
        \tuplet 3/2  { f16 [ e f ] }
        \tuplet 3/2  { fs16 [ e fs ] }
        \tuplet 3/2  { g16 [ fs g ] }
        \tuplet 3/2  {gs16 [ fs gs ] } | % 21
        a8 ~ \tuplet 3/2  { a16 [  as b ] }
        \tuplet 3/2  { c16 [ b c ] }
        \tuplet 3/2  { cs16 [ b cs ] }
        \tuplet 3/2  { d16 [ cs d ] }
        \tuplet 3/2  { ds16 [ cs ds ] }
        \clef "treble" | % 22
		\tuplet 3/2  { e16 [ ds e ] }
        \tuplet 3/2  { fs16 [ e fs ] }
        \tuplet 3/2  { g16 [ fs g ] }
        \tuplet 3/2  { a16 [ g a ] }
        \tuplet 3/2  { b16 [ a b ] }
        \tuplet 3/2  {c16^[ b a ] } | % 23
        \tuplet 3/2  { g16 [ fs g ] }
        \tuplet 3/2  { a16 [ g fs ] } 
        e4. \clef "bass" d,8 | % 24
        \adjBeamTwo \stemUp c8 [ \stemDown e'-. e-. e-. e-. \stemUp c, ] | % 25
        \adjBeamTwo b8 [ \stemDown d'-. d-. d-. d-. \stemUp b, ] | % 26
	\stemNeutral	a8
        \tuplet 3/2 { r16 b'16 [ g' ]}
		\tuplet 3/2 { r16 a,16 [ fs' ]}
		\tuplet 3/2 { r16 g,16 [ e' ]}
		\tuplet 3/2 { r16 fs,16 [ d' ]}
		\tuplet 3/2 { r16 g,16 [ e' ]} | % 27
		d,8
        \tuplet 3/2 { r16 \clef "treble" a'16 [ fs' ]}
		\tuplet 3/2 { r16 b,16 [ g' ]}
		\tuplet 3/2 { r16 c,16 [ a' ]}
		\tuplet 3/2 { r16 b,16 [ g' ]}
		\tuplet 3/2 { r16 a,16 [ fs' ]} | % 28
		g,8  [ \adjTieDown  g' ~ ] 
        \tuplet 3/2 { g16 [ b e, ]}
		\tuplet 3/2 { f16 [ a d, ]}
		\tuplet 3/2 { e16 [ g c, ]}
		\tuplet 3/2 { d16 [ f b, ]} | % 29
        \tuplet 3/2 { c16 [ g e' ]}
		\tuplet 3/2 { d16 [ b f' ]}
		\stemUp \adjBeamQtr e8 \stemDown g' c e, \stemNeutral | % 30
		\adjTieUp d8 ~  \tuplet 3/2 { d16 [ e fs] }
		\tuplet 3/2 { g16 [fs e } \adjTieUp d8 ~ ]
		\tuplet 3/2 { d16 [ c b ]} 
		\tuplet 3/2 { a16 [b c ]} | % 31
		b8 r8 
        \tuplet 3/2 { r16 b,16 [ d ]}
		\tuplet 3/2 { g16^[ b d ] }
		g8 r8  | % 32

  
    } %end repeated section

}


%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble  \global \soprano }
        \new Staff = "lower" { \clef bass \global \bass }
    >>
    \layout{  }
    \midi { }

}
