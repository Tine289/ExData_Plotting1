## Exploratory Data Analysis - Course Project 1


Data <- read.table("C:/Users/tsc029/Desktop/R/exdata_data_household_power_consumption/household_power_consumption.txt", 
                   header = TRUE, na.strings = "?", sep = ";")

Data2 <- Data[Data$Date %in% c("1/2/2007","2/2/2007"),]
Time <-strptime(paste(Data2$Date, Data2$Time, sep=" ", LANG = "en"),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(Time, Data2)



## Plot 3
png(filename = "plot3.png", width = 480, height = 480, units = "px")
plot(finalData$Time, finalData$Sub_metering_1, xlab = "" , ylab = "Energy sub metering", type = "l", col = c("black"))
lines(finalData$Time, finalData$Sub_metering_2, xlab = "" , type = "l", col = "red")
lines(finalData$Time, finalData$Sub_metering_3, xlab = "" , type = "l", col = "blue")
legend("topright", col =  c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = "solid")
dev.off()