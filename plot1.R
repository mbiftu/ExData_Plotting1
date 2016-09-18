base <- "./expdata/household_power_consumption.txt"
org <- read.table(base, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetorg <- org[org$Date %in% c("1/2/2007","2/2/2007") ,]

##subsetting the Data
 globalActivePower <- as.numeric(subsetorg$Global_active_power) 
 png("plot1.png", width=480, height=480) 
 hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)") 
 dev.off() 
