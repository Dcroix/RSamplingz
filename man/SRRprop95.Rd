\name{SRRprop95}
\alias{SRRprop95}
\title{
Stratified Random Sampling with Proportional Allocation
}
\description{
Computes for the sample per identified stratum which is in proportion to the population of the same stratum; considers a 95 percent level of confidence
}
\usage{
SRRprop95(x, y)
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
SRRprop95(570, 145)
[1] 60
SRRprop95(570, 220)
[1] 91
SRRprop95(570, 205)
[1] 85

## The function is currently defined as
function (x, y)
{
    z <- x/(1 + x * 0.0025)
    b <- ceiling(z)
    c <- (y/x) * b
    round(c, digits = 0)
  }
}
