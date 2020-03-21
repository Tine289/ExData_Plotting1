## Exploratory Data Analysis - Course Project 1


Data <- read.table("C:/Users/tsc029/Desktop/R/exdata_data_household_power_consumption/household_power_consumption.txt", 
                   header = TRUE, na.strings = "?", sep = ";")

Data2 <- Data[Data$Date %in% c("1/2/2007","2/2/2007"),]
Time <-strptime(paste(Data2$Date, Data2$Time, sep=" ", LANG = "en"),"%d/%m/%Y %H:%M:%S")
finalData <- cbind(Time, Data2)


## Plot 1
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(finalData$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()
