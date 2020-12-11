\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{informalLabReport}[Format class for informal lab reports]

\LoadClass[12pt]{article}

\RequirePackage[letterpaper,margin=1in,tmargin=0.5in,includeheadfoot]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage[utf8]{inputenc}
\RequirePackage{fourier}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{pdfpages}

\setkeys{Gin}{width=\textwidth}

\titleformat{\section}{\bfseries\fontsize{16pt}{12}\selectfont}{}{0em}{}
\titlespacing\section{0pt}{12pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}

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
\newcommand{\labWeek}[1]{\def\labWeek{#1}}

\fancypagestyle{firststyle}
{
    \fancyhf{}
    
    \lhead{
        \includegraphics[height=36pt, width=29pt]{msoe.png}
        \Large{
            \classCode \\
            Lab Week \#\labWeek
        }
    }
    
    \rhead{
        \Large{
            \@author \\
            \laboratoryDate
        }
    }
    \newgeometry{margin=1in,tmargin=0.5in,headheight=65pt,includeheadfoot}
}

\renewcommand\maketitle{
{
\thispagestyle{firststyle}
\begin{center}
    \LARGE{\@title}
\end{center}
}
}
\makeatother