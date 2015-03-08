# Matt Henn
# Exploratory Data Analysis
# Coursera


# get the data

dat <- household_power_consumption

# subset the dates of interest

subdat <- subset(dat, dat$Date == "1/2/2007" | dat$Date == "2/2/2007")
subdat$datecombined <- dmy(subdat$Date) + hms(subdat$Time)


# create the plots

hist(subdat$Global_active_power, col="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")


