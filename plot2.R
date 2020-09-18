plot2 <- function(){
  data <- read.table("household_power_consumption.txt",header=TRUE,sep=";")
  data$Date <- as.Date(data$Date,format="%d/%m/%Y")
  data$Global_active_power <- as.numeric(data$Global_active_power)
  data2 <- subset(data, Date > "2007-01-31" & Date < "2007-02-03")
  datetime <- as.POSIXct(paste(data2$Date,data2$Time),format="%Y-%m-%d %H:%M:%S")
  png(filename="plot2.png",width=480,height=480)
  plot(datetime,data2$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
  dev.off()
}