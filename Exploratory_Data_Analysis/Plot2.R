library("data.table")

#Set working directory
setwd("~/Desktop/DSCoursera/Exploratory_Data_Analysis/Project1")

#Read in data from file
powerDT <- data.table::fread(input = "household_power_consumption.txt", na.strings="?")

#Stop scientific notation
powerDT[, Global_active_power := lapply(.SD, as.numeric), .SDcols = c("Global_active_power")]

#Changing date type
powerDT[, dateTime := as.POSIXct(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S")]

#Filter appropriate dates (2007-02-01 to 2007-02-02)
powerDT <- powerDT[(dateTime >= "2007-02-01") & (dateTime < "2007-02-03")]

#Create placeholder for plots
png("Plot2.png", width=480, height=480)

#Plot2
plot(x = powerDT[, dateTime], y = powerDT[, Global_active_power]
     , type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()