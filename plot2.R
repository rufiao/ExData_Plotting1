
source("load_data.R")

dpwr <- household_power_consumption_data()

# set up plot device
png(filename = "plot2.png", width = 504, height = 504, units = "px", bg = "white")

# plot graph
plot(dpwr$DateTime, dpwr$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")

# close device and save to file
dev.off()