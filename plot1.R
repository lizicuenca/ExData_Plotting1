# plot1.R
# This is for week 1 assignment of Exploratory Data Analysis
# 
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
source("downloadFile.R")
household2007 <-  getHousehold2007Data()

png("plot1.png")

## Graphic 1 
hist(household2007$Global_active_power, col="red",
     main="Global Active Power", 
     xlab= "Global Active Power (killowatts)")

dev.off()

