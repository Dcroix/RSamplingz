\name{Yamane99}
\alias{Yamane99}
\title{
Yamane Equation for Sampling 99
}
\description{
Computes sample size for known Population at 99 percent Level of Confidence which is preferred for studies on phenomenon with high risk
}
\usage{
Yamane99(x)
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
Yamane99(700)
[1] 655
## The function is currently defined as
function (x)
{
  y <- x/(1 + x*0.0001)
  z <- ceiling(y)
  print(z)
}

