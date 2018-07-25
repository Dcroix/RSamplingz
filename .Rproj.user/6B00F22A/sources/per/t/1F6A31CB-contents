\name{Cochran}
\alias{Cochran}
\title{
Cochran's Formula
}
\description{
Compute sample for proportions using Cochran's Formula
}
\usage{
Cochran(z, p, e)
}
\arguments{
  \item{z}{
abscissa of the normal curve that cuts off an area alpha at the tails
}
  \item{p}{
estimated proportion of the population which has the attribute in question
}
  \item{e}{
desired level of precision
}
}
\details{
Used when sampling on unknown populations thus an estimated proportion is used
}
\value{
Returns a vector which is the computed sample for the estimated proportion rounded up with ceiling function.
}
\references{
Cochran, W.G. (1963). Sampling Techniques, 2nd Ed., New York: John Wiley and Sons, Inc.
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
Cochran(1.96, 0.75, 0.05)
[1] 289
## The function is currently defined as
function (z, p, e)
{
    q <- 1 - p
    x <- z * z
    y <- x * p * q
    res <- y/(e * e)
    res <- ceiling(res)
    print(res)
  }
}
