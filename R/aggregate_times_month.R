#' @export
#' @import tidyverse
#' @import zoo
#' @title aggregate_times_month
#' @description blah blah
#' @param df a tibble with the required variables
#' @return an aggregated table
#' @author Walter
#'

aggregate_times_month<-function(df)
{
  df<-dplyr::mutate(df,monthyear= zoo::as.yearmon(substr(df$Arrival,1,7)))
  dt<-aggregate(onset_door~monthyear, data=df, FUN = median)
  return(dt)
}
