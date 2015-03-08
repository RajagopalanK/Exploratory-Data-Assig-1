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

par(mfrow=c(2,2))
plot(subdat$datecombined, subdat$Global_active_power, 
     xlab = "", 
     ylab = "Global Activer Power (kilowatts)",
     type = "l")
plot(subdat$datecombined, subdat$Voltage,
     xlab = "datetime",
     ylab = "Voltage",
     type = "l")
plot(subdat$datecombined, subdat$Sub_metering_1, 
     xlab = "", 
     ylab = "Energy sub metering",
     type = "l")
lines(subdat$datecombined, subdat$Sub_metering_2, col = "red")
lines(subdat$datecombined, subdat$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"),
       lty = c(1,1,1),
       cex = 0.3,
       xjust = 1,
       y.intersp = 0.75,
       bty = "n"
)
plot(subdat$datecombined, subdat$Global_reactive_power,
     xlab = "datetime",
     ylab = "Global_reactive_power",
     type = "l")







