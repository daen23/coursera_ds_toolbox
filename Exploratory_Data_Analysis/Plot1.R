library("data.table")

#Set working directory
setwd("~/Desktop/DSCoursera/Exploratory_Data_Analysis/Project1")

#Read in data from file
powerDT <- data.table::fread(input = "household_power_consumption.txt", na.strings="?")

#Stop scientific notion on histograms
powerDT[, Global_active_power := lapply(.SD, as.numeric), .SDcols = c("Global_active_power")]

#Change date type on date column
powerDT[, Date := lapply(.SD, as.Date, "%d/%m/%Y"), .SDcols = c("Date")]

#Filter appropriate dates (2007-02-01 to 2007-02-02)
powerDT <- powerDT[(Date >= "2007-02-01") & (Date <= "2007-02-02")]

#Create placeholder for plots
png("Plot1.png", width=480, height=480)

#Plot1
hist(powerDT[, Global_active_power], main="Global Active Power"
     , xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.off()