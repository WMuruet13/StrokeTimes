#' @import gtools
#' @title internal_add_datetimes
#' @description  Blah Blah
#' @param dt A tibble
#' @author Walter
#'

internal_add_datetimes<- gtools::defmacro(dt,expr = {

   for(i in 1:dim(dt)[1])
  {
    dateformat<-internal_id_date(dt$Onset[i])
    dt$Onset[i]<-format(as.POSIXct(dt$Onset[i], format=dateformat, tz="GMT"),dateformat)

    dateformat<-internal_id_date(dt$Arrival [i])
    dt$Arrival [i]<-format(as.POSIXct(dt$Arrival [i], format=dateformat, tz="GMT"),dateformat)

    dateformat<-internal_id_date(dt$Arriv.Strkunit [i])
    dt$Arriv.Strkunit [i]<-format(as.POSIXct(dt$Arriv.Strkunit [i], format=dateformat, tz="GMT"),dateformat)

    dateformat<-internal_id_date(dt$Date.Img [i])
    dt$Date.Img [i]<-format(as.POSIXct(dt$Date.Img [i], format=dateformat, tz="GMT"),dateformat)

    dateformat<-internal_id_date(dt$Date.thromb [i])
    dt$Date.thromb [i]<-format(as.POSIXct(dt$Date.thromb [i], format=dateformat, tz="GMT"),dateformat)

   }
  dt$Onset<-as.POSIXct(dt$Onset, format="%Y-%m-%d %H:%M")
  dt$Arrival<-as.POSIXct(dt$Arrival, format="%Y-%m-%d %H:%M")
  dt$Arriv.Strkunit<-as.POSIXct(dt$Arriv.Strkunit, format="%Y-%m-%d %H:%M")
  dt$Date.Img<-as.POSIXct(dt$Date.Img, format="%Y-%m-%d %H:%M")
  dt$Date.thromb<-as.POSIXct(dt$Date.thromb, format="%Y-%m-%d %H:%M")

})



