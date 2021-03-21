## Data is read in script `load_data.R`

png("plot1.png")

hist(period$Global_active_power,
     col = "red", 
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")

dev.off()
