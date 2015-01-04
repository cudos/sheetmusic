\version "2.18.2"

\include "articulate.ly"

\header {
    title = "Phrases."
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
    \tempo "Andante" 4 = 100
    \key f \major
    es'2 c2 as g \bar "||"
    es'4 c as g  \bar "||"
    g as c es \bar "||"
    es4. c8 c2 \bar "||"
    es4. c8 c4. as8 as4. g8 g2 \bar "||"
    es'8 es c c as as g g \bar "||"
    g16 as g8 c es as,  g c es \bar "||"
    es8 es2 c4. \bar "||"
    as8 g8 g16 as c8 as8
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

