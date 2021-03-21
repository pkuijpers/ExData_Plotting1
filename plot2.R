## Data is read in script `load_data.R`

png("plot2.png")

plot(period$Global_active_power ~ period$datetime,
     type="l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

dev.off()