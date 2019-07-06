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
png("Plot3.png", width=480, height=480)

#Plot3
plot(powerDT[, dateTime], powerDT[, Sub_metering_1], type="l", xlab="", ylab="Energy sub metering")
lines(powerDT[, dateTime], powerDT[, Sub_metering_2],col="red")
lines(powerDT[, dateTime], powerDT[, Sub_metering_3],col="blue")
legend("topright", col=c("black","red","blue")
       , c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))

dev.off()