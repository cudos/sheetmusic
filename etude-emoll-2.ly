\version "2.18.2"


\include "articulate.ly"


\header {
    title = "Etude 3."
    composer = "Jens Hoffmann."
    % dedication = "Dedication"
    subtitle = "Variationen eines gebrochene Akkordes"
    subsubtitle = "E-Moll"
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

melody = \relative e' {
    \set Staff.midiInstrument = #"flute"
    \time 4/4
    \key e \minor
    e8 fis g a b c d e \bar "||"
    e8 d c b a g fis e \bar "||"
    e4 g b e \bar "||"
    e4 b g e4 \bar "||"
    e'8. e16 b8. b16 g8. g16 e8. e16 \bar "||"
    e8. e16 g8. g16 b8. b16 e8. e16 \bar "||"
    e,4 fis16 fis fis g4 fis16 fis fis b4 a16 a a b4 a16 a a e'4 a,16 a a \bar "||"
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
        % piece = "Ungeordnete Variationen"
    }
}

\score {
    \articulate \structure
    \midi {
    }
}

