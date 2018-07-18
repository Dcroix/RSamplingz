# RSamplingz
Repository for RSamplingz Package for R. RSamplingz is a package, currently in its development version, geared to make computations for sample size convenient for researchers (just in case you still need it even with the advent of Big Data). It is in my interest to regularly update it with more functions to compute for the sample size. For some typos and errors in computations please feel free to send an email. 
## Overview
Package for Sampling which contains the following functions: 
* Yamane's Equation with 95% or 99% Confidence Level (**Yamane95** / **Yamane99**), 
* Stratified Random Sampling with Equal Allocation - 95% or 99% Confidence Level (**SRRequal95** / **SRRequal99**), 
* Stratified Random Sampling with Proportional Allocation - 95% or 99% Confidence Level (**SRRprop95** / **SRRprop99**), 
* Systematic Sampling (**systematic**), 
* Cochran's Formula (**Cochran**), 
* Modified Cochran for smaller Populations (**CochranMOD**),
* Estimated sample size based on the Mean (**Smean**).
## Copyright
Copyright 2018 Paolo G. Hilado (pghilado@protonmail.com). Some rights reserved. 
## License
GPL-3.0-or-later
### License Notice
RSamplingz is a free package for R: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License or any later version. RSamplingz is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.You should have received a copy of the GNU General Public Licensealong with RSamplingz in file named COPYING. If not, see <https://www.gnu.org/licenses/>.
## Installation
Install RSamplingz via Github:
* install.packages("devtools")
* In R Package run ```devtools::install_github("Dcroix/RSamplingz")```
## Usage
```library(RSamplingz)
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
 
 #Cochran's Formula
 Cochran(1.96, 0.75, 0.05)
[1] 289

#Modified Cochran for smaller Populations
CochranMod(289, 800)
[1] 213

#Estimated sample size based on the Mean
Smean(1.96, 1.5, 0.25)
[1] 139
```

## Contributor Covenant
This project abides with the [Contributor Covenant Code of Conduct](https://www.contributor-covenant.org/version/1/4/code-of-conduct.md). By participating in this project you agree to abide its terms.
