# This is for week 1 assignment of Exploratory Data Analysis
# 
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
source("downloadFile.R")

household2007 <-  getHousehold2007Data()

png("plot4.png")

par(mfrow=c(2,2))

## Graphic 4.1
plot( household2007$DateTime ,household2007$Global_active_power, type="l" ,
      ylab= "Global Active Power (killowatts)", xlab = "")


## Graphic 4.2
plot( household2007$DateTime ,household2007$Voltage, type="l" ,
      ylab= "Global Active Power (killowatts)")


## Graphic 3
with(household2007 , {
      plot( DateTime ,Sub_metering_1, type="l" )
      lines( DateTime ,Sub_metering_2, type="l" , col="red")
      lines( DateTime ,Sub_metering_3, type="l", col="blue" )
      legend("topright",c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lty=c(1,1),lwd=c(2.5,2.5),col=c("black","blue","red"))
      
})

## Graphic 4.4
with(household2007 , plot( DateTime ,Global_reactive_power, type="l" ))


dev.off()
