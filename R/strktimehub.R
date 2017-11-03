#' @export
#' @title strktimehub
#'
#' @descrpition
#' \code{strktimehub} creates a tibble ready to analyse
#'
#' @param filename A file containing a rectangular dataset
#' @return A tibble
#' @author Walter Muruet

strktimehub<-function(filename)
{
  #### General warnings ####
  if (!is.character(filename)) {stop("file name must be character")}
  if (!file.exists(filename)){stop("File does not exist")}

  #### Determine file type an act accordingly ####
  if(!tools::file_ext(filename)=="csv" & !tools::file_ext(filename)=="dta" ) {stop("file not supported")}
  if(tools::file_ext(filename)=="dta"){importeddata<-internal_import_dta(filename)}
  if(tools::file_ext(filename)=="csv"){importeddata<-internal_import_csv(filename)}
  importeddata<-backup


  #### Create Factors ####
  internal_add_factors(importeddata)

  #### Change Binary Variables to Booleans ####
  internal_add_booleans(importeddata)

  #### Date-times ####
  internal_add_datetimes(importeddata)
  importeddata<-backup2
  internal_compute_times(importeddata)

  #### Clean Data ####
  internal_remove_missing(importeddata)
  internal_befast(importeddata)

  #### Remove redundant variables ###
  tiddydata<-dplyr::select(importeddata
                           ,Proclinv1id
                           ,ID
                           ,Teamcode
                           ,Postcode
                           ,Diagnosis
                           ,Age
                           ,Sex
                           ,Ethgp
                           ,Eth3gp
                           ,inpatient
                           ,Onset
                           ,Accu.dat.Onset
                           ,Accu.tim.onset
                           ,Arrival
                           ,Arriv.Strkunit
                           ,No.strkunit
                           ,onset_door
                           ,door_strkunit
                           ,CHF
                           ,HTN
                           ,Afib
                           ,DM
                           ,Stroke.TIA
                           ,mRs
                           ,NIHSS
                           ,altered_cons
                           ,confused
                           ,eyes
                           ,visf
                           ,face
                           ,paresia
                           ,numbness
                           ,coordination
                           ,speech
                           ,inattention
                           ,LOC
                           ,LOCQ
                           ,LOCCmd
                           ,Gaze
                           ,Visual
                           ,Facial
                           ,LArm
                           ,RArm
                           ,LLeg
                           ,RLeg
                           ,Ataxia
                           ,Sensory
                           ,Language
                           ,Dysarth
                           ,Neglect
                           ,Stroke.type
                           ,Date.Img
                           ,No.Img
                           ,door_img
                           ,Thrombolysis
                           ,Date.thromb
                           ,img_thromb
                           ,Reason.No.Thromb
                           ,Haem
                           ,t.window
                           ,comorbidity
                           ,Medication
                           ,Refusal
                           ,Age_ex
                           ,Improving
                           ,Severity
                           ,Ukn.time
                           ,Other
                           ,Complication
                           ,Num.Complications
                           ,ICH
                           ,AngioO
                           ,ECH
                           ,other.complication
                           ,NIHSS24
                           ,Intraarterial
                           ,Discharge
                           ,Dis.mRs
                           ,Status
                           ,sixmFollowup
                           ,sixmmRs
                           )

  return(tiddydata)
}
