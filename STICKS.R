#####################
# Sticks:visualizing protiens in R
# Andrew Symes
# iGEM 2020
#####################
library(plot3D)
library(animation)

GmakeIMG <- function(aCarx.df,aCary.df,aCarz.df){
  for(i in 1:length(aCarx.df[,1])){
    tempxx <- c()
    tempyy <- c()
    tempzz <- c()
    for(j in 1:length(aCarx.df[1,])){
      tempxx <- c(tempxx,as.numeric(c(aCarx.df[i,])[j]))
      tempyy <- c(tempyy,as.numeric(c(aCary.df[i,])[j]))
      tempzz <- c(tempzz,as.numeric(c(aCarz.df[i,])[j]))
      
    }
    scatter3D(tempxx,tempyy,tempzz,type="l")
    
  }
}

###########################################################
# For use just run this Function with XDATA equal to a dataframe of your X values for each alpha carbon.
# Then identically structured for YDATA and ZDATA.
# Also Change Your file name and destination on your device in the testGif.gif section
###########################################################

saveGIF(GmakeIMG( XDATA , YDATA , ZDATA),"~/Desktop/testGif.gif")




