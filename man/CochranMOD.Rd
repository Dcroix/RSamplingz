\name{CochranMOD}
\alias{CochranMOD}
\title{
Modified Cochran's Formula
}
\description{
Computes a sample size for small populations
}
\usage{
CochranMOD(no,N)
}
\details{
Computes an adjusted sample size derived from Cochran's sample size recommendation for small populations
}
\value{
Returns a vector which is the adjusted sample for the given population rounded up with ceiling function.
}
\author{
Paolo G. Hilado
}
\references{
Cochran, W.G. (1963). Sampling Techniques, 2nd Ed., New York: John Wiley and Sons, Inc.
}
\note{
Commonly used z-scores:
     r = 0.90; z-score = 1.645 |
     r = 0.95; z-score = 1.96 |
     r = 0.98; z-score = 2.326 |
     r = 0.99; z-score = 2.576 |
}
\examples{
CochranMod(289, 800)
[1] 213

## The function is currently defined as
CochranMod <- function(no, N){
  x <- no -1
  y <- x / N
  z <- 1 + y
  n <- no / z
  n <- ceiling(n)
  print(n)
}
