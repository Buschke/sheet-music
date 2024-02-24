\version "2.24.3"

#(set-global-staff-size 23)

\new VaticanaScore {
  <<
    \new VaticanaVoice = "cantus" {
      \clef "vaticana-do3"
      % Verse 1 â€” Salve, RegÃ­na
      c\melisma \[d e f g\melismaEnd\]
    }

    \new VaticanaLyrics \lyricsto "cantus" {
      Sal -- ve, Re -- g
    }
  >>
}

\layout {
  ragged-last = ##t
}