# plot1.R
# This is for week 1 assignment of Exploratory Data Analysis
# 
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

source("downloadFile.R")

household2007 <-  getHousehold2007Data()

png("plot3.png")

## Graphic 3
with(household2007 , plot( DateTime ,Sub_metering_1, type="l" ))
with(household2007 , lines( DateTime ,Sub_metering_2, type="l" , col="red"))
with(household2007 , lines( DateTime ,Sub_metering_3, type="l", col="blue" ))
legend("topright",c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lty=c(1,1),lwd=c(2.5,2.5),col=c("black","blue","red"))

dev.off()
