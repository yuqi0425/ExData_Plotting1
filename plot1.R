
my_data=read.table(file = "household_power_consumption.txt", header=T, sep=";", colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"), na.strings="?")

subset <- filter (my_data, data$Date %in% c("1/2/2007","2/2/2007"))

png("plot1.png", width = 480, height = 480)
hist(subset$Global_active_power, col="red", breaks=12, main="Global Active Power", xlab="Global Active Power (kilowatts)" )
dev.off()

