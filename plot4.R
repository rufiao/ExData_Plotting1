
source("load_data.R")

dpwr <- household_power_consumption_data()

# set up plot device
png(filename = "plot4.png", width = 504, height = 504, units = "px", bg = "white")
par(mfrow = c(2,2))

# global active power
plot(dpwr$DateTime, dpwr$Global_active_power, xlab = "", ylab = "Global Active Power", xaxt=NULL, type="n")
lines(dpwr$DateTime, dpwr$Global_active_power, type="S")

# voltage
plot(dpwr$DateTime, dpwr$Voltage, xlab = "datetime", ylab = "Voltage", xaxt=NULL, type="n")
lines(dpwr$DateTime, dpwr$Voltage, type="S")

# energy sub metering
plot(dpwr$DateTime, dpwr$Sub_metering_1, xlab = "", ylab = "Energy sub metering", xaxt=NULL, type="n")
lines(dpwr$DateTime, dpwr$Sub_metering_1, col = "black", type = "S")
lines(dpwr$DateTime, dpwr$Sub_metering_2, col = "red", type = "S")
lines(dpwr$DateTime, dpwr$Sub_metering_3, col = "blue", type = "S")
legend("topright", bty = "n", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1, 1), lwd = c(1, 1, 1))

# global reactive power
plot(dpwr$DateTime, dpwr$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", xaxt=NULL, type="n")
lines(dpwr$DateTime, dpwr$Global_reactive_power, type="S")

# close device and save to file
dev.off()
