
sunlight = read.table("sun.txt", header=T)
par(mar=c(5,6,4,2))
boxplot(sunlight$Kdown_direct~sunlight$month,
  ylab="Downwelling Solar kJ/m2/day",
  xlab="Month", col="orange")

