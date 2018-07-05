# This file is part of the RSamplingz package with License GPL-3.0-or-later
Cochran <- function(z,p,e){
  q <- 1 - p
  x <- z*z
  y <- x*p*q
  res <- y /(e*e)
  res <- ceiling(res)
  print(res)
}
