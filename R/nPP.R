# This file is part of the RSamplingz package with License GPL-3.0-or-later
nPP <- function(alpha,power,proportion,delta){
  a <- qnorm(1-(alpha/2))
  p <- qnorm(power)
  x <- a + p
  x <- x*x
  b <- proportion*(100-proportion)
  c <- 2*x*b
  n <- c / (delta*delta)
  n <- ceiling(n)
  ans <- paste(n, "each group")
  print(ans)
}
