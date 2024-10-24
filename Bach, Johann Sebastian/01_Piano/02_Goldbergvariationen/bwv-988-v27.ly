\version "2.24.0"
\language "english"

\paper {
    %obsolete-page-top-space = #0.0  top-system-spacing.basic-distance = #(/ obsolete-page-top-space staff-space)
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% #(set-default-paper-size "a4")
% #(set-default-paper-size "letter")

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil: Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 27. Canone alla Nona. a 1 Clav. "
        mutopiatitle = "Goldberg Variations - 27"
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
	
 footer = "Mutopia-2013/01/22-1390"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url "http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url "http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url "http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

staffUpper = {\change Staff = upper \stemDown}
staffLower = {\change Staff = lower \stemUp}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

soprano =   \relative a' {
    \repeat volta 2 { %begin repeated section

        R1*6/8 | % 1
        a8 [ b16 cs d e ] fs [ e d e fs8 ] | % 2
        g,8 r8 r8 e'8 r8 r8 | % 3
        fs,8 [ g16 a b c ] d [ e d c d8 ] | % 4
        d8 r8 r8 g,8 r8 r8 | % 5
        c16 [ d c b a g ] fs [ a c e d c ] | % 6
        b16 [ c b a g fs ] e [ g b d c b ] | % 7
        a8 [ b8 ^\turn c8 ] d,8 d'4 ~ | % 8
        d16 [ fs e d cs b ] cs [ d e cs d e ] | % 9
        a,2. ~ _\prallmordent | % 10
        a16 [ a g fs e d ] cs [ d e d e cs ] | % 11
        fs8 r8 r8 b,8 r8 r8 | % 12
        b'16 [ c b a g fs ] e [ g b d cs b ] | % 13
        a16 [ b a g fs e ] ds [ fs a c b a ] | % 14
        g8 [ a8 ^\turn b8 ~ ] b8 [ a8 g8 ~ ] | % 15
        g16 [ fs e d e cs ] d4. % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
		a''8 [ g16 fs e d ] c [ d e d c a' ] | % 17
        b,8 r8 r8 g'8 r8 r8 | % 18
        c16 [ d c b a g ] a [ b a g fs e ] | % 19
        ds8 [ e8 ^\turn fs8 ] b,4. ~ | % 20
        b16 [ a b d c b ] c [ f c a f a ] | % 21
        ds,16 [ e  fs  a  g fs ] g8 [ g8. \prallprall fs32 g32 ] | % 22
        a16 [ b c b a8 ] a4. ^\turn ~| % 23
        a16 [ fs g a b c ] d [ c b a gs fs ] | % 24
        e16 [ gs a b c d ] e [ d c d e8 ] | % 25
        a,8 r8 r8 fs'8 r8 r8 | % 26
        b,8 [ c16 d e fs ] g [ a g fs g e ] | % 27
        c'16 [ b a g fs e ] d4. ~ | % 28
        d16 [ c d e fs g ] a [ e c a b c ] | % 29
        fs,16 [ g a b c a ] b [ d g8 ] r8 | % 30
        r8 e8 [ d8 ] c8 [ d16 c b a ] | % 31
        b16 [ d b g a fs ] g4. _\mordent % 32
        \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
	\mark \markup { \musicglyph "scripts.ufermata" }
    } %end repeated section
}

%%
%% Bass Clef
%% 

bass = \relative g {
   \repeat volta 2 { %begin repeated section
    g8 [ a16 b c d ] e [ d c d e8 ] | % 1
        fs,8 r8 r8 d'8 r8 r8 | % 2
        e,8 [ fs16 g a b ] c [ d c b c8 ] | % 3
        c8 r8 r8 fs,8 r8 r8 | % 4
        b16 [ c b a g fs ] e [ g b d c b ] | % 5
        a16 [ b a g fs e ] d [ fs a c b a ] | % 6
        g8 [ a8 ^\turn b8 ] c,8 c'4 ~ | % 7
        c16 [ e d c b a ] b [ c d b c d ] | % 8
        g,2. ~ _\prallmordent | % 9
        g16 [ g fs e d cs ] b [ cs d cs d b ] | % 10
        e8 r8 r8 a,8 r8 r8 | % 11
        a'16 [ b a g fs e ] d [ fs a c b a ] | % 12
        g16 [ a g fs e d ] cs [ e g b a g ] | % 13
        fs8 g8 ^\turn a8 ~ a8 g8 fs8 ~ | % 14
        fs16 [ e  d  cs  d  b ] cs4  ~ \prallprall cs16 [ b32 cs32 ] | % 15
        d8 [ fs,8 a8 ] d,4. % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        R1*3/4 \clef "treble" | % 17
        g''8 [ fs16 e d c ] b [ c d c b g' ] | % 18
        a,8 r8 r8 fs'8 r8 r8 | % 19
        b16 [ c b a g fs ] g [ a g fs e d ] \clef "bass" | % 20
        c8 [ d8 ^\turn e8 ] a,4. ~ | % 21
        a16 [ g a c b a ] b [ e b g e g ] | % 22
        cs,16 [ ds e g fs e ] fs8 [ fs8. _\prallprall e32 fs32] | % 23
        g16 [ a b a g8 ] gs4. ^\turn ~| % 24
        gs16 [ e fs gs a b ] c [ b a g fs e ] | % 25
        d16 [ fs g a b c ] d [ c b c d8 ] | % 26
        g,8 r8 r8 \clef "treble" e'8 r8 r8  | % 27
        a,8 [ b16 c d e ] fs [ g fs e fs d ]  | % 28
        b'16 [ a g fs e d ] c4. ~ | % 29
        c16 [ b c d e fs ] g [ d b g a b ] | % 30
        e,16 [ fs g a b g ] a [ c fs8 ] r8 | % 31
        r8 d8 [ c8 ] b8 [ c16 b a g ] % 32
        \override Staff.RehearsalMark.direction = #DOWN
	\mark \markup { \musicglyph "scripts.dfermata" }
    } %end repeated section
}


%% Merge score - Piano staff in key of G Major, 6/8 time.

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef treble \key g \major \time 6/8 \soprano  }
        \context Staff = "lower" \with { \consists "Mark_engraver" } { \clef bass \key g \major \time 6/8 \bass }
    >>
    \layout{  }
    \midi { }

}
