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

plot(subdat$datecombined, subdat$Global_active_power, 
     xlab = "", 
     ylab = "Global Activer Power (kilowatts)",
     type = "l")

