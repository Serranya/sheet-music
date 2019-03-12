\version "2.18.2"

\language "english"

\header {
  title = "Bis das der Tod euch scheidet!"
  composer = "Nachtgewalten"
  copyright = "Nachtgewalten"
  tagline = ""
}

guitar = \relative c {
  \tempo 4 = 120
  \key a \minor
  e8 a c a e a c a  |
  f8 a c a f a c a  |
  d,8 g b g d g b g |
  f8 a b a f a d a  |

  % 1. verse
  e8 a c a e a c a  |
  f8 a c a f a c a  |
  d,8 g b g d g b g |
  f8 a b a f a d a  |

  e8 a c a e a c a  |
  f8 a c a f a c a  |
  d,8 g b g d g b g |
  f8 a b a f a d a  |

  % 2. verse
  e8 a c a e a c a  |
  f8 a c a f a c a  |
  d,8 g b g d g b g |
  f8 a b a f a d a  |

  e8 a c a e a c a  |
  f8 a c a f a c a  |
  d,8 g b g d g b g |
  f8 a b a f a d a  |

  % 3. verse
  e8 a c a e a c a  |
  f8 a c a f a c a  |
  d,8 g b g d g b g |
  f8 a b a f a d a  |

  e8 a c a e a c a  |
  f8 a c a f a c a  |
  d,8 g b g d g b g |
  f8 a b a f a d a  |
}

pianoright = \relative c' {
  \tempo 4 = 120
  \clef treble
  <e a c>1 |
  <f a c>1 |
}

pianoleft = \relative c {
  \tempo 4 = 120
  \clef bass
  <e a c>1 |
  <f a c>1 |
}

mel = \relative c'' {
  \key a \minor
  a8 a4 a4 a8 a4     |
  bf8 bf bf2 bf8 bf  |
  g8 g g g g2        |
  f4 f8 f f8 f f4    |
  a4 a8 a a2         |
  bf8 bf bf bf bf2   |
  g4 g8 g8 g2        |
  f8 f f4 e4 e       |
}

lyr = \lyricmode {
  Die Nacht bricht her -- an           |
  Es don -- nert, es blitzt!           |
  Und wäh -- rend du vor               |
  dei -- nem neuen Fern -- seher sitzt |
  Steht dei -- ne Frau                 |
  Wie üb -- lich am Herd.              |
  Egal was sie tut.                    |
  Sie macht es ver -- kehrt            |
}

\score {
  <<
    \new StaffGroup <<
      \new Staff {
        \set Staff.midiInstrument = #"acoustic guitar (steel)"
        \clef "treble_8"
        \guitar
      }
      \new TabStaff \with {
        stringTunings = \stringTuning <a, e, a' d fs b>
      } {
        \guitar
      }
    >>

    %{\new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano"
      \new Staff {
        \pianoright
      }
      \new Staff {
        \pianoleft
      }
    >>}%


   %{\new Staff = "Timo" <<
    \set Staff.midiInstrument = #"flute"

    \new Voice = "Singstimme" \mel
    \addlyrics { \lyr }
    >> %}
  >>

  \layout {}
  \midi {}
}