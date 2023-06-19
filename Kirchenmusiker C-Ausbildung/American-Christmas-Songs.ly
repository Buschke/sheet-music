\version "2.24.1"
\language "english"

% https://www.imdb.com/title/tt0632961/soundtrack/?ref_=tt_ql_dyk_6
%     Deck the Halls
%         Traditional tune, lyrics by Thomas Oliphant (uncredited)
%         Lyrics first published by J.P. McCaskey (1881)
%     O Little Town of Bethlehem
%         Lyrics by Phillips Brooks (1867)
%         Music by Lewis H. Redner (1868)
%     Sweet Little Jesus Boy
%         Lyrics by Robert MacGimsey
%         Sung by Ketty Lester (in character)
%     Joy to the World
%         Lyrics by Isaac Watts (1719)
%         Music by Lowell Mason (1836)
%     God Rest Ye Merry, Gentlemen
%         Traditional English carol (1833)
%     Away in a Manger
%         (1885)
%         Traditional, music arranged by James Murray (as James R. Murray) (1887)
%     The First Noel
%         Traditional
%         Published by William Sandys (1833)
%     Angels We Have Heard on High / Gloria in Excelsis Deo
%         Traditional French tune, English lyrics by James Chadwick (1862) / traditional
%         Music arranged by Ed S. Barnes
%     O Come, All Ye Faithful
%         Lyrics (English translation from Latin) by Frederick Oakeley (1841)
%         Lyrics & Music by John Francis Wade (c. 1743)
%     Silent Night
%         (uncredited)
%         Lyrics (English translation) by John Freeman Young (1863)
%         Lyrics (original German) by Joseph Mohr (c. 1816)
%         Music by Franz Xaver Gruber (c. 1820)

\header {
  dedication = "T"
  title = "Deck the Halls"
  subtitle = "American Christmas Songs"
  subsubtitle = ""
  instrument = ""
  composer = ""
  arranger = \markup {\with-url #"https://buschke.com" \line {Sven Buschke}}
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  copyright = "© Sven Buschke"
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key c \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreASoprano = \relative c'' {
  \global
  % Music follows here.
g4. f8 e4 d c d e c d8 e f d e4. d8 c4 b c2
g'4. f8 e4 d c d e c d8 e f d e4. d8 c4 b c2
d4. e8 f4 d e4. f8 g4 d e8 f g 4 a8 b c4 b a g2
g4. f8 e4 d c d e c a'8 a a a g4. f8 e4 d c2
\bar "|."
}

scoreAAlto = \relative c' {
  \global
  % Music follows here.

}

scoreATenor = \relative c' {
  \global
  % Music follows here.

}

scoreABass = \relative c {
  \global
  % Music follows here.
c2 c c2 c g c c c g g c c g c c c g f c' g c f, g g g c f, c' f, g c c
}

scoreAVerse = \lyricmode {
  % Lyrics follow here.
Deck the halls with boughs of hol -- ly,
Fa la la la la, la la la la.
Tis the sea -- son to be jol -- ly,
Fa la la la la, la la la la.
Don we now our gay ap -- pa -- rel,
Fa la la la la, la la la la.
Troll the an -- cient Yule tide ca -- rol,
Fa la la la la, la la la la.
% Deck the Halls
% Traditional tune, lyrics by Thomas Oliphant (uncredited)
% Lyrics first published by J.P. McCaskey (1881)
% O Little Town of Bethlehem
% Lyrics by Phillips Brooks (1867)
% Music by Lewis H. Redner (1868)
% Sweet Little Jesus Boy
% Lyrics by Robert MacGimsey
% Sung by Ketty Lester (in character)
% Joy to the World
% Lyrics by Isaac Watts (1719)
% Music by Lowell Mason (1836)
% God Rest Ye Merry, Gentlemen
% Traditional English carol (1833)
% Away in a Manger
% (1885)
% Traditional, music arranged by James Murray (as James R. Murray) (1887)
% The First Noel
% Traditional
% Published by William Sandys (1833)
% Angels We Have Heard on High / Gloria in Excelsis Deo
% Traditional French tune, English lyrics by James Chadwick (1862) / traditional
% Music arranged by Ed S. Barnes
% O Come, All Ye Faithful
% Lyrics (English translation from Latin) by Frederick Oakeley (1841)
% Lyrics & Music by John Francis Wade (c. 1743)
% Silent Night
% (uncredited)
% Lyrics (English translation) by John Freeman Young (1863)
% Lyrics (original German) by Joseph Mohr (c. 1816)
% Music by Franz Xaver Gruber (c. 1820)
}

scoreARehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreASoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreAAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreATenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreABass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

\bookpart {
\header {
  title = "Deck the Halls"
  composer = "Traditional"
  poet = "Thomas Oliphant, J.P. McCaskey (1883)"
%  subtitle = "American Christmas Songs"
%  subsubtitle = ""
%  instrument = ""
}

  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Soprano" "Alto" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreASoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreAAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreAVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreATenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreABass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreARehearsalMidi "soprano" "soprano sax" \scoreAVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreARehearsalMidi "alto" "soprano sax" \scoreAVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreARehearsalMidi "tenor" "tenor sax" \scoreAVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreARehearsalMidi "bass" "tenor sax" \scoreAVerse
    \midi { }
  }
}


scoreBSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreBAlto = \relative c' {
  \global
  % Music follows here.

}

scoreBTenor = \relative c' {
  \global
  % Music follows here.

}

scoreBBass = \relative c {
  \global
  % Music follows here.

}

scoreBVerse = \lyricmode {
  % Lyrics follow here.

}

scoreBRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreBSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreBAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreBTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreBBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Soprano" "Alto" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreBSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreBAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreBVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreBTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreBBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreBRehearsalMidi "soprano" "soprano sax" \scoreBVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreBRehearsalMidi "alto" "soprano sax" \scoreBVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreBRehearsalMidi "tenor" "tenor sax" \scoreBVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreBRehearsalMidi "bass" "tenor sax" \scoreBVerse
    \midi { }
  }
}


scoreCSoprano = \relative c'' {
  \global
  % Music follows here.

}

scoreCAlto = \relative c' {
  \global
  % Music follows here.

}

scoreCTenor = \relative c' {
  \global
  % Music follows here.

}

scoreCBass = \relative c {
  \global
  % Music follows here.

}

scoreCVerse = \lyricmode {
  % Lyrics follow here.

}

scoreCRehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \scoreCSoprano }
     \new Staff = "alto" \new Voice = "alto" { \scoreCAlto }
     \new Staff = "tenor" \new Voice = "tenor" { \scoreCTenor }
     \new Staff = "bass" \new Voice = "bass" { \scoreCBass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Soprano" "Alto" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreCSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreCAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreCVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreCTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreCBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \scoreCRehearsalMidi "soprano" "soprano sax" \scoreCVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \scoreCRehearsalMidi "alto" "soprano sax" \scoreCVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \scoreCRehearsalMidi "tenor" "tenor sax" \scoreCVerse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \scoreCRehearsalMidi "bass" "tenor sax" \scoreCVerse
    \midi { }
  }
}

