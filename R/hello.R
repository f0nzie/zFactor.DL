
hello <- function() {
  print("Hello, world!")
}

#' Compressibilty factor dataset
#'
#' A dataset containing the z factor from SK chart for low and high
#' Pseudo-reduced pressure
#'
#' @format A data frame with 57060 rows and 4 variables:
#' \describe{
#'   \item{Tpr}{pseudo reduce temperature}
#'   \item{Ppr}{pseudo reduced pressure}
#'   \item{z}{compressibility factor}
#'   \item{set}{a set of Tpr curve}
#'   \item{range}{if curve is low or high pressure}
#'   ...
#' }
"sk_tidy"


#' untidy dataset
#'
#' The raw dataset read into R with first three column names changed
#'
#' @format A data frame with 2853 rows and 60 variables:
"untidy"


#' Compressibilty factor for Low Pressure data points
#'
#' A dataset containing the z factor from SK chart fow low Ppr
#'
#' @format A data frame with 57060 rows and 4 variables:
#' \describe{
#'   \item{Tpr}{pseudo reduce temperature}
#'   \item{Ppr}{pseudo reduced pressure}
#'   \item{z}{compressibility factor}
#'   \item{set}{a set of Tpr curve}
#'   ...
#' }
"sk_tidy_lp"


#' Compressibilty factor for High Pressure data points
#'
#' A dataset containing the z factor from SK chart fow high Ppr
#'
#' @format A data frame with 904 rows and 4 variables:
#' \describe{
#'   \item{Tpr}{pseudo reduce temperature}
#'   \item{Ppr}{pseudo reduced pressure}
#'   \item{z}{compressibility factor}
#'   \item{set}{a set of Tpr curve}
#'   ...
#' }
"sk_tidy_hp"
