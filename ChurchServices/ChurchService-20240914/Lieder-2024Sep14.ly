\version "2.24.4"
\language "english"

\header {
  dedication = "nn"
  title = "n"
  subtitle = "n"
  subsubtitle = "n"
  instrument = "n"
  composer = "n"
  arranger = "n"
  poet = "n"
  meter = "n"
  piece = "n"
  opus = "n"
  copyright = "n"
  tagline = "n"
  %
  dedication = "Taufkind Leopold Himmel"
  title = "Lieder, Taufgottesdienst 3. August 2024"
  subtitle = "Stephanuskirche"
  subsubtitle = "EG"
  instrument = "Orgel"
  composer = ""
  arranger = \markup {"Arr: " \with-url "https://buschke.com" "Sven Buschke"}
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  copyright = \markup {"© Satz, 14.09.2024: " \with-url "https://buschke.com" "Sven Buschke"}
  tagline = "best of Gotteslob"
}

\paper {
  #(set-paper-size "a4")
}

\include "../../Gotteslob/GL_Lieder-Dur-Moll_Noten.ly"

global = {
  \key d \major
  \time 4/4
  \tempo "Gemäßigt" 4=60
}

scoreAChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreAMelody = \relative c'' {
  \global
  % Music follows here.
  \insWasserFaelltEinStein
}

scoreAVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  \insWasserFaelltEinSteinV
}

scoreAVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  \insWasserFaelltEinSteinVTwo
}

scoreAVerseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.

}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreAChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreAMelody }
      \addlyrics { \scoreAVerseOne }
      \addlyrics { \scoreAVerseTwo }
      \addlyrics { \scoreAVerseThree }
    >>
    \layout { }
    \midi { }
  }
  \markup {
    \fill-line {
      \hspace #0.1 % moves the column off the left margin;
      % can be removed if space on the page is tight
      \column {
        \line {
          \bold "2."
          \column {
            \line{ Ein Funke, kaum zu sehen}
            \line{ Entfacht doch helle Flammen}
            \line{ Und die im Dunkeln stehn}
            \line{ Die ruft der Schein zusammen}

            \line{ Wo Gottes große Liebe}
            \line{ In einem Menschen brennt}
            \line{ Da wird die Welt, vom Licht erhellt}
            \line{ Da bleibt nichts was uns trennt}
          }
        }
        \combine \null \vspace #0.1 % adds vertical spacing between verses
        \line {
          \bold ""
          \column {

          }
        }
      }
      \hspace #0.1 % adds horizontal spacing between columns;
      \column {
        \line {
          \bold "3."
          \column {
            \line{ Nimm Gottes Liebe an}
            \line{ Du brauchst dich nicht allein zu mühen}
            \line{ Denn seine Liebe kann}
            \line{ In deinem Leben Kreise ziehen}

            \line{ Und füllt sie erst dein Leben}
            \line{ Und setzt sie dich in Brand}
            \line{ Gehst du hinaus, teilst Liebe aus}
            \line{ Denn Gott füllt dir die Hand}

            \line{ Gott füllt dir die Hand}
          }
        }
        \hspace #0.1 % gives some extra space on the right margin;
        % can be removed if page space is tight
      }
    }

  }
}

global = {
  \key f \major
  \time 3/4
  \tempo "Flotter" 4=60
}



scoreBChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreBMelody = \relative c'' {
  \global
  % Music follows here.
  \meineHoffnungUndMeineFreudeF
}

scoreBVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  \meineHoffnungUndMeineFreudeV
}

scoreBVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.

}

scoreBVerseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.

}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreBChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreBMelody }
      \addlyrics { \scoreBVerseOne }
      \addlyrics { \scoreBVerseTwo }
      \addlyrics { \scoreBVerseThree }
    >>
    \layout { }
    \midi { }
  }
  \markup {
    \fill-line {
      \hspace #0.1 % moves the column off the left margin;
      % can be removed if space on the page is tight
      \column {
        \line {
          \bold "2."
          \column {
            \line{ Meine Hoffnung und meine Freude,}
            \line{ meine Stärke, mein Licht:}
            \line{ Christus meine Zuversicht,}
            \line{ auf dich vertrau ich und fürcht mich nicht,}
            \line{ auf dich vertrau ich und fürcht mich nicht.}
          }
        }
        \combine \null \vspace #0.1 % adds vertical spacing between verses
        \line {
          \bold ""
          \column {

          }
        }
      }
      \hspace #0.1 % adds horizontal spacing between columns;
      \column {
        \line {
          \bold "3."
          \column {
            \line{ Meine Hoffnung und meine Freude,}
            \line{ meine Stärke, mein Licht:}
            \line{ Christus meine Zuversicht,}
            \line{ auf dich vertrau ich und fürcht mich nicht,}
            \line{ auf dich vertrau ich und fürcht mich nicht.}
          }
        }
        \hspace #0.1 % gives some extra space on the right margin;
        % can be removed if page space is tight
      }
    }

  }
}

global = {
  \key f \major
  \time 3/4
  \tempo "Wiegend" 4=60
}

scoreCChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreCMelody = \relative c'' {
  \global
  % Music follows here.
  \weisstDuWieVielSternleinStehen
}

scoreCVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  \weisstDuWieVielSternleinStehenV
}

scoreCVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.

}

scoreCVerseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.

}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreCChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreCMelody }
      \addlyrics { \scoreCVerseOne }
      \addlyrics { \scoreCVerseTwo }
      \addlyrics { \scoreCVerseThree }
    >>
    \layout { }
    \midi { }
  }
  \markup {
    \fill-line {
      \hspace #0.1 % moves the column off the left margin;
      % can be removed if space on the page is tight
      \column {
        \line {
          \bold "2."
          \column {
            \line{ Weißt du, wie viel Mücklein spielen}
            \line{ In der heißen Sonnenglut}
            \line{ Wie viel Fischlein auch sich kühlen}
            \line{ In der hellen Wasserflut}
            \line{ Gott der Herr rief sie beim Namen}
            \line{ Dass sie all ins Leben kamen}
            \line{ Dass sie nun so fröhlich sind}
            \line{ Dass sie nun so fröhlich sind}
          }
        }
        \combine \null \vspace #0.1 % adds vertical spacing between verses
        \line {
          \bold "3."
          \column {
            \line{ Weißt du, wie viel Kinder frühe}
            \line{ Stehen aus ihrem Bettlein auf}
            \line{ Dass sie ohne Sorg und Mühe}
            \line{ Fröhlich sind im Tageslauf}
            \line{ Gott im Himmel hat an allen}
            \line{ Seine Lust, sein Wohlgefallen}
            \line{ Kennt auch dich und hat dich lieb}
            \line{ Kennt auch dich und hat dich lieb}
          }
        }
      }
      \hspace #0.1 % adds horizontal spacing between columns;
      \column {
        \line {
          \bold "4. "
          \column {
            \line{ nicht singen?}
            \line{ Weißt du, wie viel Sternlein stehen}
            \line{ An dem blauen Himmelszelt}
            \line{ Weißt du, wie viel Wolken gehen}
            \line{ Weithin über alle Welt}
          }
        }
        \combine \null \vspace #0.1 % adds vertical spacing between verses
        \line {
          \bold ""
          \column {

          }
        }
      }
      \hspace #0.1 % gives some extra space on the right margin;
      % can be removed if page space is tight
    }
  }

}

global = {
  \key d \major
  \time 3/4
  \tempo "Wiegend" 4=60
}

scoreDChordNames = \chordmode {
  \global
  \germanChords
  % Chords follow here.

}

scoreDMelody = \relative c'' {
  \global
  % Music follows here.
  \vomAnfangBisZumEndeHaeltGottSeineHaende
}

scoreDVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  \vomAnfangBisZumEndeHaeltGottSeineHaendeV
}

scoreDVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.

}

\bookpart {
  \score {
    <<
      \new ChordNames \scoreDChordNames
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \scoreDMelody }
      \addlyrics { \scoreDVerseOne }
      \addlyrics { \scoreDVerseTwo }
    >>
    \layout { }
    \midi { }
  }
  \markup {
    \fill-line {
      \hspace #0.1 % moves the column off the left margin;
      % can be removed if space on the page is tight
      \column {
        \line {
          \bold "2."
          \column {
            \line{ Vom Anfang bis zum Ende}
            \line{ hält Gott seine Hände}
            \line{ über mir und über dir.}
            \line{ Ja, er hat es versprochen,}
            \line{ hat nie sein Wort gebrochen:}
            \line{ 'Glaube mir, ich bin bei dir!'}
            \line{ Immer und überall,}
            \line{ immer und überall,}
            \line{ immer bin ich da!}
          }
        }
        \combine \null \vspace #0.1 % adds vertical spacing between verses
        \line {
          \bold ""
          \column {

          }
        }
      }
      \hspace #0.1 % adds horizontal spacing between columns;
      \column {
        \line {
          \bold ""
          \column {
          }
        }
        \hspace #0.1 % gives some extra space on the right margin;
        % can be removed if page space is tight
      }
    }

  }
}
