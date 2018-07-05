\name{SRRequal99}
\alias{SRRequal99}
\title{
Stratified Random Sampling with Equal Allocation
}
\description{
Computes for the sample size that is equal across each stratum of interest; considers a 99 percent level of confidence
}
\usage{
SRRequal99(x, y)
}
\arguments{
  \item{x}{
Population of the Study
}
  \item{y}{
Number of Strata
}
}
\details{
Used when the strata of interest are to be represented and that sample size is equal for each
}
\value{
Returns a vector which is the sample size required for each identified stratum; it has been rounded using the ceiling function
}
\author{
Paolo G. Hilado
}
\note{
%%  ~~further notes~~
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
SRRequal99(1270, 2)
[1] 564
## The function is currently defined as
function (x,y)
{
  z <- x/(1 + x*0.0001)
  a <- ceiling(z)
  b <- a/y
  ceiling(b)
  }
}
