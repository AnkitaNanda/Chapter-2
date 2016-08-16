library("combinat", lib.loc="C:/Users/Arun/Desktop/R-3.2.5/library")
multinom <- function() {
  
  n <- readline("Enter the number of runs of the Multinomial distribution to be executed: ")
  k <- readline("Enter the number of different outcomes of each experiment: ")
  prompt <- paste("enter the probability vector as a space-separated with" , k , "elements summing to one")
  p <- as.double(strsplit(readline(prompt), " ")[[1]])
  
  
  n <- as.integer(n)
  k <- as.integer(k)
  p<-as.vector(p)
  
  X <- rmultinom(n,k,p)
  print("The generated sample is: " )
  print(X)
  
  pro <- paste("Enter the vector of outcome as a space-separated list with" , k , "elements summing to" , n , ":")
  pr <- as.integer(strsplit(readline(pro), " ")[[1]])
  pr <- as.vector(pr)
  d <- dmultinom(pr, size=NULL, p)
  
  print(paste("The probability of obtaining the vector of success is:", d))
  
}

multinom()





