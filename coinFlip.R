#' Coin FLip
#'
#' @description
#' A function to simulate the flipping of a coin, with parameters for bias
#' 
#' @param p_heads num probability of heads in the coin flip
#' @returns vector of outcomes
#'
#' @details
#' Function takes num value for probability of getting heads, and simulates coin flips with that probability using sample()
#'
flipCoin <- function(n = 1, p_heads = 0.5){
  p_tails = 1 - p_heads
  outcomes <- c("H","T")
  prob <- c(p_heads, p_tails)
  output <- c(sample(x = outcomes, size = n, replace=TRUE, prob = prob))
  return(output)
}

# Run function
print(flipCoin(5,0.5))
# Test function

