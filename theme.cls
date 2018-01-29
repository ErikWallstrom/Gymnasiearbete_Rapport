\ProvidesClass{theme}

\LoadClass[12pt,a4paper,oneside,titlepage]{article}
\RequirePackage[a4paper,margin=2.5cm]{geometry}
\usepackage{graphicx}
\linespread{1}

\def \@title { [TITLE] }
\def \@subtitle { [SUBTITLE] }
\def \@author { [AUTHOR] }
\def \@supervisor { [SUPERVISOR] }
\def \@semester { [SEMESTER] }

\renewcommand{\title}[1]{ \def \@title { #1 } }
\newcommand{\subtitle}[1]{ \def \@subtitle { #1 } }
\renewcommand{\author}[1]{ \def \@author { #1 } }
\newcommand{\supervisor}[1]{ \def \@supervisor { #1 } }
\newcommand{\semester}[1]{ \def \@semester { #1 } }

\renewcommand{\maketitle}{%
	\clearpage
	\thispagestyle{empty}
	\begin{flushleft}
		\textbf{Gymnasiearbete (100 p)} \hfill \textbf{Supervisors:}\\
		IT-Gymnasiet G\"oteborg \hfill \@supervisor\\
		\@semester
	\end{flushleft}
	\topskip0pt
	\vspace*{\stretch{.4}}
	\begin{center}
		\textbf{{\Huge { \@title }}}\\[30pt]
		{\Large { \@subtitle }}
		{\Large { \@date }}
	\end{center}
	\vspace*{\fill}
	%\begin{flushright}
		%\textbf{Author:}
%
		%\@author
	%\end{flushright}
	\begin{flushleft}
		Created with {\LaTeX} \hfill \textbf{Author:} \\
		\hfill \@author
	\end{flushleft}
	\newpage
}
