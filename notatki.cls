\ProvidesClass{notatki}[Klasa do notatek]
\LoadClass{article}

%polskie kodowanie
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

%zmiana marginesów
\RequirePackage{geometry}[a4paper]
\geometry{margin=2cm}
%zamiast tytułu header na każdej stronie
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}

\fancyhead[L]{\textbf{\@title}}
\fancyhead[C]{\href{https://github.com/TCA166/notes}{TCA166}}
\fancyhead[R]{\@date}

\fancyfoot[C]{\thepage}

\renewcommand{\headrulewidth}{0pt}
%do obrazków
\RequirePackage{graphicx}
%do linków
\RequirePackage{hyperref}
\hypersetup{hidelinks}
%dodatki :)
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{diagbox}

%tłumaczenie nazw
\renewcommand{\figurename}{Diagram}
\renewcommand{\tablename}{Tabela}
\renewcommand{\contentsname}{Spis treści}

%do rysowaniu diagramów
\RequirePackage{tikz}
\usetikzlibrary{fit, automata, positioning, shapes.geometric, arrows}
%tikz algorytm style
\tikzstyle{startstop} = [rectangle, rounded corners, minimum width=3cm, minimum height=1cm,text centered, draw=black, fill=red!30]
\tikzstyle{process} = [rectangle, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=orange!30]
\tikzstyle{decision} = [diamond, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=green!30]
\tikzstyle{io} = [trapezium, trapezium left angle=70, trapezium right angle=110, minimum width=3cm, minimum height=1cm, text centered, draw=black, fill=blue!30]
\tikzstyle{arrow} = [thick,->,>=stealth]
