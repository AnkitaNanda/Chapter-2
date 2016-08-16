library("combinat", lib.loc="C:/Users/Arun/Desktop/R-3.2.5/library")
binom <- function() {
  
  n <- readline("Enter the sample size of the Binomial distribution to be generated: ")
  x <- readline("Enter the number of trials in each sample: ")
  p <- readline("Enter the probability of success in each trial: ")
  
  n <- as.integer(n)
  x <- as.integer(x)
  p <- as.double(p)
  
  X <- rbinom(n,x,p)
  
  print("The generated sample is: " )
  print(X)
  
  print(paste("The mean of the Binomial distribution is: ",mean(X)))
  print(paste("The variance of the Binomial distribution is: ",var(X)))
  
  i <- readline("Enter the total number of success to be obtained in the whole experiment: ")
  i <- as.integer(i)
  
  comb = (factorial(n) / (factorial(i) * factorial(n-i)))
  pr <- comb * (p^i) * ((1-p)^(n-i))
  print(paste("The probability of obtaining ", i , "successes in" ,n, "experiments of a Binomial distribution with probability", p , "is: ", pr))
  }


binom()
