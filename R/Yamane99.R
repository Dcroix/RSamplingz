# This file is part of the RSamplingz package with License GPL-3.0-or-later
Yamane99 <- function(x){
  y <- x/(1 + x*0.0001)
  z <- ceiling(y)
  print(z)
}
