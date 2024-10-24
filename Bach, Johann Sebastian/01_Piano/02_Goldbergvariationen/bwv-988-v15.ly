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

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 15. Canone alla Quinta (in moto contrario). a 1 Clav."
        mutopiatitle = "Goldberg Variations - 15"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Harpsichord,Clavichord,Piano"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        license = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2014/03/24-1389"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url "http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url "http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url "http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%-------------------definitions
tempoMark = #(define-music-function (markp) (string?)
     #{
       \once \override Score.RehearsalMark.self-alignment-X = #left
       \once \override Score.RehearsalMark.extra-spacing-width = #'(+inf.0 . -inf.0)
       \mark \markup { \bold $markp }
     #})

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

adjBeamOne = \once \override Beam.positions = #'( -5.2 . -6.0 )
adjBeamTwo = \once \override Beam.positions = #'( 5.8 . 7.3 )
adjBeamTre = \once \override Beam.positions = #'( -2.4 . -1.4 )
adjBeamQtr = \once \override Beam.positions = #'( 4.0 . 4.5 )
adjBeamCin = \once \override Beam.positions = #'( 7.7 . 5.2 )
adjBeamSix = \once \override Beam.positions = #'( 1.3 . 1.5 )
adjBeamSev = \once \once \override Beam.damping = #6
adjBeamOct = \once \override Beam.positions = #'( -4.3 . -5.3 )
adjBeamNov = \once \override Beam.positions = #'( 5.0 . 5.3 )
adjBeamTen = \once \override Beam.positions = #'( -2.0 . -1.8 )
adjBeamOnc = \once \override Beam.positions = #'( -5.3 . -5.1 )

adjTieOne = \shape #'((0 . -0.2) (0 . -0.3) (0 . -0.3) (0 . -0.2)) Tie
adjTieTwo = \shape #'((0 . 0.2) (0 . 0.3) (0 . 0.3) (0 . 0.2)) Tie
adjTieTre = \shape #'((0 . -1.2) (0.0 . -1.4) ( 0.0 . -1.4) (0 . -1.2)) Tie
adjTieQtr = \shape #'((0.6 . -1.0) (2.2 . -2.6) ( -2.2 . -2.6) (-0.5 . -1.4)) Tie
adjTieCin = \shape #'((0 . 0.9) (0.5 . 2.1) (-0.5 . 2.1) (0 . 0.9)) Tie
adjSlurOne = \shape #'((0 . 0.0) (0 . 0.3) (0 . 0.5) (0 . 0.3)) Slur
adjSlurOne = \shape #'((0 . 0.8) (0 . 0.5) (-0.3 . 0.1) (-0.3 . -0.3)) Slur

lengthenStemOne = \once \override Stem.length-fraction = #(magstep +2)
pushNoteColRight = \once \override NoteColumn.force-hshift = #0.3
allowScriptInStaff = \once \override Script.staff-padding = #'()

sopranoOne =   \relative d'' {
    \repeat volta 2 { %begin repeated section
    \stemUp
	\tempoMark #"Andante"
       R1*1/2 | % 1
        r16 d16 [ d ( e ) ] e ( [ fs ) fs ( g ) ] \noBreak | % 2
        \adjTieTwo g4 ~ \adjBeamTwo g16 [ a bf c ] | % 3
        d16 [ a a32 gs a16 ] \adjTieTwo d,4 ~ | % 4
        d8 [ ef16 ( f ) ] ef ( [ d ) d ( c ) ] | % 5
        bf8 d8\rest d8\rest c8 | % 6
        g'32 [ a fs16 g a ] bf [ c d c ] | % 7
        \adjBeamCin bf16 [ \grace a16 g16 \adjTieTwo d8 ~ ] \adjBeamQtr d8  [ ef ] | % 8
        d8 r8 f16\rest ef16 [ d ( c ) ] | % 9
        bf16 ( [ c ) c ( d ) ] d ( [ ef ) ef ( d ) ] | % 10
        d8 r8 r8 a'8 | % 11
        bf8 [ d,16 \adjTieTwo e ~ ] e [ f8 g16 ] | % 12
        \stemDown \adjBeamSix a8 [ \stemUp bf, ] c [ a' ] | % 13
        r8 g32 [ a g16 ~ ] g [ g8 g16 ~ ] | % 14
        g16 [ f32 g32 a16 bf ] a [ f cs8 ] | % 15
        r8 g'8 ~ g16 [ fs32 e fs8 ] | % 16 
	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        R1*1/2 | % 17
        d8\rest ef8 [ d  c ] | % 18
        g'16 [ g,8 af16 ~ ] af  [ bf8 c16 ] | % 19
        bf8 [ f' ] g [ d ] | % 20
        ef16 [ d c8 ] e'16\rest bf,8 [ c16 ] | % 21
        d16 [ bf f d ] ef [ f g af ] | % 22
        \adjTieCin bf2 ~ | % 23
        bf16 [ c32 d ef d c16 ] d [ ef32 f ef f g16 ] | % 24
        f8 r8 r4 | % 25
        r16 c16 [ c ( d ) ] ef [ e g, e' ] | % 26
        fs4 ~ fs16 [ g a bf ] | % 27
        c16 [ bf a g ] fs [ g fs8 ~ ] | % 28
        fs16 [ a g8 ] f8\rest c8 | % 29
        g8. [ a16 ] bf [ c d e ] | % 30
        fs16 [ g a fs ] \stemNeutral g [ fs e32 d c'16 ~ ] | % 31
        c16 [ fs, g a ] bf [ c d8 ] | % 32
    } %end repeated section
}

sopranoTwo =   \relative g' {
    \repeat volta 2 { %begin repeated section
    \stemDown
        b16\rest g16 [ g ( f ) ] f ( [ ef ) ef ( d ) ] | % 1
        d4 ( \adjBeamOne  d16 ) [ \stemUp \staffDown c bf a ] | % 2
        g16 [ cs cs32 d cs16 ] \stemDown \staffUp g'4 ( | % 3
        g8 ) [ fs16 e ] fs [( g) g( a ]) | % 4
        bf8 r8 r8 a8 | % 5
        d,32 [ c ef16 d c ] \staffDown \stemUp bf [ a g a ] | % 6
        bf16 [ d \staffUp \stemDown \adjTieTre g8 ~ ] g [ \allowScriptInStaff fs ^\prallprall ] | % 7
        g8 r8 r16 fs16 [ g a ] | % 8
        bf16 ( [ a ) a ( g ) ] g ( [ fs ) fs ( g ) ] | % 9
        g8 r8 r8 c,8 | % 10
        bf8 [ g'16 \adjTieOne f ~ 
		] f [ e8 d16 ] | % 11
        cs8 [ bf' ] a [ cs, ] | % 12
        g'8\rest d32 [ cs d16 ~ ] d [ d8 d16 ] ~ | % 13
        d16 [ e32 d cs16 b ] cs [ e a8 ] | % 14
        r8 d, ~ d16 [ e32 f e d e16 ] | % 15
        \stemUp d4 g4\rest  | % 16
	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        g8\rest fs8_[ g a ] | % 17
        \stemDown d,16 [ d'8 c16 ~ ] c [ bf8 a16 ] | % 18
        bf8 [ ef, ] d [ g ] | % 19
        f16 [ g af8 ] b16\rest bf8 [ af16 ] | % 20
        g16 [ bf ef g ] f [ ef d c ] | % 21
        \adjTieQtr bf2 ~ | % 22
        bf16 [ af32 g f g af16 ] g [ f32 ef f ef d16 ] | % 23
        ef8 r8 r4 | % 24
        r16 af16 [ af ( g ) ] fs [ f d' f, ] | % 25
        ef4 ~ \adjBeamOct ef16 [ d \staffDown \stemUp c bf ] | % 26
        \adjBeamNov a16 [ bf \staffUp \stemDown c d ] ef [ d ef8 ~ ] | % 27
        ef16 [ c d8 ] g8\rest a8 | % 28
        d8. [ c16 ] bf [ a g f ] | % 29
        ef16 [ d c ef ] \adjBeamOnc d [ e fs32 g \staffDown \stemUp a,16^~ ] | % 30
        \adjBeamNov a16 [ \staffUp \stemDown ef'! d \staffDown \stemUp c ] bf [ a g fs ] | % 31
        g4 a4\rest | % 32
    } %end repeated section
}


soprano = << \sopranoOne \\ \sopranoTwo>>


%%
%% Bass Clef
%% 

bass =   \relative g {
    \repeat volta 2 { %begin repeated section
       g8 [ g, ] r8 \adjTieTwo g' ~ | % 1
        g16 [ fs32 e fs8 ] r8 d8 | % 2
        ef8 [ e ] r8 ef'! | % 3
        d16 [ cs d8 ] r16 c16 [ bf a ] | % 4
        g32 ( [ fs g16 ) c, g' ] c ( [ fs, ) fs ( g ) ] | % 5
        g16 [ fs g a ] d,8 [ ef ] | % 6
        bf8 [ bf'16 c ] d8 [ d ] | % 7
        g,8^[ bf,32 c d bf ] g8 r8 | % 8
        r16 fs'16 [ g a ] bf8 [ a ] | % 9
        g16 [ fs8 e16 ] fs32 [ a g8 fs16 ] | % 10
        \adjBeamTen g16 [ a bf a ] g32 [ a g16 f32 g f16 ] | % 11
        e16 [ f g e ] cs_[ d e cs ] | % 12
        f32 [ e d16 ] g4 fs8 | % 13
        bf8 [ e, ] a [ cs, ] | % 14
        d8 [ f16 e ] f8 [ a ] | % 15
        \stemDown \staffUp \adjBeamSev d16 [ \staffDown c32 bf a g a16 ] d,4 | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
       \adjSlurOne d16 [ ( ef' ) ef ( d ) ] d [ ( c)  c ( bf ) ] | % 17
        bf16 [ ( fs ) fs ( g ) ] g [ ( d ) \adjTieOne d8_~ ] | % 18
        d16^[ c32 bf c16 f, ] f'^[ bf, ef8_~ ] | % 19
        \stemUp ef16 [ d32 c d c bf16 ] ef [ g, af bf ] | % 20
        c,16 [ g' c bf ] af [ g \adjTieOne af8_~ ] \stemNeutral | % 21
        af16 [ af' bf af ] g [ f ef f ] | % 22
        g16 [ af bf8 ] bf,8. [ af'16 ] | % 23
        g16 ( [ f ) f ( ef ) ] f ( [ g ) \adjSlurOne g ( af ) ] | % 24
        c,8 [ b ] r16 a16 [ b g ] | % 25
        c8 [ c' ] r8 \stemDown c,8_~ | % 26
        c16 [ \staffUp \shiftOn d' ef \staffDown bf ] a [ bf c g ] | % 27
        g8 [ ( fs16)  g ] a [ bf32 c d ef c16 ] | % 28
        bf32 [ d c16 bf32 c a16 ] g32 [ a f16 ef32 f d16 ] | % 29
        c16 [ ef32 d ef16 fs, ] \stemUp g8 \stemDown  r16 c16  | % 30
        d8 r16 ef16 c8 [ d ] | % 31
        g16 [ d32 c bf c a16 ] g4 | % 32 
    } %end repeated section
}


%% Merge score - Piano staff in key of G Major, 12/8 time.

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef "treble" \key bf \major \time 2/4 \soprano  }
        \context Staff = "lower"  { \clef "bass" \key bf \major \time 2/4 \bass }
    >>
    \layout{  }
    \midi { \tempo 8 = 66 }

}
