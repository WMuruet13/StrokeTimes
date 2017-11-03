#' @import gtools
#' @import tidyverse
#' @title internal_befast
#' @description blah blah
#' @param dt A tibble
#' @return A tibble with variables for be fast
#' @author Walter
#'
internal_befast<-gtools::defmacro(dt,expr = {
  dt$altered_cons<-dt$LOC > 0
  dt$confused<-(dt$LOCQ + dt$LOCCmd) > 0
  dt$eyes<-dt$Gaze >0
  dt$visf<-dt$Visual > 0
  dt$face<-dt$Facial > 0
  dt$paresia<-(dt$LArm + dt$RArm + dt$LLeg + dt$RLeg) >0
  dt$numbness<-dt$Sensory >0
  dt$coordination<-dt$Ataxia > 0
  dt$speech<- (dt$Language + dt$Dysarth)>0
  dt$inattention<-dt$Neglect > 0
})
