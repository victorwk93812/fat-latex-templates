# TeX Template Files

Here we introduce the `.tex` template files.  

|Term|File|
|:-:|:-:|
|Report template|[`template-report.tex`](../template-report.tex)|
|Slides template|[`template-slides.tex`](../template-slides.tex)|
|General template|[`template.tex`](../template.tex)|

## Report Template

A report template with CJK environment, fancy format and commonly used LaTeX features.  

After setting up the prerequisites, should work out of the box on Overleaf.   

### Prerequisites

1. The XeLaTeX compiler is used and required. 
In a project on Overleaf, go to Menu -> Compiler and select XeLaTeX. 
On local machines, make sure that XeLaTeX is properly installed.  
2. The class `fatreport.cls` and the package `fatscience.sty` are required as depencies. 
Read the comments at the beginning of the dependency class/package for more information. 

### Usage

1. Start your report by adding lines between `\thispagestyle{fancy}` and `\end{document}`.  
2. The `fatreport.cls` class is based on the article class. 
Passing an option to this class directly is passing the option to article. 
E.g. \documentclass[12pt]{fatreport} works as specifying \documentclass[12pt]{article} internally.  

### Notes

1. Using `xeCJK` environment with CJK font "AR PL Ukai TW". 
See [`Classes.md`#Report Class](Classes.md#report-class) for configuration on this.  
2. BibTeX is supported, just use as usual.  

## Slides Template

A slides template with CJK environment, a decent beamer format configuration, and commonly used LaTeX features.  

After setting up the prerequisites, should work out of the box on Overleaf.   

### Prerequisites

1. The XeLaTeX compiler is used and required. 
In a project on Overleaf, go to Menu -> Compiler and select XeLaTeX. 
On local machines, make sure that XeLaTeX is properly installed.  
2. The class `fatreport.cls` and the package `fatscience.sty` are required as depencies. 
Read the comments at the beginning of the dependency class/package for more information. 

### Usage

1. Start your slides by adding lines after the table of contents slide and before `\end{document}`.  
2. The `fatslides.cls` class is based on the `beamer` class. 
Passing an option to this class directly is passing the option to beamer. 
E.g. `\documentclass[t]{fatslides}` works as specifying `\documentclass[t]{beamer}` internally.  

### Notes

1. Using `xeCJK` environment with CJK font "AR PL Ukai TW". 
See [`Classes.md`#Report Class](Classes.md#report-class) for configuration on this.  
2. BibTeX is supported, just use as usual.  

## General Template

A report template with CJK environment, fancy format and commonly used LaTeX features. 
Uses the default `article` class but with configuration forked from the [Report Class](../classes/fatreport.cls).  

After setting up the prerequisites, should work out of the box on Overleaf.   

### Prerequisites

1. The XeLaTeX compiler is used and required. 
In a project on Overleaf, go to Menu -> Compiler and select XeLaTeX. 
On local machines, make sure that XeLaTeX is properly installed.  
2. The package `fatscience.sty` is required as an depency. 
Read the comments at the beginning of the dependency class/package for more information. 

### Usage

1. Start your report by adding lines between `\thispagestyle{fancy}` and `\end{document}`.  

### Notes

1. Using `xeCJK` environment with CJK font "AR PL Ukai TW". 
See [`Classes.md`#Report Class](Classes.md#report-class) for configuration on this.  
2. BibTeX is supported, just use as usual.  

