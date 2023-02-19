\version "2.22.2"

%% http://lsr.di.unimi.it/LSR/Item?id=768
%% see also http://lilypond.org/doc/v2.18/Documentation/notation/common-notation-for-fretted-strings

%LSR by Gilles Thibault
%% file version : 16\07\2011

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LSR workaround:
#(set! paper-alist (cons '("snippet" . (cons (* 150 mm) (* 100 mm))) paper-alist))
\paper {
  #(set-paper-size "snippet")
  tagline = ##f
  indent = 25
}
\markup\vspace #.5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% snippet starts here:

deleteArticulations =  #(define-music-function (music) (ly:music?)
(music-filter
   (lambda (evt)
      (not (memq (ly:music-property evt 'name) (list 'FingeringEvent
                                                     'StrokeFingerEvent
                                                     'StringNumberEvent))))
   music))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#(define (name-of music)
 (ly:music-property music 'name))

#(define (delete-comments s)
"Delete in a string, all substrings begining with % bis the end of line."
(let ((delete? #f)
      (prev-char #\a))
  (string-delete s
      (lambda (c)
        (case c
          ((#\%)
                (if (not (char=? prev-char #\nul))
                   (set! delete? #t)))
          ((#\newline)(set! delete? #f)))
        (set! prev-char c)
        delete?))))

#(define (expand-chars s)
"Transforme in a string, *15x for example, in xxxxxxxxxxxxxxx (15 times)"
(let ((len (string-length s))
      (star-pos #f)
      (count-str ""))
 (if (> len 0)
  (let loop ((i 0))
    (let ((c (string-ref s i))
          (reset (lambda ()
                    (set! star-pos #f)
                    (set! count-str ""))))
      (cond
         ((eq? c #\*) (set! star-pos i))
         ((char-numeric? c)
            (if star-pos (set! count-str (string-append count-str (string c)))))
         ((char-alphabetic? c)
            (if star-pos (if (string-null? count-str)
               (reset)
               (let* ((count (string->number count-str))
                      (replace-str (make-string count c)))
                 (set! s (string-replace s replace-str star-pos (1+ i)))
                 (set! len (string-length s))
                 (set! i (+ star-pos count))
                 (reset)))))
         (else (if star-pos (reset)))))
    (if (< i (1- len)) (loop (1+ i)))))
  s))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% general methode for adding articulations.
%% event-name : articulation event name : 'FingeringEvent for ex.
%% property-name : main property of event-name : 'digit for fingerings.
%% min max : range number for a digit : 0-5 for fingerings.
#(define (add-articulation event-name property-name min max music finger-str)
(let* ((my-char-set (char-set-adjoin char-set:letter+digit #\+ #\- #\'))
       (pre-str (expand-chars (delete-comments finger-str)))
       (str-list (string->list pre-str))
       (str-list-filtered->char (lambda ()
              (define (loop)
                (let ((c (car str-list)))
                  (if (char-set-contains? my-char-set c)
                                 c
                                 (begin (set! str-list (cdr str-list))
                                        (if (null? str-list) #\nul (loop))))))
              (loop)))
       (current-char (if (null? str-list) #\nul (str-list-filtered->char)))
       (next-char (lambda (filter?)(set! current-char
                            (if (or (null? str-list)
                                    (begin (set! str-list (cdr str-list))
                                           (null? str-list)))
                              #\nul
                              (if filter? (str-list-filtered->char)
                                          (car str-list)))))))
  (define (set-dir dir); "+" return 1, "-" return -1. To call with (set-dir 0).
      (cond ((char=? current-char #\+)
                  (next-char #t)
                  (set-dir 1))
            ((char=? current-char #\-)
                  (next-char #t)
                  (set-dir -1))
            (else dir)))
  (music-map
     (lambda (evt)
        (if (and (eq? (name-of evt) 'NoteEvent)
                 (pair? str-list))
           (let*((dir (set-dir 0))
                 (tweaks? (and
                   (char=? current-char #\')  ; section between 2 apostrophes ?
                   (let loop ((text-list '())
                              (prev-char current-char))
                      (next-char #f)
                      (let*((apostrophe? (char=? current-char #\'))
                            (escaped-char? (and (or apostrophe?
                                                    (char=? current-char #\%))
                                                (char=? prev-char #\nul))))
                         (cond
                            (escaped-char?
                                  (loop (cons current-char (cdr text-list))
                                        current-char))
                            ((or apostrophe? (null? str-list)) ; close section
                                  (list (cons
                                    (quote text)
                                    (reverse-list->string text-list))))
                            (else (loop (cons current-char text-list)
                                        current-char)))))))
                 (i (if tweaks? min (- (char->integer current-char)
                                       (char->integer #\0))))
                 (tweaks (if tweaks? tweaks? '())))
              (if (and (>= i min)(<= i max))
                (ly:music-set-property! evt 'articulations (append
                  (list (make-music
                          event-name
                          'tweaks tweaks
                          'direction dir
                          property-name i ))
                  (ly:music-property evt 'articulations))))
              (next-char #t)))
        evt)
     music)))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% addFingering adds the first digit founded in fingerStr, adds
%% it as a fingering to the first note found in music and so on.
%% Just enter a letter if you don't want fingering for certain notes.
%% You can also
%% -> add a direction ("+" = UP,"-" = DOWN).
%% -> add a substitution fingering by enclosing several digits between 2
%%    apostrophes, with - (minus) as separator char, like that '1-2-3'.
%% -> add comments at the end of the line. Start them with a percent sign (%).

addFingering =  #(define-music-function (music fingerStr)
                                                             (ly:music? string?)
(add-articulation 'FingeringEvent 'digit 0 5 music fingerStr))

addStrokeFinger = #(define-music-function (music fingerStr)
                                                             (ly:music? string?)
(add-articulation 'StrokeFingerEvent 'digit 1 4 music fingerStr))

addStringNumber = #(define-music-function (music fingerStr)
                                                             (ly:music? string?)
(add-articulation 'StringNumberEvent 'string-number 0 9 music fingerStr))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% \include "extractMusic.ly"
%% Download extractMusic.ly here : http://gillesth.free.fr/Lilypond/extractMusic/

music =  \relative c' { c4 d <e g> <f a> g f <e g> <d f> c b a b <c e g c>1}
musicWithFinger = \addFingering \music
            #"012345           % mes 1
              xxxx '1-2''3-4'  % mes 2
              -1+2-3+4         % mes 3
              1234             % mes 4
              "
%% To use \multiReplaceMusic, download "extractMusic.ly" .
%{
musicWithFingerAndOverrides = \multiReplaceMusic \musicWithFinger {
  \once \set fingeringOrientations = #'(down right)  s2. %% = 4th beats
  \once \set fingeringOrientations = #'(down left up)  s1*3 %% 4th measures
}
%}

\score {<<
  \new Staff \with { instrumentName = \markup \center-column
                                                          { "original""music" }}
             \music
  \new Staff \with { instrumentName = \markup \center-column
                                                    {"music with""left hand""fingerings"}}
             \musicWithFinger
 % \new Staff \with { instrumentName = \markup \center-column
 %                                                  {"fingerings""+""overrides"}}
 %            \musicWithFingerAndOverrides
%% To test \addStringNumber and \addStrokeFinger

\new Staff \with { instrumentName = \markup \center-column
                                                    {"music with""string number"}}
  \addStringNumber \music
             #"012345          % mes 1
              xxxx '10''11'    % mes 2 for more than 10 strings.
              -1+2-3+4         % mes 3
              1234             % mes 4
              "
\new Staff \with { instrumentName = \markup \center-column
                                                    {"music with""right hand" "fingerings"}}
  \addStrokeFinger \music
             #"123432          % mes 1
              xxxx 'pouce''index' % mes 2 
              -1+2-3+4         % mes 3
              'd''z''m''r'     % mes 4
              "
>>}
