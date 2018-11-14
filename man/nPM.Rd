\name{nPM}
\alias{nPM}
\title{
Estimation of Sample Size via Power and Mean
}
\description{
A formula to estimate the sample size using Power and Mean; preferred when there exist literatures that provide the needed statistics for its computation.
}
\usage{
nPM(alpha, power, sd, delta)
}
\arguments{
  \item{alpha}{
value set for Type I error
}
  \item{power}{
preferred power; indicated as 1 minus Type II error
}
  \item{sd}{
standard deviation
}
  \item{delta}{
the difference between the means of group A and B
}
}
\details{
Computes for the sample size using the confidence level, delta, standard deviation and preferred power.
}
\value{
Returns a character vector which presents the number of required samples for each group in the study.
}
\author{
Paolo G. Hilado
}
\note{
Unlike other formulas included in the package like Cochran and Smean, set alpha and power is converted to z-score by the nPM function
}
\examples{
nPM(0.05, 0.8, 50, 10)
[1] "393 each group"

## The function is currently defined as
nPM <- function(alpha,power,sd,delta){
a <- qnorm(1-(alpha/2))
p <- qnorm(power)
x <- a + p
x <- x*x
b <- sd*sd
c <- 2*x*b
n <- c / (delta*delta)
n <- ceiling(n)
ans <- paste(n, "each group")
print(ans)
}
