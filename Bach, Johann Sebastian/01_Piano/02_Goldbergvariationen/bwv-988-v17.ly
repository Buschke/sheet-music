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

% #(set-default-paper-size "letter")

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 17. a 2 Clav."
        mutopiatitle = "Goldberg Variations - 17"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        license = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2014/03/24-1414"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url "http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url "http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url "http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%-----------------definitions
adjBeamOne = \once \override Beam.positions = #'( -0.6 . -0.9 )
adjBeamTwo = \once \override Beam.positions = #'( 0.4 . 2.8 )

adjTieOne = \shape #'((0 . -0.2) (0 . -0.3) (0 . -0.3) (0 . -0.2)) Tie
adjTieTwo = \shape #'((0 . 0.2) (0 . 0.3) (0 . 0.3) (0 . 0.2)) Tie


soprano =   \relative b' {
    \repeat volta 2 { %begin repeated section
        b16 [ d fs a ] g8. [ c,16 ] b [ a g b ] | % 1
        a16 [ cs e g ] fs8. [ b,16 ] a [ g fs a ] \noBreak | % 2
        g16 [ b d fs ] e8. [ a,16 ] g [ fs e g ] | % 3
        fs16 [ e fs e ] fs [ a d cs ] d [ fs a c, ] | % 4
        b16 [ g' a, fs' ] g, [ e' f, d' ] e, [ c' d, b' ] | % 5
        c16 [ e, b' d, ] a' [ c, g' b, ] fs'! [ a, e' g, ] \clef "bass" | % 6
        a16 [ fs' g, e' ] fs, [ d' e, c' ] d, [ b' c, a' ] | % 7
        b,16 [ a b a ] b [ d g fs ] g8 r8 \clef "treble" | % 8
        d''16 [ b' c, a' ] b, [ g' a, fs' ] g, [ e' fs, d' ] | % 9
        e,16 [ d' cs b ] cs [ e a8 ] a8 \downmordent r8 | % 10
        b,16 [ g' a, fs' ] g,^[ e' fs, d' ] e, [ cs' d, b' ] | % 11
        cs,16 [ b' a gs ] a [ cs e8 ] \adjTieTwo e4 \prallmordent ~  | % 12
        e16 [ d e cs ] d [ b c a ] b [ g a fs ] | % 13
        g16 [ e' fs, d' ] e, [ cs' \grace d32 cs16 ( b )] \grace cs32 b16 [ ( a ) b  g' ] | % 14
        g8. [ fs32 e ] fs16 [ d b g ] a [ fs g e' ] | % 15
        fs,16 [ e fs e ] fs [ a d cs ] d8 r8 | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        a'16 [ fs g e ] fs [ d e c! ] d [ b c a ] | % 17
        b16 [ g a fs ] g [ e fs ds ] e [ c d b ] \clef "bass" | % 18
        c16 [ a b gs ] a [ fs g e ] f [ ds e cs ] | % 19
        ds16_[ cs ds cs ] \adjTieTwo ds4 ~ ds16 [ fs b a ] \clef "treble" | % 20
        g16 [ b a c ] b [ ds cs e ] ds [ fs e g ] | % 21
        fs16 [ a g b ] a [ c b d ] c [ e ds fs ] | % 22
        e16 [ g fs a ] g [ b a c ] b [ g a fs ] | % 23
        g16 [ e fs ds ] e [ c b a ] g [ fs e8 ~ ] | % 24
        e16_[ e' b d ] c [ b a c ] b [ d c e ] | % 25
        d16 [ b a c ] b_[ a gs b ] a [ c b d ] | % 26
        c16 [ a g! b ] a [ fs' g e ] fs [ d e c' ] | % 27
        \adjTieTwo c8 ~ [ c32 b a g ] fs16 [ g a fs ] \grace e8 \adjTieTwo d4 ~ | % 28
        d16 [ b c a ] b [ g' a, f' ] g, [ e' f, d' ] | % 29
        e,8 r32 g32 [ a b ] c16 [ a b g ] a [ fs g e  ] | % 30
        fs16 [ e'  d8 ~ ] d32 [ e fs g fs e d c ] b16 [ g'16 a,16 fs'16 ] | % 31
        g,16 [ fs g fs ] g [ b d fs ] g8 r8 | % 32
    } %end repeated section
}

%%
%% Bass Clef
%% 

bass = \relative g, {
	\repeat volta 2 { %begin repeated section
        g16 [ b a c ] b [ d c e ] d [ fs e g ] | % 1
        fs16 [ a g b ] a [ \clef "treble" cs b d ] cs [ e d fs ] | % 2
        e16 [ g fs a ] g_[ b a cs ] b [ d cs e ] | % 3
        d16 [ cs d cs ] d2 ( | % 4
        d16 ) [ b c a ] b [ g a f ] g [ e f d ] \clef "bass" | % 5
        \adjBeamOne e16 [ c d b ] c [ a b g ] a [ fs! g e ] | % 6
        fs16 [ d e c ] d [ b c a ] b [ g a fs ] | % 7
        g16 [ fs g fs ] g4 ~ g16_[ d' g fs ] \clef "treble"  | % 8
        \adjBeamTwo g16 [ b d fs ] g8. [ a16 ] b [ cs d b ] | % 9
        cs16_[ b a g ] fs [ e ds cs ] \clef "bass" b [ a g fs ] | % 10
        e16 [ g b ds ] \clef "treble" e8. [ fs16 ] g [ a b g ] | % 11
        a16 [ d, cs b ] cs [ e a b ] cs [ e g b, ] | % 12
        a16 [ fs' g, e' ] fs, [ d' e, c' ] d, [ b' c, a' ] \clef "bass" | % 13
        b,16 [ g' a, fs' ] g, [ e' fs, d' ] e, [ cs' d, b' ] | % 14
        cs,16 [ a' b, g' ] a, [ fs' g, e' ] fs, [ d' e, cs'! ] | % 15
        d16 [ cs d cs ] d [ a fs a ] d,8 r8 | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        d16 [ fs a cs ] d8. [ e16 ] fs [ g a fs ] | % 17
        g16 [ b, c d ] g,8. [ fs'16 ] g [ a b gs ] | % 18
        a16 [ c, d e ] a,8. [ gs'16 ] a [ b c as ] | % 19
        b16 [ as b as ] b [ fs g a ] b,8 [ \clef "treble" ds'8 ] | % 20
        e16 [ g fs a ] g [ fs e g ] fs [ ds e cs ] \clef "bass" | % 21
        ds16 [ cs b d ] c [ a b gs ] a [ g fs a ] | % 22
        g16 [ e fs ds ] e [ ds cs e ] ds [ e fs ds ] | % 23
        e16 [ g, a b ] e, [ fs g a ] b [ c d b ] | % 24
        c16 [ e d f ] e [ g fs a ] gs [ b a c ] \clef "treble" | % 25
        b16 [ d c e ] d [ f e gs ] fs [ a gs b ] | % 26
        a16 [ c b d ] c_[ a b g ] a [ fs g e ] | % 27
        fs16 [ d e cs ] d [ b' c, a' ] b, [ g' a, fs' ] | % 28
        b,8 r32 d32 [ e fs ] g16 [ e f d ] e [ c d b ] \clef "bass" | % 29
        g16 [ e f d ] e [ c' d, b' ] c, [ a' b, g' ] | % 30
        a,16 [ g' fs c ] b [ d g b ] d [ b c a ] | % 31
        b16 [ a b a ] b [ g d b ] g8 r8 | % 32
  
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
    \midi { \tempo 4 = 105 }

}
