# Classes

Here we introduce the `.cls` TeX classes.  

|Term|File|
|:-:|:-:|
|Report class|[`fatreport.cls`](../classes/fatreport.cls)|
|Slides class|[`fatslides.cls`](../classes/fatslides.cls)|

## Report Class

A LaTeX class with CJK environment, fancy format and more commonly used LaTeX features.  

After setting up the prerequisites, should work out of the box on Overleaf.   

### Prerequisites

1. The XeLaTeX compiler is required. 
In a project on Overleaf, go to Menu -> Compiler and select XeLaTeX. 
On local machines, make sure that XeLaTeX is properly installed.  
2. The package "fatscience.sty" is required as a dependency. 
Read the comments at the beginning of the package for more information.  

### Usage

1. To use this class: `\documentclass{fatreport}`.  
2. This class is based on the article class. 
Passing an option to this class directly is passing the option to article. 
E.g. `\documentclass[12pt]{fatreport}` works as specifying `\documentclass[12pt]{article}` internally.  

### Notes

1. Using CJK font "AR PL Ukai TW", which is supported by Overleaf by default and may be changed by uncommenting lines under the "CJK Fonts" section below or any fonts you like. 
List of CJK fonts supported on Overleaf: <https://www.overleaf.com/learn/latex/Questions/Which_OTF_or_TTF_fonts_are_supported_via_fontspec%3F>. 
On local machines, install the font manually if not installed, otherwise change the font in the "\setCJKmainfont{}" line.  
2. If writing a pure English document, may comment out the `\usepackage{xeCJK}` and `\setCJKmainfont{AR PL Ukai TW}` lines, and things should compile normally.  
3. BibTeX is supported, just use as usual.  
4. If using TeXLive, put this class and the dependency package `fatscience.sty` to somewhere under `~/texmf/tex/latex/local` for system-wide TeXLive detection. 
This creates acccess to this class and the dependency package for all latex projects on your system even without the existence of this class in each project file hierarchy.  

## Slides Class

A LaTeX class with CJK environment, a decent beamer format configuration and more commonly used LaTeX features.  

After setting up the prerequisites, should work out of the box on Overleaf.  

### Prerequisites

1. The XeLaTeX compiler is required. 
In a project on Overleaf, go to Menu -> Compiler and select XeLaTeX. 
On local machines, make sure that XeLaTeX is properly installed.  
2. The package "fatscience.sty" is required as a dependency. 
Read the comments at the beginning of the package for more information.  

### Usage

1. To use this class: `\documentclass{fatslides}`.  
2. This class is based on the `beamer` class. 
Passing an option to this class directly is passing the option to beamer. 
E.g. `\documentclass[t]{fatslides}` works as specifying `\documentclass[t]{beamer}` internally.  

### Notes

1. Using CJK font "AR PL Ukai TW", which is supported by Overleaf by default and may be changed by uncommenting lines under the "CJK Fonts" section below or any fonts you like. 
List of CJK fonts supported on Overleaf: <https://www.overleaf.com/learn/latex/Questions/Which_OTF_or_TTF_fonts_are_supported_via_fontspec%3F>. 
On local machines, install the font manually if not installed, otherwise change the font in the "\setCJKmainfont{}" line.  
2. If writing a pure English document, may comment out the `\usepackage{xeCJK}` and `\setCJKmainfont{AR PL Ukai TW}` lines, and things should compile normally.  
3. BibTeX is supported, just use as usual.  
4. If using TeXLive, put this class and the dependency package `fatscience.sty` to somewhere under `~/texmf/tex/latex/local` for system-wide TeXLive detection. 
This creates acccess to this class and the dependency package for all latex projects on your system even without the existence of this class in each project file hierarchy.  

