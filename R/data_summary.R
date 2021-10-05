#' Title A function to calculate summary statistics (mean, sample size, standard deviation, standard error) for a numeric variable, 'measure', for each of the levels in 'group1' and optionally for the each of the groups in 'group2' within 'group1'
#'
#' @param df a data frame containing at least two columns, measure and group
#' @param measure the variable for which the summary statistics are calculated
#' @param group1 the variable giving the different groups for which the summary statistics are calculated
#' @param group2 optional variable giving an additional levelof grouping
#'
#' @return
#' @export
#'
#' @examples
#' # create a data set
#' dat <- data.frame(x = rnorm(20, 10, 1), 
#'                   gp = rep(c("a","b"), each = 10))
#' data_summary(dat, x, gp)
#' 
#' #' # create a data set
#' dat <- data.frame(x = rnorm(40, 10, 1), 
#'                   gp1 = rep(c("a","b"), each = 20),
#'                   gp2 = rep(c("a","b"), each = 10, times = 2))
#' data_summary(dat, x, gp1, gp2)
#' 
library(tidyverse)
data_summary <- function(df, measure, group1, group2 = NULL) {
  df %>% 
    group_by({{ group1 }}, {{ group2 }}) %>% 
    summarise(mean = mean({{ measure }}),
              n = length({{ measure }}),
              sd = sd({{ measure }}),
              se = sd/sqrt(n))
}