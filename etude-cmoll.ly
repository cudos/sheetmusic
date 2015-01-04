%
% Etude 1
%
\version "2.18.2"


\include "articulate.ly"


\header {
    title = "Etude 2."
    composer = "Jens Hoffmann."
    % dedication = "Dedication"
    subtitle = "Einfache Variationen in C-Moll"
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
    % ragged-right = ##f
    markup-markup-spacing.minimum-distance = 1.5\cm
    markup-system-spacing.minimum-distance = 0.5\cm
}


melody = \relative c' {
    \set Staff.midiInstrument = #"flute"
    \time 3/4
    \key c \minor
    \tempo "Andante" 4 = 80
    g'8 c es g, c es \bar "||"
    g8 c\staccato c\staccato g\staccato es\staccato g,\staccato \bar "||"
    \time 4/4
    g8\staccato c\staccato es\staccato c\staccato
    g\staccato c\staccato es\staccato c\staccato \bar "||"
    g4 c es8 d c4 \bar "||"
    % \tempo "Allegro" 4 = 120
    g8~g32 (g32 as bes c4) es c \bar "||"
    g4. g8 es'4 c g c2. \bar "||"
    g8 g g g g es' c'4 c,4 r2 r8 \bar "||"
    g'8 c g es g c, g' g, g' \bar "||"
    r2. r8 g,8 c' c, es c c' c, es c \bar "||"
    g4. c8 es4\staccato c4\staccato g4. c8 es4\staccato c\staccato \bar "||"
    es4 g2 c4~c4 c,2 r4 \bar "||"
    g4. c8 es4. c8 es4. d8 c2 \bar "||"
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
        piece = " "
    }
}

\score {
    \articulate \structure
    \midi {
    }
}

