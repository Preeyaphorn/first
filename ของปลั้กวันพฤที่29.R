rm(list=ls())
Air=read.csv("C:/Database/AirQuality.csv")
Airyears = Air[1:2187,]

airdata = data.frame(Air$Date,Air$SO2)
Date <-as.Date(Air$Date,format = "%m/%d/%y")
Air$Date =format(Date,"%b")
Date[1:2879]

so2mean = tapply(Air$SO2,Air$Date,mean,na.rm=T)
so2min = tapply(Air$SO2,Air$Date,min,na.rm=T)
so2max = tapply(Air$SO2,Air$Date,max,na.rm=T)


so2mean&so2min&so2max


so2mean$Date

x=airdata$Air.Date
y=airdata$Air.SO2
plot(x,y,y(im = c(0,40)))
lines(x,y,y(im = c(0,40))) 

lines()plot()

lines(so2mean,type = "l")
lines(Date,so2mean,col="black",type = "h")
warning()
#????????????????????????????????????ggplot 
library(ggplot2)


View(so2mean)
mt= matrix(so2mean)
mtmin = matrix(so2min)
mtmax = matrix(so2max)

df = data.frame(rownames(so2mean),meanpermonth=so2mean,minpermonth=so2min,maxpermonth=so2max)

d = cbind(months = rownames(df),df)
rownames(d)=NULL

yy = d$meanpermonth
yymin = d$minpermonth
yymax = d$maxpermonth
xx = d$months
plot(xx,yy,type = "p")
plot(xx,yymin)
plot(xx,yymax)
lines(xx,yy,type="l")

colnames(df)= c("Month","Mean","Min","Max")
#plot data
plot(df$Month,rep(-5,12),type = "T",ylim = c(0,max(df$Max)),main = "SO2 by month in 10 years")
lines(df$Month,df$Mean)
lines(df$Month,df$Max,col="green",lty=2)
lines(df$Month,df$Min,col="Brown")

Average = sum(Air$SO2,na.rm=T)/nrow(Air[is.na(Air$SO2)==F,])
mean(Air$SO2,na.rm = T)
length(Air$SO2[is.na(Air$SO2)==F])
dbh=10
BA=pi*(dbh/2)^2

plug = function(RP){
  BA = pi*(RP/2)^2
  return(BA)}
plug(10)


RM = function(MM){
  mean_cal = (sum(MM)/length(MM))
  return(mean_cal)}
RM
RM(5:10)

rm(list=ls())
Air=read.csv("D:/data/AirQuality.csv")
Airyears = Air[1:2187,]

airdata = data.frame(Air$Date,Air$SO2)
Date <-as.Date(Air$Date,format = "%m/%d/%y")
Air$Date =format(Date,"%b")
Date[1:2879]

so2mean = tapply(Air$SO2,Air$Date,mean,na.rm=T)
so2min = tapply(Air$SO2,Air$Date,min,na.rm=T)
so2max = tapply(Air$SO2,Air$Date,max,na.rm=T)


so2mean&so2min&so2max


so2mean$Date

x=airdata$Air.Date
y=airdata$Air.SO2
plot(x,y,y(im = c(0,40)))
lines(x,y,y(im = c(0,40))) 

lines()plot()

lines(so2mean,type = "l")
lines(Date,so2mean,col="black",type = "h")
warning()
#????????????????????????????????????ggplot 
library(ggplot2)


View(so2mean)
mt= matrix(so2mean)
mtmin = matrix(so2min)
mtmax = matrix(so2max)

df = data.frame(rownames(so2mean),meanpermonth=so2mean,minpermonth=so2min,maxpermonth=so2max)

d = cbind(months = rownames(df),df)
rownames(d)=NULL

yy = d$meanpermonth
yymin = d$minpermonth
yymax = d$maxpermonth
xx = d$months
plot(xx,yy,type = "p")
plot(xx,yymin)
plot(xx,yymax)
lines(xx,yy,type="l")

colnames(df)= c("Month","Mean","Min","Max")
#plot data
plot(df$Month,rep(-5,12),type = "T",ylim = c(0,max(df$Max)),main = "SO2 by month in 10 years")
lines(df$Month,df$Mean)
lines(df$Month,df$Max,col="green",lty=2)
lines(df$Month,df$Min,col="Brown")

Average = sum(Air$SO2,na.rm=T)/nrow(Air[is.na(Air$SO2)==F,])
mean(Air$SO2,na.rm = T)
length(Air$SO2[is.na(Air$SO2)==F])
dbh=10
BA=pi*(dbh/2)^2

plug = function(RP){
  BA = pi*(RP/2)^2
  return(BA)}
plug(10)


RM = function(MM){
  mean_cal = (sum(MM)/length(MM))
  return(mean_cal)}
RM
RM(5:10)

Dat= c(3:5,NA,6)
rm_NA_mean = function(Dat){
  Dat2 = Dat[is.na(Dat)==F]
  average = mean(Dat2)
  maxval = max(Dat2)
  minval = min(Dat2)
  Result = c(average,maxval,minval)
  return(Result)
}
rm_NA_mean(Air$SO2)

#create a scatter plot
Pollut_Plot = function(Dat1,Dat2){
  #x11()
  png(filename = "D:/Test_Plot.png",width = 600,height = 500,)  
  plot(Dat1,Dat2,col="blue",xlab = name1,ylab = name2)
  dev.off()
  
}
#Apply the function
Pollut_Plot(Air$SO2,Air$NO2,"SO2","NO2")

    #Date <-as.Date(Air$Date,format = "%m/%d/%y")
#Air$Date =format(Date,"%b")
#Date[1]