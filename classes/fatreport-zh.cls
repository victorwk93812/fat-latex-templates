%%%%% fatreport-zh.cls %%%%%

%% If using TeXLive, put this class under ~/texmf/tex/latex/local for TeXLive detection %%
%% Should work out of the box in Overleaf %%

%%% Usage %%%

% 1. To use this class: \documentclass{fatreport-zh}
% 2. This class is based on the article class. 
% Passing an option to this class directly is passing the option to article. 
% E.g. \documentclass[12pt]{fatreport-zh} works as specifying \documentclass[12pt]{article} internally. 
% 3. BibTeX is supported, just use as usual. 

%%%%% Identification %%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fatreport-zh}[2025/04/16 Personal frequently used latex Mandarin report configuration]

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
\usepackage{xeCJK} %CJK Environment

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

\RequirePackage{fatscience}

% \DeclareOption{blue}{\renewcommand{\wordcolour}{mybluecolour}}
% \DeclareOption*{\PackageWarning{examplepackage}{Unknown ‘\CurrentOption’}}
% \ProcessOptions\relax

%%% Font Configuration
%% Main fonts (Using default)
% \setmainfont{FreeSans} % FreeSans
% \setmainfont{Times New Roman}

%% CJK fonts
% \setCJKmainfont{Noto Sans CJK TC} % Noto Sans CJK Fonts
\setCJKmainfont[AutoFakeBold]{AR PL UKai TW} % Arphic Kaiti
% \setCJKmainfont[AutoFakeBold]{AR PL UMing TW} % Arphic Mingti

% Add the AutoFakeBold option to fake the bold font if font does not include a bold version by default, for example:  
% \setCJKmainfont[Path = <Path to font folder>, AutoFakeBold]{<fontfile>}

% Hyperref settings
\urlstyle{same}
\hypersetup{
	colorlinks=true,
	linkcolor=cyan,
	filecolor=magenta,      
	urlcolor=blue,
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

%%% Modify environment display format (Chinese environments) %%%
\renewcommand{\thesection}{\zhnumber{\arabic{section}}\text{、 }}
% \renewcommand{\thesubsection}{\zhnumber{\arabic{subsection}}\text{、 }}
\renewcommand{\thesubsection}{\alph{subsection}.}
\renewcommand{\thesubsubsection}{\alph{subsection}.\arabic{subsubsection}}
\renewcommand{\figurename}{圖}
\renewcommand{\tablename}{表}
%%% Modify environment display format (Chinese environments) %%%

\setlist[enumerate]{itemsep=-1mm}
\setlist[itemize]{itemsep=-1mm}

\linespread{1.2}

\pagestyle{fancy}
\renewcommand{\footrulewidth}{0.4pt}
\cfoot{\thepage}
\renewcommand{\headrulewidth}{0.4pt}

%%%%% Document Setup Example %%%%%

%%% Copy this, place right before \begin{document} and uncomment %%%
% \pagestyle{fancy}
% \title{\textbf{\Huge{Template}}}
% \author{\Large{fat}}
% % \date{\today}
% \date{August 28, 2024}
%%% Copy this, place right before \begin{document} and uncomment %%%

%%% Copy this, place right after \begin{document} and uncomment %%%
% \maketitle
% \thispagestyle{fancy}
%%% Copy this, place right after \begin{document} and uncomment %%%
