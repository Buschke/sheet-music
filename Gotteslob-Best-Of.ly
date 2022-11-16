\version "2.22.2"
\language "english"

\header {
  dedication = "NN"
  title = "Gotteslob Best Of"
  subtitle = "NN"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "NN"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "NN"
  copyright = "NN"
  tagline = "NN"
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

globalA = {
  \key f \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreASoprano = \relative c'' {
  \globalA
  % Music follows here.
  \partial 4
  f,|
  g f bf a|
  g2 f4 \breathe a|
  a a d c|
  bf2 a4 \breathe a|
  a a bf a|
  g2 r4 f|
  g f bf a|
  g2 f4 \breathe a|
  a a d c|
  bf2 a4 \breathe a|
  a a bf a|
  g g f
  \bar "|."
}

scoreAAlto = \relative c' {
  \globalA
  % Music follows here.
  \partial 4
  c|
  c a
}

scoreATenor = \relative c' {
  \globalA
  % Music follows here.
  \partial 4
  a|
  e
}

scoreABass = \relative c {
  \globalA
  % Music follows here.
  \partial 4
  f|
  c d g, a|
  bf c f \breathe e|
  d c bf a|
  g c f \breathe e|
  d c bf f|
  c'2 r4 f|
  e d g, a|
  bf c d \breathe e|
  f f, bf a|
  g c f \breathe e|
  d c bf b|
  c2 f,4
  \bar "|."
}  

scoreAVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Der Mond ist auf -- ge -- gan -- gen
  Die gold -- nen Stern -- lein pran -- gen
  Am Him -- mel hell und klar
  Der Wald steht schwarz und schwei -- get
  Und aus den Wie -- sen stei -- get
  Der wei -- ße Ne -- bel wun -- der -- bar.
}

scoreAVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Wie ist die Welt so Stille
  Als in einer Dämmrung, Dämmrung Hülle
  So traulich und so hold
  Als eine Stille Kammer
  Wo ihr des Tages, des Tages jammer
  Verschlafen, verschlafen und vergessen sold
}

scoreAVerseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  Sehr ihr den Mond dort stehen
  Er ist bloß halb, bloß halb zu sehen
  Und ist doch rund und schön
  So sind gar manche Sachen
  Die wir getrost, getrost belachen
  Weil unsere Augen sie nicht sehen
}

scoreAVerseFour = \lyricmode {
  \set stanza = "4."
  % Lyrics follow here.
  So legt euch, so legt euch denn, ihr Brüder
  In Gottes Namen nieder
  Kalt ist der Abendhauch
  Verschon uns Gott mit Strafen
  Und lass uns ruhig, ruhig schlafen
  Und unseren kranken Nachbarn auch.  
}

scoreAVerseFive = \lyricmode {
  \set stanza = "5."
  % Lyrics follow here.
  
}

claveA = {\new DrumStaff <<
  \drummode {\globalA
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
         hh8 cl hh cl hh cl hh cl
%        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
    } \\ {
      bd4 sn4 sn4 sn4
    } >>
  }
>>
}

\bookpart {
\header {
  dedication = "NN"
  subtitle = "Der Mond ist aufgegangen"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "NN"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "GL 93"
}
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
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
      } \lyricsto "soprano" \scoreAVerseOne
%       \new Lyrics \with {
%         \override VerticalAxisGroup #'staff-affinity = #CENTER
%       } \lyricsto "soprano" \scoreAVerseTwo
%       \new Lyrics \with {
%         \override VerticalAxisGroup #'staff-affinity = #CENTER
%       } \lyricsto "soprano" \scoreAVerseThree
%       \new Lyrics \with {
%         \override VerticalAxisGroup #'staff-affinity = #CENTER
%       } \lyricsto "soprano" \scoreAVerseFour
%       \new Lyrics \with {
%         \override VerticalAxisGroup #'staff-affinity = #CENTER
%       } \lyricsto "soprano" \scoreAVerseFive
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


globalB = {
  \key f \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreBSoprano = \relative c'' {
  \globalB
  % Music follows here.
  \partial 4
  a4|
  f g a c|
  bf2 a4 \breathe a|
  c c g a|
  f2 e4 \breathe e|
  f g a a|
  g2. \breathe a4|
  f g a c|
  bf2 a4\breathe a|
  c c g a|
  f2 e4\breathe c|
  f g a bf|
  a g e
  \bar "|."
}

scoreBAlto = \relative c' {
  \globalB
  % Music follows here.
  
}

scoreBTenor = \relative c' {
  \globalB
  % Music follows here.
  \partial 4
  f,|
  bf g f2|
  g f4 \breathe d|
  a2 c4 a|
  d2 c4 \breathe bf|
  a g f a|
  c2. \breathe cs4|
  d e f fs|
  g2 d4\breathe f,|
  a~ a8 bf c4 cs|
  d2 c4\breathe c8 bf|
  a4 g f g|
  a8 bf c4 f
  \bar "|."
}

scoreBBass = \relative c {
  \globalB
  % Music follows here.
  
}

scoreBVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Nun ru -- hen al -- le Wäl -- der,
  Vieh, Men -- schen, Städt und Fel -- der,
  es schläft die gan -- ze Welt;
  ihr a -- ber, mei -- ne Sin -- nen,
  auf, auf, ihr sollt be -- gin -- nen,
  was eu -- rem Schöp -- fer wohl -- ge -- fällt.
  
%   2) Wo bist du, Sonne, blieben?
%   Die Nacht hat dich vertrieben,
%   die Nacht, des Tages Feind.
%   Fahr hin; ein andre Sonne,
%   mein Jesus, meine Wonne,
%   gar hell in meinem Herzen scheint.
%   
%   3) Der Tag ist nun vergangen,
%   die güldnen Sternlein prangen
%   am blauen Himmelssaal;
%   also werd ich auch stehen,
%   wenn mich wird heißen gehen
%   mein Gott aus diesem Jammertal.
%   
%   4) Der Leib eilt nun zur Ruhe,
%   legt ab das Kleid und Schuhe,
%   das Bild der Sterblichkeit;
%   die zieh ich aus, dagegen
%   wird Christus mir anlegen
%   den Rock der Ehr und Herrlichkeit.
%   
%   5) Das Haupt, die Füß und Hände
%   sind froh, dass nun zum Ende
%   die Arbeit kommen sei.
%   Herz, freu dich, du sollst werden
%   vom Elend dieser Erden
%   und von der Sünden Arbeit frei.
%   
%   6) Nun geht, ihr matten Glieder,
%   geht hin und legt euch nieder,
%   der Betten ihr begehrt.
%   Es kommen Stund und Zeiten,
%   da man euch wird bereiten
%   zur Ruh ein Bettlein in der Erd.
%   
%   7) Mein Augen stehn verdrossen,
%   im Nu sind sie geschlossen.
%   Wo bleibt dann Leib und Seel?
%   Nimm sie zu deinen Gnaden,
%   sei gut für allen Schaden,
%   du Aug und Wächter Israel'.
%   
%   8) Breit aus die Flügel beide,
%   o Jesu, meine Freude,
%   und nimm dein Küchlein ein.
%   Will Satan mich verschlingen,
%   so lass die Englein singen:
%   'Dies Kind soll unverletzet sein.'
%   
%   9) Auch euch, ihr meine Lieben,
%   soll heute nicht betrüben
%   kein Unfall noch Gefahr.
%   Gott lass euch selig schlafen,
%   stell euch die güldnen Waffen
%   ums Bett und seiner Engel Schar.  
}

scoreBVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  
}

scoreBVerseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  
}

scoreBVerseFour = \lyricmode {
  \set stanza = "4."
  % Lyrics follow here.
  
}

scoreBVerseFive = \lyricmode {
  \set stanza = "5."
  % Lyrics follow here.
  
}

claveB = {\new DrumStaff <<
  \drummode {\globalA
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
         hh8 cl hh cl hh cl hh cl
%        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
    } \\ {
      bd4 sn4 sn4 sn4
    } >>
  }
>>
}

\bookpart {
\header {
  dedication = "NN"
  subtitle = "Nun ruhen alle Wälder"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "NN"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "GL 101"
}
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
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
      } \lyricsto "soprano" \scoreBVerseOne
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreBVerseTwo
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreBVerseThree
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreBVerseFour
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreBVerseFive
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalC = {
  \key c \major
  \time 2/1
  \tempo "Andante" 4=100
}

scoreCSoprano = \relative c'' {
  \globalC
  % Music follows here.
  \partial 1
  c,2 e4 f|
  g2 c b a|
  g\breathe g a4 g e2 e|
  f4 e d2 c r2 c e4 f
  g2 c b a
  g\breathe g a4 g
  e2 e f4 e d2 c r2 c'
  b4 a g c
  b2 a g\breathe g
  d f  e4 d e f
  g2( a) g r c, c4 d e c
  e2 f g\breathe g d f
  e4 g f e d2 c1
  \bar "|."
}

scoreCAlto = \relative c' {
  \globalC
  % Music follows here.
  
}


scoreCTenor = \relative c' {
  \globalC
  % Music follows here.
  
}

scoreCBass = \relative c {
  \globalC
  % Music follows here.
  c,2 c'|
  b a b4 c d2|
  g, c f,4 g a2 g|
  f g c, r2 c' a g
  a b4 c d2 g,\breathe c f,4 g
  a2 g f g c r2 a
  e4 f c' a
  b c d2 g \breathe e
  f4 e d2 a g4 f
  e2 f g r e' f4 d c2
  a d g,\breathe e f4 e d2
  a'4 e f2 g
  c,1
}

scoreCVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Mein gan -- zes Herz er -- he -- bet dich; vor dir will ich mein Lob -- lied sin -- gen
  und will in dei -- nem Hei -- lig -- tum, Herr, dir zum Ruhm mein Op -- fer brin -- gen.
  Dein Na -- me strahlt an al -- lem Ort, und durch dein Wort wird hell das Le -- ben.
  An -- be -- tung, Ehr und Herr -- lich -- keit bin ich be -- reit, dir, Gott, zu ge -- ben.

% 2) Dein Name, Herr, ist unser Hort; du hast dein Wort an mir erfüllet.
% Du hast auf mein Gebet gemerkt und mich gestärkt, mein Herz gestillet.
% Die Völker werden preisen dich und Mächtge sich zu dir hin kehren,
% wenn sie das Wort vom ewgen Bund aus deinem Mund verkünden hören.
% 
% 3) Herr, ob den Himmeln thronst du hoch und siehest doch die Tiefgebeugten.
% In Angst und Widerwärtigkeit wird mir allzeit dein Antlitz leuchten.
% Mach mich von allem Elend frei; denn deine Treu wird niemals enden.
% Du wirst nach deinem ewgen Rat, Herr, groß an Tat, dein Werk vollenden.
}

scoreCVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  
}

scoreCVerseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  
}

scoreCVerseFour = \lyricmode {
  \set stanza = "4."
  % Lyrics follow here.
  
}

scoreCVerseFive = \lyricmode {
  \set stanza = "5."
  % Lyrics follow here.
  
}

claveB = {\new DrumStaff <<
  \drummode {\globalA
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
         hh8 cl hh cl hh cl hh cl
%        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
    } \\ {
      bd4 sn4 sn4 sn4
    } >>
  }
>>
}

\bookpart {
\header {
  subtitle = "Mein ganzes Herz erhebet dich"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "NN"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "GL 143"
}
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
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
      } \lyricsto "soprano" \scoreCVerseOne
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreCVerseTwo
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreCVerseThree
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreCVerseFour
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreCVerseFive
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalD = {
  \key c \major
  \time 6/4
  \tempo "Andante" 4=100
}

scoreDSoprano = \relative c'' {
  \globalD
  % Music follows here.
  \partial 1
  c,4 c2 d4|
  e2 g4 e2 d4|
  c2\breathe c4 g'2 a4|
  b2 g4 a2 b4|
  c2 c4 c2 c4|
  b2 g4 a2 a4|
  g2\breathe g4 g2 f4|
  e2f4 d2 d4|
  c2|
  \bar "|."
}

scoreDAlto = \relative c' {
  \globalD
  % Music follows here.
  
}

scoreDTenor = \relative c' {
  \globalD
  % Music follows here.
  
}

scoreDBass = \relative c {
  \globalD
  % Music follows here.
  \partial 1
  c4 f e d|
  c2 b4 c2 g4|
  a2\breathe c4 b2 a4|
  g2 g'4 f e d|
  c2 e,4 a2 a4|
  b2 e4 c2 d4|
  g,2\breathe e'4 b2 d4|
  a g f g2 g4|
  c2	
}

scoreDVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Nun jauchzt dem Her -- ren al -- le Welt!
  Kommt her, zu sei -- nem Dienst euch stellt,
  kommt mit Froh -- lo -- cken, säu -- met nicht,
  kommt vor sein hei -- lig An -- ge -- sicht.

% 2) Erkennt, dass Gott ist unser Herr,
% der uns erschaffen ihm zur Ehr,
% und nicht wir selbst: durch Gottes Gnad
% ein jeder Mensch sein Leben hat.
% 
% 3) Wie reich hat uns der Herr bedacht,
% der uns zu seinem Volk gemacht;
% als guter Hirt ist er bereit,
% zu führen uns auf seine Weid.
% 
% 4) Die ihr nun wollet bei ihm sein,
% kommt, geht zu seinen Toren ein
% mit Loben durch der Psalmen Klang,
% zu seinem Vorhof mit Gesang.
% 
% 5) Dankt unserm Gott, lobsinget ihm,
% rühmt seinen Namen mit lauter Stimm;
% lobsingt und danket allesamt.
% Gott loben, das ist unser Amt.
% 
% 6) Er ist voll Güt und Freundlichkeit,
% voll Lieb und Treu zu jeder Zeit.
% Sein Gnad währt immer dort und hier
% und seine Wahrheit für und für.
% 
% 7) Gott Vater in dem höchsten Thron
% und Jesus Christus, seinen Sohn,
% den Tröster auch, den Heilgen Geist,
% im Himmel und auf Erden preist.
}

scoreDVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  
}

scoreDVerseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  
}

scoreDVerseFour = \lyricmode {
  \set stanza = "4."
  % Lyrics follow here.
  
}

scoreDVerseFive = \lyricmode {
  \set stanza = "5."
  % Lyrics follow here.
  
}

claveD = {\new DrumStaff <<
  \drummode {\globalD
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
         hh4 cl cl hh cl cl hh cl
%        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
    } \\ {
      bd4 sn sn sn sn sn bd4 sn
    } >>
  }
>>
}

Dscore = \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreDSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreDAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreDVerseOne
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreDVerseTwo
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreDVerseThree
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreDVerseFour
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreDVerseFive
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreDTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreDBass }
      >>
    >>



\bookpart {
\header {
  subtitle = "Nun jauchzt dem Herren"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "NN"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "GL 144"
}
  \score {
%    {
%      \claveD
      \Dscore
%    }

    \layout { }
%    \midi { }
  }

\markup {
  \wordwrap-string "
2) Erkennt, dass Gott ist unser Herr,
der uns erschaffen ihm zur Ehr,
und nicht wir selbst: durch Gottes Gnad
ein jeder Mensch sein Leben hat.

3) Wie reich hat uns der Herr bedacht,
der uns zu seinem Volk gemacht;
als guter Hirt ist er bereit,
zu führen uns auf seine Weid.

4) Die ihr nun wollet bei ihm sein,
kommt, geht zu seinen Toren ein
mit Loben durch der Psalmen Klang,
zu seinem Vorhof mit Gesang.

5) Dankt unserm Gott, lobsinget ihm,
rühmt seinen Namen mit lauter Stimm;
lobsingt und danket allesamt.
Gott loben, das ist unser Amt.

6) Er ist voll Güt und Freundlichkeit,
voll Lieb und Treu zu jeder Zeit.
Sein Gnad währt immer dort und hier
und seine Wahrheit für und für.

7) Gott Vater in dem höchsten Thron
und Jesus Christus, seinen Sohn,
den Tröster auch, den Heilgen Geist,
im Himmel und auf Erden preist."
}


  \score {
    {
      \claveD
      \Dscore
    }
%    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalE = {
  \key f \major
  \time 6/4
  \tempo "Andante" 4=100
}

scoreESoprano = \relative c'' {
  \globalE
  % Music follows here.
  \partial 4
  f,4|
  a2 bf4 c2 bf4|
  a2 g4 a2\breathe a4|
  a2 g4 bf( a) g|
  f2( e4) f2
}

scoreESopranoB = \relative c'' {
  % Music follows here.
  \partial 4
  f,4|
  f2 g4 bf bf a|
  g2 f4 g2\breathe g4|
  a2 bf4 c2 bf4|
  a2 g4 a2\breathe f4|
  g2 bf4 a2 g4|
  f2( e4) f2
  \bar "|."
}

scoreEAlto = \relative c' {
  \globalE
  % Music follows here.
  
}

scoreETenor = \relative c' {
  \globalE
  % Music follows here.
  
}

scoreEBass = \relative c {
  \globalE
  % Music follows here.
  \partial 4
  f,4|
  f' d2 e4 f2|
  a,4 bf c f,2 d'4|
  cs d bf g a c|
  d2 c4 f,2|
}

scoreEBassB = \relative c {
  % Music follows here.
  \partial 4
  f4|
  d bf2 g a4|
  c2 d4 e2\breathe c4|
  f d2 e4 f2|
  d4 c bf a2 4|
  g2 4 a bf c|
  d2 c4 f,2|
  \bar "|."
}

scoreEVerseOne = \lyricmode {
%  \set stanza = "1."
  % Lyrics follow here.
  Al -- lein Gott in der Höh sei Ehr
  und Dank für sei -- ne Gna -- de, 
}

scoreEVerseTwo = \lyricmode {
%  \set stanza = "2."
  % Lyrics follow here.
  dar -- um dass nun und nim -- mer -- mehr
  uns rüh -- ren kann kein Scha -- de.  
}

scoreEVerseThree = \lyricmode {
%  \set stanza = "3."
  % Lyrics follow here.
  Ein Wohl -- ge -- fall -- en Gott an uns hat;
  nun ist groß Fried ohn Un -- ter -- lass,
  all Fehd hat nun ein En -- de.   
}

scoreEVerseFour = \lyricmode {
  \set stanza = "4."
  % Lyrics follow here.
  
}

scoreEVerseFive = \lyricmode {
  \set stanza = "5."
  % Lyrics follow here.
  
}

claveE = {\new DrumStaff <<
  \drummode {\globalE
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
         hh4 cl cl hh cl 
%        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
    } \\ {
      bd4 sn sn sn sn
    } >>
  }
>>
}

scoreE = \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \repeat vota 2 {\scoreESoprano} \new Voice = "sopranoB" {\scoreESopranoB} }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreEAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreEVerseOne
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreEVerseTwo
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "sopranoB" \scoreEVerseThree
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreEVerseFour
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreEVerseFive
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreETenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \repeat volta 2 {\scoreEBass} \scoreEBassB }
      >>
    >>

\bookpart {
\header {
  subtitle = "Allein Gott in der Höh sei Ehr"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "NN"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "GL 170"
}
  \score {
%    {
%      \claveE
      \scoreE
%    }
    \layout { }
%    \midi { }
  }
  \markup {
  \wordwrap-string "
2) Wir loben, preisn, anbeten dich;
für deine Ehr wir danken,
dass du, Gott Vater, ewiglich
regierst ohn alles Wanken.
Ganz ungemessn ist deine Macht,
allzeit geschieht, was du bedacht.
Wohl uns solch eines Herren!

3) O Jesu Christ, Sohn eingeborn
des allerhöchsten Vaters,
Versöhner derer, die verlorn,
du Stiller unsers Haders,
Lamm Gottes, heilger Herr und Gott:
nimm an die Bitt aus unsrer Not,
erbarm dich unser aller.

4) O Heilger Geist, du höchstes Gut,
du allerheilsamst' Tröster:
vor Teufels G'walt fortan behüt,
die Jesus Christ erlöset
durch große Mart'r und bittern Tod;
abwend all unsern Jamm'r und Not!
Darauf wir uns verlassen.
"
}
  \score {
    \unfoldRepeats {
    {
      \claveE
      \scoreE
    }
    }
%    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalF = {
  \key d \major
  \time 3/2
  \tempo "Andante" 4=100
}

scoreFSoprano = \relative c'' {
  \globalF
  % Music follows here.
  \partial 2
  fs,2|
  b b a4 fs|
  g2 fs e|
  fs4 d b( cs) d2|
  e1\breathe fs2|
  b b a4 fs|
  g2 fs e|
  fs4 d b( cs) d2|
  \time 2/2 e2 r4 e|
  \time 3/2 e fs g2 fs|
  \time 2/2 e e4 b'|
  \time 3/2 cs d cs2 b4( a)|
  b1\breathe fs2|
  b a g4 fs|
  \time 2/2 e( d) e fs|
  \time 3/2 d2 b e4 e|
  fs1|
  \bar "|."
}

scoreFAlto = \relative c' {
  \globalF
  % Music follows here.
  
}

scoreFTenor = \relative c' {
  \globalF
  % Music follows here.
  
}

scoreFBass = \relative c {
  \globalF
  % Music follows here.
  \partial 2
  fs2|
  b, d fs4 g|
  b,2 b e|
  d4 b g2 b|
  e1\breathe d2|
  g, b fs'|
  g, d' e|
  d4 b e2 d|
  a r4 a|
  e' d c2 d|
  e a,4 gs|
  a d e2 fs|
  b,1\breathe a2|
  g fs g4 d'|
  a2 4 fs|
  b2. a4 g2|
  fs1|
  \bar "|."
}

scoreFVerseOne = \lyricmode {
%  \set stanza = "1."
  % Lyrics follow here.
  Die Nacht ist vor -- ge -- drun -- gen,
  der Tag ist nicht mehr fern!
  So sei nun Lob ge -- sun -- gen
  dem hel -- len Mor -- gen -- stern!
  Auch wer zur Nacht ge -- wei -- net,
  der stim -- me froh mit ein.
  Der Mor -- gen -- stern be -- schei -- net
  auch dei -- ne Angst und Pein.
}

scoreFVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  
}

scoreFVerseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  
}

scoreFVerseFour = \lyricmode {
  \set stanza = "4."
  % Lyrics follow here.
  
}

scoreFVerseFive = \lyricmode {
  \set stanza = "5."
  % Lyrics follow here.
  
}

claveF = {\new DrumStaff <<
  \drummode {\globalF
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
         hh4 cl hh cl
%        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
    } \\ {
      bd4 sn sn sn
    } >>
  }
>>
}

scoreF = \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreFSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreFAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreFVerseOne
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreFVerseTwo
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreFVerseThree
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreFVerseFour
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreFVerseFive
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreFTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreFBass }
      >>
    >>

\bookpart {
\header {
  subtitle = "Die Nacht ist vorgedrungen"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "NN"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "GL 220"
}
  \score {
%    {
%      \claveF
      \scoreF
%    }
    \layout { }
%    \midi { }
  }
  \markup {
    \wordwrap-string "
2) Dem alle Engel dienen,
wird nun ein Kind und Knecht.
Gott selber ist erschienen
zur Sühne für sein Recht.
Wer schuldig ist auf Erden,
verhüll nicht mehr sein Haupt.
Er soll errettet werden,
wenn er dem Kinde glaubt.

3) Die Nacht ist schon im Schwinden,
macht euch zum Stalle auf!
Ihr sollt das Heil dort finden,
das aller Zeiten Lauf
von Anfang an verkündet,
seit eure Schuld geschah.
Nun hat sich euch verbündet,
den Gott selbst ausersah.

4) Noch manche Nacht wird fallen
auf Menschenleid und -schuld.
Doch wandert nun mit allen
der Stern der Gotteshuld.
Beglänzt von seinem Lichte,
hält euch kein Dunkel mehr,
von Gottes Angesichte
kam euch die Rettung her.

5) Gott will im Dunkel wohnen
und hat es doch erhellt.
Als wollte er belohnen,
so richtet er die Welt.
Der sich den Erdkreis baute,
der lässt den Sünder nicht.
Wer hier dem Sohn vertraute,
kommt dort aus dem Gericht."
  }
  \score {
    {
      \claveF
      \scoreF
    }
%    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalG = {
  \key c \major
  \time 3/1
  \tempo "Andante" 4=100
}

scoreGSoprano = \relative c'' {
  \globalG
  % Music follows here.
  \partial 4
  d,4|
  d2 d4 e2 e4 f( g a) a2\breathe a4 g2 g4 d2 e4|
  \time 2/1 f2 r4 f|
  \time 3/1 a c d d c8( bf a g) f4\breathe g a g f e d2.
  \bar "|."
}

scoreGAlto = \relative c' {
  \globalG
  % Music follows here.
  
}

scoreGTenor = \relative c' {
  \globalG
  % Music follows here.
  
}

scoreGBass = \relative c {
  \globalG
  % Music follows here.
  d4|
  d2. c bf a2\breathe d4 bf2 c4 bf a g|
  f2 r4
  f'
  d a bf b c cs d c f, g a2 b2.
}

scoreGVerseOne = \lyricmode {
%  \set stanza = "1."
  % Lyrics follow here.
  Es kommt ein Schiff, ge -- la -- den
  bis an sein' höchs -- ten Bord,
  trägt Got -- tes Sohn voll Gna -- den,
  des Va -- ters e -- wigs Wort. 
}

scoreGVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  
}

scoreGVerseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  
}

scoreGVerseFour = \lyricmode {
  \set stanza = "4."
  % Lyrics follow here.
  
}

scoreGVerseFive = \lyricmode {
  \set stanza = "5."
  % Lyrics follow here.
  
}

claveG = {\new DrumStaff <<
  \drummode {\globalG
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
         hh4 cl hh cl hh cl hh cl hh cl hh
%        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
    } \\ {
      bd4 sn sn sn sn sn sn sn sn sn sn
    } >>
  }
>>
}

scoreG = \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreGSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreGAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreGVerseOne
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreGVerseTwo
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreGVerseThree
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreGVerseFour
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreGVerseFive
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreGTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreGBass }
      >>
    >>

\bookpart {
\header {
  subtitle = "Es kommt ein Schiff geladen"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "NN"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "GL 236"
}
  \score {
%    {
%      \claveG
      \scoreG
%    }
    \layout { }
%    \midi { }
  }
  \markup {
    \wordwrap-string "
2) Das Schiff geht still im Triebe,
es trägt ein teure Last;
das Segel ist die Liebe,
der Heilig Geist der Mast.

3) Der Anker haft' auf Erden,
da ist das Schiff am Land.
Das Wort will Fleisch uns werden,
der Sohn ist uns gesandt.

4) Zu Bethlehem geboren
im Stall ein Kindelein,
gibt sich für uns verloren;
gelobet muss es sein.

5) Und wer dies Kind mit Freuden
umfangen, küssen will,
muss vorher mit ihm leiden
groß Pein und Marter viel,

6) danach mit ihm auch sterben
und geistlich auferstehn,
das ewig Leben erben,
wie an ihm ist geschehn."
  }
  \score {
    {
      \claveG
      \scoreG
    }
%    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalH = {
  \key c \major
  \time 2/1
  \tempo "Andante" 4=100
}

scoreHSoprano = \relative c'' {
  \globalH
  % Music follows here.
  c4 b a b g a b c\breathe c c g g e g f e e a a g b c a g\breathe
  c b a g g f8 e d4 c2
  \bar "|."
}

scoreHAlto = \relative c' {
  \globalH
  % Music follows here.
  
}

scoreHTenor = \relative c' {
  \globalH
  % Music follows here.
  
}

scoreHBass = \relative c {
  \globalH
  % Music follows here.
  c4 g' fs g e fs d c\breathe
  c e g b, a e f c' a f fs g gs a d g,\breathe
  e g a b cs d8 e g4 c,2
}

scoreHVerse = \lyricmode {
  % Lyrics follow here.
  Vom Him -- mel hoch da komm ich her,
  ich bring euch gu -- te neu -- e Mär;
  der gu -- ten Mär bring ich so viel,
  da -- von ich sin -- gen und sa -- gen will.
}

claveH = {\new DrumStaff <<
  \drummode {\globalH
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
         hh4 cl hh cl hh cl hh cl
%        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
    } \\ {
      bd4 sn sn sn sn sn sn sn
    } >>
  }
>>
}

scoreH = \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreHSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreHAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreHVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreHTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreHBass }
      >>
    >>

\bookpart {
\header {
  subtitle = "Vom Himmel hoch"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "NN"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "GL 237"
}
  \score {
%    {
%      \claveH
      \scoreH
%    }
    \layout { }
%    \midi { }
  }
    \markup {
      \wordwrap-string "
2) Euch ist ein Kindlein heut geborn
von einer Jungfrau auserkorn,
ein Kindelein so zart und fein,
das soll eu'r Freud und Wonne sein.

3) Es ist der Herr Christ, unser Gott,
der will euch führn aus aller Not,
er will euer Heiland selber sein,
von allen Sünden machen rein.

4) Er bringt euch alle Seligkeit,
die Gott der Vater hat bereit',
dass ihr mit uns im Himmelreich
sollt leben nun und ewiglich.

5) So merket nun das Zeichen recht:
die Krippe, Windelein so schlecht,
da findet ihr das Kind gelegt,
das alle Welt erhält und trägt.

6) Des lasst uns alle fröhlich sein
und mit den Hirten gehn hinein,
zu sehn, was Gott uns hat beschert,
mit seinem lieben Sohn verehrt.

7) Merk auf, mein Herz, und sieh dorthin;
was liegt doch in dem Krippelein?
Wes ist das schöne Kindelein?
Es ist das liebe Jesulein.

8) Sei mir willkommen, edler Gast!
Den Sünder nicht verschmähet hast
und kommst ins Elend her zu mir:
wie soll ich immer danken dir?

9) Ach Herr, du Schöpfer aller Ding,
wie bist du worden so gering,
dass du da liegst auf dürrem Gras,
davon ein Rind und Esel aß!

10) Und wär die Welt vielmal so weit,
von Edelstein und Gold bereit',
so wär sie doch dir viel zu klein,
zu sein ein enges Wiegelein.

11) Der Sammet und die Seiden dein,
das ist grob Heu und Windelein,
darauf du König groß und reich
herprangst, als wär's dein Himmelreich.

12) Das hat also gefallen dir,
die Wahrheit anzuzeigen mir,
wie aller Welt Macht, Ehr und Gut
vor dir nichts gilt, nichts hilft noch tut.

13) Ach mein herzliebes Jesulein,
mach dir ein rein sanft Bettelein,
zu ruhen in meins Herzens Schrein,
dass ich nimmer vergesse dein.

14) Davon ich allzeit fröhlich sei,
zu springen, singen immer frei
das rechte Susaninne schön,
mit Herzenslust den süßen Ton.

15) Lob, Ehr sei Gott im höchsten Thron,
der uns schenkt seinen ein'gen Sohn.
Des freuet sich der Engel Schar
und singet uns solch neues Jahr."
    }
  \score {
    {
      \claveH
      \scoreH
    }
%    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalI = {
  \key d \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreISoprano = \relative c'' {
  \globalI
  % Music follows here.
  a2 b|
  a4. g8 fs4( g)|
  a2 b|
  a4. g8 fs4( g)\breathe
  a2 a|
  b cs4 d|
  cs2 b|
  a1\breathe
  e4.( fs8) e4 fs|
  g4.( a8) g2|
  fs4.( g8) fs4 g|
  a4.( b8) a2|\breathe
  d4( c) b( a)|
  d b a g|
  fs2 e|
  d1
  \bar "|."
}

scoreIAlto = \relative c' {
  \globalI
  % Music follows here.
  
}

scoreITenor = \relative c' {
  \globalI
  % Music follows here.
  
}

scoreIBass = \relative c {
  \globalI
  % Music follows here.
  d2 g,|
  d' d,|
  d' g,|
  d' d,|\breathe
  d' c|
  e a,4 d|
  e2 e,2|
  a1\breathe|
  a'2 a,|
  a'2. e4|
  d2 d,|
  d'2. d,4|\breathe
  b' fs g2|
  fs4 g ds' e|
  fs g a a,|
  d1
}

scoreIVerse = \lyricmode {
  % Lyrics follow here.
  Oh du fröh -- li -- che, o du se -- li -- ge,
  gna -- den -- brin -- gen -- de Weih -- nachts -- zeit!
  Welt ging ver -- lo -- ren, Christ ist ge -- bo -- ren:
  Freu -- e, freu -- e dich, o Chris -- ten -- heit!
}

claveI = {\new DrumStaff <<
  \drummode {\globalI
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
         hh8 cl hh cl hh cl hh cl
%        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
    } \\ {
      bd4 sn sn sn
    } >>
  }
>>
}

scoreI = \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreISoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreIAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreIVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreITenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreIBass }
      >>
    >>

\bookpart {
\header {
  subtitle = "O du fröhliche"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "NN"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "GL 238"
}
  \score {
%    {
%      \claveI
      \scoreI
%    }
    \layout { }
%    \midi { }
  }
  \markup {
    \wordwrap-string "
2) Oh du fröhliche, o du selige,
gnadenbringende Weihnachtszeit!
Christ ist erschienen, uns zu versühnen:
Freue, freue dich, o Christenheit!

3) Oh du fröhliche, o du selige,
gnadenbringende Weihnachtszeit!
Himmlische Heere jauchzen dir Ehre:
Freue, freue dich, o Christenheit!
"
  }
  \score {
    {
      \claveI
      \scoreI
    }
%    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalJ = {
  \key f \major
  \time 2/2
  \tempo "Andante" 4=100
}

scoreJSoprano = \relative c'' {
  \globalJ
  % Music follows here.
  \partial 4
  f,4|
  f2 c4 f|
  g2 c,|
  a'4 g a bf|
  a2 g4\breathe f|
  f2 e4 d|
  e( f) g a8( f)|
  e2( d4.) c8|
  c2. r4|
  c'2 bf4 a|
  bf2 a|
  g4 a f g|
  e( d) c\breathe f|
  f e f g|
  f2 c4 a'|
  a g a b|
  a2 g4\breathe c|
  b a g f|
  e2 f4( b)|
  a2( g4.) f8|
  f2 r4|
  \bar "|."
}

scoreJAlto = \relative c' {
  \globalJ
  % Music follows here.
  
}

scoreJTenor = \relative c' {
  \globalJ
  % Music follows here.
  
}

scoreJBass = \relative c {
  \globalJ
  % Music follows here.
  f4|
  f, g a f|
  c'2 e,|
  f4 e f g|
  a b c\breathe a|
  d2 c4 b|
  c d e f|
  g2 g,|
  c2. r4|
  a2 d|
  bf f'|
  e4 a, d b|
  c2.\breathe f,8 g|
  a4 bf a e|
  f2. f'8 e|
  f4 e d2|
  c4 b c fs,|
  g a bf b|
  c cs d g,|
  a4. bf8 c4 c,|
  f2 r4
}

scoreJVerse = \lyricmode {
  % Lyrics follow here.
  A -- des -- te fi -- de -- les
  lae -- ti tri -- um -- phan -- tes,
  Ve -- ni -- te, ve -- ni -- te
  in Beth -- le -- hem.
  Na -- tum vi -- de -- te
  Re -- gem an -- ge -- lo -- rum.
  Ve -- ni -- te ad -- o -- re -- mus,
  ve -- ni -- te ad -- o -- re -- mus,
  ve -- ni -- te ad -- o -- re -- mus
  Do -- mi -- num.
}

claveJ = {\new DrumStaff <<
  \drummode {\globalJ
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
         hh8 cl hh cl hh cl
%        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
    } \\ {
      bd4 sn sn
    } >>
  }
>>
}

scoreJ = \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreJSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreJAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreJVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreJTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreJBass }
      >>
    >>

\bookpart {
\header {
  subtitle = "Adeste fideles"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "NN"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "GL 242"
}
  \score {
%    {
%      \claveJ
      \scoreJ
%    }
    \layout { }
%    \midi { }
  }
  \markup {
    \wordwrap-string "
2. Deum de Deo,
lumen de lumine,
Gestant
puellae viscera.
Deum verum,
genitum non factum.
Venite adoremus
Dominum.

Cantet nunc 'Io'
chorus angelorum;
Cantet nunc
aula caelestium,
Gloria!
Soli Deo Gloria!
Venite adoremus
Dominum.

Ergo qui natus
die hodierna,
Jesu,
tibi sit gloria,
Patris aeterni
Verbum caro factum.
Venite adoremus
Dominum."
  }
  \score {
    {
      \claveJ
      \scoreJ
    }
%    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalK = {
  \key ef \major
  \time 2/2
  \tempo "Andante" 4=100
}

scoreKSoprano = \relative c'' {
  \globalK
  % Music follows here.
  bf2 4 4 c bf bf2 g\breathe 
  af g4 f2 ef d4 ef2 r
  bf' bf4 bf c bf bf2 g\breathe
  af g4 f2 ef d4 ef2 r4 g f d ef c bf2
  r4 bf' bf bf c bf bf2 g\breathe
  af g4 f2 ef2 d4  ef1
  \bar "|."
}

scoreKAlto = \relative c' {
  \globalK
  % Music follows here.
  
}

scoreKTenor = \relative c' {
  \globalK
  % Music follows here.
}  
  
scoreKBass = \relative c {
  \globalK
  % Music follows here.
  ef2 4 4 af, ef' bf2 c\breathe
  af ef'4 bf c af bf2 ef, r2 ef' ef4 ef
  af, ef' bf2 c\breathe af ef'4 bf c af bf2 ef, r4
  ef' f g ef f bf,2 r4
  bf d ef af, ef' bf2 c\breathe
  f, g4 af bf2 bf ef,1
}

scoreKVerse = \lyricmode {
  % Lyrics follow here.
  Es ist ein Ros/Reis ent -- sprun -- gen
  aus ei -- ner Wur -- zel zart,
  wie uns die Al -- ten sun -- gen,
  von Jes -- se kam die Art
  und hat ein Blüm -- lein bracht
  mit -- ten im kal -- ten Win -- ter
  wohl zu der hal -- ben Nacht.
}

claveK = {\new DrumStaff <<
  \drummode {\globalK
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
         hh8 cl cl cl hh cl cl cl
%        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
    } \\ {
      bd4 sn sn sn
    } >>
  }
>>
}

scoreK = \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreKSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreKAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreKVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreKTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreKBass }
      >>
    >>

\bookpart {
\header {
  subtitle = "Es ist ein Ros entsprungen"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "NN"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "GL 243"
}
  \score {
%    {
%      \claveK
      \scoreK
%    }
    \layout { }
%    \midi { }
  }
  \markup {
    \wordwrap-string "
2) Das Blümlein, das ich meine,
davon Jesaja sagt,
hat uns gebracht alleine
Marie, die reine Magd;
aus Gottes ewgem Rat
hat sie ein Kind geboren,
welches uns selig macht.

2) Strophe (katholische Fassung):
Das Röslein, das ich meine,
davon Jesaja sagt,
ist Maria, die Reine,
die uns das Blümlein bracht.
Aus Gottes ewgem Rat
hat sie ein Kind geboren
und bleibt doch reine Magd.

3) Das Blümelein so kleine,
das duftet uns so süß;
mit seinem hellen Scheine
vertreibt's die Finsternis.
Wahr' Mensch und wahrer Gott,
hilft uns aus allem Leide,
rettet von Sünd und Tod.

4) O Jesu, bis zum Scheiden
aus diesem Jammertal
lass dein Hilf uns geleiten
hin in den Freudensaal,
in deines Vaters Reich,
da wir dich ewig loben;
o Gott, uns das verleih!
"
  }
  \score {
    {
      \claveK
      \scoreK
    }
%    \layout { }
    \midi { }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

globalL = {
  \key ef \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreLSoprano = \relative c'' {
  \globalL
  % Music follows here.
  \partial 4
  ef,4|
  bf' bf bf bf|
  c bf8( af) g4 g|
  af bf c c|
  bf2 r4 bf|
  bf bf bf g|
  bf af8( g) f4 bf|
  g f8( ef) f4 f|
  ef2\breathe g|
  bf4 af8( g) f4 f|
  ef2.|
  \bar "|."
}

scoreLAlto = \relative c' {
  \globalL
  % Music follows here.
  
}

scoreLTenor = \relative c' {
  \globalL
  % Music follows here.
  
}

scoreLBass = \relative c {
  \globalL
  % Music follows here.
  ef4|
  d bf ef g,|
  af bf ef c|
  f g ef f|
  bf,2 r4 d|
  ef bf ef ef,|
  g af bf d|
  ef c af bf|
  c2\breathe c|
  g4 af bf2|
  ef,2.
  
}

scoreLVerse = \lyricmode {
  % Lyrics follow here.
  Lobt Gott, ihr Chris -- ten al -- le gleich,
  in sei -- nem höchs -- ten Thron,
  der heut schließt auf sein Him -- mel -- reich
  und schenkt uns sei -- nen Sohn,
  und schenkt uns sei -- nen Sohn.  
}

claveL = {\new DrumStaff <<
  \drummode {\globalL
   % bd4 sn4
    << {
%      \repeat unfold 16 cl16
%      \repeat unfold 16 hh16
         hh8 cl hh cl hh cl
%        \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl } \tuplet 3/2 { hh8 cl cl }
    } \\ {
      bd4 sn sn
    } >>
  }
>>
}

scoreL = \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreLSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreLAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreLVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreLTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreLBass }
      >>
    >>


\bookpart {
\header {
  subtitle = "Lobt Gott, ihr Christen alle gleich"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "NN"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "GL 247"
}
  \score {
%    {
%      \claveL
      \scoreL
%    }
    \layout { }
%    \midi { }
  }
  \markup {
    \wordwrap-string "
2) Er kommt aus seines Vaters Schoß
und wird ein Kindlein klein,
er liegt dort elend, nackt und bloß
in einem Krippelein,
in einem Krippelein.

3) Er entäußert sich all seiner G'walt,
wird niedrig und gering
und nimmt an eines Knechts Gestalt,
der Schöpfer aller Ding,
der Schöpfer aller Ding.

4) Er wechselt mit uns wunderlich:
Fleisch und Blut nimmt er an
und gibt uns in seins Vaters Reich
die klare Gottheit dran,
die klare Gottheit dran.

5) Er wird ein Knecht und ich ein Herr;
das mag ein Wechsel sein!
Wie könnt es doch sein freundlicher,
das herze Jesulein,
das herze Jesulein!

6) Heut schließt er wieder auf die Tür
zum schönen Paradeis;
der Cherub steht nicht mehr dafür.
Gott sei Lob, Ehr und Preis,
Gott sei Lob, Ehr und Preis!"
  }
  \score {
    {
      \claveL
      \scoreL
    }
%    \layout { }
    \midi { }
  }
}

scoreMSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreMAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreMTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreMBass = \relative c {
  \global
  % Music follows here.
  
}

scoreMVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreMSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreMAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreMVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreMTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreMBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

scoreNSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreNAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreNTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreNBass = \relative c {
  \global
  % Music follows here.
  
}

scoreNVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreNSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreNAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreNVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreNTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreNBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

scoreOSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreOAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreOTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreOBass = \relative c {
  \global
  % Music follows here.
  
}

scoreOVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreOSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreOAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreOVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreOTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreOBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

scorePSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scorePAlto = \relative c' {
  \global
  % Music follows here.
  
}

scorePTenor = \relative c' {
  \global
  % Music follows here.
  
}

scorePBass = \relative c {
  \global
  % Music follows here.
  
}

scorePVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scorePSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scorePAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scorePVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scorePTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scorePBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

scoreQSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreQAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreQTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreQBass = \relative c {
  \global
  % Music follows here.
  
}

scoreQVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreQSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreQAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreQVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreQTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreQBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

scoreRSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreRAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreRTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreRBass = \relative c {
  \global
  % Music follows here.
  
}

scoreRVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreRSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreRAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreRVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreRTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreRBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

scoreSSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreSAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreSTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreSBass = \relative c {
  \global
  % Music follows here.
  
}

scoreSVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreSSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreSAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreSVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreSTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreSBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

scoreTSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreTAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreTTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreTBass = \relative c {
  \global
  % Music follows here.
  
}

scoreTVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreTSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreTAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreTVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreTTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreTBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

scoreUSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreUAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreUTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreUBass = \relative c {
  \global
  % Music follows here.
  
}

scoreUVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreUSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreUAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreUVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreUTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreUBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

scoreVSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreVAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreVTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreVBass = \relative c {
  \global
  % Music follows here.
  
}

scoreVVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreVSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreVAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreVVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreVTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreVBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

scoreWSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreWAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreWTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreWBass = \relative c {
  \global
  % Music follows here.
  
}

scoreWVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreWSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreWAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreWVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreWTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreWBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

scoreXSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreXAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreXTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreXBass = \relative c {
  \global
  % Music follows here.
  
}

scoreXVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreXSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreXAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreXVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreXTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreXBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

scoreYSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreYAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreYTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreYBass = \relative c {
  \global
  % Music follows here.
  
}

scoreYVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreYSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreYAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreYVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreYTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreYBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

scoreZSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreZAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreZTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreZBass = \relative c {
  \global
  % Music follows here.
  
}

scoreZVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreZSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreZAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreZVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreZTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreZBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

scoreAASoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreAAAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreAATenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreAABass = \relative c {
  \global
  % Music follows here.
  
}

scoreAAVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreAASoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreAAAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreAAVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreAATenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreAABass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

scoreABSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreABAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreABTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreABBass = \relative c {
  \global
  % Music follows here.
  
}

scoreABVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreABSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreABAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreABVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreABTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreABBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

scoreACSoprano = \relative c'' {
  \global
  % Music follows here.
  
}

scoreACAlto = \relative c' {
  \global
  % Music follows here.
  
}

scoreACTenor = \relative c' {
  \global
  % Music follows here.
  
}

scoreACBass = \relative c {
  \global
  % Music follows here.
  
}

scoreACVerse = \lyricmode {
  % Lyrics follow here.
  
}

\bookpart {
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreACSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreACAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreACVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreACTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreACBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}

globalAD = {
  \key f \major
  \time 4/4
  \tempo "Andante" 4=100
}

scoreADSoprano = \relative c'' {
  \globalAD
  % Music follows here.
  a2 g4 f|
  f4. d8 d2|
  c f4 a|
  g2. r4|
  a2 g4 f|
  f4. d8 d2|
  c4( f) e g|
  f2. r4|
  c'2 d4 c|
  c4. a8 c2|
  c d4 c|
  c4. a8 g2\breathe
  a g4 f|
  f4. d8 d2|
  c4( f) e g|
  f1
  \bar "|."
}

scoreADAlto = \relative c' {
  \globalAD
  % Music follows here.
  c2 bf4 a|
  d4. bf8 bf2|
  
}

scoreADTenor = \relative c' {
  \globalAD
  % Music follows here.
  f,2 e4 f|
  bf4. f8 f2|
  a f|
  e2. r4|
  f2 e4 f|
  bf4. f8 f2
}

scoreADBass = \relative c {
  \globalAD
  % Music follows here.
  f2 c4 d|
  bf2 bf|
  f a4 f|
  c'2. r4|
  f2 c4 d|
  bf 2 bf|
  c c|
  f,2. r4|
  f'2 f|
  f f|
  f bf,4 f'|
  e4. f8 c2 \breathe
  f e4 f|
  bf,2 bf|
  c c|
  f,1
  \bar "|."
  
}

scoreADVerse = \lyricmode {
  % Lyrics follow here.
  Nä -- her, mein Gott, zu dir, nä -- her zu dir!
  Drückt mich auch Kum -- mer hier, dro -- het man mir,
  soll doch trotz Kreuz und Pein dies mei -- ne Lo -- sung sein:
  Nä -- her, mein Gott, zu dir, nä -- her zu dir.
  
%   2) Bricht mir, wie Ja -- kob dort, Nacht auch her -- ein,
%   find ich zum Ruheort nur einen Stein;
%   ist selbst im Trau -- me hier mein Seh -- nen für und für:
%   Nä -- her, mein Gott, zu dir, nä -- her zu dir!
%   
%   3) Geht auch die schma -- le Bahn auf -- wärts gar steil,
%   führt sie doch him -- mel -- an zu mei -- nem Heil.
%   En -- gel, so licht und schön, win -- ken aus sel -- gen Höhn:
%   Nä -- her, mein Gott, zu dir, nä -- her zu dir.
%   
%   4) Ist dann die Nacht vor -- bei, leuch -- tet die Sonn,
%   weih ich mich dir aufs neu vor dei -- nem Thron;
%   baue mein Be -- thel dir und jauchz mit Freu -- den hier:
%   Nä -- her, mein Gott, zu dir, nä -- her zu dir!
%   
%   5) Ist mir auch ganz ver -- hüllt dein Weg all -- hier,
%   wird nur mein Wunsch er -- füllt: Nä -- her zu dir!
%   Schließt dann mein Pil -- ger -- lauf, schwing ich mich freu -- dig auf:
%   Nä -- her, mein Gott, zu dir, nä -- her zu dir!  
}

\bookpart {
\header {
  subtitle = "Näher, mein Gott zu dir"
  subsubtitle = "NN"
  instrument = "NN"
  composer = "NN"
  arranger = "NN"
  poet = "NN"
  meter = "NN"
  piece = "NN"
  opus = "GL 502"
}
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Sopran" "Alt" }
        shortInstrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreADSoprano }
        \new Voice = "alto" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreADAlto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \scoreADVerse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
        shortInstrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" \with {
          \consists "Ambitus_engraver"
        } { \voiceOne \scoreADTenor }
        \new Voice = "bass" \with {
          \consists "Ambitus_engraver"
          \override Ambitus #'X-offset = #2.0
        } { \voiceTwo \scoreADBass }
      >>
    >>
    \layout { }
    \midi { }
  }
}
