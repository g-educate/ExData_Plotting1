data <- read.table("dataset/household_power_consumption.txt", sep = ";", header = TRUE)

d <- as.Date(c("2007-02-01", "2007-02-02"), format = "%Y-%m-%d")

data_subset <- subset(data, as.Date(data$Date, format = "%d/%m/%Y") >= d[1] & as.Date(data$Date, format = "%d/%m/%Y") <= d[2])
data_subset <- cbind(data_subset, paste(data_subset$Date, data_subset$Time, sep = " "))

write.table(
    data_subset,
    file = "dataset/household_power_consumption_subset.txt",
    quote = FALSE,
    sep = ";"
  )
