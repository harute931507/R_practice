?plot
example(plot)

x <- c(1:5)
y <- c(1:5)
op <- par(mfrow = c(2, 4))
# method1
plot(x, y, type="p", main=paste("type: p"), col="red")
plot(x, y, type="l", main=paste("type: l"), col="red")
plot(x, y, type="b", main=paste("type: b"), col="red")
plot(x, y, type="c", main=paste("type: c"), col="red")
plot(x, y, type="o", main=paste("type: o"), col="red")
plot(x, y, type="h", main=paste("type: h"), col="red")
plot(x, y, type="s", main=paste("type: s"), col="red")
plot(x, y, type="S", main=paste("type: S"), col="red")

# method2
for(i in c("p", "l", "b", "c", "o", "h", "s", "S")) {
  plot(x, y, type=i, main=paste("type: ", i), col="red")
}

# method3
plottype <- c("p", "l", "b", "c", "o", "h", "s", "S")
p <- function(t) {
  plot(x, y, type=t, main=paste("type: ", t), col="red")
}
sapply(plottype, p, simplify=TRUE)
par(op)

# asp
plot(1:10, 1:10, asp=0.5)
plot(1:10, 1:10, asp=1)
plot(1:10, 1:10, asp=1.5)
plot(1:10, 1:10, asp=2)
