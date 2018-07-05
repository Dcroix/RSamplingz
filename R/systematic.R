# This file is part of the RSamplingz package with License GPL-3.0-or-later
systematic <- function(x,y){
  k <- x/y
  a <- runif(1, 1, k)
  b <- round(a, digits = 0)
  c <- seq(b, b+k*(y-1), k)
  round(c, digits = 0)
}
