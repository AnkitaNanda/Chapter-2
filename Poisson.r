library("combinat", lib.loc="C:/Users/Arun/Desktop/R-3.2.5/library")
poss <- function() {
  
  n <- readline("Enter the sample size of the Poisson distribution to be generated: ")
  a <- readline("Enter the rate of the Poisson distribution to be generated:")
  
  n <- as.integer(n)
  a <- as.double(a)
  
  X <- rpois(n,a)
  
  print("The generated sample is: " )
  print(X)
  
  print(paste("The mean of the Poisson distribution is: ", mean(X)))
  print(paste("The variance of the Poisson distribution is: ",var(X)))
  
  i <- readline("Enter an integer value: ")
  i <- as.integer(i)
  
  pr <- dpois(i,a)
  
  print(paste("the probability that a Poisson variable X with rate", a , "takes the value ", i , "is: ", pr))
}

poss()


