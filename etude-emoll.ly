\version "2.18.2"


\include "articulate.ly"


\header {
    title = "Etude 2."
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
    e g b2 \bar "||"
    e,4 e4. g8 b4 b4. b8 e4 r4 \bar "||"
    \tuplet 3/2 {e,8 e e} \tuplet 3/2 {g g b16 g} \tuplet 3/2 {b8 b b} \tuplet 3/2 {b b b} \bar "||"
    e,4. e8 b'4. b8 e,4. e8 g2 \bar "||"
    g4. g8 b4. b8 e,4. e8 g2 \bar "||"
    g8 b g b e, b' e, b' e2 r2 \bar "||"
    g,8 b g b   e, g e g e'4 b g e \bar "||"
    e4 e'4 e,4 g b2 r2 \bar "||"
    e,4 g e b' e, e'4. e8 e4 \bar "||"
    e,4 g e b' e,4. c'8^"Z" e4 e \bar "||"
    c4 g e2 b'2 e2 \bar "||"
    c8 b c e4 g b8~b8 r8 r4 \bar "||"
    c,8 b c e4. d8 e4 g b \bar "||"
    c,8 b c e4. d8 c b e4 g b \bar "||"
    c,8 b c e4. d8. c16 b8 e4 g b \bar "||"
    c,8 b c e4. d8. c16 b8. c16 e4 g b \bar "||"
    c,8 b c e4. d8. c16 b8. c16 e8 d e f g4 b \bar "||"
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
        piece = "Ungeordnete Variationen"
    }
}

\score {
    \articulate \structure
    \midi {
    }
}

