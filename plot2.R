dataPath <- "./household_power_consumption.txt"

source("dataLoader.R")

#load the data
ensureDataDownloaded();
data <- loadData();

#plot Global_active_power by DateTime
png(file = "plot2.png", width = 480, height = 480, units = "px");
plot(data$DateTime, 
     data$Global_active_power, 
     ylab = "Global Active Power (kilowatts)",
     type = "l",
     xlab = "");
dev.off();
