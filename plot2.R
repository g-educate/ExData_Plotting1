data2 <- read.table("dataset/household_power_consumption_subset.txt", sep = ";", header = TRUE)

png(filename = "plot2.png", height = 480, width = 480)

plot(data2$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

# dev.copy(png, file = "plot2.png")
dev.off()
