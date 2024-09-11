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
\RequirePackage{fontspec}
\RequirePackage{unicode-math}

\setmainfont{Times New Roman}

\newcommand{\formattedSectionTitle}[1]{
  \begin{center}
    \fontsize{12pt}{14.4pt}\selectfont\bfseries\MakeUppercase{#1}
  \end{center}
}

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
    \MakeUppercase{\normalfont\bfseries Jalur Reguler}\\
    \vspace{1.5cm}
    {\fontsize{14pt}{16pt}\selectfont\MakeUppercase{\normalfont\bfseries\@titleind}\par\nobreak}
    \vspace{1cm}
    {\normalfont\bfseries Jenjang Strata 1}
    \vfill
    \includegraphics[width=4.5cm, height=4.5cm, keepaspectratio]{images/logo-unib.png}
    \vfill
    {\normalfont disusun oleh:}\\
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

%------------------------------------------------------------
% Empty Approval Page
%------------------------------------------------------------
\newcommand{\emptyApprovalPage}{%
  \clearpage
  \thispagestyle{empty}
  \mbox{}
  \clearpage
}

%------------------------------------------------------------
% Table of Contents
%------------------------------------------------------------
\newcommand{\tableOfContents}{%
  \renewcommand{\contentsname}{}
  \begingroup
  \let\clearpage\relax
  \let\cleardoublepage\relax
  \formattedSectionTitle{DAFTAR ISI}
  \tableofcontents
  \endgroup
  \clearpage
}

%------------------------------------------------------------
% List of Tables
%------------------------------------------------------------
\newcommand{\listOfTables}{%
  \renewcommand{\listtablename}{}
  \begingroup
  \let\clearpage\relax
  \let\cleardoublepage\relax
  \formattedSectionTitle{DAFTAR TABEL}
  \listoftables
  \endgroup
  \clearpage
}

%------------------------------------------------------------
% List of Figures
%------------------------------------------------------------
\newcommand{\listOfFigures}{%
  \renewcommand{\listfigurename}{}
  \begingroup
  \let\clearpage\relax
  \let\cleardoublepage\relax
  \formattedSectionTitle{Daftar Gambar}
  \listoffigures
  \endgroup
  \clearpage
}

%------------------------------------------------------------
% Intisari (Abstract in Indonesian)
%------------------------------------------------------------
\newcommand{\intisari}{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{INTISARI}
  \begin{center}
    \MakeUppercase{\normalfont\bfseries INTISARI}
  \end{center}
  \vspace{1em}
  \begin{singlespace}
    \noindent\hspace{\parindent}Penelitian ini bertujuan untuk mengembangkan sistem prediksi lama studi mahasiswa menggunakan metode Jaringan Syaraf Tiruan (JST) dengan algoritma \textit{backpropagation}. Latar belakang penelitian ini adalah pentingnya ketepatan waktu kelulusan mahasiswa sebagai indikator kualitas pendidikan tinggi, serta dampak negatif dari keterlambatan kelulusan. Sistem prediksi yang diusulkan akan mengintegrasikan dari data \textit{e-learning} mahasiswa untuk memprediksi lama studi. Fokus utama penelitian adalah pada optimalisasi arsitektur jaringan JST, penentuan jumlah neuron pada \textit{hidden layer}, serta pencarian nilai \textit{learning rate} dan momentum yang optimal untuk meningkatkan akurasi prediksi. Metodologi penelitian mengadopsi pendekatan CRISP-DM, meliputi tahap pemahaman bisnis, pemahaman data, persiapan data, pemodelan, evaluasi, dan deployment. Hasil penelitian diharapkan dapat memberikan alat prediksi yang akurat bagi institusi pendidikan tinggi untuk mengidentifikasi mahasiswa berisiko mengalami keterlambatan studi, sehingga intervensi dini dapat dilakukan untuk meningkatkan tingkat kelulusan tepat waktu.

    \vspace{1em}
    \noindent
    \textbf{Kata kunci:} Prediksi lama studi, Jaringan Syaraf Tiruan, \textit{E-learning}, \textit{Backpropagation}, \textit{Machine Learning}, Pendidikan tinggi, CRISP-DM
  \end{singlespace}
}

%------------------------------------------------------------
% Abstract (in English)
%------------------------------------------------------------
\newcommand{\englishabstract}{%
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{ABSTRACT}
  \begin{center}
    \MakeUppercase{\normalfont\bfseries ABSTRACT}
  \end{center}
  \vspace{1em}
  \begin{singlespace}
    \noindent\hspace{\parindent}\textit{This research aims to develop a student study duration prediction system using Artificial Neural Network (ANN) method with backpropagation algorithm. The background of this study is the importance of timely graduation as an indicator of higher education quality, and the negative impacts of delayed graduation. The proposed prediction system will integrate students' academic data to predict study duration. The main focus of the research is on optimizing the ANN network architecture, determining the optimal number of neurons in the hidden layer, and finding the appropriate learning rate and momentum values to improve prediction accuracy. The research methodology adopts the CRISP-DM approach, including the stages of business understanding, data understanding, data preparation, modeling, evaluation, and deployment. The research results are expected to provide an accurate prediction tool for higher education institutions to identify students at risk of experiencing study delays, so that early interventions can be carried out to improve on-time graduation rates.}

    \vspace{1em}
    \noindent
    \textit{\textbf{Keywords:} Study duration prediction, Artificial Neural Network, E-learning, Backpropagation, Machine Learning, Higher education, CRISP-DM}
  \end{singlespace}
}

\startpagenumbering  % Start numbering from 1 in Arabic
