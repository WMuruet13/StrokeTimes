#' @title internal_dta_vars
#' 
#' @description nil
#' 
#' @details nil
#' 
#' @param nil
#' 
#' @return A list containing the names of the variables to extract and their new names
#' 

internal_dta_vars<-function()
{
  #### Centre Variables ####
  
  centrevars<-c("proclinv1id"   # Proclinvlid
                ,"patientid"    # Patient ID
                ,"teamcode"     # Teamcode
                ,"v1_7a"        # Postcode
                ,"v1_9"         # Diagnosis
                )
  
  centrenames<-c("Proclinv1id", "ID","Teamcode","Postcode","Diagnosis")
  
  #### Demographic Variables ####
  
  demvars<- c("v1_5"         # Age
              ,"v1_6"        # Sex
              ,"v1_8"        # Ethnicity        
              )
  
  demnames<-c("Age","Sex","Ethcat")
  
  
  ##### Time Variables ####
  timevars<-c("v1_10"        # Inpatient stroke
              ,"v1_11"       # Stroke Onset
              ,"v1_11a"      # Missing Values Onset
              ,"v1_11_1"     # Accuracy Date onset
              ,"v1_11_2"     # Accuracy Time onset
              ,"v1_13"       # Arrival first hospital
              ,"v1_13a"      # Missing Values First Hospital
              ,"v1_15"       # Arrival Stroke Unit
              ,"v1_15a"      # Missing Values Stroke Unit
              ,"v1_15b"      # Did not stay on stroke unit
  )
  timenames<-c("inpatient","Onset","Mis.Onset","Accu.dat.Onset","Accu.tim.onset","Arrival","Mis.Arrival","Arriv.Strkunit","Mis.Strkunit","No.strkunit")
  
  
  ##### Comorbid Variables ####
  comorbidvars<-c("v2_1_1"   # Congestive Heart Failure
                  ,"v2_1_2"  # Hypertension
                  ,"v2_1_3"  # Atrial Fibrillation
                  ,"v2_1_4"  # Diabetes
                  ,"v2_1_5"  # Stroke/TIA
                  ,"v2_2"    # mRs
  )
  
  comorbidnames<-c("CHF","HTN","Afib","DM","Stroke.TIA","mRs")
  
  #### Clinical Variables ####
  clinicalvars<-c("v2_3"      # NIHSS
                  ,"v2_3_1"   # LOC
                  ,"v2_3_1yn"# missing LOC
                  ,"v2_3_2"  # LOCQ
                  ,"v2_3_2yn"# missing LOCQ
                  ,"v2_3_3"  # LOCCmd
                  ,"v2_3_3yn"# missing LOCCmd
                  ,"v2_3_4"  # Gaze
                  ,"v2_3_4yn"# missing Gaze
                  ,"v2_3_5"  # Visual
                  ,"v2_3_5yn"# missing visual
                  ,"v2_3_6"  # Facial
                  ,"v2_3_6yn"# missing Facial
                  ,"v2_3_7"  # LArm
                  ,"v2_3_7yn"# missing LArm
                  ,"v2_3_8"  # RArm
                  ,"v2_3_8yn"# missing RArm
                  ,"v2_3_9"  # LLeg
                  ,"v2_3_9yn"# missing LLeg
                  ,"v2_3_10" # RLeg
                  ,"v2_3_10yn"#missing RLeg
                  ,"v2_3_11" # Ataxia
                  ,"v2_3_11yn"# missing Ataxia
                  ,"v2_3_12" # Sensory
                  ,"v2_3_12yn"#missing Sensory
                  ,"v2_3_13" # Language
                  ,"v2_3_13yn"#missing language
                  ,"v2_3_14" #Dysarthria
                  ,"v2_3_14yn"#missing Dysarthria
                  ,"v2_3_15" # Neglect
                  ,"v2_3_15yn"#missing Neglect
                  ,"v2_5"    # Stroke type
  )
  clinicalnames<-c("NIHSS","LOC","mis.LOC","LOCQ","mis.LOCQ","LOCCmd","mis.LOCCmd","Gaze", "mis.Gaze","Visual","mis.Visual","Facial","mis.Facial","LArm","mis.LArm","RArm", "mis.RArm", "LLeg", "mis.LLeg","RLeg", "mis.RLeg","Ataxia","mis.Ataxia", "Sensory", "mis.sensory","Language","mis.Language","Dysarth","mis.Dysarth","Neglect", "mis.Neglect", "Stroke.type")
  
  ##### Thrombolysis Variables ####
  ivtvars<-c("v2_4"          # Date Imaging
             ,"v2_4a"        # No Imaging
             ,"v2_4b"        # missing imaging Date
             ,"v2_7"         # Date Thrombolysis  
             ,"v2_6"         # Thrombolysis
             ,"v2_6_1"       # Reason For No Thrombolysis
             ,"v2_6_2a"      # Haemorrhagic
             ,"v2_6_2b"      # Time Window
             ,"v2_6_2c"      # Comorbidity
             ,"v2_6_2d"      # Medication
             ,"v2_6_2e"      # Refusal
             ,"v2_6_2f"      # Age
             ,"v2_6_2g"      # Improving
             ,"v2_6_2h"      # Severity
             ,"v2_6_2i"      # Unknown time
             ,"v2_6_2j"      # Other medical
             ,"v2_8"         # Complication
             ,"number_complications" # Number complications
             ,"v2_8_1a"      # ICH
             ,"v2_8_1b"      # Angio Oedema
             ,"v2_8_1c"      # Extracranial Bleed
             ,"v2_8_1d"      # Other complication
             ,"v2_9"         # NIHSS24hrs
  )
  ivtnames<-c("Date.Img","No.Img","mis.Imgdate","Date.thromb","Thrombolysis","Reason.No.Thromb", "Haem","t.window","comorbidity","Medication","Refusal","Age_ex","Improving","Severity","Ukn.time","Other","Complication","Num.Complications","ICH","AngioO","ECH","other.complication","NIHSS24")
  
  ##### Interventional Radiology ####
  IAtrtvars<-c("v2_11"        # Intraarterial
  )
  IATtrtnames<-c("Intraarterial")
  
  
  ##### Discharge Variables ####
  dischvars<-c("v7_1"         # Discharge destination
               ,"v7_4"        # mRs at discharge
  )
  dischnames<-c("Dis.Destination", "Dis.mRs")
  
  #### Six Months Variables ####
  sixmvars<-c("v8_1"          # 6 month follow-up 
              ,"v8_4"         # mRs 6m
  )
  sixmnames<-c("sixmFollowup","sixmmRs")
  
  myvars<-c(centrevars,demvars,timevars,comorbidvars,clinicalvars,ivtvars,IAtrtvars,dischvars,sixmvars)
  
  mynames<-c(centrenames,demnames,timenames,comorbidnames,clinicalnames,ivtnames,IATtrtnames,dischnames,sixmnames)

return(list("myvars"= myvars, "mynames" = mynames))  
}