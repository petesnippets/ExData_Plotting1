## Downloads the data if it does not exist
ensureDataDownloaded <- function(){
    if (!file.exists(dataPath)){
        message("downloading data")
        download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile = "./data.zip")
        unzip( "./data.zip")
        file.remove("./data.zip")
    }
    else{
        message("data already downloaded")
    }
}

loadData <- function(){
    dat <- read.csv(dataPath, sep = ";", skip = 66637, nrows = 2880, 
                    header = FALSE, na.strings = c("?"), stringsAsFactors = FALSE)
    names(dat) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
    dat$DateTime <- as.POSIXct(paste(dat$Date, dat$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S")
    dat
}