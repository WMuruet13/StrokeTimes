#' @import gtools
#' @import tidyverse
#' @title internal_mod_dest(datatable)
#' @description
#' Blah Blah
#' @param dt A tibble
#'

internal_mod_dest<-gtools::defmacro(dt,expr = {
  dt$Dis.Destination<-as.integer(dt$Dis.Destination)
  dt<-dplyr::mutate(dt, Discharge = dplyr::case_when(
    Dis.Destination == 0 ~ "Died",
    Dis.Destination == 1 ~ "Care Home",
    Dis.Destination == 2 ~ "Home",
    Dis.Destination == 3 ~ "Other",
    Dis.Destination == 4 | Dis.Destination == 6  ~ "Hospital",
    Dis.Destination == 5 | Dis.Destination == 7 ~ "ESD",
    TRUE ~ "NA"
  ))
  dt$Discharge<-factor(dt$Discharge)
  dt<-dplyr::mutate(dt, Status = dplyr::case_when(
    Dis.Destination == 0 ~ "Death",
    Dis.Destination > 0 ~ "Alive",
    TRUE ~ "NA"
  ))
  dt$Status<-factor(dt$Status)
})
