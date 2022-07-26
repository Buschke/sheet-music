\version "2.22.2"

\header {
  title = "Polonaise No. 3"
  subtitle = "Military Polonaise"
  composer = "Frederic Chopin"
  opus = "Op. 40 No. 1"
}

settings = {
  \key a \major
  \time 3/4
  \tempo "Allegro con brio" 4 = 96
}

rh_one = {
  <a cis a'>8\f r16 <cis e>-2-3 <cis e>8-2-4 r16 <cis e>16-.\<-2-3 <d fis>-.-1-4 <d gis>-.-1-2 <d a'>-.-3 <d b'>-.-4%1
  <cis cis'>8.->\f-5( <cis a'>16-3) <cis a'>8-.-4 \tuplet 3/2 { gis16\>-2( a-1 b-4 } a8-.\f-3) e-.-2 %2
  <cis' cis'>8 r16 <cis a'> <cis a'>8 r16 <cis gis'>\< <cis a'> <cis gis' a> <cis a' cis> <d a' d> %3
  <dis a' fis'>8.->\f <e a e'>16 <e a e'>8 \tuplet 3/2 { gis,16\> a b } a8-.\f e-.%4
  <cis'' eis cis'>\sfz \tuplet 3/2 { <gis cis gis'>16 <gis cis gis'> <gis cis gis'> } <gis cis gis'>8 <gis cis gis'> <ais dis ais'>16 <c c'> <cis gis' cis> <dis dis'>%5
  <f cis' f>8. <cis cis'>16 <cis cis'>8 <cis cis'>16 <cis cis'> <cis cis'> <cis cis'> <cis cis'> <cis cis'>%6
  <cis cis'>8 <b fis' b>16. <b fis' b>32 <b fis' b>8 <cis cis'> <e cis' e> <d d'>16 <cis cis'>%7
  <b b'>8 <b e b'>16. <cis cis'>32 <b e b'>4 <a a'>8 r%8
}

lh_one = {
  <a, a'>8\sustainOn r16 <a' e' a>16 <a e' a>8 r16 \sustainOff <a e' a>16-. <a e' a>-. <a e' a>-. <a e' a>-. <a e' a>-. %1
  <a e' a>8.\sustainOn <a e' a>16 <a e' a>8-.\sustainOff \tuplet 3/2 { gis16 a b } a8-. e-. %2
  <a, a'>\sustainOn r16 <a' e' a> <a e' a>8 r16\sustainOff <a e' a> <a e' a> <a e' a> <a e' a> <a e' a>%3
  <a, dis fis c'>8. <e' a cis>16 <e a cis>8 \tuplet 3/2 { gis,16 a b } a8 e%4
  <gis, gis'> \tuplet 3/2 { <f'' gis cis f>16 <f gis cis f> <f gis cis f> } <f gis cis f>8 <f gis cis f> <fis gis c dis> <gis,, gis'>%5
  <cis, cis'>8. <cis'' cis'>16 <cis cis'>8 <cis cis'>16 <cis cis'> <cis cis'> <cis cis'> <cis cis'> <cis cis'>%6
  <cis cis'>8 <d fis b>16. <d fis b>32 <d fis b>8 <e gis cis> e' d%7
  <e, gis d'> <e gis d' e> <e gis d' e>4 <a cis e>8 r%8
}

% midi count in
clave = {
        \new DrumStaff {
            \drummode {
                sn4 cl cl
            }
        }
    }

righthand = \relative c' {
  \settings
  \repeat volta 2 {
    \rh_one
  }
}

lefthand = \relative c {
  \settings
  \repeat volta 2 {
    \lh_one
  }
}

righthandmidi = \relative c' {
  \settings
  \repeat unfold 2 {
   \rh_one
  }
}

lefthandmidi = \relative c {
  \settings
  \repeat unfold 2 {
    \lh_one
  }
}

sheetmusic = {
  \new PianoStaff {
    <<
      \new Staff = "up" {
        \clef treble
        \righthand
      }
      \new Staff = "down" {
        \clef bass
        \lefthand
      }
    >>
  }
}

midimusic = {
  \new PianoStaff {
    <<
      \new Staff {
        \clef treble
        \righthandmidi
      }
      \new Staff {
        \clef bass
%        \relative c { c4 c c c }
        \lefthandmidi
      }
    >>
  }
}

\score {
  \sheetmusic

  \layout {}
}

\score {
  {
  \clave
  \midimusic
  }
  \midi {}
}