# This file is part of the RSamplingz package with License GPL-3.0-or-later
Yamane <- function(x,y){
  a <- x/(1 + x*y^2)
  b <- ceiling(a)
  print(b)
}
