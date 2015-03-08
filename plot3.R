# Matt Henn
# Exploratory Data Analysis
# Coursera
# March 8, 2015

# get the data. Note that the directory will have to be changed
# to the location the data downloaded to locally in order for
# the script to work. The csv is on the github repo. 

trimmed.data <- read.csv("~/current classes/coursera dssp/exploratory data/trimmed data")
dat <- trimmed.data

# subset the dates of interest
library(lubridate)
subdat$datecombined <- dmy(subdat$Date) + hms(subdat$Time)


# create the plots

plot(subdat$datecombined, subdat$Sub_metering_1, 
     xlab = "", 
     ylab = "Energy sub metering",
     type = "l")
lines(subdat$datecombined, subdat$Sub_metering_2, col = "red")
lines(subdat$datecombined, subdat$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"),
       lty = c(1,1,1),
       cex = 0.75,
       #x.intersp = 0.5,
       y.intersp = 0.8
       )
