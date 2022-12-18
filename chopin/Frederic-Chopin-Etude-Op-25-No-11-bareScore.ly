globalA = {
  \key c \major
  \time 4/4
  \tempo "Lento" 4=100
}

scoreARight = \relative c'' {
  \globalA
  % Music follows here.
  c d
}

scoreALeft = \relative c' {
  \globalA
  % Music follows here.
  
}

claveA = {\new DrumStaff <<
  \drummode {\globalA
    << {
         hh8 cl hh cl hh cl
    } \\ {
      bd4 sn4 sn4
    } >>
  }
>>
}