\version "2.24.0"
\language "english"

\paper {
    top-margin = 8\mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #5
    top-system-spacing.basic-distance = #12
    last-bottom-spacing.basic-distance = #12
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
        piece = "Variatio 21. Canone alla Settima."
        mutopiatitle = "Goldberg Variations - 21"
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
	
 footer = "Mutopia-2014/07/27-1403"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url "http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url "http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url "http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%%-----------definitions
staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"
posPrall = { \once \override Script.staff-padding = #'() }

sopranoOne =   \relative a' {
    \repeat volta 2 { %begin repeated section
    \stemUp
        b2\rest b16\rest a16 [ bf c ] d [ c bf a ] | % 1
        g8 [ d' g, c ~ ] c16 [ fs, g a ] bf [ a g fs ] | % 2
        g8 b8\rest b8\rest g8 af [ g af a ] | % 3
        bf16 [ c d c ] bf [ a g fs!] ef'8  d\rest d\rest c8 ~  | % 4
        c16 [ c bf a ] bf [ c d e ] f!8 [ e ] f16 [ g a8 ~ ] | % 5
        a16 [ g f a ] g [ f e d ] cs8. \downprall [ b16 ] cs [ d e8 ] | % 6
        d8 r8 r8 d8 ef! [ d8 ef e ] | % 7
        f8 [ g a g ~ ] g8 [ fs16 e ] d [ cs d8 ]	| % 8
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        r2 r16 af'16 [ g16 f! ] e [ f g e ] | % 9
        c8 [ d16 ef! ] f8 [ bf,8 ] r16 f'16 [ ef d ] c [ ef d f ] | % 10
        ef8 [ f ] g4 ~ g16 [ f g af ] d, [ c d f ] | % 11
        bf,16 [ c d bf ] ef8 [ af, ~ ] af [ g16 f ] g8 [ ef'8 ~ ] | % 12
        ef8 [ d16 c ] d8 r8 r16 e,16 [ f! g ] f [ e d c ] | % 13
        c'16 [ bf c8 ] fs,8 r8 r8 d'16 [ c ] bf [ a g f ] | % 14
        ef8  b'8\rest b8\rest c8 ~ c [ bf!] a [ bf16 c ] | % 15
        d8 [ f,! ] ef [ c' ~ ] c16 [ bf32 a g a fs16 ] g4 | % 16
    } %end repeated section
}

sopranoTwo =   \relative bf {
    \repeat volta 2 { %begin repeated section
    \stemUp \tieUp \staffDown
       b16\rest bf16 [ c d ] ef [ d c bf ] a8 [ ef' a, d ~ ] | % 1
        d16 [ g, a bf ] c [ bf a g ] a8  a\rest a\rest a8  | % 2
        bf8 [ a bf b ] c16 [ d ef d ] c [ bf a g ] | % 3
        \staffUp \stemDown \tieDown fs'8 e\rest e\rest d8 ~  d16 [ d c  bf ] c [ d e fs ] | % 4
        g8 [ fs ] g16 [ a bf8~ ] bf16 [ a g bf ] a [ g f e ] | % 5
        \posPrall d8.^\downprall [ cs16 ] d [ e f8 ] e  r8 r8 e8 | % 6
        f8 [ e f fs ] g [ a bf a ~ ] | % 7
        a8 [ g16 f ] e [ d e8 ] \staffDown \stemUp d4 \staffUp \stemDown r4 | % 8
	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        r16 bf'16 [ a g ] fs [ g a fs ] d8 [ e16 f ] g8 [ c, ] | % 9
        r16 g'16 [ f ef! ] d [ f ef g ] f8 g af4 ~  | % 10
        af16 [ g af bf ] ef, [ d ef g ] c, [ d ef c ] f8 [ \staffDown \stemUp \tieUp bf, ~ ] | % 11
        bf8 [ af16 g ] af8  [ \staffUp \stemDown \tieDown f'8 ~ ] f [ ef16 d ] ef8 r8 | % 12
        \staffDown \stemUp a,16\rest fs16 [ g a ] g [ fs e d ] d' [ c d8 ] g, a\rest | % 13
        \staffUp \stemDown r8 ef'!16 [ d ] \staffDown \stemUp \tieUp c [ bf a g ] fs8  a8\rest a8\rest d8 ~ | % 14
        d8 [ c ] b [ \staffUp \stemDown c16 d ] ef8 [ \staffDown \stemUp g,] fs[ d' ~ ] | % 15
        d16 [ c32 bf a bf g16 ] af [ g8 fs16 ] g4 d'4\rest | % 16
    } %end repeated section
}


soprano = << \sopranoOne \\ \sopranoTwo>>


%%
%% Bass Clef
%% 

bass =   \relative g, {
    \repeat volta 2 { %begin repeated section
       \stemDown
       g4 g' fs f | % 1
        e4 ef d16 [ a bf c ] d8 [ d, ] | % 2
        g16 [ d' e fs ] g [ f ef d ] c8 [ b c cs ] | % 3
        \stemNeutral d8 [ bf c d ] g4 ~ g16 [ fs g a ] | % 4
        bf16 [ c d8 ] g, [ g' ] d4. c8 | % 5
        bf8 [ a bf g ] a16 [ e f g ] a [ b cs a ] | % 6
        d16 [ f, g a ] d, [ c' bf a ] g [ bf, c d ] g,_[ g'8 cs,16 ] | % 7
        d16 [ a' d8 ~ ] d8. [ cs16 ] d [ bf a g ] fs [ a fs d ] | % 8
	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        d8 d'4 c8 b bf4 a!16 [ g ] | % 9
        a8 af4 g8 d [ ef f bf, ] | % 10
        ef8  r8 r8 ef8  af4. g16 [ f ] | % 11
        \tieDown g4 ~ g16 [ f ef d ] ef [ g, af bf ] ef, [ g a b ] | % 12
        \stemDown c4 r8 c8 bf!4 r8 bf8 | % 13
        a16 [ g a bf ] a [ g fs e ] d [ c' d ef! ] d [ c bf a ] | % 14
        g16 [ f' g af ] g [ f ef d ] c [ b c cs ] d16 [ ef d c ] | % 15
        bf16 [ a bf b ] c8 [ d ] g,16 [ d' bf d ] g [ d bf g ] | % 16
    } %end repeated section
}

%% Merge score - Piano staff in key of G Major, 12/8 time.

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key bf \major \time 4/4 \soprano }  
		\new Staff = "lower" {\clef "bass" \key bf \major \time 4/4 \bass }
    >>
    \layout{  }
    \midi { \tempo 4 = 34 }

}
