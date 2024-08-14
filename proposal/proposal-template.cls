%-------------------------------------------------------------------------------
% Template Skripsi untuk Informatika UNIB
%
% Dibuat oleh @WahyuS002 (G1A018093)
% Silakan digunakan dan diedit seperlunya, semoga bermanfaat
%
% (c) 2024
%-------------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{proposal-template}[2024/01/01 Minimal Proposal Template]

\LoadClass[12pt,a4paper]{report}

% Required packages
\RequirePackage{setspace}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage[table]{xcolor}
\RequirePackage{array}
\RequirePackage{multirow}

% Define commands for document information
\newcommand{\titleind}[1]{\def\@titleind{#1}}
\newcommand{\fullname}[1]{\def\@fullname{#1}}
\newcommand{\idnum}[1]{\def\@idnum{#1}}
\newcommand{\dept}[1]{\def\@dept{#1}}
\newcommand{\faculty}[1]{\def\@faculty{#1}}
\newcommand{\university}[1]{\def\@university{#1}}
\newcommand{\yearsubmit}[1]{\def\@yearsubmit{#1}}

%------------------------------------------------------------
%Define cover in Indonesian
%------------------------------------------------------------
\newcommand{\cover}{%
\thispagestyle{empty}%
\pagenumbering{roman}
\setcounter{page}{1}
\begin{center}
  \begin{singlespace}
    \MakeUppercase{\normalfont\bfseries Skripsi}\\
    \vspace{1.5cm}
    {\fontsize{14pt}{16pt}\selectfont\MakeUppercase{\normalfont\bfseries\@titleind}\par\nobreak}
    \vspace{1.0cm}
    \vfill
    \includegraphics[width=0.4\textwidth]{images/logo-unib.png}
    \vfill
    {\normalfont
    \bfseries Oleh:}\\
    \vspace{1.5cm}
    \MakeUppercase{\normalfont\bfseries\underline{\@fullname}}\\
    \MakeUppercase{\normalfont\bfseries \@idnum}\\
    \vspace{1.5cm}
    {\normalfont 
    \MakeUppercase{\normalfont\bfseries PROGRAM STUDI \@dept}\\
    \MakeUppercase{\normalfont\bfseries FAKULTAS \@faculty}\\
    \MakeUppercase{\normalfont\bfseries\@university}\\
    \vspace{0.5cm}
    {\normalfont\bfseries\@yearsubmit}}
  \end{singlespace}
\end{center}
}

