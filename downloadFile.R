# This will getting data that require for week 1 assignment. 
# Here is the steps
#   1. download data and unzip the file not already exist in loocal
#   2. parsing the data
#   3. getting only 2007-02-01 and 2007-02-02 data as requested in the assignment
library(readr)

getHousehold2007Data <- function(){
  
  houseHoldDataFileName = "household_power_consumption.txt"
  
  if(!file.exists(houseHoldDataFileName)){
     # download and unzip file
    urlpath = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    destFile="household_power_consumption.zip"

    # http://stackoverflow.com/questions/3053833/using-r-to-download-zipped-data-file-extract-and-import-data
    
    download.file(urlpath,destFile)
    unzip(destFile, houseHoldDataFileName)
    
  }
  
  householdPower <- read_delim("household_power_consumption.txt",delim = ";",
                               col_types = "ccddddddd",na = c("NA"))
  household2007 <- householdPower[householdPower$Date=="1/2/2007" |householdPower$Date=="2/2/2007" ,]
  
  household2007$DateTime = paste(household2007$Date, household2007$Time, sep=" ")
  
  household2007$DateTime <- strptime(household2007$DateTime, "%d/%m/%Y %H:%M:%S")
  
  household2007
  
}
