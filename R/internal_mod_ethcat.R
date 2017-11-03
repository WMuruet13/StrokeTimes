#' @import gtools
#' @import tidyverse
#' @title internal_mod_ethcat
#'
#' @description
#' blah blah
#'
#' @param dt
#'
#' @return A datatable with Ethcat (White, Black, South Asian, Chinese, Other) Eth3gp (White, Black, Other)
#'
#'

internal_mod_ethcat<-gtools::defmacro(dt, expr = {
  dt<-dplyr::mutate(dt, Ethgp= dplyr::case_when(grepl("A British|B Irish|C Any other White background|W White",dt$Ethcat)~ "White",
                                            grepl("BO Black Other|M Caribbean|N African|P Any other Black background",dt$Ethcat)~ "Black",
                                            grepl("H Indian|I Indian|J Pakistani|K Bangladeshi",dt$Ethcat)~"South Asian",
                                            grepl("C Chinese|R Chinese|L Any other Asian background",dt$Ethcat)~ "Asian Other",
                                            grepl("D White and Black Caribbean|E White and Black African|F White and Asian|G Any other mixed background|M Mixed Ethnic Group",dt$Ethcat) ~ "Mixed Background",
                                            grepl("O Other Ethnic Group|S Any other ethnic background",dt$Ethcat)~ "Other",
                                            TRUE~"Unknown"
                                             )

                   )
  dt$Ethgp<-factor(dt$Ethgp)
  dt<-dplyr::mutate(dt, Eth3gp = dplyr::case_when(Ethgp == "White" ~ "White",
                                                  Ethgp == "Black" ~ "Black",
                                                  Ethgp == "Asian Other"| Ethgp == "Mixed Background"|Ethgp == "Other"|Ethgp == "South Asian" ~ "Other",
                                                  TRUE ~ "Not Stated"
                                                  )
                      )
  dt$Eth3gp<-factor(dt$Eth3gp)

})
