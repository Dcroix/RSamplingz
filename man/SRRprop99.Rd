\name{SRRprop99}
\alias{SRRprop99}
\title{
Stratified Random Sampling with Proportional Allocation
}
\description{
Computes for the sample per identified stratum which is in proportion to the population of the same stratum; considers a 99 percent level of confidence
}
\usage{
SRRprop99(x, y)
}
\arguments{
  \item{x}{
Population considered for the study
}
  \item{y}{
Population for the stratum of interest
}
}
\value{
Returns a vector which is the computed sample for the stratum of interest; rounded as a whole number
}
\author{
Paolo G. Hilado
}
\examples{
SRRprop99(500, 132)
[1] 126
SRRprop99(500, 259)
[1] 247
SRRprop99(500, 109)
[1] 104

## The function is currently defined as
function (x, y)
{
  z <- x/(1 + x*0.0001)
  b <- ceiling(z)
  c <- (y/x)*b
  round(c, digits = 0)
  }
}
