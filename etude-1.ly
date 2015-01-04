%
% Etude 1
%
\version "2.18.2"


\include "articulate.ly"


\header {
    title = "Etude 1."
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
    markup-markup-spacing.minimum-distance = 1.5\cm
    markup-system-spacing.minimum-distance = 0.5\cm
}


melody = \relative c' {
    \set Staff.midiInstrument = #"flute"
    \time 4/4
    \tempo "Andante" 4 = 80
    \key c \major
}

structure = {
    \new Staff = "flute"
    <<
    \set Staff.midiInstrument = #"flute"
    \context Voice = "melody" \melody
    >>
}

\markup {
    Variationen über C-Dur
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

