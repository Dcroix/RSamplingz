# This file is part of the RSamplingz package with License GPL-3.0-or-later
SRRequal99 <- function(x, y){
  z <- x/(1 + x*0.0001)
  a <- ceiling(z)
  b <- a/y
  ceiling(b)
}
