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
\RequirePackage{indentfirst}
\RequirePackage{apacite}
\RequirePackage[top=3cm, right=3cm, bottom=3cm, left=4cm]{geometry} % Set margins to 4-3-3-3
\RequirePackage[indonesian]{babel}
\RequirePackage{url}
\RequirePackage{titlesec}
\RequirePackage{pdflscape}

% Define commands for document information
\newcommand{\titleind}[1]{\def\@titleind{#1}}
\newcommand{\fullname}[1]{\def\@fullname{#1}}
\newcommand{\idnum}[1]{\def\@idnum{#1}}
\newcommand{\dept}[1]{\def\@dept{#1}}
\newcommand{\faculty}[1]{\def\@faculty{#1}}
\newcommand{\university}[1]{\def\@university{#1}}
\newcommand{\yearsubmit}[1]{\def\@yearsubmit{#1}}

\newcommand{\startpagenumbering}{%
  \clearpage
  \pagenumbering{arabic}%
  \setcounter{page}{1}%
}

\@afterindenttrue %Indent the 1st paragraph

%------------------------------------------------------------
% Redefine bibliography name
%------------------------------------------------------------
\addto\captionsindonesian{
  \renewcommand{\bibname}{Daftar Pustaka}
}

%------------------------------------------------------------
% Redefine section numbering
%------------------------------------------------------------
\titleformat{\section}
  {\normalfont\normalsize\bfseries}{\thesection}{1em}{}
\titlespacing*{\section}
  {0pt}{3.5ex plus 1ex minus .2ex}{0.1ex plus .2ex}
\renewcommand{\thesection}{\arabic{section}}

%------------------------------------------------------------
% Redefine caption names
%------------------------------------------------------------
\renewcommand{\chaptername}{BAB}
\renewcommand{\figurename}{Gambar}
\renewcommand{\tablename}{Tabel}

% Redefine chapter
\renewcommand{\@makechapterhead}[1]{%
  {\parindent \z@ \centering \normalfont
  \ifnum \c@secnumdepth >\m@ne
  \normalsize\bfseries \@chapapp\space \thechapter
  \par\nobreak
  \vskip -5\p@
  \fi
  \interlinepenalty\@M
  \normalsize \bfseries #1\par\nobreak
  \vskip 10\p@
}}

% Redefine Section with reduced space after
\renewcommand{\section}{
  \@startsection {section}{1}{\z@}%
  {-3.5ex \@plus -1ex \@minus -.2ex}% Space before (unchanged)
  {0.1ex \@plus.2ex}% Reduced space after (was 2.3ex)
  {\normalfont\normalsize\bfseries}
}

% Redefine subsection
\renewcommand{\subsection}{
  \@startsection{subsection}{2}{\z@}%
  {-3.25ex\@plus -1ex \@minus -.2ex}%
  {0.1ex \@plus.2ex}% Reduced space after (was 2.3ex)
  {\normalfont\normalsize\bfseries}
}

% Redefine subsubsection
\renewcommand{\subsubsection}{
  \@startsection{subsubsection}{3}{\z@}%
  {3.25ex \@plus1ex \@minus.2ex}%
  {1em}%
  {\normalfont\normalsize\bfseries}
}

\setlength{\parindent}{3em} % Set indentation
\setlength{\parskip}{1em} % Space between paragraph

%------------------------------------------------------------
% Define cover in Indonesian
%------------------------------------------------------------
\newcommand{\cover}{%
\setcounter{page}{0}%
\thispagestyle{empty}%
\begin{center}
  \begin{singlespace}
    \MakeUppercase{\normalfont\bfseries Proposal Skripsi}\\
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

\startpagenumbering  % Start numbering from 1 in Arabic
