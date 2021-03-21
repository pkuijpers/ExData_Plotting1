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
power <- read_csv2(filename,
		   col_types = "ctnnnnnnn",
		   na = "?") %>%
	filter(!is.na(Voltage)) %>%
	mutate(Date = as.Date(Date, "%d/%m/%Y"))

		