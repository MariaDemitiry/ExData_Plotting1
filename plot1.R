plot1 <- function(){
  data <- read.table("household_power_consumption.txt",header=TRUE,sep=";")
  data$Date <- as.Date(data$Date,format="%d/%m/%Y")
  data$Global_active_power <- as.numeric(data$Global_active_power)
  data2 <- subset(data, Date > "2007-01-31" & Date < "2007-02-03")
  png(filename="plot1.png",width=480,height=480)
  hist(data2$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",xlim=c(0,6),breaks=12)
  dev.off()
}