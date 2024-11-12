# Packages

Here we introduce the `.sty` TeX packages.  

|Term|File|
|:-:|:-:|
|Science Package|[`fatscience.sty`](../packages/fatscience.sty)|

## Science Package

A LaTeX package including commonly used LaTeX packages and features for writing a report on physics, mathematics and computer science.  

After setting up the prerequisites, should work out of the box on Overleaf.   

### Prerequisites

1. The XeLaTeX compiler is required. 
In a project on Overleaf, go to Menu -> Compiler and select XeLaTeX. 
On local machines, make sure that XeLaTeX is properly installed.  
Read the comments at the beginning of the package for more information.  

### Usage

1. To use this package: `\usepackage{fatscience}`.  

### Notes

1. BibTeX is supported, just use as usual.  
2. If using TeXLive, put this package to somewhere under `~/texmf/tex/latex/local` for system-wide TeXLive detection. 
This creates acccess to this package for all latex projects on your system even without the existence of this package in each project file hierarchy.  

### List of Packages Used  

<details>

<summary><b>List of packages used by <code>fatscience.sty</code></b></summary>

1. Some package

</details>
