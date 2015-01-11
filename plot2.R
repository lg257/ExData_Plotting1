#merge date and time,then extract data using strptime
subdata$DateTime<-as.POSIXct(paste(subdata$Date,subdata$Time),format="%d/%m/%Y %H:%M:%S")
plot(subdata$DateTime,as.character(subdata$Global_active_power),type="l",ylab="Global Active Power(kilowatts)",xlab="")
dev.copy(png,file="plot2.png")
dev.off()  # Close the current graphics device