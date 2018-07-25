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
* Estimated sample size based on the Mean (**Smean**),
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
