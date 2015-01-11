#transform data into numeric
subdata$Sub_metering_1<-as.numeric(as.character(subdata$Sub_metering_1))
subdata$Sub_metering_2<-as.numeric(as.character(subdata$Sub_metering_2))
subdata$Sub_metering_3<-as.numeric(as.character(subdata$Sub_metering_3))
plot(subdata$DateTime,subdata$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
points(subdata$DateTime,subdata$Sub_metering_2,type="l",col="red") #add another element into the plot
points(subdata$DateTime,subdata$Sub_metering_3,type="l",col="blue")
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.copy(png,file="plot3.png")
dev.off()  