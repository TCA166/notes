\ProvidesClass{konspekt}[Klasa do bardziej zwięzłych notatek]
\LoadClass{../notatki}

\geometry{margin=1cm, left=1cm, right=1cm, bottom=1cm, headsep=0.5cm}
\fancyfoot{}

\makeatletter
\renewcommand
\section{\@startsection {section}{1}{\z@}%
  {-20pt plus -1pt minus -1pt}% space before
  {2pt plus 1pt minus 1pt}% space after
{\normalfont\large\bfseries}} % style
\makeatother