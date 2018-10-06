# graphics device: screen, file
options("device")
?dev.off
?windows

dev.list()    # NULL
dev.cur()     # null device
par("din")    # R.O.; the device dimensions, in inches
dev.size()    # in nches, cm, or pixels
# inches by default, updated immediately when an on-screen
# device windows is re-sized

dev.new()    # NULL
dev.cur()    # RStudioGD 2
c1 <- colors()[c(33, 50, 132)]
plot(iris$Sepal.Length, iris$Sepal.Width, pch=16, col=c1[iris$Species])
with(iris, plot(Sepal.Length, Sepal.Width, pch=16, col=c1[Species]))
# the axis labels change

dev.new()    # NULL
dev.cur()    # windows 4
c2 <- colors()[c(92, 448, 565)]
with(iris, plot(Petal.Length, Petal.Width, pch=16, col=c2[Species]))

dev.new()    # NULL
dev.cur()    # windows 5
c3 <- colors()[c(470, 429, 621)]
with(iris, plot(Sepal.Length, Petal.Length, pch=16, col=c3[Species]))

dev.list()
dev.prev()
dev.set(2)
dev.cur()
slmean <- mean(iris$Sepal.Length)
abline(v=slmean, col="darkorange3", lwd=2)   # lwd: line width

dev.next()
dev.cur()
swmean <- mean(iris$Sepal.Width)
abline(h=swmean, col="darkorchid2", lwd=2)

dev.prev()
dev.cur()
dev.set(5)
abline(v=6, col="chartreuse", lwd=2)
dev.copy(which=4)
dev.cur()
# ?dev.copy
# copies the graphics contents of the current device to the 
# device specified by which
# the device copied to becomes the current device
dev.copy2pdf(file="device_pic.pdf")
# it's not necessary to close the device
dev.copy(png, file="device_pic.png")   # device_pic.png 0KB
# device needs to be closed
dev.off()
# shuts down the specified (by default the current) device
graphics.off()
# shuts down all open graphics devices

# output graphics
pdf(file="Sepal_L_vs_W.pdf")
with(iris, plot(Sepal.Length, Sepal.Width, pch=16, col=c1[Species]))
dev.off()
png(file="Sepal_L_vs_W-1.png")
with(iris, plot(Sepal.Length, Sepal.Width, pch=16, col=c1[Species]))
dev.off()
png(file="Sepal_L_vs_W-2.png", width=960, height=960)
with(iris, plot(Sepal.Length, Sepal.Width, pch=16, col=c1[Species]))
dev.off()
png(file="Sepal_L_vs_W-3.png", bg="transparent")
with(iris, plot(Sepal.Length, Sepal.Width, pch=16, col=c1[Species]))
dev.off()
