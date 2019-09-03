# Squaring elements of a given vector

square_for <- function(x){
  # [ToDo] Use the for loop
  for(i in 1 : length(x)) {
    x[i] = x[i] * x[i]
  }
  
  return(x)
}

square_sapply <- function(x){
  # [ToDo] Use the sapply function
  x = sapply(x, function(y) y^2)
  
  return(x)
}

square_vec <- function(x){
  # [ToDo] Use power(^) function in vector form
  x = x^2
  
  return(x)
}

square_vec2 <- function(x){
  # [ToDo] Use multiplication(*) function in vector form
  x = x * x
  
  return(x)
}

# [ToDo] Create a vector x of size 100,000 of normal variables

x <- rnorm(100000)

# [ToDo] Verify that all functions return the same output
square_for(x)

square_sapply(x)

square_vec(x)

square_vec2(x)

# [ToDo] Use microbenchmark package to compare three functions in terms of speed
library(microbenchmark)

microbenchmark(
  square_for(x),
  square_sapply(x),
  square_vec(x),
  square_vec2(x)
)