\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{FormalLabReport}[Format class for formal lab reports]

\LoadClass[12pt]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage[letterpaper,margin=1in]{geometry} % Configures page size and bounds
\RequirePackage{fourier} % Sets font to fourier style
\RequirePackage{enumitem} % For numbered lists
\RequirePackage{titlesec}
\RequirePackage{graphicx} % Adds ability to insert images
\RequirePackage{fancyhdr} % Adds header
\RequirePackage[tableposition=top]{caption} % Adds captioning, sets caption position for tables to top
\RequirePackage{float} % Adds H float option to make images position in line with text
\RequirePackage{amsmath} % Provides math symbols and tools
\RequirePackage{parskip} % Removes tabs at beginning of paragraphs
\RequirePackage{xurl} % Fixes URL's expending past edges of pages
\RequirePackage{hyperref} % Adds URLs and linking
\RequirePackage[capitalise,noabbrev]{cleveref}


\setkeys{Gin}{width=\textwidth}

\fancyhf{}
\rfoot{\thepage}
\setlength{\headheight}{15pt}
\pagestyle{fancy}

\titleformat{\section}{\bfseries\fontsize{16pt}{12}\selectfont}{}{0em}{}
\titlespacing\section{0pt}{12pt plus 4pt minus 2pt}{12pt plus 2pt minus 2pt}
\titleformat{\subsection}{\bfseries\fontsize{12pt}{12}\selectfont}{}{0em}{}
\titlespacing\subsection{0pt}{12pt plus 4pt minus 2pt}{6pt plus 2pt minus 2pt}
\titleformat{\subsubsection}{\fontsize{12pt}{12}\selectfont}{}{0em}{}
\titlespacing\subsubsection{0pt}{12pt plus 4pt minus 2pt}{6pt plus 2pt minus 2pt}

\setlength\parskip{1em plus 0.1em minus 0.2em}


\makeatletter
\renewcommand*{\fps@figure}{H}
\renewcommand*{\fps@table}{H}

\g@addto@macro\@floatboxreset\centering


\newcommand{\submissionDate}[1]{\def\submissionDate{#1}}
\newcommand{\laboratoryDate}[1]{\def\laboratoryDate{#1}}
\newcommand{\prof}[1]{\def\prof{#1}}
\newcommand{\className}[1]{\def\className{#1}}
\newcommand{\classCode}[1]{\def\classCode{#1}}
\newcommand{\semester}[1]{\def\semester{#1}}

\renewcommand\maketitle{
{

\begin{center}
  \mbox{}\vfill
  \Huge{\textbf{\@title}}
  
  \vspace{0.8cm}
  
  \normalsize
  \@author\\
  Laboratory Date: \laboratoryDate \\
  Report Submission Date: \submissionDate
  
  \vspace{0.8cm}
  
  \prof\\
  \className\\
  \classCode\\
  \semester
  
  \vfill
\end{center}
\thispagestyle{empty}
\newpage

\setcounter{page}{1}

\lhead{\classCode - \className}
\rhead{\semester}

}
}
\makeatother