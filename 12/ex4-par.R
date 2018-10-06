# pch: point types
# 25 pch(s) in one row
plot(rep(1, 25), pch = 1:25, ann=FALSE, axes=FALSE, cex=1.2)
plot(rep(1, 25), pch = 1:25, ann=FALSE, axes=FALSE,
     bg="orange", col="red", cex=1.2)
text(1:25, 0.95, labels = 1:25, cex=0.7)

# 5x5 pch matrix
op <- par(pty="s")
plot(0:6, 0:6, type="n", ann=FALSE, axes=FALSE,
     xaxs="i", yaxs="i")
box("plot")
grid(6, 6, lty=1)     
points(rep(1:5, 5), rep(5:1, each=5), pch=1:25, bg="orange",
       col="red", cex=1.5)
par(op)

# lty: line types
# 0=blank(invisible lines), 1=solid(default), 2=dashed
# 3=dotted, 4=dotdash, 5=longdash, 6=twodash
# lwd: line width, defaulting to 1
op <- par(mar=c(5, 6, 4, 4))
lab <- paste(0:6, c("blank","solid","dashed", "dotted",
                    "dotdash","longdash","twodash"), sep="-")
plot(rep(1,5), type="n", ann=FALSE, axes=FALSE, ylim=c(0, 6))
axis(2, 0:6, lab, tick=FALSE, las=1, cex.axis=0.9)
# method1
abline(h=0, lty=0, lwd=1, col=0)
abline(h=1, lty=1, lwd=2, col=1)
abline(h=2, lty=2, lwd=3, col=2)
abline(h=3, lty=3, lwd=1, col=3)
abline(h=4, lty=4, lwd=2, col=4)
abline(h=5, lty=5, lwd=3, col=5)
abline(h=6, lty=6, lwd=1, col=6)
# box()
# box("figure", col="red")

# method2
for (i in 0:6) abline(h=i, lty=i, lwd=i%%3+1, col=i)
par(op)

# bty: box type
x <- 1:5
y <- 1:5
op <- par(no.readonly=TRUE)
par(mfrow=c(3, 2), mai=rep(0.4, 4), col.main="red")
plot(x, y, bty="o", main="bty=\"o\"", xlab="", ylab="")
plot(x, y, bty="l", main="bty=\"l\"", xlab="", ylab="")
plot(x, y, bty="7", main="bty=\"7\"", xlab="", ylab="")
plot(x, y, bty="c", main="bty=\"c\"", xlab="", ylab="")
plot(x, y, bty="u", main="bty=\"u\"", xlab="", ylab="")
plot(x, y, bty="]", main="bty=\"]\"", xlab="", ylab="")
par(op)

# lab; c(x, y, len), len is unimplemented in R.
# tck, tcl
op <- par(no.readonly=TRUE)
par(mfrow=c(3, 3), mai=rep(0.3, 4), cex=0.7, 
    mgp=c(1, 0.5, 0), col.main="red")
plot(1:10, main="lab=c(5, 5, 7)", xlab="", ylab="")
plot(1:10, lab=c(2, 2, 0), main="lab=c(2, 2, 0)", 
     xlab="", ylab="")
plot(1:10, lab=c(10, 1, 0), main="lab=c(10, 1, 0)",
     xlab="", ylab="")
plot(1:10, tck=0.03, main="tck=0.03", xlab="", ylab="")
plot(1:10, tck=-0.03, main="tck=-0.03", xlab="", ylab="")
plot(1:10, tck=0.6, main="tck=0.6", xlab="", ylab="")
plot(1:10, tck=1, main="tck=1", xlab="", ylab="")
plot(1:10, tcl=-0.5, main="tcl=-0.5", xlab="", ylab="") # default
plot(1:10, tcl=1, main="tcl=1", xlab="", ylab="")
par(op)

# mgp: the margin line for the axis title, axis labels and
#      axis line
op <- par(no.readonly=TRUE)
par(mfcol=c(1, 2), col.main="red")
plot(1:10, main="mgp=c(3, 1, 0)", xlab="xlab", ylab="ylab")
plot(1:10, mgp=c(1.5, 0.5, 0), main="mgp=c(2, 0.5, 0)", 
     xlab="xlab", ylab="ylab")
par(op)

# las: numeric in {0,1,2,3}; the style of axis labels
# 0: always parallel to the axis [default]
# 1: always horizontal
# 2: always perpendicular to the axis
# 3: always vertical
op <- par(no.readonly=TRUE)
par(mfrow=c(2, 2))
colset <- colors()[c(19, 37, 43, 87, 103, 382)]
x <- sample(seq(-20, 20, 3), 6)
# method1
barplot(x,names=LETTERS[1:6], ylim=c(-20, 20), las=0,
        col=colset, main="las=0")
barplot(x,names=LETTERS[1:6], ylim=c(-20, 20), las=1,
        col=colset, main="las=1")
barplot(x,names=LETTERS[1:6], ylim=c(-20, 20), las=2,
        col=colset, main="las=2")
barplot(x,names=LETTERS[1:6], ylim=c(-20, 20), las=3,
        col=colset, main="las=3")
# method2
for(i in c(0:3)) {
  x <- sample(seq(-20, 20, 3), 6)
  barplot(x,names=LETTERS[1:6], ylim=c(-20, 20), las=i,
          col=colset, main=paste("las=", i, sep=""))
}
par(op)
