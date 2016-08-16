library("combinat", lib.loc="C:/Users/Arun/Desktop/R-3.2.5/library")
nbinom <- function() {
  
  s <- readline("Enter the number of success in a sequence of Bernoulli trials:")
  p <- readline("Enter the probabilty of success in each trial: ")
  
  
  s <- as.integer(s)
  p <- as.double(p)
  
 i <- readline(paste("Enter an integer greater than or equal to", s , "representing number of trials :"))
 i <- as.integer(i)
 
 
 d <- dnbinom(s,i,p)
 print(paste("Probability that exactly", i, "Bernoulli trials with probability" , p , "are needed to obtain" , s , "successes is:" , d))
 
 E <- s/p
 V <- (s*(1-p))/(p^2) 
  
  
 print(paste("The expected number of trials until" , s , "successes is:" , E ))
 print(paste("The variance value of the distribution is:" , V ))
  
  
}

nbinom()