# This file is part of the RSamplingz package with License GPL-3.0-or-later
CochranMod <- function(no, N){
  x <- no -1
  y <- x / N
  z <- 1 + y
  n <- no / z
  n <- ceiling(n)
  print(n)
}
