dataPath <- "./household_power_consumption.txt"

source("dataLoader.R")

#Load the data
ensureDataDownloaded();
data <- loadData();

#create histogram of Global_active_power
png(file = "plot1.png", width = 480, height = 480, units = "px")
hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()