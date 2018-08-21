\name{Yamane}
\alias{Yamane}
\title{
Yamane Formula
}
\description{
Estimation of sample size using the Yamane Formula; this function enables users to specify the desired level of precision / sampling error
}
\usage{
Yamane(x,y)
}
\arguments{
  \item{x}{
Population to be used for computation of Sample
}
  \item{y}{
Desired precions level / sampling error
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a vector which is the computed sample for the given population rounded up with ceiling function.
}
\references{
Yamane, T. (1967). Statistics, An Introductory Analysis, 2nd Ed., New York: Harper and Row.
}
\author{
Paolo G. Hilado
}
\examples{
Yamane(500,0.05)
[1] 223

Yamane(500,0.01)
[1] 477

## The function is currently defined as
Yamane <- function(x,y){
  a <- x/(1 + x*y^2)
  b <- ceiling(a)
  print(b)
}

