rm(list=ls())
Air=read.csv("C:/Users/User/Desktop/database/AirQuality.csv")

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
#ÁÑèÇæµÒÁ¤ÅÔ»ggplot 
library(ggplot2)


View(so2mean)
mt= matrix(so2mean)
mtmin = matrix(so2min)
mtmax = matrix(so2max)

df = data.frame(meanpermonth=so2mean,minpermonth=so2min,maxpermonth=so2max)

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
