# Introduction to R and Bioconductor Packages
Educational module that covers installing R and Bioconductor packages, basic commands, syntax, and data structures in R, and an omics dataset analysis exercise.

## Objective
The module supporting this workshop walk absolute beginners through the installation steps of R computing environment, and package installation from the CRAN and Bioconductor repositories. The model then introduce basic commands, syntax, and data structures used in R with examples. Finally, the module walk learners through an omics dataset analysis exercise.

## Setup (Required prior to attending the workshop)
Before attending the workshop, install R on your personal computer/laptop following these steps:
1. Visit the R-Project website https://www.r-project.org to download and install R.
2. When you click 'download R', you will be diverted to https://cran.r-project.org/mirrors.html and will need to select a repository to download files from (pick one).
3. Download the proper file (Windows, MacOS, or Linux) to install the latest version of base distribution of R.
4. Open the installation file and follow the steps to finish the installation.

When installation finishes successfully, open R graphical user interface (GUI). You should see the main console window (command line interface). R packages (or libraries) can be easily installed from the Comprehensive R Archive Network (CRAN) repositories by clicking on 'install packages' from the ‘Packages’ pop-down menu of the GUI, or using command install.packages("package-name"). Install package BiocManager which manages the installation of packages from the Bioconductor repository (https://www.bioconductor.org/install/):
```R
> install.packages("BiocManager")
```
After installation finishes successfully, install the latest version of Bioconductor using command install from package BiocManager (version 3.23, April-October 2026):
```R
> BiocManager::install(version = "3.23")
```
Going forward, you can install any package from Bioconductor using:
```R
> BiocManager::install("package-name")
```

Before using a package, you need to load it to your R session using:
```R
> library(lib_name)
```
Alternatively, you can use a command without loading its package by listing the package name first, followed by double colons ::, followed by the command, as shown above.
