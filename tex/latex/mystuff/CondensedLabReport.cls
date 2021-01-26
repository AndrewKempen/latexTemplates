\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{formalLabReport}[Format class for formal lab reports]

\LoadClass[12pt]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage[letterpaper,margin=1in]{geometry}
\RequirePackage{fourier}
\RequirePackage{enumitem}
\RequirePackage{titlesec}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage[tableposition=top]{caption}
\RequirePackage{float}
\RequirePackage{amsmath}
\RequirePackage{pdfpages}
\RequirePackage{parskip}


\setkeys{Gin}{width=\textwidth}

\fancyhf{}
\rfoot{\thepage}
\setlength{\headheight}{15pt}
\pagestyle{fancy}

\titleformat{\section}{\bfseries\fontsize{16pt}{12}\selectfont}{}{0em}{}
\titlespacing\section{0pt}{12pt plus 4pt minus 2pt}{12pt plus 2pt minus 2pt}
\titleformat{\subsection}{\bfseries\fontsize{12pt}{12}\selectfont}{}{0em}{}
\titlespacing\subsection{0pt}{12pt plus 4pt minus 2pt}{6pt plus 2pt minus 2pt}

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
  \LARGE{\textbf{\@title}}
  
  \vspace{0.1cm}
  
  \normalsize
  \@author\\
  \laboratoryDate \\
  
  \vspace{0.1cm}
  
  \prof\\
  \classCode \space - \className\\
  \semester

  
\end{center}

\thispagestyle{empty}

\setcounter{page}{1}

\lhead{\classCode \space - \className}
\rhead{\semester}

}
}
\makeatother