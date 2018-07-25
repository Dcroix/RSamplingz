\name{sampleElements}
\alias{sampleElements}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Sample Elements
}
\description{
Creates a data frame of randomly selected elements from the Population; number of elements depends on the specified sample size.
}
\usage{
sampleElements(file, sheet, N, n, s)
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
Computed Sample Size
}
  \item{s}{
Seed number for reproducibility
}
}
\details{
Reads a .xlsx file with template having three Columns: 1. Code, 2. Surname, 3. First Name and randomly selects elements of the population that will be included in the sample.
}
\value{
Returns a data frame which contains the 1. Code, 2. Surname, 3. First Name of the randomly selected elements of the Population that will be included as participants of the study.
}
\author{
Paolo G. Hilado
}
\note{
Package xlsx authored by Adrian A. Dragulescu and Cole Arendt is used by this function to open a .xlsx file

Sample function from the R Base is used by this function to generate random numbers which serves as reference when randomly selecting the elements from the Population to be included in the sample.
}
\examples{
sampleElements("NamesList.xlsx", "Names", 150, 15, 1)
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

## Disclaimer: Name/s that were presented in the example is/are purely fictional.
In an event that name/s presented match those of real people, such instance
is purely coincidental thus in no way done purposively by the author.


## The function is currently defined as
function (file, sheet, N, n, s)
{
    library(xlsx)
    data <- read.xlsx(file, sheet)
    set.seed(s)
    g1 <- sample(N, n, replace = 0)
    list <- subset(data, data$Code \%in\% g1)
    print(list)
  }
}
