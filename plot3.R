dataPath <- "./household_power_consumption.txt"

source("dataLoader.R")

ensureDataDownloaded();
data <- loadData();

png(file = "plot3.png", width = 480, height = 480, units = "px");
plot(data$DateTime, 
     data$Sub_metering_1, 
     ylab = "Energy sub metering",
     type = "l",
     xlab = ""
);
points(data$DateTime, 
     data$Sub_metering_2, 
     type = "l",
     col = "red"
);
points(data$DateTime, 
       data$Sub_metering_3, 
       type = "l",
       col = "blue"
);
legend("topright", col = c("black", "blue", "red"),
       legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty = 1)
dev.off();