#' z_score performs z score normalisation on a vector of values
#'
#' @param x numeric vector
#'
#' @return a numeric vector with the same length as x
#' @export
#'
#' @examples
#' # sample data
#' vect <- rnorm(20, 10, 5)
#' z_score(vect)
z_score <- function(x) {
  (x - mean(x)) / sd(x)
}