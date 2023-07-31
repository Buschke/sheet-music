\version "2.22.2"

\header {
  title = "Wachet auf ruft uns die Stimme"
  composer = "Sven Buschke"
  subtitle = "Gotteslob"
  opus = "GL 554"
}

pieceSettings = {
  \key bes \major
  \time 2/2
}

melody = \relative c' {\pieceSettings
  bes2 d f2. f4 f f g( f g2)
  
}

sopran = \relative c' {\pieceSettings
  e
}

alt = \relative c' {\pieceSettings
  e c
}

tenor = \relative c {\pieceSettings
  c
}

bass = \relative c {\pieceSettings
  g
}

pedal = \relative c {\pieceSettings
  a
}

sheetmusic = {
  <<
  \new Staff { \new Voice { \melody }}
  \new StaffGroup <<
  \new PianoStaff = "ch" <<
    \new Staff = "sa" {
    <<
      \new Voice { \sopran }
      \new Voice { \alt }
    >>}
    \new Staff = "tb" {\clef bass
      <<
      \new Voice { \tenor }
      \new Voice { \bass }
      >>
    }
  >>
  \new Staff = "pd" {\clef bass
                     \new Voice { \pedal }
  }
  >>
  >>
}

\score {
  \sheetmusic
  \layout {}
}