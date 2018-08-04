# This file is part of the RSamplingz package with License GPL-3.0-or-later
sampleElements<- function(file, sheet, N, n, s){
  library(xlsx)
  data <- read.xlsx(file, sheet)
  set.seed(s); g1 <- sample(N, n, replace = 0)
  list <- subset(data, data$Code %in% g1)
  print(list)
}

#Sample Data included in the package: "NamesList.xlsx" with sheet name "Names";
#150 observations with 3 variables: 1) Code / 2) Surname / 3) FirstName
#Make sure the Sample Data or your Data to be processed is in the working directory
