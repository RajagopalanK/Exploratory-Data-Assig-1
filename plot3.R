# Matt Henn
# Exploratory Data Analysis
# Coursera

# get the data

dat <- household_power_consumption

# subset the dates of interest

subdat <- subset(dat, dat$Date == "1/2/2007" | dat$Date == "2/2/2007")
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
       y.intersp = 0.75
       )
