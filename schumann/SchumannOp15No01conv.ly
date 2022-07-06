% PaulLiu
% 
\version "2.22.0"
\header {
 title = "Kinderscenen"
 subtitle = "Von fremden Ländern und Menschen"
 composer = "Robert Alexander Schumann"
 mutopiatitle = "Kinderscenen - Von fremden Ländern und Menschen"
 mutopiacomposer = "SchumannR"
 mutopiaopus = "O 15 N 1"
 mutopiainstrument = "Piano"
 date = "18th C."
 source = "Leichte Stucke, 1900"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ying-Chun Liu"
 maintainerEmail = "grandpaul@gmail.com"
 maintainerWeb = "http://www.cis.nctu.edu.tw/~is86007/"
 lastupdated = "2006/Jan/01"

 footer = "Mutopia-2006/01/01-354"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url "http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url "http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url "http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

fingerDU = \set fingeringOrientations = #'(down up)
fingerD = \set fingeringOrientations = #'(down)
fingerUL = \set fingeringOrientations = #'(up left)
fingerUR = \set fingeringOrientations = #'(up right)
fingerU = \set fingeringOrientations = #'(up)
fingerL = \set fingeringOrientations = #'(left)
fingerLRUD = \set fingeringOrientations = #'(left right up down)


repeattr = {
	\relative c {
		\context Voice = "repeattr" {
			\stemDown
			\repeat volta 1
			{ s2 s2 s2 s2 s2 s2 s2 s2 }
			\repeat volta 1 
			{ s2 s2 s2 s2 s2 s2
			  s2 s2 s2 s2 s2 s2 s2
			  s2
			}
			\bar "|."
		}
	}
}

pedaltr =  {
s2 s2 s2 s2 s2 s2 s2 s4\sustainOn s8 s16 s16\sustainOff
s2 s2 s2 s2 s2 s4 s8\sustainOn s16 s16\sustainOff
s2 s2 s2 s2 s2 s2 s2
s4\sustainOn s8 s16 s16\sustainOff
}

dynamictr = {
			s4\p s4  s2 s2 s2 s2 s2 s4 s4\> s4 s8 s8\!
			s4\p s4 s2 s2 s2 s4 s8 s8\< s4 s8 s16 s16\!
			s4\p s4 s2 s2 s2 s2 s4  s4\>  s2
			s4 s4\!
}


viola = {
	\relative c'' { 
		\context Voice = "viola" {
			\stemUp
			\phrasingSlurUp
			\fingerU
			b4-2 \( g'-5 
			fis8.^\markup { \fontsize #-3 \number "4-5" } e16-4 d4-3\) 
			b-2\( g' 
			fis8.^\markup { \fontsize #-3 \number "4-5" } e16-4 d4-3\)
			b-2\( g' 
			e8.^\markup { \fontsize #-3 \number "4-5" } d16-4 c4-3 
			a4-2 d-5 b2-4\)
%
			<g-2 b-4>4\( <a c> 
			<fis-2 a-4> <g b>\)
			<e-2 g-4>\( <e a> 
			<dis-3 fis-4> <d-2 g-5>\)
			e-2^"ritard."\( fis g8. a16  b8.^\fermata 
			c16 d4^"a tempo"\)\( g fis8.^\markup { \fontsize #-3 \number "4-5" } e16 d4\)
			b-2\( g' fis8.^\markup { \fontsize #-3 \number "4-5" } e16-4 d4-3\)
			b-2\( g' e8.^\markup { \fontsize #-3 \number "4-5" } d16-4 c4-3 a-2 d-5 b2-4\)
		}
	}
}

oboes = {
	\relative c'' { 
		\context Voice = "oboe" {
			\stemNeutral
			\fingerU
			\change Staff=down
			\tuplet 3/2 {<b,-2>8 ( d 
			\change Staff=up  g ) }

			\change Staff=down 
			\tuplet 3/2 {<bes,-2>8 ( e 
			\change Staff=up  g ) }

	\override TupletBracket.number-visibility % number-visibility is deprecated. Tune the TupletNumber instead
 = ##f
			\change Staff=down
			\tuplet 3/2 {a,8 d 
			\change Staff=up  fis }
			
			\change Staff=down
			\tuplet 3/2 {c8 d 
			\change Staff=up a' }
			
			\change Staff=down
			\tuplet 3/2 {b,8 d 
			\change Staff=up g }

			\change Staff=down
			\tuplet 3/2 {bes,8 e 
			\change Staff=up g }
 
			\change Staff=down
			\tuplet 3/2 {a,8 d 
			\change Staff=up fis }

			\change Staff=down
			\tuplet 3/2 {c8 d 
			\change Staff=up a' }

			\change Staff=down
			\tuplet 3/2 {b,8 d 
			\change Staff=up g }

			\change Staff=down
			\tuplet 3/2 {g,8 d' 
			\change Staff=up g }

			\change Staff=down
			\tuplet 3/2 {g,8 e' 
			\change Staff=up g }

			\change Staff=down
			\tuplet 3/2 {g,8 c 
			\change Staff=up g' }

			\change Staff=down
			\tuplet 3/2 {<g,-2>8 c 
			\change Staff=up g' }

			\change Staff=down
			\tuplet 3/2 {fis,8 c' 
			\fingerL
			\change Staff=up <fis-2> }

			\fingerU
			\change Staff=down
			\tuplet 3/2 {<d,-2>8 b' 
			\fingerL
			\change Staff=up <g'-1> }

			\fingerU
			\change Staff=down
			\tuplet 3/2 {<g,-3>8 b 
			\change Staff=up g' }
%
			\change Staff=down
			\tuplet 3/2 {e,8 b' 
			\change Staff=up e }
			
			\change Staff=down
			\tuplet 3/2 {a,,8 a' 
			\change Staff=up e' }

			\change Staff=down
			\tuplet 3/2 {d,8 a' 
			\change Staff=up d }

			\change Staff=down
			\tuplet 3/2 {b,8 g' 
			\change Staff=up d' }

			\change Staff=down
			\tuplet 3/2 {c,8 g' 
			\change Staff=up c }

			\change Staff=down
			\tuplet 3/2 {fis,,8 fis' 
			\change Staff=up c' }

			\change Staff=down
			\tuplet 3/2 {b,8 fis' 
			\change Staff=up b }

			\change Staff=down
			\tuplet 3/2 {g,8 g' 
			\change Staff=up b }

			\change Staff=down
			\tuplet 3/2 {c,8 g' 
			\change Staff=up c }

			\change Staff=down
			\tuplet 3/2 {<d,-4>8 a' 
			\change Staff=up d }

			\change Staff=down
			\tuplet 3/2 {<b,-2>8 g' 
			\change Staff=up d' }

			\change Staff=down
			\tuplet 3/2 {g,,8 a' 
			\change Staff=up d }

			\change Staff=down
			\tuplet 3/2 {<b-2>8 d 
			\change Staff=up g }

			\change Staff=down
			\tuplet 3/2 {bes,8 e 
			\change Staff=up g }

			\change Staff=down
			\tuplet 3/2 {a,8 d 
			\change Staff=up fis }

			\change Staff=down
			\tuplet 3/2 {c8 d 
			\change Staff=up a' }

			\change Staff=down
			\tuplet 3/2 {<b,-2>8 d 
			\change Staff=up g }

			\change Staff=down
			\tuplet 3/2 {bes,8 e 
			\change Staff=up g }

			\change Staff=down
			\tuplet 3/2 {a,8 d 
			\change Staff=up fis }

			\change Staff=down
			\tuplet 3/2 {c8 d 
			\change Staff=up a' }

			\change Staff=down
			\tuplet 3/2 {b,8 d 
			\change Staff=up g }

			\change Staff=down
			\tuplet 3/2 {g,8 d' 
			\change Staff=up g }

			\change Staff=down
			\tuplet 3/2 {g,8 e' 
			\change Staff=up g }

			\change Staff=down
			\tuplet 3/2 {g,8 c 
			\change Staff=up g' }

			\change Staff=down
			\tuplet 3/2 {<g,-2>8 c 
			\change Staff=up g' }

			\change Staff=down
			\tuplet 3/2 {fis,8 c' 
			\fingerL
			\change Staff=up <fis-2> }
			\fingerU

			\change Staff=down
			\tuplet 3/2 {<d,-2>8 b' 
			\fingerL
			\change Staff=up <g'-1> }
			\fingerU

%			\change Staff=down
%			\tuplet 3/2 { b,8 b8 
%			\change Staff=up g' }
			s4

		}
	}
}

bassvoices =  {
	\relative c' {
		\context Voice = "bassvoice" {
			\stemDown
			\fingerD
			<g-3>8 r8 <cis,-5> r d r <fis-4> r <g-3> r cis, r d r <fis-4> r 
			<g-3> r b,  r  c r <e-4> r <d-5> r d r g, r g' r
%
			\phrasingSlurDown
			<e-2>4 \( a, <d-3>8. <c-4>16  <b-5>4 \)
			<c-2> \( fis, <b-3>8. <a-4>16 <g-5>4 \)
			<c-3>4 \( <c-5>4 <b-3>8. <a-4>16 <g-5>4 \)
			<g'-3>8 r8 cis, r d r  <fis-4> r <g-3> r cis, r d r <fis-4> r 
			<g-3> r b,8  r8 c8  r8 e8-4 r8 d8-5 r8 d8 r8 
			<g, d'>2
		}
	}
}

bassvoicestwo =  {
	\relative c' {
		\context Voice = "bassvoicetwo" {
			\stemDown
			\slurDown
			s2 s2 s2 s2 s4 g4~ g4 s4 
			s2 s2
%
			s2 s2 s2 s2 s2
			d2 s2 s2 s2 s2 s4 g4~ g4 s4 s2
	\override TupletBracket.number-visibility % number-visibility is deprecated. Tune the TupletNumber instead
 = ##f
	\override TupletBracket.bracket-visibility = ##f
			\change Staff=down
			\tuplet 3/2 {s8 b4~ }

			\change Staff=down
			\tuplet 3/2 { b8 b8 
			\change Staff=up g'8 }
			
		}
	}
}



\score {
	\context PianoStaff <<
		\context Staff = "up" <<
			{
				\key g \major 
				\time 2/4
			}
			\viola
			\oboes
			\repeattr
		>>
		\context Dynamics = "dynamics" \dynamictr
		\context Staff = "down" <<
			\clef bass
			{
				\key g \major
				\time 2/4
			}
			\bassvoices
			\bassvoicestwo
		>>
		\context Dynamics = "pedal" \pedaltr

	>>
	\layout {
         % [Convert-ly] The Dynamics context is now included by default.
         \context {
           \PianoStaff
           \accepts Dynamics
           \override VerticalAlignment.forced-distance = #7
         }
        }
	\midi {
	 \tempo 4 = 72
         \context {
           \type "Performer_group"
           \name Dynamics
           \consists "Piano_pedal_performer"
           \consists "Span_dynamic_performer"
           \consists "Dynamic_performer"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
         }
        }
}

%\score {
%	\context PianoStaff \notes <<
%		\context Staff = "up" <<
%			\key g \major 
%			\time 2/4
%			\viola
%			\oboes
%			\dynamictr
%			\repeattr
%		>>
%		\context Staff = "down" <<
%			\clef bass
%			\key g \major
%			\time 2/4
%			\bassvoices
%			\bassvoicestwo
%			\dynamictr
%		>>
%	>>
%	\midi{
%		\tempo 4 = 72
%	}
%}
