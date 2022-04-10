\language "english"
% PaulLiu
%
\version "2.22.0"
\header {
 title = "Kinderscenen"
 subtitle = "Glückes genug"
 composer = "Robert Alexander Schumann"
 mutopiatitle = "Kinderscenen - Glückes genug"
 mutopiacomposer = "SchumannR"
 mutopiaopus = "O 15 N 5"
 mutopiainstrument = "Piano"
 date = "18th C."
 source = "Leichte Stucke, 1900"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Ying-Chun Liu"
 maintainerEmail = "PaulLiu.bbs@bbs.cis.nctu.edu.tw"
 maintainerWeb = "http://www.cis.nctu.edu.tw/~is86007/"
 lastupdated = "2006/Feb/01"

 footer = "Mutopia-2006/02/01-372"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url "http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url "http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url "http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

fingerDU = \set fingeringOrientations = #'(down up)
fingerD = \set fingeringOrientations = #'(down)
fingerUL = \set fingeringOrientations = #'(up left)
fingerUR = \set fingeringOrientations = #'(up right)
fingerU = \set fingeringOrientations = #'(up)
fingerL = \set fingeringOrientations = #'(left)
fingerLRUD = \set fingeringOrientations = #'(left right up down)


repeattr =  {
	\relative c {
		\partial 8
		\context Voice = "repeattr" {
			s8 | s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2
			s2 s2 s2 s2 s2 s2 s2 s2
			\bar "|."
		}
	}
}

dynamictr =  {
			s16\p s16
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
			s2
}

pedaltr =  {
			s8
			s2
			s2
			s2
			s2
			s2
			s2
			s16\sustainOn s16 s8 s16 s16\sustainOff s8
			s2
			s16\sustainOn s16 s8 s8 s16 s16\sustainOff
			s2
			s2
			s2
			s2
			s2
			s16\sustainOn s16 s8 s16 s16\sustainOff s8
			s2
			s16\sustainOn s16 s8 s8 s16 s16\sustainOff
			s2
			s4 s8 s32\sustainOn s32 s32 s32\sustainOff
			s2
			s16\sustainOn s16 s8 s16 s16\sustainOff s8
			s2
			s2
			s2
}

viola =  {
	\relative c'' {
		\context Voice = "viola" {
			\stemUp
			\phrasingSlurUp
			\slurUp
			\dynamicUp
			\override Voice.Rest.staff-position = #4
			<gs-3>8\p (
			<a-4> \< [ <cs> <fs-5>\! <e-4> ]
			<d-5> <a-3> ) r8 <a-4>^.
			<a-5>16 ( [ <e-3>16^. ] ) <e-2> ( [fs] g8 b
			a [ <fs-4> ] e ) <gs-4>^> (
			<a-5>4^> ) r8 <cs,-3>8 (
			<d-4>\< [ <fs> <b-5>\! <a-4> ]
			<g-5> [ <b-3> e\> d^"rit." ]
			<cs-4> [ <b-5>\! <a-4> ] ) <gs-3>^"(a tempo)" (
			<a-4> \< [ <cs> <fs-5>\! <e-4> ]
			<d-5> <a-3> ) r8 <a-4>^.
			<a-5>16 ( [ <e-3>16^. ] ) <e-2> ( [fs] g8 b
			a <fs-4> e ) <gs-4>^> (
			<a-5>4^> ) r8 <cs,-3>8 (
			<d-4>\< [ <fs> <b-5>\! <a-4> ]
			<g-5> [ <b-3> e\> d^"rit." ]
			<cs-4> [ <b-5>\! <a-4> ] ) <a-4>^"(a tempo)" (
			<bf-3>\< [ e a\! g ]
			f <c-3> ) r8 <c-4>^.
			<c-5>16 ( [ <g-3>16^. ] ) <g-2> ( [a] bf8 d
			c8 <a-4> <g-3> ) <a-4> (
			<bf-3>\< [ e a\! g ]
			<fs-5> [ <cs-3> e d ]
			<b-5> [ <fs-3> a^"ritardando" g ]
			<fs-4> <e-5> <d-4>4 )
		}
	}
}

violatwo =  {
	\relative c'' {
		\context Voice = "violatwo" {
			\stemDown
			\phrasingSlurUp
			\slurUp
			\fingerD
			\override Voice.Rest.staff-position = #-4
			gs16 <e g>16
			a <e g> cs' \fingerD <g-1 a-2> fs' <g, a> e' <g, a>
			d' <d, fs> a' <d, fs> r16 <d fs> a' <d, fs>
			a' [<cs,-1>] <cs-1>8 g'16 <cs, e> b' <b, g'>
			a' \fingerL <a, fs'-3> fs' <a, d> e' [<a, cs>] gs' [<e g>]
			a [<e g> r16 <g, a>] r16 <g a> cs <g a>
			d' <fs, a> fs' <a, d> b' <d, fs> a' <d, fs>
			g \fingerU <g, d'-2> b' <d, g> e' <e, g> d' <d, g>
			cs' <cs, g'> b' <d, g> a' [<ds, g>] gs [<e g>]

			a <e g> cs' \fingerD <g-1 a-2> fs' <g, a> e' <g, a>
			d' <d, fs> a' <d, fs> r16 <d fs> a' <d, fs>
			a' [<cs,-1>] <cs-1>8 g'16 <cs, e> b' <b, g'>
			a' \fingerL <a, fs'-3> fs' <a, d> e' [<a, cs>] gs' [<e g>]
			a [<e g> r16 <g, a>] r16 <g a> cs <g a>
			d' <fs, a> fs' <a, d> b' <d, fs> a' <d, fs>
			g \fingerL <g, d'-2> b' <d, g> e' <e, g> d' <d, g>
			cs' <cs, g'> b' <d, g> a' [<ds, g>] a' [<e g>]

			bf' <e, g> e' <g, bf> a' <g, bf> g' <g, bf>
			f' <f, a> c' <f, a> r16 <f a> c' <f, a>
			c' [<e,-1>] <e-1>8 bf'16 <e, g> d' <c, bf'>
			c' <c, a'-3> a' <c, f> g' [c,] a' [<e g>]
			bf' <e, g> e' <g, bf> a' <g, bf> g' <g, bf>
			fs' <fs, a> cs' <g a> e' <e, a-2> d' <d, a'-3>
			b' <d, g-4> fs <c d> a' <a, d-2> g' <g, d'>
			fs' <a, d> e' <g, cs> d' <fs, a>8.

		}
	}
}

oboes =  {
	\relative c'' {
		\context Voice = "oboe" {
			\stemNeutral
			\change Staff=up
		}
	}
}

oboestwo =  {
	\relative c' {
		\context Voice = "oboetwo" {
			\stemNeutral
			\change Staff=up
		}
	}
}


bassvoices =  {
	\relative c {
		\context Voice = "bassvoice" {
			\stemDown
			\phrasingSlurDown
			\slurDown
			\fingerD
			s8
			s2
			<a-5>2
			a16 ([g'_.]) <g-2> ([fs] e8) a,, (
			<d-3>8 fs a4 )
			a2
			s2
			s2
			s2
			s2
			<a-5>2
			a16 ([g'_.]) <g-2> ([fs] e8) a,, (
			<d-3>8 fs a4 )
			a2
			s2
			s2
			s2
			s2
			<c-5>2
			c16 ([bf'_.]) <bf-2> ([a] g8) c,, (
			f8 <a-3> c4 )
			s2
			s2
			s2
			<a-1>8 a,8 <d-3>4
		}
	}
}

bassvoicestwo =  {
	\relative c {
		\context Voice = "bassvoicetwo" {
			\stemUp
			\phrasingSlurDown
			\slurUp
			\tieUp
			\dynamicDown
			\fingerU
			r8
			<a, a'>8^.\p \dynamicUp r8 r8  <cs'-4>8 (
			<d-3> \< [ fs b\! <a-1> ] )
			a,16 [a'] <a-1>8 ~ a8 a, ~
			a2
			\grace { a,8 ( }  a'8\< ) [ ( <cs-3> <fs-1>\! <e-2> ]
			<d, d'>4. ) \fingerD <c-4 c'>8 \(
			<b-5 b'>4. <bf-4 bf'>8
			<a-5 a'> [ <b b'> <bs-4 bs'> <cs-3 cs'> ~ ]
			<cs cs'> a \) r8 \fingerU <cs'-4> (

			<d-3> \< [ fs b\! <a-1> ] )
			a,16 [a'] <a-1>8 ~ a8 a, ~
			a2
			\grace { a,8 ( }  a'8\< ) [ ( <cs-3> <fs-1>\! <e-2> ]
			<d, d'>4. ) \fingerD <c-4 c'>8 \(
			<b-5 b'>4. <bf-4 bf'>8
			<a-5 a'> [ <b b'> <cs-4 cs'> <c c'>^>^"(ten.)" ~ \) ]
			\fingerU <c c'>4. <e'-4>8 (
			<f-3>8\< [ a  <d-1>\! <c-1> ] )
			c,16 [d'] <d-1>8 g, e (
			f4 e )
			\fingerD <c, c'>4. \( <cs-4 cs'>8
			<d-5 d'> [<e e'> <f f'> <fs-4 fs'>]
			\stemDown <g-5 g'> [<a a'> <bf-4 bf'>^> <b b'>] \stemUp
			<a>4 ~ a4 \)

		}
	}
}


\score {
	\context PianoStaff  <<
		\context Staff = "up" <<
			\key d \major
			\time 2/4
			\viola
			\violatwo
			\oboes
			\repeattr
		>>
		\context Dynamics = "dynamics" \dynamictr
		\context Staff = "down" <<
			\clef bass
			\key d \major
			\time 2/4
			\oboestwo
			\bassvoicestwo
			\bassvoices
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
		\tempo 4 = 84
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


