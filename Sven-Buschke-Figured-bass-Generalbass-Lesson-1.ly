\version "2.22.1"
\header {
  title = "Figured bass (Generalbass) Lesson # 1"
  subtitle = "Basic Pattern"
  composer = "Sven Buschke"
  tagline = #f
}
\score {
<<
  \new Voice {
    \clef bass
    dis4 c d ais
    g fis e a
    r gis d b,
    f,! e c c
    c1
  }
  \figures {
    < 6 >4 < 7\+ >8 < 6+ [_!] >
    < 6 >4 <6 5 [3+] >
    < _ >4 < 6 5/>4
    <4- 6+ 7!> <5++> <3--> <7/> r <6\+ 5/>
    < [4 6] 8 [_! 12] >
    < 5 \markup { \tiny \number 6 \super (1) } >
    \set useBassFigureExtenders = ##t
    <4 6> <3 6> <3 7>
  }
>>
  \layout {}
  \midi {}
}