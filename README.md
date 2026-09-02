# Introduction
R is a free software environment for statistical computing and graphics. Thousands of R packages can be freely installed from public repositories such as the Comprehensive R Archive Network (CRAN), Bioconductor, or GitHub. Bioconductor is a public repository that specializes in software, annotation, and experimental data packages related to biological data. Using R and Bioconductor packages is essential for Bioinformaticians, computational biologists, researchers or students conducting research that relies on omics datasets such as genomics, transcriptomics, or proteomics datasets. This educational module is the first in a series of following workshops to be delivered by the Arkansas INBRE Data Science core. It covers installing R and Bioconductor packages, basic commands, syntax, and data structures in R.

## Objective
The module supporting this workshop walk absolute beginners through the installation steps of R computing environment, and package installation from the CRAN and Bioconductor repositories. The model then introduce basic commands, syntax, and data structures used in R with examples.

## Expectations
The workshop session lasts for 2 hours. During the session, the instructor will explain the code lines, the generated output, and answer questions. Participants are expected to follow the installation instructions shown below prior to attending the session. The session will be recorded and made available for later view. 

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

Next, download the R script and slides provided in this repository, open the script in R, execute command lines, and observe the output. To execute one line at a time, use Ctrl+R in Windows or Ctrl+Enter in Mac, or click 'Run line or selection' from the Edit menu. To execute all lines, click 'Run all' from the Edit menu. The code lines and their outputs are shown in the slides and discussed during the workshop.
