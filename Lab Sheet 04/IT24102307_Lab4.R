getwd()
setwd("C:\\Users\\it24102307\\Desktop\\IT24102307")
getwd()

#Exercise

#1
branch_data <- read.table("Exercise.txt",header=TRUE,sep=",")
fix(branch_data)
attach(branch_data)

#2
str(branch_data)

#3
boxplot(branch_data$Sales_X1, Main="Sales",outline=TRUE, outpch=8, horizontal=TRUE,xlab="Sales")
hist(branch_data$Sales_X1, Main="Sales",outline=TRUE,outpch=8, horizontal=TRUE)

#4
summary(Advertising_X2)
IQR(Advertising_X2)

#5
find_outliers <- function(z) {
  Q1 <- quantile(z, 0.25)
  Q3 <- quantile(z, 0.75)
  IQR <- Q3 - Q1
  
  ub <- Q3 + 1.5 * IQR
  lb <- Q1 - 1.5 * IQR
  
  print(paste("Upper Bound = ", ub))
  print(paste("Lower Bound = ", lb))
  print(paste("Outliers =", paste(sort(x[x<lb | x>ub]),collapse=",")))
}
get.outlier(Years_X3)