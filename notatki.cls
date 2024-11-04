\ProvidesClass{notatki}[Klasa do notatek]
\LoadClass{article}

%polskie kodowanie
\RequirePackage[T1]{fontenc}

%zmiana marginesów
\RequirePackage{geometry}[a4paper]
\geometry{margin=2cm}
%zamiast tytułu header na każdej stronie
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\textbf{\@title}}
\fancyhead[R]{\@date}
\renewcommand{\headrulewidth}{0pt}
%do obrazków
\RequirePackage{graphicx}
%do rysowaniu diagramów
\RequirePackage{tikz}
\usetikzlibrary{fit, automata, positioning}
%do linków
\RequirePackage{hyperref}
\hypersetup{hidelinks}
%dodatki :)
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{diagbox}
