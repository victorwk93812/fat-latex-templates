%%%%% fatreport.cls %%%%%

%% A LaTeX class with CJK environment, fancy format and more commonly used LaTeX features %%
%% After setting up the prerequisites, should work out of the box on Overleaf %%

%%%%% Identification %%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fatslides}[2025/04/15 Personal frequently used beamer configuration]

%%%%% Preliminary Declarations %%%%%

%%%%% Options %%%%%

\DeclareOption*{
\PassOptionsToClass{\CurrentOption}{beamer}
\PassOptionsToPackage{\CurrentOption}{fatscience}
}
\ProcessOptions\relax
\LoadClass{beamer}

%%%%% More Declarations %%%%%

\usepackage{fatscience}

% \usepackage[utf8]{inputenc}

%%% Font Configuration
%% Main fonts (Using default)
% \setmainfont{FreeSans} % FreeSans
% \setmainfont{Times New Roman}

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

% \linespread{1.2}
