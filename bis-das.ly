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
  a8 d f d a d f d  |
  bf d f d bf d f d |
  g, c e c g c e c  |
  bf d f d a d e d  |

  a d f d a d f d   |
  bf d f d bf d f d |
  g, c e c g c e c  |
  bf d f d a d f d  |
}

mel = \relative c'' {
  \key d \minor
  a8 a4 a8 a4 a   |
  bf8 bf4 bf bf8 bf4 | 
}
lyr = \lyricmode {
  Die Nacht bricht her -- an
  Es don -- nert, es blitzt!
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
    \set Staff.midiInstrument = #"trumpet"

    \new Voice = "Singstimme" \mel
    \addlyrics { \lyr }
    >>
  >>

  \layout {}
  \midi {}
}