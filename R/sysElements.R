#Created by Paolo G. Hilado July 20, 2018
sysElements <- function(file, sheet, N, n, s){
  library(xlsx)
  data <- read.xlsx(file, sheet)
  set.seed(s); g1 <- systematic(N, n)
  list <- subset(data, data$Code %in% g1)
  print(list)
}

