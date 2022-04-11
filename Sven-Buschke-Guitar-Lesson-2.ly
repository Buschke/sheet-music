\version "2.22.1"
\header {
  title = "Guitar Lesson # 2"
  subtitle = "Basic Pattern"
  composer = "Sven Buschke"
  tagline = #f
}

\include "predefined-guitar-fretboards.ly"

myChords = \chordmode {
  c1 c1 \break
  \set chordChanges = ##t
  c1 c1 \break
  c1 c1
}

<<
  \new ChordNames { \myChords }
  \new FretBoards { \myChords }
  \new Staff { \myChords }
>>