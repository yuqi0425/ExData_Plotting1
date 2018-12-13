
my_data=read.table(file = "household_power_consumption.txt", header=T, sep=";", colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"), na.strings="?")
View(my_data)

subset <- filter (my_data, data$Date %in% c("1/2/2007","2/2/2007"))

datetime <- strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot2.png", width=480, height=480)

plot(datetime, globalActivePower, xlab ="", ylab ="Global Active Power (kilowatts)", type="l")

dev.off()