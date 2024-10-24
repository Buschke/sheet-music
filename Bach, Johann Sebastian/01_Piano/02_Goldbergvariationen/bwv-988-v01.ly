\version "2.24.0"
\language "english"

\paper {
  top-markup-spacing.basic-distance = #6
  markup-system-spacing.basic-distance = #12
  top-system-spacing.basic-distance = #12
  line-width = 18.0\cm
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

%#(set-default-paper-size "a4")
%#(set-default-paper-size "letter")

#(set-global-staff-size 18.5)

\header {
        title = "Aria con 30 Variazioni"
        subtitle = "\"Goldberg-Variationen\""
%        piece = "Variatio 1. a 1 Clav."
        mutopiatitle = "Goldberg Variations - 1"
        composer = "Johann Sebastian Bach (1685-1750), BWV 988"
        mutopiacomposer = "BachJS"
%        poet = "Fingerings: Sven Buschke"
%        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Harpsichord,Clavichord"
        style = "Baroque"
        source = "Bach-Gesellschaft"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "JD Erickson"
        maintainerEmail = "erickson.jd@gmail.com"
 footer = "Mutopia-2013/07/07-980"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url "http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url "http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url "http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

staffUpper = {\change Staff = upper \stemDown}
staffLower = {\change Staff = lower \stemUp}
startRepeat = {\set Score.repeatCommands = #'(start-repeat)}
endRepeat = {\set Score.repeatCommands = #'(end-repeat)}
stemExtend = \once \override Stem.length = #22
noFlag = \once \override Flag.style = #'no-flag
adjustBeamOne = \once \override Beam.positions = #'(2.1 . 1)
adjustBeamTwo = \once \override Beam.positions = #'(5.5 . 4.9)
adjustBeamThree = \once \override Beam.positions = #'(-1.3 . 1.3)
adjustBeamFour = \once \override Beam.positions = #'(10 . 12.4)
flatBeam = \once \override Beam.positions = #'( -0.2 . -0.2 )
flatBeamTwo = \once \override Beam.positions = #'( -0.8 . -0.8 )
flatBeamThree = \once \override Beam.positions = #'( -1.2 . -1.2 )

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%
%% Treble Clef
%%

soprano = \relative c'' {
    \override Script.padding = #1.0
    \repeat volta 2 { %begin repeated section
        %1-5
        \stemUp g16^"Variatio 1. a 1 Clav." fs16 g8_~ g16 d16 e16 fs16 g16 a16 b16 cs16
        \stemDown d16 cs16 d8^~ d16 a16 b16 cs16 d16 e16 fs16 d16
        g16 fs16 g8^~ g16 fs16 e16 d16 \stemUp cs16 e16 a,16 g16
        fs16 e16 d16 cs16 \adjustBeamOne d16 fs16 \staffLower \stemExtend \noFlag a,16 \stemExtend \noFlag g16 \adjustBeamTwo fs16 a16 d,8
        \staffUpper \stemUp b''8\rest d16[ c16 d8 g,8 b,8 d'8]

        %6-10
        b8\rest e16[ d16 e8 a,8 c,8 e'8]
        \stemDown b8\rest fs'16[ e16 fs8 d8 a'8 c,8^~]
        c8 b8 b16\rest g16 b16 d16 g16 d16 g16 a16
        b16 g16 d16 b16 g16 b16 d16 g16 b16 g16 fs16 e16
        a16 e16 cs16 a16 fs16 a16 cs16 e16 a16 fs16 e16 d16

        %11-15
        g16 d16 b16 g16 e16 g16 b16 d16 g16 fs16 e16 d16
        \stemUp cs16 g16 e16 cs16 a16 cs16 e16 g16 \stemDown cs16 e16 d16 cs16
        d8 \clef "bass" fs,,8 fs8 \clef "treble"  a'8 d8 fs8
        b,8 \clef "bass"  g,8 g8 \clef "treble" b'8 e8 g8
        cs,16 e16 a,16 g16 fs16 a16 d16 fs16 g16 e16 d16 cs16

        %16-20
        fs16 d16 cs16 b16 \stemUp a16 g16 fs16 e16 \staffLower d4
    } %end of repeated section
    \repeat volta 2 { %begin repeated section
        \staffUpper fs'16 g16 a8^~ a16 b16 a16 g16 fs16 e16 d16 c16
        b16 c16 d8^~ d16 e16 d16 c16 \stemUp b16 a16 g16 fs16
        e16 gs16 a16 b16 a16 e16 a16 b16 c16 a16 ds16 e16
        fs16 e16 ds16 cs16 b2^~

        %21-25
        b16 ds16 e8^~ e16 ds,16 e8_~ e16 \staffLower \stemExtend \noFlag ds,16 \stemExtend \noFlag e8
        \staffUpper \stemUp a''16\rest gs16 a8^~ a16 gs,16 a8_~ a16 \staffLower \stemExtend \noFlag gs,16 \stemExtend \noFlag a8^~
        \stemExtend \noFlag \adjustBeamFour a16 \staffUpper \stemUp b16 c16 fs16 b,16 ds16 e16 g16 fs16 e16 ds16 a'16
        g16 fs16 e16 ds16 \stemDown e16 g16 \staffLower \stemExtend \noFlag b,16 \stemExtend \noFlag a16 g16 b16 e,8
        \staffUpper \stemDown b''8\rest e8 c8 e8 a8 a,8

        %26-30
        b8\rest d8 b8 d8 g8 g,8
        \stemUp c16 a16 e16 c16 a16 c16 e16 a16 \stemDown c16 a16 c16 e16
        fs16 c16 a16 fs16 \stemUp d16 fs16 a16 c16 \stemDown fs16 c16 fs16 a16
        b16 g16 d16 b16 g16 b16 d16 g16 b16 f16 b16 d16
        e,16 d'16 c16 e,16 d16 c'16 b16 d,16 c16 e16 fs16 g16

        %31-32
        a16 c,16 b16 a16 \stemUp b16 d16 b16 g16 c16 a16 g16 fs16
        b16 g16 fs16 e16 d16 c16 b16 a16 g4\fermata
    } %end repeated section
}

%%
%% Bass Clef
%%

bass = \relative c {
        \override Script.padding = #1.0
        %1-5
        \stemUp g8[ b'16 a16 b8 g8 g,8 g'8]
        fs,8[ fs'16 e16 fs8 d8 fs,8 d'8]
        e,8[ e'16 d16 e8 g8 a,8 cs'8]
        \stemDown d,8[ fs16 e16 fs8 d8] d,8 e16\rest c'!16
        \stemUp b16 a16 b8_~ b16 d16 e16 fs16 \stemDown g16 a16 b16 g16

        %6-10
        \stemUp c,16 b16 c8_~ \stemDown c16 e16 fs16 g16 a16 b16 c16 a16
        \stemUp d,16 cs16 d8_~ \stemDown d16 a'16 b16 c!16 d16 e16 fs16 d16
        g16 fs16 g16 d16 b16 d16 g,16 b16 d,16 g16 b,16 d16
        \stemUp \flatBeam g,8[ \stemDown g'8 b8 g8 \stemUp g,8 \stemDown g'8]
        \stemUp \flatBeamTwo fs,8[ \stemDown fs'8 a8 fs8 \stemUp fs,8 \stemDown fs'8]

        %11-15
        \stemUp \flatBeamThree e,8[ \stemDown e'8 g8 e8 \stemUp e,8 \stemDown g'8]
        a,8 e'8 g8 e8 a,8 g'8
        fs16 a16 d16 fs16 a16 fs16 d16 a16 fs16 a16 d,16 fs16
        g16 b16 d16 g16 b16 g16 d16 b16 g16 b16 e,16 g16
        a8[ cs8] d16[ a16 fs16 d16] a'8[ a,8]

        %16-20
        \stemUp d,16 d'16 e16 fs16 \stemDown g16 a16 b16 cs16 d4
        \stemUp d,,8[ fs'16 e16 fs8 d8 d,8 fs'8]
        g,8[ b'16 a16 b8 g8 g,8 b'8]
        \stemDown c,8[ c'16 b16 c8 fs,8 a8 c8]
        a8 fs8 ds16 b16 ds16 fs16 \adjustBeamThree b16 \staffUpper \stemExtend \noFlag ds16 \stemExtend \noFlag fs16 \stemExtend \noFlag a16

        %21-25
        g8. fs16 g8.[ \staffLower \stemUp fs,16] \stemDown g8. b,16
        \stemUp c8.[ \staffUpper \stemDown b''16] c8.[ \staffLower \stemUp b,16] \stemDown c8. e,16
        ds8[ a'8 g8 as,8 b8 fs'8]
        e8[ g16 fs16 g8 e8] e,8 g16\rest d'16
        c16 e16 a16 c16 e16 c16 a16 e16 c16 e16 d16 c16

        %26-30
        b16 d16 g16 b16 d16 b16 g16 d16 \stemUp b16 d16 c16 b16
        \stemDown a8[ c8 e8 g8 fs8 e8]
        d8[ fs8 a8 c8 b8 a8]
        g8[ b8 d8 f8 e8 d8]
        c8[ e8 fs!8 gs8 a8 g8]

        %31-32
        fs8[ d8 g8  g,8 d'8 d,8]
        \stemUp g16 g,16 a16 b16 \stemDown c16 d16 e16 fs16 g4_\fermata
}

%%
%% Score Layout
%%

\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef treble \key g \major \time 3/4 \soprano }
        \context Staff = "lower"  { \clef bass \key g \major \time 3/4 \bass }
    >>
    \layout{ }
    \midi { }
}
