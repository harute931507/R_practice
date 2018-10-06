?hist
example(hist)

height <- rnorm(1000, 160, 10)
hinfo <- hist(height)
hinfo

hist(height, breaks=30)
hist(height, breaks=5)
m1 <- min(height)
m2 <- max(height)
hist(height, breaks=seq(m1-1, m2+1, len=10))

hist(height, freq=FALSE)
lines(density(height))
abline(v=mean(height), col="red")
abline(v=160+sd(height), col="blue")
abline(v=160-sd(height), col="blue")

hist(height, freq=FALSE)
curve(dnorm(x, mean(height), sd(height)),
      add=TRUE, col="darkred", lwd=2)
