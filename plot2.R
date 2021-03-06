base <- "./expdata/household_power_consumption.txt"
org <- read.table(base, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetorg <- org[org$Date %in% c("1/2/2007","2/2/2007") ,]

##subsetting the Data
datetime <- strptime(paste(subsetorg$Date, subsetorg$Time, sep=" "), "%d/%m/%Y %H:%M:%S")  
 globalActivePower <- as.numeric(subsetorg$Global_active_power) 
 png("plot2.png", width=480, height=480) 
 plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)") 
 dev.off() 

