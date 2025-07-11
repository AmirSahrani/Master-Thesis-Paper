%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Thesis LaTeX Template - THESIS CLASS FILE
%
% This template has been downloaded from:
% http://www.latextemplates.com
%
% This class file defines the structure and design of the template. 
%
% There is one part of this file that needs to be filled out - the variables
% dictating the document particulars such as the author name, university
% name, etc. You will find these in the commented "DOCUMENT VARIABLES"
% section below.
%
% The other two easily-editable sections are the margin sizes and abstract.
% These have both been commented for easy editing. Advanced LaTeX
% users will have no trouble editing the rest of the document to their liking.
%
% Original header:
%% This is file `Thesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk
%% Further modified by www.latextemplates.com
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
[2007/22/02 v1.0
	LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
	\edef\@curroptions{\@ptionlist{\@currname.\@currext}}
	\@tempswafalse
	\@tfor\@this:=#2\do{
		\@expandtwoargs\in@{,\@this,}{,\@curroptions,}
		\ifin@ \@tempswatrue \@break@tfor \fi}
	\let\@this\@empty
	\if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\newcommand\Declaration[1]{
\btypeout{Declaration of Authorship}
\addtotoc{Declaration of Authorship}
\thispagestyle{plain}
\null\vfil
%\vskip 60\p@
\begin{center}{\huge\bf Declaration of Authorship\par}\end{center}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
		January\or February\or March\or April\or May\or June\or
		July\or August\or September\or October\or November\or December\fi
	\space \number\year}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}

\RequirePackage[utf8]{inputenc} % Allows the use of international characters (e.g. Umlauts)

%----------------------------------------------------------------------------------------
%	MARGINS
%----------------------------------------------------------------------------------------
\setmarginsrb  { 1.5in}  % left margin
{ 0.6in}  % top margin
{ 1.0in}  % right margin
{ 0.8in}  % bottom margin
{  20pt}  % head height
{0.25in}  % head sep
{   9pt}  % foot height
{ 0.3in}  % foot sep
%----------------------------------------------------------------------------------------
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never breaklligence (m footnotes.
\usepackage{fancyhdr}
\usepackage{titlesec}
\usepackage[Sonny]{fncychap}
% \usepackage[T1]{fontenc}
\usepackage{charter}           % For Charter text font
\usepackage{dsfont}
\usepackage{newtxmath}
\let\Bbbk\undefined
\let\openbox\undefined
\usepackage{amsmath,amssymb}   % For AMS math symbols

\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\ChNameUpperCase
\ChNumVar{\fontsize{30}{35}\usefont{OT1}{ptm}{m}{n}\selectfont}
\ChTitleVar{\vspace{-1em}\Large\sc}

\renewcommand{\sectionmark}[1]{}


\titleformat{\section}
{\normalfont\normalsize\bfseries}{\thesection}{1em}{}
\titlespacing*{\section}
{0pt}{1.5ex plus .1ex minus .2ex}{0 ex plus .1ex}
\renewcommand{\subsectionmark}[1]{}

\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
			\hbox{}
			\thispagestyle{empty}
			\newpage
			\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts, amscd,amsthm,xspace}
\usepackage[most]{tcolorbox}
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
	bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
	colorlinks,linkcolor={RoyalPurple},citecolor={PineGreen},urlcolor={RoyalPurple},
	pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\usepackage[noabbrev]{cleveref}
\RequirePackage{amsthm}
\usepackage[english]{babel}

% Define colors
\definecolor{theoremcolor}{named}{OrangeRed}
\definecolor{corollarycolor}{named}{Fuchsia}
\definecolor{propositioncolor}{named}{VioletRed}
\definecolor{problemcolor}{named}{PineGreen}
\definecolor{proofcolor}{named}{Gray}
\definecolor{definitioncolor}{named}{TealBlue}
\definecolor{examplecolor}{named}{Mulberry}




% Boxed theorem style
\newtcolorbox{mytheorem}[2][]{%
	blanker,breakable,left=3.5mm,
	top=2pt, bottom=1pt,
	parbox=false,
	before skip=12pt,after skip=18pt,
	borderline west={1mm}{0.3mm}{#1!50!white}
}

\newtcolorbox{myproof}[1][]{%
	blanker,breakable,left=3.5mm,
	top=2pt, bottom=1pt,
	parbox=false,
	before skip=12pt,after skip=18pt,
	borderline west={1mm}{0.3mm}{#1!50!white},
}

%Updated Example Environment
\newtcbtheorem[crefname={example}{examples}]{example}{Example}{
	new/auto counter,
	boxsep = 2mm,
	breakable,
	colback=examplecolor!2!white,
	colbacktitle=examplecolor!8!white,
	colframe=examplecolor!80!black,
	coltitle=black, fonttitle=\scshape,
	arc=0mm,
	enlarge top by=0.3mm, enlarge bottom by=0.3mm, toptitle=0.8mm,bottomtitle=0.35mm,left=0mm,right=0mm,
	boxrule=\heavyrulewidth,titlerule=\lightrulewidth,leftrule=0mm,rightrule=0mm,
	description font=\mdseries\itshape,
	title=#1}{ex}

\newtheoremstyle{compact} % Define a new theorem style
{}   % Space above
{}   % Space below
{} % Body font
{}      % Indent amount
{\bfseries} % Theorem head font
{.}     % Punctuation after theorem head
{5pt plus 1pt minus 1pt} % Space after theorem head
{}      % Theorem head spec

\theoremstyle{compact}

% Define theorem environments
\newtheorem{theoremaux}{Theorem}[chapter]
\newenvironment{theorem}{%
	\mytheorem[theoremcolor]{Theorem \theoremaux}%
	\begin{theoremaux}\vspace{-10pt}

		}{%
	\end{theoremaux}
	\endmytheorem
}

\newtheorem{corollaryaux}[theoremaux]{Corollary}
\newenvironment{corollary}{%
	\mytheorem[corollarycolor]{Corollary}%
	\begin{corollaryaux}\vspace{-10pt}

		}{%
	\end{corollaryaux}
	\endmytheorem
}
\newtheorem*{proofaux}{\normalfont{\textit{Proof}}}
\newenvironment{proofc}{%
	\myproof[proofcolor] %
	\begin{proofaux} \normalfont
		}{  \qedhere
	\end{proofaux}
	\endmytheorem
}

\newtheorem{propositionaux}[theoremaux]{Proposition}
\newenvironment{proposition}{%
	\mytheorem[propositioncolor]{Proposition \thepropositionaux}%
	\begin{propositionaux}\vspace{-10pt}
		}{%
	\end{propositionaux}%
	\endmytheorem
}



\newtcbtheorem[crefname={definition}{definitions}]{definition}{Definition}{
	new/auto counter,
	colback=definitioncolor!2!white,
	colbacktitle=definitioncolor!8!white,
	colframe=definitioncolor!80!black,
	coltitle=black, fonttitle=\scshape,
	arc=0mm,
	enlarge top by=0.3mm, enlarge bottom by=0.3mm, toptitle=0.8mm,bottomtitle=0.35mm,left=2mm,right=2mm,
	boxrule=\heavyrulewidth,titlerule=\lightrulewidth,leftrule=0mm,rightrule=0mm,
	description font=\mdseries\itshape,
	title=#1}{def}

\newtcbtheorem[crefname={problem}{problems}]{problem}{problem}{
	new/auto counter,
	colback=problemcolor!2!white,
	colbacktitle=problemcolor!8!white,
	colframe=problemcolor!80!black,
	coltitle=black, fonttitle=\scshape,
	arc=0mm,
	enlarge top by=0.3mm, enlarge bottom by=0.3mm, toptitle=0.8mm,bottomtitle=0.35mm,left=3mm,right=3mm,
	boxrule=\heavyrulewidth,titlerule=\lightrulewidth,leftrule=0mm,rightrule=0mm,
	description font=\mdseries\itshape,
	title=#1}{prob}

\newtheorem{lemma}[theoremaux]{Lemma}
\newtheorem{axiom}[theoremaux]{Axiom}
\newtheorem{remark}[theoremaux]{Remark}
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}

\newcommand{\fref}[1]{\textcolor{PineGreen}{Figure~\ref{#1}}}
\newcommand{\tref}[1]{\textcolor{PineGreen}{Table~\ref{#1}}}
\newcommand{\eref}[1]{\textcolor{PineGreen}{Equation~\ref{#1}}}
\newcommand{\sref}[1]{\textcolor{PineGreen}{Section~\ref{#1}} }
\newcommand{\aref}[1]{\textcolor{PineGreen}{Appendix~\ref{#1}}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
\usepackage{lstpatch}
\lstset{captionpos=b,
	frame=tb,
	basicstyle=\scriptsize\ttfamily,
	showstringspaces=false,
	keepspaces=true}
\lstdefinestyle{caml} {
	language=caml,
	keywordstyle=\color{OrangeRed},
	commentstyle=\color{Gray},
	stringstyle=\color{PineGreen}
}
\pdfstringdefDisableCommands{
	\let\\\space
}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\assessor}[1]{\def\assessorname{#1}}
\newcommand*{\examiner}[1]{\def\exname{#1}}
\newcommand*{\thesistitle}[1]{\def\ttitle{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}

%----------------------------------------------------------------------------------------
%	DOCUMENT VARIABLES
%	Fill in the lines below to update the thesis template
%	If you wish to cite each of the variables defined below, look at the
%	section above for the citation command e.g. \examiner{} below is
%	defined as \examname above so you cite it as \examname
%----------------------------------------------------------------------------------------

\thesistitle{Modelling Meta-Agreement through Deliberation: An Adaptation of the DeGroot Model} % Your thesis title - this is used in the title and abstract
%-------------------------------------------------  
\supervisor{Prof. Dr. Ulle Endriss} % You supervisor's name - this is used in the title page
%-------------------------------------------------   
\examiner{Dr. Fernando P. Santos} % Your examiner's name - this is not currently used anywhere in the template, cite it with \examname if you want it
%-------------------------------------------------   
\assessor{Prof. Dr. Davide Grossi} % Your assesor's name - this is not currently used anywhere in the template, cite it with \assessorname if you want it
%-------------------------------------------------   
\degree{Master of Science in Computational Science} % Your degree name - this is currently used in the title page and abstract
%-------------------------------------------------   
\authors{Amir Sahrani} % Your name - this is used in the title page and abstract
%-------------------------------------------------   
\addresses{} % Your address - this is not currently used anywhere in the template, cite it with \addressnames if you want it
%-------------------------------------------------   
\subject{} % Your subject area - this is not currently used anywhere in the template, cite it with \subjectname if you want it
%-------------------------------------------------   
\keywords{} % Keywords for your thesis - this is not currently used anywhere in the template, cite it with \keywordnames if you want it
%-------------------------------------------------   
\university{\texorpdfstring{\href{http://www.uva.nl} % Your university's URL
		{University of Amsterdam}} % Your university's name - this is currently used in the title page
	{University of Amsterdam}}
%-------------------------------------------------   
\UNIVERSITY{\texorpdfstring{\href{http://www.uva.nl} % Your university's URL
		{UNIVERSITY OF AMSTERDAM}} % Your university's name in capitals - this is currently used in the abstract page
	{UNIVERSITY OF AMSTERDAM}}
%-------------------------------------------------                
\department{\texorpdfstring{\href{http://ivi.uva.nl} % Your department's URL
		{Informatics Institute}} % Your department's name - used in the title page and abstract
	{Informatics Institute}}
%-------------------------------------------------                
\DEPARTMENT{\texorpdfstring{\href{http://ivi.uva.nl} % Your department's URL
		{INFORMATICS INSTITUTE}} % Your department's name in capitals - this is not currently used anywhere in the template, cite it with \DEPTNAME if you want it
	{INFORMATICS INSTITUTE}}
%-------------------------------------------------                
\group{\texorpdfstring{\href{http://uva.computationalscience.nl} % Your research group's URL
		{Computational Science Lab}} % Your research group's name - this is currently used in the title page 
	{Computational Science Lab}}
%-------------------------------------------------                
\GROUP{\texorpdfstring{\href{http://uva.computationalscience.nl} % Your research group's URL
		{Computational Science Lab}} % Your research group's name in capitals - this is not currently used anywhere in the template, cite it with \GROUPNAME if you want it
	{Computational Science Lab}}
%-------------------------------------------------                
\faculty{\texorpdfstring{\href{http://www.uva.nl/en/about-the-uva/organisation/organisational-structure/content/faculties/faculty-of-science-fnwi/faculty-of-science-fnwi.html} % Your faculty's URL
		{Faculty of Science}} % Your faculty's name - this is currently used in the abstract page
	{Faculty of Science}}
%-------------------------------------------------                
\FACULTY{\texorpdfstring{\href{Faculty Web Site URL Here (include http://)} % Your faculty's URL
		{FACULTY NAME (IN BLOCK CAPITALS)}} % Your faculty's name in capitals - this is not currently used anywhere in the template, cite it with \FACNAME if you want it
	{FACULTY NAME (IN BLOCK CAPITALS)}}
%----------------------------------------------------------------------------------------    

% The default title page, this is not used in this www.latextemplates.com version            
\renewcommand\maketitle{
	\btypeout{Title Page}
	\hypersetup{pdftitle={\@title}}
	\hypersetup{pdfsubject=\subjectname}
	\hypersetup{pdfauthor=\authornames}
	\hypersetup{pdfkeywords=\keywordnames}
	\thispagestyle{empty}
	\begin{titlepage}
		\let\footnotesize\small
		\let\footnoterule\relax
		\let \footnote \thanks
		\setcounter{footnote}{0}
		\null\vfil
		\vskip 60\p@
		\begin{center}
			\setlength{\parskip}{0pt}
			{\large\textbf{\UNIVNAME}\par}
			\vfill
			{\huge \bf \@title \par}
			\vfill
			{\LARGE by \par}
			\smallskip
			{\LARGE \authornames \par}
			\vfill
			{\large A thesis submitted in partial fulfillment for the \par}
			{\large degree of \degreename \par}
			\bigskip
			\bigskip
			{\large in the \par}
			{\large \facname \par}
			{\large \deptname \par}
			\bigskip
			\bigskip
			\bigskip
			{\Large \@date \par}
			\bigskip
		\end{center}
		\par
		\@thanks
		\vfil\null
	\end{titlepage}
	\setcounter{footnote}{0}%
	\global\let\thanks\relax
	\global\let\maketitle\relax
	\global\let\@thanks\@empty
	\global\let\@author\@empty
	\global\let\@date\@empty
	\global\let\@title\@empty
	\global\let\title\relax
	\global\let\author\relax
	\global\let\date\relax
	\global\let\and\relax
	\cleardoublepage
}
%----------------------------------------------------------------------------------------
%	ABSTRACT PAGE DESIGN
%----------------------------------------------------------------------------------------
\newenvironment{abstract}
{
	\btypeout{Abstract Page}
	\thispagestyle{empty}
	\null\vfil
	\begin{center}
		% \setlength{\parskip}{0pt}
		% {\normalsize \UNIVNAME \par} % University name in capitals
		% \bigskip
		{\huge{\textit{Abstract}} \par}
		% \bigskip
		% {\normalsize \facname \par} % Faculty name
		% {\normalsize \deptname \par} % Department name
		% \bigskip
		% {\normalsize \degreename\par} % Degree name
		% \bigskip
		% {\normalsize\bf \@title \par} % Thesis title
		% \medskip
		% {\normalsize by \authornames \par} % Author name
		% \bigskip
	\end{center}
}
%----------------------------------------------------------------------------------------
{
	\vfil\vfil\vfil\null
	\cleardoublepage
}
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
	\refstepcounter{dummy}
	\addcontentsline{toc}{chapter}{#1}}
\renewcommand\tableofcontents{
	\btypeout{Table of Contents}
	\addtotoc{Contents}
	\begin{spacing}{1}{
			\setlength{\parskip}{1pt}
			\if@twocolumn
				\@restonecoltrue\onecolumn
			\else
				\@restonecolfalse
			\fi
			\chapter*{\contentsname
			  \@mkboth{
				  \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
			\@starttoc{toc}
			\if@restonecol\twocolumn\fi
			\cleardoublepage
		}\end{spacing}
}
\renewcommand\listoffigures{
	\btypeout{List of Figures}
	\addtotoc{List of Figures}
	\chapter*{\listfigurename
	  \@mkboth{\MakeUppercase\listfigurename}
	  {\MakeUppercase\listfigurename}}
	\begin{spacing}{1}{
			\setlength{\parskip}{1pt}
			\if@twocolumn
				\@restonecoltrue\onecolumn
			\else
				\@restonecolfalse
			\fi
			\@starttoc{lof}
			\if@restonecol\twocolumn\fi
			\cleardoublepage
		}\end{spacing}
}
\renewcommand\listoftables{
	\btypeout{List of Tables}
	\addtotoc{List of Tables}
	\chapter*{\listtablename}
	\begin{spacing}{1}{
			\setlength{\parskip}{1pt}
			\if@twocolumn
				\@restonecoltrue\onecolumn
			\else
				\@restonecolfalse
			\fi
			\@starttoc{lot}
			\if@restonecol\twocolumn\fi
			\cleardoublepage
		}\end{spacing}
}
\newcommand\listsymbolname{Abbreviations}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
	\btypeout{\listsymbolname}
	\addtotoc{\listsymbolname}
	\chapter*{\listsymbolname
	  \@mkboth{
		  \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
	\begin{longtable}[c]{#1}#2\end{longtable}\par
	\cleardoublepage
}
\newcommand\listconstants{Physical Constants}
\usepackage{longtable}
\newcommand\listofconstants[2]{
	\btypeout{\listconstants}
	\addtotoc{\listconstants}
	\chapter*{\listconstants
	  \@mkboth{
		  \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
	\begin{longtable}[c]{#1}#2\end{longtable}\par
	\cleardoublepage
}
\newcommand\listnomenclature{Symbols}
\usepackage{longtable}
\newcommand\listofnomenclature[2]{
	\btypeout{\listnomenclature}
	\addtotoc{\listnomenclature}
	\chapter*{\listnomenclature
	  \@mkboth{
		  \MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
	\begin{longtable}[c]{#1}#2\end{longtable}\par
	\cleardoublepage
}
\newcommand\acknowledgements[1]{
\btypeout{Acknowledgements}
\addtotoc{Acknowledgements}
\thispagestyle{plain}
\begin{center}{\huge{\textit{Acknowledgements}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null

}
\newcommand\dedicatory[1]{
	\btypeout{Dedicatory}
	\thispagestyle{plain}
	\null\vfil
	\vskip 60\p@
	\begin{center}{\Large \sl #1}\end{center}
	\vfil\null
	\cleardoublepage
}
\renewcommand\backmatter{
	\if@openright
		\cleardoublepage
	\else
		\clearpage
	\fi
	\addtotoc{\bibname}
	\btypeout{\bibname}
	\@mainmatterfalse}
\endinput
