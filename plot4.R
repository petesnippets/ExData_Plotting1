dataPath <- "./household_power_consumption.txt"

source("dataLoader.R")

ensureDataDownloaded();
data <- loadData();
png(file = "plot4.png", width = 480, height = 480, units = "px");
par(mfrow=c(2,2))
plot(data$DateTime, 
     data$Global_active_power, 
     ylab = "Global Active Power",
     type = "l",
     xlab = "");
plot(data$DateTime, 
     data$Voltage, 
     ylab = "Voltage",
     type = "l",
     xlab = "datetime");

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

plot(data$DateTime, 
     data$Global_reactive_power,
     xlab = "datetime",
     type = "l",
     ylab = "Global_reactive_power");
dev.off();


