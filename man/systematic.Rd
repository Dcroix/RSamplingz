\name{systematic}
\alias{systematic}
\title{
Systematic Random Sampling
}
\description{
Determines the elements to be included for the desired sample; the first element is determined randomly with succeeding elements determined through the addition of the kth element.
}
\usage{
systematic(x, y)
}
\arguments{
  \item{x}{
Population for the study
}
  \item{y}{
Required sample for the study
}
}
\value{
Returns a vector which reflects the systematically randomized numbers with the last number not going beyond the last element of the Population; number of elements of said vector is equal to the required sample size
}
\author{
Paolo G. Hilado
}
\examples{
systematic(500, 10)
 [1]  20  70 120 170 220 270 320 370 420 470

## The function is currently defined as
function (x, y)
{
    k <- x/y
    a <- runif(1, 1, k)
    b <- round(a, digits = 0)
    c <- seq(b, b + k * (y - 1), k)
    round(c, digits = 0)
  }
}
