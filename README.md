## Reproducing Results from chapter 3.1 of An Introduction to Statistical Learning 

### Contents in this directory:

#### Code file:
This file contains the scripts used to produce the data, images, and report for this project. The commands were executed through the Makefile.

#### Data file:
This file contains the data set that was used in the analysis as well as the summary statistics of the data. These were both produced through the files in Code.

#### Images file:
This file has the scatter plot of TV Advertising vs Total Sales as well as the histograms of both TV advertising and Sales, separately. These were created through the files contained in the folder Code.

#### Report file:
This file contains the final report that describes and illustrates the project. This was created from the report.Rmd file in this file and the makefile generated a pdf of results. It draws on the data, images, and regression analysis to produce the final report. 

#### Makefile
Used to automate the process of building the report. Downloads the data set from online and uses the inputs *eda-script.R* and *regression-script.R* to run a regression, compute summary statistics, and make the pdf report. 