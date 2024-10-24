\version "2.24.0"
\language "english"

%#(set-default-paper-size "letter")

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

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 11. a 2 Clav."
        mutopiatitle = "Goldberg Variations - 11"
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
	
 footer = "Mutopia-2014/03/10-1409"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url "http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url "http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url "http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%-------------------definitions
padFerm = \override Voice.Script.padding = #1
adjBeamOne = \once \override Beam.positions = #'( 0.3 . 3.2 )
adjBeamTwo = \once \override Beam.positions = #'( -1.8 . -0.2 )
adjBeamTre = \once \override Beam.positions = #'( -3.9 . -2.3 )
adjBeamQtr = \once \override Beam.positions = #'( -1.6 . -0.2 )
adjBeamCin = \once \override Beam.positions = #'( 3.7 . 1.6 )
adjBeamSix = \once \override Beam.positions = #'( 2.7 . 1.7 )
adjBeamSev = \once \override Beam.positions = #'( 1.4 . 0.3 )
adjBeamOct = \once \override Beam.positions = #'( 2.1 . 1.0 )
adjBeamNov = \once \override Beam.positions = #'( 0.5 . -0.3 )
adjBeamTen = \once \override Beam.positions = #'( 1.3 . 1.3 )
adjTieOne = \shape #'((0 . 0.2) (0 . 0.3) (0 . 0.3) (0 . 0.2)) Tie
adjTieTwo = \shape #'((0 . -0.2) (0 . -0.3) (0 . -0.3) (0 . -0.2)) Tie
adjTieTre = \shape #'((0.1 . -0.6) (0 . -1.0) (0 . -1.0) (0.1 . -0.6)) Tie
adjTieQtr = \shape #'((0.1 . 0.6) (0 . 1.0) (0 . 1.0) (0.1 . 0.6)) Tie

soprano =   \relative b' {
    \repeat volta 2 { %begin repeated section

        b16 [ a g ] fs [ e d ] cs8. ~ [ cs8 e16 ] | % 1
        a16 [ g fs ] e [ d cs ] \adjBeamOne b8. ~ [ b8 a'16 ] | % 2
        g16 [ fs e ] d [ cs b ] a8 [ cs16] e8[ g16 ] | % 3
        fs16 [ e d ] cs [ b a ]  \clef "bass" g [ fs e ] d [ e c! ] | % 4
        b16 [ d g ] \adjBeamTwo b [ d g ] d [ b g ] f [ e d ] | % 5
        \adjBeamTre cs16 [ e g ] \adjBeamQtr bf [ e g ] e [ bf a ] g [ fs e ] | % 6
        d16 [ g b ]  d_[  \clef "treble" g b ] a [ fs d ] c [ b a ] | % 7
        g16 [ b d ] g [ b d ] g8 [ d16 ] b8 [ fs16 ] | % 8
        \adjTieTwo g8. ~ [ g8 b16 ] e [ d cs ] b [ a g ] | % 9
        \adjTieTwo fs8. ~ [ fs8 e'16 ] d [ cs b ] a [ g fs ] | % 10
        \adjTieTwo e8. ~ e16 [ fs g ] cs, [ b' a ] g [ a b ] | % 11
        e,16_[ d' cs ] b [ cs d ] cs [ e fs ] g [ fs e ] | % 12
        \adjTieOne d4. ~ \downprall d8_[ fs,16 ] a8 [ d16 ] | % 13
        \adjTieOne d4. ~ \upprall d8 [ gs,16 ] b8 [ d16 ] | % 14
        \adjTieOne d4. ~ \upprall d16 [ e g ] cs, [ e g ] | % 15
        fs8. ~ fs16 [ d a ] fs [ d fs ] a [ cs d] | % 16
		
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
		r4. a'16 [ g fs ] e [ d c ] | % 17
        b16 [ a g ] r8. d''16 [ c b ] a [ g f ] | % 18
        e16 [ d c ] b [ a g ] fs8_[ ds'16 ] e8 [ as,16 ] | % 19
        b8 [ ds,16 ] fs8 [ a16 ] c^[ b a ] g [ a fs ] | % 20
        e16 [ g b ] e [ g b ] g [ e b ] g [ fs e ] | % 21
        f16 [ a c ] f [ a c ] a [ f c ] a [ g fs ] | % 22
        g16 [ b e ] g [ e c' ] b [ a g ] fs [ e ds ] | % 23
        e16 [ g e ] b [ g fs ] g [ e g ] b [ e ds ] | % 24
        e16 [ d c ] b [ a g ] \adjTieTwo fs8. ~ [ fs8 a16 ] | % 25
        d16 [ c b ] a [ g fs ] \adjTieTwo e8. ~ [ e8 d'16 ] | % 26
        c16 [ b a ] g [ fs e ] fs [ e d ] cs [ d e ] | % 27
        fs16 [ e d ] \clef "bass" c! [ b a ] b [ a g ] fs [ g a ] | % 28
        b16 [ a g ] f [ e d ] e [ d c ] b [ c d ] | % 29
        e16 [ c e ] g [ c e ] c [ a c ] \clef "treble" e [ a c ] | % 30
        fs,16 [ d fs ] a [ d fs ] d [ a d ] fs [ a c ] | % 31
        b16 [ g d ] b [ g fs ] g [ b d ] \padFerm g8.^\fermata | % 32

    } %end repeated section
}



%%
%% Bass Clef
%% 

bass = \relative g {
	\repeat volta 2 { %begin repeated section
        \adjTieOne g8. ~ [ g8 b16 ] e [ d cs ] b [ a g ] | % 1
        fs8. ~ [ fs8 e'16 ] d [ cs b ] a [ g fs ] | % 2
        e8 [ g16 b8 d16 ] cs [ b a ] g [ fs e ] | % 3
        d16 [ e fs ] g [ a b ] \clef "treble" cs [ d e ] fs [ g a ] | % 4
        \adjTieTwo g4. ~ \prallprall g8 [ b,16 ] d8 [ g16 ] | % 5
        \adjTieTwo g4. ~ \upprall g8 [ cs,16 ] e8 [ g16 ] | % 6
        \adjTieTwo g4. ~ \upprall g16 [ a c ] fs, [ a c ] | % 7
        \stemUp \adjTieTwo  b8.~ \stemNeutral \adjBeamCin b16 [ g d ] b [ g b ] d [ g a ] | % 8
        b16 [ a g ] fs [ e d ] cs8. ~ [ cs8 e16 ] | % 9
        a16 [ g fs ] e [ d cs ] b8. ~ [ b8 a'16 ] | % 10
        \adjBeamSix g16 [ fs e ] \adjBeamSev d [ cs b ] \adjBeamOct e [ d cs ] \adjBeamNov b [ a g ] \clef "bass" | % 11
        cs16 [ b a ] g [ fs e ] a [ g fs ] e [ fs g ] | % 12
        fs16 [ a d ] \clef "treble"  fs [ a d ] a [ fs d ] c [ b a ] | % 13
        gs16 [ b d ] f [ b d ] b [ f e ] d [ cs b ] | % 14
        a16 [ d fs! ] a [ d fs ] e [ cs a ] g [ fs e ] | % 15
        d16 [ \clef "bass" a fs ] d [ a fs ] d [ fs a ] d8. | % 16

    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
         d16 [ e fs ] g [ a b ] c [ d, c' ( ] c ) [ b a ] | % 17
        g16 [ a b ] \clef "treble" c [ d e ] f [ g, f' ~ ] f [ e d ] | % 18
        c8. ~ c16 [ e g ] c^[ b a ] g [ fs e ] | % 19 
        ds16 [ cs b ]  \clef "bass" a [ g fs ] e [ ds cs ] b [ c a ] | % 20
        \adjTieTwo g8. ~ g16 [ b e ] g [ b ds ] \adjBeamTen e8 [ \stemUp  g,,16 ] \stemNeutral | % 21
        \adjTieTwo a8. ~ a16 [ c f ] a [ c ds ] \adjBeamTen e8 [ \stemUp as,,16 ] \stemNeutral | % 22
        \adjTieTwo b8. ~ b16 [ cs ds ] e [ fs g ] a [ g fs ] | % 23
        g16 [ e g ] b [ e ds ] e [ g e ] b [ g b ] | % 24
        \stemUp \adjBeamTen \adjTieTre c,8. ~ [ c8 \stemDown e'16 ] \stemNeutral \clef "treble"  a [ g fs ] e [ d c ] | % 25
        \adjTieTwo b8. ~ [ b8 a'16 ] g [ fs e ] d [ c b ] | % 26
        \adjTieTwo a8. ~ a16 [ b c ] d [ e fs ] g [ fs e ] | % 27
        \adjTieTwo d8. ~ d16 [ e fs ] g [ a b ] c^[ b a ] | % 28
        \adjTieTwo g8. ~ g16 [ a b ] c [ d e ] f [ e d ] | % 29
        \adjTieQtr c8. ~ c16 [ e c ] a [ e c ] a [ c e ] | % 30
        a16 [ c a ] fs [ d a ] \clef "bass" fs [ d fs ] a [ c fs, ] | % 31
        g16 [ b d ] \clef "treble"  g [ b d ] g [ d b ] \padFerm g8._\fermata% \clef "bass" | % 32
  
    } %end repeated section
}



%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key g \major \time 12/16 \soprano  }
        \new Staff = "lower"  { \clef "bass" \key g \major \time 12/16 \bass }
    >>
    \layout{  }
    \midi { \tempo 4 = 93 }

}
