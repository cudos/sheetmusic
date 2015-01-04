\version "2.18.2"


\include "articulate.ly"


\header {
    title = "Opus 1."
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
    a2 r4.
    \tuplet 3/2 {bes16 bes16 bes16}
    r1
    \tuplet 3/2 {bes16 bes16 bes16}
    r8
    r2.
    r1
    \tuplet 5/4 {bes16 bes16 bes16 bes16 bes16}
    % a2\pp bes4\staccato bes16 bes bes bes4\staccato
    % bes4\staccato bes4\staccato bes4\staccato bes4\staccato
    % bes4\staccato bes4\staccato bes4\staccato bes4\staccato
    % bes4\staccato a2.
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

