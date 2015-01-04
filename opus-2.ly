\version "2.18.2"


\include "articulate.ly"

#(set-default-paper-size "a6" 'landscape)

\header {
    title = "Opus 2."
    composer = "Jens Hoffmann."
    % dedication = "Dedication"
    % subtitle = "Subtitle"
    % subsubtitle = "Subsubtitle"
      % The following fields are evenly spread on one line
      % the field "instrument" also appears on following pages
    instrument = "Flauta dolce"
    % poet = "Poet"
      % The following fields are placed at opposite ends of the same line
    % meter = "Meter"
    % arranger = "Arranger"
      % The following fields are centered at the bottom
    % tagline = "tagline goes at the bottom of the last page"
    % copyright = "copyright goes at the bottom of the first page"
}


\paper {
    top-margin = 2\cm
    left-margin = 2\cm
    right-margin = 2\cm
    between-system-space = 1.5\cm
    between-system-padding = #1
    ragged-bottom=##f
    % ragged-last-bottom=##f
    ragged-right = ##f
}


melody = \relative c' {
    \time 4/4
    \tempo "Allegro" 4 = 100
    \key f \major
    f4 c'2.~c1~c~c4 c es d c bes c2~c1~c2.
    bes4 bes g c bes as g as2~as2.
    g4 as g g f f1
}


structure = {
    \new Staff = "flute"
    <<
    \set Staff.midiInstrument = #"flute"
    \context Voice = "melody" \melody
    >>
}

\score {
    \structure
    \layout {
    }
}

\score {
    \articulate \structure
    \midi {
    }
}

