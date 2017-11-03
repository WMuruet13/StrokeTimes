#' @import gtools
#' @title internal_remove_missing
#' @description blah blah
#' @param dt A tibble
#' @return A tibble with missing fields marked as NA
#' @author Walter
#'

internal_remove_missing<- gtools::defmacro(dt,expr = {
  dt$LOC[which(dt$mis.LOC)]<-NA
  dt$LOCQ[which(dt$mis.LOCQ)]<-NA
  dt$LOCCmd[which(dt$mis.LOCCmd)]<-NA
  dt$Gaze[which(dt$mis.Gaze)]<-NA
  dt$Visual[which(dt$mis.Visual)]<-NA
  dt$Facial[which(dt$mis.Facial)]<-NA
  dt$LArm[which(dt$mis.LArm)]<-NA
  dt$RArm[which(dt$mis.RArm)]<-NA
  dt$LLeg[which(dt$mis.LLeg)]<-NA
  dt$RLeg[which(dt$mis.RLeg)]<-NA
  dt$Ataxia[which(dt$mis.Ataxia)]<-NA
  dt$Sensory[which(dt$mis.sensory)]<-NA
  dt$Language[which(dt$mis.Language)]<-NA
  dt$Dysarth[which(dt$mis.Dysarth)]<-NA
  dt$Neglect[which(dt$mis.Neglect)]<-NA
})
