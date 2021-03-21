## Data is read in script `load_data.R`

png("plot3.png")

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
       col = c("black", "red", "blue"))

dev.off()