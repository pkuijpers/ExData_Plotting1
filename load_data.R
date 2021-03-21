if (!dir.exists("./data")) {
	dir.create("./data")
}

filename <- "./data/dataset.zip"
if (!file.exists(filename)) {
	download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
		      destfile = filename)
}

library(readr)
library(dplyr)
library(lubridate)
power <- read_delim(filename,
		    delim = ";",
		   col_types = "ctnnnnnnn",
		   na = "?") %>%
	filter(!is.na(Voltage)) %>%
	mutate(Date = as.Date(Date, "%d/%m/%Y"),
		datetime = as.POSIXct(Date) 
			+ seconds(as.POSIXct(Time)))

## Select period for the plots
period <- filter(power, Date >= "2007-02-01" & Date <= "2007-02-02")
