data<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
subdata<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",] #transform into the required dataset
#create a histogram
hist(as.numeric(as.character(subdata$Global_active_power)),xlab="Global Active Power(kilowatts)",main="Global Active Power",col="red")
dev.copy(png,file="plot1.png")
dev.off()    # Close the current graphics device