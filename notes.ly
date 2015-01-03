\version "2.18.2"

\include "articulate.ly"

\header {
    title = "Musikalische Momente."
    composer = "Jens Hoffmann."
}

\paper {
    top-margin = 2\cm
    left-margin = 2\cm
    right-margin = 2\cm
    between-system-space = 1.5\cm
    between-system-padding = #1
    ragged-bottom=##f
    ragged-last-bottom=##f
    ragged-right = ##f
}

\layout {
}

\book {
    \score {
        %(midi) \unfoldRepeats \articulate <<
        \new Staff \relative c'
        {
            \set Staff.midiInstrument = #"flute"
            \time 4/4
            \tempo "Andante" 4 = 80
            \key f \major
            f1\pp~f1~f1 g1 f1~f1
            f1 g1 (f8~g8~f2.~f1)
        }
        %(midi) >>
        \header {
            title = "foo"
            piece = "Musikalischer Moment No. 1."
            instrument = "Altblockflöte"
        }
        %(midi) \midi { }
        \layout { }
    }

    \score {
        %(midi) \unfoldRepeats \articulate <<
        \new Staff \relative c''' {
            \set Staff.midiInstrument = #"flute"
            \time 4/4
            \tempo "Andante" 4 = 80
            \key f \major
            \repeat volta 2 {g4 f8\prall e f4 e}
        }
        %(midi) >>

        \header {
            piece = "Musikalischer Moment No. 2."
        }
        %(midi) \midi { }
        \layout { }
    }


    \score {
        %(midi) \unfoldRepeats \articulate <<
        \new Staff \relative c' {
            \set Staff.midiInstrument = #"flute"
            \time 4/4
            \tempo "Moderato" 4 = 110
            \key f \major
            \repeat volta 2 {f4 g a g | f fis g2}
        }
        %(midi) >>

        \header{
            piece = "Musikalischer Moment No. 3."
        }
        %(midi) \midi { }
        \layout { }
    }

    \score {
        %(midi) \unfoldRepeats \articulate <<
        \new Staff \relative c' {
            \set Staff.midiInstrument = #"flute"
            \time 4/4
            \tempo "Presto" 4 = 180
            \key f \major
            f4. (g8 a bes c4) r8 d (c d c4)
        }
        %(midi) >>
        \header {
            piece = "Musikalischer Moment No. 4."
        }
        %(midi) \midi { }
        \layout { }
    }


    \score {
        %(midi) \unfoldRepeats \articulate <<
        \new Staff \relative c' {
            \set Staff.midiInstrument = #"flute"
            \time 4/4
            \tempo "Presto" 4 = 180
            \key f \major
            c'4_"portato" a gis g | f2. g4 gis a r2
        }
        %(midi) >>
        \header {
            piece = "Musikalischer Moment No. 5."
        }
        %(midi) \midi { }
        \layout { }
    }


    \score {
        %(midi) \unfoldRepeats \articulate <<
        \new Staff \relative c' {
            \set Staff.midiInstrument = #"flute"
            \time 4/4
            \tempo "Andante" 4 = 80
            \key f \major
            f4 (c'2.)
        }
        %(midi) >>
        \header {
            piece = "Musikalischer Moment No. 6."
        }
        %(midi) \midi { }
        \layout { }
    }


    \score {
        %(midi) \unfoldRepeats \articulate <<
        \new Staff \relative c'' {
            \set Staff.midiInstrument = #"flute"
            \time 4/4
            \tempo "Allegro" 4 = 120
            \key bes \major
            es4 d bes2~bes8 r8 as4 g b c2 r2
        }
        %(midi) >>
        \header {
            piece = "Musikalischer Moment No. 7."
        }
        %(midi) \midi { }
        \layout { }
    }


    \score {
        %(midi) \unfoldRepeats \articulate <<
        \new Staff \relative c'' {
            \set Staff.midiInstrument = #"flute"
            \time 3/4
            \tempo "Andante" 4 = 80
            \key c \minor
            \tuplet 3/2 {es8-> es es}
            \tuplet 3/2 {es-> es es}
            c4-> r8 as8 as as g4
        }
        %(midi) >>
        \header {
            piece = "Musikalischer Moment No. 8."
        }
        %(midi) \midi { }
        \layout { }
    }


    \score {
        %(midi) \unfoldRepeats \articulate <<
        \new Staff \relative c' {
            \set Staff.midiInstrument = #"flute"
            \time 4/4
            \tempo "Allegro" 4 = 120
            \key f \major
            a''8_"portato" g f e f d e c
            a c d e f d e c
            as g f g as a bes c
        }
        %(midi) >>
        \header {
            piece = "Musikalischer Moment No. 9."
        }
        %(midi) \midi { }
        \layout { }
    }


    \score {
        %(midi) \unfoldRepeats \articulate <<
        \new Staff \relative c' {
            \set Staff.midiInstrument = #"flute"
            \time 3/4
            \tempo "Andante" 4 = 80
            \key f \major
            as' c d e d c
            \time 4/4
            a c a c
            as c as c
            g c g c
            ges2
        }
        %(midi) >>
        \header {
            piece = "Musikalischer Moment No. 10."
        }
        %(midi) \midi { }
        \layout { }
    }


    \score {
        %(midi) \unfoldRepeats \articulate <<
        \new Staff \relative c' {
            \set Staff.midiInstrument = #"flute"
            \time 4/4
            \tempo "Allegro" 4 = 140
            \key f \major
            f4 (g) a gis (a) g2 r4
            gis4 a (gis) g c2
        }
        %(midi) >>
        \header {
            piece = "Musikalischer Moment No. 11."
        }
        %(midi) \midi { }
        \layout { }
    }


    \score {
        %(midi) \unfoldRepeats \articulate <<
        \new Staff \relative c' {
            \set Staff.midiInstrument = #"flute"
            \time 3/4
            \tempo "Andante" 4 = 72
            \key g \major
            fis'16 fis fis e8 d c8. r8
            fis16 fis fis e8 d c8. r8
            bes8. r16
            a16\staccato bes8.\staccato
            a16\staccato bes8.\staccato
            a16\staccato bes2~bes8~bes16
        }
        %(midi) >>
        \header {
            piece = "Musikalischer Moment No. 12."
        }
        %(midi) \midi { }
        \layout { }
    }


    \score {
        %(midi) \unfoldRepeats \articulate <<
        \new Staff \relative c'' {
            \set Staff.midiInstrument = #"flute"
            \time 4/4
            \tempo "Andante" 4 = 80
            \key f \major
            gis8 (
                a gis a | gis a gis a | gis a gis a | gis a gis a
                gis a gis a | gis a gis a | gis a gis a | gis a gis a
                gis a gis a | gis a gis a | gis a gis a | gis a gis a
                gis a gis a | gis a gis a | gis a gis a | gis a gis a
                gis1~gis2 r2
            )
            g4 a r2
            g4 a r2
        }
        %(midi) >>
        \header {
            piece = "Musikalischer Moment No. 13."
        }
        %(midi) \midi { }
        \layout { }
    }


    \score {
        %(midi) \unfoldRepeats \articulate <<
        \new Staff \relative c' {
            \set Staff.midiInstrument = #"flute"
            \time 4/4
            \tempo "Allegro" 4 = 100
            \key f \major
            f8 g a bes a bes c a f a c d c d e f
            d es d c bes a bes a g a bes c d c bes a g2 g8 g (f) g (a) bes (g) a2
            a8 a g a bes c a bes2
        }
        %(midi) >>
        \header {
            piece = "Musikalischer Moment No. 14."
        }
        %(midi) \midi { }
        \layout { }
    }

    \score {
        %(midi) \unfoldRepeats \articulate <<
        \new Staff \relative c' {
            \set Staff.midiInstrument = #"flute"
            \time 4/4
            \tempo "Allegro" 4 = 100
            \key f \major
            f4 c'2.~c1~c~c4 c es d c bes c2~c1~c2.
            bes4 bes g c bes as g as2~as2.
            g4 as g g f f1
        }
        %(midi) >>
        \header {
            piece = "Musikalischer Moment No. 15."
        }
        %(midi) \midi { }
        \layout { }
    }

    \score {
        %(midi) \unfoldRepeats \articulate <<
        \new Staff \relative c' {
            \set Staff.midiInstrument = #"flute"
            \time 3/4
            \tempo "Andante" 4 = 80
            \key f \major
            c''8\staccato c\staccato f,\staccato e8.\staccato f16 e8\staccato
            d8\staccato cis\staccato as\staccato g\staccato bes\staccato c\staccato
        }
        %(midi) >>
        \header {
            piece = "Musikalischer Moment No. 16."
        }
        %(midi) \midi { }
        \layout { }
    }

    \score {
        %(midi) \unfoldRepeats \articulate <<
        \new Staff \relative c' {
            \set Staff.midiInstrument = #"flute"
            \time 4/4
            \tempo "Andante" 4 = 80
            \key f \major
            a'32 (g a g a g a g a g
            a32 (g a g a g a g a g
            a32 (g a g a g a g a g
            a32 (g a g a g a g a g~g2.)
            r1
            a2 r4. bes8 a2 r2
            a2 r4.~r16 bes16 a2 r2
            a2 r4.~r16~r32 bes32 a2 r2
            a2 r4. \tuplet 3/2 {bes16 bes16 bes16} r1
            a2\pp bes4\staccato bes16 bes bes bes4\staccato
            bes4\staccato bes4\staccato bes4\staccato bes4\staccato
            bes4\staccato bes4\staccato bes4\staccato bes4\staccato
            bes4\staccato a2.
        }
        %(midi) >>
        \header {
            piece = "Musikalischer Moment No. 17."
        }
        %(midi) \midi { }
        \layout { }
    }
}

