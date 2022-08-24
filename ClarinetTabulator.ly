\version "2.11.59"

\header {
  title = "Script for clarinet tabulator"
  author = "Sven Buschke"
}

clarTabScale = #1

#(define postscript-init "
		/ellipsedict 8 dict def
		ellipsedict /mtrx matrix put
		/ellipse
		{ ellipsedict begin
		  /endangle exch def
		  /startangle exch def
		  /yrad exch def
		  /xrad exch def
		  /y exch def
		  /x exch def
		
		  /savematrix mtrx currentmatrix def
		 x y translate
		 xrad yrad scale
		 0 0 1 startangle endangle arc
		 savematrix setmatrix
	   end
	   } def 
	   /LW 0.04 def   LW setlinewidth
	   /H 0 def
	   
	   /S ~a def
	   0 -1.5 S mul translate	  
	   S S scale
	   ")

#(define twelfthKey-str (string-append
		" -1.1 0.8 moveto /("
	  	(ly:font-config-get-font-file "Emmentaler")
		") findfont 1 scalefont setfont
		(12) show"))

#(define losange-str " newpath -1.3 0 moveto -0.8 0.5 lineto -0.3 0 lineto 
	  										 -0.8 -0.5 lineto -1.3 0 lineto closepath ~a ")
#(define circle-str " newpath 0.5 H 0.5 0 360 arc ~a /H -1.3 H add def ")
#(define line-str "  0.15 setlinewidth newpath -0.2 H moveto 1.2 H lineto stroke 
	   				/H -1 H add def LW setlinewidth ")

#(define Rlittle1-str "newpath -0.7 H 0.65 0.32 30 330 ellipse ~a ") % keys low f# and e
#(define Rlittle2-str "1 setgray newpath 0.3 H 0.81 0.48 110 250 ellipse fill 
	   					0 setgray newpath 0.3 H 0.65 0.32 0 360 ellipse ~a ") % keys low f g#

#(define Lfore-a-str " newpath 0.5 1.1 0.25 0.4 0 360 ellipse ~a 
	  					newpath	0.5 1.5 moveto 0.5 1.7 lineto stroke ")
#(define Lfore-gis-str "0.02 setlinewidth
						newpath 0.70 0.82 0.9 28 78 arc 
								0.70 0.82 0.92 78 14 arcn stroke
						LW setlinewidth
						newpath 1.4 0.7 0.25 0.6 0 360 ellipse ~a ")

#(define Llittle-cis-str " -0.6 -0.3 translate 15 rotate
							newpath 1 -3.4 0.5 0.2 0 360 ellipse ~a
							newpath 0.5 -2.43 1 -130 -90 arc stroke	
							 -15 rotate 0.6 0.3 translate ")
#(define Llittle-f-str " 25 rotate newpath 0 -4.2 0.6 0.2 -135 140 ellipse ~a 
									newpath 0 -4.2 0.6 0.2 -135 140 ellipse stroke 
						 -25 rotate ")
#(define Llittle-e-str " 
	1 setgray newpath 1.3 -4.5 0.4 0.7 0 360 ellipse fill 0 setgray
	newpath	1.5 -4.5 moveto 1.5 -6 lineto stroke
	newpath	1.3 -4.5 0.2 0.5 0 260 ellipse stroke
	newpath 1 -5.417 0.5 0 60 arc
	 stroke ")
#(define Llittle-e-filled-str
  (string-append
	 Llittle-e-str
	 " newpath 1.3 -4.5 0.2 0.5 0 360 ellipse fill 
	   newpath 1.3 -5.0 moveto 1.5 -5.3 lineto 1.5 -4.5 lineto closepath fill "
	 ))
#(define Llittle-fis-str " 
	newpath	1.6 -4.9 moveto 1.6 -6 lineto stroke
	newpath	1.8 -4.9 0.2 0.5 -80 180 ellipse stroke
	newpath 2.1 -5.817 0.5 120 180 arc stroke")
#(define Llittle-fis-filled-str
  (string-append
	" newpath	1.8 -4.9 0.2 0.5 0 360 ellipse fill 
	  newpath 1.6 -5 moveto 1.6 -5.7 lineto 2 -5.1 lineto closepath fill "
	 Llittle-fis-str ))

#(define Rfore-str " newpath -0.8 H 0.2 0.1 0 360 ellipse stroke
					 /H 0.3 H add def ")
#(define Rfore-str-filled
   (string-append " newpath -0.8 H 0.2 0.1 0 360 ellipse fill " Rfore-str))

#(define Lring-str " newpath 0.8 -1.95 0.5 0.08 0 360 ellipse  ~a ")
#(define Rring-str " newpath 0.2 -6.85 0.5 0.08 0 360 ellipse  ~a ")

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% The main function %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define-markup-command (clarTab layout props twelfthKey? holes keysByFinger)(boolean? list? list?)
 (let* (
   (finger-note #f)
   (state->string (lambda (fill?)(if fill? "fill" "stroke")))
   (closed? (lambda (n) (memq n holes)))
   (pressed? (lambda (note)(equal? note (cdr finger-note))))
   (s (string-append
	  (begin
		(set! finger-note (assoc "Lfore" keysByFinger))
		(if finger-note
			(string-append
			  (format Lfore-a-str (state->string (pressed? "a")))
			  (format Lfore-gis-str (state->string (or (pressed? "gis")(pressed? "a")))))
			 ""))
	  (if twelfthKey? twelfthKey-str "")
	  (format losange-str (state->string (closed? 0)))
	  (format circle-str (state->string (closed? 1)))
	  (format circle-str (state->string (closed? 2)))
	  (format circle-str (state->string (closed? 3)))
	  line-str
	  (format circle-str (state->string (closed? 4)))
	  (format circle-str (state->string (closed? 5)))
	  (format circle-str (state->string (closed? 6)))
	  (begin
		(set! finger-note (assoc "Rlittle" keysByFinger))
		(if finger-note
			(string-append
				"/H 0.3 H add def "
				(format Rlittle1-str (state->string (pressed? "fis")))
				(format Rlittle2-str (state->string (pressed? "gis")))
				"/H -0.8 H add def "
				(format Rlittle1-str (state->string (pressed? "e")))
				(format Rlittle2-str (state->string (pressed? "f"))))
			 ""))
	 (begin
		(set! finger-note (assoc "Llittle" keysByFinger))
		(if finger-note
			(string-append
				(format Llittle-cis-str (state->string (pressed? "cis")))
				(format Llittle-f-str (state->string (pressed? "f")))
				" 0.11 0.1 translate "
				(if (pressed? "e") Llittle-e-filled-str Llittle-e-str)
				" 0.08 0 translate "
				(if (pressed? "fis") Llittle-fis-filled-str Llittle-fis-str)
				" -0.19 -0.10 translate ")
			 ""))
	(begin
	  (set! finger-note (assoc "Rfore" keysByFinger))
	  (if finger-note
		(string-append
			" /H -4.3 def "
			(if (or (pressed? "dis")(pressed? "ees")(pressed? "fis"))
						Rfore-str-filled Rfore-str)
			(if (pressed? "fis") Rfore-str-filled Rfore-str)
			(if (or (pressed? "ais")(pressed? "bes")) Rfore-str-filled Rfore-str)
			(if (pressed? "b") Rfore-str-filled Rfore-str))
		 ""))
	(begin
	  (set! finger-note (assoc "Rring" keysByFinger))
	  (if finger-note (format Rring-str (state->string (pressed? "b"))) ""))
	(begin
	  (set! finger-note (assoc "Lring" keysByFinger))
	  (if finger-note (format Lring-str (state->string (or (pressed? "dis")(pressed? "ees")))) ""))
	 ))) ;% end let* ...

 (interpret-markup layout props
   (make-line-markup (list
  	 (make-hspace-markup 0)
	 (make-halign-markup -0.4 ;% try to align notes and holes ...
      (make-override-markup (cons 'baseline-skip (* clarTabScale 11))
			 (make-column-markup (list
			 		(make-with-dimensions-markup
							(cons (* clarTabScale -1)(* clarTabScale 3)) '(0 . 0)
				       (make-postscript-markup (string-append
					     (format postscript-init clarTabScale)  s)))
				    (make-null-markup)))
	)))))
))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Test %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(set-global-staff-size 20)
#(ly:set-option 'point-and-click #f)

clarTabScale = #2  %% to change the size


%% \repeat "unfold" 8 %% uncomment to test the layout in several lines
  \relative {
    \override Voice.TextScript #'padding = #4 % if you want the holes aligned ...
   %% \fatText % to force an enough space between notes ver 2.10
   \textLengthOn % to force an enough space between notes ver 2.11

	c^"1"_\markup \clarTab ##f #'(0 1 2 3) #'()
	fis^"2"_\markup \clarTab ##f #'(1) #'()
	cis'^"3"_\markup \clarTab ##t	#'(0 1 2 3 4 5 6) #'(("Rlittle" . "fis"))
	a^"4"_\markup \clarTab ##f #'() #'(("Lfore" . "a"))
	cis,^"5"_\markup \clarTab ##f	#'(0 1 2 3) #'(("Llittle" . "cis"))
	e,^"6"_\markup \clarTab ##f #'(0 1 2 3 4 5 6) #'(("Llittle" . "e")("Rlittle" . "f"))
	c''^"7"_\markup \clarTab ##t #'(0 1 2 3 4 5 6) #'(("Llittle" . "f"))
	cis^"8"_\markup \clarTab ##t #'(0 1 2 3 4 5 6) #'(("Llittle" . "fis"))
	dis,^"9"_\markup \clarTab ##f	 #'(0 1 2) #'(("Rfore" . "dis"))
	\repeat "tremolo" 2
		{ eis16 fis^"10"_\markup \clarTab ##f	#'(0)#'(("Rfore" . "fis"))	 }
	\repeat "tremolo" 2
		{ ais,16 b^"11"_\markup \clarTab ##f	#'(0 1 2 3 4)#'(("Rring" . "b"))}

	d16 dis^"12"_\markup \clarTab ##f #'(0 1 2) #'(("Lring" . "dis")) e8
	s1^"13"_\markup
		\clarTab ##t #'() #'(
				("Rlittle" . "")("Llittle" . "")
				("Rfore" . "")("Lfore" . "")
				("Rring" . "")("Lring" . ""))
}
