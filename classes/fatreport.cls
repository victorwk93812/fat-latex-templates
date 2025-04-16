%%%%% fatreport.cls %%%%%

%% A LaTeX class with CJK environment, fancy format and more commonly used LaTeX features %%
%% After setting up the prerequisites, should work out of the box on Overleaf %%

%%%%% Identification %%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fatreport}[2025/04/15 Personal frequently used latex report configuration]

%%%%% Preliminary Declarations %%%%%

%%%%% Options %%%%%

\DeclareOption*{
\PassOptionsToClass{\CurrentOption}{article}
\PassOptionsToPackage{\CurrentOption}{fatscience}
}
\ProcessOptions\relax
\LoadClass{article}

%%%%% More Declarations %%%%%

% \usepackage[utf8]{inputenc}

\usepackage[
	a4paper,
	top=2cm, 
	bottom=2cm,
	left=2cm,
	right=2cm,
	includehead, includefoot,
	heightrounded
]{geometry}

\usepackage{enumitem}

% Setting enumerate and itemize enrvironment spacing: 
% \setlist[enumerate]{itemsep = <num>mm}
% \setlist[itemize]{itemsep = <num>mm}

\usepackage{fatscience}

%%% Font Configuration
%% Main fonts (Using default)
% \setmainfont{FreeSans} % FreeSans
% \setmainfont{Times New Roman}

% Hyperref settings
\urlstyle{same}
\hypersetup{
	colorlinks=true,
	linkcolor=blue,
	filecolor=magenta,      
	urlcolor=cyan,
	% pdfpagemode=FullScreen, % Full screen display PageMode PDF Property
}
\makeatletter
\AtBeginDocument{
    \hypersetup{
        pdftitle=\@title,
        pdfauthor=\@author,
    }
}
\makeatother

\setlist[enumerate]{itemsep=-1mm}
\setlist[itemize]{itemsep=-1mm}
\linespread{1.2}

% Fancy formatting
\pagestyle{fancy}
\renewcommand{\footrulewidth}{0.4pt}
\cfoot{\thepage}
\renewcommand{\headrulewidth}{0.4pt}

% Fancy footnote patch
\let\origfootrule\footrule
\renewcommand{\footrule}{\iffootnote{}{\origfootrule}}
\renewcommand\footnoterule{\origfootrule}

