cc <- read.csv("total-commits.dat", sep="")
plot(cc, main="Cumulative Commits")
fit <- lm(cc$commits ~ cc$week)
abline(fit, col="red", lwd=4)
cor(cc$week, cc$commits)
fit
