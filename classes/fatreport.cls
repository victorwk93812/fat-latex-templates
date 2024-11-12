%%%%% fatreport.cls %%%%%

%% If using TeXLive, put this class under ~/texmf/tex/latex/local for TeXLive detection %%
%% Should work out of the box in Overleaf %%

%%% Prerequisites %%%

% 1. Using CJK font "AR PL Ukai TW", install it manually if not installed, otherwise change the font in the "\setCJKmainfont{}" line.   
% If writing a pure English document, may comment out the `\usepackage{xeCJK}` and `\setCJKmainfont{AR PL Ukai TW}` lines, and things should compile.  

%%% Usage %%%

% 1. To use this class: \documentclass{fatreport}
% 2. This class is based on the article class. 
% Passing an option to this class directly is passing the option to article. 
% E.g. \documentclass[12pt]{fatreport} works as specifying \documentclass[t]{article} internally. 
% 3. BibTeX is supported, just use as usual. 

%%%%% Identification %%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fatreport}[2024/11/11 Personal frequently used latex report configuration]

%%%%% Preliminary Declarations %%%%%

%%%%% Options %%%%%

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
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

%%% Modify environment display format (Chinese environments) %%%
% \renewcommand\thethm{\arabic{section}.\arabic{thm}} % Controls both the thm and thms environments
% \renewcommand\theex{\arabic{section}.\arabic{ex}}
% \renewcommand\theexer{\arabic{section}.\arabic{exer}}
% \renewcommand\theprob{\arabic{section}.\arabic{prob}}
% \renewcommand\thelem{\arabic{section}.\arabic{lem}}
% \renewcommand\thedfn{\arabic{section}.\arabic{dfn}}
% \renewcommand\therem{\arabic{section}.\arabic{rem}}
% \renewcommand\thecor{\arabic{section}.\arabic{cor}}
% \renewcommand\theprop{\arabic{section}.\arabic{prop}}
% \renewcommand{\thesection}{\zhnumber{\arabic{section}}\text{、 }}
% \renewcommand{\thesubsection}{\zhnumber{\arabic{subsection}}\text{、 }}
% \renewcommand{\figurename}{圖}
% \renewcommand{\tablename}{表}
%%% Modify environment display format (Chinese environments) %%%

%%% Environment numbering reset when section begins %%%
% \makeatletter
% \@addtoreset{thm}{section} % Controls both the thm and thms environments
% \@addtoreset{ex}{section}
% \@addtoreset{exer}{section}
% \@addtoreset{prob}{section}
% \@addtoreset{lem}{section}
% \@addtoreset{dfn}{section}
% \@addtoreset{rem}{section}
% \@addtoreset{cor}{section}
% \@addtoreset{prop}{section}
% \makeatother
%%% Environment numbering reset when section begins %%%

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
