# This file is part of the RSamplingz package with License GPL-3.0-or-later
SRRprop99 <- function(x,y){
  z <- x/(1 + x*0.0001)
  b <- ceiling(z)
  c <- (y/x)*b
  round(c, digits = 0)
}
