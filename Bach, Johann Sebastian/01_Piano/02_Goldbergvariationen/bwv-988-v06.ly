\version "2.24.0"
\language "english"

\paper {
	markup-system-spacing.basic-distance = #25 %distance from header/title to 1st system
	top-system-spacing.basic-distance = #20 %dist. from top to 1st system when no titles exist
	system-system-spacing.basic-distance = #30  %fixed distance between systems
	ragged-bottom = ##t
	ragged-last-bottom = ##t
}

%#(set-default-paper-size "letter")

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 6 Canone alla Seconda a 1 Clav"
        mutopiatitle = "Goldberg Variations - 6"
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
	
 footer = "Mutopia-2013/02/17-1385"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url "http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url "http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url "http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

staffUpper = {\change Staff = upper \stemDown}
staffLower = {\change Staff = lower \stemUp}


extendLaissezVibrer = #(define-music-function (further) (number?) 
#{
   \once \override LaissezVibrerTie.X-extent = #'(0 . 0)
   \once \override LaissezVibrerTie.details.note-head-gap = #(/ further -2)
   \once \override LaissezVibrerTie.extra-offset = #(cons (/ further 2) -0.8)
#})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoOne =   \relative a'' {
    \once \override Voice.Rest.extra-offset = #'(7.9 . 0 ) r1*3/8 | % 1
    \repeat volta 2 { %begin repeated section
    \stemUp
        
    a4. ( | % 2
    a8 ) [ g16 fs e d ] | % 3
    c4. ( | % 4
    c8 ) [ b16 a g fs ] | % 5
    e4. ( | % 6
    e8 ) [ d16 c b a ] | % 7
    b4._( | % 8
    b16 ) [ \staffLower a c b a g ] |  % 9
    a8 \staffUpper \stemUp a'4 (  | % 10
    a8 ) [ g16 fs e d ] | % 11
    cs16 [ e a b c!8 ( ] | % 12
    c8 ) [ b16 a g fs ] | % 13
    e4. ( | % 14
    e16 ) [ d cs e d cs ] | % 15
    }  %end of repeated section
    \alternative {
	    {d16 [ c! \staffLower b a g fs ] | % 16
	    \staffUpper \extendLaissezVibrer #9 g''4._\laissezVibrer}% 17
	    { \stemNeutral d,4. \once \override Voice.Rest.extra-offset = #'(6.6 . 0.0 ) a''1*3/8\rest}
    } %end of alternative
    \pageBreak
    \repeat volta 2 { %begin repeated section
    \stemUp b4. ~ | % 18
    b8 [ a16 g16 fs16 e16 ] | % 19
    ds8 d4 ( | % 20
    d8 ) [ c16 b16 a16 g16 ] | % 21
    fs4. ( | % 22
    fs16 ) [ e16 ds!16 fs16 e16 ds16 ] | % 23
    \break
    e16 [ d!16 c16 \staffLower b16 a16 gs16 ] | % 24
    a8 r8 r8 | % 25
    \staffUpper \stemNeutral d4. ~ | % 26
    d16 ^[ b16 c16 a16 c16 e16 ] | % 27
    \stemNeutral fs4. ( | % 28
    fs16_) [ ds16 e16 c16 e16 g16 ] | % 29
    a4. ~ | % 30
    a16 [ g16 fs16 a16 g16 fs16 ] | % 31
    } %end repeated section
    \alternative {
	  {g16^[ fs16 e16 d16 c16 \staffLower b16 ] | % 32
	   a8 c8\rest c8\rest } %33
	  { b4.}
    } %end alternative
}

sopranoTwo =   \relative a'' {
	 g4. ( | % 1
    \repeat volta 2 { %begin repeated section
   	    
    \stemDown
    g8 ) [ fs16 e16 d16 c16 ] | % 2
    b4. ( | % 3
    b8 ) [ a16 g16 fs16 e16 ] | % 4
    d4. ( | % 5
    \once \override Beam.positions = #'(-3.8 . -3.8)
    d8 ) [ \staffLower c16 b16 a16 g16 ] | % 6
    a4.^( | % 7
    a16 ) [ g16 b16 a16 g16 fs16 ] | % 8
    g8 \staffUpper g'4 ( | % 9
    g8 ) [ fs16 e16 d16 c!16 ] | % 10
    \staffLower b16 [ \staffUpper d16 g16 a16 bf8 ~ ] | % 11
    bf8 [ a16 g16 fs16 e16 ] | % 12
    d4. ( | % 13
    d16 ) [ \staffLower cs16 b16 d16 cs16 b16 ] | % 14
    cs16 [ b16 a16 g16 fs16 e16 ] | % 15
    } %end of repeated section
    \alternative {
	    { fs8 f8\rest d8\rest | % 16
	    g8 a8\rest a8\rest}
	    { fs4. | \staffUpper a''4.~}
    }
     
    \repeat volta 2 { %begin repeated section
    a8 [ g16 fs16 e16 d16 ] | % 18
    cs8 c4 ~ | % 19
    c8 [ b16 a16 gs16 fs16 ] | % 20
    e4. ~ | % 21
    e16 [ ds16 cs16 e16 ds16 cs16 ] | % 22
    ds16 [ cs16 \staffLower b16 a16 g16 fs16 ] | % 23
    g8 \staffLower c8\rest \once \override Voice.Rest.extra-offset = #'(-0.8 . 0.3 ) e,8\rest | % 24
    \staffUpper c'4. ~ | % 25
    c16 [ a16 b16 g16 b16 d16 ] | % 26
    \once \override Tie.control-points = #'( ( 0.8759 . -3.6791) ( 3.3287 . -5.6062) ( 15.942 . -5.4311) ( 18.746 . -2.8907) )
    e4. ~ | % 27
    e16  [ cs16 d16 b16 d16 fs16 ] | % 28
    \break
    g4. ( | % 29
    g16 ) [ fs16 e16 g16 fs16 e16 ] | % 30
    \once \override Beam.positions = #'(-5 . -5)
    fs16 [ e16 d16 c16 \staffLower b16 a16 ] | % 31
    } %end repeated section
    \alternative {
	    {g8 c8\rest c8\rest | % 32
	    \staffUpper \extendLaissezVibrer #11 a''4.\laissezVibrer } % 33
	    { g,4. }
    } %end alternative
}

soprano = << \sopranoOne \\ \sopranoTwo>>

%%
%% Bass Clef
%% 

bass = \relative g, {
    g16 [ fs g a b g ] | %1
    \repeat volta 2 { %begin repeated section
    d'16 [ c d e fs d ] | % 2
    g16 [ fs e fs g e ] | % 3
    a16 [ g fs g a fs ] | % 4
    b16 [ a g a b g ] | % 5
    c16 [ b a g fs e ] | % 6
    fs16 [ e fs d e fs ] | % 7
    g16_[ e d c b a ] | % 8
    g16_[ fs' e d c b ] | % 9
    cs16_[ a d e fs d ] | % 10
    g16 [ fs e fs g e ] | % 11
    a16 [ g fs g a fs ] | % 12
    b16 [ a g a b a ] | % 13
    gs8_[ gs, ] g8\rest | % 14
    a8_[ a, ] e'8\rest | % 15
    } %end of repeated section
    \alternative {
	    {d8_[ d'16 c b a ] | % 16
	    g_[ fs g a b g ] } % 17
	    { d8_[ g b ] | % 16
	    d16 cs d e fs d } %17 
    } %end of repeated alternative
  
    \repeat volta 2 { %begin repeated section
     g16 [ fs e fs g e ] | % 18
    a16 [ g fs g a fs ] | % 19
    b16 [ a gs a b gs ] | % 20
    c16 [ b a b c b ] | % 21
    as8 [ as,8 ] r8 | % 22
    b8_[ b,8 ] r8 | % 23
    e8_[ e'16 d c b ] |  %24
    a16 [ c e g fs e ] | % 25
    fs8_[ g,8 ] r8 | % 26
    g'8 [ a,8 ] r8 | % 27
    a'8 [ b,8 ] r8 | % 28
    b'8 [ c,8 ] r8 | % 29
    cs8_[ cs,8 cs'8 ] | % 30
    d8_[  d,8  d'8 ] | % 31
    } %end repeated section
    \alternative {
	    {g,8_[ g'16 fs e g ] | % 32
	    fs16 [ e d e fs d ]} % 33
	    { g,8_[ d' g ] }
	    }
}


%% Merge score - Piano staff in key of G Major, 12/8 time.

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef "treble" \key g \major \time 3/8 << \soprano >>  }
        \context Staff = "lower"  { \clef "bass" \key g \major \time 3/8 \bass }
    >>
    \layout{ }
    \midi { }

}
