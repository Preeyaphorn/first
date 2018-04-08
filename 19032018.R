
#Mean Temp
Temp=read.csv("C:/Database/Example_Temp_Humidity.csv")

TempData=data.frame(Temp$Temperature...C..c.1,Temp$Date,Temp$Time)

Date <-as.Date(Temp$Date,format = "%m/%d/%y")

Temp$Date =format(Date,"%b%y")
Tempmean = tapply(Temp$Temperature...C..c.1,Temp$Date,mean)

#Mean RH
TempData_RH=data.frame(Temp$RH.....c.1.2,Temp$Date)
Tempmean_RH = tapply(Temp$RH.....c.1.2,Temp$Date,mean)

#Min Temp
TempMin=tapply(Temp$Temperature...C..c.1,Temp$Date,min)
TempMin_RH = tapply(Temp$RH.....c.1.2,Temp$Date,min)

#Max
TempMax_RH = tapply(Temp$RH.....c.1.2,Temp$Date,max)
TempMax=tapply(Temp$Temperature...C..c.1,Temp$Date,max)

#Find min and max
max(Tempmean,na.rm=T)
min(Tempmean,na.rm=T)

max(Tempmean_RH,na.rm=T)
min(Tempmean_RH,na.rm=T)

Temp$Date =format(Date,"%a%b%y")
Tempdaymean = tapply(Temp$Temperature...C..c.1,Temp$Date,mean)

Temp$Date =format(Date,"%a%b%y")
RHdaymean = tapply(Temp$RH.....c.1.2,Temp$Date,mean)
