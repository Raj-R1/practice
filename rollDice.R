#' rollDice
#'
#' @description
#' simulates rolling multiple fair dice of any type
#'
#' @param diceType integer number of sides on the die
#' @param diceCount integer number of dice to roll
#' @param returnSum logical value TRUE to return sum, FALSE to return set
#'
#' @return
#' either a vector of individual roll results or the total sum
#'
#' @details
#' outcomes are generated using the dice type
#' sampling is done with replacement to simulate fair dice
#' results are returned either as a set of rolls or as their sum
#'

rollDice <- function(diceType, diceCount, returnSum){
  
  outcomes <- c()
  
  for(i in 1:diceType){
    outcomes <- c(outcomes, i)
  }
  results <- c()
  for(i in 1:diceCount){
    roll <- sample(outcomes, size = 1, replace = TRUE)
    results <- c(results, roll)
  }
  if(returnSum == TRUE){
    return(sum(results))
  } else {
    return(results)
  }
}
