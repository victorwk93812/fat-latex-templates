# Fat LaTeX Templates

Personal LaTeX packages, classes, and TeX template files.  

Copy template files to your project directory (or a project on Overleaf) to render a neat PDF file.  
Compilation also works if using TeXLive (and its derivatives, MacTeX, Overleaf, ...).  

## Starting a Project

This repo supports two types of LaTeX projects: **"report"** and **"slides"**. 
A report is a typical LaTeX article document with basic formatting, and slides is a LaTeX presentation slides based on [beamer](https://ctan.org/pkg/beamer) with basic beamer configuration. 

A report consists of files as follows:  

|File|Description|
|:-:|:-:|
|[`template-report.tex`](template-report.tex)|The main TeX file you will code TeX in|
|[`fatreport.cls`](classes/fatreport.cls)|The LaTeX class the template TeX file uses|
|[`fatscience.sty`](packages/fatscience.sty)|The LaTeX package the class depends on, containing various LaTeX packages|

or, if you want more control on formatting, you could also not use the `fatreport.cls` class, with all configuration scripted directly in the main tex file `template.tex`. 
We call this type of project a **"plain report"**  

|File|Description|
|:-:|:-:|
|[`template.tex`](template.tex)|The TeX tex file you will code TeX in, contains most configuration in `fatreport.cls`|
|[`fatscience.sty`](packages/fatscience.sty)|The LaTeX package the template depends on, containing various LaTeX packages|

On the other hand, a slides project consists of:  

|File|Description|
|:-:|:-:|
|[`template-slides.tex`](template-slides.tex)|The main TeX file you will code TeX in|
|[`fatslides.cls`](classes/fatslides.cls)|The LaTeX class the template TeX file uses|
|[`fatscience.sty`](packages/fatscience.sty)|The LaTeX package the class depends on, containing various LaTeX packages|

Compiling the main `.tex` file should render a neat PDF.  

See [Usage](#usage) on how to setup a (report or slides) project.  

## Usage

To start a project, you don't need the entire file hierarchy of this repo for compilation. 
It is recommended to only copy the files needed to your new LaTeX project directory.  

In the following sections assume that `project1` is your new project directory that will store project files. 
(On Overleaf, think of `project1` as an Overleaf project space. 
By copying files to `project1`, the corresponding operation on Overleaf is uploading files to the Overleaf project.)  

### Creating a Report

There are 3 methods to copy the needed files to your new empty directory (empty Overleaf project) `project1`.  

**Method 1** (MacOS/Linux): Using the `mkflt.sh` utility. 
The `mkflt.sh` script creates a `COPYME/` folder and copies the files needed for a project to `COPYME/`. 
Run one of the two commands

```
$ ./mkflt.sh -r
$ bash mkflt.sh -r
```

You should find the files needed for a report project under the `COPYME/` directory, which you could further copy/upload to `project1`.  

**Method 2**: Manually copying the files mentioned in [Starting a Project](#starting-a-project). 
Depending on the project being a report or slides, one could manually copy/upload the files mentioned in the description above. 
The resulting files should be identical as using Method 1, and the `.tex` file should compile smoothly.  

**Method 3**: Copy the entire repository, maintain the file hierarchy and keep the documentations. 
All 3 `.tex` files should also manage to compile if you kept the entire directory structure (TeX search paths scripted in the `latexmkrc` file). 

### Creating Slides

**Method 1** (MacOS/Linux): 

```
$ ./mkflt.sh -s
$ bash mkflt.sh -s
```

Copy/Upload files under the `COPYME/` directory to your project `project1`.  

**Method 2**: Manually copying the files mentioned in [Starting a Project](#starting-a-project). 

**Method 3**: Copy the entire repository, maintain the file hierarchy and keep the documentations. 

### Creating Plain Projects

**Method 1** (MacOS/Linux): Specify the `-p`, `--plain` option additionally.  

```
$ ./mkflt.sh -rp
$ bash mkflt.sh -rp
```

This organizes files needed for a plain report project files under `COPYME/`.  

You could also use Method 2 and 3 mentioned in previous sections.  

## Acknowlegdements

All of the syntaxes and code templates are learnt from Overleaf tutorials, StackExchange/Stackoverflow posts, and manuals of each package imported.  









