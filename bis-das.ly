\version "2.18.2"
\include "predefined-guitar-fretboards.ly"

\language "english"

\header {
  title = "Bis das der Tod euch scheidet!"
  composer = "Nachtgewalten"
  copyright = "Nachtgewalten"
  tagline = ""
}


guitar = \relative c' {
  \key d \minor
  a8 d f d a d f d   |
  bf d f d bf d f d  |
  g, c e c g c e c   |
  bf d f d a d e d   |

  a d f d a d f d    |
  bf d f d bf d f d  |
  g, c e c g c e c   |
  % bf d f d a d f d  |
  e, g bf g e g bf g |
}

mel = \relative c'' {
  \key d \minor
  a8 a4 a8 a4 a      |
  bf8 bf4 bf bf8 bf4 |
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
    <<
      \new Staff {
        \tempo 4 = 75
        \set Staff.midiInstrument = #"acoustic guitar (steel)"
        \clef "treble_8"
        \guitar
     }

    \new TabStaff {
      \guitar
    }
   >>

   \new Staff = "Timo" <<
    \set Staff.midiInstrument = #"flute"

    \new Voice = "Singstimme" \mel
    \addlyrics { \lyr }
    >>
  >>

  \layout {}
  \midi {}
}