#!/usr/local/bin/r
cc <- read.csv("total-commits.dat", sep="")
plot(cc, main="Cumulative Commits")
fit <- lm(cc$total ~ cc$week)
abline(fit, col="red", lwd=4)
cor(cc$week, cc$total)
fit
