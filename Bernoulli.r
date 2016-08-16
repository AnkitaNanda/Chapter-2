library("mc2d", lib.loc="C:/Users/Arun/Desktop/R-3.2.5/library")

bern <- function() {
  
  n <- readline("Enter the sample size Bernoulli  distribution: ")
  p <- readline("Enter the probability of success Bernoulli  distribution: ")
  n <- as.integer(n)
  p <- as.double(p)

  X <- rbern(n,p)
  
  print("The generated sample is: " )
  print(X)
  
  print(paste("The mean of the Bernoulli  distribution is: ",mean(X)))
  print(paste("The variance of the Bernoulli distribution is: ",var(X)))
  
}


bern()
