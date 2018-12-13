
my_data=read.table(file = "household_power_consumption.txt", header=T, sep=";", colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"), na.strings="?")

subset <- filter (my_data, data$Date %in% c("1/2/2007","2/2/2007"))

datetime <- strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot3.png", width=480, height=480)
with(subset, plot(datetime, Sub_metering_1, type = "l", col="black", ylab="Energy sub metering", xlab=""))

with(subset, points(datetime,Sub_metering_2, type = "l", col="red"))
with(subset, points(datetime,Sub_metering_3, type = "l", col="blue"))

legend("topright", col=c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),  lty=c(1,1,1))

dev.off()