#' @import gtools
#'
#' @title internal_add_factors
#'
#' @description
#' blah blah
#'
#' @details
#' blah blah again
#'
#' @param importeddata A tibble containing the required variables
#'
#' @return A tibble with factors
#'
#' @author Walter
#'

internal_add_factors<- gtools::defmacro(datatable, expr=
                                          {
                                            datatable$Teamcode<-factor(datatable$Teamcode)
                                            datatable$Postcode<-factor(datatable$Postcode)
                                            datatable$Diagnosis<-factor(datatable$Diagnosis,
                                                                        levels = c(0,1,2),
                                                                        labels = c("Stroke", "TIA", "Other"))
                                            datatable$Sex<-factor(datatable$Sex,
                                                                  levels = c(0,1),
                                                                  labels = c("Female","Male"))
                                            internal_mod_ethcat(datatable)
                                            datatable$Accu.dat.Onset<-factor(datatable$Accu.dat.Onset,
                                                                             levels = c(0,1,2),
                                                                             labels = c("Precise","Estimated","Wake-up"))
                                            datatable$Accu.tim.onset<-factor(datatable$Accu.tim.onset,
                                                                             levels = c(0,1,2),
                                                                             labels = c("Precise","Estimated","Wake-up"))
                                            datatable$Stroke.type<-factor(datatable$Stroke.type,
                                                                          levels = c(0,1),
                                                                          labels = c("Ischaemic", "PICH"))
                                            datatable$Reason.No.Thromb<-factor(datatable$Reason.No.Thromb,
                                                                               levels = c(0,1,2,3),
                                                                               labels = c("Not Available","Service Hours", "Unable to scan", "No Reason"))
                                            internal_mod_dest(datatable)
                                          })
