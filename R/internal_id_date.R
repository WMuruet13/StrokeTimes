#'@title internal_id_date
#'@description Blah
#'@param string a character vector containing a date
#'@return The (hopefully) correct date format
#'@author walter
#'

internal_id_date<-function(x)
{
  oldw<- getOption("warn")
  options(warn=-1)
  if(!is.na(as.numeric(substr(x,1,4))))
  {
    sep<-substr(x,5,5)
    dateformat<-paste("%Y","%m","%d",sep = sep)
  }
  if(is.na(as.numeric(substr(x,1,4))))
  {
    sep<-substr(x,3,3)
    dateformat<-paste("%d","%m","%Y",sep = sep)
  }
  options(warn = oldw)
dateformat<-paste(dateformat, "%H:%M")
return(dateformat)
}
