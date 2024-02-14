%% start of file `assignmeownt.cls'.

%% Copyright 2024 Madhavan Raja (github.com/madhavan-raja).
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License version 1.3c,
% available at http://www.latex-project.org/lppl/.


%------------------------------
% Identification
%------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{assignmeownt}[2014/08/16 Assignmeownt LaTeX class]


%------------------------------
% Class Options
%------------------------------

\LoadClass[10pt]{article}

\RequirePackage[margin=1in, headheight=13.6pt]{geometry}
\RequirePackage[p,osf]{cochineal}
\RequirePackage{ulem}
\RequirePackage{algpseudocode}
\RequirePackage{algorithm, algorithmicx}
\RequirePackage{amsmath,amssymb,amsthm}
\RequirePackage{mathtools}
\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[explicit]{titlesec}
\RequirePackage{lastpage}
\RequirePackage{tikz}
\RequirePackage{pgfplots}
\RequirePackage{xcolor}
\RequirePackage{xparse}

\pgfplotsset{compat=1.18}


%------------------------------
% Document Information
%------------------------------

\newcommand*{\coursenumber}[1]{\newcommand{\thecoursenumber}{#1}}
\newcommand*{\coursetitle}[1]{\newcommand{\thecoursetitle}{#1}}
\newcommand*{\doctitle}[1]{\newcommand{\thedoctitle}{#1}}
\newcommand*{\docauthor}[1]{\newcommand{\thedocauthor}{#1}}

\title{\large{\textbf{\thecoursenumber: \thecoursetitle{}\\\thedoctitle{}}}}
\author{\thedocauthor{}}
\date{}


%------------------------------
% Headers
%------------------------------

\fancypagestyle{firststyle}
{
  \fancyhf{}
  \cfoot{Page \thepage\ of \pageref{LastPage}}
  \renewcommand{\headrulewidth}{0pt}
}

\fancypagestyle{nonfirststyle}
{
  \fancyhf{}
  \lhead{\textbf{\thecoursenumber: \thedoctitle{}}}
  \rhead{\thedocauthor{}}
  \cfoot{Page \thepage\ of \pageref{LastPage}}
}
\pagestyle{nonfirststyle}

\setlength{\parindent}{0pt}


%------------------------------
% Section Headings
%------------------------------

\renewcommand\thesubsection{(\alph{subsection})}

\titleformat{\section}{\Large\bfseries}{}{0em}{#1}
\titleformat{\subsection}{\large\bfseries}{}{0em}{#1}

\DeclareDocumentCommand\question{g}{\section{Question \thesection \IfNoValueF {#1} {: #1}}}
\DeclareDocumentCommand\solution{g}{\section{Solution \thesection \IfNoValueF {#1} {: #1}}}
\DeclareDocumentCommand\questionpart{g}{\subsection{Part \thesubsection \IfNoValueF {#1} {: #1}}}


%------------------------------
% Scientific Notations
%------------------------------

\newtheorem{theorem}{Theorem}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem*{definition}{Definition}

\newcommand{\bigo}[1]{\ensuremath{\mathcal{O}(#1)}}
\newcommand{\softo}[1]{\widetilde{\bigO{#1}}}
\newcommand{\bigtheta}[1]{\ensuremath{\Theta(#1)}}
\newcommand{\bigomega}[1]{\ensuremath{\Omega(#1)}}
\newcommand{\littleo}[1]{\ensuremath{o}(#1)}
\newcommand{\littleomega}[1]{\ensuremath{\omega}(#1)}


%------------------------------
% Comments
%------------------------------

\newcommand{\highlightedtext}[3]{\colorbox{#1}{\texttt{\color{#2} #3}}}

\newcommand{\taggedcomment}[3]{
  \highlightedtext{#1}{white}{#2}
  \highlightedtext{white}{#1}{#3}
}

\newcommand{\todo}[1]{\taggedcomment{red}{TODO}{#1}}
\newcommand{\note}[1]{\taggedcomment{blue}{NOTE}{#1}}


%------------------------------
% Misc Definitions
%------------------------------

\newcommand*\Let[2]{\State #1 $\gets$ #2}

\newcommand{\finalresult}[1]{\textbf{\uline{#1}}}


%% end of file `assignmeownt.cls'.
