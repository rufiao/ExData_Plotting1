
source("load_data.R")

dpwr <- household_power_consumption_data()

# set up plot device
png(filename = "plot1.png", width = 504, height = 504, units = "px", bg = "white")

# plot graph
hist(dpwr$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

# close device and save to file
dev.off()
