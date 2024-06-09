\version "2.24.3"
\language "english"

% Teil 1
globalAA = {
  \key d \major
  \time 3/8
  \tempo "Vivace" 8=120
}

scoreAATenorVoice = \relative c' {
  \globalAA
  \dynamicUp
  \compressEmptyMeasures
  % Music follows here.
  R4.*32
  d8 d d d a r
  
}

scoreAAVerse = \lyricmode {
  % Lyrics follow here.
  Jauch -- zet, fro -- lok -- ket,
}

% Teil 2

% Teil 3
globalCA = {
  \key d \major
  \time 3/8
  \tempo "Schnell" 8=130
}

scoreCATenorVoice = \relative c' {
  \globalCA
  \compressEmptyMeasures
  \dynamicUp
  % Music follows here.
  R4.*16
  d8 d d d fs16 e d cs d8 
}

scoreCAVerse = \lyricmode {
  % Lyrics follow here.
  Herrscher des Himmels, erhöhre das Lallen
}

globalCB = {
  \key a \major
  \time 3/4
  \tempo "Geschwind" 4=80
}

scoreCBTenorVoice = \relative c' {
  \globalCB
  \dynamicUp
  % Music follows here.
  r4 a8 b cs d e4 e a fs2 fs4 e r
}

scoreCBVerse = \lyricmode {
  % Lyrics follow here.
  Las -- set uns nun ge -- hen nach Beth -- le -- hem
}

globalCC = {
  \key d \major
  \time 4/4
  \tempo "Getragen" 4=60
}

scoreCCTenorVoice = \relative c' {
  \globalCC
  \dynamicUp
  % Music follows here.
  \partial 4
  cs4 cs d8 cs a(e) cs(e) a(d4) cs8 a2\fermata
}

scoreCCVerse = \lyricmode {
  % Lyrics follow here.
  Dies hat er al -- les uns ge -- tan
}

globalCD = {
  \key g \major
  \time 4/4
  \tempo "Ruhig" 4=50
}

scoreCDTenorVoice = \relative c' {
  \globalCD
  \dynamicUp
  % Music follows here.
  b4 c fs, g c c8 b e4(d) e2\fermata
}

scoreCDVerse = \lyricmode {
  % Lyrics follow here.
  Ich will dich mit Fleiß be _ -- wah -- ren
}

globalCE = {
  \key a \major
  \time 4/4
  \tempo "Fröhlich" 4=70
}

scoreCETenorVoice = \relative c' {
  \globalCE
  \dynamicUp
  % Music follows here.
  \partial 4
  a8 b
  cs4 cs8 b a4\fermata
}

scoreCEVerse = \lyricmode {
  % Lyrics follow here.
  Seid _ froh die _ -- weil
}

% Teil 4
globalDA = {
  \key f \major
  \time 3/8
  \tempo "Gemächlich" 8=60
}

scoreDATenorVoice = \relative c' {
  \globalDA
  \compressEmptyMeasures
  \dynamicUp
  % Music follows here.
  R4.*26
  c4 d8 bf4 a8 c(d) ef f f r
}

scoreDAVerse = \lyricmode {
  % Lyrics follow here.
  Fallt mit Dan -- ken, fallt mit Lo -- ben
}

globalDB = {
  \key f \major
  \time 3/4
  \tempo "Getragen" 4=50
}

scoreDBTenorVoice = \relative c' {
  \globalDB
  \compressEmptyMeasures
  \dynamicUp
  % Music follows here.
  R2.*1
  \repeat volta 2 { R2.*3 
  f4 c2 c4.(bf8) a4 bf2 a8(bf16 c) c4(bf8 a bf4) a2 r4 R2.*3
  f'4
  }
}

scoreDBVerse = \lyricmode {
  % Lyrics follow here.
  Jesu richte mein Beginnen
}

% Teil 5

% Teil 6