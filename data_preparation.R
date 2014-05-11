data <- read.table("dataset/household_power_consumption.txt", sep = ";", header = TRUE)

d <- as.Date(c("2007-02-01", "2007-02-02"), format = "%Y-%m-%d")

write.table(
    subset(data, as.Date(data$Date, format = "%d/%m/%Y") >= d[1] & as.Date(data$Date, format = "%d/%m/%Y") <= d[2]),
    file = "dataset/household_power_consumption_subset.txt",
    quote = FALSE,
    sep = ";"
  )
