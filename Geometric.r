library("combinat", lib.loc="C:/Users/Arun/Desktop/R-3.2.5/library")
geom <- function() {
  
  n <- readline("Enter the number of variables of the Geometric distribution to be generated: ")
  p <- readline("Enter the probabilty of success in each trial: ")
  
  n <- as.integer(n)
  p <- as.double(p)
  
 
  X <- rgeom(n,p)
  print("The generated sample is: " )
  print(X)
  
  i <- readline("Enter the number trials to get the first success: ")
  i <- as.integer(i)
  
  pr <-((1-p)^(i-1))* i
  prg <- (1-p)^n
  E <- 1/p
  V <- (1-p)/(p^2)
  
  print(paste("The probabilty that the first success occurs at" , i+1 , "trial in a sequence of independent Bernoulli trials with the probability of success" , p , "is:" , pr))
  print(paste("The probability that for the first success one needs more than" , i , "trials is:" , prg))
  
  print(paste("The expected number of trials until first success is:" , E ))
  print(paste("The variance value of the distribution is:" , V ))
 
  
}

geom()









rgeom(10, 0.5)