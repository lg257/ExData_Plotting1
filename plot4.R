#4 plots
subdata$Global_reactive_power<-as.numeric(as.character(subdata$Global_reactive_power))
par(mfrow=c(2,2))
with(subdata,{
  plot(DateTime,Global_active_power,type="l",ylab="Global Active Power",xlab="")
  plot(DateTime,Voltage,type="l")
  plot(DateTime,Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
  points(DateTime,Sub_metering_2,type="l",col="red")
  points(DateTime,Sub_metering_3,type="l",col="blue")
  legend("topright",lty=1,bty='n',col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  plot(DateTime,Global_reactive_power,type="l")
})
dev.copy(png,file="plot4.png")
dev.off()