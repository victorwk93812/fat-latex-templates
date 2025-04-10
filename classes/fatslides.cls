%%%%% fatreport.cls %%%%%

%% A LaTeX class with CJK environment, fancy format and more commonly used LaTeX features %%
%% After setting up the prerequisites, should work out of the box on Overleaf %%

%%%%% Identification %%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fatslides}[2024/11/11 Personal frequently used beamer configuration]

%%%%% Preliminary Declarations %%%%%

%%%%% Options %%%%%

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax
\LoadClass{beamer}

%%%%% More Declarations %%%%%

\RequirePackage{fatscience}

% \DeclareOption{blue}{\renewcommand{\wordcolour}{mybluecolour}}
% \DeclareOption*{\PackageWarning{examplepackage}{Unknown ‘\CurrentOption’}}
% \ProcessOptions\relax

% \usepackage[utf8]{inputenc}
\usepackage{xeCJK} %CJK Environment

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

% Themes
\usetheme{Boadilla}
\useoutertheme{miniframes}
\usefonttheme{serif}

% Theorem and caption numbering
\setbeamertemplate{theorems}[numbered]
\setbeamertemplate{caption}[numbered]

% Hyperref settings
\urlstyle{same}
\hypersetup{
    colorlinks=true,
    linkcolor=.,
    filecolor=magenta,      
    urlcolor=cyan,
    pdfpagemode=FullScreen, % Full screen display PageMode PDF Property
}

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

% \linespread{1.2}

%%%%% Document Setup Example %%%%%

%%% Copy this, place right before \begin{document} and uncomment %%%
% \title[Short Title]{Full Title}
% \author[Short Author]{Foo \and Bar}
% \date[\today]{\today}
% \AtBeginSection[]
% {
%   \begin{frame}
%     \frametitle{Table of Contents}
%     \tableofcontents[currentsection]
%   \end{frame}
% }
%%% Copy this, place right before \begin{document} and uncomment %%%

%%% Copy this, place right after \begin{document} and uncomment %%%
% \frame{\titlepage}
% \begin{frame}
%     \frametitle{Table of Contents}
%     \tableofcontents
% \end{frame}
%%% Copy this, place right after \begin{document} and uncomment %%%
