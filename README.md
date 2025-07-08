# RSamplingz v4.0
[![DOI](https://zenodo.org/badge/139537386.svg)](https://doi.org/10.5281/zenodo.15834640)
![License: GPL v3.0](https://img.shields.io/badge/license-GPL%20v3.0-blue)

Repository for RSamplingz Package used for the RSamplingz Online Sample Size calculator (just in case you still need it even with the advent of Big Data). It is in my interest to regularly update it with more functions to compute for the sample size. For some typos and errors in computations please feel free to send an email. The previous Version 4.0 enabled researchers to randomly (sampleElements function) and systematically (sysElements) select elements from the Population and have them included in the sample.The recent Version 4.0 includes functions that estimate sample size via power and mean (nPM), sample size estimation via power and proportion (nPP), and power analysis to determine sample size for three group comparison or more. [Link to online version or RSamplingz](https://pghilado.shinyapps.io/rsamplingz/)

## Overview
Package for Sampling which contains the following functions: 
* Cochran's Formula (**Cochran**), 
* Modified Cochran for smaller Populations (**CochranMOD**),
* Estimated sample size based on the Mean (**Smean**),
* Estimate sample size using power and mean (**nPM**),
* Estimate sample size using power and proportion (**nPP**),
* Yamane's Equation whereby user can specify the sampling error (**Yamane**):
  **Very Important Notice** I once gave a training on the use of this package and many prefer others. This package provides
  other alternatives to compute for your sample. 
* Yamane's Equation with 95% or 99% Confidence Level (**Yamane95** / **Yamane99**), 
* Stratified Random Sampling with Equal Allocation - 95% or 99% Confidence Level (**SRRequal95** / **SRRequal99**), 
* Stratified Random Sampling with Proportional Allocation - 95% or 99% Confidence Level (**SRRprop95** / **SRRprop99**), 
* Systematic Sampling (**systematic**), 

* Generate a list of randomly selected elements from the Population (**sampleElements**),
* Generate a list of systematically selected elements from the Population (**sysElements**).


## Copyright
Copyright 2018 Paolo G. Hilado (pghilado@protonmail.com). Some rights reserved. 
## License
GPL-3.0-or-later
### License Notice
RSamplingz is a free package for R: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License or any later version. RSamplingz is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.You should have received a copy of the GNU General Public Licensealong with RSamplingz in file named COPYING. If not, see <https://www.gnu.org/licenses/>.
## Installation
Install RSamplingz via Github:
To use the RSamplingz package the machine should be installed with:

.	R Software (32bit / 64 bit depending on system requirements) 
	Download link: https://cran.r-project.org/bin/windows/base/

.	Latest Java (32 bit / 64 bit depending on system requirements)
	Download link: https://java.com/en/download/

.	Download "devtools" package using R Software
In R Software, key in:  install.packages("devtools")

.	Download "xlsx" package using R Software
In R Software, key in:  install.packages("xlsx")

.	Download "RSamplingz" package using R Software
In R Software, key in:  ```install_github("Dcroix/RSamplingz")```

NOTE: It is very important to keep in mind that proxies should be turned off when installing the package otherwise there will be an error in installation. 


## Usage
```
library(RSamplingz)
#Cochran's Formula
 Cochran(1.96, 0.75, 0.05)
[1] 289

#Modified Cochran for smaller Populations
CochranMod(289, 800)
[1] 213

#Estimated sample size based on the Mean
Smean(1.96, 1.5, 0.25)
[1] 139

#nPM(0.05, 0.8, 50, 10)
[1] "393 each group"

#nPP(.05, .8, 50, 12)
[1] "273 each group"

#Yamane's Equation with specified sampling error
Yamane(500,0.05)
[1] 223

#Yamane's Equation with 95% Confidence Level
Yamane95(700)
[1] 255

#Yamane's Equation with 99% Confidence Level
Yamane99(700)
[1] 655

#Stratified Random Sampling with Equal Allocation - 95% Confidence Level
SRRequal95(315, 2)
[1] 89

#Stratified Random Sampling with Equal Allocation - 99% Confidence Level
SRRequal99(1270, 2)
[1] 564

#Stratified Random Sampling with Proportional Allocation - 95% Confidence Level
SRRprop95(570, 145)
[1] 60
SRRprop95(570, 220)
[1] 91
SRRprop95(570, 205)
[1] 85

#Stratified Random Sampling with Proportional Allocation - 99% Confidence Level
SRRprop99(500, 132)
[1] 126
SRRprop99(500, 259)
[1] 247
SRRprop99(500, 109)
[1] 104

#Systematic Sampling
systematic(500, 10)
 [1]  20  70 120 170 220 270 320 370 420 470
 
#sampleElements("NamesList.xlsx", "Names", 150, 15, 1)
    Code   Surname FirstName
9      9      Reid     Lovely
25    25      Puth   Michelle
29    29    Copper    Monique
30    30  Martinez      Conie
40    40     Gomez       Mina
53    53   Clement      Clark
56    56     Flynn        Isa
85    85 Feliciano      Minho
90    90    Madrid     Justin
95    95    Wilson       Gwen
105  105   Caporas     Edward
131  131    Clarke      Julia
134  134     Friar      Lucas
137  137 Di Angelo      Hazel
143  143     Black    Jillian

#sysElements("NamesList.xlsx", "Names", 150, 15, 1)
    Code  Surname FirstName
3      3     Chua   Tiffany
13    13   Franco   Candice
23    23  Baldwin   Raymond
33    33  Isabela   Carmela
43    43    Ellis      Mark
53    53  Clement     Clark
63    63   Steele      Joan
73    73 Felicimo     Keith
83    83 Alvarado      Chad
93    93    Freud      Ella
103  103    Abria    Roland
113  113  Subiate    Tresha
123  123   Castle     Frank
133  133 Matthews     Riley
143  143    Black   Jillian

## Disclaimer: Name/s that were presented in the example is/are purely fictional.
In an event that name/s presented match those of real people, such instance
is purely coincidental thus in no way done purposively by the author.
```

## Contributor Covenant
This project abides with the [Contributor Covenant Code of Conduct](https://www.contributor-covenant.org/version/1/4/code-of-conduct.md). By participating in this project you agree to abide its terms.
