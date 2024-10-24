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
        piece = "Variatio 8. a 2 Clav."
        mutopiatitle = "Goldberg Variations - 8"
        composer = "Johann Sebastian Bach (85-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Harpsichord,Clavichord"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        license = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2014/03/10-1408"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url "http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url "http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url "http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%-------------------definitions
padFerm = \override Voice.Script.padding = #1
adjBeamOne = \once \override Beam.positions = #'( 1.4 . 0.2 )
adjBeamTwo = \once \override Beam.positions = #'( 0.2 . 0.2 )

soprano= \relative d' {
    \repeat volta 2 { %begin repeated section
    \stemUp
    d16 [ g b a ] g [ b d c ] b [ d g ] r | % 1
    d,16 [ fs a g ] fs [ a c b ] a [ d fs ] r | % 2
    b,,16 [ e g fs ] e [ g b a ] g [ cs e ] r | % 3
    a,,16 [ d fs e ] d [ fs a g ] fs [ a d8^~ ] | % 4
    d16 [ b g a ] b [ g d e ] f [ d b ] r | % 5
    e'16 [ c a b ] c [ a e fs ] g [ e c ] r | % 6
    \stemNeutral
    a''16 [ fs d e ] fs^[ d a b ] c^[ a fs c' ] | % 7
    b16 [ g d fs ] g [ d b c ] \adjBeamOne d [ b g a ] | % 8
    \adjBeamTwo \stemUp b8 [ \stemDown b''16 a ] \stemNeutral g [ fs e d ] cs [ e d e ] | % 9
    a,8 [ a'16 g ] fs [ e d cs ] b [ d cs d ] | % 10
    g,8 [ g'16 fs ] e [ d cs b ] a [ cs b d ] | % 11
    cs16^[ e a, b ] cs [ a e fs ] g [ e cs e ] | % 12
    d8 [ fs a d ] r16 c16 [ a fs ] | % 13
    g8 [ b d g ] r16 g16 [ fs g ] | % 14
    a,8 [ cs e g ] r16 g16 [ a cs, ] | % 15 
    d16 [ fs a cs ] d [ cs32 b32 a32 g32 fs32 e32 ] d4  | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
     a16 [ d fs e ] d [ fs a g ] fs [ a c ] r | % 17
    d,,16 [ g b a ] g^[ b d c ] b^[ d f ] r | % 18
    e16^[ c a b ] c [ a fs g ] a [ fs ds e ] \clef "bass" | % 19
    fs16 [ ds b cs ] ds [ b fs g ] a [ fs ds fs ] \clef "treble" | % 20
    g16 [ b e ds ] e [ g b a ] g [ b e ] r16 | % 21
    e,16_[ a c b ] a [ c e d ] c [ e a ] r16 | % 22
    r16 c,16 [ b fs' ] g [ ds e g, ] fs [ e' ds a' ] | % 23
    g16 \prallprall [ fs e8 ] r16 a,16 [ g fs ] \grace fs8( e4) ~ | % 24
    e8 [ e'16 d ] c [ b a g ] fs^[ as cs e ] | % 25
    d16 [ fs, d' c ] b [ a gs fs ] e [ gs b d ] | % 26
    c16 [ e, c' b ] a [ c e d ] c [ e a g ] | % 27
    fs16 [ a c b ] a [ g fs e ] d [ fs a c ] | % 28
    b16 [ d g, a ] b [ g d e ] f [ d b d ] | % 29
    e16 [ g c, d ] e [ c a b ] c [ a e g ] | % 30
    fs16 [ a d, e ] fs^[ d \clef "bass" a b ] c [ a fs a ] | % 31
    b16 [ d g, a ] b [ g b d ] \padFerm g4^\fermata | % 32


    } %end repeated section
}



%%
%% Bass Clef
%% 

bass = \relative g {
	\repeat volta 2 { %begin repeated section
    g8_[ d b g ] r16 g'16 [ fs e ] | % 2
    fs8 [ d a fs ] r16 fs'16 [ e d ]  | % 3
    e8 [ b g e ] r16 e'16 [ d cs ] | % 4
    d8 [ a fs d ] r16 c'16 [ b a ] | % 5
    b8 [ d g b ] r16 g16 [ f g ] | % 6
    c,8 [ e a c ] r16 a16 [ g a ] | % 7
    d,8 [ fs a d ] r16 d,16 [ c d ] | % 8
    g,8 [ g' b, d ] g, r8 \clef "treble" | % 8
    g'16 [ b d c ] b [d g fs ] e [g b ] r16 | % 9
    fs,16 [a cs b ] a [ cs fs e] d [ fs a ]  r16 \clef "bass" | % 10
    e,16 [ g b a ] g [ b e d ] \clef "treble" cs [ e g fs ]  | % 11
    e16_[ g cs b ] a [ cs e d ] cs [ e a g] | % 12
    fs16 [ a d, e ] fs [d a b ] c_[ a fs a ] | % 13
    b16_[ d  g, a ] b [ g e fs ] g [ e b d] \clef "bass" | % 14
    cs16 [ e a, b ] cs [a e fs ] g [ e cs e ] | % 15
    fs16 [a d, e ] fs [ d fs a ] d4 | % 16
    
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
    d8 [ a fs d ] r16 c'16 [ b a ] | % 17
    g8_[ d b g ] r16 f'16 [ e d ] | % 18
    c16 [ e a g ] fs [ a c b ] a [ c! ds c ] \clef "treble"  | % 19
    b16 [ ds fs e ] ds [ fs a g ] fs [ a c a ] | % 20
    b16 [ g e fs ] g [ e b ds ]e [ b g b ]  \clef "bass" | % 21
    c16 [ a e gs ] a [ e c d ] e [ c a c ] | % 22
    ds,8 [ ds' e c a b ] | % 23
    e,8 [ g b e ] r16 d16 [ c b ] | % 24
    c16 [ e g f ] e [ g c b ] as [ cs fs ] r16 | % 25
    b,,16 [ d fs e ] d [ fs b a ] gs [ b e ] r16 | % 26
    a,,16 [ c e d ] c [ a c e ] a [ c fs, g ] | % 27
    a16 [ fs d e ] fs [ d a b ] c [ a fs d ] | % 28
    g8 [ b d f ] r16 f16 [ e d ] | % 29
    c8 [ e g c ] r16 c16 [ b c ] | % 30
    d,8 [ fs a c ] \clef "treble" r16 c16 [ d fs, ] | % 31
    g16 [ b d fs ] g [ fs32 e32 d32 c32 b32 a32 ] \padFerm g4_\fermata | % 32
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
    \midi { \tempo 4 = 95 }

}
