# #creat a vector
# x = c(10.4, 5.6, 3.1, 6.4, 21.7)
#  
# #Plus & assing values to the variable "y"
# y=x+1
# 
# #Use the function "length
# length(x)
# z=length(x)
# 
# #create a sequence
# a=1:100b
# 
# #create ood numbers
# b=seq(1,100,by=2)
# 
# #create replicated value
# A=rep(2,10)
# 
# #create a vector
# z = c(1:3,NA)
#  ind = is.na(z)
# 
# #Find a vector of the vector
# b[30]
# #Find vector of the vector
# b[30:40]
# 
# #create an array
# x = array(1:20, dim=c(4,5))
# 
# #call row 2 and column 3
# x[2,3]
# 
# #select row 2 to 3 and column 3 to 5
# d=x[2:3,3:5]
# 
# #select all column of row 2
# x[2,]
# 
# nam=read.csv("D:/database/AirQuality.csv")
# 
# #select row 1 to 5 
# nam[1:5,]
# 
# #select row 1 to 4 column 1 to 8
# nam[1:4,1:8]
# 
# nam2=nam[,1:8]
# 
# read.csv("D:/database/AirQuality.csv")
# 
# #change directory
# setwd("C:/DaTa")

Air=read.csv("D:/database/AirQuality.csv")
#Air[1:5,]

# PM10 = Air[,7]
# 
# PM10 = Air$PM10
# 
# #fined numbers of days recorded
# length(PM10)
# 
# PM10_G50 = Air[Air$PM10>50,]
# #find dimension
# dim(PM10_G50)
# 
# PM10_G100 = Air[Air$PM10>100,]
# #find dimension
# dim(PM10_G100)
# 
# #test missing values
# is.na(PM10)
# 
# MissingData = Air[is.na(PM10)==TRUE,]
# dim(MissingData)
# 
# #remove missingvalues
# NoMissing = Air[is.na(PM10)==FALSE,]
# dim(NoMissing)
# 
#rm(list=ls())

PMG50 = Air[Air$PM10>=50,]
dim(PMG50)

PM50_100 = PMG50[PMG50$PM10<=100,]
summary(PM50_100)
summary(PM50_100$PM10)

#remove missing values
PM50_100_NoNA = PM50_100[is.na(PM50_100$PM10)==FALSE,]
summary(PM50_100_NoNA$PM10)

#Use logical test "and" &
PM50_100 = Air[Air$PM10>=50 & Air$PM10<=100,]
summary(PM50_100)

#Use logical testb "or" |
PM50_100 = Air[Air$PM10>=50 | Air$PM10<=100,]

A = Air[Air$PM10>=50 & Air$PM10<=100 & Air$SO2>10,]

B = Air[Air$PM10>=50 & Air$SO2>10,]
C = Air[Air$PM10>=50 | Air$SO2>10,]

Air=read.csv("D:/database/AirQuality.csv")

PM10_G100_SO2_G10  = Air[Air$PM10>100,] air$SO2<10]
PM10_G100_SO2_G10[,1]
PM10_G100_SO2_G10$Date
newdata = data.frame(PM10_G100_SO2_10$Date,PM10_G100_SO2_G10$PM10,PM10_G100_SO2_G10$SO2)   
newdata2 = newdata[14:877,]

#Date
Date <-as.Date(Air$Date = "%n/%d/%y")
Date[1:10]

#Add Month
Air$Month = format(Date, "%b%y") 

#Nomissing$Month<-format(Date,"%b%y")
#find mean in each month
ByMonth = tapply(Air$SO2,Air$Month,mean,na.rm=T)


#Add year
Air$Year = format(Date, "%y")
#find mean in each year
ByYear = tapply(Air$SO2,Air$Year,mean,na.rm=T)