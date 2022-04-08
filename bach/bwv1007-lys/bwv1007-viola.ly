\version "2.18.2"

\include "header.ily"
\header {
  subtitle = "Transposed for viola"
}

\include "bwv1007_prelude.ly"
\include "bwv1007_allemande.ly"
\include "bwv1007_courante.ly"
\include "bwv1007_sarabande.ly"
\include "bwv1007_menuet_i.ly"
\include "bwv1007_menuet_ii.ly"
\include "bwv1007_gigue.ly"

\book {

\score { { \clef "alto" \prelude }
	\layout {  }
	\header { piece = "Prélude" }
	\midi {\tempo 4 = 80}
}
\pageBreak

\score { { \clef "alto" \allemande }
	\layout { system-count = #11 }
	\header { piece = "Allemande" }
	\midi {\tempo 4 = 70}
}
\pageBreak

\score { { \clef "alto" \courante }
	\layout {  }
	\header { piece = "Courante" }
	\midi {\tempo 4 = 80}
}
\pageBreak

\score { { \clef "alto" \sarabande }
	\layout { system-count = #5 }
	\header { piece = "Sarabande" }
	\midi {\tempo 4 = 60}
}

\score { { \clef "alto" \menuetI }
	\layout { system-count = #5 }
	\header { piece = "Menuet 1" }
	\midi {\tempo 2 = 60}
}
\pageBreak

\score { { \clef "alto" \menuetII }
	\layout {  }
	\header { piece = "Menuet 2" }
	\midi {\tempo 2 = 60}
}

\score { { \clef "alto" \gigue }
	\layout {  }
	\header { piece = "Gigue" }
	\midi {\tempo 2 = 60}
}

}
