#' @import gtools
#' @import tidyverse
#' @title internal_compute_times
#' @description Blah Blah
#' @param dt A tibble
#' @return A Tibble with computed time differences
#'

internal_compute_times<-gtools::defmacro(dt,expr = {
  dt<-dplyr::mutate(dt, onset_door = difftime(dt$Arrival,dt$Onset, units = "mins"))
  dt$onset_door[which(dt$Mis.Onset | dt$inpatient)]<-NA
  dt<-dplyr::mutate(dt,door_strkunit = difftime(dt$Arriv.Strkunit,dt$Arrival, units = "mins"))
  dt$door_strkunit[which(dt$Mis.Arrival | dt$Mis.Strkunit | dt$No.strkunit)]<-NA
  dt<-dplyr::mutate(dt,door_img= difftime(dt$Date.Img,dt$Arrival, units= "mins"))
  dt$door_img[which(dt$Mis.Arrival| dt$mis.Imgdate | dt$No.Img)]<-NA
  dt<-dplyr::mutate(dt,img_thromb= difftime(dt$Date.thromb,dt$Date.Img, units = "mins"))
  dt$img_thromb[which(dt$mis.Imgdate | dt$No.Img | !dt$Thrombolysis)]<-NA
})
