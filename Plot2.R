data<-read.delim(file="household_power_consumption.txt",sep=";",header=T)
sdata<-subset(data,as.Date(Date,format="%d/%m/%Y")>="2007-02-01" & as.Date(Date,format="%d/%m/%Y")<="2007-02-02")
sdata$DateTime <- paste(sdata$Date, sdata$Time, sep = " ")
sdata$DateTime <- strptime(sdata$DateTime, format = "%d/%m/%Y %H:%M:%S")
png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(sdata$DateTime, sdata$Global_active_power, type = "l", main = NULL, xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()