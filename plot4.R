data4 <- read.table("dataset/household_power_consumption_subset.txt", sep = ";", header = TRUE)

png(filename = "plot4.png", height = 480, width = 480)

par(mfrow = c(2, 2))

plot(strptime(data3$datetime, format = "%d/%m/%Y %H:%M:%S"), data2$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

plot(strptime(data3$datetime, format = "%d/%m/%Y %H:%M:%S"), data2$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(strptime(data3$datetime, format = "%d/%m/%Y %H:%M:%S"), data4$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(strptime(data3$datetime, format = "%d/%m/%Y %H:%M:%S"), data3$Sub_metering_2, type = "l", col = "red")
lines(strptime(data3$datetime, format = "%d/%m/%Y %H:%M:%S"), data3$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"))

plot(strptime(data3$datetime, format = "%d/%m/%Y %H:%M:%S"), data2$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_Power")

# dev.copy(png, file = "plot4.png")
dev.off()
