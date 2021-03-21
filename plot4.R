## Data is read in script `load_data.R`

png("plot4.png")

par(mfcol = c(2,2))

# First plot
plot(period$Global_active_power ~ period$datetime,
     type="l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

# Second  plot
plot(period$Sub_metering_1 ~ period$datetime,
     type="n",
     xlab = "",
     ylab = "Energy sub metering")
points(period$Sub_metering_1 ~ period$datetime,
       type = "l")
points(period$Sub_metering_2 ~ period$datetime,
       type = "l",
       col = "red")
points(period$Sub_metering_3 ~ period$datetime,
       type = "l",
       col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1,
       col = c("black", "red", "blue"),
       bty = "n")

# Third plot
plot(Voltage ~ datetime,
     type="l",
     data = period)

# Fourth plot
plot(Global_reactive_power ~ datetime,
     type="l",
     data = period)

dev.off()