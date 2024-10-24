\version "2.24.0"
\language "english"

\paper {
    obsolete-page-top-space = #0.0  top-system-spacing.basic-distance = #(/ obsolete-page-top-space staff-space)
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

 %#(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 13. a 2 Clav."
        mutopiatitle = "Goldberg Variations - 13"
        composer = "Johann Sebastian Bach (165-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Harpsichord,Clavichord"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 153 Band 3"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2013/02/17-1411"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url "http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url "http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url "http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

     soprano =   \relative b' {
    \repeat volta 2 { %begin repeated section
	b32^[ c b a b8 ~ ] b32 [ fs g a b16 c ] \appoggiatura d32  c16 [ b16 a g ] | % 1
        d'32 [ e d cs d8 ~ ] d32 [ cs d e fs16 g ] \appoggiatura  a32 g16 [ fs e d ] | % 2
        g32 [ a g fs g8 ~ ] g32 [ fs e fs g16 e ] a, [ b' a g ] | % 3
        \appoggiatura  g32 fs32 [ e fs e d8 ~ ] d32 [ cs d e fs16 g ] a [ b32 c! b16 a ] | % 4
        
        g32 [ f e16 \once \override Script.extra-offset = #'(0.0 . 0.8 ) f8 ~ \prallmordent ] f32 [ d g a b c d16 ] c [ b a g ] | % 5
        f32 [ e d16  \appoggiatura d16 e8 ~ ] e32 [ d c b c d e16 ] d [ g e c ] | % 6
        b32 [ a g16 a8 ~ ] a32 [ g a b c fs, g a ] d, [ fs e d a' g fs c' ] | % 7
        c32^[ b a16 b8 ~ ] b32 [ a g fs g b d fs ] g [ fs32 e d fs a b c ] | % 8
        b32 [ a g16 ~] g32 [ fs e16 ~] e32 [ ds e16 ~ ] e32 [fs g16 ~ ] g32 [ a b16 ~ ] b32 [ g fs e ] | % 9
	    a32 [ g fs16 ~ ] fs32 [ e d16 ~ ] d32 [ cs d16 ~] d32 [ e fs16 ~ ] fs32 [ g a16 ~ ] a32 [ fs e d ] | % 10
        g32 [( a b a ) g16-. fs-. ] e32 [( fs g fs ) e16-. d-. ] cs32 [ (d e d ) cs16-. b-. ] | % 11
        a4. ~ \downprall a32 [ cs b a ] b [ cs d e fs16 g ] | % 12
        a32-. [ d, (cs d e d cs d ) ] a [ d g, d' fs, d' e, d' ] fs, [ d' a d fs, d' d, c' ] | % 13
        b32-.^[ d ( cs d e d cs d ) ] b [ d a d g, d' fs, d' ] g, [ d' b d g, d' e, d' ] | % 14
        cs32 [ g fs g a g fs g ] e' [ cs b cs d cs b cs ] g' [ e d e a g fs e ] | % 15
        <<{fs16_[ cs cs d ] d [ g, g fs ] fs4 }\\{s4 r8 cs d4} >>| % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section<
        fs'32 [ g fs e fs8 ~ ] fs32 [ e fs g a16 b_~ ] \appoggiatura  c32 b16 [ a g fs ] | % 17
        g32 [ a g fs g8 ~ ] g32 [ fs, g a b16 c ] \appoggiatura  d32 c16 [ b a g ] | % 18
        e'32 [ fs e ds e8 ~ ] e16 [ gs gs a ] a [ b b c ]  | % 19
        e,32 [ ds cs16 ds8 ~ \prallprall ] ds8 ~ [ ds32 ds e fs ] e [ ds cs b a g a fs' ] | % 20
        g,32-. [ e'(  ds e f e ds e )] fs [ e g e a e b' e, ] c' [ e, d' e, c' e, b' e, ] | % 21
        c'32-. [ e,( ds e f e ds e )] c' [ e, b' e, a e g e ] fs [ e g e a e ds! cs ] | % 22
        ds32-. [ a' ( g a b a g a )] b,-. [ g' ( fs g a g fs g ) ] a,-. [ fs'( e fs g a g fs ) ] | % 23
        <<{ g16 _[( ds ) ds  (e ) ] e [( a,) a ( g ) ] g8^~ \prallmordent [ g32 b c d ]| }\\{s4 r8 ds,\noBeam e r8 |}>>  % 24
        e'32 [ f e ds e8 ~ ] \once \override Beam.positions = #'(5.5 . 3.5) e16^[ a, \appoggiatura  b32  a16 g ] \appoggiatura  a32 \once \override Beam.positions = #'(3.5 . 5.2) g16 [ fs! fs e' ] | % 25
        d32 [ e d cs d8 ~ ] d16 [ g, \appoggiatura  a32 g16 f ] \appoggiatura  g32 f16 [ e e d' ] | % 26
        c32 [ b a16 ~ a32 g fs16 ~ ] fs32 [ e d16 ~ d32 e fs16 ~ ] fs32 [ g a16 ~ a32 b c16 ~] | % 27
        c32 [ d c b c g' fs e ] fs [ b a g a d c b ] c [ b a g fs e d c ] | % 28
        b32-. [ g' ( fs g a g fs g ) ] c,-. [ fs ( e fs g fs e fs ) ] d-. [ f (e f g f e d ) ] | % 29
        e32-. [ c ( b c d c b c ) ] d-. [ b ( a b c b a b ) ] cs-. [ bf ( a bf c bf a g ) ] | % 30
        fs32-. [ c' ( b c d c b c )] fs-. [ c ( b c d c b c ) ] a'-. [ c, ( b c d c b a ) ] | % 31
        b16 [ ( fs ) fs (g) ] g [ (c,) c  (b) ] b4  | % 32
    } %end repeated section
}


%%
%% Bass Clef
%% 

bassOne = \relative b {
	\repeat volta 2 { %begin repeated section
	\stemUp
        r8 r16 b16 d2 ~ | % 1
        d8. [ a16 ] d2 ~ | % 2
        d8. [ b16 ] cs2 | % 3
        r8 r16 fs,16 a2 | % 4
        r8 r16 d,16 g2 ~ | % 5
        g8. [ fs!16 ] g2 ~ | % 6
        g8. [ e16 ] fs2 | % 7
        r8 r16 d16 g4 r4 | % 8
        r8 b8 e2 ~| % 9
        e8 [ a, ] d2 ~ | % 10
        d8  [ b ] g2 ~ | % 11
        g16 [ a g fs ] g8 r8 r4 | % 12
        r8 a8 d4. a8 | % 13
        g8 [ b ] e4. b8 | % 14
        a8 [ cs ] g' [ e ] cs4 | % 15
        d8 [ e, ] fs [ bf ] a4 | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        \clef "treble" b'8\rest b16\rest fs16 a2 | % 17
        r8 r16 d,16 g2 ~ | % 18
        g8. [ gs16 ] a8 [ d, e g ~ ] | % 19
        g8 [ fs16 e ] fs8 \clef "bass" r8 r4 | % 20
        r8 b,4 a4 gs8 | % 21
        r8 c4 e8 [ c a ] | % 22
        r8 fs\noBeam g e'4 ds8 | % 23
        e8 [ fs,  g  c ] b r8 | % 24
        r8 r16 g16 c [ d e8 ] d8 [ cs ] | % 25
        b8. [ fs16 ] b [ c! d8 ] c [ b ] | % 26
        a8 [ e ] a [ c ] a [ fs ] | % 27
        d4 r4 r4 | % 2
        r8 e' [ ef d ] g [ b, ] | % 29
        c8 [ g ] a [ d ] e [ a, ~ ] | % 30
        a8 [ a16 g ] a4 g8 [ fs ] | % 31
        <<{ \stemUp g8 [ a] b [ fs ] g4 | } \\ { \stemDown s4 e8\rest ef \shiftOnn d4 | } \\ {\stemDown g,4 f4\rest  \stemDown  g| }>> % 32
  
    } %end repeated section
}

bassTwo = \relative g {
    \repeat volta 2 { %begin repeated section
	\stemDown	    
		g4. g8 [ fs e ] | % 1
        fs4. b8 [a  b ] | % 2
        e,4. a8 [ g  a ] | % 3
        d,4. e8 [ d  c ] | % 4
        b4. g8 [a  b ] | % 5
        c4. a8 [ b  c ] | % 6
        d4. d8 [ c  d ] | % 7
        g,4. g8 [ b  d ] | % 8
        g4. g8 [ fs e ] | % 9
        fs4. b8 [ a  b ] | % 10
        e,4. fs8 [ e d ] | % 11
        cs4. e8 [ a, g ] | % 12
        fs8 [ fs'16. e32 ] fs8 [ a d, fs ] | % 13
        g,8 [ g'16. fs32 ] g8 [ b e, g ] | % 14
        a,8 [ a'16. g32 ] a4. a8 | % 15
        d,2. | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
    	\clef "treble" d'4. c16 [ b  c8  a ] | % 17
        b4. d8 [ g, b ] | % 18
        c4. b8 [ c a ] | % 19
        b4. b,8 [ cs ds ] | % 20
        e,8 [ g'16 a ] g8 [ fs ] e4 | % 21
        a,8 [ a'16 g ] a8 [ c a fs ] | % 22
        b,8 [ ds  e  g ] b4 | % 23
        e,2 ~ e8 [ d ] | % 24
        c4 r8 c'8 [ b as ] | % 25
         b8 [ b,] r8 b' [ a  gs ] | % 26
        a8 [ a, ] r4 r4 | % 27
        r8 a8 [ d, fs  a  d ] | % 28
        g,8 [ g' a b ] r8 g8 | % 29
        c,8 [ e  f  fs ] g [ fs16 e ] | % 30
        d4. fs8 [ e  d ] | % 31
        s2.| % 32
 
    } %end repeated section
}

systemBreaks = {
	\repeat unfold 16 { s2. \noBreak s2.} % systems 1-16
}

bass = << \bassOne \\ \bassTwo \\ \systemBreaks >>

%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key g \major \time 3/4 \soprano  }
        \new Staff = "lower"  { \clef "bass" \key g \major \time 3/4 \bass }
    >>
    \layout{  }
    \midi { }

}
