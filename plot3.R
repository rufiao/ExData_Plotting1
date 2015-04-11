
source("load_data.R")

dpwr <- household_power_consumption_data()

# set up plot device
png(filename = "plot3.png", width = 504, height = 504, units = "px", bg = "white")

# plot graph
plot(dpwr$DateTime, dpwr$Sub_metering_1, xaxt=NULL, xlab = "", ylab = "Energy sub metering", type="n")
lines(dpwr$DateTime, dpwr$Sub_metering_1, col = "black", type = "S")
lines(dpwr$DateTime, dpwr$Sub_metering_2, col = "red", type = "S")
lines(dpwr$DateTime, dpwr$Sub_metering_3, col = "blue", type = "S")
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1, 1), lwd = c(1, 1, 1))

# close device and save to file
dev.off()