
library(data.table)

household_power_consumption_data <- function() {
  # download data file to current folder if necessary
  dataFile <- "household_power_consumption.txt"
  if (!file.exists(dataFile)) {
    fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    zipFile <- "household_power_consumption.zip"
    download.file(url=fileUrl, destfile=zipFile, method = "curl")  
    unzip(zipFile)
  }
  
  # read data file with all columns as text
  d <- fread(dataFile, na.strings="?", sep=";", colClasses="character")
  
  # convert data table to data frame, and filter the data for the dates we're interested on
  dpwr <- as.data.frame.matrix(d[d$Date=="1/2/2007" | d$Date=="2/2/2007"])
  
  # convert non-date columns to numeric
  for(i in c(3:9)) {dpwr[,i] <- as.numeric(as.character(dpwr[,i]))}
  
  # create DateTime by parsing the concatenated Date and Time columns
  dpwr$DateTime <- strptime(paste(dpwr$Date, dpwr$Time), format="%d/%m/%Y %H:%M:%S")
  
  return(dpwr)
}
