dataPath <- "./household_power_consumption.txt"

source("dataLoader.R")

ensureDataDownloaded();
data <- loadData();

png(file = "plot2.png", width = 480, height = 480, units = "px");
plot(data$DateTime, 
     data$Global_active_power, 
     ylab = "Global Active Power (kilowatts)",
     type = "l",
     xlab = "");
dev.off();
