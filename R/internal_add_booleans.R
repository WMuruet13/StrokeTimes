#' @import gtools
#'
#' @title internal_add_booleans
#'
#' @description
#' Blah Blah
#'
#' @param importeddata A tibble containing the required variables
#'
#' @return A tibble with booleans
#'
#' @author Walter
#'

internal_add_booleans<- gtools::defmacro(dt, expr = {
  dt$inpatient<-dt$inpatient == 1
  dt$Mis.Onset<-dt$Mis.Onset == 1
  dt$Mis.Arrival<-dt$Mis.Arrival == 1
  dt$Mis.Strkunit<-dt$Mis.Strkunit == 1
  dt$No.strkunit<-dt$No.strkunit == 1
  dt$CHF<-dt$CHF == 1
  dt$HTN<-dt$HTN == 1
  dt$Afib<-dt$Afib == 1
  dt$DM<-dt$DM == 1
  dt$Stroke.TIA<-dt$Stroke.TIA == 1
  dt$mis.LOC<-dt$mis.LOC == 0
  dt$mis.LOCQ<-dt$mis.LOCQ == 0
  dt$mis.LOCCmd<-dt$mis.LOCCmd == 0
  dt$mis.Gaze<-dt$mis.Gaze == 0
  dt$mis.Visual<-dt$mis.Visual == 0
  dt$mis.Facial<-dt$mis.Facial == 0
  dt$mis.LArm<-dt$mis.LArm == 0
  dt$mis.RArm<-dt$mis.RArm == 0
  dt$mis.LLeg<-dt$mis.LLeg == 0
  dt$mis.RLeg<-dt$mis.RLeg == 0
  dt$mis.Ataxia<-dt$mis.Ataxia == 0
  dt$mis.sensory<-dt$mis.sensory == 0
  dt$mis.Language<-dt$mis.Language == 0
  dt$mis.Dysarth<-dt$mis.Dysarth == 0
  dt$mis.Neglect<-dt$mis.Neglect == 0
  dt$No.Img<-dt$No.Img == 1
  dt$mis.Imgdate<-dt$mis.Imgdate == 1
  dt$Thrombolysis<-dt$Thrombolysis == 1
  dt$Haem<-dt$Haem == 1
  dt$t.window<-dt$t.window == 1
  dt$comorbidity<-dt$comorbidity == 1
  dt$Medication<-dt$Medication == 1
  dt$Refusal<-dt$Refusal == 1
  dt$Age_ex<-dt$Age_ex == 1
  dt$Improving<-dt$Improving == 1
  dt$Severity<-dt$Severity == 1
  dt$Ukn.time<-dt$Ukn.time == 1
  dt$Other<-dt$Other == 1
  dt$Complication<-dt$Complication == 1
  dt$ICH<-dt$ICH == 1
  dt$AngioO<-dt$AngioO == 1
  dt$ECH<-dt$ECH == 1
  dt$other.complication<- dt$other.complication == 1
  dt$Intraarterial<-dt$Intraarterial== 1
  dt$sixmFollowup<- dt$sixmFollowup == 0
})
