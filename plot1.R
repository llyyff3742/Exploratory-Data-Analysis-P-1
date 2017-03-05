hpc <- read.table("household_power_consumption.txt",header = T, sep = ";")
hpc$Date <- as.Date(hpc$Date, "%d/%m/%Y")
df <- hpc[hpc$Date=="2007-02-01"|hpc$Date=="2007-02-02",]
df$Global_active_power <- as.numeric(as.character(df$Global_active_power))

hist(df$Global_active_power,main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
