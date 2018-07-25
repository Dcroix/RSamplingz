#Created by Paolo G. Hilado July 20, 2018
sampleElements<- function(file, sheet, N, n, s){
  library(xlsx)
  data <- read.xlsx(file, sheet)
  set.seed(s); g1 <- sample(N, n, replace = 0)
  list <- subset(data, data$Code %in% g1)
  print(list)
}

#"CSAB Employees.xlsx", "FullTime"
