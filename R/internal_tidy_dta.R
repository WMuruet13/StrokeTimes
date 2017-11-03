#' @import tidyverse
#'
#' @title internal_tidy_dta
#'
#' @description nil
#'
#' @details  nil
#'
#' @param filename
#' @return a tidy tibble
#' @author WM

internal_tidy_dta<-function(filename)
{
  #### Read dta file and Select Relevant Variables ####
  importeddata<-haven::read_dta(filename)
  importeddata<-importeddata[internal_dta_vars()$myvars]
  names(importeddata)<-internal_dta_vars()$mynames

  return(importeddata)
}
