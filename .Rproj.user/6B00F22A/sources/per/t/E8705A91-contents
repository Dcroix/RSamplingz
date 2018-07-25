\name{sysElements}
\alias{sysElements}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Systematic Elements
}
\description{
Creates a data frame consisting of elements selected systematically from the population using the kth element; the first element is randomly generated.
}
\usage{
sysElements(file, sheet, N, n, s)
}
\arguments{
  \item{file}{
Specifies the name of the .xlsx file which contains the list of the elements of the Population
}
  \item{sheet}{
Specifies the name of the sheet contained in the .xlsx file
}
  \item{N}{
Population
}
  \item{n}{
Required Sample Size
}
  \item{s}{
Seed number for reproducibility
}
}
\details{
Reads a .xlsx file with template having three Columns: 1. Code, 2. Surname, 3. First Name. It uses the systematic function of RSamplingz package to generate the elements for the sample using systematic sampling. Once generated, it selects these elements from the population to be included in the sample.
}
\value{
Returns a data frame which contains the 1. Code, 2. Surname, 3. First Name of the systematically selected elements of the Population that will be included as participants of the study.
}
\author{
Paolo G. Hilado
}
\note{
Package xlsx authored by Adrian A. Dragulescu and Cole Arendt is used by this function to open a .xlsx file
}
\examples{
> sysElements("NamesList.xlsx", "Names", 150, 15, 1)
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

## The function is currently defined as
function(file, sheet, N, n, s){
  library(xlsx)
  data <- read.xlsx(file, sheet)
  set.seed(s); g1 <- systematic(N, n)
  list <- subset(data, data$Code %in% g1)
  print(list)
}
