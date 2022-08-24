\version "2.22.2"

\header {
  title = "Clarinet Tabulator 2"
  subtitle = "https://lsr.di.unimi.it/LSR/Snippet?id=741"
}

%% http://lsr.di.unimi.it/LSR/Item?id=741
%% see also http://www.lilypond.org/doc/v2.18/Documentation/notation/woodwind-diagrams.html

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LSR workaround:
#(set! paper-alist (cons '("snippet" . (cons (* 300 mm) (* 70 mm))) paper-alist))
\paper {
  #(set-paper-size "snippet")
  indent = 0
  tagline = ##f
  ragged-right = ##f
}

\markup\vspace #.5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%here starts the snippet:

%    === clFinger ===
%        by  Bubu
% uncomment those lines for a better output :
%{
#(set-global-staff-size 16)
\paper {
 indent = 0
 system-count = 1
 ragged-right = ##f
}
%}

clFinger = #(define-music-function (cira    cirb    circ    cird    cire    cirf    cirg    keya    keyb    keyc    keyd    twelkey akey    gshakey linea   lineb   linec   cadekey)
 (number? number? number? number? number? number? number? number? number? number? number? number? number? number? number? number? number? number?)

#{ s1*0_\markup {
  \fontsize #-10 {
    \hspace #-0.7
    \right-column {
      \line {\null}
      \line {\with-color #(if (= twelkey 1) black white) \teeny \italic \sub 12}
      \line {\null}
      \combine
      \line {\draw-circle #0.5 #0.15 ##t }
      \line {\with-color #(if (= cira 1) black white) \draw-circle #0.4 #0.15 ##t }
      \line {\null}
      \line {\null}
      \line {\null}
      \line {\teeny \bold \sub $(if (= cadekey 0) "" (if (= cadekey 1) "C 1" (if (= cadekey 2) "C 2" (if (= cadekey 3) "C 3" (if (= cadekey 4) "C 4"
                                (if (= cadekey 12) "C 1,2" (if (= cadekey 13) "C 1,3" (if (= cadekey 14) "C 1,4"
                                (if (= cadekey 23) "C 2,3" (if (= cadekey 24) "C 2,4"
                                (if (= cadekey 34) "C 3,4"
                                (if (= cadekey 123) "C 1,2,3" (if (= cadekey 124) "C 1,2,4" (if (= cadekey 134) "C 1,3,4" (if (= cadekey 234) "C 2,3,4" "")))))))))))))))}
      \line {\null}
      \line {\null}
      \line {\null}
      \line {\null}
      \line {\null}
      \line {\null}
      \line {\override #'(thickness . 3) \with-color #(if (= linec 1) black white) \draw-line #'(1 . 0)}
      \line {\null}
      \line {\null}
      \combine
      \line {
        \filled-box #'(0 . 1.4) #'(0 . 1) #1
        \hspace #-1
        \filled-box #'(0 . 0.8) #'(0 . 1) #0
      }
      \combine
      \translate #'(0.1 . 0.1)
      \line {
        \with-color #(if (= keya 1) black white) \filled-box #'(0 . 1.2) #'(0 . 0.8) #1
        \hspace #-1
        \with-color #(if (= keya 1) black white) \filled-box #'(0 . 0.8) #'(0 . 0.8) #0
      }
      \combine
      \translate #'(0 . -1.1)
      \line {
        \filled-box #'(0 . 1.4) #'(0 . 1) #1
        \hspace #-1
        \filled-box #'(0 . 0.8) #'(0 . 1) #0
      }
      \translate #'(0.1 . -1)
      \line {
        \with-color #(if (= keyc 1) black white) \filled-box #'(0 . 1.2) #'(0 . 0.8) #1
        \hspace #-1
        \with-color #(if (= keyc 1) black white) \filled-box #'(0 . 0.8) #'(0 . 0.8) #0
      }
    }
    \hspace #-0.4
    \center-column {
      \line {\null}
      \line {\with-color #(if (= akey 1) black white) \teeny \bold \sub A}
      \line {\null}
      \combine
      \line {\draw-circle #0.5 #0.15 ##t }
      \line {\with-color #(if (= cirb 1) black white) \draw-circle #0.4 #0.15 ##t }
      \line {\null}
      \combine
      \line {\draw-circle #0.5 #0.15 ##t }
      \line {\with-color #(if (= circ 1) black white) \draw-circle #0.4 #0.15 ##t }
      \line {\null}
      \combine
      \line {\draw-circle #0.5 #0.15 ##t }
      \line {\with-color #(if (= cird 1) black white) \draw-circle #0.4 #0.15 ##t }
      \line {\null}
      \line {\override #'(thickness . 1) \draw-line #'(3 . 0)}
      \line {\null}
      \combine
      \line {\draw-circle #0.5 #0.15 ##t }
      \line {\with-color #(if (= cire 1) black white) \draw-circle #0.4 #0.15 ##t }
      \line {\null}
      \combine
      \line {\draw-circle #0.5 #0.15 ##t }
      \line {\with-color #(if (= cirf 1) black white) \draw-circle #0.4 #0.15 ##t }
      \line {\null}
      \combine
      \line {\draw-circle #0.5 #0.15 ##t }
      \line {\with-color #(if (= cirg 1) black white) \draw-circle #0.4 #0.15 ##t }
      \line {\null}
      \combine
      \line {
        \filled-box #'(0 . 1.4) #'(0 . 1) #1
        \hspace #-1
        \filled-box #'(0 . 0.8) #'(0 . 1) #0
      }
      \combine
      \translate #'(0.1 . 0.1)
      \line {
        \with-color #(if (= keyb 1) black white) \filled-box #'(0 . 1.2) #'(0 . 0.8) #1
        \hspace #-1
        \with-color #(if (= keyb 1) black white) \filled-box #'(0 . 0.8) #'(0 . 0.8) #0
      }
      \combine
      \translate #'(0 . -1.1)
      \line {
        \filled-box #'(0 . 1.4) #'(0 . 1) #1
        \hspace #-1
        \filled-box #'(0 . 0.8) #'(0 . 1) #0
      }
      \translate #'(0.1 . -1)
      \line {
        \with-color #(if (= keyd 1) black white) \filled-box #'(0 . 1.2) #'(0 . 0.8) #1
        \hspace #-1
        \with-color #(if (= keyd 1) black white) \filled-box #'(0 . 0.8) #'(0 . 0.8) #0
      }
    }
    \hspace #-2
    \left-column {
      \line {\null}
      \line {\null}
      \line {\with-color #(if (= gshakey 1) black white) \teeny \sub {\bold G \super \sharp}}
      \line {\null}
      \line {\null}
      \line {\null}
      \line {\override #'(thickness . 3) \with-color #(if (= linea 1) black white) \draw-line #'(1 . 0)}
      \line {\null}
      \line {\override #'(thickness . 3) \with-color #(if (= lineb 1) black white) \draw-line #'(1 . 0)}
    }
  }
} #})

% NOTE : USE THE \include COMMAND FOR BETTER VISIBILITY

\relative c' {
  \textLengthOn
  \clFinger #1 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0
  c16
  \clFinger #0 #1 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0
  c
  \clFinger #0 #0 #1 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0
  c
  \clFinger #0 #0 #0 #1 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0
  c
  \clFinger #0 #0 #0 #0 #1 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0
  c
  \clFinger #0 #0 #0 #0 #0 #1 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0
  c
  \clFinger #0 #0 #0 #0 #0 #0 #1 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0
  c
  \clFinger #0 #0 #0 #0 #0 #0 #0 #1 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0
  c
  \clFinger #0 #0 #0 #0 #0 #0 #0 #0 #1 #0 #0 #0 #0 #0 #0 #0 #0 #0
  c
  \clFinger #0 #0 #0 #0 #0 #0 #0 #0 #0 #1 #0 #0 #0 #0 #0 #0 #0 #0
  c
  \clFinger #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #1 #0 #0 #0 #0 #0 #0 #0
  c
  \clFinger #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #1 #0 #0 #0 #0 #0 #0
  c
  \clFinger #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #1 #0 #0 #0 #0 #0
  c
  \clFinger #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #1 #0 #0 #0 #0
  c
  \clFinger #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #1 #0 #0 #0
  c
  \clFinger #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #1 #0 #0
  c
  \clFinger #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #1 #0
  c
  \clFinger #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #1
  c
  \clFinger #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #3
  c
  \clFinger #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #0 #24
  c
}
