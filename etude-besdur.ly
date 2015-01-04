\version "2.18.2"


\include "articulate.ly"


\header {
    title = "Etude 2."
    composer = "Jens Hoffmann."
    % dedication = "Dedication"
    subtitle = "Variationen eines gebrochene Akkordes"
    subsubtitle = "B-Dur"
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
    % ragged-right = ##f
    markup-markup-spacing.minimum-distance = 1.5\cm
    markup-system-spacing.minimum-distance = 0.5\cm
}
 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melody = \relative bes' {
    \set Staff.midiInstrument = #"flute"
    \time 4/4
    \key bes \major
    bes4 d f d \bar "||"
    bes4. d8 f4 d \bar "||"
    bes4 d4. f8 d4 \bar "||"
    bes4 d4 f4. d8 \bar "||"
    bes8 d4. f4 d4 \bar "||"
    bes4 d8 f4. d4 \bar "||"
    bes4 d4 f8 d4. \bar "||"
    bes4. d8 f4. d8 \bar "||"
    bes8 d4. f8 d4. \bar "||"
    bes8 d8 f4. d4. \bar "||"
    bes4. d4. f8 d8 \bar "||"
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
    \header {
        piece = "Rythmische Änderungen"
    }
}

\score {
    \articulate \structure
    \midi {
    }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melody = \relative bes' {
    \set Staff.midiInstrument = #"flute"
    \time 4/4
    \key bes \major
    bes4 d4 f4 d4 \bar "||"
    \tuplet 3/2 {bes8 bes bes} d4 f4 d4 \bar "||"
    bes4 \tuplet 3/2 {d8 d d} f4 d4 \bar "||"
    bes4 d4 \tuplet 3/2 {f8 f8 f8} d4 \bar "||"
    bes4 d4 f4 \tuplet 3/2 {d8 d d} \bar "||"
    \tuplet 3/2 {bes8 bes8 bes8} \tuplet 3/2 {d8 d d} f4 d4 \bar "||"
    \tuplet 3/2 {bes8 bes8 bes8} d4 \tuplet 3/2 {f8 f8 f8} d4 \bar "||"
    \tuplet 3/2 {bes8 bes bes} d4 f4 \tuplet 3/2 {d8 d d} \bar "||"
    bes4 \tuplet 3/2 {d8 d d} \tuplet 3/2 {f8 f8 f8} d4 \bar "||"
    bes4 \tuplet 3/2 {d8 d d} f4 \tuplet 3/2 {d8 d d} \bar "||"
    bes4 d4 \tuplet 3/2 {f8 f f} \tuplet 3/2 {d8 d d} \bar "||"
    \tuplet 3/2 {bes8 bes8 bes8} \tuplet 3/2 {d8 d d} \tuplet 3/2 {f8 f f} d4 \bar "||"
    \tuplet 3/2 {bes8 bes8 bes8} \tuplet 3/2 {d8 d d} f4 \tuplet 3/2 {d8 d d} \bar "||"
    \tuplet 3/2 {bes8 bes8 bes8} d4 \tuplet 3/2 {f8 f f} \tuplet 3/2 {d8 d d} \bar "||"
    bes4 \tuplet 3/2 {d8 d d} \tuplet 3/2 {f8 f f} \tuplet 3/2 {d8 d d} \bar "||"
    \tuplet 3/2 {bes8 bes8 bes8} \tuplet 3/2 {d8 d8 d8} \tuplet 3/2 {f8 f8 f8} \tuplet 3/2 {d8 d8 d8} \bar "||"
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
    \header {
            piece = "Hinzufügen von Triolen"
    }
}

\score {
    \articulate \structure
    \midi {
    }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

melody = \relative bes' {
    \set Staff.midiInstrument = #"flute"
    \time 4/4
    \key bes \major
    d4 f d bes \bar "||"
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
    \header {
        piece = "Änderung der Reihenfolge"
    }
}

\score {
    \articulate \structure
    \midi {
    }
}

