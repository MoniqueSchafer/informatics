
sunlight = read.table("sun.txt", header=T)
par(mar=c(5,6,4,2))
boxplot(sunlight$Kdown_direct~sunlight$month,
  ylab="Downwelling Solar kJ/m2/day",
  xlab="Month", col="orange")


climate = read.table("clim.txt", header=T)
par(mar=c(6,6,4,2))
boxplot(rain~month, data = climate, ylab="Precipitation", xlab="Month", col="blue")


clim_rain <- aggregate(rain~year, data = climate, FUN = sum)
