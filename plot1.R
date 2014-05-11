data1 <- read.table("dataset/household_power_consumption_subset.txt", sep = ";", header = TRUE)

hist(data1$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

dev.copy(png, file = "plot1.png")
dev.off()
