data3 <- read.table("dataset/household_power_consumption_subset.txt", sep = ";", header = TRUE)

png(filename = "plot3.png", height = 480, width = 480)

plot(data3$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(data3$Sub_metering_2, type = "l", col = "red")
lines(data3$Sub_metering_3, type = "l", col = "blue")

legend("topright", lty = 1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"))

# dev.copy(png, file = "plot33.png")
dev.off()
