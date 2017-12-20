
hello <- function() {
  print("Hello, world!")
}

#' Compressibilty factor
#'
#' A dataset containing the z factor from SK chart
#'
#' @format A data frame with 57060 rows and 4 variables:
#' \describe{
#'   \item{Tpr}{price, in US dollars}
#'   \item{Ppr}{weight of the diamond, in carats}
#'   \item{z}{weight of the diamond, in carats}
#'   \item{set}{a set of Tpr curve}
#'   ...
#' }
"sk_tidy"

#' untidy dataset
#'
#' The raw dataset read into R with first three column names changed
#'
#' @format A data frame with 2853 rows and 60 variables:
"untidy"
