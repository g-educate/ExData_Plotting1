data4 <- read.table("dataset/household_power_consumption_subset.txt", sep = ";", header = TRUE)

png(filename = "plot4.png", height = 480, width = 480)

par(mfrow = c(2, 2))

plot(data2$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

plot(data2$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(data4$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(data3$Sub_metering_2, type = "l", col = "red")
lines(data3$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"))

plot(data2$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_Power")

# dev.copy(png, file = "plot4.png")
dev.off()
