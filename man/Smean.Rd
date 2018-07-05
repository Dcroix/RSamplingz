\name{Smean}
\alias{Smean}
\title{
Sample Size for Mean
}
\description{
A formula for Sample Size for the Mean
}
\usage{
Smean(z, s, d)
}
\arguments{
  \item{z}{
abscissa of the normal curve that cuts off an area alpha at the tails
}
  \item{s}{
sigma - the variance of an attribute in the population
}
  \item{d}{
desired level of precision (margin of error)
}
}
\details{
Calculates the sample size via estimation of the arithmetic mean of a certain variable of interest in the selected population
}
\value{
Returns a vector which is the sample size computed through estimates of the specified arithmetic mean; it has been rounded using the ceiling function
}
\references{
Rose, S., Spinks, N. & Canhoto, A. (2015). Management Research: Applying the Principles

Israel, G. (1992). Determining Sample Size, Fact Sheet PEOD-6, University of Florida.
}
\author{
Paolo G. Hilado
}
\note{
Commonly used z-scores:
     r = 0.90; z-score = 1.645 |
     r = 0.95; z-score = 1.96 |
     r = 0.98; z-score = 2.326 |
     r = 0.99; z-score = 2.576 |
}
\examples{
Smean(1.96, 1.5, 0.25)
[1] 139

## The function is currently defined as
function(z,s,d){
  a <- z*z
  b <- s*s
  c <- d*d
  e <- a*b
  Smean <- e / c
  Smean <- ceiling(Smean)
  print(Smean)
}
