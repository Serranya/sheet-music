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
    bf d f d a d g d  |

    a d f d a d f d   |
    bf d f d bf d f d |
    g, c e c g c e c  |
    bf d f d a d f d  |
  }


\score {
    <<
      \new Staff {
        \tempo 4 = 80
        \set Staff.midiInstrument = #"acoustic guitar (steel)"
        \clef "treble_8"
        \guitar
     }

      \new TabStaff {
        \guitar
      }
   >>


  \layout {}
  \midi {}
}