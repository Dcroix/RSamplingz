\name{nPP}
\alias{nPP}
\title{
Estimation of Sample Size via Power and Proportion
}
\description{
A formula to estimate the sample size using Power and Proportion; preferred when there exist literatures that provide the needed statistics for its computation.
}
\usage{
nPP(alpha, power, proportion, delta)
}
\arguments{
  \item{alpha}{
value set for Type I error
}
  \item{power}{
preferred power; indicated as 1 minus Type II error
}
  \item{proportion}{
estimated proportion of individuals meeting the inclusion criteria
}
  \item{delta}{
difference between proportions
}
}
\details{
Computes for the sample size using the confidence level, delta, proportion and preferred power.
}
\value{
Returns a character vector which presents the number of required samples for each group in the study.
}
\author{
Paolo G. Hilado
}
\note{
Unlike other formulas included in the package like Cochran and Smean, set alpha and power is converted to z-score by the nPP function
}
\examples{
nPP(.05, .8, 50, 12)
[1] "273 each group"

## The function is currently defined as
nPP <- function(alpha,power,proportion,delta){
  a <- qnorm(1-(alpha/2))
  p <- qnorm(power)
  x <- a + p
  x <- x*x
  b <- proportion*(100-proportion)
  c <- 2*x*b
  n <- c / (delta*delta)
  n <- ceiling(n)
  ans <- paste(n, "each group")
  print(ans)
}

