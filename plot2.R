# plot1.R
# This is for week 1 assignment of Exploratory Data Analysis
# 
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
source("downloadFile.R")

householdPower <-  getHousehold2007Data()

png("plot2.png")

## Graphic 2
plot( householdPower$DateTime ,householdPower$Global_active_power, type="l" ,
      ylab= "Global Active Power (killowatts)")

dev.off()
