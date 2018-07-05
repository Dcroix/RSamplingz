# This file is part of the RSamplingz package with License GPL-3.0-or-later
Smean <- function(z,s,d){
  a <- z*z
  b <- s*s
  c <- d*d
  e <- a*b
  Smean <- e / c
  Smean <- ceiling(Smean)
  print(Smean)
}
