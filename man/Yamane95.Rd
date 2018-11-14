\name{Yamane95}
\alias{Yamane95}
\title{
Yamane Equation for Sampling 95
}
\description{
Computes sample size for known Population at 95 percent Level of Confidence preferred for social science studies
}
\usage{
Yamane95(x)
}
\arguments{
  \item{x}{
Population to be used for computation of Sample
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a vector which is the computed sample for the given population rounded up with ceiling function.
}
\author{
Paolo G. Hilado
}
\references{
Yamane, T. (1967). Statistics, An Introductory Analysis, 2nd Ed., New York: Harper and Row.
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
Yamane95(700)
[1] 255
## The function is currently defined as
function (x)
{
  y <- x/(1 + x*0.0025)
  z <- ceiling(y)
  print(z)
}

