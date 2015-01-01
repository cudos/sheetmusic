\version "2.18.2"

\header {
    title = "Musikalische Momente."
    composer = "Jens Hoffmann."
}

\score {
    \new Staff \relative c'
    {
        \set Staff.midiInstrument = #"flute"
        \time 4/4
        \tempo "Andante" 4 = 80
        \key f \major
        f1\pp~f1~f1 g1 f1~f1
        f1 g1 (f8~g8~f2.)~f1
    }
    \header {
        piece = "Musikalischer Moment No. 1."
    }
    \midi { }
    \layout { }
}

\score {
    \new Staff \relative c''' {
        \set Staff.midiInstrument = #"flute"
        \time 4/4
        \tempo "Andante" 4 = 80
        \key f \major
        \repeat volta 2 {g4 f8\prall e f4 e}
    }

    \header {
        piece = "Musikalischer Moment No. 2."
    }
    \midi { }
    \layout { }
}


\score {
    \new Staff \relative c' {
        \set Staff.midiInstrument = #"flute"
        \time 4/4
        \tempo "Moderato" 4 = 110
        \key f \major
        \repeat volta 2 {f4 g a g | f fis g2}
    }

    \header{
        piece = "Musikalischer Moment No. 3."
    }
    \midi { }
    \layout { }
}

\score {
    \new Staff \relative c' {
        \set Staff.midiInstrument = #"flute"
        \time 4/4
        \tempo "Presto" 4 = 180
        \key f \major
        f4. (g8 a bes c4) r8 d (c d c4)
    }
    \header {
        piece = "Musikalischer Moment No. 4."
    }
    \midi { }
    \layout { }
}

