?barplot
example(barplot)

# 資料來源: 註冊組>統計資料區>註冊組統計數據
# file: graduate.csv
ba <- c(2567, 2690, 2604, 2416, 2502)
names(ba) <- c(100:104)
ba
xlab <- "學年度"
ylab <- "人數"
tmain <- "NCKU歷屆畢業生人數"
tsub <- "資料來源:註冊組"

barplot(ba, xlab=xlab, ylab=ylab, ylim=c(0,3000))
title(main=tmain, sub=tsub) 

# 水平長條圖
barplot(ba, xlab=ylab, ylab=xlab, hori=TRUE)
barplot(ba, xlab=ylab, ylab=xlab, hori=TRUE, 
        las=1, xlim=c(0,3000))

# cex: magnifies the text and symbols
# cex.axis, cex.lab, cex.main, cex.sub
barplot(ba, xlab=xlab, ylab=ylab, ylim=c(0,3000), cex.axis=0.8)
barplot(ba, xlab=xlab, ylab=ylab, ylim=c(0,3000), 
        cex.axis=0.8, cex.names=0.8)

# col: specifies the default plotting color
# col.axis, col.lab, col.main, col.sub
barplot(ba, xlab=xlab, ylab=ylab, ylim=c(0,3000), col=3:7)
barplot(ba, xlab=xlab, ylab=ylab, 
        ylim=c(0,3000), col.lab="darkred")
barplot(ba, main=tmain, sub=tsub, xlab=xlab, ylab=ylab,
        ylim=c(0,3000), col=3:7, col.main="darkred",
        col.sub="brown", col.axis="darkgreen",
        col.lab="dodgerblue4")

# font: specifies which font to use for text
# 1: plain text, 2: bold, 3: italic, 4: bold italic
# font.axis, font.lab, font.main, font.sub
barplot(ba, main=tmain, xlab=xlab, ylab=ylab,
        font.main=4, font.lab=3)

# density: sets the density of shading lines(lines/inch)
barplot(ba, xlab=xlab, ylab=ylab, ylim=c(0,3000), density=10)
barplot(ba, xlab=xlab, ylab=ylab, col=3:7,
        ylim=c(0,3000), density=seq(10,60,10))

# text()用法
barplot(ba, ylim=c(0, 3500), las=1, xaxt="n")
axis(1, at=seq(0.75, 5.5, len=5), lab=names(ba)) # try and error
text(seq(0.75, 5.5, len=5), ba/2, ba, col="red") # try and error
# a better way:
(xcor <- barplot(ba, ylim=c(0, 3500), las=1, xaxt="n"))
axis(1, at=xcor, lab=names(ba))
text(xcor, ba/2, ba, col="red")

# beside=FALSE: stacked bars(default)
# beside=TRUE: juxtaposed bars
(grad<-read.csv("graduate.csv"))
# stacked bars of values accumulated
(pgrad <- grad[8:10, 2:4])   # part of grad
xcor <- barplot(t(pgrad), space=0.5, col=heat.colors(3),  
                names.arg=c(102:104), ylim=c(0,6000))
ycor <- round(apply(pgrad, 1, cumsum)-t(pgrad)/2, 0)
# abline(h=ycor[2, 1])
# abline(h=ycor[3, 1])
segments(0, ycor[2, 1], 1.8, ycor[2, 1], col="blue")
segments(0, ycor[3, 1], 1.8, ycor[3, 1], col="blue")
text(xcor, t(ycor), labels=as.matrix(pgrad), cex=0.8)

# exercise: stacked bars of percentage

# juxtaposed bars-1
x <- barplot(as.matrix(grad[,2:4]), ylim=c(0,3000), 
             beside=TRUE, col=cm.colors(10))
legend(locator(1), as.character(grad[,1]), 
       fill=cm.colors(10), cex=0.6)

# the width parameter:
# example1
bw <- pgrad[, 3]/sum(pgrad[, 3])
xcor <- barplot(pgrad[, 3], col="khaki", width=bw,
                main="102~104學年度博士畢業人數")
axis(1, at=xcor, 102:104)
text(xcor, pgrad[, 3]/2+20, pgrad[, 3], cex=0.8)
text(xcor, pgrad[, 3]/2-20, cex=0.8,
     paste0("(", round(bw*100,2), "%)"))
# --------------------------------------------------------------











# exercise code:
# grad<-read.csv("graduate.csv")
# pgrad <- grad[8:10, 2:4]   # part of grad
percent <- round(pgrad/apply(pgrad, 1, sum), 4)
xcor <- barplot(t(percent), space=0.5, col=heat.colors(3),  
                names.arg=c(102:104))
ycor <- round(apply(percent, 1, cumsum)-t(percent)/2, 4)
abline(h=ycor[2, 1])
abline(h=ycor[3, 1])
segments(0, ycor[2, 1], 1.8, ycor[2, 1], col="blue")
segments(0, ycor[3, 1], 1.8, ycor[3, 1], col="blue")
text(rep(xcor, each=nrow(ycor)), ycor, cex=0.8,
     labels=paste0((t(percent)*100), "%"))
